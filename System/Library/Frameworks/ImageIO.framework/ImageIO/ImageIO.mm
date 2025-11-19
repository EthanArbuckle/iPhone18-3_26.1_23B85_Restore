CGImageSourceRef CGImageSourceCreateWithData(CFDataRef data, CFDictionaryRef options)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (data)
  {
    v4 = CFGetTypeID(data);
    if (v4 == CFDataGetTypeID())
    {
      CFDataGetLength(data);
      if (options)
      {
        v5 = CFGetTypeID(options);
        if (v5 != CFDictionaryGetTypeID())
        {
          LogError("CGImageSourceCreateWithData", 4606, "*** ERROR: CGImageSourceCreateWithData: options parameter is not a CFDictionaryRef - ignoring\n");
          options = 0;
        }
      }

      memset(v7, 0, sizeof(v7));
      IIODictionary::IIODictionary(v7, options);
      operator new();
    }

    CGImageSourceCreateWithData_cold_1();
  }

  else
  {
    CGImageSourceCreateWithData_cold_2();
  }

  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCreateWithData", 4641, "could not create CGImageSourceRef");
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_185E5A910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x186602850](v4, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOInitDebugFlags()
{
  if (IIOInitDebugFlags::onceToken != -1)
  {
    IIOInitDebugFlags_cold_1();
  }
}

void IIODictionary::IIODictionary(IIODictionary *this, CFTypeRef cf)
{
  *this = &unk_1EF4D4230;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFDictionaryGetTypeID())
    {
      v5 = CFRetain(cf);
      v6 = 0;
      *(this + 1) = v5;
    }

    else
    {
      IIOLogTypeMismatch(cf, "IIODictionary", "CFDictionaryRef");
      v6 = 0;
      *(this + 1) = 0;
    }
  }

  else
  {
    *(this + 1) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = 1;
  }

  *(this + 16) = v6;
}

{
  *this = &unk_1EF4D4230;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFDictionaryGetTypeID())
    {
      IIOLogTypeMismatch(cf, "IIODictionary", "CFDictionaryRef");
      v6 = 0;
      *(this + 1) = 0;
      goto LABEL_7;
    }

    Mutable = CFRetain(cf);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  *(this + 1) = Mutable;
  v6 = 1;
LABEL_7:
  *(this + 16) = v6;
}

void IIOImageSource::IIOImageSource(IIOImageSource *this, const __CFData *a2, IIODictionary *a3)
{
  *this = &unk_1EF4D46B0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  IIOImageSource::setup(this, 1);
  if (a3)
  {
    *(this + 104) = IIOImageSource::extractOptions(this, a3);
  }

  *(this + 2) = CGImageReadCreateWithData(*(this + 1), a2, 1);
  if ((gIIODebugFlags & 0x10000000) != 0)
  {
    ImageIO_saveImageData("CGImageSourceCreateWithData", a2);
  }
}

void sub_185E5AB04(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 208) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 152) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

CFMutableArrayRef IIOImageSource::setup(uint64_t a1, int a2)
{
  *(a1 + 40) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = -16711679;
  *(a1 + 52) = -255;
  *(a1 + 54) = a2;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = -5;
  *(a1 + 416) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  pthread_mutex_init((a1 + 224), 0);
  pthread_mutex_init((a1 + 352), 0);
  result = pthread_mutex_init((a1 + 288), 0);
  *(a1 + 424) = a1;
  *(a1 + 432) = a1;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  if (a2 != 8)
  {
    v5 = *MEMORY[0x1E695E480];
    *(a1 + 184) = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    v6 = MEMORY[0x1E695E9C0];
    *(a1 + 168) = CFArrayCreateMutable(v5, 0, MEMORY[0x1E695E9C0]);
    *(a1 + 176) = CFArrayCreateMutable(v5, 0, v6);
    result = CFArrayCreateMutable(v5, 0, v6);
    *(a1 + 192) = result;
  }

  return result;
}

uint64_t IIOImageSource::extractOptions(IIOImageSource *this, IIODictionary *a2)
{
  v4 = IIODictionary::containsKey(a2, @"kCGImageSourceFailForDataNotMatchingHint");
  BoolForKey = IIODictionary::getBoolForKey(a2, @"kCGImageSourceFailForDataNotMatchingHint");
  ObjectForKey = IIODictionary::getObjectForKey(a2, @"kCGImageSourceDecodeFormatAllowlist");
  if (ObjectForKey)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(ObjectForKey))
    {
      if (CFArrayGetCount(ObjectForKey) <= 0)
      {
        IIOImageSource::extractOptions();
      }

      else
      {
        if (BoolForKey || (v4 & 1) == 0)
        {
          goto LABEL_5;
        }

        IIOImageSource::extractOptions();
      }
    }

    else
    {
      IIOImageSource::extractOptions();
    }

    return 4294967246;
  }

LABEL_5:
  if (*(this + 7))
  {
    goto LABEL_6;
  }

  v15 = IIODictionary::getObjectForKey(a2, @"kCGImageSourceTypeIdentifierHint");
  if (v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = BoolForKey;
  }

  if (v16)
  {
    IIOImageSource::extractOptions();
    return 4294967246;
  }

  v17 = v15;
  if (v15)
  {
    v18 = CFGetTypeID(v15);
    v19 = CFStringGetTypeID();
    if (v18 == v19)
    {
      ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v19);
      v21 = IIO_ReaderHandler::readerForUTType(ReaderHandler, v17);
      *(this + 12) = v21;
      if (v21)
      {
        *(this + 7) = CFRetain(v17);
        *(this + 88) = IIODictionary::getBoolForKey(a2, @"kCGImageSourceFailForDataNotMatchingHint");
      }

      else
      {
        if (IIO_OSAppleInternalBuild())
        {
          v26 = getprogname();
          v27 = IIOString::IIOString(v33, v17);
          v28 = IIOString::utf8String(v27);
          LogError("extractOptions", 232, "*** ERROR: ❌ '%s' is using 'kCGImageSourceTypeIdentifierHint:%s' - as a hint for an image file format?\n", v26, v28);
        }

        else
        {
          v29 = IIOString::IIOString(v33, v17);
          v30 = IIOString::utf8String(v29);
          LogError("extractOptions", 234, "*** ERROR: 'kCGImageSourceTypeIdentifierHint:%s' is not specifing image format -- ignoring...\n", v30);
        }

        IIOString::~IIOString(v33);
      }
    }
  }

LABEL_6:
  if (ObjectForKey && (v8 = CFGetTypeID(ObjectForKey), v9 = CFArrayGetTypeID(), v8 == v9))
  {
    v10 = IIO_ReaderHandler::GetReaderHandler(v9);
    v11 = IIO_ReaderHandler::copyTypeIdentifiers(v10);
    Count = CFArrayGetCount(v11);
    memset(v33, 0, sizeof(v33));
    IIOArray::IIOArray(v33, ObjectForKey);
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 0x40000000;
    v32[2] = ___ZN14IIOImageSource14extractOptionsEP13IIODictionary_block_invoke;
    v32[3] = &__block_descriptor_tmp_3;
    v32[4] = v11;
    v32[5] = 0;
    v32[6] = Count;
    v32[7] = Mutable;
    IIOArray::enumerate(v33, v32);
    v14 = *(this + 7);
    if (v14)
    {
      if (CFSetContainsValue(Mutable, v14))
      {
        if (*(this + 7))
        {
          *(this + 88) = 1;
        }
      }

      else
      {
        IIOString::IIOString(v31, *(this + 7));
        v22 = IIOString::utf8String(v31);
        LogError("extractOptions", 260, "*** ERROR: kCGImageSourceDecodeFormatAllowlist does not contain the provided hint '%s' - ignoring hint \n", v22);
        IIOString::~IIOString(v31);
        CFRelease(*(this + 7));
        *(this + 7) = 0;
      }
    }

    IIOArray::~IIOArray(v33);
    if (Mutable)
    {
      goto LABEL_26;
    }
  }

  else if (*(this + 7))
  {
    if (*(this + 88) == 1)
    {
      Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
      CFSetAddValue(Mutable, *(this + 7));
      if (Mutable)
      {
LABEL_26:
        IIOImageSource::updateAllowedFlags(this, Mutable);
        CFRelease(Mutable);
      }
    }
  }

  if (IIODictionary::containsKey(a2, @"kCGImageSourceShouldMemoryMap"))
  {
    v23 = IIODictionary::getBoolForKey(a2, @"kCGImageSourceShouldMemoryMap");
    *(this + 48) = v23;
    if (!v23)
    {
      goto LABEL_33;
    }

LABEL_31:
    if (IIODictionary::containsKey(a2, @"kCGImageSourceMemoryMapAsShared"))
    {
      *(this + 49) = 1;
    }

    goto LABEL_33;
  }

  if (*(this + 48))
  {
    goto LABEL_31;
  }

LABEL_33:
  *(this + 50) = 1;
  if (IIODictionary::containsKey(a2, @"kCGImageSourceRespectHEIFFileOrder"))
  {
    *(this + 50) = IIODictionary::getBoolForKey(a2, @"kCGImageSourceRespectHEIFFileOrder");
  }

  *(this + 51) = -1;
  if (IIODictionary::containsKey(a2, @"kCGImageSourceIgnoreJPEGAuxImages"))
  {
    *(this + 51) = IIODictionary::getBoolForKey(a2, @"kCGImageSourceIgnoreJPEGAuxImages");
  }

  *(this + 52) = 1;
  if (IIODictionary::containsKey(a2, @"kCGImageSourcePreferHEIFCollection"))
  {
    *(this + 52) = !IIODictionary::getBoolForKey(a2, @"kCGImageSourcePreferHEIFCollection");
  }

  *(this + 17) = 0;
  result = IIODictionary::containsKey(a2, @"kCGImageSourceForceUseServer");
  if (result)
  {
    v25 = IIODictionary::getBoolForKey(a2, @"kCGImageSourceForceUseServer");
    result = 0;
  }

  else
  {
    v25 = -1;
  }

  *(this + 53) = v25;
  return result;
}

const __CFDictionary *IIODictionary::getObjectForKey(IIODictionary *this, const __CFString *a2)
{
  result = *(this + 1);
  if (result)
  {
    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

const __CFDictionary *IIODictionary::containsKey(IIODictionary *this, const __CFString *a2)
{
  result = *(this + 1);
  if (result)
  {
    return (CFDictionaryContainsKey(result, a2) != 0);
  }

  return result;
}

uint64_t CGImageReadCreateWithData(int a1, IIOImageRead *this, __CFData *a3)
{
  if (this)
  {
    IIOImageRead::CreateWithData(this, a3);
  }

  return 0;
}

void IIOImageRead::CreateWithData(IIOImageRead *this, const __CFData *a2)
{
  if (copyInputDataCheck != -1)
  {
    IIOImageRead::CreateWithData();
  }

  operator new();
}

uint64_t IIOImageRead::IIOImageRead(uint64_t a1, const __CFData *a2, int a3, char a4)
{
  *a1 = &unk_1EF4DBAF8;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 256) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 288) = 0;
  IIOImageRead::setup(a1, a3);
  *(a1 + 64) = a4;
  *(a1 + 65) = a4 ^ 1;
  if (gCopyInputData == 1)
  {
    *(a1 + 32) = CFDataCreateCopy(*MEMORY[0x1E695E480], a2);
    if ((gIIODebugFlags & 0x80000000000) != 0)
    {
      ImageIOLog("D   %s:%d CFDataCreateCopy %p\n");
    }
  }

  else
  {
    *(a1 + 32) = CFRetain(a2);
    if ((gIIODebugFlags & 0x80000000000) != 0)
    {
      ImageIOLog("D   %s:%d CFRetain %p\n");
    }
  }

  *(a1 + 80) = CFDataGetLength(a2);
  return a1;
}

void sub_185E5B3A4(_Unwind_Exception *a1)
{
  v6 = v1[36];
  if (v6)
  {
    v1[37] = v6;
    operator delete(v6);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(v2, *v4);
  v7 = *v3;
  if (*v3)
  {
    v1[20] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

IIOImageSource *IIOImageRead::setISR(IIOImageRead *this, uint64_t a2)
{
  result = CGImageSourceGetSource(a2);
  if (result)
  {
    result = IIOImageSource::forceUseServer(result);
    *(this + 456) = result;
  }

  *(this + 2) = ~a2;
  return result;
}

uint64_t CGImageSourceGetSource(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

const char *IIOImageRead::setup(uint64_t a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  *(a1 + 76) = a2;
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  *(a1 + 71) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 80) = 0;
  *(a1 + 67) = 0;
  *(a1 + 69) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  pthread_mutex_init((a1 + 176), 0);
  pthread_mutex_init((a1 + 88), 0);
  v4.__sig = 0;
  *v4.__opaque = 0;
  pthread_mutexattr_init(&v4);
  pthread_mutexattr_settype(&v4, 2);
  pthread_mutex_init((a1 + 376), &v4);
  pthread_mutexattr_destroy(&v4);
  result = pthread_mutex_init((a1 + 312), 0);
  *(a1 + 456) = -1;
  if (!gImageBlockCache)
  {
    result = CGImageReadCreateImageBlockCache(&gImageBlockCache);
    if ((gIIODebugFlags & 0x200) != 0)
    {
      result = ImageIOLog("    created global image cache %p\n", gImageBlockCache);
    }
  }

  *(a1 + 464) = a1;
  *(a1 + 472) = a1;
  return result;
}

uint64_t CGImageReadRefCreateWith_ImageRead(IIOImageRead *a1)
{
  if (CGImageReadGetTypeID::once != -1)
  {
    CGImageReadGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 1;
  atomic_fetch_add_explicit(&gReadRefCount, 1uLL, memory_order_relaxed);
  *(Instance + 24) = a1;
  *(a1 + 1) = Instance;
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageReadRefCreate", Instance, 0, -1, 0);
  }

  return Instance;
}

uint64_t CGImageSourceRefCreateWith_ImageSource(uint64_t a1)
{
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = 1;
  atomic_fetch_add_explicit(&gISRCount, 1uLL, memory_order_relaxed);
  CGTrackImageSource(Instance, 1);
  *(Instance + 24) = a1;
  *(a1 + 8) = Instance;
  Source = CGImageSourceGetSource(*(a1 + 16));
  if (Source)
  {
    v4 = Source;
    IIOImageRead::lock(Source);
    IIOImageRead::setISR(v4, Instance);
    IIOImageRead::unlock(v4);
  }

  return Instance;
}

BOOL CGTrackImageSource(unint64_t a1, int a2)
{
  os_unfair_lock_lock(&CGTrackImageSource(CGImageSource *,int)::mutex);
  if (!CGTrackImageSource(CGImageSource *,int)::gImageSources)
  {
    operator new();
  }

  v4 = ~a1;
  v18[0] = ~a1;
  if (a2 == -1)
  {
    v12 = CGTrackImageSource(CGImageSource *,int)::gImageSources + 8;
    v13 = *(CGTrackImageSource(CGImageSource *,int)::gImageSources + 8);
    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = CGTrackImageSource(CGImageSource *,int)::gImageSources + 8;
    do
    {
      v15 = *(v13 + 32);
      v9 = v15 >= v4;
      v16 = v15 < v4;
      if (v9)
      {
        v14 = v13;
      }

      v13 = *(v13 + 8 * v16);
    }

    while (v13);
    if (v14 == v12 || *(v14 + 32) > v4)
    {
LABEL_23:
      v14 = CGTrackImageSource(CGImageSource *,int)::gImageSources + 8;
    }

    v11 = v14 != v12;
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__erase_unique<unsigned long>(CGTrackImageSource(CGImageSource *,int)::gImageSources, v18);
  }

  else if (a2)
  {
    v18[2] = v18;
    v11 = 1;
    std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(CGTrackImageSource(CGImageSource *,int)::gImageSources, v18)[5] = 1;
  }

  else
  {
    v5 = CGTrackImageSource(CGImageSource *,int)::gImageSources + 8;
    v6 = *(CGTrackImageSource(CGImageSource *,int)::gImageSources + 8);
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = CGTrackImageSource(CGImageSource *,int)::gImageSources + 8;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 == v5 || *(v7 + 32) > v4)
    {
LABEL_13:
      v7 = CGTrackImageSource(CGImageSource *,int)::gImageSources + 8;
    }

    v11 = v7 != v5;
  }

  os_unfair_lock_unlock(&CGTrackImageSource(CGImageSource *,int)::mutex);
  return v11;
}

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

  result = std::__tree_balance_after_insert[abi:fe200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void IIODictionary::~IIODictionary(IIODictionary *this)
{
  *this = &unk_1EF4D4230;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  IIODictionary::~IIODictionary(this);

  JUMPOUT(0x186602850);
}

size_t CGImageSourceGetCount(CGImageSourceRef isrc)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v2 = (gIIODebugFlags >> 12) & 3;
  if (v2)
  {
    ImageIODebugOptions(v2, "A", "CGImageSourceGetCount", isrc, 0, -1, 0);
  }

  if (!isrc)
  {
    CGImageSourceGetCount_cold_4();
    goto LABEL_19;
  }

  v3 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  if (v3 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceGetCount_cold_2();
    goto LABEL_18;
  }

  v4 = *(isrc + 3);
  if (!v4)
  {
LABEL_18:
    isrc = 0;
    goto LABEL_19;
  }

  if (*(v4 + 89) == 1)
  {
    CGImageSourceGetCount_cold_3();
    goto LABEL_18;
  }

  pthread_mutex_lock((v4 + 224));
  if (IIOImageSource::isProxy(v4))
  {
    Count = IIOImageSource::proxyGetCount(v4);
  }

  else
  {
    Count = IIOImageSource::updatedCount(v4);
  }

  isrc = Count;
  v6 = *(v4 + 104);
  if (v6)
  {
    IIO_Reader::osType(v6);
  }

  pthread_mutex_unlock((v4 + 224));
LABEL_19:
  kdebug_trace();
  return isrc;
}

uint64_t IIOImageSource::updatedCount(IIOImageSource *this)
{
  if (*(this + 32) == 1)
  {
    return *(this + 3);
  }

  if (!IIOImageSource::bindToReader(this))
  {
    return 0;
  }

  if ((*(**(this + 13) + 160))(*(this + 13)))
  {
    v3 = CGImageReadSessionCreate(*(this + 2));
    if (v3)
    {
      v4 = v3;
      v16 = 0xFFFFFFFFLL;
      v5 = IIO_Reader::osType(*(this + 13));
      IIODebugCallbackPriv(v5, "imageCount");
      memset(v15, 0, sizeof(v15));
      IIODictionary::IIODictionary(v15);
      v6 = *MEMORY[0x1E695E4D0];
      v7 = *MEMORY[0x1E695E4C0];
      if (*(this + 50))
      {
        v8 = *MEMORY[0x1E695E4D0];
      }

      else
      {
        v8 = *MEMORY[0x1E695E4C0];
      }

      IIODictionary::setObjectForKey(v15, v8, @"shouldExposeMultiFrameContents");
      if (*(this + 52))
      {
        v9 = v6;
      }

      else
      {
        v9 = v7;
      }

      IIODictionary::setObjectForKey(v15, v9, @"useImageSequence");
      IIONumber::IIONumber(v14, *(this + 53));
      IIODictionary::setObjectForKey(v15, v14, @"kCGImageSourceForceUseServer");
      IIONumber::~IIONumber(v14);
      v10 = (*(**(this + 13) + 24))(*(this + 13), v4, v15, &v16, &v16 + 4);
      if (HIDWORD(v16) == -1400)
      {
        ImageIOLog("‼️ retrying 'getImageCount' (ImageIOXPCService crashed?)\n");
        v2 = (*(**(this + 13) + 24))(*(this + 13), v4, v15, &v16, &v16 + 4);
        v11 = "❌";
        if (!HIDWORD(v16))
        {
          v11 = "✅";
        }

        ImageIOLog("%s retrying 'getImageCount'  err: %d\n", v11, HIDWORD(v16));
      }

      else
      {
        v2 = v10;
      }

      v12 = v16;
      pthread_mutex_lock((this + 352));
      *(this + 28) = v12;
      pthread_mutex_unlock((this + 352));
      CFRelease(v4);
      IIODictionary::~IIODictionary(v15);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    IIOXPCLog("✅ ImageIOXPC: XPC_READPLUGIN_IMAGECOUNT skipped - defaults to 1\n");
    v2 = 1;
  }

  *(this + 3) = v2;
  *(this + 32) = 1;
  return v2;
}

void sub_185E5BD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIOImageSource::bindToReader(IIOImageSource *this)
{
  result = CGImageSourceGetSource(*(this + 2));
  if (result)
  {
    if (*(this + 89))
    {
      return 0;
    }

    else
    {
      isFinal = IIOImageRead::isFinal(result);
      if (*(this + 13))
      {
        v4 = isFinal - 1;
        pthread_mutex_lock((this + 352));
        *(this + 28) = v4;
        pthread_mutex_unlock((this + 352));
        return 1;
      }

      else
      {

        return IIOImageSource::doBindToReader(this);
      }
    }
  }

  return result;
}

BOOL IIOImageSource::doBindToReader(IIOImageSource *this)
{
  cf = 0;
  Source = CGImageSourceGetSource(*(this + 2));
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(Source);
  v36 = 0;
  v35 = 0uLL;
  pthread_mutex_lock((this + 352));
  *(this + 28) = -4;
  pthread_mutex_unlock((this + 352));
  if (!Source)
  {
    goto LABEL_56;
  }

  isFinal = IIOImageRead::isFinal(Source);
  v5 = IIOImageSource::cf(ReaderHandler);
  if (!v5)
  {
    v11 = 0;
    goto LABEL_52;
  }

  v6 = v5;
  if (isFinal)
  {
    v7 = -5;
  }

  else
  {
    v7 = -2;
  }

  pthread_mutex_lock((this + 352));
  *(this + 28) = v7;
  pthread_mutex_unlock((this + 352));
  v8 = IIOImageRead::retainBytePointer(Source, &cf, 0);
  if (v8)
  {
    v9 = v8;
    Size = IIOImageRead::getSize(Source);
    v11 = 0;
    goto LABEL_10;
  }

  v11 = malloc_type_malloc(v6, 0xACA0F72EuLL);
  if (v11)
  {
    Size = IIOImageRead::getBytesAtOffset(Source, v11, 0, v6, 0);
    v9 = v11;
LABEL_10:
    if (Size < v6)
    {
      v6 = Size;
    }

    if (Size < 5)
    {
      goto LABEL_52;
    }

    ERROR_ImageIO_DataBufferIsNotReadable(v9);
    pthread_mutex_lock((this + 352));
    *(this + 28) = -3;
    pthread_mutex_unlock((this + 352));
    v12 = IIOImageRead::getSize(Source);
    v13 = *(this + 12);
    if (v13 || (v15 = *(this + 7)) != 0 && (v13 = IIO_ReaderHandler::readerForUTType(ReaderHandler, v15), (*(this + 12) = v13) != 0))
    {
      v14 = IIO_Reader::utType(v13);
    }

    else
    {
      v14 = 0;
    }

    v35 = *(this + 72);
    v16 = (*(this + 54) == 6) | (8 * (*(this + 16) == 1)) | (4 * *(this + 88));
    if (*(this + 51) == 1)
    {
      v17 = 16;
    }

    else
    {
      v17 = 32 * (*(this + 51) != 0);
    }

    v18 = v16 | v17;
    v32 = *(this + 72);
    v33 = v16 | v17;
    v34 = 0;
    v19 = IIO_ReaderHandler::readerForBytes(ReaderHandler, v9, v6, v14, Source, v12, &v32, *(this + 53), &v36);
    *(this + 13) = v19;
    if (!v19 && v36 == -1400)
    {
      ImageIOLog("‼️ retrying 'readerForBytes' (ImageIOXPCService crashed?)\n");
      v32 = v35;
      v33 = v18;
      v34 = 0;
      *(this + 13) = IIO_ReaderHandler::readerForBytes(ReaderHandler, v9, v6, v14, Source, v12, &v32, *(this + 53), &v36);
      v20 = "❌";
      if (!v36)
      {
        v20 = "✅";
      }

      ImageIOLog("%s retrying 'readerForBytes'  err: %d\n", v20, v36);
      v19 = *(this + 13);
    }

    if (!v19)
    {
      if (v36 == -57)
      {
        IIOString::IIOString(&v32, v14);
        v23 = IIOString::utf8String(&v32);
        _cg_jpeg_mem_term("doBindToReader", 1096, "*** ERROR: hint ('%s') does not match image data - kCGImageSourceFailForDataNotMatchingHint was specified --> failing\n", v23);
        IIOString::~IIOString(&v32);
        *(this + 89) = 1;
      }

      goto LABEL_52;
    }

    if ((gIIODebugFlags & 0x30000) == 0)
    {
      goto LABEL_51;
    }

    v21 = IIO_Reader::osType(v19) >> 24;
    if (v21 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000) != 0)
      {
        goto LABEL_30;
      }
    }

    else if (__maskrune(v21, 0x40000uLL))
    {
LABEL_30:
      v22 = (IIO_Reader::osType(*(this + 13)) >> 24);
      goto LABEL_35;
    }

    v22 = 46;
LABEL_35:
    v24 = (IIO_Reader::osType(*(this + 13)) << 8) >> 24;
    if (v24 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000) != 0)
      {
        goto LABEL_37;
      }
    }

    else if (__maskrune(v24, 0x40000uLL))
    {
LABEL_37:
      v25 = ((IIO_Reader::osType(*(this + 13)) << 8) >> 24);
      goto LABEL_40;
    }

    v25 = 46;
LABEL_40:
    v26 = IIO_Reader::osType(*(this + 13)) >> 8;
    if (v26 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x40000) != 0)
      {
        goto LABEL_42;
      }
    }

    else if (__maskrune(v26, 0x40000uLL))
    {
LABEL_42:
      v27 = (IIO_Reader::osType(*(this + 13)) >> 8);
      goto LABEL_45;
    }

    v27 = 46;
LABEL_45:
    v28 = IIO_Reader::osType(*(this + 13));
    if (v28 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000) != 0)
      {
        goto LABEL_47;
      }
    }

    else if (__maskrune(v28, 0x40000uLL))
    {
LABEL_47:
      v29 = IIO_Reader::osType(*(this + 13));
LABEL_50:
      ImageIOLog("*** doBindToReader:  _reader->osType = '%c%c%c%c'\n", v22, v25, v27, v29);
LABEL_51:
      pthread_mutex_lock((this + 352));
      *(this + 28) = isFinal - 1;
      pthread_mutex_unlock((this + 352));
      goto LABEL_52;
    }

    v29 = 46;
    goto LABEL_50;
  }

LABEL_52:
  if (cf)
  {
    IIOImageRead::releaseBytePointer(Source, cf);
  }

  if (v11)
  {
    free(v11);
  }

LABEL_56:
  if (!*(this + 13))
  {
    v30 = IIOImageRead::copySourceInfo(Source);
    _cg_jpeg_mem_term("doBindToReader", 1125, "*** could not find a reader for: '%s'\n", v30);
    if (v30)
    {
      free(v30);
    }
  }

  return *(this + 13) != 0;
}

void sub_185E5C2E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageRead::isFinal(IIOImageRead *this)
{
  pthread_mutex_lock((this + 376));
  v2 = *(this + 64);
  pthread_mutex_unlock((this + 376));
  return v2;
}

uint64_t IIO_ReaderHandler::GetReaderHandler(IIO_ReaderHandler *this)
{
  if (IIO_ReaderHandler::GetReaderHandler(void)::readerHandlerCreate != -1)
  {
    IIO_ReaderHandler::GetReaderHandler();
  }

  return IIO_ReaderHandler::GetReaderHandler(void)::gIIO_ReaderHandler;
}

CFIndex IIOImageRead::getSize(IIOImageRead *this)
{
  pthread_mutex_lock((this + 376));
  if (*(this + 6))
  {
    Length = *(this + 10);
  }

  else
  {
    v3 = *(this + 4);
    if (v3)
    {
      Length = CFDataGetLength(v3);
    }

    else
    {
      Length = 0;
    }
  }

  pthread_mutex_unlock((this + 376));
  return Length;
}

const UInt8 *IIOImageRead::retainBytePointer(IIOImageRead *this, CFDataRef *a2, int a3)
{
  pthread_mutex_lock((this + 376));
  v6 = *(this + 4);
  if (v6)
  {
    if ((gIIODebugFlags & 0x80000000000) != 0)
    {
      ImageIOLog("D   %s:%d CFRetain %p\n", "retainBytePointer", 2150, v6);
      v6 = *(this + 4);
    }

    CFRetain(v6);
    v7 = *(this + 4);
    *a2 = v7;
    BytePtr = CFDataGetBytePtr(v7);
    pthread_mutex_unlock((this + 376));
    return BytePtr;
  }

  else
  {
    pthread_mutex_unlock((this + 376));
    if (!a3)
    {
      return 0;
    }

    v10 = IIOImageRead::copyData(this);
    v11 = v10;
    if ((gIIODebugFlags & 0x80000000000) != 0)
    {
      ImageIOLog("D   %s:%d copyData %p\n", "retainBytePointer", 2163, v10);
    }

    if (v11)
    {
      *a2 = v11;

      return CFDataGetBytePtr(v11);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t IIOXPCClient::GetIIOXPCClient(IIOXPCClient *this)
{
  if (IIOXPCClient::GetIIOXPCClient(void)::xpcClientCreate != -1)
  {
    __CGInitializeImageIO_block_invoke_2_cold_1();
  }

  return IIOXPCClient::GetIIOXPCClient(void)::gIIOXPCClient;
}

uint64_t IIOIsOOPEnabled(void *a1)
{
  if (IIOIsOOPEnabled::onceToken != -1)
  {
    IIOIsOOPEnabled_cold_1();
    if (!a1)
    {
      return IIOIsOOPEnabled::oopEnabled;
    }

    goto LABEL_3;
  }

  if (a1)
  {
LABEL_3:
    *a1 = IIOIsOOPEnabled::info;
  }

  return IIOIsOOPEnabled::oopEnabled;
}

uint64_t IIO_Reader_AppleJPEG::testHeader(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 != 255 || a2[1] != 216 || a2[2] != 255)
  {
    return 0;
  }

  if ((*(a5 + 16) & 0x30) == 0x10 || a2[3] != 224 || a2[4] || a2[5] != 20 || a2[20] != 65 || a2[21] != 77 || a2[22] != 80 || a2[23] != 70)
  {
    return 1;
  }

  if (!*a5 && !*(a5 + 8))
  {
    return 0;
  }

  if (IIOFlagsSupportType(a5, 1212829767))
  {
    return 0;
  }

  _cg_jpeg_mem_term("testHeader", 77, "*** NOTE: HEIC decoding is disabled -- decoding JPEG base image only (ignoring gain map)\n", v5, v6);
  return 1;
}

BOOL IIO_Reader_TIFF::testHeader(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 73)
  {
    return a2[1] == 73 && (a2[2] != 42 || a2[3] || a2[8] != 67 || a2[9] != 82 || a2[10] != 2 || a2[11]) && (a2[2] & 0xFE) == 0x2A && !a2[3];
  }

  return v2 == 77 && a2[1] == 77 && (a2[2] || a2[3] != 42 || a2[8] != 186 || a2[9] != 176 || a2[10] != 172 || a2[11] != 187) && !a2[2] && (a2[3] & 0xFE) == 0x2A;
}

uint64_t CGImageReadSessionCreate(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (CGImageReadSessionGetTypeID::once != -1)
  {
    CGImageReadSessionCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    atomic_fetch_add_explicit(&gReadSessionCount, 1uLL, memory_order_relaxed);
    *(Instance + 16) = 1;
    operator new();
  }

  if ((gIIODebugFlags & 0xC000) != 0)
  {
    *__str = 0u;
    v8 = 0u;
    snprintf(__str, 0x20uLL, "(%p)", 0);
    v3 = gIIODebugFlags >> 14;
    if (gIIODebugFlags >> 14)
    {
      Source = CGImageSourceGetSource(a1);
      v5 = IIOImagePlus::isr(Source);
      ImageIODebugOptions(v3, "S", "CGImageReadSessionCreate", v5, __str, -1, 0);
    }
  }

  return 0;
}

void IIODebugCallbackPriv(int a1, const char *a2)
{
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    v17[7] = v2;
    v17[8] = v3;
    v5 = a1;
    v17[0] = 0;
    v6 = a1 >> 24;
    v7 = MEMORY[0x1E69E9830];
    if ((a1 >> 24) <= 0x7F)
    {
      v8 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000;
    }

    else
    {
      v8 = __maskrune(a1 >> 24, 0x40000uLL);
    }

    if (v8)
    {
      v9 = v6;
    }

    else
    {
      v9 = 46;
    }

    v10 = (v5 << 8) >> 24;
    if (v10 <= 0x7F)
    {
      v11 = *(v7 + 4 * v10 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune((v5 << 8) >> 24, 0x40000uLL);
    }

    if (v11)
    {
      v12 = v10;
    }

    else
    {
      v12 = 46;
    }

    LODWORD(v13) = v5 >> 8;
    if (v13 <= 0x7F)
    {
      v14 = *(v7 + 4 * v13 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v5 >> 8, 0x40000uLL);
    }

    if (v14)
    {
      v13 = v13;
    }

    else
    {
      v13 = 46;
    }

    v5 = v5;
    if (v5 <= 0x7F)
    {
      v15 = *(v7 + 4 * v5 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v5, 0x40000uLL);
    }

    if (v15)
    {
      v16 = v5;
    }

    else
    {
      v16 = 46;
    }

    asprintf(v17, "'%c%c%c%c'-%s", v9, v12, v13, v16, a2);
    if (v17[0])
    {
      ImageIOLog("%s   %s\n", "C", v17[0]);
      free(v17[0]);
    }
  }
}

void IIODictionary::IIODictionary(IIODictionary *this)
{
  *this = &unk_1EF4D4230;
  *(this + 1) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *(this + 16) = 1;
}

IIO_Reader *IIO_ReaderHandler::readerForBytes(IIO_ReaderHandler *a1, const void *a2, size_t a3, __CFString *a4, IIOImageRead *a5, uint64_t a6, __CFString **a7, int a8, int *a9)
{
  v17 = IIO_XPCServer();
  if ((v17 & 1) == 0)
  {
    IIOXPCClient = IIOXPCClient::GetIIOXPCClient(v17);
    if (IIOXPCClient::useServerForIdentification(IIOXPCClient, a5, a8))
    {
      kdebug_trace();
      v19 = xpc_dictionary_create(0, 0, 0);
      v20 = v19;
      if (v19)
      {
        v21 = iio_xpc_add_source_dict(v19);
        xpc_dictionary_set_uint64(v20, "iio_xpc_message_id", 1uLL);
        v22 = xpc_data_create(a2, a3);
        if (v22)
        {
          v23 = v22;
          xpc_dictionary_set_value(v21, "iio_xpc_src_header_data", v22);
          xpc_release(v23);
        }

        if (a4)
        {
          v51 = 0uLL;
          v52 = 0;
          IIOString::IIOString(&v51, a4);
          v24 = IIOString::utf8String(&v51);
          xpc_dictionary_set_string(v21, "iio_xpc_src_hint_string", v24);
          IIOString::~IIOString(&v51);
        }

        xpc_dictionary_set_uint64(v21, "iio_xpc_src_file_size", a6);
        iio_xpc_add_xpcObj_from_IIOHeaderOptions(v21, "iio_xpc_src_header_options", a7);
      }

      v25 = IIOXPCClient::xpc_connection(IIOXPCClient);
      v26 = IIOXPCClient::xpc_queue(IIOXPCClient);
      v27 = IIOXPCClient::send_message_with_reply(IIOXPCClient, v25, v26, v20);
      if (!v27)
      {
        IIOXPCLog("❌ ImageIOXPC: XPC_READPLUGIN_IDENTIFY error null-reply\n");
        v32 = 0;
LABEL_34:
        xpc_release(v20);
        kdebug_trace();
        return v32;
      }

      v28 = v27;
      message_dict = iio_xpc_get_message_dict(v27);
      error_code = iio_xpc_dictionary_get_error_code(message_dict);
      if (a9)
      {
        *a9 = error_code;
      }

      if (error_code)
      {
        if (error_code == -1400)
        {
          IIOXPCLog("❌ ImageIOXPC: XPC_READPLUGIN_IDENTIFY XPC connection interrupted\n");
        }

        else
        {
          IIOXPCLog("❌ ImageIOXPC: XPC_READPLUGIN_IDENTIFY error: %d\n");
        }
      }

      else
      {
        source_dict = iio_xpc_get_source_dict(v28);
        if (source_dict)
        {
          v34 = source_dict;
          string = xpc_dictionary_get_string(source_dict, "iio_xpc_src_utitype");
          uint64 = xpc_dictionary_get_uint64(v34, "iio_xpc_src_ostype");
          v37 = uint64;
          if (string)
          {
            v51 = 0uLL;
            v52 = 0;
            IIOString::IIOString(&v51, string);
            v50 = IIOString::utf8String(&v51);
            v38 = v37 >> 24;
            if ((v37 >> 24) <= 0x7F)
            {
              v39 = *(MEMORY[0x1E69E9830] + 4 * v38 + 60) & 0x40000;
            }

            else
            {
              v39 = __maskrune(v37 >> 24, 0x40000uLL);
            }

            if (v39)
            {
              v41 = v38;
            }

            else
            {
              v41 = 46;
            }

            v42 = v37 << 8 >> 24;
            if (v42 <= 0x7F)
            {
              v43 = *(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x40000;
            }

            else
            {
              v43 = __maskrune(v37 << 8 >> 24, 0x40000uLL);
            }

            if (v43)
            {
              v44 = v42;
            }

            else
            {
              v44 = 46;
            }

            v45 = v37 >> 8;
            if (v45 <= 0x7F)
            {
              v46 = *(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000;
            }

            else
            {
              v46 = __maskrune(v37 >> 8, 0x40000uLL);
            }

            if (v37 <= 0x7F)
            {
              v47 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
            }

            else
            {
              v47 = __maskrune(v37, 0x40000uLL);
            }

            if (v46)
            {
              v48 = v45;
            }

            else
            {
              v48 = 46;
            }

            if (v47)
            {
              v49 = v37;
            }

            else
            {
              v49 = 46;
            }

            IIOXPCLog("✅ ImageIOXPC: XPC_READPLUGIN_IDENTIFY: '%s' '%c%c%c%c'\n", v50, v41, v44, v48, v49);
            v32 = IIO_ReaderHandler::readerForUTTypeAndOSType(a1, v52, v37);
            IIOString::~IIOString(&v51);
            goto LABEL_33;
          }

          if ((uint64 >> 24) > 0x7F)
          {
            __maskrune(uint64 >> 24, 0x40000uLL);
          }
        }

        else
        {
          v37 = 774778414;
        }

        if ((v37 << 8 >> 24) > 0x7F)
        {
          __maskrune(v37 << 8 >> 24, 0x40000uLL);
        }

        if ((v37 >> 8) > 0x7F)
        {
          __maskrune(v37 >> 8, 0x40000uLL);
        }

        if (v37 > 0x7F)
        {
          __maskrune(v37, 0x40000uLL);
        }

        IIOXPCLog("❌ ImageIOXPC: XPC_READPLUGIN_IDENTIFY '%c%c%c%c' failed to get plugin\n");
      }

      v32 = 0;
LABEL_33:
      _cg_jpeg_mem_term(IIOXPCClient, v28, v31);
      xpc_release(v28);
      goto LABEL_34;
    }
  }

  v51 = *a7;
  v52 = a7[2];
  return IIO_ReaderHandler::readerForBytesImp(a1, a2, a3, a4, a6, &v51, 0, a9);
}

void sub_185E5D0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIOXPCClient::useServerForCall(uint64_t a1, IIOImageRead *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  if (IIO_XPCServer())
  {
    return 0;
  }

  if (a4 != 1)
  {
    if (a4 != -1)
    {
      return 0;
    }

    result = IIOIsOOPEnabled(0);
    if (!result)
    {
      return result;
    }
  }

  if (a3)
  {
    if ((*(*a3 + 232))(a3, a5))
    {
      return IIOImageRead::trustedURL(a2) ^ 1;
    }
  }

  else if (a6)
  {
    return IIOImageRead::trustedURL(a2) ^ 1;
  }

  return 0;
}

IIO_Reader *IIO_ReaderHandler::readerForBytesImp(IIO_Reader ***this, uint64_t a2, unint64_t a3, __CFString *a4, unint64_t a5, __int128 *a6, uint64_t a7, int *a8)
{
  if (!a4)
  {
    goto LABEL_10;
  }

  v15 = IIO_ReaderHandler::readerForUTType(this, a4);
  v16 = v15;
  if (!v15)
  {
    goto LABEL_10;
  }

  if (a5 && IIO_Reader::minimumFileSize(v15) <= a5)
  {
    v18 = a6 + 1;
  }

  else
  {
    v17 = IIO_Reader::minimumFileSize(v16);
    v18 = a6 + 1;
    if ((a6[1] & 1) == 0 && v17)
    {
      goto LABEL_10;
    }
  }

  if (IIO_Reader::testHeaderSize(v16) > a3)
  {
LABEL_10:
    v19 = 0;
LABEL_11:
    v20 = -50;
LABEL_12:
    v21 = *(a6 + 4);
    if ((v21 & 8) != 0 && (v21 & 4) != 0 && v19 != 1246774599)
    {
      IIOString::IIOString(&v34, a4);
      v27 = IIOString::utf8String(&v34);
      _cg_jpeg_mem_term("readerForBytesImp", 412, "*** ERROR: hint ('%s') does not match image data - kCGImageSourceFailForDataNotMatchingHint was specified --> failing\n", v27);
      IIOString::~IIOString(&v34);
      v16 = 0;
      v26 = -57;
    }

    else
    {
      v23 = this[2];
      v22 = this[3];
      while (1)
      {
        if (v23 == v22)
        {
          v16 = 0;
          goto LABEL_26;
        }

        if (v16 = *v23, a5) && IIO_Reader::minimumFileSize(*v23) <= a5 || (v24 = IIO_Reader::minimumFileSize(v16), (a6[1]) || !v24)
        {
          if (IIO_Reader::testHeaderSize(v16) <= a3)
          {
            v35 = *(a6 + 2);
            v34 = *a6;
            if ((*(*v16 + 16))(v16, a2, a3, a4, &v34))
            {
              if (!*a6 && !*(a6 + 1))
              {
                break;
              }

              v25 = IIO_Reader::osType(v16);
              if (IIOFlagsSupportType(a6, v25))
              {
                break;
              }
            }
          }
        }

        ++v23;
      }

      v20 = 0;
LABEL_26:
      if (v16)
      {
        v26 = v20;
      }

      else
      {
        v26 = -63;
      }
    }

    goto LABEL_32;
  }

  v35 = *(a6 + 2);
  v34 = *a6;
  v29 = (*(*v16 + 16))(v16, a2, a3, a4, &v34);
  v30 = *a6;
  if ((v29 & 1) == 0)
  {
    if ((v30 || *(a6 + 1)) && (*v18 & 4) != 0)
    {
      IIOString::IIOString(&v34, a4);
      v33 = IIOString::utf8String(&v34);
      LogWarning("readerForBytesImp", 381, "*** NOTE: incorrect hint '%s' with kCGImageSourceFailForDataNotMatchingHint - dropping hint, using allowList\n", v33);
      IIOString::~IIOString(&v34);
    }

    v19 = IIO_Reader::osType(v16);
    goto LABEL_11;
  }

  if (!v30 && !*(a6 + 1))
  {
    v26 = 0;
    goto LABEL_32;
  }

  v31 = IIO_Reader::osType(v16);
  v32 = IIOFlagsSupportType(a6, v31);
  v19 = 0;
  v20 = 0;
  v26 = 0;
  if ((v32 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_32:
  if (a8)
  {
    *a8 = v26;
  }

  return v16;
}

void sub_185E5D4C0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E5D3A0);
}

uint64_t IIOReader_RawCamera::testHeader(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 72);
  if (v4 && *(a1 + 32) <= a3)
  {
    return v4(a2, a3, a4);
  }

  else
  {
    return 0;
  }
}

BOOL IIO_Reader_JP2::testHeader(uint64_t a1, unsigned __int8 *a2)
{
  if (*a2 == 255)
  {
    if (a2[1] == 79 && a2[2] == 255)
    {
      v2 = 81;
      v3 = 3;
      return a2[v3] == v2;
    }

    return 0;
  }

  if (*a2 || a2[1] || a2[2] || a2[3] != 12 || a2[4] != 106 || a2[5] != 80 || a2[8] != 13 || a2[9] != 10 || a2[10] != 135)
  {
    return 0;
  }

  v2 = 10;
  v3 = 11;
  return a2[v3] == v2;
}

void IIOImageRead::releaseBytePointer(IIOImageRead *this, CFTypeRef cf)
{
  if (cf)
  {
    if ((gIIODebugFlags & 0x80000000000) != 0)
    {
      ImageIOLog("D   %s:%d CFRelease %p\n", "releaseBytePointer", 2177, cf);
    }

    CFRelease(cf);
  }
}

void *IIOImageReadSession::IIOImageReadSession(void *a1, uint64_t a2, CFTypeRef cf)
{
  *a1 = &unk_1EF4D8A90;
  a1[1] = a2;
  v4 = CFRetain(cf);
  a1[3] = v4;
  Source = CGImageSourceGetSource(v4);
  a1[4] = Source;
  a1[2] = IIOImagePlus::isr(Source);
  a1[5] = 0;
  a1[6] = a1;
  a1[7] = a1;
  return a1;
}

void IIODictionary::setObjectForKey(IIODictionary *this, const void *value, const __CFString *key)
{
  if (key)
  {
    v3 = *(this + 1);
    if (v3)
    {
      if (value)
      {
        CFDictionarySetValue(v3, key, value);
      }

      else
      {
        CFDictionaryRemoveValue(v3, key);
      }
    }
  }
}

void IIONumber::IIONumber(IIONumber *this, int a2)
{
  valuePtr = a2;
  *this = &unk_1EF4D41D0;
  *(this + 1) = 9;
  *(this + 2) = 0;
  *(this + 2) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
}

{
  valuePtr = a2;
  *this = &unk_1EF4D41D0;
  *(this + 1) = 3;
  *(this + 2) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
}

void sub_185E5D924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

IIOImageRead *IIOImageReadSession::getSize(IIOImageReadSession *this)
{
  result = *(this + 4);
  if (result)
  {
    return IIOImageRead::getSize(result);
  }

  return result;
}

uint64_t IterateChunks(IIOScanner *a1, uint64_t a2)
{
  IIOScanner::seek(a1, 8uLL);
  v4 = *(a1 + 2);
  while (1)
  {
    v5 = *(a1 + 3);
    if (v5 + 8 > v4)
    {
      break;
    }

    Val32 = IIOScanner::getVal32(a1);
    v7 = IIOScanner::getVal32(a1);
    result = 4294967246;
    if (__CFADD__(v5, Val32) || v5 + Val32 > v4)
    {
      return result;
    }

    if (v7 == 541347397)
    {
      break;
    }

    result = (*(*a2 + 16))();
    if (result)
    {
      return result;
    }

    IIOScanner::seek(a1, v5 + 8 + Val32);
  }

  return 0;
}

size_t IIOScanner::copyBytes(IIOScanner *this, void *__dst, size_t __n)
{
  if (!__dst)
  {
    LogError("copyBytes", 575, "*** IIOScanner::copyBytes: null destination buffer\n");
LABEL_7:
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v4 = *(this + 1);
  if (!v4 || (v6 = *(this + 3), v6 + __n > *(this + 2)))
  {
    LogError("copyBytes", 588, "*** IIOScanner::copyBytes reached EOF\n");
    goto LABEL_7;
  }

  memcpy(__dst, (v4 + v6), __n);
  *(this + 3) += __n;
  return __n;
}

uint64_t IIOScanner::getVal32(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), (v6 + 4) > *(this + 2)))
  {
    v11 = v1;
    LogError("getVal32", 230, "*** IIOScanner::getVal32 reached EOF\n", v2, v11, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  LODWORD(v5) = *(v5 + v6);
  v7 = bswap32(v5);
  if (*(this + 68))
  {
    v5 = v5;
  }

  else
  {
    v5 = v7;
  }

  *(this + 3) = v6 + 4;
  return v5;
}

uint64_t ___ZN14IIO_Reader_ATX13getImageCountEP19IIOImageReadSessionP13IIODictionaryP19CGImageSourceStatusPj_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  result = 0;
  v15 = *MEMORY[0x1E69E9840];
  if (a4 <= 1212498243)
  {
    if (a4 != 875704410 && a4 != 875704422 && a4 != 1095980099)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (a4 == 1634956387 || a4 == 1280984659)
  {
LABEL_14:
    v8 = *(a1 + 40);
    if (v8)
    {
      result = 0;
      *v8 = 1;
      return result;
    }

    return 0;
  }

  if (a4 != 1212498244)
  {
    return result;
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v6 = *(*(a1 + 32) + 8);
  if (*(v6 + 24) != 1)
  {
    *(v6 + 24) = 1;
    if (IIOScanner::copyBytes(*(a1 + 48), v10, 0x54uLL) == 84)
    {
      if (HIDWORD(v11))
      {
        v7 = *(a1 + 40);
        if (v7)
        {
          result = 0;
          *v7 = HIDWORD(v11);
          return result;
        }
      }

      return 0;
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    *v9 = 0;
  }

  return 4294967246;
}

uint64_t IIOScanner::skip(uint64_t this, unint64_t a2)
{
  v6 = *(this + 16);
  if (v6 < a2 || ((v7 = *(this + 24), v6 > v7) ? (v8 = v6 - v7 >= a2) : (v8 = 0), !v8))
  {
    v11 = v2;
    *(this + 24) = v6;
    v9 = this;
    LogError("skip", 487, "*** IIOScanner::skip reached EOF\n", v3, v11, v4, v5);
    *(v9 + 64) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  *(this + 24) = v7 + a2;
  return this;
}

void IIOScanner::~IIOScanner(IIOScanner *this)
{
  IIOScanner::~IIOScanner(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DE2D8;
  if (*(this + 1))
  {
    v1 = *(this + 6);
    if (v1)
    {
      v2 = *(this + 7);
      if (v2)
      {
        IIOImageReadSession::releaseBytePointer(v2, v1);
      }
    }
  }
}

uint64_t _CGImageReadSessionFinalize(void *a1)
{
  atomic_fetch_add_explicit(&gReadSessionCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  result = a1[3];
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

void IIOImageReadSession::~IIOImageReadSession(IIOImageReadSession *this)
{
  IIOImageReadSession::~IIOImageReadSession(this);

  JUMPOUT(0x186602850);
}

{
  *(this + 5) = 0;
  *this = &unk_1EF4D8A90;
  *(this + 1) = 0;
  v2 = (this + 24);
  v1 = *(this + 3);
  if (v1)
  {
    CFRelease(v1);
  }

  *v2 = 0;
  v2[1] = 0;
}

const __CFNumber *IIODictionary::getUint32ForKey(IIODictionary *this, const __CFString *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v2, a2);
  IIONumber::IIONumber(v6, Value);
  v4 = IIONumber::uint32Num(v6);
  IIONumber::~IIONumber(v6);
  return v4;
}

void sub_185E5DF14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void IIONumber::~IIONumber(IIONumber *this)
{
  *this = &unk_1EF4D41D0;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  IIONumber::~IIONumber(this);

  JUMPOUT(0x186602850);
}

uint64_t IIO_Reader::callGetImageCount(const void ***a1, uint64_t a2, uint64_t a3, _DWORD *a4, _DWORD *a5)
{
  Source = CGImageSourceGetSource(a2);
  v10 = IIO_Reader::testHeaderSize(Source);
  v11 = v10;
  if (v10)
  {
    v10 = IIOImageRead::forceUseServer(v10);
    v12 = v10;
  }

  else
  {
    v12 = -1;
  }

  IIOXPCClient = IIOXPCClient::GetIIOXPCClient(v10);
  if (IIOXPCClient::useServerForImageCount(IIOXPCClient, v11, a1, v12))
  {
    kdebug_trace();
    v14 = xpc_dictionary_create(0, 0, 0);
    if (!v14)
    {
      LODWORD(a3) = 0;
      uint64 = 1;
      goto LABEL_73;
    }

    v15 = v14;
    v71 = 0;
    v16 = iio_xpc_add_source_dict(v14);
    v17 = iio_xpc_add_plugin_dict(v15);
    xpc_dictionary_set_uint64(v15, "iio_xpc_message_id", 2uLL);
    memset(v70, 0, sizeof(v70));
    IIOString::IIOString(v70, *a1[1]);
    v18 = IIOString::utf8String(v70);
    xpc_dictionary_set_string(v16, "iio_xpc_src_utitype", v18);
    xpc_dictionary_set_uint64(v16, "iio_xpc_src_ostype", *(a1 + 6));
    IIOImageReadSession::addDataToXPCDictionary(Source, v15, &v71);
    iio_xpc_dictionary_add_CFDictionary(v16, "iio_xpc_src_options");
    v19 = ((*a1)[13])(a1, Source);
    if (v19)
    {
      iio_xpc_dictionary_add_GlobalInfo(v17, v19, *(a1 + 6));
      CFRelease(v19);
    }

    v20 = IIOXPCClient::xpc_connection(IIOXPCClient);
    v21 = IIOXPCClient::xpc_queue(IIOXPCClient);
    v22 = IIOXPCClient::send_message_with_reply(IIOXPCClient, v20, v21, v15);
    v23 = v22;
    if (!v22)
    {
      IIOXPCLog("❌ ImageIOXPC: XPC_READPLUGIN_IMAGECOUNT error null-reply\n");
      LODWORD(a3) = 0;
      uint64 = 1;
      goto LABEL_69;
    }

    message_dict = iio_xpc_get_message_dict(v22);
    source_dict = iio_xpc_get_source_dict(v23);
    error_code = iio_xpc_dictionary_get_error_code(message_dict);
    a3 = error_code;
    if (!error_code)
    {
      if (source_dict)
      {
        plugin_dict = iio_xpc_get_plugin_dict(v23);
        uint64 = xpc_dictionary_get_uint64(source_dict, "iio_xpc_src_image_count");
        v33 = *(a1 + 6);
        v34 = v33 >> 24;
        if ((v33 >> 24) <= 0x7F)
        {
          v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
        }

        else
        {
          v35 = __maskrune(v34, 0x40000uLL);
          v33 = *(a1 + 6);
        }

        LODWORD(v55) = v33 >> 24;
        if (v35)
        {
          v55 = v55;
        }

        else
        {
          v55 = 46;
        }

        v67 = v55;
        v56 = v33 << 8 >> 24;
        if (v56 <= 0x7F)
        {
          v57 = *(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x40000;
        }

        else
        {
          v57 = __maskrune(v56, 0x40000uLL);
          v33 = *(a1 + 6);
        }

        LODWORD(v58) = v33 << 8 >> 24;
        if (v57)
        {
          v58 = v58;
        }

        else
        {
          v58 = 46;
        }

        v66 = v58;
        v59 = v33 >> 8;
        if (v59 <= 0x7F)
        {
          v60 = *(MEMORY[0x1E69E9830] + 4 * v59 + 60) & 0x40000;
        }

        else
        {
          v60 = __maskrune(v59, 0x40000uLL);
          v33 = *(a1 + 6);
        }

        LODWORD(v61) = v33 >> 8;
        if (v60)
        {
          v61 = v61;
        }

        else
        {
          v61 = 46;
        }

        v65 = v61;
        if (v33 <= 0x7F)
        {
          v62 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
        }

        else
        {
          v62 = __maskrune(v33, 0x40000uLL);
        }

        if (v62)
        {
          v63 = *(a1 + 24);
        }

        else
        {
          v63 = 46;
        }

        IIOXPCLog("✅ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_IMAGECOUNT: %d\n", v67, v66, v65, v63, uint64);
        *a4 = xpc_dictionary_get_int64(source_dict, "iio_xpc_src_status");
        if (plugin_dict)
        {
          v69 = 0;
          GlobalInfo = iio_xpc_dictionary_get_GlobalInfo(plugin_dict, &v69);
          if (v69)
          {
            ((*a1)[12])(a1, Source, GlobalInfo);
          }
        }

        goto LABEL_68;
      }

LABEL_67:
      uint64 = 1;
LABEL_68:
      _cg_jpeg_mem_term(IIOXPCClient, v23, v27);
      xpc_release(v23);
LABEL_69:
      if (Source && v71)
      {
        IIOImageReadSession::releaseBytePointer(Source, v71);
      }

      xpc_release(v15);
      IIOString::~IIOString(v70);
LABEL_73:
      kdebug_trace();
      if (!a5)
      {
        return uint64;
      }

      goto LABEL_14;
    }

    if (error_code == -1400)
    {
      v28 = *(a1 + 6);
      v29 = v28 >> 24;
      if ((v28 >> 24) <= 0x7F)
      {
        v30 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x40000;
      }

      else
      {
        v30 = __maskrune(v29, 0x40000uLL);
        v28 = *(a1 + 6);
      }

      if (v30)
      {
        v39 = (v28 >> 24);
      }

      else
      {
        v39 = 46;
      }

      v40 = v28 << 8 >> 24;
      if (v40 <= 0x7F)
      {
        v41 = *(MEMORY[0x1E69E9830] + 4 * v40 + 60) & 0x40000;
      }

      else
      {
        v41 = __maskrune(v40, 0x40000uLL);
        v28 = *(a1 + 6);
      }

      if (v41)
      {
        v45 = (v28 << 8 >> 24);
      }

      else
      {
        v45 = 46;
      }

      v46 = v28 >> 8;
      if (v46 <= 0x7F)
      {
        v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
      }

      else
      {
        v47 = __maskrune(v46, 0x40000uLL);
        v28 = *(a1 + 6);
      }

      if (v47)
      {
        v51 = (v28 >> 8);
      }

      else
      {
        v51 = 46;
      }

      if (v28 <= 0x7F)
      {
        if ((*(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000) != 0)
        {
          goto LABEL_53;
        }
      }

      else if (__maskrune(v28, 0x40000uLL))
      {
LABEL_53:
        v52 = *(a1 + 24);
LABEL_63:
        IIOXPCLog("❌ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_IMAGECOUNT XPC connection interrupted\n", v39, v45, v51, v52);
        goto LABEL_67;
      }

      v52 = 46;
      goto LABEL_63;
    }

    v36 = *(a1 + 6);
    v37 = v36 >> 24;
    if ((v36 >> 24) <= 0x7F)
    {
      v38 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
    }

    else
    {
      v38 = __maskrune(v37, 0x40000uLL);
      v36 = *(a1 + 6);
    }

    if (v38)
    {
      v42 = (v36 >> 24);
    }

    else
    {
      v42 = 46;
    }

    v43 = v36 << 8 >> 24;
    if (v43 <= 0x7F)
    {
      v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
    }

    else
    {
      v44 = __maskrune(v43, 0x40000uLL);
      v36 = *(a1 + 6);
    }

    if (v44)
    {
      v48 = (v36 << 8 >> 24);
    }

    else
    {
      v48 = 46;
    }

    v49 = v36 >> 8;
    if (v49 <= 0x7F)
    {
      v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
    }

    else
    {
      v50 = __maskrune(v49, 0x40000uLL);
      v36 = *(a1 + 6);
    }

    if (v50)
    {
      v53 = (v36 >> 8);
    }

    else
    {
      v53 = 46;
    }

    if (v36 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000) != 0)
      {
        goto LABEL_60;
      }
    }

    else if (__maskrune(v36, 0x40000uLL))
    {
LABEL_60:
      v54 = *(a1 + 24);
LABEL_66:
      IIOXPCLog("❌ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_IMAGECOUNT error: %lld\n", v42, v48, v53, v54, a3);
      goto LABEL_67;
    }

    v54 = 46;
    goto LABEL_66;
  }

  LODWORD(v70[0]) = 0;
  ((*a1)[4])(a1, Source, a3, a4, v70);
  uint64 = LODWORD(v70[0]);
  LODWORD(a3) = 0;
  if (a5)
  {
LABEL_14:
    *a5 = a3;
  }

  return uint64;
}

void sub_185E5E658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void IIOScanner::IIOScanner(IIOScanner *this, IIOImageReadSession *a2)
{
  *this = &unk_1EF4DE2D8;
  *(this + 6) = 0;
  *(this + 7) = a2;
  if (a2)
  {
    Size = IIOImageReadSession::retainBytePointer(a2, this + 6, 1);
    *(this + 1) = Size;
    if (Size)
    {
      Size = IIOImageReadSession::getSize(*(this + 7));
    }

    *(this + 2) = Size;
  }

  else
  {
    *(this + 1) = 0;
    *(this + 2) = 0;
  }

  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 68) = 1;
  *(this + 16) = 0;
}

CGImageRef CGImageSourceCreateImageAtIndex(CGImageSourceRef isrc, size_t index, CFDictionaryRef options)
{
  memset(v27, 0, sizeof(v27));
  IIODictionary::IIODictionary(v27, options);
  IIOPackSrcInputInfo(v27, index);
  kdebug_trace();
  IIOInitDebugFlags();
  v6 = (gIIODebugFlags >> 12) & 3;
  if (v6)
  {
    ImageIODebugOptions(v6, "A", "CGImageSourceCreateImageAtIndex", isrc, 0, index, options);
  }

  *v26 = 0;
  if (!isrc)
  {
    LogError("CGImageSourceCreateImageAtIndex", 5134, "*** ERROR: CGImageSourceCreateImageAtIndex: source is nil\n");
LABEL_54:
    v9 = 0;
LABEL_12:
    v10 = 0;
LABEL_13:
    if ((gIIODebugFlags & 0x800000000000) != 0)
    {
      ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCreateImageAtIndex", 5159, "could not create CGImageRef");
    }

    if (v9 && !IIOImageSource::isProxy(v9))
    {
      kdebug_trace();
      v11 = v10 >> 24;
      if ((v10 >> 24) <= 0x7F)
      {
        v12 = *(MEMORY[0x1E69E9830] + 4 * v11 + 60) & 0x40000;
      }

      else
      {
        v12 = __maskrune(v10 >> 24, 0x40000uLL);
      }

      if (v12)
      {
        v15 = v11;
      }

      else
      {
        v15 = 46;
      }

      v16 = v10 << 8 >> 24;
      if (v16 <= 0x7F)
      {
        v17 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
      }

      else
      {
        v17 = __maskrune(v10 << 8 >> 24, 0x40000uLL);
      }

      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 46;
      }

      v19 = v10 >> 8;
      if (v19 <= 0x7F)
      {
        v20 = *(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x40000;
      }

      else
      {
        v20 = __maskrune(v10 >> 8, 0x40000uLL);
      }

      if (v10 <= 0x7F)
      {
        v21 = *(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x40000;
      }

      else
      {
        v21 = __maskrune(v10, 0x40000uLL);
      }

      if (v20)
      {
        v22 = v19;
      }

      else
      {
        v22 = 46;
      }

      if (v21)
      {
        v23 = v10;
      }

      else
      {
        v23 = 46;
      }

      LogError("CGImageSourceCreateImageAtIndex", 5179, "*** ERROR: CGImageSourceCreateImageAtIndex[%ld] - '%c%c%c%c' - failed to create image [%d]\n", index, v15, v18, v22, v23, v26[1]);
    }

    ImageAtIndex = 0;
    goto LABEL_46;
  }

  v7 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceUpdateData_cold_1();
  }

  if (v7 != CGImageSourceGetTypeID::id)
  {
    LogError("CGImageSourceCreateImageAtIndex", 5135, "*** ERROR: CGImageSourceCreateImageAtIndex: source is not a CGImageSourceRef\n");
    goto LABEL_54;
  }

  if (options)
  {
    v8 = CFGetTypeID(options);
    if (v8 != CFDictionaryGetTypeID())
    {
      LogError("CGImageSourceCreateImageAtIndex", 5138, "*** ERROR: CGImageSourceCreateImageAtIndex: options parameter is not a CFDictionaryRef - ignoring\n");
    }
  }

  v9 = *(isrc + 3);
  if (!v9 || IIOImageSource::isProxy(*(isrc + 3)))
  {
    goto LABEL_12;
  }

  if (*(v9 + 89) == 1)
  {
    LogError("CGImageSourceCreateImageAtIndex", 5145, "*** ERROR: invalid CGImageSourceRef (non-matching hint)\n");
    v10 = 0;
    goto LABEL_13;
  }

  pthread_mutex_lock((v9 + 224));
  ImageAtIndex = IIOImageSource::createImageAtIndex(v9, index, v27, &v26[1], v26);
  v14 = *(v9 + 104);
  if (v14)
  {
    v10 = IIO_Reader::osType(v14);
  }

  else
  {
    v10 = 1848598816;
  }

  pthread_mutex_unlock((v9 + 224));
  if (!ImageAtIndex)
  {
    goto LABEL_13;
  }

  if ((gIIODebugFlags & 0x10000000) != 0)
  {
    CFShow(ImageAtIndex);
    CGImageDumpToFile();
  }

  CGImageGetWidth(ImageAtIndex);
  CGImageGetHeight(ImageAtIndex);
  CGImageGetBitsPerPixel(ImageAtIndex);
  CGImageGetBitsPerComponent(ImageAtIndex);
  ColorSpace = CGImageGetColorSpace(ImageAtIndex);
  CGColorSpaceGetModel(ColorSpace);
  CGImageGetImageProvider();
  CGImageGetContentHeadroom();
  CGImageGetColorSpace(ImageAtIndex);
  CGColorSpaceGetID();
  CGImageGetBitmapInfo(ImageAtIndex);
LABEL_46:
  kdebug_trace();
  IIO_CheckHeadroom("CGImageSourceCreateImageAtIndex", v10, ImageAtIndex, v27);
  IIODictionary::~IIODictionary(v27);
  return ImageAtIndex;
}

void sub_185E5EC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOPackSrcInputInfo(IIODictionary *a1, unsigned __int16 a2)
{
  if (a1)
  {
    if (IIODictionary::containsKey(a1, @"kCGImageSourceCreateThumbnailFromImageAlways"))
    {
      if (IIODictionary::getBoolForKey(a1, @"kCGImageSourceCreateThumbnailFromImageAlways"))
      {
        v4 = 0x4000000000000000;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0x8000000000000000;
    }

    if (IIODictionary::containsKey(a1, @"kCGImageSourceCreateThumbnailFromImageIfAbsent"))
    {
      if (IIODictionary::getBoolForKey(a1, @"kCGImageSourceCreateThumbnailFromImageIfAbsent"))
      {
        v4 |= 0x1000000000000000uLL;
      }
    }

    else
    {
      v4 |= 0x2000000000000000uLL;
    }

    if (IIODictionary::containsKey(a1, @"kCGImageSourceCreateThumbnailWithTransform"))
    {
      if (IIODictionary::getBoolForKey(a1, @"kCGImageSourceCreateThumbnailWithTransform"))
      {
        v4 |= 0x400000000000000uLL;
      }
    }

    else
    {
      v4 |= 0x800000000000000uLL;
    }

    v6 = v4 | ((IIODictionary::getUint32ForKey(a1, @"Orientation") & 0xF) << 54);
    v7 = v6 | ((IIODictionary::getUint32ForKeyGroup(a1, @"Orientation", @"{TIFF}") & 0xF) << 50);
    if (IIODictionary::containsKey(a1, @"kCGImageSourceSubsampleFactor"))
    {
      v8 = (IIODictionary::getUint32ForKey(a1, @"kCGImageSourceSubsampleFactor") & 0x3F) << 44;
    }

    else
    {
      v8 = 0x3F00000000000;
    }

    v9 = v7 | v8;
    if (IIODictionary::containsKey(a1, @"kCGImageSourceDecodeRequest"))
    {
      ObjectForKey = IIODictionary::getObjectForKey(a1, @"kCGImageSourceDecodeRequest");
      if (CFStringCompare(ObjectForKey, @"kCGImageSourceDecodeToHDR", 0))
      {
        v11 = (CFStringCompare(ObjectForKey, @"kCGImageSourceDecodeToSDR", 0) == kCFCompareEqualTo) << 41;
      }

      else
      {
        v11 = 0x10000000000;
      }

      v13 = v11 | v9;
      if (IIODictionary::containsKeyGroup(a1, @"kCGGenerateFlexGTC", @"kCGImageSourceDecodeRequestOptions"))
      {
        if (IIODictionary::getBoolForKeyGroup(a1, @"kCGGenerateFlexGTC", @"kCGImageSourceDecodeRequestOptions"))
        {
          v12 = v13 | 0x4000000000;
        }

        else
        {
          v12 = v13;
        }
      }

      else
      {
        v12 = v13 | 0x8000000000;
      }
    }

    else
    {
      v12 = v9 | 0xF8000000000;
    }

    Uint32ForKey = IIODictionary::getUint32ForKey(a1, @"kCGImageSourceThumbnailMaxPixelSize");
    if (!Uint32ForKey)
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(a1, @"kCGImageDestinationImageMaxPixelSize");
    }

    v5 = v12 | (Uint32ForKey << 16);
  }

  else
  {
    v5 = 0;
  }

  return v5 | a2;
}

const __CFNumber *IIODictionary::getUint32ForKeyGroup(IIODictionary *this, const __CFString *a2, const __CFString *a3)
{
  GroupForKey = IIODictionary::getGroupForKey(this, a3, 0);
  if (!GroupForKey)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(GroupForKey, a2);
  IIONumber::IIONumber(v8, Value);
  v6 = IIONumber::uint32Num(v8);
  IIONumber::~IIONumber(v8);
  return v6;
}

void sub_185E5EF84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef IIODictionary::getGroupForKey(IIODictionary *this, const __CFString *a2, int a3)
{
  Mutable = 0;
  if (a2)
  {
    v5 = *(this + 1);
    if (v5)
    {
      Value = CFDictionaryGetValue(v5, a2);
      Mutable = Value;
      if (!Value || (v9 = CFGetTypeID(Value), v9 == CFNullGetTypeID()))
      {
        if (a3)
        {
          Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(*(this + 1), a2, Mutable);
          CFRelease(Mutable);
        }

        if (Mutable)
        {
          v10 = CFGetTypeID(Mutable);
          if (v10 == CFNullGetTypeID())
          {
            return 0;
          }
        }
      }
    }
  }

  return Mutable;
}

uint64_t IIOImageSource::makeImagePlus(IIOImageSource *this, unint64_t a2, const __CFDictionary **a3)
{
  *v25 = 0;
  v6 = IIOImageSource::updatedCount(this);
  memset(v24, 0, sizeof(v24));
  IIODictionary::IIODictionary(v24, a3[1], 1);
  v7 = IIO_Reader::osType(*(this + 13));
  if (v6 <= a2)
  {
    _cg_jpeg_mem_term("makeImagePlus", 3648, "*** ERROR: index (%d) >= count (%ld)\n", a2, v6);
LABEL_24:
    v21 = 0;
    goto LABEL_21;
  }

  IIOImageSource::getCacheValues(v7, a3, &v25[1], v25);
  ImagePlus = IIOImageSource::getImagePlus(this, a2);
  v9 = ImagePlus;
  if (!ImagePlus)
  {
LABEL_9:
    v12 = *(this + 2);
    if (v12)
    {
      if (CGImageReadSessionCreate(*(this + 2)))
      {
        CGImageSourceGetSource(v12);
        IIONumber::IIONumber(v23, *(this + 53));
        IIODictionary::setObjectForKey(v24, v23, @"kCGImageSourceForceUseServer");
        IIONumber::~IIONumber(v23);
        CGImagePlusCreateWithSession();
      }
    }

    else
    {
      _cg_jpeg_mem_term("makeImagePlus", 3726, "*** this->imageReadRef() failed\n");
    }

    goto LABEL_24;
  }

  Options = IIOImagePlus::getOptions(ImagePlus);
  if ((*(this + 33) & 1) != 0 || ((v13 = Options, v14 = (*(**(this + 13) + 168))(*(this + 13)), v13) ? (v15 = v14) : (v15 = 0), v15 == 1 && !(*(**(this + 13) + 80))(*(this + 13), *(v13 + 8), a3[1])))
  {
    *(this + 33) = 0;
    if (IIOImagePlus::getImageProvider(v9))
    {
      Image = IIOImagePlus::getImage(v9);
      if (!Image || Image == *MEMORY[0x1E695E738])
      {
        IIOImagePlus::releaseImageProvider(v9);
      }
    }

    IIOImageSource::setImagePlusAtIndex(this, 0, a2);
    goto LABEL_9;
  }

  Status = IIOImagePlus::getStatus(v9);
  if (Status != 0 && Status < 0xFFFFFFFB || ((1 << (Status + 5)) & 0x31) == 0)
  {
    IIOImagePlus::clearProperties(v9);
    IIOImagePlus::clearMetadata(v9);
    v17 = IIO_Reader::testHeaderSize(v9);
    IIOImageReadSession::rewind(v17);
    v18 = IIO_Reader::osType(*(this + 13));
    IIODebugCallbackPriv(v18, "initThumbnail");
    v19 = *(this + 13);
    v20 = IIOImageSource::cf(v9);
    (*(*v19 + 88))(v19, v20, a2, 0);
    IIOImagePlus::copyPropertiesToRoot(v9);
  }

  v21 = IIOImageSource::cf(v9);
LABEL_21:
  IIODictionary::~IIODictionary(v24);
  return v21;
}

void sub_185E5F83C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

void IIODictionary::IIODictionary(IIODictionary *this, CFDictionaryRef theDict, int a3)
{
  *this = &unk_1EF4D4230;
  if (theDict)
  {
    if (a3)
    {
      DeepCopy = IIODictionaryCreateDeepCopy(theDict);
    }

    else
    {
      DeepCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    }
  }

  else
  {
    DeepCopy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  *(this + 1) = DeepCopy;
  *(this + 16) = 1;
}

__CFDictionary *IIODictionaryCreateDeepCopy(const __CFDictionary *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *MEMORY[0x1E695E480];
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], a1, 2uLL);
  if (!DeepCopy)
  {
    Count = CFDictionaryGetCount(a1);
    DeepCopy = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (DeepCopy)
    {
      v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (v5)
      {
        v6 = v5;
        v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
        if (v7)
        {
          v8 = v7;
          CFDictionaryGetKeysAndValues(a1, v6, v7);
          if (Count >= 1)
          {
            v9 = v8;
            v10 = v6;
            while (1)
            {
              v11 = CFGetTypeID(*v9);
              TypeID = CFDictionaryGetTypeID();
              v13 = *v9;
              if (v11 == TypeID)
              {
                break;
              }

              v14 = CFGetTypeID(v13);
              if (v14 == CFArrayGetTypeID())
              {
                v15 = IIOArrayCreateDeepCopy(*v9);
                if (v15)
                {
                  goto LABEL_16;
                }
              }

              else
              {
                CFDictionarySetValue(DeepCopy, *v10, *v9);
              }

LABEL_11:
              ++v10;
              ++v9;
              if (!--Count)
              {
                goto LABEL_17;
              }
            }

            v15 = IIODictionaryCreateDeepCopy(v13);
            if (!v15)
            {
              goto LABEL_11;
            }

LABEL_16:
            v16 = v15;
            CFDictionaryAddValue(DeepCopy, *v10, v15);
            CFRelease(v16);
            goto LABEL_11;
          }

LABEL_17:
          free(v6);
        }

        else
        {
          v8 = v6;
        }

        free(v8);
      }
    }
  }

  return DeepCopy;
}

void IIOImageSource::getCacheValues(IIOImageSource *this, IIODictionary *a2, BOOL *a3, BOOL *a4)
{
  v7 = IIODictionary::containsKey(a2, @"kCGImageSourceShouldCache");
  v8 = IIODictionary::containsKey(a2, @"kCGImageSourceShouldCacheImmediately");
  BoolForKey = IIODictionary::getBoolForKey(a2, @"kCGImageSourceShouldCache");
  v10 = IIODictionary::getBoolForKey(a2, @"kCGImageSourceShouldCacheImmediately");
  if ((gIIODebugFlags & 0x20000000) != 0)
  {
    if (IIOImageSource::getCacheValues(IIODictionary *,BOOL *,BOOL *)::__onceToken != -1)
    {
      IIOImageSource::getCacheValues();
    }

    v11 = (gIIODebugFlags >> 30) & 1;
  }

  else
  {
    LOBYTE(v11) = BoolForKey || (v7 & 1) == 0;
  }

  *a3 = v11;
  *a4 = v8 & v10;
}

BOOL IIODictionary::getBoolForKey(IIODictionary *this, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v2, a2);

  return IIODictionary::getBoolFromValue(Value, Value);
}

BOOL IIODictionary::getBoolFromValue(IIODictionary *this, const __CFString *cf)
{
  if (!cf)
  {
    return 0;
  }

  v3 = CFGetTypeID(cf);
  if (v3 == CFBooleanGetTypeID())
  {
    return *MEMORY[0x1E695E4D0] == cf;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(cf, kCFNumberSInt8Type, &valuePtr);
    v6 = valuePtr == 0;
    return !v6;
  }

  v7 = CFGetTypeID(cf);
  if (v7 != CFStringGetTypeID())
  {
    return 0;
  }

  v4 = 1;
  if (CFStringCompare(cf, @"true", 1uLL) == kCFCompareEqualTo)
  {
    return v4;
  }

  if (CFStringCompare(cf, @"false", 1uLL) == kCFCompareEqualTo)
  {
    return 0;
  }

  v6 = CFStringGetIntValue(cf) == 0;
  return !v6;
}

uint64_t IIOImageSource::getImagePlus(IIOImageSource *this, unint64_t a2)
{
  v4 = IIOImageSource::updatedCount(this);
  if (v4 <= a2)
  {
    _cg_jpeg_mem_term("getImagePlus", 3557, "index (%d) out of range [0-%d]\n", a2, v4);
  }

  else
  {
    ImagePlusAtIndex = IIOImageSource::getImagePlusAtIndex(this, a2);
    if (ImagePlusAtIndex)
    {
      return ImagePlusAtIndex[3];
    }

    IIOImageSource::setImagePlusAtIndex(this, 0, a2);
  }

  return 0;
}

const void *IIOImageSource::getImagePlusAtIndex(CFArrayRef *this, CFIndex a2)
{
  if (CFArrayGetCount(this[21]) <= a2)
  {
    return 0;
  }

  result = CFArrayGetValueAtIndex(this[21], a2);
  if (result == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  return result;
}

void IIOImageSource::setImagePlusAtIndex(uint64_t a1, const void *a2, CFIndex a3)
{
  Count = CFArrayGetCount(*(a1 + 168));
  v7 = *MEMORY[0x1E695E738];
  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = *MEMORY[0x1E695E738];
  }

  if (a3 >= Count)
  {
    v9 = *(a1 + 24);
    if (v9 <= a3)
    {
      _cg_jpeg_mem_term("setImagePlusAtIndex", 4033, "setImagePlusAtIndex index (%d) larger than arrayCount (%d) and image count (%d)\n", a3, Count, v9);
      if (a2)
      {

        CFRetain(a2);
      }
    }

    else
    {
      while (CFArrayGetCount(*(a1 + 168)) <= a3)
      {
        CFArrayAppendValue(*(a1 + 168), v7);
      }

      v10 = *(a1 + 168);

      CFArraySetValueAtIndex(v10, a3, v8);
    }
  }

  else
  {
    CFArraySetValueAtIndex(*(a1 + 168), a3, v8);
    if (!a2)
    {
      IIOImageSource::setImagePropertiesAtIndex(a1, 0, a3);

      IIOImageSource::setImageMedadataAtIndex(a1, 0, a3);
    }
  }
}

void CGImagePlusCreateWithSession()
{
  v0 = *MEMORY[0x1E69E9840];
  if (CGImagePlusGetTypeID::once != -1)
  {
    CGImagePlusCreateWithSession_cold_1();
  }

  *(_CFRuntimeCreateInstance() + 16) = 1;
  atomic_fetch_add_explicit(&gImagePlusCount, 1uLL, memory_order_relaxed);
  operator new();
}

void IIOImagePlus::IIOImagePlus(uint64_t a1, CFTypeRef cf)
{
  *a1 = &unk_1EF4D5348;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = -3;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  strcpy((a1 + 184), "....");
  *(a1 + 192) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 200) &= 0x80u;
  *(a1 + 204) = 0;
  *(a1 + 256) = a1;
  *(a1 + 264) = a1;
  if (cf)
  {
    v4 = CFRetain(cf);
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 24) = v4;
  *(a1 + 32) = CGImageSourceGetSource(cf);
  operator new();
}

IIOImageRead *IIOImageReadSession::isFinal(IIOImageReadSession *this)
{
  result = *(this + 4);
  if (result)
  {
    return IIOImageRead::isFinal(result);
  }

  return result;
}

CGMutableImageMetadataRef CGImageMetadataCreateMutable(void)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataCreateMutable", 0, 0, -1, 0);
  }

  v0 = *MEMORY[0x1E695E480];
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v2 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 1;
    *(Instance + 24) = CFDictionaryCreateMutable(v0, 0, &kCGImageMetadataTagKeyCallbacks, MEMORY[0x1E695E9E8]);
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0;
    initRecursivePthread_mutex((v2 + 72));
    pthread_mutex_init((v2 + 136), 0);
    initRecursivePthread_mutex((v2 + 208));
  }

  return v2;
}

uint64_t initRecursivePthread_mutex(pthread_mutex_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3.__sig = 0;
  *v3.__opaque = 0;
  pthread_mutexattr_init(&v3);
  pthread_mutexattr_settype(&v3, 2);
  pthread_mutex_init(a1, &v3);
  return pthread_mutexattr_destroy(&v3);
}

uint64_t IIOImagePlus::setStatus(uint64_t this, CGImageSourceStatus a2)
{
  if (*(this + 144) != -6)
  {
    *(this + 144) = a2;
    if (a2 == kCGImageStatusInvalidData)
    {
      this = CGImageSourceGetSource(~*(this + 16));
      if (this)
      {

        return IIOImageSource::setStatus(this, kCGImageStatusInvalidData);
      }
    }
  }

  return this;
}

uint64_t IIOImagePlus::setShouldCacheImageBlocks(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(this + 200) = *(this + 200) & 0xFD | v2;
  return this;
}

uint64_t IIOImagePlus::setShouldCacheImmediately(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(this + 200) = *(this + 200) & 0xFB | v2;
  return this;
}

void CommonASTCReadPlugin::CommonASTCReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4DE518;
  v5[62] = 0;
  v5[63] = 0;
  v5[59] = 0;
  v5[60] = 0;
  v5[58] = 0;
  std::allocate_shared[abi:fe200100]<ASTCTextureImp,std::allocator<ASTCTextureImp>,unsigned int &,0>();
}

void sub_185E6053C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 63);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(v1);
  _Unwind_Resume(a1);
}

IIOImageRead *IIOImageReadSession::retainBytePointer(IIOImageReadSession *this, CFDataRef *a2, int a3)
{
  result = *(this + 4);
  if (result)
  {
    return IIOImageRead::retainBytePointer(result, a2, a3);
  }

  return result;
}

uint64_t IIOScanner::validateBuffer(unsigned __int8 **this, const char *a2)
{
  result = ERROR_ImageIO_DataBufferIsNotReadable(this[1]);
  v4 = this[2];
  if (v4)
  {
    v5 = this[1];

    return ERROR_ImageIO_DataBufferIsNotBigEnough(v5, (v4 - 1));
  }

  return result;
}

uint64_t IIO_Reader::callInitializeImageAtOffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  IIODebugCallbackPriv(*(a1 + 24), "initImage");
  v12 = *(a2 + 24);
  v13 = IIO_Reader::testHeaderSize(v12);
  v14 = IIO_Reader::testHeaderSize(v13);
  IIOXPCClient = IIOXPCClient::GetIIOXPCClient(v14);
  if (IIOXPCClient::useServerForInitImage(IIOXPCClient, v14, a1, a6))
  {
    kdebug_trace();
    v129 = 256;
    v130 = 0;
    v125 = 0u;
    buffer[0] = IIOImagePlus::getOptions(v12);
    buffer[1] = IIOImagePlus::getProperties(v12);
    v126 = a3;
    v127 = a4;
    v128 = a5;
    BYTE2(v129) = IIOImageReadSession::isFinal(v13);
    if (a4)
    {
      LOBYTE(v129) = 3;
    }

    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v16;
    if (v16)
    {
      v18 = iio_xpc_add_plugin_dict(v16);
      v19 = iio_xpc_add_source_dict(v17);
      xpc_dictionary_set_uint64(v17, "iio_xpc_message_id", 4uLL);
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v20 = IIOString::IIOString(&v121, **(a1 + 8));
      v21 = IIOString::utf8String(v20);
      xpc_dictionary_set_string(v19, "iio_xpc_src_utitype", v21);
      xpc_dictionary_set_uint64(v19, "iio_xpc_src_ostype", *(a1 + 24));
      IIOImageReadSession::addDataToXPCDictionary(v13, v17, &v130);
      iio_xpc_dictionary_add_databuffer(v18, "iio_xpc_plugin_init_data", buffer, 0x38uLL);
      iio_xpc_dictionary_add_CFDictionary(v19, "iio_xpc_src_options");
      v22 = (*(*a1 + 104))(a1, v13);
      if (v22)
      {
        iio_xpc_dictionary_add_GlobalInfo(v18, v22, *(a1 + 24));
        CFRelease(v22);
      }

      IIOString::~IIOString(&v121);
    }

    v23 = IIOXPCClient::xpc_connection(IIOXPCClient);
    v24 = IIOXPCClient::xpc_queue(IIOXPCClient);
    v25 = IIOXPCClient::send_message_with_reply(IIOXPCClient, v23, v24, v17);
    if (!v25)
    {
      IIOXPCLog("❌ ImageIOXPC: XPC_READPLUGIN_INITIMAGE error null-reply\n");
      v34 = 4294967246;
      if (!v17)
      {
        goto LABEL_166;
      }

      goto LABEL_165;
    }

    v26 = v25;
    message_dict = iio_xpc_get_message_dict(v25);
    v116 = v26;
    xdict = iio_xpc_get_plugin_dict(v26);
    error_code = iio_xpc_dictionary_get_error_code(message_dict);
    if (error_code == -1400)
    {
      v29 = *(a1 + 24);
      v30 = v29 >> 24;
      if ((v29 >> 24) <= 0x7F)
      {
        v31 = *(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000;
      }

      else
      {
        v31 = __maskrune(v30, 0x40000uLL);
        v29 = *(a1 + 24);
      }

      if (v31)
      {
        v40 = (v29 >> 24);
      }

      else
      {
        v40 = 46;
      }

      v41 = v29 << 8 >> 24;
      if (v41 <= 0x7F)
      {
        v42 = *(MEMORY[0x1E69E9830] + 4 * v41 + 60) & 0x40000;
      }

      else
      {
        v42 = __maskrune(v41, 0x40000uLL);
        v29 = *(a1 + 24);
      }

      if (v42)
      {
        v43 = (v29 << 8 >> 24);
      }

      else
      {
        v43 = 46;
      }

      v44 = v29 >> 8;
      if (v44 <= 0x7F)
      {
        v45 = *(MEMORY[0x1E69E9830] + 4 * v44 + 60) & 0x40000;
      }

      else
      {
        v45 = __maskrune(v44, 0x40000uLL);
        v29 = *(a1 + 24);
      }

      if (v45)
      {
        v46 = (v29 >> 8);
      }

      else
      {
        v46 = 46;
      }

      if (v29 <= 0x7F)
      {
        if ((*(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x40000) != 0)
        {
          goto LABEL_45;
        }
      }

      else if (__maskrune(v29, 0x40000uLL))
      {
LABEL_45:
        v47 = *(a1 + 24);
LABEL_48:
        IIOXPCLog("❌ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_INITIMAGE XPC connection interrupted\n", v40, v43, v46, v47);
        v34 = 4294965896;
        goto LABEL_164;
      }

      v47 = 46;
      goto LABEL_48;
    }

    v34 = error_code;
    v35 = error_code == -49 || error_code == 0;
    v36 = *(a1 + 24);
    v37 = v36 >> 24;
    if (v35 && xdict)
    {
      if (v37 <= 0x7F)
      {
        v38 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
      }

      else
      {
        v38 = __maskrune(v37, 0x40000uLL);
        v36 = *(a1 + 24);
      }

      LODWORD(v57) = v36 >> 24;
      if (v38)
      {
        v57 = v57;
      }

      else
      {
        v57 = 46;
      }

      v58 = v36 << 8 >> 24;
      v113 = v57;
      if (v58 <= 0x7F)
      {
        v59 = *(MEMORY[0x1E69E9830] + 4 * v58 + 60) & 0x40000;
      }

      else
      {
        v59 = __maskrune(v58, 0x40000uLL);
        v36 = *(a1 + 24);
      }

      LODWORD(v60) = v36 << 8 >> 24;
      if (v59)
      {
        v60 = v60;
      }

      else
      {
        v60 = 46;
      }

      v61 = v36 >> 8;
      v110 = v60;
      if (v61 <= 0x7F)
      {
        v62 = *(MEMORY[0x1E69E9830] + 4 * v61 + 60) & 0x40000;
      }

      else
      {
        v62 = __maskrune(v61, 0x40000uLL);
        v36 = *(a1 + 24);
      }

      if (v62)
      {
        v63 = (v36 >> 8);
      }

      else
      {
        v63 = 46;
      }

      if (v36 <= 0x7F)
      {
        v64 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
      }

      else
      {
        v64 = __maskrune(v36, 0x40000uLL);
      }

      v112 = v34;
      if (v64)
      {
        v65 = *(a1 + 24);
      }

      else
      {
        v65 = 46;
      }

      IIOXPCLog("✅ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_INITIMAGE: OK\n", v113, v110, v63, v65);
      v66 = *(a1 + 24);
      v67 = iio_xpc_dictionary_copy_CFDictionary(xdict, "iio_xpc_plugin_type_changed");
      v68 = a1;
      if (v67)
      {
        v121 = 0;
        v122 = 0;
        v123 = 0;
        cf = v67;
        v69 = IIODictionary::IIODictionary(&v121, v67);
        Uint32ForKey = IIODictionary::getUint32ForKey(v69, @"NEW_PLUGIN_ostype");
        v70 = v66 >> 24;
        if ((v66 >> 24) <= 0x7F)
        {
          v71 = *(MEMORY[0x1E69E9830] + 4 * v70 + 60) & 0x40000;
        }

        else
        {
          v71 = __maskrune(v66 >> 24, 0x40000uLL);
        }

        if (v71)
        {
          v72 = v70;
        }

        else
        {
          v72 = 46;
        }

        v111 = v72;
        v73 = v66 << 8 >> 24;
        if (v73 <= 0x7F)
        {
          v74 = *(MEMORY[0x1E69E9830] + 4 * v73 + 60) & 0x40000;
        }

        else
        {
          v74 = __maskrune(v66 << 8 >> 24, 0x40000uLL);
        }

        if (v74)
        {
          v75 = v73;
        }

        else
        {
          v75 = 46;
        }

        v109 = v75;
        v76 = v66 >> 8;
        if (v76 <= 0x7F)
        {
          v77 = *(MEMORY[0x1E69E9830] + 4 * v76 + 60) & 0x40000;
        }

        else
        {
          v77 = __maskrune(v66 >> 8, 0x40000uLL);
        }

        if (v77)
        {
          v78 = v76;
        }

        else
        {
          v78 = 46;
        }

        v108 = v78;
        if (v66 <= 0x7F)
        {
          v79 = *(MEMORY[0x1E69E9830] + 4 * v66 + 60) & 0x40000;
        }

        else
        {
          v79 = __maskrune(v66, 0x40000uLL);
        }

        if (v79)
        {
          v80 = v66;
        }

        else
        {
          v80 = 46;
        }

        v107 = v80;
        v81 = Uint32ForKey >> 24;
        if ((Uint32ForKey >> 24) <= 0x7F)
        {
          v82 = *(MEMORY[0x1E69E9830] + 4 * v81 + 60) & 0x40000;
        }

        else
        {
          v82 = __maskrune(Uint32ForKey >> 24, 0x40000uLL);
        }

        if (v82)
        {
          v83 = v81;
        }

        else
        {
          v83 = 46;
        }

        v106 = v83;
        v84 = Uint32ForKey << 8 >> 24;
        if (v84 <= 0x7F)
        {
          v85 = *(MEMORY[0x1E69E9830] + 4 * v84 + 60) & 0x40000;
        }

        else
        {
          v85 = __maskrune(Uint32ForKey << 8 >> 24, 0x40000uLL);
        }

        if (v85)
        {
          v86 = v84;
        }

        else
        {
          v86 = 46;
        }

        v104 = v86;
        v87 = Uint32ForKey >> 8;
        if (v87 <= 0x7F)
        {
          v88 = *(MEMORY[0x1E69E9830] + 4 * v87 + 60) & 0x40000;
        }

        else
        {
          v88 = __maskrune(Uint32ForKey >> 8, 0x40000uLL);
        }

        if (Uint32ForKey <= 0x7F)
        {
          v89 = *(MEMORY[0x1E69E9830] + 4 * Uint32ForKey + 60) & 0x40000;
        }

        else
        {
          v89 = __maskrune(Uint32ForKey, 0x40000uLL);
        }

        if (v88)
        {
          v90 = v87;
        }

        else
        {
          v90 = 46;
        }

        if (v89)
        {
          v91 = Uint32ForKey;
        }

        else
        {
          v91 = 46;
        }

        IIOXPCLog("    changed pluin from '%c%c%c%c' to '%c%c%c%c'\n", v111, v109, v108, v107, v106, v104, v90, v91);
        v92 = IIODictionary::getUint32ForKey(&v121, @"NEW_PLUGIN_dataOffset");
        v93 = v92;
        ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v92);
        v68 = IIO_ReaderHandler::readerForType(ReaderHandler, Uint32ForKey);
        CFRelease(cf);
        a5 = v93;
        if (v68)
        {
          v95 = v112;
        }

        else
        {
          v95 = 4294967246;
        }

        v112 = v95;
        IIODictionary::~IIODictionary(&v121);
        a3 = 0;
      }

      v120 = 0;
      GlobalInfo = iio_xpc_dictionary_get_GlobalInfo(xdict, &v120);
      if (v120 && v68)
      {
        (*(*v68 + 96))(v68, v13, GlobalInfo);
      }

      else if (!v68)
      {
        v97 = 0;
        v34 = v112;
        if (v112)
        {
          goto LABEL_164;
        }

        goto LABEL_151;
      }

      v97 = (*(*v68 + 248))(v68, a2, a3, a5);
      IIOReadPlugin::setUTIWithReader(v97, v68);
      v34 = (*(*v97 + 104))(v97, xdict);
      if (v34)
      {
        goto LABEL_164;
      }

LABEL_151:
      v98 = iio_xpc_dictionary_copy_CFDictionary(xdict, "iio_xpc_plugin_init_properties");
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v115 = v98;
      v99 = IIODictionary::IIODictionary(&v121, v98, 1);
      if (IIODictionary::getCount(v99))
      {
        IIOImagePlus::appendProperties(v12, &v121);
      }

      value = xpc_dictionary_get_value(xdict, "iio_xpc_plugin_init_metadata");
      if (value)
      {
        v101 = CGImageMetadataCreateFromXPCObj(value);
        if (v101)
        {
          IIOImagePlus::setMetadata(v12, v101);
          CFRelease(v101);
        }
      }

      v102 = iio_xpc_dictionary_copy_CFDictionary(xdict, "iio_xpc_plugin_header_infoptr");
      memset(v119, 0, sizeof(v119));
      IIODictionary::IIODictionary(v119, v102, 1);
      InfoPtr = IIOReadPlugin::createInfoPtr(v97);
      if (IIODictionary::getCount(v119))
      {
        memset(v118, 0, sizeof(v118));
        IIODictionary::IIODictionary(v118, *InfoPtr);
        IIODictionary::appendDictionaryNoOverwrite(v118, v119);
        IIOReadPlugin::updateTempColorSpace(v97);
        IIODictionary::~IIODictionary(v118);
      }

      InfoPtr[1] = v97;
      IIOReadPlugin::setIPlus(v97, v12, v13);
      (*(*v97 + 64))(v97, InfoPtr);
      if (v115)
      {
        CFRelease(v115);
      }

      if (v102)
      {
        CFRelease(v102);
      }

      IIODictionary::~IIODictionary(v119);
      IIODictionary::~IIODictionary(&v121);
LABEL_164:
      _cg_jpeg_mem_term(IIOXPCClient, v116, v48);
      xpc_release(v116);
      if (!v17)
      {
LABEL_166:
        if (v13)
        {
          if (v130)
          {
            IIOImageReadSession::releaseBytePointer(v13, v130);
          }
        }

        kdebug_trace();
        return v34;
      }

LABEL_165:
      xpc_release(v17);
      goto LABEL_166;
    }

    if (v37 <= 0x7F)
    {
      v39 = *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000;
    }

    else
    {
      v39 = __maskrune(v37, 0x40000uLL);
      v36 = *(a1 + 24);
    }

    if (v39)
    {
      v49 = (v36 >> 24);
    }

    else
    {
      v49 = 46;
    }

    v50 = v36 << 8 >> 24;
    if (v50 <= 0x7F)
    {
      v51 = *(MEMORY[0x1E69E9830] + 4 * v50 + 60) & 0x40000;
    }

    else
    {
      v51 = __maskrune(v50, 0x40000uLL);
      v36 = *(a1 + 24);
    }

    if (v51)
    {
      v52 = (v36 << 8 >> 24);
    }

    else
    {
      v52 = 46;
    }

    v53 = v36 >> 8;
    if (v53 <= 0x7F)
    {
      v54 = *(MEMORY[0x1E69E9830] + 4 * v53 + 60) & 0x40000;
    }

    else
    {
      v54 = __maskrune(v53, 0x40000uLL);
      v36 = *(a1 + 24);
    }

    if (v54)
    {
      v55 = (v36 >> 8);
    }

    else
    {
      v55 = 46;
    }

    if (v36 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000) != 0)
      {
        goto LABEL_67;
      }
    }

    else if (__maskrune(v36, 0x40000uLL))
    {
LABEL_67:
      v56 = *(a1 + 24);
LABEL_70:
      _cg_jpeg_mem_term("callInitializeImageAtOffset", 861, "❌ ImageIOXPC [%c%c%c%c]: XPC_READPLUGIN_INITIMAGE error: %d  (IMAGEIO_PLUGIN_REPLY: %p)\n", v49, v52, v55, v56, v34, xdict);
      goto LABEL_164;
    }

    v56 = 46;
    goto LABEL_70;
  }

  v32 = *(*a1 + 72);

  return v32(a1, a2, a3, a4, a5);
}

void sub_185E611A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  IIODictionary::~IIODictionary(&a31);
  IIODictionary::~IIODictionary((v31 - 176));
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader::initImageAtOffset(IIO_Reader *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (IIO_XPCServer())
  {
    return 4294967246;
  }

  v11 = (*(*a1 + 248))(a1, a2, a3, a5);
  IIOReadPlugin::setUTIWithReader(v11, a1);
  if (a4 && v11)
  {
    IIOReadPlugin::setDecodeMode(v11, 3);
    IIOReadPlugin::setDestMaxPixelSize(v11, a4);
  }

  v13 = 0;
  v10 = IIOReadPlugin::callInitialize(v11, &v13);
  if (v11 && v13)
  {
    (*(*v11 + 8))(v11);
  }

  return v10;
}

void sub_185E6130C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E61240);
}

void IIO_Reader_ATX::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

unint64_t IIOScanner::seek(IIOScanner *this, unint64_t a2)
{
  v6 = *(this + 2);
  if (v6 < a2)
  {
    v10 = v2;
    *(this + 3) = v6;
    LogError("seek", 503, "*** IIOScanner::seek reached EOF\n", v3, v10, v4, v5);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  *(this + 3) = a2;
  *(this + 16) = 0;
  return a2;
}

uint64_t IIOReadPlugin::IIOReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  *(a1 + 200) = 0u;
  v9 = (a1 + 200);
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *a1 = &unk_1EF4D88F0;
  *(a1 + 8) = a2;
  if (!a2)
  {
    *(a1 + 16) = 0;
    v11 = (a1 + 16);
    *(a1 + 40) = 0;
LABEL_7:
    *(a1 + 369) = 1;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    goto LABEL_8;
  }

  v10 = *(a2 + 24);
  *(a1 + 16) = v10;
  v11 = (a1 + 16);
  *(a1 + 40) = 0;
  if (!v10)
  {
    goto LABEL_7;
  }

  v12 = IIOImageSource::count(v10);
  if (!v12)
  {
    goto LABEL_7;
  }

  Source = CGImageSourceGetSource(v12);
  *(a1 + 24) = Source;
  *(a1 + 369) = IIOImageReadSession::isFinal(Source);
  v14 = IIO_Reader::testHeaderSize(*(a1 + 24));
  *(a1 + 32) = v14;
  if (v14)
  {
    *v9 = IIOImageRead::getSize(v14);
  }

LABEL_8:
  *(a1 + 192) = 0;
  *(a1 + 188) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v15 = *(a1 + 16);
  if (v15)
  {
    *(a1 + 48) = IIOImagePlus::getOptions(v15);
    *(a1 + 56) = IIOImagePlus::getProperties(*(a1 + 16));
    *(a1 + 64) = IIOImagePlus::getMetadata(*(a1 + 16));
  }

  *(a1 + 184) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  v16 = *(MEMORY[0x1E695F050] + 16);
  *(a1 + 120) = *MEMORY[0x1E695F050];
  *(a1 + 136) = v16;
  *(a1 + 72) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 193) = IIOPluginShouldDebugWriteImageBlocks();
  *(a1 + 194) = IIOPluginShouldDebugWriteImageBlocks();
  *(a1 + 224) = a3;
  *(a1 + 208) = a4;
  *(a1 + 384) = -1;
  *(a1 + 336) = -1;
  *(a1 + 344) = 0;
  *(a1 + 348) = 0;
  *(a1 + 364) = 757935405;
  *(a1 + 370) = 1;
  if ((gIIODebugFlags & 0x20000000) != 0)
  {
    *(a1 + 371) = (gIIODebugFlags & 0x40000000) != 0;
  }

  else if (*v11)
  {
    *(a1 + 371) = IIOImagePlus::shouldCacheImageBlocks(*v11);
  }

  *(a1 + 372) = 1;
  *(a1 + 382) = 0;
  v17 = *(a1 + 48);
  if (v17 && IIODictionary::containsKey(v17, @"kCGImageSourceDecodeRequest"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(*(a1 + 48), @"kCGImageSourceDecodeRequest");
    *(a1 + 382) = CFStringCompare(ObjectForKey, @"kCGImageSourceDecodeToSDR", 0) == kCFCompareEqualTo;
    *(a1 + 383) = CFStringCompare(ObjectForKey, @"kCGImageSourceDecodeToHDR", 0) == kCFCompareEqualTo;
  }

  *(a1 + 416) = 0;
  *(a1 + 424) = 0;
  *(a1 + 436) = -1;
  *(a1 + 432) = 538976288;
  *(a1 + 445) = 256;
  *(a1 + 220) = a5;
  return a1;
}

void ASTCTextureImp::ASTCTextureImp(ASTCTextureImp *this, int a2)
{
  *(this + 2) = a2;
  *this = &unk_1EF4D8FD0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 30) = 0;
  pthread_mutex_init((this + 168), 0);
}

uint64_t ___ZN13ATXReadPlugin10initializeEP13IIODictionary_block_invoke(void *a1, uint64_t a2, int a3, int a4)
{
  v6 = 0;
  v7 = a1[6];
  if (a4 <= 1212498243)
  {
    if (a4 == 875704410)
    {
      goto LABEL_40;
    }

    if (a4 != 875704422)
    {
      if (a4 == 1095980099)
      {
        if (*(v7 + 564))
        {
          _cg_jpeg_mem_term("initialize_block_invoke", 206, "*** ERROR: lzfseCompressed mismatch\n");
          return 4294967246;
        }

        *(v7 + 600) = a2;
        v14 = a1[7];
        v15 = a2 + 12;
        goto LABEL_30;
      }

      return v6;
    }

    if (*(v7 + 528) != 1714434612)
    {
      _cg_jpeg_mem_term("initialize_block_invoke", 260, "*** ERROR: bad _atxHeader.glInternalFormat 0x%08X\n");
      return 4294967246;
    }

    v9 = bswap32(IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 8));
    if (v9 == 1128813133)
    {
      *(v7 + 632) = a2 + 24;
      *(v7 + 640) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 12);
      *(v7 + 644) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 16);
      Val32AtPosition = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 20);
      *(v7 + 648) = Val32AtPosition;
      if (Val32AtPosition < *(v7 + 640) || Val32AtPosition < *(v7 + 644))
      {
        _cg_jpeg_mem_term("initialize_block_invoke", 287, "*** ERROR: bad geometry %dx%d - rb: %d\n");
        goto LABEL_38;
      }
    }

    else if (v9 == 1280658753)
    {
      *(v7 + 608) = a2 + 24;
      *(v7 + 616) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 12);
      *(v7 + 620) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 16);
      v10 = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 20);
      *(v7 + 624) = v10;
      if (v10 < *(v7 + 616) || v10 < *(v7 + 620))
      {
        _cg_jpeg_mem_term("initialize_block_invoke", 275, "*** ERROR: bad geometry %dx%d - rb: %d\n");
LABEL_38:
        v6 = 4294967246;
        goto LABEL_40;
      }
    }

    v6 = 0;
LABEL_40:
    if (*(v7 + 528) == 1714434612)
    {
      v21 = bswap32(IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 8));
      if (v21 == 1667789421)
      {
        *(v7 + 656) = 1;
        *(v7 + 632) = a2 + 24;
        *(v7 + 640) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 12);
        *(v7 + 644) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 16);
        *(v7 + 648) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 20);
        *(v7 + 652) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 28);
        v23 = *(v7 + 648);
        if (v23 >= *(v7 + 640) && v23 >= *(v7 + 644))
        {
          return v6;
        }

        _cg_jpeg_mem_term("initialize_block_invoke", 330, "*** ERROR: bad geometry %dx%d - rb: %d\n");
      }

      else
      {
        if (v21 != 1819635041)
        {
          return v6;
        }

        *(v7 + 656) = 1;
        *(v7 + 608) = a2 + 24;
        *(v7 + 616) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 12);
        *(v7 + 620) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 16);
        *(v7 + 624) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 20);
        *(v7 + 628) = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 28);
        v22 = *(v7 + 624);
        if (v22 >= *(v7 + 616) && v22 >= *(v7 + 620))
        {
          return v6;
        }

        _cg_jpeg_mem_term("initialize_block_invoke", 316, "*** ERROR: bad geometry %dx%d - rb: %d\n");
      }
    }

    else
    {
      _cg_jpeg_mem_term("initialize_block_invoke", 300, "*** ERROR: bad _atxHeader.glInternalFormat 0x%08X\n");
    }

    return 4294967246;
  }

  if (a4 == 1634956387)
  {
    if (*(v7 + 564))
    {
      _cg_jpeg_mem_term("initialize_block_invoke", 239, "*** ERROR: lzfseCompressed mismatch\n");
      return 4294967246;
    }

    *(v7 + 600) = a2;
    ASTCTextureImp::setInputIsPreTwiddled(a1[7], 1);
    ASTCTextureImp::setTextureBaseOffset(a1[7], a2 + 12);
    v18 = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 8);
    ASTCTextureImp::setLock_blockSize(a1[7], v18);
    ASTCTextureImp::setLock_dataSize(a1[7], v18);
    ASTCTextureImp::setLock_blockOffset(a1[7], 0);
    return 0;
  }

  if (a4 == 1280984659)
  {
    if (!*(v7 + 564))
    {
      _cg_jpeg_mem_term("initialize_block_invoke", 221, "*** ERROR: lzfseCompressed mismatch\n");
      return 4294967246;
    }

    ASTCTextureImp::setInputIsLZFSECompressed(a1[7], 1);
    v12 = a1[7];
    v13 = IIOScanner::getVal32AtPosition((*(a1[5] + 8) + 40), a2 + 8);
    ASTCTextureImp::setCompressedLZFSESize(v12, v13);
    ASTCTextureImp::setCompressedLZFSEDataOffset(a1[7], a2 + 12);
    *(v7 + 600) = a2;
    v14 = a1[7];
    v15 = a2;
LABEL_30:
    ASTCTextureImp::setTextureBaseOffset(v14, v15);
    return 0;
  }

  if (a4 != 1212498244)
  {
    return v6;
  }

  v8 = *(a1[4] + 8);
  if (*(v8 + 24) == 1)
  {
    _cg_jpeg_mem_term("initialize_block_invoke", 189, "*** ERROR: found multiple headers in ATX file\n");
    return 4294967246;
  }

  *(v8 + 24) = 1;
  v16 = (*(a1[5] + 8) + 40);

  return ATXReadPlugin::readHeader(v7, v16, a3);
}

uint64_t IIOScanner::getVal32AtPosition(IIOScanner *this, uint64_t a2)
{
  v6 = *(this + 1);
  if (!v6 || (a2 + 4) > *(this + 2))
  {
    v12 = v2;
    LogError("getVal32AtPosition", 319, "*** IIOScanner::getVal32AtPosition reached EOF\n", v3, v12, v4, v5);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v7 = *(v6 + a2);
  v8 = bswap32(v7);
  if (*(this + 68))
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t ASTCTextureImp::MetalFormatForGLFormat(ASTCTextureImp *this)
{
  if ((this - 37808) > 0x2D)
  {
    return 0;
  }

  else
  {
    return dword_18620AB3C[this - 37808];
  }
}

void ASTCTwiddler::ASTCTwiddlerImpl::~ASTCTwiddlerImpl(ASTCTwiddler::ASTCTwiddlerImpl *this)
{
  *this = &unk_1EF4DB0A0;

  *(this + 7) = 0;
  v2 = *(this + 5);
  if (v2)
  {
    _ImageIO_Free(v2, *(this + 6));
  }

  *(this + 5) = 0;
}

{
  ASTCTwiddler::ASTCTwiddlerImpl::~ASTCTwiddlerImpl(this);

  JUMPOUT(0x186602850);
}

uint64_t ASTCTextureImp::setBlocks(uint64_t this, int a2, int a3)
{
  *(this + 20) = a2;
  *(this + 24) = a3;
  return this;
}

uint64_t IIOReadPlugin::setupImageProviderCallbackV3(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = IIOReadPlugin::prepareGeometry(a1, a2);
  if (!v3)
  {
    IIOImagePlus::setImageBlockProc(*(a1 + 16));
  }

  return v3;
}

void IIOImagePlus::setGeometry(uint64_t a1, CFTypeRef *a2, uint64_t a3)
{
  v76 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = *a2;
    if (!*a2 || (v7 = CFGetTypeID(*a2), v7 != CFDictionaryGetTypeID()))
    {
      LogFault("setGeometry", 746, "*** ERROR: ImageIO 'CGImagePlusSetGeometry' header is not a CFDictionary...\n");
      exit(0);
    }

    *(a1 + 168) = a2;
    pthread_mutex_lock(&ipGeomLock);
    v8 = *(a1 + 88);
    if (v8)
    {
      CGColorSpaceRelease(v8);
    }

    pthread_mutex_unlock(&ipGeomLock);
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    if ((*a3 - 1000001) >= 0xFFFFFFFFFFF0BDC0 && (*(a3 + 8) - 1000001) >= 0xFFFFFFFFFFF0BDC0)
    {
      v9 = *(a3 + 16);
      if (v9 - 33 >= 0xFFFFFFFFFFFFFFE0)
      {
        v10 = *(a3 + 24);
        if (v10 >= v9 && v10 - 641 >= 0xFFFFFFFFFFFFFD80)
        {
          v11 = v10 * *a3 + 7;
          v12 = v11 >> 3;
          v13 = *(a3 + 32);
          if (!v13)
          {
            v13 = ImageIOAlignRowBytes(v11 >> 3, 0x10uLL);
            *(a3 + 32) = v13;
          }

          if (v13 > 0x4C4B400)
          {
            _cg_jpeg_mem_term("setGeometry", 779, "*** geom.bytesPerRow > maxRB  %d > %d\n");
            return;
          }

          if (v13 < v12)
          {
            _cg_jpeg_mem_term("setGeometry", 784, "*** geom.bytesPerRow < minRB  %d < %d\n");
            return;
          }

          if (is_mul_ok(*(a3 + 8), v13))
          {
            pthread_mutex_lock(&ipGeomLock);
            *(a1 + 40) = *a3;
            v14 = *(a3 + 48);
            v15 = *(a3 + 64);
            v16 = *(a3 + 32);
            *(a1 + 56) = *(a3 + 16);
            *(a1 + 104) = v15;
            *(a1 + 88) = v14;
            *(a1 + 72) = v16;
            pthread_mutex_unlock(&ipGeomLock);
            v17 = *(a3 + 48);
            if (v17)
            {
              Type = CGColorSpaceGetType();
              Model = CGColorSpaceGetModel(v17);
              if (Type == 7)
              {
                BaseColorSpace = CGColorSpaceGetBaseColorSpace(v17);
                Type = CGColorSpaceGetType();
                v21 = CGColorSpaceGetModel(BaseColorSpace);
                IIODictionary::setObjectForKey(*(a1 + 120), *MEMORY[0x1E695E4D0], @"IsIndexed");
              }

              else
              {
                v21 = Model;
              }

              if (Type == 10 || Type == 6)
              {
                v22 = CGColorSpaceCopyICCProfileDescription();
                IIODictionary::setObjectForKey(*(a1 + 120), v22, @"ProfileName");
                if (v22)
                {
                  CFRelease(v22);
                }
              }

              if (v21 > kCGColorSpaceModelXYZ)
              {
                v23 = 0;
              }

              else
              {
                v23 = *&aYargBgrkymcBal[4 * v21];
              }

              v24 = *(a3 + 40);
              if (!v24)
              {
                *(a3 + 40) = v23;
                v24 = v23;
              }

              if (v23 != v24)
              {
                LODWORD(v25) = HIBYTE(v23);
                v26 = MEMORY[0x1E69E9830];
                v27 = MEMORY[0x1E69E9830] + 60;
                if ((*(MEMORY[0x1E69E9830] + 60 + 4 * HIBYTE(v23)) & 0x40000) != 0)
                {
                  v25 = v25;
                }

                else
                {
                  v25 = 46;
                }

                v70 = v25;
                v28 = HIWORD(v23) & 0x7F;
                if ((*(v27 + 4 * v28) & 0x40000) != 0)
                {
                  v29 = v28;
                }

                else
                {
                  v29 = 46;
                }

                v30 = (v23 >> 8) & 0x7B;
                if ((*(v27 + 4 * v30) & 0x40000) != 0)
                {
                  v31 = v30;
                }

                else
                {
                  v31 = 46;
                }

                v32 = v23 & 0x7B;
                if ((*(v27 + 4 * v32) & 0x40000) != 0)
                {
                  v33 = v32;
                }

                else
                {
                  v33 = 46;
                }

                v34 = v24 >> 24;
                if ((v24 >> 24) <= 0x7F)
                {
                  v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
                }

                else
                {
                  v35 = __maskrune(v34, 0x40000uLL);
                  v24 = *(a3 + 40);
                }

                if (v35)
                {
                  v36 = (v24 >> 24);
                }

                else
                {
                  v36 = 46;
                }

                v37 = v24 << 8 >> 24;
                if (v37 <= 0x7F)
                {
                  v38 = *(v26 + 4 * v37 + 60) & 0x40000;
                }

                else
                {
                  v38 = __maskrune(v37, 0x40000uLL);
                  v24 = *(a3 + 40);
                }

                if (v38)
                {
                  v39 = (v24 << 8 >> 24);
                }

                else
                {
                  v39 = 46;
                }

                v40 = v24 >> 8;
                if (v40 <= 0x7F)
                {
                  v41 = *(v26 + 4 * v40 + 60) & 0x40000;
                }

                else
                {
                  v41 = __maskrune(v40, 0x40000uLL);
                  v24 = *(a3 + 40);
                }

                if (v41)
                {
                  v42 = (v24 >> 8);
                }

                else
                {
                  v42 = 46;
                }

                if (v24 <= 0x7F)
                {
                  v43 = *(v26 + 4 * v24 + 60) & 0x40000;
                }

                else
                {
                  v43 = __maskrune(v24, 0x40000uLL);
                }

                if (v43)
                {
                  v44 = *(a3 + 40);
                }

                else
                {
                  v44 = 46;
                }

                _cg_jpeg_mem_term("setGeometry", 847, "embedded profile '%c%c%c%c' does not match expected color model '%c%c%c%c' - dropping embedded profile\n", v70, v29, v31, v33, v36, v39, v42, v44);
                *(a3 + 48) = 0;
              }
            }

            if ((*(&gIIODebugFlags + 1) & 0x80003000) == 0)
            {
LABEL_94:
              v58 = *(a3 + 40);
              if (v58 <= 1281450527)
              {
                if (v58 == 1129142603)
                {
                  goto LABEL_102;
                }

                v59 = 1196573017;
              }

              else
              {
                if (v58 == 1281450528 || v58 == 1380401696)
                {
                  goto LABEL_102;
                }

                v59 = 1482250784;
              }

              if (v58 != v59)
              {
                LogError("setGeometry", 860, "*** ERROR: image is not of a supported color model (%d)\n", *(a3 + 40));
                v58 = *(a3 + 40);
              }

LABEL_102:
              if (v58 > 1281450527)
              {
                if (v58 == 1281450528)
                {
                  v60 = &kCGImagePropertyColorModelLab;
                }

                else
                {
                  if (v58 != 1380401696)
                  {
                    goto LABEL_112;
                  }

                  v60 = &kCGImagePropertyColorModelRGB;
                }
              }

              else if (v58 == 1129142603)
              {
                v60 = &kCGImagePropertyColorModelCMYK;
              }

              else
              {
                if (v58 != 1196573017)
                {
                  goto LABEL_112;
                }

                v60 = &kCGImagePropertyColorModelGray;
              }

              IIODictionary::setObjectForKey(*(a1 + 120), *v60, @"ColorModel");
LABEL_112:
              v61 = *(a3 + 48);
              if (v61)
              {
                v62 = CFRetain(v61);
LABEL_126:
                pthread_mutex_lock(&ipGeomLock);
                *(a1 + 88) = v62;
                if (*(a1 + 188) == 1 && !CFDictionaryContainsValue(v4, @"kIsAdobeRGB"))
                {
                  *(a1 + 188) = 0;
                }

                pthread_mutex_unlock(&ipGeomLock);
                v67 = *(a1 + 120);
                IIONumber::IIONumber(range, *a3);
                IIODictionary::setObjectForKey(v67, range, @"PixelWidth");
                IIONumber::~IIONumber(range);
                v68 = *(a1 + 120);
                IIONumber::IIONumber(range, *(a3 + 8));
                IIODictionary::setObjectForKey(v68, range, @"PixelHeight");
                IIONumber::~IIONumber(range);
                if ((IIODictionary::containsKey(*(a1 + 120), @"Depth") & 1) == 0)
                {
                  v69 = *(a1 + 120);
                  IIONumber::IIONumber(range, *(a3 + 16));
                  IIODictionary::setObjectForKey(v69, range, @"Depth");
                  IIONumber::~IIONumber(range);
                }

                IIOImagePlus::setGeometry(a3, a1, (a1 + 120));
                return;
              }

              v62 = 0;
              v63 = *(a3 + 40);
              if (v63 > 1281450527)
              {
                if (v63 == 1281450528)
                {
                  *whitePoint = xmmword_1862090E0;
                  v75 = 0x3FEA6594AF4F0D84;
                  memset(blackPoint, 0, sizeof(blackPoint));
                  *range = xmmword_1862090F8;
                  v72 = unk_186209108;
                  Lab = CGColorSpaceCreateLab(whitePoint, blackPoint, range);
                }

                else
                {
                  if (v63 != 1380401696)
                  {
                    goto LABEL_124;
                  }

                  Lab = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
                }
              }

              else if (v63 == 1129142603)
              {
                Lab = CGColorSpaceCreateWithName(*MEMORY[0x1E695F118]);
              }

              else
              {
                if (v63 != 1196573017)
                {
                  goto LABEL_124;
                }

                Lab = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
              }

              v62 = Lab;
LABEL_124:
              if ((gIIODebugFlags & 0x8000300000) != 0)
              {
                Name = CGColorSpaceGetName(v62);
                IIOString::IIOString(range, Name);
                v66 = IIOString::utf8String(range);
                ImageIOLog("COL plugin initialize did not specify colorspace - falling back to %s\n", v66);
                IIOString::~IIOString(range);
              }

              goto LABEL_126;
            }

            v45 = *(a1 + 184);
            v46 = v45 >> 24;
            if ((v45 >> 24) <= 0x7F)
            {
              v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
            }

            else
            {
              v47 = __maskrune(v46, 0x40000uLL);
              v45 = *(a1 + 184);
            }

            if (v47)
            {
              v48 = (v45 >> 24);
            }

            else
            {
              v48 = 46;
            }

            v49 = v45 << 8 >> 24;
            if (v49 <= 0x7F)
            {
              v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
            }

            else
            {
              v50 = __maskrune(v49, 0x40000uLL);
              v45 = *(a1 + 184);
            }

            if (v50)
            {
              v51 = (v45 << 8 >> 24);
            }

            else
            {
              v51 = 46;
            }

            v52 = v45 >> 8;
            if (v52 <= 0x7F)
            {
              v53 = *(MEMORY[0x1E69E9830] + 4 * v52 + 60) & 0x40000;
            }

            else
            {
              v53 = __maskrune(v52, 0x40000uLL);
              v45 = *(a1 + 184);
            }

            if (v53)
            {
              v54 = (v45 >> 8);
            }

            else
            {
              v54 = 46;
            }

            if (v45 <= 0x7F)
            {
              if ((*(MEMORY[0x1E69E9830] + 4 * v45 + 60) & 0x40000) != 0)
              {
                goto LABEL_90;
              }
            }

            else if (__maskrune(v45, 0x40000uLL))
            {
LABEL_90:
              v55 = *(a1 + 184);
LABEL_93:
              v56 = CGColorSpaceGetName(*(a3 + 48));
              IIOString::IIOString(range, v56);
              v57 = IIOString::utf8String(range);
              ImageIOLog("COL setGeometry - '%c%c%c%c' using colorSpace: '%s'\n", v48, v51, v54, v55, v57);
              IIOString::~IIOString(range);
              goto LABEL_94;
            }

            v55 = 46;
            goto LABEL_93;
          }
        }
      }
    }
  }
}

void sub_185E628A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImagePlus::setReadPlugin(uint64_t this, _DWORD *a2)
{
  *(this + 176) = a2;
  if (a2)
  {
    *(this + 184) = a2[55];
  }

  return this;
}

void IIONumber::IIONumber(IIONumber *this, uint64_t a2)
{
  valuePtr = a2;
  *this = &unk_1EF4D41D0;
  *(this + 1) = 10;
  *(this + 2) = 0;
  *(this + 2) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
}

{
  valuePtr = a2;
  *this = &unk_1EF4D41D0;
  *(this + 1) = 4;
  *(this + 2) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
}

void IIOImagePlus::setGeometry(uint64_t a1, uint64_t a2, IIODictionary **a3)
{
  v6 = *(a1 + 64) & 0x1F;
  v7 = v6 > 6;
  v8 = (1 << v6) & 0x61;
  v9 = v7 || v8 == 0;
  v10 = MEMORY[0x1E695E4D0];
  if (v9)
  {
    IIODictionary::setObjectForKey(*a3, *MEMORY[0x1E695E4D0], @"HasAlpha");
  }

  if (*(a1 + 72))
  {
    IIODictionary::setObjectForKey(*a3, *v10, @"IsFloat");
  }

  if (*(a2 + 144) != -6)
  {
    *(a2 + 144) = -1;
  }
}

void sub_185E630BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va2, a4);
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

uint64_t IIOImagePlus::releaseImageProvider(IIOImagePlus *this)
{
  v2 = *(this + 19);
  v3 = *MEMORY[0x1E695E738];
  if (v2)
  {
    v4 = v2 == v3;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    atomic_fetch_add_explicit(&gImageProviderCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    CGImageProviderRelease();
  }

  result = *(this + 20);
  if (result)
  {
    v6 = result == v3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    atomic_fetch_add_explicit(&gImageProviderCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
    result = CGImageProviderRelease();
  }

  *(this + 200) &= ~0x40u;
  *(this + 19) = 0;
  *(this + 20) = 0;
  return result;
}

void IIODictionary::removeObjectForKey(IIODictionary *this, const __CFString *a2)
{
  if (a2)
  {
    v2 = *(this + 1);
    if (v2)
    {
      CFDictionaryRemoveValue(v2, a2);
    }
  }
}

void XMPMappingIteratePropertiesUsingBlock(uint64_t a1, IIODictionary *this, uint64_t a3)
{
  v35 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2000000000;
  v34 = 1;
  if (a1)
  {
    v6 = *(a1 + 24);
    memset(v30, 0, sizeof(v30));
    IIODictionary::IIODictionary(v30, v6);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 0x40000000;
    v29[2] = __XMPMappingIteratePropertiesUsingBlock_block_invoke;
    v29[3] = &unk_1E6F0BE18;
    v29[4] = &v31;
    IIODictionary::enumerate(v30, v29);
    IIODictionary::~IIODictionary(v30);
    if (v35)
    {
      goto LABEL_63;
    }
  }

  if (this && !IIODictionary::containsKey(this, @"{Exif}"))
  {
    if (v35)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v7 = legacyToXMPArrayExif;
    v8 = 79;
    do
    {
      v9 = v8;
      (*(a3 + 16))(a3, v7, &v35);
      if (v35)
      {
        break;
      }

      v8 = v9 - 1;
      v7 += 5;
    }

    while (v9);
    if (v35)
    {
      goto LABEL_63;
    }

    if (!this)
    {
LABEL_13:
      v10 = legacyToXMPArrayExifAux;
      v11 = 9;
      do
      {
        v12 = v11;
        (*(a3 + 16))(a3, v10, &v35);
        if (v35)
        {
          break;
        }

        v11 = v12 - 1;
        v10 += 5;
      }

      while (v12);
      if (v35)
      {
        goto LABEL_63;
      }

      if (!this)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  if (IIODictionary::containsKey(this, @"{ExifAux}"))
  {
    goto LABEL_13;
  }

  if (v35)
  {
    goto LABEL_63;
  }

LABEL_20:
  if ((IIODictionary::containsKey(this, @"{GPS}") & 1) == 0)
  {
    if (v35)
    {
      goto LABEL_63;
    }

    goto LABEL_27;
  }

LABEL_21:
  v13 = legacyToXMPArrayGPS;
  v14 = 31;
  do
  {
    v15 = v14;
    (*(a3 + 16))(a3, v13, &v35);
    if (v35)
    {
      break;
    }

    v14 = v15 - 1;
    v13 += 5;
  }

  while (v15);
  if (v35)
  {
    goto LABEL_63;
  }

LABEL_27:
  if (a1 && (*(v32 + 25) & 2) == 0)
  {
    goto LABEL_35;
  }

  if (!this || IIODictionary::containsKey(this, @"{TIFF}"))
  {
    v16 = legacyToXMPArrayTIFF;
    v17 = 21;
    do
    {
      v18 = v17;
      (*(a3 + 16))(a3, v16, &v35);
      if (v35)
      {
        break;
      }

      v17 = v18 - 1;
      v16 += 5;
    }

    while (v18);
    if (v35)
    {
      goto LABEL_63;
    }

LABEL_35:
    if (!this)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  if (v35)
  {
    goto LABEL_63;
  }

LABEL_38:
  if ((IIODictionary::containsKey(this, @"{PNG}") & 1) == 0)
  {
    if (v35)
    {
      goto LABEL_63;
    }

    goto LABEL_45;
  }

LABEL_39:
  v19 = legacyToXMPArrayPNG;
  v20 = 5;
  do
  {
    v21 = v20;
    (*(a3 + 16))(a3, v19, &v35);
    if (v35)
    {
      break;
    }

    v20 = v21 - 1;
    v19 += 5;
  }

  while (v21);
  if (v35)
  {
    goto LABEL_63;
  }

LABEL_45:
  if (!a1 || (v22 = *(v32 + 6), (v22 & 0x5D0) != 0))
  {
    if (this && (IIODictionary::containsKey(this, @"{IPTC}") & 1) == 0)
    {
      if (v35)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v23 = legacyToXMPArrayIPTC;
      v24 = 212;
      do
      {
        v25 = v24;
        (*(a3 + 16))(a3, v23, &v35);
        if (v35)
        {
          break;
        }

        v24 = v25 - 1;
        v23 += 5;
      }

      while (v25);
      if (v35)
      {
        goto LABEL_63;
      }
    }

    if (!a1)
    {
      goto LABEL_58;
    }

    v22 = *(v32 + 6);
  }

  if ((v22 & 0x20) == 0)
  {
    goto LABEL_63;
  }

LABEL_58:
  if (!this || IIODictionary::containsKey(this, @"{DICOM}"))
  {
    v26 = legacyToXMPArrayDICOM;
    v27 = 5123;
    do
    {
      v28 = v27;
      (*(a3 + 16))(a3, v26, &v35);
      if (v35)
      {
        break;
      }

      v27 = v28 - 1;
      v26 += 5;
    }

    while (v28);
  }

LABEL_63:
  _Block_object_dispose(&v31, 8);
}

void sub_185E63614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void copyRenderingProperties(IIODictionary *a1, const void *a2)
{
  v10 = 0;
  v9 = 0.0;
  TopLevelTag = CGImageMetadataGetTopLevelTag(a2, @"http://ns.adobe.com/tiff/1.0/", @"Orientation");
  if (TopLevelTag && GetIntegerFromPropertyValue(TopLevelTag, &v10))
  {
    IIONumber::IIONumber(v8, v10);
    IIODictionary::setObjectForKeyGroup(a1, v8, @"Orientation", @"{TIFF}");
    IIONumber::~IIONumber(v8);
  }

  v5 = CGImageMetadataGetTopLevelTag(a2, @"http://ns.adobe.com/tiff/1.0/", @"XResolution");
  if (v5 && GetDoubleFromPropertyValue(v5, &v9))
  {
    IIONumber::IIONumber(v8, v9);
    IIODictionary::setObjectForKeyGroup(a1, v8, @"XResolution", @"{TIFF}");
    IIONumber::~IIONumber(v8);
  }

  v6 = CGImageMetadataGetTopLevelTag(a2, @"http://ns.adobe.com/tiff/1.0/", @"YResolution");
  if (v6 && GetDoubleFromPropertyValue(v6, &v9))
  {
    IIONumber::IIONumber(v8, v9);
    IIODictionary::setObjectForKeyGroup(a1, v8, @"YResolution", @"{TIFF}");
    IIONumber::~IIONumber(v8);
  }

  v7 = CGImageMetadataGetTopLevelTag(a2, @"http://ns.adobe.com/tiff/1.0/", @"ResolutionUnit");
  if (v7)
  {
    if (GetIntegerFromPropertyValue(v7, &v10))
    {
      IIONumber::IIONumber(v8, v10);
      IIODictionary::setObjectForKeyGroup(a1, v8, @"ResolutionUnit", @"{TIFF}");
      IIONumber::~IIONumber(v8);
    }
  }
}

void sub_185E63824(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void reconcileSubsecTimes(const void *a1)
{
  TopLevelTag = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/exif/1.0/", @"SubsecTimeOriginal");
  v3 = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/photoshop/1.0/", @"DateCreated");
  v4 = v3;
  if (v3)
  {
    v5 = TopLevelTag == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!v3)
    {
      goto LABEL_13;
    }

    Value = CGImageMetadataTagGetValue(v3);
    SubsecTimeFromXMPDateTime = CreateSubsecTimeFromXMPDateTime(Value);
    if (!SubsecTimeFromXMPDateTime)
    {
      goto LABEL_13;
    }

    v8 = SubsecTimeFromXMPDateTime;
    v9 = CGImageMetadataTagCreateFromImageProperty(@"{Exif}", @"SubsecTimeOriginal", SubsecTimeFromXMPDateTime);
    if (v9)
    {
      v10 = v9;
      CGImageMetadataAddTag(a1, v9);
      CFRelease(v10);
    }
  }

  else
  {
    v11 = CGImageMetadataTagGetValue(v3);
    v12 = CGImageMetadataTagGetValue(TopLevelTag);
    XMPDateFromXMPDateTimeAndSubsecTime = CreateXMPDateFromXMPDateTimeAndSubsecTime(v11, v12);
    if (!XMPDateFromXMPDateTimeAndSubsecTime)
    {
      goto LABEL_13;
    }

    v8 = XMPDateFromXMPDateTimeAndSubsecTime;
    CGImageMetadataTagSetValue(v4, XMPDateFromXMPDateTimeAndSubsecTime);
  }

  CFRelease(v8);
LABEL_13:
  v14 = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/exif/1.0/", @"SubsecTimeDigitized");
  v15 = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/xap/1.0/", @"CreateDate");
  v16 = v15;
  if (v15)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    v18 = CGImageMetadataTagGetValue(v15);
    v19 = CreateSubsecTimeFromXMPDateTime(v18);
    if (!v19)
    {
      goto LABEL_25;
    }

    v20 = v19;
    v21 = CGImageMetadataTagCreateFromImageProperty(@"{Exif}", @"SubsecTimeDigitized", v19);
    if (v21)
    {
      v22 = v21;
      CGImageMetadataAddTag(a1, v21);
      CFRelease(v22);
    }
  }

  else
  {
    v23 = CGImageMetadataTagGetValue(v15);
    v24 = CGImageMetadataTagGetValue(v14);
    v25 = CreateXMPDateFromXMPDateTimeAndSubsecTime(v23, v24);
    if (!v25)
    {
      goto LABEL_25;
    }

    v20 = v25;
    CGImageMetadataTagSetValue(v16, v25);
  }

  CFRelease(v20);
LABEL_25:
  v26 = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/exif/1.0/", @"SubsecTime");
  v27 = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/xap/1.0/", @"ModifyDate");
  v28 = v27;
  if (v27)
  {
    v29 = v26 == 0;
  }

  else
  {
    v29 = 1;
  }

  if (v29)
  {
    if (!v27)
    {
      return;
    }

    v30 = CGImageMetadataTagGetValue(v27);
    v31 = CreateSubsecTimeFromXMPDateTime(v30);
    if (!v31)
    {
      return;
    }

    v32 = v31;
    v33 = CGImageMetadataTagCreateFromImageProperty(@"{Exif}", @"SubsecTime", v31);
    if (v33)
    {
      v34 = v33;
      CGImageMetadataAddTag(a1, v33);
      CFRelease(v34);
    }
  }

  else
  {
    v35 = CGImageMetadataTagGetValue(v27);
    v36 = CGImageMetadataTagGetValue(v26);
    v37 = CreateXMPDateFromXMPDateTimeAndSubsecTime(v35, v36);
    if (!v37)
    {
      return;
    }

    v32 = v37;
    CGImageMetadataTagSetValue(v28, v37);
  }

  CFRelease(v32);
}

void IIOImageSource::setImageMedadataAtIndex(CFArrayRef *this, const CGImageMetadata *a2, CFIndex a3)
{
  Count = CFArrayGetCount(this[22]);
  v7 = *MEMORY[0x1E695E738];
  if (!a2)
  {
    a2 = *MEMORY[0x1E695E738];
  }

  if (a3 >= Count)
  {
    if (this[3] <= a3)
    {
      _cg_jpeg_mem_term("setImageMedadataAtIndex", 4088, "setImageMedadataAtIndex index (%d) larger than arrayCount (%d) and image count (%d)\n", a3, Count, this[3]);
      return;
    }

    while (CFArrayGetCount(this[22]) <= a3)
    {
      CFArrayAppendValue(this[22], v7);
    }
  }

  v8 = this[22];

  CFArraySetValueAtIndex(v8, a3, a2);
}

void IIOImageSource::setImagePropertiesAtIndex(IIOImageSource *this, IIODictionary *a2, unint64_t a3)
{
  v5 = *(this + 18);
  v7 = *(this + 19);
  v6 = this + 144;
  v8 = (v7 - v5) >> 3;
  if (a3 < v8)
  {
    if (v8 > a3)
    {
LABEL_19:
      *(v5 + 8 * a3) = a2;
      return;
    }

    __break(1u);
  }

  v9 = *(this + 3);
  if (v9 > a3)
  {
    for (; v8 <= a3; v8 = (v7 - v5) >> 3)
    {
      v11 = *(this + 20);
      if (v7 >= v11)
      {
        if ((v8 + 1) >> 61)
        {
          std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
        }

        v12 = v11 - v5;
        v13 = v12 >> 2;
        if (v12 >> 2 <= v8 + 1)
        {
          v13 = v8 + 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(v6, v14);
        }

        *(8 * v8) = 0;
        v7 = (8 * v8 + 8);
        v15 = *(this + 18);
        v16 = *(this + 19) - v15;
        v17 = (8 * v8 - v16);
        memcpy(v17, v15, v16);
        v18 = *(this + 18);
        *(this + 18) = v17;
        *(this + 19) = v7;
        *(this + 20) = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v7++ = 0;
      }

      *(this + 19) = v7;
      v5 = *(this + 18);
    }

    goto LABEL_19;
  }

  _cg_jpeg_mem_term("setImagePropertiesAtIndex", 4127, "setImagePropertiesAtIndex index (%d) larger than vectorCount (%d) and image count (%d\n", a3, (v7 - v5) >> 3, v9);
}

void IIOString::IIOString(IIOString *this, int a2)
{
  v2 = a2;
  *this = &unk_1EF4D41F0;
  *(this + 1) = 0;
  v17 = 0;
  *__str = 0;
  v4 = a2 >> 24;
  v5 = MEMORY[0x1E69E9830];
  if ((a2 >> 24) <= 0x7F)
  {
    v6 = *(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x40000;
  }

  else
  {
    v6 = __maskrune(a2 >> 24, 0x40000uLL);
  }

  v7 = (v2 << 8) >> 24;
  if (v7 <= 0x7F)
  {
    v8 = *(v5 + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune((v2 << 8) >> 24, 0x40000uLL);
  }

  v9 = v2 >> 8;
  if (v9 <= 0x7F)
  {
    v10 = *(v5 + 4 * v9 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v2 >> 8, 0x40000uLL);
  }

  v2 = v2;
  if (v2 <= 0x7F)
  {
    v11 = *(v5 + 4 * v2 + 60) & 0x40000;
  }

  else
  {
    v11 = __maskrune(v2, 0x40000uLL);
  }

  if (v10)
  {
    v12 = v9;
  }

  else
  {
    v12 = 46;
  }

  if (v8)
  {
    v13 = v7;
  }

  else
  {
    v13 = 46;
  }

  if (v6)
  {
    v14 = v4;
  }

  else
  {
    v14 = 46;
  }

  if (v11)
  {
    v15 = v2;
  }

  else
  {
    v15 = 46;
  }

  snprintf(__str, 5uLL, "%c%c%c%c", v14, v13, v12, v15);
  *(this + 2) = CFStringCreateWithCString(*MEMORY[0x1E695E480], __str, 0x8000100u);
}

void ASTCTwiddler::ASTCTwiddler(ASTCTwiddler *this, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  *this = &unk_1EF4DB0C0;
  *(this + 1) = 0;
  v11 = MTLCreateSystemDefaultDevice();
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:a2 width:a3 height:a4 mipmapped:a5 > 1];
    [v13 setMipmapLevelCount:a5];
    v14 = [v11 newTextureLayoutWithDescriptor:v13 isHeapOrBufferBacked:0];
    objc_autoreleasePoolPop(v12);
    v17 = 0;
    if (!a6)
    {
      goto LABEL_6;
    }

    v15 = [v14 size];
    v16 = [v14 alignment];
    if (v16)
    {
      v15 = (v16 + v15 - 1) / v16 * v16;
    }

    if (_ImageIO_Malloc(v15, v16, &v17, kImageMalloc_ASTC_Data[0], 0, 0))
    {
LABEL_6:
      operator new();
    }
  }
}

void sub_185E64100(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IIOReadPlugin::postInitHandleDecodeToSDR(CGColorSpaceRef *this)
{
  if (((*(*this + 3))(this) & 1) == 0 && *(this + 382) == 1)
  {
    v2 = CGColorSpaceUsesITUR_2100TF(this[20]);
    v3 = CGColorSpaceUsesExtendedRange(this[20]);
    if (v2)
    {
LABEL_4:
      this[21] = this[20];
      this[20] = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
      *(this + 46) = 1065353216;
      return 0;
    }

    if (v3 && *(this + 55) != 1163416096)
    {
      if (*(this + 128) == 32)
      {
        *(this + 144) = 16;
        v5 = *(this + 130);
        *(this + 145) = 16 * v5;
        *(this + 295) = 1;
        if (!*(this + 262))
        {
          *(this + 294) = 5;
          *(this + 146) = v5 + 1;
        }
      }

      goto LABEL_4;
    }
  }

  return 0;
}

void *IIOReadPlugin::createInfoPtr(IIOReadPlugin *this)
{
  v2 = malloc_type_calloc(0x10uLL, 1uLL, 0x20040A4A59CD2uLL);
  v2[1] = this;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  *v2 = Mutable;
  *(this + 19) = Mutable;
  v4 = *(this + 3);
  if (v4 && IIOImageSource::cf(v4))
  {
    v5 = *(this + 19);
    v6 = IIOImageSource::cf(*(this + 3));
    CFDictionarySetValue(v5, @"kImageIOInfoHeader_session", v6);
    CFDictionarySetValue(*(this + 19), @"kImageIOInfoHeader_pluginHandlesReMapping", *MEMORY[0x1E695E4D0]);
  }

  return v2;
}

uint64_t IIOImageProviderInfo::IIOImageProviderInfo(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *a1 = &unk_1EF4D5368;
  *(a1 + 32) = *(a2 + 40);
  v15 = *(a2 + 56);
  v16 = *(a2 + 72);
  v17 = *(a2 + 104);
  *(a1 + 80) = *(a2 + 88);
  *(a1 + 96) = v17;
  *(a1 + 48) = v15;
  *(a1 + 64) = v16;
  *(a1 + 24) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = *(a2 + 168);
  *(a1 + 136) = *(a2 + 184);
  pthread_mutex_init((a1 + 152), 0);
  *(a1 + 144) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (IIORestrictedDecodingEnabledFlag())
  {
    v18 = 0;
  }

  else
  {
    v18 = a6;
  }

  if (a4 > 1)
  {
    if (a4 == 2)
    {
      *(a1 + 216) = 2;
      *(a1 + 224) = a5;
      *(a1 + 232) = v18;
      *(a1 + 240) = a9;
      return a1;
    }

    if (a4 == 3)
    {
      *(a1 + 216) = 3;
      *(a1 + 224) = a5;
      *(a1 + 232) = v18;
      *(a1 + 240) = a7;
      *(a1 + 248) = a8;
      *(a1 + 256) = a9;
      return a1;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      *(a1 + 216) = 1;
      *(a1 + 224) = a5;
      *(a1 + 232) = a9;
      return a1;
    }

LABEL_11:
    _cg_jpeg_mem_term("IIOImageProviderInfo", 1743, "*** unknown version number - %d [%p]\n", a4, a4);
    CFShow(@"unknown image provider version number");
  }

  return a1;
}

const __CFDictionary *IIODictionary::getObjectForKeyGroup(IIODictionary *this, const __CFString *a2, const __CFString *a3)
{
  result = IIODictionary::getGroupForKey(this, a3, 0);
  if (result)
  {

    return CFDictionaryGetValue(result, a2);
  }

  return result;
}

const __CFDictionary *IIODictionary::containsKeyGroup(IIODictionary *this, const __CFString *a2, const __CFString *a3)
{
  result = IIODictionary::getGroupForKey(this, a3, 0);
  if (result)
  {
    return (CFDictionaryGetValue(result, a2) != 0);
  }

  return result;
}

float IIO_Reader::updateImageHeadroom(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2 || (CGImageGetContentHeadroom(), v6 = v5, v5 <= 0.0))
  {
    v6 = 0.0;
    if (a4)
    {
      CGColorSpaceGetHeadroomInfo();
      if (v7 > 0.0)
      {
        return v7;
      }
    }
  }

  return v6;
}

uint64_t CGImageReadSessionGetFilePath(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0 && (v2 = *(v1 + 32)) != 0)
  {
    return IIOImageWriteSession::getSize(v2);
  }

  else
  {
    return 0;
  }
}

void IIOReadPlugin::addImageTypeIdentifier(IIOReadPlugin *this, CGImage *a2, const __CFString *a3, int a4)
{
  CGImageSetProperty();
  IIONumber::IIONumber(v6, a4);
  CGImageSetProperty();
  IIONumber::~IIONumber(v6);
  IIOString::IIOString(v6, *(this + 55));
  CGImageSetProperty();
  IIOString::~IIOString(v6);
}

void sub_185E64654(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void IIODictionary::removeObjectForKeyGroup(IIODictionary *this, const __CFString *a2, const __CFString *a3)
{
  GroupForKey = IIODictionary::getGroupForKey(this, a3, 0);
  if (a2 && GroupForKey)
  {

    CFDictionaryRemoveValue(GroupForKey, a2);
  }
}

uint64_t ASTCTextureImp::setTextureDimension(uint64_t this, int a2, int a3)
{
  *(this + 100) = a2;
  *(this + 104) = a3;
  return this;
}

uint64_t ATXReadPlugin::readHeader(ATXReadPlugin *this, IIOScanner *a2, int a3)
{
  if (a3 != 84)
  {
    return 4294967246;
  }

  v5 = (this + 512);
  if (IIOScanner::copyBytes(a2, this + 512, 0x54uLL) != 84)
  {
    ATXReadPlugin::readHeader();
    return 4294967246;
  }

  if (*v5 != 1)
  {
    _cg_jpeg_mem_term("readHeader", 87, "*** ERROR: unsupported ATX version [%d]\n");
    return 4294967246;
  }

  v6 = *(this + 136);
  if (v6 - 33 <= 0xFFFFFFDF)
  {
    _cg_jpeg_mem_term("readHeader", 88, "*** ERROR: unsupported ATX pixelDepth [%d]\n");
    return 4294967246;
  }

  if (*(this + 142) > 8u)
  {
    _cg_jpeg_mem_term("readHeader", 89, "*** ERROR: unsupported ATX orientation [%d]\n");
    return 4294967246;
  }

  v7.i64[0] = 0x5555555555555555;
  v7.i64[1] = 0x5555555555555555;
  v8 = vandq_s8(vceqq_s8(*(this + 572), v7), xmmword_18620A4A0);
  v9 = vzip1q_s8(v8, vextq_s8(v8, v8, 8uLL));
  v9.i16[0] = vaddvq_s16(v9);
  v10 = vcnt_s8(*v9.i8);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.i32[0] >= 4u && v10.i32[0] != 16)
  {
    _cg_jpeg_mem_term("readHeader", 97, "*** ERROR: invalid watermark [%d]\n");
    return 4294967246;
  }

  if (*(this + 148) >= 7u)
  {
    _cg_jpeg_mem_term("readHeader", 99, "*** ERROR: unsupported alpha [%d]\n");
    return 4294967246;
  }

  if (*(this + 135) > v6)
  {
    v6 = *(this + 135);
  }

  if (*(this + 134) > v6)
  {
    v6 = *(this + 134);
  }

  v12 = 32 - __clz(v6);
  if (v6)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (*(this + 139) - 1 >= v13)
  {
    _cg_jpeg_mem_term("readHeader", 103, "*** ERROR: bad mipmapLevel:  1 <= %d <= %d\n");
    return 4294967246;
  }

  if (*(a2 + 2) <= *(this + 138))
  {
    _cg_jpeg_mem_term("readHeader", 105, "*** ERROR: bad faceCount: %d\n");
    return 4294967246;
  }

  return 0;
}

void IIO_CheckHeadroom(const char *a1, __darwin_ct_rune_t a2, CGImage *a3, IIODictionary *a4)
{
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    CGImageGetContentHeadroom();
    v8 = v7;
    ColorSpace = CGImageGetColorSpace(a3);
    CGColorSpaceGetHeadroomInfo();
    v11 = v10;
    v39 = CGColorSpaceUsesITUR_2100TF(ColorSpace);
    v38 = CGColorSpaceUsesExtendedRange(ColorSpace);
    v37 = CGColorSpaceContainsFlexGTCInfo();
    if (a4 && IIODictionary::containsKey(a4, @"kCGImageSourceDecodeRequest"))
    {
      ObjectForKey = IIODictionary::getObjectForKey(a4, @"kCGImageSourceDecodeRequest");
      v13 = CFStringCompare(ObjectForKey, @"kCGImageSourceDecodeToSDR", 0);
      v14 = CFStringCompare(ObjectForKey, @"kCGImageSourceDecodeToHDR", 0);
      if (v13)
      {
        v15 = v14 == kCFCompareEqualTo;
      }

      else
      {
        v15 = 0;
      }

      v36 = v15;
      if (v14)
      {
        v16 = 1;
      }

      else
      {
        v16 = v13 == kCFCompareEqualTo;
      }
    }

    else
    {
      v36 = 0;
      v16 = 1;
    }

    v35 = v16;
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(a3);
    v18 = a2 >> 24;
    v19 = MEMORY[0x1E69E9830];
    if ((a2 >> 24) <= 0x7F)
    {
      v20 = *(MEMORY[0x1E69E9830] + 4 * v18 + 60) & 0x40000;
    }

    else
    {
      v20 = __maskrune(a2 >> 24, 0x40000uLL);
    }

    v21 = a2 << 8 >> 24;
    if (v21 <= 0x7F)
    {
      v22 = *(v19 + 4 * v21 + 60) & 0x40000;
    }

    else
    {
      v22 = __maskrune(a2 << 8 >> 24, 0x40000uLL);
    }

    v23 = a2 >> 8;
    if (v23 <= 0x7F)
    {
      v24 = *(v19 + 4 * v23 + 60) & 0x40000;
    }

    else
    {
      v24 = __maskrune(a2 >> 8, 0x40000uLL);
    }

    a2 = a2;
    if (a2 <= 0x7F)
    {
      v25 = *(v19 + 4 * a2 + 60) & 0x40000;
    }

    else
    {
      v25 = __maskrune(a2, 0x40000uLL);
    }

    v26 = CGImageGetColorSpace(a3);
    Name = CGColorSpaceGetName(v26);
    v28 = IIOString::IIOString(v41, Name);
    v29 = IIOString::utf8String(v28);
    if (v25)
    {
      v30 = a2;
    }

    else
    {
      v30 = 46;
    }

    if (v24)
    {
      v31 = v23;
    }

    else
    {
      v31 = 46;
    }

    if (v22)
    {
      v32 = v21;
    }

    else
    {
      v32 = 46;
    }

    if (v20)
    {
      v33 = v18;
    }

    else
    {
      v33 = 46;
    }

    ImageIOLog("✳️  %s '%c%c%c%c' [%ldx%ld]: imgHeadroom: %g   csHeadroom: %g   hasFlexGTC: %d   isHDR: %d   isEDR: %d   decodeToSDR: %d   decodeToHDR: %d   cs: %s\n", a1, v33, v32, v31, v30, Width, Height, v8, v11, v37, v39, v38, v35, v36, v29);
    IIOString::~IIOString(v41);
  }
}

uint64_t IIOReadPlugin::setUTIWithReader(IIOReadPlugin *this, IIO_Reader *a2)
{
  *(this + 9) = IIOImageSource::cf(a2);
  result = IIO_Reader::osType(a2);
  *(this + 55) = result;
  return result;
}

uint64_t ATXReadPlugin::initialize(ATXReadPlugin *this, IIODictionary *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = *(this + 62);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  IIOScanner::IIOScanner(&v44, *(this + 3));
  if (*(this + 369) == 1)
  {
    v5 = *(&v44 + 1);
    v6 = *(*(&v44 + 1) + 4) == 169478669;
    *(this + 372) = v6;
    v37 = 0;
    v38 = &v37;
    v39 = 0x7002000000;
    v40 = __Block_byref_object_copy__0;
    memset(v42, 0, sizeof(v42));
    v41 = __Block_byref_object_dispose__0;
    v43 = 0;
    IIOScanner::IIOScanner(v42, v5, v45, v6);
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x2000000000;
    v36 = 0;
    *(this + 75) = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = ___ZN13ATXReadPlugin10initializeEP13IIODictionary_block_invoke;
    v34[3] = &unk_1E6F09058;
    v34[4] = v35;
    v34[5] = &v37;
    v34[6] = this;
    v34[7] = v4;
    *v49 = v34;
    v7 = IterateChunks((v38 + 5), v49);
    if (v7)
    {
      kdebug_trace();
      goto LABEL_67;
    }

    v8 = *(this + 132);
    v9 = *(this + 76);
    if (v8 == 1714434612)
    {
      if (v9 <= 0x18)
      {
        IIOImageReadSession::getSize(*(this + 3));
        LogError("initialize", 354, "*** bad ATX file '420f' [%d bytes]\n");
        goto LABEL_67;
      }

      v10 = *(this + 79);
      if (v10 <= 0x18)
      {
        IIOImageReadSession::getSize(*(this + 3));
        LogError("initialize", 355, "*** bad ATX file '420f' [%d bytes]\n");
        goto LABEL_67;
      }

      v11 = *(this + 154);
      v12 = *(this + 134);
      if (v11 < v12)
      {
        LogError("initialize", 357, "*** bad ATX '420f' Y plane (%d vs %d)\n");
        goto LABEL_67;
      }

      v13 = *(this + 155);
      v14 = *(this + 135);
      if (v13 < v14)
      {
        LogError("initialize", 358, "*** bad ATX '420f' Y plane (%d vs %d)\n");
        goto LABEL_67;
      }

      v15 = *(this + 156);
      if (v15 < v11)
      {
        LogError("initialize", 359, "*** bad ATX '420f' Y-rowBytes too small (%d < %d)\n");
        goto LABEL_67;
      }

      if (v15 > v11 + 32)
      {
        LogError("initialize", 360, "*** bad ATX '420f' Y-rowBytes too big (%d < %d)\n");
        goto LABEL_67;
      }

      v16 = *(this + 160);
      if (v16 < v12 >> 1)
      {
        v32 = 362;
      }

      else
      {
        v17 = *(this + 161);
        if (v17 >= v14 >> 1)
        {
          v18 = *(this + 162);
          if (v18 < v16)
          {
            LogError("initialize", 364, "*** bad ATX '420f' CbCr-rowBytes too small (%d < %d)\n");
          }

          else if (v18 > v16 + 32)
          {
            LogError("initialize", 365, "*** bad ATX '420f' CbCr-rowBytes too big (%d < %d)\n");
          }

          else if (v11 > 0x4E20)
          {
            LogError("initialize", 367, "*** bad ATX '420f' width: %d\n");
          }

          else if (v13 >= 0x4E21)
          {
            LogError("initialize", 368, "*** bad ATX '420f' height: %d\n");
          }

          else if (v11 > 2 * v16 + 32)
          {
            LogError("initialize", 369, "*** bad ATX '420f' width:   Y: %d CbCr:%d\n");
          }

          else if (v13 > 2 * v17 + 32)
          {
            LogError("initialize", 370, "*** bad ATX '420f' height:   Y: %d CbCr:%d\n");
          }

          else
          {
            if (*(this + 656))
            {
LABEL_25:
              *(this + 204) = 12;
LABEL_50:
              *(this + 61) = v12;
              *(this + 62) = v14;
              *(this + 128) = 8;
              *(this + 63) = 4 * v12;
              *(this + 258) = 262176;
              v28 = *(this + 147);
              if (v28 <= 1)
              {
                if (v28)
                {
                  if (v28 == 1)
                  {
                    *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
                    if ((gIIODebugFlags & 0x30000) != 0)
                    {
                      ImageIOLog("     colorspace: kCGColorSpaceSRGB\n");
                    }
                  }
                }

                else
                {
                  *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
                  if ((gIIODebugFlags & 0x30000) != 0)
                  {
                    ImageIOLog("     colorspace: kCGColorSpaceSRGB (gray)\n");
                  }
                }
              }

              else
              {
                switch(v28)
                {
                  case 2:
                    *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0A0]);
                    if ((gIIODebugFlags & 0x30000) != 0)
                    {
                      ImageIOLog("     colorspace: kCGColorSpaceAdobeRGB1998\n");
                    }

                    break;
                  case 3:
                    *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
                    if ((gIIODebugFlags & 0x30000) != 0)
                    {
                      ImageIOLog("     colorspace: kCGColorSpaceDisplayP3\n");
                    }

                    break;
                  case 4:
                    *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0B8]);
                    if ((gIIODebugFlags & 0x30000) != 0)
                    {
                      ImageIOLog("     colorspace: kCGColorSpaceDisplayP3  (fallback for 8bpc from kKTX_ExtendedRGB)\n");
                    }

                    break;
                }
              }

              *(this + 85) = 1380401696;
              v29 = *(this + 148) & 0x1F;
              *(this + 148) = v29;
              *(this + 262) = v29;
              *(this + 294) = v29;
              *(this + 374) = 0;
              *(this + 63) = 4 * *(this + 61);
              *(this + 378) = 1;
              goto LABEL_67;
            }

            if (v9 + v13 * v11 >= v10)
            {
              v33 = 380;
            }

            else
            {
              v19 = v16 * v17;
              if ((v19 & 0xFFFFFFFF00000000) != 0)
              {
                v33 = 383;
              }

              else
              {
                if (v10 + v19 < v45)
                {
                  goto LABEL_25;
                }

                v33 = 384;
              }
            }

            LogError("initialize", v33, "*** bad ATX '420f'\n");
          }

LABEL_67:
          _Block_object_dispose(v35, 8);
          _Block_object_dispose(&v37, 8);
          IIOScanner::~IIOScanner(v42);
          goto LABEL_68;
        }

        v32 = 363;
      }

      LogError("initialize", v32, "*** bad ATX '420f' CbCr plane (%d vs %d)\n");
      goto LABEL_67;
    }

    if (v9)
    {
      v31 = 390;
    }

    else
    {
      if (!*(this + 79))
      {
        if (!*(this + 75))
        {
          IIOImageReadSession::getSize(*(this + 3));
          LogError("initialize", 393, "*** bad ATX file [%d bytes]\n");
          goto LABEL_67;
        }

        *(this + 119) = ASTCTextureImp::MetalFormatForGLFormat(v8);
        v20 = *(this + 132);
        v21 = 4;
        if (v20 > 37839)
        {
          if (v20 == 37840)
          {
            goto LABEL_37;
          }

          v22 = 37847;
        }

        else
        {
          if (v20 == 37808)
          {
            goto LABEL_37;
          }

          v22 = 37815;
        }

        if (v20 != v22)
        {
          goto LABEL_67;
        }

        v21 = 8;
LABEL_37:
        *(this + 596) = v21;
        *(this + 597) = v21;
        *(this + 598) = 1;
        v23 = *(this + 134);
        *(this + 116) = v23;
        v24 = *(this + 135);
        *(this + 117) = v24;
        ASTCTextureImp::setTextureDimension(v4, v23, v24);
        ASTCTextureImp::setMetalFormat(v4, *(this + 119));
        if (ASTCTextureImp::isInputPreTwiddled(v4))
        {
          v25 = *(this + 597) | (16 * *(this + 596));
          if (v25 == 136)
          {
            v26 = 37815;
          }

          else
          {
            v26 = 0;
          }

          if (v25 == 68)
          {
            v27 = 37808;
          }

          else
          {
            v27 = v26;
          }

          ASTCTextureImp::MetalFormatForGLFormat(v27);
          operator new();
        }

        *(this + 120) = (*(this + 116) + *(this + 596) - 1) / *(this + 596);
        *(this + 121) = (*(this + 117) + *(this + 597) - 1) / *(this + 597);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    %s:\n", "initialize");
          if ((gIIODebugFlags & 0x30000) != 0)
          {
            ImageIOLog("    textureSize: %d x %d\n", *(this + 116), *(this + 117));
            if ((gIIODebugFlags & 0x30000) != 0)
            {
              ImageIOLog("         blocks: %d x %d\n", *(this + 120), *(this + 121));
            }
          }
        }

        ASTCTextureImp::setDim(v4, *(this + 596), *(this + 597));
        ASTCTextureImp::setBlocks(v4, *(this + 120), *(this + 121));
        *(this + 204) = 13;
        v12 = *(this + 134);
        v14 = *(this + 135);
        goto LABEL_50;
      }

      v31 = 391;
    }

    LogError("initialize", v31, "*** bad ATX file \n");
    goto LABEL_67;
  }

  v7 = 4294967246;
LABEL_68:
  IIOScanner::~IIOScanner(&v44);
  return v7;
}

void sub_185E65550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  IIOScanner::~IIOScanner((v27 + 40));
  IIOScanner::~IIOScanner((v28 - 160));
  _Unwind_Resume(a1);
}

uint64_t ASTCTwiddler::getWatermark(ASTCTwiddler *this, unsigned __int8 *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  result = *(v2 + 56);
  if (result)
  {
    *a2 = [result watermark];
    *(a2 + 1) = v5;
    return 1;
  }

  return result;
}

void ASTCTwiddler::~ASTCTwiddler(ASTCTwiddler *this)
{
  v2 = *(this + 1);
  *this = &unk_1EF4DB0C0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x186602850);
}

{
  v2 = *(this + 1);
  *this = &unk_1EF4DB0C0;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

float ASTCTextureImp::setDim(ASTCTextureImp *this, int a2, int a3)
{
  *(this + 7) = a2;
  *(this + 8) = a3;
  result = 128.0 / (a3 * a2);
  *(this + 9) = result;
  return result;
}

uint64_t IIOReadPlugin::postInitialize(CGColorSpaceRef *this, const __CFDictionary **a2)
{
  if (*(this + 61) && *(this + 62))
  {
    IIOReadPlugin::postInitHandleDecodeToSDR(this);
    InfoPtr = IIOReadPlugin::createInfoPtr(this);
    if (IIODictionary::getCount(a2))
    {
      memset(v19, 0, sizeof(v19));
      IIODictionary::IIODictionary(v19, *InfoPtr);
      IIODictionary::appendDictionary(v19, a2);
      IIODictionary::~IIODictionary(v19);
    }

    InfoPtr[1] = this;
    (*(*this + 8))(this, InfoPtr);
    return 0;
  }

  else
  {
    v6 = *(this + 55);
    v7 = v6 >> 24;
    v8 = MEMORY[0x1E69E9830];
    if ((v6 >> 24) <= 0x7F)
    {
      v9 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
    }

    else
    {
      v9 = __maskrune(v6 >> 24, 0x40000uLL);
    }

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 46;
    }

    v11 = v6 << 8 >> 24;
    if (v11 <= 0x7F)
    {
      v12 = *(v8 + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v6 << 8 >> 24, 0x40000uLL);
    }

    if (v12)
    {
      v13 = v11;
    }

    else
    {
      v13 = 46;
    }

    v14 = v6 >> 8;
    if (v14 <= 0x7F)
    {
      v15 = *(v8 + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v6 >> 8, 0x40000uLL);
    }

    if (v15)
    {
      v16 = v14;
    }

    else
    {
      v16 = 46;
    }

    if (v6 <= 0x7F)
    {
      v17 = *(v8 + 4 * v6 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v6, 0x40000uLL);
    }

    if (v17)
    {
      v18 = v6;
    }

    else
    {
      v18 = 46;
    }

    _cg_jpeg_mem_term("postInitialize", 483, "*** '%c%c%c%c' initialize returned bad _inputGeo (%d x %d)\n", v10, v13, v16, v18, *(this + 61), *(this + 62));
    if (IIOImageReadSession::isFinal(this[3]))
    {
      return 4294967184;
    }

    else
    {
      return 4294967246;
    }
  }
}

void sub_185E658F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

const __CFDictionary *IIODictionary::getCount(IIODictionary *this)
{
  result = *(this + 1);
  if (result)
  {
    return CFDictionaryGetCount(result);
  }

  return result;
}

uint64_t IIOReadPlugin::updateColorSpace(uint64_t a1, CFDictionaryRef *a2)
{
  if (*(a1 + 381) == 1)
  {
    if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  _colorSpaceIsFlexGTCProxy - now creating a FlexGTC colorspace... (didCalculateFlexGTC: %d)\n", *(a1 + 379));
    }

    memset(value, 0, sizeof(value));
    IIODictionary::IIODictionary(value);
    IIODictionary::setObjectForKey(value, *(a1 + 160), @"kCGFlexRangeAlternateColorSpace");
    if (IIODictionary::containsKeyGroup(*(a1 + 48), @"kCGTargetHeadroom", @"kCGImageSourceDecodeRequestOptions"))
    {
      FloatForKeyGroup = IIODictionary::getFloatForKeyGroup(*(a1 + 48), @"kCGTargetHeadroom", @"kCGImageSourceDecodeRequestOptions");
      IIONumber::IIONumber(v17, FloatForKeyGroup);
      IIODictionary::setObjectForKey(value, v18, @"kCGTargetHeadroom");
      IIONumber::~IIONumber(v17);
    }

    if (IIODictionary::containsKeyGroup(*(a1 + 48), @"kCGDisableMetal", @"kCGImageSourceDecodeRequestOptions"))
    {
      BoolForKeyGroup = IIODictionary::getBoolForKeyGroup(*(a1 + 48), @"kCGDisableMetal", @"kCGImageSourceDecodeRequestOptions");
      IIONumber::IIONumber(v17, BoolForKeyGroup);
      IIODictionary::setObjectForKey(value, v18, @"kCGDisableMetal");
      IIONumber::~IIONumber(v17);
    }

    cf = 0;
    v6 = (a1 + 176);
    if (*(a1 + 176))
    {
      v7 = 0;
    }

    else
    {
      v7 = a1 + 176;
    }

    if (*(a1 + 192))
    {
      p_cf = &cf;
    }

    else
    {
      p_cf = 0;
    }

    if ((*(*a1 + 176))(a1, value, v7, p_cf) || (v11 = *v6) == 0)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        Name = CGColorSpaceGetName(*(a1 + 160));
        IIOString::IIOString(v17, Name);
        v10 = IIOString::utf8String(v17);
        ImageIOLog("☀️  ERROR: failed to create FlexGTCInfo - setting colorSpace to '%s' [%p]\n", v10, *(a1 + 160));
        IIOString::~IIOString(v17);
      }
    }

    else
    {
      *(a1 + 379) = 1;
      CopyWithFlexGTCInfo = IIO_ColorSpaceCreateCopyWithFlexGTCInfo(*(a1 + 160), v11);
      if (CopyWithFlexGTCInfo)
      {
        CGColorSpaceRelease(*(a1 + 160));
        *(a1 + 160) = CopyWithFlexGTCInfo;
      }

      CGColorSpaceGetHeadroomInfo();
      *(a1 + 348) = v13;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  updateColorSpace: - FlexGTC colorspace - headroom: %g\n", v13);
      }

      v17[0] = 0;
      v17[1] = 0;
      v18 = 0;
      IIODictionary::IIODictionary(v17, cf);
      if (IIODictionary::containsKey(v17, @"kCGContentBrightness"))
      {
        FloatForKey = IIODictionary::getFloatForKey(v17, @"kCGContentBrightness");
        if ((gIIODebugFlags & 0x300000) != 0)
        {
          ImageIOLog("☀️  updateColorSpace: - old caLL: %g   new: %g\n", *(a1 + 352), FloatForKey);
        }

        *(a1 + 352) = FloatForKey;
      }

      IIODictionary::~IIODictionary(v17);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    IIODictionary::~IIODictionary(value);
  }

  if (!*(a1 + 160))
  {
    value[0] = 0;
    if (a2)
    {
      CFDictionaryGetValueIfPresent(*a2, @"TEMP_COLORSPACE", value);
      if (value[0])
      {
        *(a1 + 160) = CGColorSpaceCreateWithPropertyList(value[0]);
      }
    }
  }

  return 0;
}

void sub_185E65C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

const void *IIOImagePlus::createSourceImageProvider(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = *a4;
  if (*(*a4 + 216) >= 4u)
  {
    _cg_jpeg_mem_term("createSourceImageProvider", 979, "*** unknown callbackVersion - %d\n", *(v7 + 216));
  }

  if ((gIIODebugFlags & 0x20000) != 0)
  {
    ImageIOLog("♦️  CGImageProviderCreate: %dx%d  compType: %d\n", *(a1 + 40), *(a1 + 48), a2);
  }

  v8 = CGImageProviderCreate();
  if (!v8)
  {
    _cg_jpeg_mem_term("createSourceImageProvider", 994, "*** CGImageProviderCreate returned NULL\n");
    goto LABEL_21;
  }

  v9 = CGImageMetadataCopyTagWithPath(*(a1 + 128), 0, @"tiff:TileWidth");
  v10 = v9;
  if (v9)
  {
    v11 = CGImageMetadataTagCopyValue(v9);
    if (v11)
    {
      v12 = IIONumber::IIONumber(__str, v11);
      v13 = IIONumber::uint64Num(v12);
      IIONumber::~IIONumber(__str);
      CFRelease(v11);
      CFRelease(v10);
      if (v13)
      {
LABEL_13:
        IIONumber::IIONumber(__str, v13);
        CGImageProviderSetProperty();
        IIONumber::~IIONumber(__str);
        goto LABEL_14;
      }
    }

    else
    {
      CFRelease(v10);
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_14:
  v14 = CGImageMetadataCopyTagWithPath(*(a1 + 128), 0, @"tiff:TileLength");
  v15 = v14;
  if (v14)
  {
    v16 = CGImageMetadataTagCopyValue(v14);
    if (v16)
    {
      v17 = IIONumber::IIONumber(__str, v16);
      v13 = IIONumber::uint64Num(v17);
      IIONumber::~IIONumber(__str);
      CFRelease(v16);
    }

    CFRelease(v15);
  }

  if (v13 || (v13 = *(a1 + 48)) != 0)
  {
    IIONumber::IIONumber(__str, v13);
    CGImageProviderSetProperty();
    IIONumber::~IIONumber(__str);
  }

LABEL_21:
  v18 = *(a1 + 16);
  Source = CGImageSourceGetSource(~v18);
  if (Source && IIOImageSource::isRAWFile(Source))
  {
    CGImageProviderSetProperty();
    IIONumber::IIONumber(__str, 64);
    CGImageProviderSetProperty();
    IIONumber::~IIONumber(__str);
  }

  if ((gIIODebugFlags & 0xC000) != 0)
  {
    *__str = 0u;
    v22 = 0u;
    snprintf(__str, 0x20uLL, "(%p)", v8);
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageProviderCreate", ~v18, __str, -1, 0);
    }
  }

  atomic_fetch_add_explicit(&gImageProviderCount, 1uLL, memory_order_relaxed);
  *(v7 + 16) = v8;
  *(a1 + 248) = a4;
  *(a1 + 152) = v8;
  if (*(a1 + 188) == 1)
  {
    v8 = CGImageProviderCreate();
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageProviderCreate", v8, 0, -1, 0);
    }

    *(a1 + 160) = v8;
  }

  return v8;
}

uint64_t IIOImageSource::isRAWFile(IIOImageSource *this)
{
  result = *(this + 13);
  if (result)
  {
    return (*(*result + 152))();
  }

  return result;
}

void CopyTiffPropertiesToRoot(IIODictionary *this, CGImageMetadata *a2)
{
  if (this && a2)
  {
    if (!IIODictionary::getBoolForKey(this, @"needsPostProcessing"))
    {
      goto LABEL_33;
    }

    IIODictionary::removeObjectForKey(this, @"needsPostProcessing");
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(this, @"DateCreated", @"{IPTC}");
    v5 = IIODictionary::getObjectForKeyGroup(this, @"TimeCreated", @"{IPTC}");
    if (ObjectForKeyGroup)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v14 = IIODictionary::getObjectForKeyGroup(this, @"DateTimeOriginal", @"{Exif}");
      IPTCTimeFromExifDateTime = CreateIPTCTimeFromExifDateTime(v14);
      if (!IPTCTimeFromExifDateTime)
      {
LABEL_19:
        v16 = *(a2 + 6);
        if (v16)
        {
          v44 = 0;
          v45 = 0;
          v46 = 0;
          IIODictionary::IIODictionary(&v44, v16, 1);
          v17 = CGImageMetadataCreateFromLegacyProps(&v44);
          v18 = v17;
          if (v17)
          {
            metadataSetSource(v17, 34);
            CGImageMetadataMerge(a2, v18, 0);
            CFRelease(v18);
          }

          IIODictionary::appendDictionary(this, &v44);
          IIODictionary::~IIODictionary(&v44);
        }

        v19 = CGImageMetadataCreateFromLegacyProps(this);
        if (v19)
        {
          v20 = v19;
          CGImageMetadataMerge(a2, v19, 0);
          CFRelease(v20);
        }

        ObjectForKey = IIODictionary::getObjectForKey(this, @"{XMP}");
        if (ObjectForKey)
        {
          CGImageMetadataMerge(a2, ObjectForKey, 0);
          IIODictionary::removeObjectForKey(this, @"{XMP}");
        }

        copyRenderingProperties(this, a2);
        if (IIODictionary::containsKeyGroup(this, @"Orientation", @"{TIFF}") && IIODictionary::getUint32ForKeyGroup(this, @"Orientation", @"{TIFF}") - 9 <= 0xFFFFFFF7)
        {
          IIODictionary::removeObjectForKeyGroup(this, @"Orientation", @"{TIFF}");
        }

        reconcileSubsecTimes(a2);
        reconcileGPSTimeStamp(a2);
        IIODictionary::setObjectForKey(this, *MEMORY[0x1E695E4D0], @"kCGSourceMetadataNotSynced");
        if (IIODictionary::containsKey(this, @"{IPTC}"))
        {
          v22 = IIODictionary::getObjectForKey(this, @"{IPTC}");
          if (!CFDictionaryGetCount(v22))
          {
            IIODictionary::removeObjectForKey(this, @"{IPTC}");
          }
        }

LABEL_33:
        if (!IIODictionary::containsKey(this, @"{TIFF}"))
        {
          return;
        }

        v23 = IIODictionary::getObjectForKey(this, @"{TIFF}");
        v44 = 0;
        v45 = 0;
        v46 = 0;
        IIODictionary::IIODictionary(&v44, v23);
        if (IIODictionary::containsKey(&v44, @"Orientation"))
        {
          Uint32ForKey = IIODictionary::getUint32ForKey(&v44, @"Orientation");
          if (Uint32ForKey - 9 < 0xFFFFFFF8)
          {
            v25 = 1;
          }

          else
          {
            v25 = Uint32ForKey;
          }

          IIONumber::IIONumber(v42, v25);
          IIODictionary::setObjectForKey(&v44, value, @"Orientation");
          IIONumber::~IIONumber(v42);
          IIONumber::IIONumber(v42, v25);
          IIODictionary::setObjectForKey(this, value, @"Orientation");
          IIONumber::~IIONumber(v42);
        }

        if (IIODictionary::containsKey(&v44, @"ResolutionUnit"))
        {
          v26 = IIODictionary::getUint32ForKey(&v44, @"ResolutionUnit") == 3;
        }

        else
        {
          v26 = 0;
        }

        v27 = IIODictionary::containsKey(&v44, @"XResolution");
        if (v27)
        {
          DoubleForKey = IIODictionary::getDoubleForKey(&v44, @"XResolution");
          v31 = ((*&DoubleForKey & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && DoubleForKey >= 0.0 || (*&DoubleForKey - 1) < 0xFFFFFFFFFFFFFLL;
          if (v31)
          {
            v32 = DoubleForKey;
          }

          else
          {
            v32 = 72.0;
          }

          v33 = !v31;
        }

        else
        {
          v33 = 0;
          v32 = 72.0;
        }

        v34 = IIODictionary::containsKey(&v44, @"YResolution");
        if (v34)
        {
          v35 = IIODictionary::getDoubleForKey(&v44, @"YResolution");
          v37 = (v35 < 0.0 || ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE) && (*&v35 - 1) > 0xFFFFFFFFFFFFELL;
          v38 = v35;
          if (v37 || v33)
          {
LABEL_66:
            IIONumber::IIONumber(v42, 72.0);
            IIODictionary::setObjectForKey(&v44, v42, @"XResolution");
            IIONumber::~IIONumber(v42);
            IIONumber::IIONumber(v42, 72.0);
            IIODictionary::setObjectForKey(&v44, v42, @"YResolution");
            IIONumber::~IIONumber(v42);
            v38 = 72.0;
            v35 = 72.0;
            if (!v26)
            {
LABEL_79:
              v40 = v35;
              IIONumber::IIONumber(v42, v40);
              IIODictionary::setObjectForKey(this, v42, @"DPIWidth");
              IIONumber::~IIONumber(v42);
              v41 = v38;
              IIONumber::IIONumber(v42, v41);
              IIODictionary::setObjectForKey(this, v42, @"DPIHeight");
              goto LABEL_80;
            }

LABEL_76:
            IIONumber::IIONumber(v42, round(v35 * 2.54));
            IIODictionary::setObjectForKey(this, v42, @"DPIWidth");
            IIONumber::~IIONumber(v42);
            IIONumber::IIONumber(v42, round(v38 * 2.54));
            IIODictionary::setObjectForKey(this, v42, @"DPIHeight");
LABEL_80:
            IIONumber::~IIONumber(v42);
            goto LABEL_81;
          }
        }

        else
        {
          v38 = 72.0;
          v35 = v32;
          if (v33)
          {
            goto LABEL_66;
          }
        }

        if (v27)
        {
          if ((v34 & 1) == 0)
          {
            StringValueWithPath = CGImageMetadataGetStringValueWithPath(a2, 0, @"tiff:YResolution");
            if (StringValueWithPath && CFStringHasSuffix(StringValueWithPath, @"/0"))
            {
              v38 = 72.0;
            }

            else
            {
              v38 = v32;
            }
          }

          v35 = v32;
          if (!v26)
          {
            goto LABEL_79;
          }
        }

        else
        {
          if (!v34)
          {
LABEL_81:
            IIODictionary::~IIODictionary(&v44);
            return;
          }

          if (!v26)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_76;
      }

      v10 = IPTCTimeFromExifDateTime;
      v11 = this;
      v12 = v10;
      v13 = @"TimeCreated";
    }

    else
    {
      if (ObjectForKeyGroup)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5 == 0;
      }

      if (v7)
      {
        goto LABEL_19;
      }

      v8 = IIODictionary::getObjectForKeyGroup(this, @"DateTimeOriginal", @"{Exif}");
      IPTCDateFromExifDateTime = CreateIPTCDateFromExifDateTime(v8);
      if (!IPTCDateFromExifDateTime)
      {
        goto LABEL_19;
      }

      v10 = IPTCDateFromExifDateTime;
      v11 = this;
      v12 = v10;
      v13 = @"DateCreated";
    }

    IIODictionary::setObjectForKeyGroup(v11, v12, v13, @"{IPTC}");
    CFRelease(v10);
    goto LABEL_19;
  }

  if (this)
  {
    goto LABEL_33;
  }
}

void sub_185E667F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageMetadataCreateFromLegacyProps(IIODictionary *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a1 && IIODictionary::getCount(a1))
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __CGImageMetadataCreateFromLegacyProps_block_invoke;
    v7[3] = &unk_1E6F417C0;
    v7[4] = &v8;
    v7[5] = a1;
    XMPMappingIteratePropertiesUsingBlock(0, a1, v7);
    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(a1, @"iptcComputedMD5", @"{IPTC}");
    if (v9[3])
    {
      v3 = ObjectForKeyGroup == 0;
    }

    else
    {
      v3 = 1;
    }

    if (!v3)
    {
      Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], ObjectForKeyGroup);
      *(v9[3] + 56) = Copy;
    }
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_185E6696C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E66944);
}

void sub_185E66978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const void *CGImageMetadataGetTopLevelTag(const void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = result;
    result = 0;
    if (a3)
    {
      if (a2)
      {
        v4 = *(v3 + 3);
        if (v4)
        {
          key[1] = a3;
          key[2] = 0;
          key[0] = a2;
          return CFDictionaryGetValue(v4, key);
        }
      }
    }
  }

  return result;
}

void reconcileGPSTimeStamp(void *a1)
{
  TopLevelTag = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/exif/1.0/", @"GPSTime");
  v3 = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/exif/1.0/", @"GPSDate");
  Source = CGImageSourceGetSource(TopLevelTag);
  v5 = CGImageSourceGetSource(v3);
  if (TopLevelTag)
  {
    v6 = *(Source + 48);
    if (!v3 || ((v7 = *(v5 + 48), v6) ? (v8 = v7 == 0) : (v8 = 1), v8))
    {
      if (v6)
      {
        v9 = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/photoshop/1.0/", @"DateCreated");
        Value = CGImageMetadataTagGetValue(v9);
        if (Value || (v18 = CGImageMetadataGetTopLevelTag(a1, @"http://ns.adobe.com/xap/1.0/", @"CreateDate"), (Value = CGImageMetadataTagGetValue(v18)) != 0))
        {
          GPSDateStringWithXMPDateTimeString = CreateGPSDateStringWithXMPDateTimeString(Value, v11, v12, v13, v14, v15, v16, v17);
          if (GPSDateStringWithXMPDateTimeString)
          {
            reconcileGPSTimeStamp_cold_1(GPSDateStringWithXMPDateTimeString, v6, a1, TopLevelTag);
          }
        }
      }
    }

    else
    {
      XMPDateFromEXIFGPSDateAndTime = CreateXMPDateFromEXIFGPSDateAndTime(v7, v6);
      if (XMPDateFromEXIFGPSDateAndTime)
      {
        v21 = XMPDateFromEXIFGPSDateAndTime;
        CGImageMetadataSetValueWithPath(a1, 0, @"exif:GPSTimeStamp", XMPDateFromEXIFGPSDateAndTime);
        CFRelease(v21);
        CGImageMetadataRemoveTag(a1, TopLevelTag);

        CGImageMetadataRemoveTag(a1, v3);
      }
    }
  }
}

const void *IIOImagePlus::getImageProvider(IIOImagePlus *this)
{
  if (*(this + 19) == *MEMORY[0x1E695E738])
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 19);
  }

  if (v1)
  {
    CGImageProviderGetSize();
    if (v3 != *(this + 5) || ((v5 = floor(v3), v4 == floor(v4)) ? (v6 = v3 == v5) : (v6 = 0), v6 ? (v7 = v4 == *(this + 6)) : (v7 = 0), !v7))
    {
      LogError("getImageProvider", 1102, "*** ERROR: imageProvider %p has illegal size: (%g, %g)\n", v1, v3, v4);
    }
  }

  return v1;
}

void IIOString::~IIOString(IIOString *this)
{
  *this = &unk_1EF4D41F0;
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    free(v3);
  }
}

{
  IIOString::~IIOString(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOImageSource::getImagePropertiesAtIndex(IIOImageSource *this, unint64_t a2)
{
  v2 = *(this + 18);
  v3 = *(this + 19);
  if ((v3 - v2) >> 3 > a2)
  {
    return *(v2 + 8 * a2);
  }

  if (v3 != v2)
  {
    _cg_jpeg_mem_term("getImagePropertiesAtIndex", 4103, "getImagePropertiesAtIndex index (%d) larger than vector size (%d)\n", a2, (v3 - v2) >> 3);
  }

  return 0;
}

void IIOImageSource::removeUnusedImages(CFSetRef *this)
{
  Count = CFSetGetCount(this[23]);
  if (Count >= 2)
  {
    v3 = Count;
    v4 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
    if (v4)
    {
      v5 = v4;
      v16 = 0;
      CFSetGetValues(this[23], v4);
      AllImagePlusValues = IIOImageSource::getAllImagePlusValues(this, &v16);
      v7 = 0;
      v8 = v16;
      v9 = *MEMORY[0x1E695E738];
      do
      {
        v10 = v5[v7];
        v11 = CFGetTypeID(v10);
        if (v11 == CGImageGetTypeID() && CFGetRetainCount(v10) == 1)
        {
          if (v8 >= 1)
          {
            v12 = 0;
            while (1)
            {
              v13 = AllImagePlusValues[v12];
              if (v13 && v13 != v9)
              {
                v15 = *(v13 + 3);
                if (IIOImagePlus::getImage(v15) == v5[v7])
                {
                  break;
                }
              }

              if (v8 == ++v12)
              {
                goto LABEL_16;
              }
            }

            IIOImagePlus::setRemoveCacheKey(v15, 1);
            IIOImagePlus::setImageIndex(v15, v12);
            IIOImageSource::setImagePlusAtIndex(this, 0, v12);
            AllImagePlusValues[v12] = v9;
          }

LABEL_16:
          CFSetRemoveValue(this[23], v5[v7]);
        }

        ++v7;
      }

      while (v7 != v3);
      if (AllImagePlusValues)
      {
        free(AllImagePlusValues);
      }

      free(v5);
    }
  }
}

CFDictionaryRef CGImageSourceCopyPropertiesAtIndex(CGImageSourceRef isrc, size_t index, CFDictionaryRef options)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v6 = (gIIODebugFlags >> 12) & 3;
  if (v6)
  {
    ImageIODebugOptions(v6, "A", "CGImageSourceCopyPropertiesAtIndex", isrc, 0, index, options);
  }

  if (isrc)
  {
    v7 = CFGetTypeID(isrc);
    if (CGImageSourceGetTypeID::once != -1)
    {
      CGImageSourceGetTypeID_cold_1();
    }

    if (v7 == CGImageSourceGetTypeID::id)
    {
      if (options)
      {
        v8 = CFGetTypeID(options);
        if (v8 != CFDictionaryGetTypeID())
        {
          LogError("CGImageSourceCopyPropertiesAtIndex", 5380, "*** ERROR: CGImageSourceCopyPropertiesAtIndex: options parameter is not a CFDictionaryRef - ignoring\n");
          options = 0;
        }
      }

      v9 = *(isrc + 3);
      if (v9)
      {
        if (*(v9 + 89) == 1)
        {
          CGImageSourceCopyPropertiesAtIndex_cold_3();
        }

        else
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          IIODictionary::IIODictionary(&v14, options);
          pthread_mutex_lock((v9 + 224));
          v10 = *(v9 + 104);
          if (v10)
          {
            IIO_Reader::osType(v10);
          }

          if (IIOImageSource::isProxy(v9))
          {
            v11 = IIOImageSource::proxyCopyPropertiesAtIndex(v9, index, &v14);
          }

          else
          {
            v11 = IIOImageSource::copyPropertiesAtIndex(v9, index, &v14);
          }

          v12 = v11;
          pthread_mutex_unlock((v9 + 224));
          IIODictionary::~IIODictionary(&v14);
          if (v12)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            IIODictionary::IIODictionary(&v14, v12);
            IIOPackSrcInputInfo(&v14, index);
            IIODictionary::getCount(&v14);
            IIODictionary::~IIODictionary(&v14);
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
      CGImageSourceCopyPropertiesAtIndex_cold_2();
    }
  }

  else
  {
    CGImageSourceCopyPropertiesAtIndex_cold_4();
  }

  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCopyPropertiesAtIndex", 5409, "could not create CFDictionaryRef");
  }

  v12 = 0;
LABEL_25:
  kdebug_trace();
  return v12;
}

void sub_185E670C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

const __CFDictionary **IIOImageSource::copyPropertiesAtIndex(IIOImageSource *this, unint64_t a2, const __CFDictionary **a3)
{
  PropertiesAtIndexInternal = IIOImageSource::getPropertiesAtIndexInternal(this, a2, a3);
  if (PropertiesAtIndexInternal)
  {
    if ((gIIODebugFlags & 0x2000000000000) != 0)
    {
      IIODebugOrientation("copyPropertiesAtIndex", 1742, PropertiesAtIndexInternal);
    }

    cf = 0;
    v7 = 0;
    v5 = 0;
    IIODictionary::IIODictionary(&v5, PropertiesAtIndexInternal[1], 1);
    PropertiesAtIndexInternal = CFRetain(cf);
    if (!PropertiesAtIndexInternal)
    {
      LogError("copyPropertiesAtIndex", 1749, "*** ERROR: CFDictionaryCreateCopy failed\n");
    }

    IIODictionary::~IIODictionary(&v5);
  }

  return PropertiesAtIndexInternal;
}

void sub_185E6717C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

IIODictionary *IIOImageSource::getPropertiesAtIndexInternal(IIOImageSource *this, unint64_t a2, const __CFDictionary **a3)
{
  if (!IIOImageSource::bindToReader(this))
  {
    return 0;
  }

  ImagePlus = IIOImageSource::makeImagePlus(this, a2, a3);
  if (ImagePlus)
  {
    v7 = *(ImagePlus + 24);
    Properties = IIOImagePlus::getProperties(v7);
    Metadata = IIOImagePlus::getMetadata(v7);
    if (!Properties)
    {
      IIOImageSource::getPropertiesAtIndexInternal();
      return Properties;
    }

    ImageMetadataAtIndex = Metadata;
  }

  else
  {
    Properties = IIOImageSource::getImagePropertiesAtIndex(this, a2);
    if (!Properties)
    {
      IIOImageSource::getPropertiesAtIndexInternal();
      return Properties;
    }

    ImageMetadataAtIndex = IIOImageSource::getImageMetadataAtIndex(this, a2);
    v7 = 0;
  }

  if (IIODictionary::getBoolForKey(Properties, @"kCGSourceMetadataNotSynced"))
  {
    v11 = CGImagePropertiesCreateFromMetadata(ImageMetadataAtIndex);
    if (v11)
    {
      v12 = v11;
      if (!CGImageMetadataGetTopLevelTag(ImageMetadataAtIndex, @"http://ns.apple.com/ImageIO/1.0/", @"hasIIM"))
      {
        if (IIODictionary::containsKey(v12, @"{IPTC}"))
        {
          IIODictionary::removeObjectForKeyGroup(v12, @"DateCreated", @"{IPTC}");
          IIODictionary::removeObjectForKeyGroup(v12, @"TimeCreated", @"{IPTC}");
          IIODictionary::removeObjectForKeyGroup(v12, @"DigitalCreationDate", @"{IPTC}");
          IIODictionary::removeObjectForKeyGroup(v12, @"DigitalCreationTime", @"{IPTC}");
          if (!CGImageMetadataGetTopLevelTag(ImageMetadataAtIndex, @"http://ns.apple.com/ImageIO/1.0/", @"hasXMP"))
          {
            IIODictionary::removeObjectForKeyGroup(v12, @"CopyrightNotice", @"{IPTC}");
            IIODictionary::removeObjectForKeyGroup(v12, @"Byline", @"{IPTC}");
          }
        }
      }

      if (IIODictionary::containsKey(v12, @"{IPTC}"))
      {
        ObjectForKey = IIODictionary::getObjectForKey(v12, @"{IPTC}");
        if (!CFDictionaryGetCount(ObjectForKey))
        {
          IIODictionary::removeObjectForKey(v12, @"{IPTC}");
        }
      }

      IIODictionary::appendDictionary(Properties, v12);
      (*(*v12 + 8))(v12);
    }

    IIODictionary::removeObjectForKey(Properties, @"kCGSourceMetadataNotSynced");
  }

  if (!a3)
  {
    IIODictionary::removeObjectForKey(Properties, @"_RenderingDepth");
LABEL_32:
    IIODictionary::removeObjectForKeyGroup(Properties, @"JPEGInterchangeFormat", @"{Exif}");
    IIODictionary::removeObjectForKeyGroup(Properties, @"JPEGInterchangeFormatLength", @"{Exif}");
    goto LABEL_33;
  }

  if (IIODictionary::containsKey(a3, @"kCGImageSourceAddRenderingInformation") && IIODictionary::getBoolForKey(a3, @"kCGImageSourceAddRenderingInformation") && IIODictionary::containsKey(Properties, @"Depth"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(Properties, @"Depth");
    if (Uint32ForKey <= 8)
    {
      v15 = 8;
    }

    else
    {
      v15 = Uint32ForKey;
    }

    IIONumber::IIONumber(v17, v15);
    IIODictionary::setObjectForKey(Properties, v17, @"_RenderingDepth");
    IIONumber::~IIONumber(v17);
  }

  else
  {
    IIODictionary::removeObjectForKey(Properties, @"_RenderingDepth");
  }

  if (!IIODictionary::containsKey(a3, @"kCGImageSourceAddThumbnailInformation") || !IIODictionary::getBoolForKey(a3, @"kCGImageSourceAddThumbnailInformation"))
  {
    goto LABEL_32;
  }

LABEL_33:
  if (IIODictionary::containsKey(Properties, @"kCGImageSourceAddThumbnailInformation"))
  {
    IIODictionary::removeObjectForKey(Properties, @"XMP_FROM_SIDECAR");
  }

  IIODictionary::removeObjectForKeyGroup(Properties, @"iptcComputedMD5", @"{IPTC}");
  IIODictionary::removeObjectForKeyGroup(Properties, @"iptcPhotoshopMD5", @"{IPTC}");
  if (v7 && IIOImagePlus::getStatus(v7) == -1)
  {
    IIOImagePlus::setStatus(v7, kCGImageStatusComplete);
  }

  return Properties;
}

void sub_185E67584(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImagePlus::getStatus(IIOImagePlus *this)
{
  v1 = *(this + 36);
  if (v1 == -6)
  {
    return 4294967291;
  }

  else
  {
    return v1;
  }
}

uint64_t CGImagePropertiesCreateFromMetadata(void *a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CGImageMetadataGetTypeID())
    {
      v3 = a1[3];
      if (v3 && !CFDictionaryGetCount(v3) && !a1[6])
      {
        v5 = 0;
        goto LABEL_13;
      }

      v4 = v9[3];
      if (a1[6])
      {
        if (!v4)
        {
          operator new();
        }
      }

      else if (!v4)
      {
        operator new();
      }

      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 0x40000000;
      v7[2] = __CGImagePropertiesCreateFromMetadata_block_invoke;
      v7[3] = &unk_1E6F41798;
      v7[4] = &v8;
      v7[5] = a1;
      XMPMappingIteratePropertiesUsingBlock(a1, 0, v7);
    }
  }

  v5 = v9[3];
LABEL_13:
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_185E6770C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  MEMORY[0x186602850](v7, 0x10A1C4047070A01);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeID CGImageMetadataGetTypeID(void)
{
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  return _MergedGlobals_1;
}

uint64_t _CGImageSourceFinalize(CGImageSource *a1)
{
  atomic_fetch_add_explicit(&gISRCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  v2 = (gIIODebugFlags >> 12) & 3;
  if (v2)
  {
    ImageIODebugOptions(v2, "A", "_CGImageSourceFinalize", a1, 0, -1, 0);
  }

  result = CGTrackImageSource(a1, -1);
  v4 = *(a1 + 3);
  if (v4)
  {
    v5 = *(v4 + 104);
    if (v5)
    {
      IIO_Reader::osType(v5);
    }

    kdebug_trace();
    Source = CGImageSourceGetSource(*(*(a1 + 3) + 16));
    if (Source)
    {
      v7 = Source;
      IIOImageRead::lock(Source);
      IIOImageRead::setISR(v7, 0);
      IIOImageRead::unlock(v7);
    }

    result = *(a1 + 3);
    if (result)
    {
      result = (*(*result + 8))(result);
    }
  }

  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:fe200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__erase_unique<unsigned long>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void IIOImageSource::~IIOImageSource(IIOImageSource *this)
{
  *this = &unk_1EF4D46B0;
  if (*(this + 2))
  {
    IIOImageSource::unmapData(this);
    v2 = *(this + 2);
    if (v2 != *MEMORY[0x1E695E738])
    {
      Source = CGImageSourceGetSource(v2);
      IIOImageRead::lock(Source);
      IIOImageRead::setISR(Source, 0);
      IIOImageRead::unlock(Source);
      CFRelease(*(this + 2));
    }

    *(this + 2) = 0;
  }

  v4 = *(this + 21);
  if (v4 && CFArrayGetCount(v4))
  {
    v5 = *(this + 21);
    v16.length = CFArrayGetCount(v5);
    v16.location = 0;
    CFArrayApplyFunction(v5, v16, releaseUnusedImageProvider, 0);
  }

  v6 = *(this + 23);
  if (v6)
  {
    CFRelease(v6);
    *(this + 23) = 0;
  }

  v7 = *(this + 24);
  if (v7)
  {
    CFRelease(v7);
    *(this + 24) = 0;
  }

  v8 = *(this + 21);
  if (v8)
  {
    CFRelease(v8);
    *(this + 21) = 0;
  }

  v9 = *(this + 7);
  if (v9)
  {
    CFRelease(v9);
    *(this + 7) = 0;
  }

  v10 = *(this + 15);
  if (v10)
  {
    (*(*v10 + 8))(v10);
    *(this + 15) = 0;
  }

  v11 = *(this + 16);
  if (v11)
  {
    (*(*v11 + 8))(v11);
    *(this + 16) = 0;
  }

  v12 = *(this + 17);
  if (v12)
  {
    CFRelease(v12);
    *(this + 17) = 0;
  }

  v13 = *(this + 22);
  if (v13)
  {
    CFRelease(v13);
    *(this + 22) = 0;
  }

  pthread_mutex_destroy((this + 224));
  pthread_mutex_destroy((this + 352));
  pthread_mutex_destroy((this + 288));
  v14 = *(this + 25);
  if (v14)
  {
    *(this + 26) = v14;
    operator delete(v14);
  }

  v15 = *(this + 18);
  if (v15)
  {
    *(this + 19) = v15;
    operator delete(v15);
  }
}

{
  IIOImageSource::~IIOImageSource(this);

  JUMPOUT(0x186602850);
}

IIOImageRead *IIOImageSource::unmapData(IIOImageSource *this)
{
  result = CGImageSourceGetSource(*(this + 2));
  if (result)
  {

    return IIOImageRead::unmapData(result);
  }

  return result;
}

uint64_t IIOImageRead::unmapData(IIOImageRead *this)
{
  pthread_mutex_lock((this + 376));
  if ((gIIODebugFlags & 0x100000000000) != 0)
  {
    ImageIOLog("    %s: <IIOImageRead: %p> un-mmapping data <CFData:%p>  count: %d\n", "unmapData", this, *(this + 4), *(this + 110));
  }

  v2 = *(this + 4);
  if (v2 && *(this + 67) == 1)
  {
    v3 = *(this + 110) - 1;
    *(this + 110) = v3;
    if ((gIIODebugFlags & 0x100000000000) != 0)
    {
      v4 = CFGetRetainCount(v2);
      ImageIOLog("    %s:                  new count: %d   (rc=%ld)\n", "unmapData", v3, v4);
      v3 = *(this + 110);
    }

    if (v3 <= 0)
    {
      v5 = *(this + 4);
      if (v5)
      {
        v6 = gIIODebugFlags;
        if ((gIIODebugFlags & 0x100000000000) != 0)
        {
          ImageIOLog("    %s:                  CFRelease: <CFData:%p>\n", "unmapData", v5);
          v6 = gIIODebugFlags;
          v5 = *(this + 4);
        }

        if ((v6 & 0x80000000000) != 0)
        {
          ImageIOLog("D   %s:%d CFRelease %p\n", "unmapData", 1050, v5);
          v5 = *(this + 4);
        }

        CFRelease(v5);
        *(this + 4) = 0;
      }
    }
  }

  return pthread_mutex_unlock((this + 376));
}

uint64_t releaseUnusedImageProvider(uint64_t result, void *a2)
{
  if (*MEMORY[0x1E695E738] != result)
  {
    v3 = *(result + 24);
    IIOImagePlus::releaseUnusedImageProvider(v3);

    return IIOImagePlus::setISR(v3, 0);
  }

  return result;
}

uint64_t IIOImagePlus::releaseUnusedImageProvider(uint64_t this)
{
  if ((*(this + 200) & 0x40) == 0)
  {
    v1 = this;
    v2 = *(this + 152);
    v3 = *MEMORY[0x1E695E738];
    if (v2)
    {
      v4 = v2 == v3;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      atomic_fetch_add_explicit(&gImageProviderCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      CGImageProviderRelease();
    }

    this = *(v1 + 160);
    if (this)
    {
      v5 = this == v3;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      atomic_fetch_add_explicit(&gImageProviderCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
      this = CGImageProviderRelease();
    }

    *(v1 + 200) &= ~0x40u;
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  return this;
}

CGImage *CGImageGetImageSource(CGImage *a1)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageGetImageSource", 0, 0, -1, 0);
  }

  if (!a1)
  {
    CGImageGetImageSource_cold_1();
    return a1;
  }

  if (ERROR_CGImageCopyImageSource_WAS_CALLED_WITH_INVALID_CGIMAGE(a1))
  {
    return 0;
  }

  Property = CGImageGetProperty();
  if (!Property)
  {
    return 0;
  }

  *buffer = 0;
  v7.location = 0;
  v7.length = 8;
  CFDataGetBytes(Property, v7, buffer);
  Source = CGImageSourceGetSource(*buffer);
  if (!Source)
  {
    return 0;
  }

  v4 = Source;
  IIOImageRead::lock(Source);
  a1 = IIOImagePlus::isr(v4);
  if (!CGTrackImageSource(a1, 0))
  {
    IIOImageRead::unlock(v4);
    return 0;
  }

  CFRetain(a1);
  IIOImageRead::unlock(v4);
  if (a1)
  {
    CFAutorelease(a1);
  }

  return a1;
}

BOOL ERROR_CGImageCopyImageSource_WAS_CALLED_WITH_INVALID_CGIMAGE(CGImage *a1)
{
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    return v1 != CGImageGetTypeID();
  }

  else
  {
    return 1;
  }
}

void CGInitializeImageIO()
{
  if ((IIO_XPCServer() & 1) == 0)
  {
    v0 = getprogname();
    if (strncmp(v0, "ImageIOXPCService", 0x11uLL))
    {
      gWakeupTime = CFAbsoluteTimeGetCurrent();
      if (CGInitializeImageIO::initOnceToken != -1)
      {
        CGInitializeImageIO_cold_1();
      }
    }
  }
}

void __CGInitializeImageIO_block_invoke()
{
  global_queue = dispatch_get_global_queue(25, 0);

  dispatch_async(global_queue, &__block_literal_global_4);
}

uint64_t __IIOIsOOPEnabled_block_invoke()
{
  v0 = IIOGetBundleIdentifer();
  getprogname();
  if (IIO_OSAppleInternalBuild() && (getenv("RC_XBS") || getenv("XBS_IS_CHROOTED")))
  {
    LOBYTE(v1) = 0;
    v2 = "disabled";
    v3 = "B&I";
    goto LABEL_54;
  }

  if (IIO_XPCServer())
  {
    LOBYTE(v1) = 0;
    v2 = "disabled";
    v3 = "unsupported";
    goto LABEL_54;
  }

  if (v0)
  {
    v1 = CFStringCompare(v0, @"com.apple.MessagesAirlockService", 0);
    if (v1 == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.MessagesBlastDoorService", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.IDSBlastDoorService", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.MediaAnalysisBlastDoorService", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.QuickLookThumbnailing.extension-secure", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.WebKit.WebContent.CaptivePortal", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.WebKit.WebContent.Crashy", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.WebKit.WebContent.Development", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.WebKit.WebContentExtension", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.WebKit.WebContent", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.WebKit.WebContentCaptivePortalExtension", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.quicklook.thumbnail.OfficeExtension", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.quicklook.thumbnail.AudiovisualExtension", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.quicklook.thumbnail.TextExtension", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.apple.quicklook.thumbnail.ImageExtension", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.google.Chrome.helper.renderer", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.microsoft.edgemac.helper.renderer", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"company.thebrowser.browser.helper.renderer", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.brave.Browser.helper.renderer", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"org.qt-project.Qt.QtWebEngineProcess", 0)) == kCFCompareEqualTo || (v1 = CFStringCompare(v0, @"com.operasoftware.Opera.helper", 0)) == kCFCompareEqualTo)
    {
      v2 = "disabled";
      v3 = "always exempt process";
      goto LABEL_54;
    }
  }

  v4 = getenv("IIOEnableOOP");
  if (v4)
  {
    if (atoi(v4))
    {
LABEL_31:
      v2 = "enabled";
      LOBYTE(v1) = 1;
LABEL_41:
      v3 = "ENV";
      goto LABEL_54;
    }

    if (IIO_OSAppleInternalBuild())
    {
LABEL_40:
      LOBYTE(v1) = 0;
      v2 = "disabled";
      goto LABEL_41;
    }
  }

  else
  {
    v5 = CFPreferencesCopyAppValue(@"IIOEnableOOP", *MEMORY[0x1E695E8A8]);
    if (v5 || (v5 = CFPreferencesCopyValue(@"IIOEnableOOP", @"com.apple.ImageIO", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0])) != 0)
    {
      v6 = v5;
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v6))
      {
        if (*MEMORY[0x1E695E4D0] == v6)
        {
          CFRelease(v6);
          goto LABEL_31;
        }

        if (IIO_OSAppleInternalBuild())
        {
          CFRelease(v6);
          goto LABEL_40;
        }
      }

      CFRelease(v6);
    }
  }

  v2 = "disabled";
  if (_os_feature_enabled_impl())
  {
    LOBYTE(v1) = 0;
    v3 = "FF-disabled";
    goto LABEL_54;
  }

  if (_os_feature_enabled_impl())
  {
    v2 = "enabled";
    LOBYTE(v1) = 1;
    v3 = "FF-debug-enabled";
    goto LABEL_54;
  }

  LODWORD(v1) = ApplicationOptIn();
  if (v1 == kCFCompareGreaterThan)
  {
    v2 = "enabled";
    goto LABEL_53;
  }

  if (!v1)
  {
LABEL_53:
    v3 = "application opt-in";
    goto LABEL_54;
  }

  if (ApplicationEnabled_LDM_off(v0, v8))
  {
    v3 = "always enabled process";
    LOBYTE(v1) = 1;
    v2 = "enabled";
  }

  else
  {
    LODWORD(v1) = IIOLockDownModeEnabled();
    v3 = "LDM off";
    if (v1)
    {
      v3 = "LDM on";
      v2 = "enabled";
    }
  }

LABEL_54:
  IIOIsOOPEnabled::oopEnabled = v1;
  IIOIsOOPEnabled::info = v3;
  return ImageIOLogInternal("*** ImageIO OOP %s (%s)\n", v2, v3);
}

void __CGInitializeImageIO_block_invoke_2()
{
  IIOInitDebugFlags();
  if (IIOXPCClient::GetIIOXPCClient(void)::xpcClientCreate != -1)
  {
    __CGInitializeImageIO_block_invoke_2_cold_1();
  }

  if (IIOIsOOPEnabled(0))
  {
    ImageIOLogInternal("⏹️   CGInitializeImageIO called...\n");
    v0 = *MEMORY[0x1E695E8A8];
    v1 = CFPreferencesCopyAppValue(@"IIO_LaunchInfo", *MEMORY[0x1E695E8A8]);
    if (v1)
    {
      v2 = v1;
      CFNumberGetValue(v1, kCFNumberDoubleType, &gSavedFirstCallTime);
    }

    else
    {
      ImageIOLogInternal("⏹️   ImageIO: not launching XPCService (no launchinfo)...\n");
      v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &gSavedFirstCallTime);
      CFPreferencesSetAppValue(@"IIO_LaunchInfo", v2, v0);
    }

    CFRelease(v2);
    v3 = *&gSavedFirstCallTime;
    if (*&gSavedFirstCallTime == -1.0)
    {
      ImageIOLogInternal("⏹️   ImageIO: waiting for first ImageIO call...\n", *&gSavedFirstCallTime);
      v4 = dispatch_time(0, 8000000000);
      global_queue = dispatch_get_global_queue(0, 0);
      dispatch_after(v4, global_queue, &__block_literal_global_11);
      v3 = *&gSavedFirstCallTime;
    }

    if (v3 > 0.0 && v3 < 10.0)
    {
      v6 = fmax(v3 + -0.06, 0.01);
      ImageIOLogInternal("⏹️   ImageIO: waiting %g s before launching XPCService\n", v6);
      v7 = dispatch_time(0, (v6 * 1000000000.0));
      v8 = dispatch_get_global_queue(2, 0);

      dispatch_after(v7, v8, &__block_literal_global_16);
    }
  }
}

const char *__IIOInitDebugFlags_block_invoke()
{
  v0 = getenv("IIO_LogMemoryUsage");
  if (v0)
  {
    v1 = atoi(v0) & 3;
  }

  else
  {
    v1 = 0;
  }

  v2 = gIIODebugFlags & 0xFFFFFFFFFFFFFFFCLL | v1;
  gIIODebugFlags = v2;
  v3 = getenv("IIO_LogDecodingTime");
  if (v3)
  {
    v4 = 4 * (atoi(v3) & 3u);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 | v2 & 0xFFFFFFFFFFFFFFF3;
  gIIODebugFlags = v5;
  v6 = getenv("IIO_LogMetadataTime");
  if (v6)
  {
    v7 = 16 * (atoi(v6) & 3u);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 | v5 & 0xFFFFFFFFFFFFFFCFLL;
  gIIODebugFlags = v8;
  v9 = getenv("IIO_LogPurgeability");
  if (v9)
  {
    v10 = (atoi(v9) & 3u) << 6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | v8 & 0xFFFFFFFFFFFFFF3FLL;
  gIIODebugFlags = v11;
  v12 = getenv("IIO_LogImageBlocks");
  if (v12)
  {
    v13 = (atoi(v12) & 3u) << 10;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | v11 & 0xFFFFFFFFFFFFF3FFLL;
  gIIODebugFlags = v14;
  v15 = getenv("IIO_dLogImageIOAPICalls");
  if (v15)
  {
    v16 = (atoi(v15) & 3u) << 12;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16 | v14 & 0xFFFFFFFFFFFFCFFFLL;
  gIIODebugFlags = v17;
  v18 = getenv("IIO_dLogImageIOSPICalls");
  if (v18)
  {
    v19 = (atoi(v18) & 3u) << 14;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v17 & 0xFFFFFFFFFFFF3FFFLL;
  gIIODebugFlags = v20;
  v21 = getenv("IIO_LogPluginInfo");
  if (v21)
  {
    v22 = (atoi(v21) & 3u) << 16;
  }

  else
  {
    v22 = 0;
  }

  v23 = v22 | v20 & 0xFFFFFFFFFFFCFFFFLL;
  gIIODebugFlags = v23;
  v24 = getenv("IIO_LogHDR");
  if (v24)
  {
    v25 = (atoi(v24) & 3u) << 20;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 | v23 & 0xFFFFFFFFFFCFFFFFLL;
  gIIODebugFlags = v26;
  v27 = getenv("IIO_LogCacheUsage");
  if (v27)
  {
    v28 = (atoi(v27) & 3u) << 8;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 | v26 & 0xFFFFFFFFFFFFFCFFLL;
  gIIODebugFlags = v29;
  v30 = getenv("IIO_DEBUG_METADATA");
  if (v30)
  {
    v31 = (atoi(v30) & 1u) << 24;
  }

  else
  {
    v31 = 0;
  }

  v32 = v31 | v29 & 0xFFFFFFFFFEFFFFFFLL;
  gIIODebugFlags = v32;
  v33 = getenv("IMAGEIO_DEBUG_RAW_LOADING");
  if (v33)
  {
    v34 = (atoi(v33) & 1u) << 26;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34 | v32 & 0xFFFFFFFFFBFFFFFFLL;
  gIIODebugFlags = v35;
  v36 = getenv("DISABLE_RAW_SUPPORT");
  if (v36)
  {
    v37 = (atoi(v36) & 1u) << 27;
  }

  else
  {
    v37 = 0;
  }

  v38 = v37 | v35 & 0xFFFFFFFFF7FFFFFFLL;
  gIIODebugFlags = v38;
  v39 = getenv("IIO_SAVEINPUTDATA");
  if (v39)
  {
    v40 = (atoi(v39) & 1u) << 28;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 | v38 & 0xFFFFFFFFEFFFFFFFLL;
  gIIODebugFlags = v41;
  v42 = getenv("IMAGEIO_ENABLE_CACHE");
  v43 = v41 & 0xFFFFFFFFDFFFFFFFLL | ((v42 != 0) << 29);
  gIIODebugFlags = v43;
  if (v42)
  {
    v44 = (atoi(v42) & 1u) << 30;
  }

  else
  {
    v44 = 0;
  }

  v45 = v44 | v43 & 0xFFFFFFFFBFFFFFFFLL;
  gIIODebugFlags = v45;
  v46 = getenv("IIO_DISABLE_MULTIPLE_RESOLUTIONS");
  if (v46)
  {
    v47 = (atoi(v46) << 31);
  }

  else
  {
    v47 = 0;
  }

  v48 = v47 | v45 & 0xFFFFFFFF7FFFFFFFLL;
  gIIODebugFlags = v48;
  v49 = getenv("IIO_DisableSubsamplePNG");
  if (v49)
  {
    v50 = (atoi(v49) & 1) << 32;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50 | v48 & 0xFFFFFFFEFFFFFFFFLL;
  gIIODebugFlags = v51;
  v52 = getenv("IIO_DisableSubsampleTIFF");
  if (v52)
  {
    v53 = (atoi(v52) & 1) << 33;
  }

  else
  {
    v53 = 0;
  }

  v54 = v53 | v51 & 0xFFFFFFFDFFFFFFFFLL;
  gIIODebugFlags = v54;
  v55 = getenv("IIO_DebugImageCopy");
  if (v55)
  {
    v56 = (atoi(v55) & 1) << 34;
  }

  else
  {
    v56 = 0;
  }

  v57 = v56 | v54 & 0xFFFFFFFBFFFFFFFFLL;
  gIIODebugFlags = v57;
  v58 = getenv("IIO_PreferUnassociatedAlphaTIFF");
  if (v58)
  {
    v59 = (atoi(v58) & 1) << 35;
  }

  else
  {
    v59 = 0;
  }

  v60 = v59 | v57 & 0xFFFFFFF7FFFFFFFFLL;
  gIIODebugFlags = v60;
  v61 = getenv("IIO_LogHWUsage");
  if (v61)
  {
    v62 = (atoi(v61) & 1) << 36;
  }

  else
  {
    v62 = 0;
  }

  v63 = v62 | v60 & 0xFFFFFFEFFFFFFFFFLL;
  gIIODebugFlags = v63;
  v64 = getenv("IIO_DebugIncrementalLoading");
  if (v64)
  {
    v65 = (atoi(v64) & 1) << 37;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 | v63 & 0xFFFFFFDFFFFFFFFFLL;
  gIIODebugFlags = v66;
  v67 = getenv("IIO_DebugSurfaceFormat");
  if (v67)
  {
    v68 = (atoi(v67) & 1u) << 25;
  }

  else
  {
    v68 = 0;
  }

  v69 = v68 | v66 & 0xFFFFFFFFFDFFFFFFLL;
  gIIODebugFlags = v69;
  v70 = getenv("IIO_DisableLowPowerGPU");
  if (v70)
  {
    v71 = (atoi(v70) & 1) << 51;
  }

  else
  {
    v71 = 0x8000000000000;
  }

  v72 = v71 | v69 & 0xFFE7FFFFFFFFFFFFLL;
  gIIODebugFlags = v72;
  v73 = getenv("IIO_DebugMemMapping");
  if (v73)
  {
    v74 = (atoi(v73) & 1) << 44;
  }

  else
  {
    v74 = 0;
  }

  v75 = v74 | v72 & 0xFFFFEFFFFFFFFFFFLL;
  gIIODebugFlags = v75;
  v76 = getenv("IIO_DebugFileAccess");
  if (v76)
  {
    v77 = (atoi(v76) & 1) << 45;
  }

  else
  {
    v77 = 0;
  }

  v78 = v77 | v75 & 0xFFFFDFFFFFFFFFFFLL;
  gIIODebugFlags = v78;
  v79 = getenv("IIO_DebugReads");
  if (v79)
  {
    v80 = (atoi(v79) & 3u) << 22;
  }

  else
  {
    v80 = 0;
  }

  v81 = v80 | v78 & 0xFFFFFFFFFF3FFFFFLL;
  gIIODebugFlags = v81;
  v82 = getenv("IIO_CreateHash");
  if (v82)
  {
    v83 = (atoi(v82) & 1) << 38;
  }

  else
  {
    v83 = 0;
  }

  v84 = v83 | v81 & 0xFFFFFFBFFFFFFFFFLL;
  gIIODebugFlags = v84;
  v85 = getenv("IIO_DebugColorHandling");
  if (v85)
  {
    v86 = (atoi(v85) & 1) << 39;
  }

  else
  {
    v86 = 0;
  }

  v87 = v86 | v84 & 0xFFFFFF7FFFFFFFFFLL;
  gIIODebugFlags = v87;
  v88 = getenv("IIO_DebugCreateImageConforming");
  if (v88)
  {
    v89 = (atoi(v88) & 1) << 40;
  }

  else
  {
    v89 = 0;
  }

  v90 = v89 | v87 & 0xFFFFFEFFFFFFFFFFLL;
  gIIODebugFlags = v90;
  v91 = getenv("IIO_LogEncodingTime");
  if (v91)
  {
    v92 = (atoi(v91) & 1) << 41;
  }

  else
  {
    v92 = 0;
  }

  v93 = v92 | v90 & 0xFFFFFDFFFFFFFFFFLL;
  gIIODebugFlags = v93;
  v94 = getenv("IIO_DebugAlphaHandling");
  if (v94)
  {
    v95 = (atoi(v94) & 1) << 42;
  }

  else
  {
    v95 = 0;
  }

  v96 = v95 | v93 & 0xFFFFFBFFFFFFFFFFLL;
  gIIODebugFlags = v96;
  v97 = getenv("IIO_DebugDataHandling");
  if (v97)
  {
    v98 = (atoi(v97) & 1) << 43;
  }

  else
  {
    v98 = 0;
  }

  v99 = v98 | v96 & 0xFFFFF7FFFFFFFFFFLL;
  gIIODebugFlags = v99;
  v100 = getenv("IIO_DebugBlockSet");
  if (v100)
  {
    v101 = (atoi(v100) & 1) << 46;
  }

  else
  {
    v101 = 0;
  }

  v102 = v101 | v99 & 0xFFFFBFFFFFFFFFFFLL;
  gIIODebugFlags = v102;
  v103 = getenv("IIO_LogIssues");
  if (v103)
  {
    v104 = (atoi(v103) & 1) << 47;
  }

  else
  {
    v104 = 0;
  }

  v105 = v104 | v102 & 0xFFFF7FFFFFFFFFFFLL;
  gIIODebugFlags = v105;
  v106 = getenv("IIO_Animation");
  if (v106)
  {
    v107 = (atoi(v106) & 1) << 48;
  }

  else
  {
    v107 = 0;
  }

  v108 = v107 | v105 & 0xFFFEFFFFFFFFFFFFLL;
  gIIODebugFlags = v108;
  v109 = getenv("IIO_LogXPC");
  if (v109)
  {
    v110 = (atoi(v109) & 3u) << 18;
  }

  else
  {
    v110 = 0;
  }

  v111 = v110 | v108 & 0xFFFFFFFFFFF3FFFFLL;
  gIIODebugFlags = v111;
  v112 = getenv("IIO_LogEXIFOrientation");
  if (v112)
  {
    v113 = (atoi(v112) & 1) << 49;
  }

  else
  {
    v113 = 0;
  }

  v114 = v113 | v111 & 0xFFFDFFFFFFFFFFFFLL;
  gIIODebugFlags = v114;
  v115 = getenv("IIO_LogRestrictions");
  if (v115)
  {
    v116 = (atoi(v115) & 1) << 50;
  }

  else
  {
    v116 = 0;
  }

  gIIODebugFlags = v116 | v114 & 0xFFFBFFFFFFFFFFFFLL;
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    __IIOInitDebugFlags_block_invoke_cold_1();
  }

  if ((atomic_load_explicit(&qword_1ED569DA0, memory_order_acquire) & 1) == 0)
  {
    __IIOInitDebugFlags_block_invoke_cold_2();
  }

  if (IIOSetupDebugUTIFlags(void)::onceToken != -1)
  {
    __IIOInitDebugFlags_block_invoke_cold_3();
  }

  v117 = getenv("IIO_SaveImageBlocks");
  if (v117)
  {
    v118 = v117;
    __dst = 538976288;
    v119 = strlen(v117);
    if (v119 >= 4)
    {
      v120 = 4;
    }

    else
    {
      v120 = v119;
    }

    memcpy(&__dst, v118, v120);
    v121 = IIOGetIndexForOSType(bswap32(__dst));
    if (v121)
    {
      if (v121 <= 0x7F)
      {
        v122 = v121 - 64;
        if (v121 < 0x40)
        {
          v122 = v121;
        }

        *(gDebugBlockType + 8 * (v121 > 0x3F)) |= 1 << v122;
      }
    }

    else
    {
      v123 = gDebugBlockType;
      *gDebugBlockType = -1;
      *(v123 + 8) = -1;
    }
  }

  result = getenv("IIO_PluginVerbose");
  if (result)
  {
    v125 = result;
    v130 = 538976288;
    v126 = strlen(result);
    if (v126 >= 4)
    {
      v127 = 4;
    }

    else
    {
      v127 = v126;
    }

    memcpy(&v130, v125, v127);
    result = IIOGetIndexForOSType(bswap32(v130));
    if (result)
    {
      if (result <= 0x7F)
      {
        v128 = result - 64;
        if (result < 0x40)
        {
          v128 = result;
        }

        *(gDebugVerboseType + 8 * (result > 0x3F)) |= 1 << v128;
      }
    }

    else
    {
      v129 = gDebugVerboseType;
      *gDebugVerboseType = -1;
      *(v129 + 8) = -1;
    }
  }

  return result;
}

void __IIOInitDebugFlags_block_invoke_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    qword_1ED569DA8 = 0;
    unk_1ED569DB0 = 0;

    __cxa_guard_release(&_MergedGlobals_0);
  }
}

void __IIOInitDebugFlags_block_invoke_cold_2()
{
  if (__cxa_guard_acquire(&qword_1ED569DA0))
  {
    qword_1ED569DB8 = 0;
    unk_1ED569DC0 = 0;

    __cxa_guard_release(&qword_1ED569DA0);
  }
}

uint64_t IIOGetBundleIdentifer()
{
  if (IIOGetBundleIdentifer::onceToken != -1)
  {
    IIOGetBundleIdentifer_cold_1();
  }

  return IIOGetBundleIdentifer::gBundleIdentifer;
}

uint64_t IIO_OSAppleInternalBuild()
{
  if (IIO_OSAppleInternalBuild::predicate != -1)
  {
    IIO_OSAppleInternalBuild_cold_1();
  }

  return IIO_OSAppleInternalBuild::is_internal;
}

uint64_t IIOReadPlugin::prepareGeometry(uint64_t a1, CFDictionaryRef *a2)
{
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v73 = 0u;
  memset(v72, 0, sizeof(v72));
  IIODictionary::IIODictionary(v72, *(a1 + 152));
  if (!*(a1 + 244) || !*(a1 + 248))
  {
    v55 = *(a1 + 220);
    v56 = v55 >> 24;
    if ((v55 >> 24) <= 0x7F)
    {
      v57 = *(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x40000;
    }

    else
    {
      v57 = __maskrune(v56, 0x40000uLL);
      v55 = *(a1 + 220);
    }

    if (v57)
    {
      v58 = (v55 >> 24);
    }

    else
    {
      v58 = 46;
    }

    v59 = v55 << 8 >> 24;
    if (v59 <= 0x7F)
    {
      v60 = *(MEMORY[0x1E69E9830] + 4 * v59 + 60) & 0x40000;
    }

    else
    {
      v60 = __maskrune(v59, 0x40000uLL);
      v55 = *(a1 + 220);
    }

    if (v60)
    {
      v61 = (v55 << 8 >> 24);
    }

    else
    {
      v61 = 46;
    }

    v62 = v55 >> 8;
    if (v62 <= 0x7F)
    {
      v63 = *(MEMORY[0x1E69E9830] + 4 * v62 + 60) & 0x40000;
    }

    else
    {
      v63 = __maskrune(v62, 0x40000uLL);
      v55 = *(a1 + 220);
    }

    if (v63)
    {
      v64 = (v55 >> 8);
    }

    else
    {
      v64 = 46;
    }

    if (v55 <= 0x7F)
    {
      v65 = *(MEMORY[0x1E69E9830] + 4 * v55 + 60) & 0x40000;
    }

    else
    {
      v65 = __maskrune(v55, 0x40000uLL);
    }

    if (v65)
    {
      v66 = *(a1 + 220);
    }

    else
    {
      v66 = 46;
    }

    LogError("prepareGeometry", 992, "*** ERROR: '%c%c%c%c' - bad image size (%ld x %ld)\n", v58, v61, v64, v66, *(a1 + 244), *(a1 + 248));
    v34 = 4294967229;
    goto LABEL_55;
  }

  if (*(a1 + 376) == 1)
  {
    CFDictionarySetValue(*(a1 + 152), @"kImageIOInfoHeader_supportsMultipleResolutions", *MEMORY[0x1E695E4D0]);
  }

  if (*(a1 + 378) == 1)
  {
    v4 = (*(a1 + 295) << 12) | (*(a1 + 296) << 16) | ((*(a1 + 297) != 0) << 8) | *(a1 + 294);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      v5 = *(a1 + 288);
      v6 = IIO_BitmapInfoString(v4);
      ImageIOLog("♦️   createImageProviderWithBitmapInfo[decodedGeo]: bpc=%d  '%08X' %s\n", v5, v4, v6);
    }

    IIONumber::IIONumber(&v67, v4);
    IIODictionary::setObjectForKey(v72, &v67, @"kImageIOInfoHeader_createImageProviderWithBitmapInfo");
    IIONumber::~IIONumber(&v67);
  }

  IIOReadPlugin::updateColorSpace(a1, a2);
  v8 = *(a1 + 260);
  v9 = *(a1 + 294);
  v10 = *(a1 + 160);
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CGColorSpaceGetTypeID())
  {
    goto LABEL_14;
  }

  Model = CGColorSpaceGetModel(*(a1 + 160));
  if (Model > kCGColorSpaceModelRGB)
  {
    if (Model != kCGColorSpaceModelCMYK)
    {
      if (Model != kCGColorSpaceModelLab)
      {
        goto LABEL_14;
      }

LABEL_22:
      v15 = v9 == 0;
      v14 = 3;
      goto LABEL_25;
    }

    v15 = v9 == 0;
    v14 = 4;
  }

  else
  {
    if (Model)
    {
      if (Model != kCGColorSpaceModelRGB)
      {
LABEL_14:
        if (v8)
        {
          v13 = v9 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          v14 = v8;
        }

        else
        {
          v14 = v8 + 1;
        }

        goto LABEL_27;
      }

      goto LABEL_22;
    }

    v15 = v9 == 0;
    v14 = 1;
  }

LABEL_25:
  if (!v15)
  {
    ++v14;
  }

LABEL_27:
  v16 = *(a1 + 292);
  if (v16 == 3)
  {
    v16 = 4;
    if (*(a1 + 294))
    {
      *(a1 + 292) = 4;
    }
  }

  v17 = *(a1 + 252);
  v18 = *(a1 + 244);
  if (!v17)
  {
    v17 = v18 * v14 * ((*(a1 + 256) + 7) >> 3);
    *(a1 + 252) = v17;
  }

  v19 = *(a1 + 248);
  if (!v18 || !v19 || (v20 = *(a1 + 258), !*(a1 + 258)) || (v21 = *(a1 + 256), !*(a1 + 256)) || !v17)
  {
    _cg_jpeg_mem_term("prepareGeometry", 1053, "*** input-size: %d x %d   rb: %d    bpp: %d      bpc: %d\n", v18, v19, v17, *(a1 + 258), *(a1 + 256));
    v34 = 4294967246;
    goto LABEL_55;
  }

  v22 = *(a1 + 260);
  if (!*(a1 + 260))
  {
    v22 = v20 / v21;
    *(a1 + 260) = v20 / v21;
  }

  v23 = *(a1 + 276);
  if (!v23)
  {
    *(a1 + 276) = v18;
    v23 = v18;
  }

  v24 = *(a1 + 280);
  if (!v24)
  {
    *(a1 + 280) = v19;
    v24 = v19;
  }

  v25 = *(a1 + 288);
  if (!*(a1 + 288))
  {
    *(a1 + 288) = v21;
    v25 = v21;
  }

  v26 = *(a1 + 290);
  if (!*(a1 + 290))
  {
    *(a1 + 290) = v20;
    v26 = v20;
  }

  if (!v16)
  {
    *(a1 + 292) = v22;
  }

  v27 = *(a1 + 296);
  v28 = *(a1 + 294);
  if (!((*(a1 + 295) << 12) | (v27 << 16) | ((*(a1 + 297) != 0) << 8) | v28))
  {
    v29 = *(a1 + 264);
    v30 = *(a1 + 263);
    v31 = *(a1 + 265) != 0;
    v28 = *(a1 + 262) & 0x1F;
    *(a1 + 294) = v28;
    *(a1 + 295) = v30 & 7;
    v27 = v29 & 0xF | (v30 >> 4);
    *(a1 + 296) = v27;
    *(a1 + 297) = v31;
  }

  v32 = (((v26 + 7) >> 3) * v23 + 3) & 0xFFFFFFFC;
  if (*(a1 + 332) > 1u)
  {
    v33 = *(a1 + 284);
    if (v33 < v32)
    {
      if (v32 <= v17)
      {
        v33 = v17;
      }

      else
      {
        v33 = (((v26 + 7) >> 3) * v23 + 3) & 0xFFFFFFFC;
      }

      *(a1 + 284) = v33;
    }
  }

  else if (*(a1 + 377) == 1)
  {
    *(a1 + 284) = v17;
    v33 = v17;
  }

  else
  {
    v33 = *(a1 + 284);
    if (v33 < v32)
    {
      *(a1 + 284) = v32;
      v33 = (((v26 + 7) >> 3) * v23 + 3) & 0xFFFFFFFC;
    }
  }

  *&v73 = v23;
  *(&v73 + 1) = v24;
  *&v74 = v25;
  *(&v74 + 1) = v26;
  *&v75 = v33;
  DWORD2(v75) = *(a1 + 340);
  *&v76 = *(a1 + 160);
  v36 = *(a1 + 184);
  if (v36 == 0.0)
  {
    v36 = *(a1 + 356);
  }

  *(&v76 + 2) = v36;
  v37 = *(a1 + 188);
  if (v37)
  {
    *v7.i32 = v37;
  }

  else
  {
    v7.i32[0] = *(a1 + 352);
  }

  HIDWORD(v76) = v7.i32[0];
  LODWORD(v77) = v28;
  DWORD1(v77) = v27 << 16;
  v7.i32[0] = *(a1 + 372);
  v38 = vmovl_u8(v7).u64[0];
  v39.i32[0] = vrev32_s16(v38).u32[0];
  v39.i32[1] = v38.i32[1];
  DWORD2(v77) = vuzp1_s8(v39, v38).u32[0];
  if (!v22)
  {
    *(a1 + 260) = v20 / v21;
  }

  v40 = *(a1 + 16);
  if (!v40)
  {
    goto LABEL_100;
  }

  IIOImagePlus::setReadPlugin(v40, a1);
  v41 = *(a1 + 16);
  v69 = v75;
  v70 = v76;
  v71 = v77;
  v67 = v73;
  v68 = v74;
  IIOImagePlus::setGeometry(v41, a2, &v67);
  if ((gIIODebugFlags & 0x30000) == 0)
  {
    goto LABEL_100;
  }

  v42 = *(a1 + 220);
  v43 = v42 >> 24;
  if ((v42 >> 24) <= 0x7F)
  {
    v44 = *(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000;
  }

  else
  {
    v44 = __maskrune(v43, 0x40000uLL);
    v42 = *(a1 + 220);
  }

  if (v44)
  {
    v45 = (v42 >> 24);
  }

  else
  {
    v45 = 46;
  }

  v46 = v42 << 8 >> 24;
  if (v46 <= 0x7F)
  {
    v47 = *(MEMORY[0x1E69E9830] + 4 * v46 + 60) & 0x40000;
  }

  else
  {
    v47 = __maskrune(v46, 0x40000uLL);
    v42 = *(a1 + 220);
  }

  if (v47)
  {
    v48 = (v42 << 8 >> 24);
  }

  else
  {
    v48 = 46;
  }

  v49 = v42 >> 8;
  if (v49 <= 0x7F)
  {
    v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
  }

  else
  {
    v50 = __maskrune(v49, 0x40000uLL);
    v42 = *(a1 + 220);
  }

  if (v50)
  {
    v51 = (v42 >> 8);
  }

  else
  {
    v51 = 46;
  }

  if (v42 <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v42 + 60) & 0x40000) != 0)
    {
      goto LABEL_92;
    }

LABEL_94:
    v52 = 46;
    goto LABEL_95;
  }

  if (!__maskrune(v42, 0x40000uLL))
  {
    goto LABEL_94;
  }

LABEL_92:
  v52 = *(a1 + 220);
LABEL_95:
  ImageIOLog("♦️  '%c%c%c%c' IIOReadPlugin::prepareGeometry\n", v45, v48, v51, v52);
  IIOReadPlugin::debugGeometry(a1, &v73, v72);
  v53 = *(a1 + 160);
  if (!v53)
  {
LABEL_100:
    v34 = 0;
    goto LABEL_55;
  }

  v34 = CFCopyDescription(v53);
  if (v34)
  {
    v67 = 0uLL;
    *&v68 = 0;
    IIOString::IIOString(&v67, v34);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      v54 = IIOString::utf8String(&v67);
      ImageIOLog("♦️  colorspace: %s\n", v54);
    }

    CFRelease(v34);
    IIOString::~IIOString(&v67);
    goto LABEL_100;
  }

LABEL_55:
  IIODictionary::~IIODictionary(v72);
  return v34;
}