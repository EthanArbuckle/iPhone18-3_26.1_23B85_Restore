void IIODetermineHEIFSupport(void)
{
  IIO_LoadCMPhotoSymbols();
  if (gHEIFDecoderEncoderCheckInitOnce != -1)
  {
    IIODetermineHEIFSupport();
  }
}

void ___Z23IIODetermineHEIFSupportv_block_invoke()
{
  if (gFunc_CMPhotoDecompressionSupportedForContainerAndCodec)
  {
    v10 = 0;
    if (gFunc_CMPhotoDecompressionSupportedForContainerAndCodec(0, 1785750887, 0, &v10))
    {
      v0 = 1;
    }

    else
    {
      v0 = v10 == 0;
    }

    if (!v0)
    {
      gHEIF_JPEG_DecodingSupported = 1;
    }

    if (gFunc_CMPhotoDecompressionSupportedForContainerAndCodec(0, 1752589105, 0, &v10))
    {
      v1 = 1;
    }

    else
    {
      v1 = v10 == 0;
    }

    if (!v1)
    {
      gHEIF_HEVC_DecodingSupported = 1;
    }

    if (gFunc_CMPhotoDecompressionSupportedForContainerAndCodec(0, 1635148593, 0, &v10))
    {
      v2 = 1;
    }

    else
    {
      v2 = v10 == 0;
    }

    if (!v2)
    {
      gHEIF_AVCI_DecodingSupported = 1;
    }

    if (gFunc_CMPhotoDecompressionSupportedForContainerAndCodec(0, 1635135537, 0, &v10))
    {
      v3 = 1;
    }

    else
    {
      v3 = v10 == 0;
    }

    if (!v3)
    {
      gHEIF_AVIF_DecodingSupported = 1;
    }

    v4 = gFunc_CMPhotoDecompressionSupportedForContainerAndCodec(2, 1786276963, 0, &v10);
    v5 = v10;
    if (!(v4 | v10))
    {
      v4 = gFunc_CMPhotoDecompressionSupportedForContainerAndCodec(2, 1786276896, 0, &v10);
      v5 = v10;
    }

    if (!v4 && v5)
    {
      gHEIF_JPEGXL_DecodingSupported = 1;
    }

    if (!gFunc_CMPhotoDecompressionSupportedForContainerAndCodec(3, 1684237600, 0, &v10) && v10)
    {
      gHEIF_DICOM_DecodingSupported = 1;
    }
  }

  if (gFunc_CMPhotoCompressionSupportedForContainerAndCodec)
  {
    v11 = 0;
    if (gFunc_CMPhotoCompressionSupportedForContainerAndCodec(0, 1785750887, 0, &v11))
    {
      v6 = 1;
    }

    else
    {
      v6 = v11 == 0;
    }

    if (!v6)
    {
      gHEIF_JPEG_EncodingSupported = 1;
    }

    if (gFunc_CMPhotoCompressionSupportedForContainerAndCodec(0, 1752589105, 0, &v11))
    {
      v7 = 1;
    }

    else
    {
      v7 = v11 == 0;
    }

    if (!v7)
    {
      gHEIF_HEVC_EncodingSupported = 1;
    }

    if (gFunc_CMPhotoCompressionSupportedForContainerAndCodec(0, 1635148593, 0, &v11))
    {
      v8 = 1;
    }

    else
    {
      v8 = v11 == 0;
    }

    if (!v8)
    {
      gHEIF_AVCI_EncodingSupported = 1;
    }

    if (gFunc_CMPhotoCompressionSupportedForContainerAndCodec(0, 1635135537, 0, &v11))
    {
      v9 = 1;
    }

    else
    {
      v9 = v11 == 0;
    }

    if (!v9)
    {
      gHEIF_AV1_EncodingSupported = 1;
    }
  }
}

const char *___ZN17IIO_ReaderHandler12UseAppleJPEGEv_block_invoke()
{
  result = getenv("ImageIO_Use_AppleJPEG");
  if (result)
  {
    result = atoi(result);
    IIO_ReaderHandler::UseAppleJPEG(void)::gUseAppleJPEGPlugin = result != 0;
  }

  return result;
}

void IIOArray::IIOArray(IIOArray *this, CFTypeRef cf)
{
  *this = &unk_1EF4D4210;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFArrayGetTypeID())
    {
      v5 = CFRetain(cf);
      v6 = 0;
      *(this + 1) = v5;
    }

    else
    {
      IIOLogTypeMismatch(cf, "IIOArray", "CFArrayRef");
      v6 = 0;
      *(this + 1) = 0;
    }
  }

  else
  {
    *(this + 1) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v6 = 1;
  }

  *(this + 16) = v6;
}

{
  *this = &unk_1EF4D4210;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 != CFArrayGetTypeID())
    {
      IIOLogTypeMismatch(cf, "IIOArray", "CFArrayRef");
      v6 = 0;
      *(this + 1) = 0;
      goto LABEL_7;
    }

    Mutable = CFRetain(cf);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  }

  *(this + 1) = Mutable;
  v6 = 1;
LABEL_7:
  *(this + 16) = v6;
}

CGImageSourceRef CGImageSourceCreateWithURL(CFURLRef url, CFDictionaryRef options)
{
  v7[131] = *MEMORY[0x1E69E9840];
  IIOInitDebugFlags();
  kdebug_trace();
  if (url)
  {
    v4 = CFGetTypeID(url);
    if (v4 == CFURLGetTypeID())
    {
      if (options)
      {
        v5 = CFGetTypeID(options);
        if (v5 != CFDictionaryGetTypeID())
        {
          LogError("CGImageSourceCreateWithURL", 4664, "*** ERROR: CGImageSourceCreateWithURL: options parameter is not a CFDictionaryRef - ignoring\n");
          options = 0;
        }
      }

      memset(v7, 0, 24);
      IIODictionary::IIODictionary(v7, options, 1);
      operator new();
    }

    CGImageSourceCreateWithURL_cold_1();
  }

  else
  {
    CGImageSourceCreateWithURL_cold_2();
  }

  kdebug_trace();
  kdebug_trace();
  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCreateWithURL", 4710, "could not create CGImageSourceRef");
  }

  return 0;
}

void sub_185E76B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    MEMORY[0x186602850](v13, 0x10E1C4080364B91);
    IIODictionary::~IIODictionary(&a13);
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x185E76A6CLL);
  }

  _Unwind_Resume(exception_object);
}

void IIOImageSource::IIOImageSource(IIOImageSource *this, const __CFURL *a2, IIODictionary *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  *this = &unk_1EF4D46B0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  IIOImageSource::setup(this, 3);
  if (a3)
  {
    *(this + 104) = IIOImageSource::extractOptions(this, a3);
  }

  v6 = IIO_CFURLCopyResolvedFileSystemPath(a2);
  v7 = CFURLCopyPathExtension(a2);
  v8 = v7;
  if ((gIIODebugFlags & 0x10000000) != 0 && v6)
  {
    bzero(__filename, 0x400uLL);
    if (_CFStringGetFileSystemRepresentation())
    {
      memset(&v30, 0, sizeof(v30));
      stat(__filename, &v30);
      st_size = v30.st_size;
      v10 = malloc_type_malloc(v30.st_size, 0xA0E0537FuLL);
      if (v10)
      {
        v11 = fopen(__filename, "r");
        if (v11)
        {
          if (fread(v10, 1uLL, st_size, v11) == st_size)
          {
            v12 = CFDataCreate(0, v10, st_size);
            if (v12)
            {
              ImageIO_saveImageData("CGImageSourceCreateWithURL", v12);
              CFRelease(v12);
            }
          }

          fclose(v11);
        }

        free(v10);
      }
    }

    goto LABEL_14;
  }

  if (v6)
  {
LABEL_14:
    *__filename = 0;
    v32 = 0;
    v33 = 0;
    IIOString::IIOString(__filename, v6);
    propertyValueTypeRefPtr = *MEMORY[0x1E695E4C0];
    v13 = propertyValueTypeRefPtr;
    v14 = CFURLCopyResourcePropertyForKey(a2, *MEMORY[0x1E695EB68], &propertyValueTypeRefPtr, 0);
    v15 = propertyValueTypeRefPtr;
    if (v13 == propertyValueTypeRefPtr)
    {
      v14 = CFURLCopyResourcePropertyForKey(a2, *MEMORY[0x1E695EB78], &propertyValueTypeRefPtr, 0);
      v15 = propertyValueTypeRefPtr;
    }

    if (v13 == v15)
    {
      memset(&v30, 0, 24);
      IIOString::IIOString(&v30, v6);
      v21 = IIOString::utf8String(&v30);
      LogError("IIOImageSource", 547, "*** ERROR: can't open '%s'  (fileExists == false)\n", v21);
      *(this + 104) = -1;
      IIOString::~IIOString(&v30);
    }

    else
    {
      if (!*(this + 7))
      {
        ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v14);
        v17 = IIO_ReaderHandler::readerForPathExtension(ReaderHandler, v8);
        v18 = v17;
        if (!v17 || (v19 = IIO_Reader::utType(v17), CFStringCompare(v19, @"public.tiff", 0)))
        {
          IIOImageSource::setHintReader(this, v18);
        }
      }

      v20 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v6, kCFURLPOSIXPathStyle, 0);
      if (v20)
      {
        IIOImageSource::updateMemoryMapFlagForProtectionClass(this, __filename);
        *(this + 2) = CGImageReadCreateWithURL(*(this + 1), v20, 1, *(this + 48), *(this + 49));
        CFRelease(v20);
      }

      else
      {
        _cg_jpeg_mem_term("IIOImageSource", 578, "CGImageReadCreateWithURL returned nil.\n");
        *(this + 104) = -3;
      }
    }

    IIOString::~IIOString(__filename);
    CFRelease(v6);
    goto LABEL_26;
  }

  if (!*(this + 7))
  {
    v22 = IIO_ReaderHandler::GetReaderHandler(v7);
    v23 = IIO_ReaderHandler::readerForPathExtension(v22, v8);
    IIOImageSource::setHintReader(this, v23);
  }

  v24 = IIOCreateDataWithContentsOfURL(a2);
  if (v24)
  {
    *(this + 2) = CGImageReadCreateWithData(*(this + 1), v24, 1);
    CFRelease(v24);
  }

  else
  {
    v25 = CFURLCopyScheme(a2);
    v26 = v25;
    if (!v25)
    {
      goto LABEL_37;
    }

    v27 = CFStringCompare(v25, @"assets-library", 0);
    if (v27 == kCFCompareEqualTo)
    {
      LogError("IIOImageSource", 607, "*** ERROR: cannot handle this URL ('assets-library' scheme is not supported).\n");
    }

    CFRelease(v26);
    if (v27 == kCFCompareEqualTo)
    {
      v28 = -2;
    }

    else
    {
LABEL_37:
      _cg_jpeg_mem_term("IIOImageSource", 618, "*** ERROR: IIOCreateDataWithContentsOfURL returned nil.\n");
      v28 = -4;
    }

    *(this + 104) = v28;
  }

LABEL_26:
  if (v8)
  {
    CFRelease(v8);
  }
}

void sub_185E76FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  v34 = *v32;
  if (*v32)
  {
    *(v30 + 208) = v34;
    operator delete(v34);
  }

  v35 = *v31;
  if (*v31)
  {
    *(v30 + 152) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(exception_object);
}

CFStringRef IIO_CFURLCopyResolvedFileSystemPath(const __CFURL *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = CFURLCopyScheme(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFStringCompare(v2, @"file", 0);
  CFRelease(v3);
  if (v4)
  {
    return 0;
  }

  v6 = CFURLCopyAbsoluteURL(a1);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = CFURLCopyFileSystemPath(v6, kCFURLPOSIXPathStyle);
  CFRelease(v7);
  return v8;
}

void IIOString::IIOString(IIOString *this, CFTypeRef cf)
{
  *this = &unk_1EF4D41F0;
  *(this + 1) = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      *(this + 2) = CFRetain(cf);
      return;
    }

    IIOLogTypeMismatch(cf, "IIOString", "CFStringRef");
  }

  *(this + 2) = &stru_1EF50EA10;
  CFRetain(&stru_1EF50EA10);
}

IIO_Reader *IIO_ReaderHandler::readerForPathExtension(IIO_ReaderHandler *this, CFStringRef theString)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = xmmword_186224392;
  v7 = 0;
  if (theString && CFStringGetCString(theString, &v6 + 1, 15, 0x600u))
  {
    if (!strcasecmp(&v6, ".tif"))
    {
      return IIO_ReaderHandler::readerForUTType(this, @"public.tiff");
    }

    v4 = *(this + 2);
    v3 = *(this + 3);
    while (v4 != v3)
    {
      if ((*(**v4 + 144))(*v4, &v6))
      {
        return *v4;
      }

      ++v4;
    }
  }

  return 0;
}

uint64_t ___ZN12IIOImageRead13CreateWithURLEPK7__CFURLPK10__CFStringPhbbb_block_invoke()
{
  result = IOPreferencesGetBoolean("ImageIO_TrustSystemPathURLs", 0, 0);
  IIOImageRead::CreateWithURL(__CFURL const*,__CFString const*,unsigned char *,BOOL,BOOL,BOOL)::useSystemPath = result;
  return result;
}

uint64_t __CGImageSourceGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImageSourceGetTypeID::id = result;
  return result;
}

uint64_t IOPreferencesGetBoolean(const char *a1, uint64_t a2, BOOL *a3)
{
  v6 = getenv(a1);
  if (v6)
  {
    v7 = v6;
    if (!strcasecmp(v6, "YES"))
    {
      v13 = 1;
      a2 = 1;
    }

    else
    {
      a2 = strcasecmp(v7, "NO") && atoi(v7) != 0;
      v13 = 1;
    }

    goto LABEL_28;
  }

  v8 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a1, 0x600u);
  if (!v8)
  {
    v13 = 0;
    goto LABEL_28;
  }

  v9 = v8;
  v10 = CFPreferencesCopyAppValue(v8, *MEMORY[0x1E695E8A8]);
  if (!v10)
  {
    v10 = CFPreferencesCopyValue(v9, @"com.apple.ImageIO", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    if (!v10)
    {
      v13 = 0;
      goto LABEL_27;
    }
  }

  v11 = v10;
  v12 = CFGetTypeID(v10);
  if (v12 != CFBooleanGetTypeID())
  {
    if (v12 == CFNumberGetTypeID())
    {
      if (!CFNumberIsFloatType(v11))
      {
        valuePtr = 0;
        CFNumberGetValue(v11, kCFNumberIntType, &valuePtr);
        a2 = valuePtr != 0;
        goto LABEL_10;
      }
    }

    else if (v12 == CFStringGetTypeID())
    {
      v13 = 1;
      if (CFStringCompare(v11, @"YES", 1uLL))
      {
        v13 = 1;
        if (CFStringCompare(v11, @"NO", 1uLL) == kCFCompareEqualTo)
        {
          a2 = 0;
          goto LABEL_26;
        }

        v13 = 1;
        if (CFStringCompare(v11, @"1", 1uLL))
        {
          v14 = CFStringCompare(v11, @"0", 1uLL);
          v13 = v14 == kCFCompareEqualTo;
          if (v14)
          {
            a2 = a2;
          }

          else
          {
            a2 = 0;
          }

          goto LABEL_26;
        }
      }

      a2 = 1;
      goto LABEL_26;
    }

    v13 = 0;
    goto LABEL_26;
  }

  a2 = v11 == *MEMORY[0x1E695E4D0];
LABEL_10:
  v13 = 1;
LABEL_26:
  CFRelease(v11);
LABEL_27:
  CFRelease(v9);
LABEL_28:
  if (a3)
  {
    *a3 = v13;
  }

  return a2;
}

const char *CGImageReadCreateImageBlockCache(cache_s **cache_out)
{
  result = cache_create("com.apple.ImageIO.imageblockcache", &ImageIOCacheAttributes, cache_out);
  if ((~gIIODebugFlags & 0x300) == 0)
  {
    return ImageIOLog("    cache_create 'com.apple.ImageIO.imageblockcache' %p\n", cache_out);
  }

  return result;
}

uint64_t __CGImageReadGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImageReadGetTypeID::id = result;
  return result;
}

uint64_t __CGImageReadSessionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImageReadSessionGetTypeID::id = result;
  return result;
}

uint64_t __CGImagePlusGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CGImagePlusGetTypeID::id = result;
  return result;
}

uint64_t IIOSkipXMP_and_IPTC(IIODictionary *a1)
{
  if (!IIOMetadataParsingEnabledFlag())
  {
    return 1;
  }

  result = IIOSkipMetadata(a1);
  if (a1)
  {
    if ((result & 1) == 0)
    {
      result = IIODictionary::getBoolForKey(a1, @"kCGImageSourceSkipXMPMetadata");
      if (result)
      {
        if ((gIIODebugFlags & 0x4000000000000) != 0)
        {
          if (IIO_OSAppleInternalBuild())
          {
            ImageIOLog("••• Ⓜ️  kCGImageSourceSkipXMPMetadata --> skipping XMP+IPTC\n");
          }
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t __CGImageMetadataGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  _MergedGlobals_1 = result;
  return result;
}

void IIO_ReaderHandler::buildPluginList(IIO_ReaderHandler *this)
{
  v7 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2000000000;
  v6[3] = 0;
  IIOInitDebugFlags();
  if (IIO_OSAppleInternalBuild() && (dyld_process_is_restricted() & 1) == 0)
  {
    v1 = getenv("RAWCAMERA_BUNDLE_PATH");
  }

  else
  {
    v1 = 0;
  }

  if ((gIIODebugFlags & 0x8000000) == 0)
  {
    if (v1 && (v2 = dlopen(v1, 257)) != 0 || (v2 = dlopen("/System/Library/CoreServices/RawCamera.bundle/RawCamera", 257)) != 0 || (v2 = dlopen("/System/Library/CoreServices/RawCamera.bundle/Contents/MacOS/RawCamera", 257)) != 0)
    {
      v3 = dlsym(v2, RawCamera_CopyRawPluginsInfoArray);
      if (v3)
      {
        if ((v3)(0, 0))
        {
          operator new();
        }
      }

      else
      {
        v4 = dlerror();
        LogError("buildPluginList", 850, "*** ERROR: failed to lookup 'CopyRawPluginsInfoArray' - '%s'\n", v4);
      }

      gReadMakerNoteProps = dlsym(v2, "ReadMakerNoteProps");
    }

    else
    {
      v5 = dlerror();
      LogError("buildPluginList", 831, "*** ERROR: failed to load 'RawCamera' bundle: '%s'\n", v5);
    }
  }

  if (IIO_ReaderHandler::UseAppleJPEG(void)::appleJPEGCheck != -1)
  {
    IIO_ReaderHandler::buildPluginList();
  }

  if (IIO_ReaderHandler::UseAppleJPEG(void)::gUseAppleJPEGPlugin == 1)
  {
    CreateReader_AppleJPEG();
  }

  CreateReader_LibJPEG();
}

void IIO_ReaderHandler::IIO_ReaderHandler(IIO_ReaderHandler *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 18) = 1065353216;
  *this = &unk_1EF4DA608;
  *(this + 1) = 0;
  *(this + 20) = 0;
  CFAbsoluteTimeGetCurrent();
  IIO_ReaderHandler::buildPluginList(this);
}

void sub_185E7A1C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__hash_table<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::__unordered_map_hasher<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::hash<IIO_Reader *>,std::equal_to<IIO_Reader *>,true>,std::__unordered_map_equal<IIO_Reader *,std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>,std::equal_to<IIO_Reader *>,std::hash<IIO_Reader *>,true>,std::allocator<std::__hash_value_type<IIO_Reader *,IIO_ReaderHandler::QueuePool>>>::~__hash_table(v4 + 40);
  std::vector<std::unique_ptr<IIO_Reader>>::__destroy_vector::operator()[abi:fe200100](va);
  _Unwind_Resume(a1);
}

void IIO_Reader::IIO_Reader(IIO_Reader *this, const __CFString *const *a2, const char *a3, int a4, uint64_t a5, uint64_t a6)
{
  *this = &unk_1EF4D4D80;
  *(this + 1) = a2;
  *(this + 2) = a3;
  *(this + 6) = a4;
  *(this + 4) = a5;
  *(this + 5) = a6;
  *(this + 48) = 1;
}

uint64_t std::__split_buffer<std::unique_ptr<IIO_Reader>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<IIO_Reader>>::__destruct_at_end[abi:fe200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void IIOReader_RawCamera::IIOReader_RawCamera(IIOReader_RawCamera *this, IIODictionary *a2)
{
  IIO_Reader::IIO_Reader(this);
  *v4 = &unk_1EF4D5CF8;
  if (a2)
  {
    *(this + 48) = 1;
    ObjectForKey = IIODictionary::getObjectForKey(a2, @"UTType");
    *(this + 7) = ObjectForKey;
    CFRetain(ObjectForKey);
    *(this + 1) = this + 56;
    v6 = IIODictionary::getObjectForKey(a2, @"Extensions");
    *(this + 8) = v6;
    CFRetain(v6);
    *(this + 2) = CFStringGetCStringPtr(*(this + 8), 0x8000100u);
    *(this + 6) = IIODictionary::getUint32ForKey(a2, @"OSType");
    *(this + 4) = IIODictionary::getUint32ForKey(a2, @"TestHeaderSize");
    *(this + 5) = IIODictionary::getUint32ForKey(a2, @"MinimumFileSize");
    *(this + 9) = IIODictionary::getUint64ForKey(a2, @"TestHeaderProc");
    *(this + 10) = IIODictionary::getUint64ForKey(a2, @"AddSourcePropsProc");
    *(this + 11) = IIODictionary::getUint64ForKey(a2, @"ImageCountProc");
    *(this + 12) = IIODictionary::getUint64ForKey(a2, @"CompareOptsProc");
    *(this + 13) = IIODictionary::getUint64ForKey(a2, @"InitImageProc");
    *(this + 14) = IIODictionary::getUint64ForKey(a2, @"InitThumbnailProc");
    *(this + 15) = IIODictionary::getUint64ForKey(a2, @"CopyAuxiliaryDataProc");
    if (!*(this + 6))
    {
      v7 = IIOGetOSTypeForRAWType(**(this + 1));
      *(this + 6) = v7;
      if (v7 == 1970170734)
      {
        IIOString::IIOString(v9, **(this + 1));
        v8 = IIOString::utf8String(v9);
        LogError("IIOReader_RawCamera", 63, "*** ERROR: new/unknown RAW file format detected: '%s' - please update plugin table\n", v8);
        IIOString::~IIOString(v9);
        *(this + 6) = 1380006201;
      }
    }
  }
}

void IIO_Reader::IIO_Reader(IIO_Reader *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1EF4D4D80;
  *(this + 6) = 538976288;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
}

const __CFNumber *IIODictionary::getUint64ForKey(IIODictionary *this, const __CFString *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v2, a2);
  IIONumber::IIONumber(v6, Value);
  v4 = IIONumber::uint64Num(v6);
  IIONumber::~IIONumber(v6);
  return v4;
}

void sub_185E7A568(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIOGetOSTypeForRAWType(CFStringRef theString1)
{
  v2 = "10AR@";
  v3 = 30;
  while (CFStringCompare(theString1, **(v2 - 1), 0))
  {
    v2 += 24;
    if (!--v3)
    {
      return 1970170734;
    }
  }

  return *v2;
}

uint64_t IIOArray::enumerate(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return IIOArrayEnumerateUsingBlock(result, a2);
  }

  return result;
}

void ___ZN17IIO_ReaderHandler15buildPluginListEv_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  memset(v2, 0, sizeof(v2));
  IIODictionary::IIODictionary(v2, a2);
  if (IIODictionary::getBoolForKey(v2, @"IsPreTiff"))
  {
    operator new();
  }

  IIODictionary::~IIODictionary(v2);
}

void sub_185E7A904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x186602850](v9, 0x10F1C409D307853);
  IIODictionary::~IIODictionary(&a9);
  _Unwind_Resume(a1);
}

uint64_t IIO_ReaderHandler::copySupportedTypes(IIO_ReaderHandler *this)
{
  if ((IIO_XPCServer() & 1) == 0)
  {
    v1 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
    if (v1)
    {
      v2 = v1;
      v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.imageio.allowabletypes", 0);
      if (v3)
      {
        v4 = v3;
        v5 = CFGetTypeID(v3);
        if (v5 == CFArrayGetTypeID())
        {
          operator new();
        }

        CFRelease(v4);
      }

      CFRelease(v2);
    }
  }

  return 0;
}

void sub_185E7B0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

uint64_t CreateReader_AVCI(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_AVCI_DecodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateReader_JPEGXL(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_JPEGXL_DecodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateReader_DICOM(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_DICOM_DecodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateReader_AVIF(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_AVIF_DecodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateReader_AVIS(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_AVIF_DecodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateReader_HEIC(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_HEVC_DecodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateReader_HEICS(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_HEVC_DecodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateReader_HEIC_JPEG(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_JPEG_DecodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateReader_HEIF(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_JPEG_DecodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

void ___ZN17IIO_ReaderHandler15buildPluginListEv_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  memset(v2, 0, sizeof(v2));
  IIODictionary::IIODictionary(v2, a2);
  if (!IIODictionary::getBoolForKey(v2, @"IsPreTiff"))
  {
    operator new();
  }

  IIODictionary::~IIODictionary(v2);
}

void sub_185E7BE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x186602850](v9, 0x10F1C409D307853);
  IIODictionary::~IIODictionary(&a9);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_3_2(void *value)
{

  CFArrayAppendValue(v1, value);
}

uint64_t OUTLINED_FUNCTION_3_10(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4, tm *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, __int128 a14, __int128 a15, uint64_t a16)
{
  *(v16 - 24) = 0;
  a16 = 0;
  a14 = 0u;
  a15 = 0u;
  a13 = 0u;

  return GetDateTimeStructFromXMPDateTimeString(a1, &a13, 0, 0);
}

uint64_t OUTLINED_FUNCTION_3_12()
{
  v5 = *(v0 + 24);
  v6 = *(v0 + 208) + v3 * v1;

  return IIOImageReadSession::getBytesAtOffset(v5, v2, v6, v1);
}

uint64_t IIOReadPlugin::toggleCacheKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 322) != 32 || *(a1 + 320) != 8 || *(a1 + 336) != 1 || *(a1 + 244) != *(a1 + 308) || *(a1 + 248) != *(a1 + 312))
  {
    return 0;
  }

  result = 0;
  v4 = 1111970369;
  v5 = *(a2 + 24);
  if (v5 > 1380401728)
  {
    if (v5 != 1380401729)
    {
      if (v5 != 1380401752)
      {
        return result;
      }

      v4 = 1111970392;
    }
  }

  else if (v5 == 1111970369)
  {
    v4 = 1380401729;
  }

  else
  {
    if (v5 != 1111970392)
    {
      return result;
    }

    v4 = 1380401752;
  }

  if ((gIIODebugFlags & 0x300) != 0)
  {
    v6 = MEMORY[0x1E69E9830];
    if ((*(MEMORY[0x1E69E9830] + 4 * (v5 >> 24) + 60) & 0x40000) != 0)
    {
      v7 = HIBYTE(*(a2 + 24));
    }

    else
    {
      v7 = 46;
    }

    v8 = (v5 << 8) >> 24;
    if (v8 <= 0x7F)
    {
      v9 = *(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000;
    }

    else
    {
      v9 = __maskrune(v8, 0x40000uLL);
      LODWORD(v5) = *(a2 + 24);
    }

    if (v9)
    {
      v10 = ((v5 << 8) >> 24);
    }

    else
    {
      v10 = 46;
    }

    v11 = v5 >> 8;
    if (v11 <= 0x7F)
    {
      v12 = *(v6 + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v11, 0x40000uLL);
      LODWORD(v5) = *(a2 + 24);
    }

    if (v12)
    {
      v13 = (v5 >> 8);
    }

    else
    {
      v13 = 46;
    }

    if (v5 <= 0x7F)
    {
      v14 = *(v6 + 4 * v5 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v5, 0x40000uLL);
    }

    v15 = 46;
    if (v14)
    {
      v16 = *(a2 + 24);
    }

    else
    {
      v16 = 46;
    }

    LODWORD(v17) = HIBYTE(v4);
    v18 = v6 + 60;
    if ((*(v6 + 60 + 4 * HIBYTE(v4)) & 0x40000) != 0)
    {
      v17 = v17;
    }

    else
    {
      v17 = 46;
    }

    LODWORD(v19) = (v4 >> 8) & 0x52;
    v20 = (*(v18 + 4 * v19) & 0x40000) == 0;
    v21 = *(v18 + 4 * (v4 & 0x59));
    if (v20)
    {
      v19 = 46;
    }

    else
    {
      v19 = v19;
    }

    if ((v21 & 0x40000) != 0)
    {
      v22 = v4 & 0x59;
    }

    else
    {
      v22 = 46;
    }

    if ((*(v6 + 344) & 0x40000) != 0)
    {
      v15 = 71;
    }

    ImageIOLog("::: found '%c%c%c%c' - checking alternate '%c%c%c%c'\n", v7, v10, v13, v16, v17, v15, v19, v22);
  }

  *(a2 + 24) = v4;
  return 1;
}

void IIOImageReadSession::IIOImageReadSession(IIOImageReadSession *this, IIOImageRead *a2)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = &unk_1EF4D8A90;
  *(this + 1) = 0;
  *(this + 4) = a2;
  *(this + 5) = 0;
  *(this + 6) = this;
  *(this + 7) = this;
}

const char *ImageIORecordMemory(uint64_t a1, uint64_t a2)
{
  gImageIOBlockMemorySize += a2;
  if ((gIIODebugFlags & 3) != 0)
  {
    if (a2 < 1)
    {
      result = a2 < 0 ? ImageIOLog("ImageIO_Free:          %14p  [%12ld] total: %12ld  %s %s  %s:%d\n") : ImageIOLog("ImageIO_Malloc/Free:   %14p  [%12ld] total: %12ld  %s   %s:%d\n");
    }

    else
    {
      result = ImageIOLog("ImageIO_Malloc:        %14p  [%12ld] total: %12ld  %s  %s:%d\n");
    }

    if ((~gIIODebugFlags & 3) == 0)
    {

      return IIODebug_ShowBacktrace(2);
    }
  }

  return result;
}

uint64_t PNGReadPlugin::decodeImageImp(uint64_t a1, double *a2, int a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  seed = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v11 = *(a1 + 220);
    v12 = v11 >> 24;
    v13 = MEMORY[0x1E69E9830];
    if ((v11 >> 24) <= 0x7F)
    {
      v14 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v12, 0x40000uLL);
      v11 = *(a1 + 220);
    }

    if (v14)
    {
      v15 = (v11 >> 24);
    }

    else
    {
      v15 = 46;
    }

    v16 = v11 << 8 >> 24;
    if (v16 <= 0x7F)
    {
      v17 = *(v13 + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v16, 0x40000uLL);
      v11 = *(a1 + 220);
    }

    if (v17)
    {
      v18 = (v11 << 8 >> 24);
    }

    else
    {
      v18 = 46;
    }

    v19 = v11 >> 8;
    if (v19 <= 0x7F)
    {
      v20 = *(v13 + 4 * v19 + 60) & 0x40000;
    }

    else
    {
      v20 = __maskrune(v19, 0x40000uLL);
      v11 = *(a1 + 220);
    }

    if (v20)
    {
      v21 = (v11 >> 8);
    }

    else
    {
      v21 = 46;
    }

    if (v11 <= 0x7F)
    {
      if ((*(v13 + 4 * v11 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v11, 0x40000uLL))
    {
LABEL_22:
      v22 = *(a1 + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v15, v18, v21, v22, iioTypeStr[a3], "virtual OSStatus PNGReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v22 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(a1, a2);
  *(a1 + 224) = *(a2 + 9);
  *(a1 + 104) = 1;
  v23 = *(a1 + 464);
  if (v23 == 3)
  {
    v32 = *(a2 + 1);
    v33 = *(a2 + 2);
    v34 = a2[3];
    v35 = a2[4];
    v36 = a2[5];
    v37 = a2[6];
    v38 = a2[7];
    v39 = a2[8];
    _APP1XMP::getXmpData(a2);
    v30 = PNGReadPlugin::copyImageBlockSetAPNG(a1, v32, v33, v34, v35, v36, v37, v38, v39);
    goto LABEL_33;
  }

  if (v23 == 2)
  {
    _APP1XMP::getXmpData(a2);
    PNGReadPlugin::copyImageBlockSetInterlaced(a1);
    goto LABEL_31;
  }

  if (v23 != 1)
  {
LABEL_31:
    v31 = 0;
    goto LABEL_34;
  }

  v24 = *(a2 + 1);
  v25 = *(a2 + 2);
  v26 = a2[3];
  v27 = a2[4];
  v28 = a2[5];
  v29 = a2[6];
  _APP1XMP::getXmpData(a2);
  v30 = PNGReadPlugin::copyImageBlockSetStandard(a1, v24, v25, v26, v27, v28, v29);
LABEL_33:
  v31 = v30;
LABEL_34:
  if (a3 == 1)
  {
    if (v31 && CGImageBlockSetGetCount() == 1 || *(a1 + 104) == 1)
    {
      if (!a4)
      {
        goto LABEL_47;
      }

      if (!*a4)
      {
        goto LABEL_59;
      }

      if (!IOSurfaceLock(*a4, 0, 0))
      {
        BaseAddress = IOSurfaceGetBaseAddress(*a4);
        IOSurfaceGetWidth(*a4);
        Height = IOSurfaceGetHeight(*a4);
        BytesPerRow = IOSurfaceGetBytesPerRow(*a4);
        if (v31)
        {
          CGImageBlockSetGetImageBlock();
        }

        CGImageBlockGetRect();
        v45 = v44;
        v46 = CGImageBlockGetBytesPerRow();
        Data = CGImageBlockGetData();
        if (BytesPerRow == v46 && Height == v45)
        {
          memcpy(BaseAddress, Data, BytesPerRow * Height);
        }

        else
        {
          if (v46 >= BytesPerRow)
          {
            v48 = BytesPerRow;
          }

          else
          {
            v48 = v46;
          }

          for (; v45; --v45)
          {
            memcpy(BaseAddress, Data, v48);
            BaseAddress += BytesPerRow;
            Data += v46;
          }
        }

        IOSurfaceUnlock(*a4, 0, &seed);
LABEL_59:
        a4 = 0;
        if (!v31)
        {
          return a4;
        }

        goto LABEL_48;
      }
    }

    a4 = 4294967246;
  }

  else
  {
    a4 = 4294967246;
    if (a3 == 3 && a6)
    {
      a4 = 0;
      *a6 = v31;
      return a4;
    }
  }

LABEL_47:
  if (v31)
  {
LABEL_48:
    CGImageBlockSetRelease();
  }

  return a4;
}

void sub_185E7D080(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E7CEB8);
}

uint64_t IIOReadPlugin::allocateBlockArray(IIOReadPlugin *this, size_t size)
{
  v2 = size;
  v4 = *(this + 12);
  if (v4)
  {
    free(v4);
  }

  *(this + 12) = 0;
  v5 = *(this + 26);
  if (v5 != v2 || v5 == 0)
  {
    return 4294967246;
  }

  v7 = malloc_type_calloc(8uLL, v2, 0x2004093837F09uLL);
  result = 0;
  *(this + 12) = v7;
  return result;
}

uint64_t IIOReadPlugin::getCachedBlocks(IIOReadPlugin *this)
{
  v1 = *(this + 26);
  v112 = 0;
  v113[0] = 0;
  HIDWORD(v2) = 0;
  memset(v111, 0, 44);
  if (*(this + 12))
  {
    v4 = *(this + 62);
    if (v4 != 1 && (v4 > 9 || *(this + 61) >= 0xAu))
    {
      v6 = *(this + 28);
      v5 = *(this + 29);
      if (v6 < v5)
      {
        v87 = v1;
        v7 = MEMORY[0x1E695F050];
        while (1)
        {
          v8 = *(this + 101);
          if (v8)
          {
            *(this + 78) = v8;
          }

          else
          {
            v8 = *(this + 78);
          }

          *(this + 76) = v8 * v6;
          LODWORD(v2) = *(this + 75);
          v9 = (v8 * v6);
          v10 = v2;
          LODWORD(v2) = *(this + 77);
          v11 = v2;
          OUTLINED_FUNCTION_5();
          if (v14 ^ v15 | v50)
          {
            v16 = v12;
          }

          else
          {
            v16 = v13;
          }

          v17 = OUTLINED_FUNCTION_3_3();
          IIOReadPlugin::updateImageIOCacheKey(v18, v19, v20, v17, v21, v22, v23);
          if (IIOImageRead::getCachedImageBlockData(*(this + 4), v111, v113))
          {
            v24 = *(this + 4);
            v108[0] = MEMORY[0x1E69E9820];
            v108[1] = 0x40000000;
            v109 = v111[0];
            v108[2] = ___ZN13IIOReadPlugin15getCachedBlocksEv_block_invoke;
            v108[3] = &__block_descriptor_tmp_168_0;
            v108[4] = this;
            v110[0] = v111[1];
            *(v110 + 12) = *(&v111[1] + 12);
            IIOImageRead::enumerateCacheKeysWithBlock(v24, v108);
            v114.origin.x = OUTLINED_FUNCTION_3_3();
            ImageBlock = IIOReadPlugin::createImageBlock(v25, v26, v27, v114, v28, 1);
            OUTLINED_FUNCTION_6(ImageBlock);
            v115.origin.x = OUTLINED_FUNCTION_4();
            if (!CGRectEqualToRect(v115, *v7))
            {
              v116.origin.x = OUTLINED_FUNCTION_4();
              v119.origin.x = v10;
              v119.origin.y = v9;
              v119.size.width = v11;
              v119.size.height = v16;
              *&v2 = CGRectUnion(v116, v119);
              v10 = *&v2;
              v9 = v30;
              v11 = v31;
              v16 = v32;
            }

            *(this + 15) = v10;
            *(this + 16) = v9;
            *(this + 17) = v11;
            *(this + 18) = v16;
            if ((gIIODebugFlags & 0x300) == 0x100 || (gIIODebugFlags & 0x400000000000) != 0)
            {
              OUTLINED_FUNCTION_0_11();
              ImageIOLog("::: cache  hit:      rect=(%5d, %5d, %5d, %5d)   rb=%d   imageData=%p\n");
            }
          }

          else if (IIOReadPlugin::toggleCacheKey(this, v111))
          {
            v33 = *(this + 436);
            *(this + 436) = v33 != 1;
            CachedImageBlockData = IIOImageRead::getCachedImageBlockData(*(this + 4), v111, v113);
            *(this + 436) = v33;
            if (!CachedImageBlockData)
            {
              v1 = v87;
              goto LABEL_107;
            }

            LODWORD(v11) = *(this + 75);
            LODWORD(v35) = *(this + 76);
            v36 = v35;
            LODWORD(v16) = *(this + 77);
            OUTLINED_FUNCTION_5();
            if (v14 ^ v15 | v50)
            {
              v40 = v38;
            }

            else
            {
              v40 = v39;
            }

            v41 = *(this + 79) * v37;
            v42 = _ImageIO_Malloc(v41, *(this + 52), &v112, "ImageIOGetCachedBlocks", 0, 0);
            if (v42)
            {
              v43 = v42;
              v44 = *(this + 78);
              src.data = v113[0];
              src.height = v44;
              v45 = *(this + 79);
              src.width = *(this + 77);
              src.rowBytes = v45;
              dest.data = v42;
              dest.height = v44;
              dest.width = src.width;
              dest.rowBytes = v45;
              *permuteMap = 50331906;
              PluginType = IIOImagePlus::readPluginType(*(this + 2));
              v47 = PluginType;
              v103 = gCrashMessage;
              v48 = PluginType >> 24;
              if ((PluginType >> 24) <= 0x7F)
              {
                v49 = OUTLINED_FUNCTION_1_3(MEMORY[0x1E69E9830]);
              }

              else
              {
                v49 = __maskrune(PluginType >> 24, 0x40000uLL);
              }

              if (v49)
              {
                v51 = v48;
              }

              else
              {
                v51 = 46;
              }

              v102 = v51;
              v52 = (v47 << 8) >> 24;
              if (v52 <= 0x7F)
              {
                v53 = OUTLINED_FUNCTION_1_3(MEMORY[0x1E69E9830]);
              }

              else
              {
                v53 = __maskrune((v47 << 8) >> 24, 0x40000uLL);
              }

              if (v53)
              {
                v54 = v52;
              }

              else
              {
                v54 = 46;
              }

              v101 = v54;
              v55 = v47 >> 8;
              if (v55 <= 0x7F)
              {
                v56 = OUTLINED_FUNCTION_1_3(MEMORY[0x1E69E9830]);
              }

              else
              {
                v56 = __maskrune(v47 >> 8, 0x40000uLL);
              }

              if (v56)
              {
                v57 = v55;
              }

              else
              {
                v57 = 46;
              }

              v100 = v57;
              v47 = v47;
              if (v47 <= 0x7F)
              {
                v58 = *(MEMORY[0x1E69E9830] + 4 * v47 + 60) & 0x40000;
              }

              else
              {
                v58 = __maskrune(v47, 0x40000uLL);
              }

              if (v58)
              {
                v59 = v47;
              }

              else
              {
                v59 = 46;
              }

              v98 = v113[0];
              v99 = v59;
              v97 = DWORD2(v111[2]);
              v96 = *(this + 77);
              v95 = *(this + 78);
              v94 = *(this + 79);
              v88 = *(this + 328);
              v60 = *(this + 327);
              v61 = *(this + 329) != 0;
              v62 = *(this + 326);
              v93 = *(this + 166);
              v91 = *(this + 442);
              v92 = *(this + 53);
              v63 = *(this + 108) >> 24;
              v89 = *(this + 441);
              v90 = *(this + 52);
              v104 = v41;
              if (v63 <= 0x7F)
              {
                v64 = OUTLINED_FUNCTION_2_4(v63);
              }

              else
              {
                v64 = __maskrune(v63, 0x40000uLL);
                v65 = *(this + 108);
              }

              if (v64)
              {
                v66 = (v65 >> 24);
              }

              else
              {
                v66 = 46;
              }

              v67 = v65 << 8 >> 24;
              if (v67 <= 0x7F)
              {
                v68 = OUTLINED_FUNCTION_2_4(v67);
              }

              else
              {
                v68 = __maskrune(v67, 0x40000uLL);
                v69 = *(this + 108);
              }

              if (v68)
              {
                v70 = (v69 << 8 >> 24);
              }

              else
              {
                v70 = 46;
              }

              v71 = v69 >> 8;
              if (v71 <= 0x7F)
              {
                v72 = OUTLINED_FUNCTION_2_4(v71);
              }

              else
              {
                v72 = __maskrune(v71, 0x40000uLL);
                v73 = *(this + 108);
              }

              if (v72)
              {
                v74 = (v73 >> 8);
              }

              else
              {
                v74 = 46;
              }

              if (v73 <= 0x7F)
              {
                v75 = *(MEMORY[0x1E69E9830] + 4 * v73 + 60) & 0x40000;
              }

              else
              {
                v75 = __maskrune(v73, 0x40000uLL);
              }

              if (v75)
              {
                v76 = *(this + 432);
              }

              else
              {
                v76 = 46;
              }

              snprintf(v103, 0x200uLL, "ImageIO: getCachedBlocks[%c%c%c%c]-permuteChannels srcData=%p(%d)  dstData=%p(%ld)  w=%d  h=%d  rb=%d  bmi=0x%08x  sub=%d  rbAlign=%ld(%d)  addrAlign=%ld(%d) format='%c%c%c%c'(%d)\n", v102, v101, v100, v99, v98, v97, v43, v104, v96, v95, v94, (v60 << 12) | (v88 << 16) | (v61 << 8) | v62, v93, v92, v91, v90, v89, v66, v70, v74, v76, *(this + 436));
              qword_1ED5688A0 = gCrashMessage;
              vImagePermuteChannels_ARGB8888(&src, &dest, permuteMap, 0x10u);
              qword_1ED5688A0 = 0;
              v7 = MEMORY[0x1E695F050];
              if (*(this + 262) - 3 <= 1)
              {
                if (*(this + 436))
                {
                  if (*(this + 436) == 1)
                  {
                    vImagePremultiplyData_RGBA8888(&dest, &dest, 0x10u);
                  }
                }

                else
                {
                  vImageUnpremultiplyData_RGBA8888(&dest, &dest, 0x10u);
                }
              }

              v77 = *&v11;
              v78 = *&v16;
              CGImageReadSessionReleaseCachedImageBlockData(v113[0]);
              v79 = IIO_ImageBlockCreate(v43, *(this + 79), 0, v77, v36, v78, v40);
              OUTLINED_FUNCTION_6(v79);
              if ((gIIODebugFlags & 0x800) != 0)
              {
                ImageIOLog("   CGImageBlockCreate-cache2     rect: (%5g, %5g, %5g, %5g)    rowBytes: %6d    imageData = %p  (found in cache)\n", v77, v36, v78, v40, *(this + 79), v113[0]);
              }

              v117.origin.x = OUTLINED_FUNCTION_4();
              if (!CGRectEqualToRect(v117, *v7))
              {
                v118.origin.x = OUTLINED_FUNCTION_4();
                v120.origin.x = v77;
                v120.origin.y = v36;
                v120.size.width = v78;
                v120.size.height = v40;
                *&v2 = CGRectUnion(v118, v120);
                v77 = *&v2;
                v36 = v80;
                v78 = v81;
                v40 = v82;
              }

              *(this + 15) = v77;
              *(this + 16) = v36;
              *(this + 17) = v78;
              *(this + 18) = v40;
              if ((gIIODebugFlags & 0x300) == 0x100 || (gIIODebugFlags & 0x400000000000) != 0)
              {
                OUTLINED_FUNCTION_0_11();
                ImageIOLog("::: cache  hit RGB <-> BGR:      rect=(%5d, %5d, %5d, %5d)   rb=%d   imageData=%p\n");
              }
            }
          }

          else
          {
            v50 = (gIIODebugFlags & 0x300) != 0x100 && (gIIODebugFlags & 0x400000000000) == 0;
            if (!v50)
            {
              ImageIOLog("### cache miss:      rect=(%5d, %5d, %5d, %5d)\n");
            }
          }

          ++v6;
          v5 = *(this + 29);
          if (v6 >= v5)
          {
            LODWORD(v6) = *(this + 28);
            break;
          }
        }
      }

      if (v5 <= v6)
      {
        LODWORD(v84) = v6;
      }

      else
      {
        v83 = *(this + 12);
        v84 = v6;
        while (*v83)
        {
          ++v84;
          ++v83;
          if (v5 == v84)
          {
            LODWORD(v84) = v5;
            goto LABEL_104;
          }
        }

        v85 = (v5 - 1);
        if (v85 > v6)
        {
          while (*(*(this + 12) - 8 * v6 + 8 * v85))
          {
            if (--v85 <= v6)
            {
              LODWORD(v85) = v6;
              break;
            }
          }

          LODWORD(v5) = v85 + 1;
        }

        *(this + 29) = v5;
      }

LABEL_104:
      *(this + 28) = v84;
      v1 = (v5 - v84);
      if (v5 == v84)
      {
        ++*(this + 57);
      }
    }
  }

LABEL_107:
  IIO_XPCServer();
  return v1;
}

memory_object_offset_t _ImageIO_Malloc(unint64_t a1, uint64_t a2, memory_object_size_t *a3, const char *a4, const char *a5, int a6)
{
  pthread_mutex_lock(&gImageIOMemoryHashLock);
  v11 = MEMORY[0x1E69E9AC8];
  v12 = ((a1 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) + *MEMORY[0x1E69E9AC8];
  size = v12;
  if (v12 >= a1)
  {
    v13 = mmap(0, v12, 3, 4097, 1174405122, 0);
    if (v13 != -1)
    {
      v14 = v13;
      v15 = IIO_XPCServer();
      v16 = MEMORY[0x1E69E9A60];
      if (v15)
      {
        IdentityToken = IIO_GetIdentityToken();
        if (IdentityToken)
        {
          v18 = IdentityToken;
          object_handle[0] = 0;
          memory_entry_64 = mach_make_memory_entry_64(*v16, &size, v14, 3, object_handle, 0);
          if (memory_entry_64)
          {
            v20 = mach_error_string(memory_entry_64);
            LogError(a5, a6, "*** ERROR: mach_make_memory_entry_64: %s\n", v20);
          }

          else
          {
            v22 = mach_memory_entry_ownership(object_handle[0], v18, -1, 0);
            if (v22)
            {
              v23 = v22;
              ClientName = IIO_GetClientName();
              v24 = mach_error_string(v23);
              LogError(a5, a6, "*** ERROR: ❌ '%s' mach_memory_entry_ownership error: [%d] %s  owner:%d  '%s' %ld bytes\n", ClientName, v23, v24, v18, a4, a1);
            }

            mach_port_deallocate(*v16, object_handle[0]);
          }

          v12 = size;
        }

        else
        {
          v21 = IIO_GetClientName();
          LogError(a5, a6, "*** ERROR: ❌ '%s' OWNERLESS SERVER ALLOCATION: %s, %llu bytes\n", v21, a4, a1);
        }
      }

      mach_vm_protect(*v16, v12 + v14 - *v11, *v11, 1, 0);
      if (a4)
      {
        __CFSetLastAllocationEventName();
      }

      if (gMemoryHashCreateOnce == -1)
      {
        if (v14)
        {
LABEL_17:
          v25 = size;
          v30 = ~v14;
          *object_handle = &v30;
          std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(gIIOMemoryHash + 8, &v30)[5] = v25;
          v26 = size;
          *a3 = size;
          ImageIORecordMemory(v14, v26);
          goto LABEL_20;
        }
      }

      else
      {
        _ImageIO_Malloc_cold_1();
        if (v14)
        {
          goto LABEL_17;
        }
      }

      *a3 = 0;
      goto LABEL_20;
    }
  }

  v14 = 0;
LABEL_20:
  pthread_mutex_unlock(&gImageIOMemoryHashLock);
  return v14;
}

void PNGReadPlugin::DecodeFrameStandard(IIOImageReadSession *a1, uint64_t a2, uint64_t a3, uint64_t *a4, double a5, double a6, double a7)
{
  v9 = *(a2 + 132);
  v82 = 0;
  v83 = &v82;
  v84 = 0x2000000000;
  v85 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x2000000000;
  v81 = 0;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2000000000;
  v77 = -40;
  v10 = *a4;
  v11 = *(a3 + 48);
  if (v9 > 1 || (*(a3 + 58) & 1) != 0 || !v11)
  {
    v12 = 0;
    v13 = (a3 + 19);
  }

  else
  {
    v12 = 0;
    v13 = (a3 + 19);
    if (*(a2 + 169) == 1 && *(a3 + 19) != 3)
    {
      v12 = *v11 > 1;
    }
  }

  v67 = a4[5];
  v14 = *(a2 + 112);
  v15 = (v10 * v14);
  LODWORD(a7) = *(a2 + 48);
  v16 = *&a7;
  if (v14 + v15 <= v16)
  {
    v17 = v14;
  }

  else
  {
    v17 = v16 - v15;
  }

  if (!v12)
  {
    v18 = &v82;
LABEL_18:
    v21 = (v17 + v15);
    *(v18 + 6) = 0;
    v22 = _cg_png_create_read_struct("1.6.43", 0, handle_error, handle_warning);
    v72 = v22;
    info_struct = _cg_png_create_info_struct(v22);
    v24 = info_struct;
    v25 = 0;
    v71 = info_struct;
    if (v22 && info_struct)
    {
      _cg_png_set_option(v22, 2u, 3);
      _cg_png_set_benign_errors(v22, 1);
      v26 = *(a2 + 8);
      if (v26)
      {
        IIOImageReadSession::seek(a1, v26, 0);
      }

      else
      {
        IIOImageReadSession::rewind(a1);
      }

      _cg_png_set_read_fn(v22, a1, read_fn);
      _cg_png_set_keep_unknown_chunks_sized(v22, 3u, "CgBI", 4);
      *(a3 + 56) = 0;
      _cg_png_set_read_user_chunk_fn(v22, a3, PNGReadPlugin::Read_user_chunk_callback);
      _cg_png_read_info(v22, v24);
      PNGReadPlugin::Validate_png_info(v22, v24, a3);
      if (*(a3 + 27) == 1)
      {
        _cg_png_set_add_alpha(v22, 255, 1);
        if ((gIIODebugFlags & 0x20000) != 0)
        {
          v27 = *(a2 + 20);
          v28 = v27 >> 24;
          if ((v27 >> 24) <= 0x7F)
          {
            v29 = *(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000;
          }

          else
          {
            v29 = __maskrune(v28, 0x40000uLL);
            v27 = *(a2 + 20);
            v28 = v27 >> 24;
          }

          if (v29)
          {
            v30 = v28;
          }

          else
          {
            v30 = 46;
          }

          v65 = v30;
          v31 = v27 << 8 >> 24;
          if (v31 <= 0x7F)
          {
            v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x40000;
          }

          else
          {
            v32 = __maskrune(v31, 0x40000uLL);
            v27 = *(a2 + 20);
            v31 = v27 << 8 >> 24;
          }

          if (v32)
          {
            v33 = v31;
          }

          else
          {
            v33 = 46;
          }

          v34 = v27 >> 8;
          if (v34 <= 0x7F)
          {
            v35 = *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000;
          }

          else
          {
            v35 = __maskrune(v34, 0x40000uLL);
            v27 = *(a2 + 20);
            v34 = v27 >> 8;
          }

          if (v35)
          {
            v36 = v34;
          }

          else
          {
            v36 = 46;
          }

          v37 = v27;
          if (v27 <= 0x7F)
          {
            v38 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
          }

          else
          {
            v38 = __maskrune(v27, 0x40000uLL);
            v37 = *(a2 + 20);
          }

          if (v38)
          {
            v39 = v37;
          }

          else
          {
            v39 = 46;
          }

          ImageIOLog("♦️  '%c%c%c%c' %d: png_set_add_alpha: PNG_FILLER_AFTER\n", v65, v33, v36, v39, 4425);
        }
      }

      if (*(a2 + 63) == 1)
      {
        _cg_png_set_swap(v22);
      }

      PNGReadPlugin::Update_png_struct(a2, a3, v22, v24);
      if (v10)
      {
        if (v9 <= 1)
        {
          v40 = 1;
        }

        else
        {
          v40 = v9;
        }

        v41 = v10 * v40 * *(a2 + 112);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    skipping rows %4d through %4d\n", 0, v41);
        }

        if (v41)
        {
          v42 = v41;
          do
          {
            _cg_png_read_row_sized(v22, 0, 0, 0, 0);
            --v42;
          }

          while (v42);
        }
      }

      v70 = 1;
      rowbytes = _cg_png_get_rowbytes(v22, v24);
      v44 = rowbytes;
      if (v9 >= 2)
      {
        if (v9 > 0x100)
        {
          v45 = 1;
        }

        else
        {
          v45 = 0x100 / v9;
        }

        v70 = v45;
        v46 = rowbytes * v9 * v45;
      }

      else
      {
        LODWORD(v45) = 1;
        v46 = rowbytes;
      }

      v25 = malloc_type_calloc(v46, 1uLL, 0x100004077774924uLL);
      if (v9 >= 2)
      {
        v52 = v9 * v15;
        v53 = v52 + v17 * v9;
        v54 = *(a2 + 44);
        if (v53 >= *(a2 + 48))
        {
          v55 = *(a2 + 48);
        }

        else
        {
          v55 = v53;
        }

        if (*(a3 + 35) & 1 | (*(a2 + 62) != 1))
        {
          v56 = *(a2 + 62);
        }

        else
        {
          v56 = 3;
        }

        v57 = *(a2 + 92);
        memset(v69, 0, sizeof(v69));
        IIOSubsampler::IIOSubsampler(v69, v54, v44, v56, *(a2 + 56), v57, *(a2 + 132), 0, *(a2 + 108), *(a2 + 116));
        v58 = v52;
        if (v55 > v52)
        {
          v59 = 0;
          do
          {
            v60 = v58 + (v45 * v9);
            if (v60 > v55)
            {
              v45 = (v55 - v58) / v9;
              v70 = v45;
              v60 = v55;
            }

            v61 = v9;
            v62 = v58 - v60;
            if (v58 < v60)
            {
              v63 = v25;
              do
              {
                _cg_png_read_row_sized(v22, v63, v44, 0, 0);
                v63 += v44;
              }

              while (!__CFADD__(v62++, 1));
              LODWORD(v45) = v70;
              v58 = v60;
            }

            v9 = v61;
            IIOSubsampler::subsample(v69, v25, v45 * v61, (v67 + v59 * *(a2 + 116)), &v70);
            LODWORD(v45) = v70;
            v59 += v70;
            *(v83 + 6) += v70;
          }

          while (v58 < v55);
        }

        IIOSubsampler::~IIOSubsampler(v69);
      }

      else
      {
        if (*(a2 + 56) <= 7u && *v13 == 3 && (*(a3 + 28) & 1) == 0 && *(a2 + 236) != 1)
        {
          operator new();
        }

        v47 = v46 == a4[6];
        if (v21 > v15)
        {
          v48 = 0;
          do
          {
            v49 = *(a2 + 116);
            v50 = (v67 + v48 * v49);
            if (v47)
            {
              _cg_png_read_row_sized(v22, (v67 + v48 * v49), v44, 0, 0);
            }

            else
            {
              _cg_png_read_row_sized(v22, v25, v44, 0, 0);
              if (v44 >= *(a2 + 116))
              {
                v51 = *(a2 + 116);
              }

              else
              {
                v51 = v44;
              }

              memcpy(v50, v25, v51);
            }

            ++*(v83 + 6);
            ++v48;
          }

          while (v21 - v15 != v48);
        }
      }
    }

    _cg_png_destroy_read_struct(&v72, &v71, 0);
    if (v25)
    {
      free(v25);
    }

    v18 = v83;
    goto LABEL_103;
  }

  v18 = &v82;
  if (*(a3 + 57))
  {
    goto LABEL_18;
  }

  v77 = 0;
  v81 = v11[4];
  v19 = *v11;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN13PNGReadPlugin19DecodeFrameStandardEP19IIOImageReadSessionRK14ReadPluginDataRK13PNGPluginDataR20IIODecodeFrameParams_block_invoke;
  block[3] = &unk_1E6EFC780;
  block[8] = a1;
  block[9] = a2;
  block[10] = v67;
  block[4] = &v82;
  block[5] = &v78;
  block[6] = &v74;
  block[7] = a3;
  dispatch_apply(v19, 0, block);
  v18 = v83;
  v20 = *(v83 + 6);
  if (v20 <= *(v79 + 6))
  {
    v20 = *(v79 + 6);
  }

  *(v83 + 6) = v20;
  if (*(v75 + 6))
  {
    goto LABEL_18;
  }

LABEL_103:
  a4[8] = *(v18 + 6);
  _Block_object_dispose(&v74, 8);
  _Block_object_dispose(&v78, 8);
  _Block_object_dispose(&v82, 8);
}

void sub_185E7E428(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  MEMORY[0x186602850](v28, 0x10F1C4050BC5624);
  __cxa_begin_catch(a1);
  imagePNG_error_break(a28);
  v32 = *(v30 - 128);
  v33 = *(v32 + 24);
  if (v33 >= 1 && v29 > v33)
  {
    *(v32 + 24) = v29;
  }

  __cxa_end_catch();
  JUMPOUT(0x185E7E3B4);
}

void sub_185E7E4E8(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t IIOReadPlugin::updateImageIOCacheKey(uint64_t result, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  *a2 = *(result + 32);
  *(a2 + 8) = a4;
  *(a2 + 12) = a5;
  *(a2 + 16) = a6;
  *(a2 + 20) = a7;
  v7 = *(a2 + 28) & 0xFFFFFFFFFFFF0000 | *(result + 224);
  *(a2 + 28) = v7;
  v8 = v7 & 0xFFFFFFFF0000FFFFLL | (*(result + 424) << 16);
  *(a2 + 28) = v8;
  v9 = v8 & 0xFF00FFFFFFFFFFFFLL | (*(result + 320) << 48);
  *(a2 + 28) = v9;
  *(a2 + 24) = *(result + 432);
  v10 = v9 & 0xFFFFFF00FFFFFFFFLL | (*(result + 332) << 32);
  *(a2 + 28) = v10;
  *(a2 + 36) = a3;
  v11 = v10 & 0xFDFFFFFFFFFFFFFFLL | ((*(result + 383) & 1) << 57);
  *(a2 + 28) = v11;
  *(a2 + 28) = v11 & 0xFEFFFFFFFFFFFFFFLL | ((*(result + 382) & 1) << 56);
  return result;
}

uint64_t PNGReadPlugin::copyImageBlockSetStandard(uint64_t a1, const void *a2, const void *a3, double a4, double a5, double a6, double a7)
{
  v61 = 0;
  v16 = *(a1 + 332);
  if (*(a1 + 438) == 1)
  {
    v17 = *MEMORY[0x1E695E4D0];
    if (v17 == CGImageProviderGetProperty())
    {
      return 0;
    }
  }

  if (*(a1 + 446) != 1)
  {
    return 0;
  }

  if ((*(a1 + 522) & 1) != 0 || (v16 <= 1 ? (v18 = *(a1 + 512) == 0) : (v18 = 1), v18))
  {
    v19 = 0;
  }

  else
  {
    v19 = *(a1 + 369);
  }

  CGImageProviderSetProperty();
  if (*(a1 + 194) == 1)
  {
    ImageIOLog(">>> copyImageBlockSetPNG   info: %p\n", a2);
    ImageIOLog("                       provider: %p\n", a3);
    ImageIOLog("                        session: %p\n", *(a1 + 24));
    ImageIOLog("                     sourceRect: (%5g, %5g, %5g, %5g)\n", a4, a5, a6, a7);
  }

  v20 = *(a1 + 104);
  if (!v20 || (v19 & 1) != 0 && (v20 != 1 || *(a1 + 312) != *(a1 + 248)))
  {
    return 0;
  }

  v21 = *(a1 + 112);
  if (*(a1 + 194) == 1)
  {
    ImageIOLog("                  imageRowBytes: %6d\n", *(a1 + 316));
    ImageIOLog("               bitsPerComponent: %6d\n", *(a1 + 256));
    ImageIOLog("                 isLittleEndian: %6d\n", *(a1 + 372));
    ImageIOLog("                    blockHeight: %6d\n", *(a1 + 312));
    ImageIOLog("                     blockCount: %6d\n", *(a1 + 104));
    ImageIOLog("                     startBlock: %6d\n", *(a1 + 112));
    ImageIOLog("                       endBlock: %6d\n", *(a1 + 116));
    v20 = *(a1 + 104);
  }

  IIOReadPlugin::allocateBlockArray(a1, v20);
  CachedBlocks = IIOReadPlugin::getCachedBlocks(a1);
  v24 = CachedBlocks;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("     numberOfBlocksLeftToDecode: %d\n", CachedBlocks);
  }

  if (v24)
  {
    v25 = *(a1 + 24);
    if (v25)
    {
      v26 = IIOImageReadSession::mapData(v25);
      v27 = *(a1 + 24);
      if (v27)
      {
        v28 = *(a1 + 208);
        if (v28)
        {
          IIOImageReadSession::seek(v27, v28, 0);
        }

        else
        {
          IIOImageReadSession::rewind(v27);
        }
      }
    }

    else
    {
      v26 = 0;
    }

    v31 = *(a1 + 112);
    if (v31 < *(a1 + 116))
    {
      v55 = v26;
      v54 = a2;
      v32 = MEMORY[0x1E695F050];
      while (1)
      {
        if (*(*(a1 + 96) - 8 * v21 + 8 * v31))
        {
          _cg_jpeg_mem_term("copyImageBlockSetStandard", 3103, "*** _blockArray[%d] was cached - and already allocated\n", v31 - v21);
        }

        v33 = *(a1 + 312);
        v34 = (v31 * v33);
        LODWORD(v7) = *(a1 + 308);
        LODWORD(v23) = *(a1 + 248);
        v35 = v23;
        if (v33 + v34 <= v35)
        {
          v36 = v33;
        }

        else
        {
          v36 = v35 - v34;
        }

        v37 = *(a1 + 316) * v33;
        v38 = _ImageIO_Malloc(v37, *(a1 + 416), &v61, kImageMalloc_PNG_Data[0], 0, 0);
        if (!v38)
        {
          v29 = 0;
          if (!v55)
          {
            return v29;
          }

          goto LABEL_56;
        }

        v39 = v38;
        v40 = *(a1 + 416);
        if (v40 && v38 % v40)
        {
          goto LABEL_71;
        }

        bzero(v38, v37);
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("                   reading rows: %d ... %d\n", v34, (v36 + v34));
        }

        v7 = *&v7;
        v41 = *(a1 + 316);
        v58[0] = v31;
        v58[1] = 0;
        *&v58[2] = v34;
        *&v58[3] = v7;
        *&v58[4] = v36;
        v58[5] = v39;
        v58[6] = v41;
        v58[7] = v37;
        v59 = 0u;
        v60 = 0;
        v57 = 0;
        v56 = 0u;
        std::vector<IIODecodeFrameParams>::vector[abi:fe200100](&v56, 1uLL);
        v42 = IIO_Reader::testHeaderSize(*(a1 + 24));
        PNGReadPlugin::DecodeUncomposedFrames(v42, 0, a1 + 200, (a1 + 464), &v56);
        if (*(&v56 + 1) == v56)
        {
          break;
        }

        v37 = *(v56 + 64);
        v8 = v37;
        if (v36 != v37)
        {
          goto LABEL_61;
        }

        PNGReadPlugin::postProcess(a1, v39);
        v63.origin.x = 0.0;
        v63.origin.y = v34;
        v63.size.width = v7;
        v63.size.height = v36;
        *(*(a1 + 96) - 8 * v21 + 8 * v31) = IIOReadPlugin::createImageBlock(a1, v39, v61, v63, *(a1 + 316), *(a1 + 371));
        v43 = CGRectEqualToRect(*(a1 + 120), *v32);
        v44 = 0;
        if (!v43)
        {
          v66.origin.x = 0.0;
          v66.origin.y = v34;
          v66.size.width = v7;
          v66.size.height = v36;
          *&v44 = CGRectUnion(*(a1 + 120), v66);
          v34 = v45;
          v7 = v46;
          v36 = v47;
        }

        *(a1 + 120) = v44;
        *(a1 + 128) = v34;
        *(a1 + 136) = v7;
        *(a1 + 144) = v36;
        v62[0] = &v56;
        std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](v62);
        IIODecodeFrameParams::~IIODecodeFrameParams(v58);
        if (++v31 >= *(a1 + 116))
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_61:
      _cg_jpeg_mem_term("copyImageBlockSetStandard", 3148, "*** ERROR: incomplete decode - got %d of %g rows\n", v37, v36);
      v62[0] = &v56;
      std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100](v62);
      IIODecodeFrameParams::~IIODecodeFrameParams(v58);
      breakOnPngError();
      if (*(a1 + 194) == 1)
      {
        ImageIOLog("    got a PNG error  (success = %d)  sourceRect: (%5g, %5g, %5g, %5g)\n", 0, a4, a5, a6, a7);
        ImageIOLog("                    imageData = %p [%zu]\n", v39, (*(a1 + 316) * *(a1 + 312)));
        ImageIOLog("                    blockLoop = %ld\n", v31);
        ImageIOLog("                  _blockEnd-1 = %ld\n", *(a1 + 116) - 1);
        ImageIOLog("                          row = %ld\n", 0);
        ImageIOLog("                       endRow = %ld\n", (v36 + v34));
        ImageIOLog("                    rowsValid = %ld\n", 0);
        ImageIOLog("               blockRowsValid = %ld\n", v37);
        ImageIOLog("                    blockRect = {%5g, %5g, %5g, %5g}\n", 0.0, v34, v7, v36);
      }

      if (v37 && v36 > v8)
      {
        if ((IIOImageReadSession::isFinal(*(a1 + 24)) & (v36 - v8 > 2.0)) != 0)
        {
          v53 = v8;
        }

        else
        {
          v53 = v36;
        }

        if (v53 != 0.0)
        {
          PNGReadPlugin::postProcess(a1, v39);
          v64.origin.x = 0.0;
          v64.origin.y = v34;
          v64.size.width = v7;
          v64.size.height = v53;
          *(*(a1 + 96) - 8 * v21 + 8 * v31) = IIOReadPlugin::createImageBlock(a1, v39, v61, v64, *(a1 + 316), 0);
          v65.origin.x = 0.0;
          v65.origin.y = v34;
          v65.size.width = v7;
          v65.size.height = v53;
          AddSubRect((a1 + 120), v65);
LABEL_48:
          a2 = v54;
          LOBYTE(v26) = v55;
          goto LABEL_49;
        }

        _cg_jpeg_mem_term("copyImageBlockSetStandard", 3238, ": error while decoding PNG image rect: (%5g, %5g, %5g, %5g)\n", 0.0, v34, v7, v53);
      }

LABEL_71:
      _ImageIO_Free(v39, v61);
      v29 = 0;
      if (!v55)
      {
        return v29;
      }

      goto LABEL_56;
    }
  }

  else
  {
    LOBYTE(v26) = 0;
  }

LABEL_49:
  v48 = *(a1 + 120);
  v49 = *(a1 + 128);
  v50 = *(a1 + 144);
  if (v50 == 0.0)
  {
    _cg_jpeg_mem_term("copyImageBlockSetStandard", 3181, ": pngCreateBlockSet - error while decoding PNG image rect: (%5g, %5g, %5g, %5g)\n", v48, v49, *(a1 + 136), v50);
  }

  else if (a3)
  {
    v51 = *(a1 + 104);
    if (v51)
    {
      v29 = IIOReadPlugin::imageBlockSetCreate(a1, a3, v51, *(a1 + 136), v50, v48, v49, *(a1 + 136), *(a1 + 144), *(a1 + 96), a2);
      if (!v26)
      {
        return v29;
      }

      goto LABEL_56;
    }
  }

  v29 = 0;
  if (!v26)
  {
    return v29;
  }

LABEL_56:
  v52 = *(a1 + 24);
  if (v52)
  {
    IIOImageReadSession::unmapData(v52);
  }

  return v29;
}

void sub_185E7ED10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  *(v10 - 160) = va;
  std::vector<IIODecodeFrameParams>::__destroy_vector::operator()[abi:fe200100]((v10 - 160));
  IIODecodeFrameParams::~IIODecodeFrameParams(va1);
  _Unwind_Resume(a1);
}

void PNGReadPlugin::DecodeUncomposedFrames(IIOImageRead *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  v8 = *a4;
  switch(v8)
  {
    case 3:
      v12 = (*(a5 + 8) - *a5) >> 3;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN13PNGReadPlugin22DecodeUncomposedFramesEP12IIOImageReadP13GlobalPNGInfoRK14ReadPluginDataRK13PNGPluginDataRNSt3__16vectorI20IIODecodeFrameParamsNSA_9allocatorISC_EEEE_block_invoke;
      block[3] = &__block_descriptor_tmp_171;
      block[4] = a1;
      block[5] = a2;
      block[6] = a3;
      block[7] = a4;
      block[8] = a5;
      dispatch_apply(0x2E8BA2E8BA2E8BA3 * v12, 0, block);
      break;
    case 2:
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      IIOImageReadSession::IIOImageReadSession(&v14, a1);
      if (*(a5 + 8) != *a5)
      {
        PNGReadPlugin::DecodeFrameInterlaced(&v14, a3, a4, *a5);
        goto LABEL_8;
      }

      goto LABEL_11;
    case 1:
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      IIOImageReadSession::IIOImageReadSession(&v14, a1);
      if (*(a5 + 8) != *a5)
      {
        PNGReadPlugin::DecodeFrameStandard(&v14, a3, a4, *a5, v9, v10, v11);
LABEL_8:
        IIOImageReadSession::~IIOImageReadSession(&v14);
        return;
      }

LABEL_11:
      __break(1u);
      break;
  }
}

void sub_185E7EE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOImageReadSession::~IIOImageReadSession(va);
  _Unwind_Resume(a1);
}

void (**png_read_buffer(void (**a1)(void), size_t size, int a3))(void)
{
  v6 = a1[140];
  if (v6)
  {
    if (a1[142] >= size)
    {
      return v6;
    }

    a1[140] = 0;
    a1[141] = 0;
    a1[142] = 0;
    png_free(a1, v6);
  }

  v7 = malloc_type_malloc(size, 0xA2C067CDuLL);
  if (!v7)
  {
    if (a3 <= 1)
    {
      v8 = "insufficient memory to read chunk";
      v7 = a1;
      if (!a3)
      {
        goto LABEL_15;
      }

      png_chunk_warning(a1, "insufficient memory to read chunk");
    }

    return 0;
  }

  if ((size & 0x8000000000000000) != 0 || (v6 = v7, bzero(v7, size), v6 > (v6 + size)))
  {
    __break(0x5519u);
LABEL_15:
    png_chunk_error(v7, v8);
  }

  a1[140] = v6;
  a1[141] = (v6 + size);
  a1[142] = size;
  return v6;
}

uint64_t png_read_IDAT_data(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v3;
  v6 = v2;
  v7 = 0;
  v26[512] = *MEMORY[0x1E69E9840];
  if (v3)
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  *(v2 + 120) = v3;
  *(v2 + 128) = 0;
  while (1)
  {
    bzero(v26, 0x1000uLL);
    if (*(v6 + 104))
    {
      if (!v5)
      {
        goto LABEL_31;
      }

      goto LABEL_7;
    }

    LODWORD(v13) = *(v6 + 392);
    if (!v13)
    {
      v14 = 0;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            png_crc_finish(v6, v14);
            chunk_header = _cg_png_read_chunk_header(v6);
            LODWORD(v13) = chunk_header;
            *(v6 + 392) = chunk_header;
            v16 = *(v6 + 312);
            if (*(v6 + 936))
            {
              break;
            }

            if (v16 != 1229209940)
            {
              goto LABEL_50;
            }

            v14 = 0;
            if (chunk_header)
            {
              goto LABEL_21;
            }
          }

          if (v16 == 1717846356)
          {
            break;
          }

          if (v16 == 1229278788)
          {
            goto LABEL_50;
          }

          png_warning(v6, "Skipped (ignored) a chunk between APNG chunks");
          v13 = *(v6 + 392);
          v14 = v13;
          if (v13)
          {
            goto LABEL_21;
          }
        }

        png_ensure_sequence_number(v6, chunk_header);
        v14 = 0;
        LODWORD(v13) = *(v6 + 392) - 4;
        *(v6 + 392) = v13;
        if (v13)
        {
LABEL_21:
          if (!v14)
          {
            break;
          }
        }
      }
    }

    v17 = *(v6 + 1144);
    if (v17 >= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v17;
    }

    buffer = png_read_buffer(v6, v18, 0);
    if (v20 < buffer || v20 - buffer < v18)
    {
      __break(0x5519u);
    }

    v22 = buffer;
    png_crc_read(v6, buffer, v18);
    *(v6 + 392) -= v18;
    *(v6 + 96) = v22;
    *(v6 + 104) = v18;
    if (!v5)
    {
LABEL_31:
      *(v6 + 120) = v26;
      *(v6 + 128) = 4096;
      result = png_zlib_inflate(v6, 0);
      v12 = result;
      v8 = v8 - *(v6 + 128) + 4096;
      goto LABEL_32;
    }

LABEL_7:
    v9 = 0xFFFFFFFFLL;
    if (v8 < 0xFFFFFFFF)
    {
      v9 = v8;
    }

    v10 = v8 - v9;
    *(v6 + 128) = v9;
    result = png_zlib_inflate(v6, 0);
    v12 = result;
    v8 = v10 + *(v6 + 128);
LABEL_32:
    *(v6 + 128) = 0;
    if (!v12)
    {
      goto LABEL_38;
    }

    if (v12 == 1)
    {
      break;
    }

    png_zstream_error(v6, v12);
    v23 = *(v6 + 144);
    if (!v5)
    {
      v25 = v6;
      v24 = *(v6 + 144);
      return png_chunk_benign_error(v25, v24);
    }

    if (strncmp(*(v6 + 144), "incorrect data check", 0x14uLL))
    {
      png_chunk_error(v6, v23);
    }

    result = png_chunk_benign_error(v6, "ADLER32 checksum mismatch");
    if (v7 > 99)
    {
      return result;
    }

    ++v7;
LABEL_38:
    if (!v8)
    {
      return result;
    }
  }

  *(v6 + 120) = 0;
  *(v6 + 76) |= 0x800000008uLL;
  ++*(v6 + 936);
  if ((*(v6 + 104) || *(v6 + 392)) && (*(v6 + 84) & 0x10) == 0)
  {
    result = png_chunk_benign_error(v6, "Extra compressed data");
  }

  if (v8)
  {
    if (v5)
    {
LABEL_50:
      _cg_png_error(v6, "Not enough image data");
    }

    v24 = "Too much image data";
    v25 = v6;
    return png_chunk_benign_error(v25, v24);
  }

  return result;
}

uint64_t png_zlib_inflate(uint64_t a1, int a2)
{
  if (!*(a1 + 440) || !*(a1 + 104))
  {
    return inflate((a1 + 96), a2);
  }

  if ((**(a1 + 96) & 0x80000000) == 0)
  {
    *(a1 + 440) = 0;
    return inflate((a1 + 96), a2);
  }

  *(a1 + 144) = "invalid window size (libpng)";
  return 4294967293;
}

void IIODecodeParameter::~IIODecodeParameter(IIODecodeParameter *this)
{
  *this = &unk_1EF4DD240;
  v2 = *(this + 10);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 10) = 0;
}

{
  IIODecodeParameter::~IIODecodeParameter(this);

  JUMPOUT(0x186602850);
}

uint64_t imageio_value_release(void *a1, void *a2)
{
  if ((gIIODebugFlags & 0x200) != 0)
  {
    ImageIOLog("    imageio_value_release ptr: %p   userData: %p\n", a1, a2);
  }

  return _ImageIO_Free(a1, a2);
}

uint64_t IIOMemoryHash::remove(uint64_t **this, unint64_t a2)
{
  v5[0] = ~a2;
  v5[2] = v5;
  v3 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((this + 1), v5)[5];
  std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__erase_unique<unsigned long>(this + 1, v5);
  return v3;
}

void imageio_key_release(void *a1, void *a2)
{
  if ((gIIODebugFlags & 0x200) != 0)
  {
    ImageIOLog("    imageio_key_release    key: %p   user_data: %p\n", a1, a2);
  }

  free(a1);
}

uint64_t _ImageIO_Free(unint64_t a1, size_t a2)
{
  pthread_mutex_lock(&gImageIOMemoryHashLock);
  if (gMemoryHashCreateOnce != -1)
  {
    _ImageIO_AccreditMemory_cold_1();
  }

  if (!a2)
  {
    v6[0] = ~a1;
    v6[2] = v6;
    a2 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(gIIOMemoryHash + 8, v6)[5];
  }

  v4 = IIOMemoryHash::remove(gIIOMemoryHash, a1);
  if (v4 != a2)
  {
    if (v4 > a2)
    {
      a2 = v4;
    }

    else
    {
      LogFault("_ImageIO_Free", 456, "*** ptr %p got double released??? (%ld bytes)   hash: %ld\n", a1, a2, v4);
    }
  }

  ImageIORecordMemory(a1, -a2);
  munmap(a1, a2);
  return pthread_mutex_unlock(&gImageIOMemoryHashLock);
}

void _cg_png_set_unknown_chunks(void (**a1)(void), uint64_t a2, int *a3, signed int a4)
{
  if (a3 && a1 && a2 && a4 >= 1)
  {
    v7 = *(a2 + 352);
    v8 = png_realloc_array(a1, *(a2 + 344), *(a2 + 344) + 32 * v7, v7, a4, 0x20uLL);
    v24 = v9;
    if (v8)
    {
      v10 = v8;
      v11 = a3;
      v23 = &a3[8 * a4];
      v12 = &v8[4 * v7];
      v13 = a4 + 1;
      v14 = v7;
      while (1)
      {
        if (v12 < v10 || v12 + 32 > v24 || v11 < a3 || (v11 + 8) > v23 || (v15 = *v11, *(v12 + 4) = *(v11 + 4), *v12 = v15, v12 >= v12 + 5))
        {
LABEL_33:
          __break(0x5519u);
          return;
        }

        *(v12 + 4) = 0;
        *(v12 + 24) = check_location(a1, *(v11 + 24));
        v16 = *(v11 + 2);
        if (v16)
        {
          v17 = malloc_type_malloc(*(v11 + 2), 0xEE13554AuLL);
          v18 = &v17[v16];
          if (!v17)
          {
            v18 = 0;
          }

          v19 = v18 - v17;
          if (v18 < v17)
          {
            goto LABEL_33;
          }

          v20 = *(v11 + 2);
          if (v20 > v19)
          {
            goto LABEL_33;
          }

          v21 = v17;
          *(v12 + 8) = v17;
          *(v12 + 16) = v20;
          if (!v17)
          {
            png_chunk_report(a1, "unknown chunk: out of memory", 1);
            goto LABEL_24;
          }

          v22 = *(v11 + 2);
          if (v22 > v20)
          {
            goto LABEL_33;
          }

          memcpy(v17, *(v11 + 1), *(v11 + 2));
          if (v21 > &v21[v22])
          {
            goto LABEL_33;
          }
        }

        else
        {
          *(v12 + 8) = 0;
          *(v12 + 16) = 0;
        }

        ++v14;
        v12 += 32;
LABEL_24:
        --v13;
        v11 += 8;
        if (v13 <= 1)
        {
          png_free(a1, *(a2 + 344));
          if (v24 >= v10 && (v14 & 0x80000000) == 0 && (v24 - v10) >> 5 >= v14)
          {
            *(a2 + 344) = v10;
            *(a2 + 352) = v14;
            *(a2 + 340) |= 0x200u;
            return;
          }

          goto LABEL_33;
        }
      }
    }

    png_chunk_report(a1, "too many unknown chunks", 1);
  }
}

uint64_t check_location(uint64_t a1, char a2)
{
  v2 = a2 & 0xB;
  if ((a2 & 0xB) == 0)
  {
    if ((*(a1 + 77) & 0x80) != 0 || (png_app_warning(a1, "png_set_unknown_chunks now expects a valid location"), (v2 = *(a1 + 76) & 0xB) == 0))
    {
      _cg_png_error(a1, "invalid location in png_set_unknown_chunks");
    }
  }

  do
  {
    v4 = v2;
    v5 = v2 & -v2;
    v2 ^= v5;
  }

  while (v4 != v5);
  return v4;
}

uint64_t IIOImageRead::setCachedImageBlockData(uint64_t a1, __int128 *a2, void *a3, cache_cost_t a4)
{
  pthread_mutex_lock((a1 + 312));
  cache_set_and_retain(gImageBlockCache, a2, a3, a4);
  DebugStringFromKey = createDebugStringFromKey(a2);
  if (DebugStringFromKey)
  {
    v9 = DebugStringFromKey;
    ImageIOLog("ADD cache_set_and_retain:  %p:   data: %12p key: %s  (size=%ld) \n", gImageBlockCache, a3, DebugStringFromKey, a4);
    free(v9);
  }

  v10 = *(a1 + 288);
  v11 = *(a1 + 296);
  while (v10 != v11)
  {
    v12 = *v10;
    v13 = v10[1];
    *&v35[12] = *(v10 + 28);
    v34 = v12;
    *v35 = v13;
    if (imageio_key_is_equal(&v34, a2, 0))
    {
      return pthread_mutex_unlock((a1 + 312));
    }

    v10 = (v10 + 44);
  }

  v14 = createDebugStringFromKey(a2);
  if (v14)
  {
    v15 = v14;
    ImageIOLog("+++ setCachedImageBlockData adding new key: %p:   data: %12p key: %s  (size=%ld) \n", gImageBlockCache, a3, v14, a4);
    free(v15);
  }

  v16 = *(a1 + 296);
  v17 = *(a1 + 304);
  if (v16 >= v17)
  {
    v21 = *(a1 + 288);
    v22 = 0x2E8BA2E8BA2E8BA3 * ((v16 - v21) >> 2);
    v23 = v22 + 1;
    if ((v22 + 1) > 0x5D1745D1745D174)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v24 = 0x2E8BA2E8BA2E8BA3 * ((v17 - v21) >> 2);
    if (2 * v24 > v23)
    {
      v23 = 2 * v24;
    }

    if (v24 >= 0x2E8BA2E8BA2E8BALL)
    {
      v25 = 0x5D1745D1745D174;
    }

    else
    {
      v25 = v23;
    }

    if (v25)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<imageio_key>>(a1 + 288, v25);
    }

    v26 = 44 * v22;
    v27 = *a2;
    v28 = a2[1];
    *(v26 + 28) = *(a2 + 28);
    *v26 = v27;
    *(v26 + 16) = v28;
    v20 = 44 * v22 + 44;
    v29 = *(a1 + 288);
    v30 = *(a1 + 296) - v29;
    v31 = v26 - v30;
    memcpy((v26 - v30), v29, v30);
    v32 = *(a1 + 288);
    *(a1 + 288) = v31;
    *(a1 + 296) = v20;
    *(a1 + 304) = 0;
    if (v32)
    {
      operator delete(v32);
    }
  }

  else
  {
    v18 = *a2;
    v19 = a2[1];
    *(v16 + 28) = *(a2 + 28);
    *v16 = v18;
    v16[1] = v19;
    v20 = v16 + 44;
  }

  *(a1 + 296) = v20;
  return pthread_mutex_unlock((a1 + 312));
}

_OWORD *imageio_key_retain(__int128 *a1, void **a2, void *a3)
{
  result = malloc_type_calloc(0x2CuLL, 1uLL, 0x10800401DA1D55CuLL);
  if (result)
  {
    v6 = *a1;
    v7 = a1[1];
    *(result + 28) = *(a1 + 28);
    *result = v6;
    result[1] = v7;
  }

  *a2 = result;
  return result;
}

uint64_t read_fn2(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  io_ptr = _cg_png_get_io_ptr(a1);
  v6 = io_ptr;
  v8 = *io_ptr;
  v7 = *(io_ptr + 8);
  v9 = *(io_ptr + 16);
  if (v7 > v9 - 0x8000)
  {
    if (v9)
    {
      v10 = 0x20000;
    }

    else
    {
      v10 = 0x10000;
    }

    IIOImageReadSession::willNeed(*io_ptr, v9, v10);
    *(v6 + 16) = v10 + v9;
    v7 = *(v6 + 8);
  }

  result = IIOImageReadSession::getBytesAtOffset(v8, a2, v7, a3);
  *(v6 + 8) += result;
  return result;
}

void png_read_row_indexed(uLong a1, char *a2, unint64_t a3, char *__dst, unint64_t a5)
{
  if (!a1)
  {
    return;
  }

  if ((*(a1 + 80) & 0x40) == 0)
  {
    png_read_start_row(a1);
  }

  v52 = 0;
  v53 = 0;
  LODWORD(v52) = *(a1 + 304);
  v10 = *(a1 + 434);
  v11 = (v10 * v52 + 7) >> 3;
  if (v10 >= 8)
  {
    v11 = (v10 >> 3) * v52;
  }

  v12 = *(a1 + 431);
  v53 = v11;
  v54 = v12;
  BYTE2(v54) = *(a1 + 435);
  BYTE3(v54) = v10;
  if (!*(a1 + 428) || (*(a1 + 88) & 2) == 0)
  {
LABEL_8:
    if ((*(a1 + 76) & 4) == 0)
    {
LABEL_134:
      v43 = "Invalid attempt to read row data";
      goto LABEL_136;
    }

    if (*(a1 + 84))
    {
      png_read_IDAT_dataApple(a1);
    }

    else
    {
      v13 = *(a1 + 336);
      if (v13 >= *(a1 + 344))
      {
        goto LABEL_133;
      }

      *v13 = -1;
      png_read_IDAT_data(a1, *(a1 + 336));
    }

    BYTE4(v54) = 0;
    v14 = *(a1 + 336);
    if (v14 >= *(a1 + 344))
    {
      goto LABEL_133;
    }

    v15 = *v14;
    if (!*v14)
    {
      goto LABEL_24;
    }

    if (!*(a1 + 1168))
    {
      png_init_filter_functions(a1);
    }

    if ((*(a1 + 81) & 8) != 0 && (*(a1 + 84) & 2) != 0)
    {
      BYTE4(v54) = *(a1 + 1168) == png_read_filter_row_sub_apple_neon;
      if (BYTE4(v54))
      {
        v17 = a2;
        v16 = a3;
        v18 = a2;
        goto LABEL_21;
      }
    }

    else
    {
      BYTE4(v54) = 0;
    }

    v17 = *(a1 + 320);
    v16 = *(a1 + 328);
    v18 = (v17 + 1);
LABEL_21:
    v19 = *(a1 + 336);
    if (v19 + 1 < v19 || v18 < v17)
    {
      goto LABEL_133;
    }

    png_read_filter_row(a1, &v52, v19 + 1, *(a1 + 344), v18, v16, v15);
    if (BYTE4(v54))
    {
LABEL_30:
      if ((*(a1 + 912) & 4) == 0 || *(a1 + 916) != 64)
      {
        goto LABEL_108;
      }

      v26 = *(a1 + 336);
      v27 = v26 + 1;
      if (v26 + 1 < v26)
      {
        goto LABEL_133;
      }

      if ((v54 & 2) == 0)
      {
        goto LABEL_108;
      }

      v28 = *(a1 + 344);
      v29 = v52;
      if (BYTE1(v54) != 16)
      {
        if (BYTE1(v54) == 8)
        {
          if (v54 == 2)
          {
            v30 = 3;
LABEL_78:
            if (v52)
            {
              v34 = (v26 + 3);
              while (1)
              {
                v35 = (v34 - 2) < v28 && (v34 - 2) >= v27;
                if (!v35)
                {
                  goto LABEL_133;
                }

                if ((v34 - 1) >= v28)
                {
                  goto LABEL_133;
                }

                v36 = *(v34 - 1);
                *(v34 - 2) += v36;
                if (v34 >= v28 || v34 < v27)
                {
                  goto LABEL_133;
                }

                *v34 += v36;
                v34 += v30;
                if (!--v29)
                {
                  goto LABEL_108;
                }
              }
            }

            goto LABEL_108;
          }

          if (v54 == 6)
          {
            v30 = 4;
            goto LABEL_78;
          }
        }

LABEL_108:
        if (*(a1 + 88) || (*(a1 + 420) & 0x80000000) == 0)
        {
          png_do_read_transformations(a1, &v52);
        }

        v42 = BYTE3(v54);
        if (*(a1 + 439))
        {
          if (*(a1 + 439) != BYTE3(v54))
          {
            v43 = "internal sequential row size calculation error";
            goto LABEL_136;
          }
        }

        else
        {
          *(a1 + 439) = BYTE3(v54);
          if (v42 > *(a1 + 438))
          {
            v43 = "sequential row overflow";
LABEL_136:
            _cg_png_error(a1, v43);
          }
        }

        if (!*(a1 + 428) || (v44 = *(a1 + 88), (v44 & 2) == 0))
        {
          if (a2 && !BYTE4(v54))
          {
            png_combine_row(a1, a2, a3, -1);
          }

          if (!__dst)
          {
            goto LABEL_130;
          }

          v45 = a1;
          v46 = __dst;
          v47 = a5;
          v48 = -1;
LABEL_129:
          png_combine_row(v45, v46, v47, v48);
LABEL_130:
          png_read_finish_row(a1);
          v51 = *(a1 + 640);
          if (v51)
          {
            v51(a1, *(a1 + 308), *(a1 + 429));
          }

          return;
        }

        v49 = *(a1 + 429);
        if (v49 > 5)
        {
LABEL_125:
          if (__dst)
          {
            png_combine_row(a1, __dst, a5, 1);
          }

          if (!a2)
          {
            goto LABEL_130;
          }

          v45 = a1;
          v46 = a2;
          v47 = a3;
          v48 = 0;
          goto LABEL_129;
        }

        v50 = *(a1 + 336);
        if (v50 + 1 >= v50)
        {
          png_do_read_interlace(&v52, v50 + 1, *(a1 + 344), v49, v44);
          goto LABEL_125;
        }

LABEL_133:
        __break(0x5519u);
        goto LABEL_134;
      }

      if (v54 == 2)
      {
        v33 = 6;
      }

      else
      {
        if (v54 != 6)
        {
          goto LABEL_108;
        }

        v33 = 8;
      }

      if (v52)
      {
        v37 = (v26 + 6);
        while (1)
        {
          v38 = (v37 - 5) < v28 && (v37 - 5) >= v27;
          if (!v38 || (v37 - 4) >= v28 || (v37 - 3) >= v28 || (v37 - 3) < v27 || (v37 - 2) >= v28 || (v37 - 2) < v27 || (v37 - 1) >= v28 || (v37 - 1) < v27 || v37 >= v28 || v37 < v27)
          {
            goto LABEL_133;
          }

          v39 = __rev16(*(v37 - 3));
          v40 = v39 + (bswap32(*(v37 - 1)) >> 16);
          v41 = v39 + __rev16(*(v37 - 5));
          *(v37 - 5) = BYTE1(v41);
          *(v37 - 4) = v41;
          *(v37 - 1) = BYTE1(v40);
          *v37 = v40;
          v37 += v33;
          if (!--v29)
          {
            goto LABEL_108;
          }
        }
      }

      goto LABEL_108;
    }

LABEL_24:
    v20 = *(a1 + 336);
    v21 = *(a1 + 344);
    v35 = v21 >= v20;
    v22 = v21 - v20;
    if (!v35)
    {
      goto LABEL_133;
    }

    v23 = v53 + 1;
    if (v53 + 1 > v22)
    {
      goto LABEL_133;
    }

    v25 = *(a1 + 320);
    v24 = *(a1 + 328);
    if (v25 > v24)
    {
      goto LABEL_133;
    }

    if (v23 > v24 - v25)
    {
      goto LABEL_133;
    }

    memcpy(*(a1 + 320), v20, v53 + 1);
    if (v25 > v25 + v23)
    {
      goto LABEL_133;
    }

    goto LABEL_30;
  }

  v31 = *(a1 + 308);
  v32 = *(a1 + 429);
  if (v32 > 2)
  {
    switch(v32)
    {
      case 3u:
        if ((v31 & 3) == 0 && *(a1 + 280) > 2u)
        {
          goto LABEL_8;
        }

        break;
      case 4u:
        if ((*(a1 + 308) & 3) == 2)
        {
          goto LABEL_8;
        }

        if (!__dst || (v31 & 2) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      case 5u:
        if ((v31 & 1) == 0 && *(a1 + 280) > 1u)
        {
          goto LABEL_8;
        }

        break;
      default:
        goto LABEL_61;
    }
  }

  else if (*(a1 + 429))
  {
    if (v32 != 1)
    {
      if (v32 == 2)
      {
        if ((*(a1 + 308) & 7) == 4)
        {
          goto LABEL_8;
        }

        if (!__dst || (v31 & 4) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }

LABEL_61:
      if (v31)
      {
        goto LABEL_8;
      }

      goto LABEL_67;
    }

    if ((v31 & 7) == 0 && *(a1 + 280) > 4u)
    {
      goto LABEL_8;
    }
  }

  else if ((v31 & 7) == 0)
  {
    goto LABEL_8;
  }

  if (__dst)
  {
LABEL_66:
    png_combine_row(a1, __dst, a5, 1);
  }

LABEL_67:

  png_read_finish_row(a1);
}

void (**png_realloc_array(void (**a1)(void), const void *a2, unint64_t a3, unsigned int a4, unsigned int a5, unint64_t a6))(void)
{
  if ((a4 & 0x80000000) != 0 || a5 < 1 || !a6 || !a2 && a4)
  {
LABEL_26:
    _cg_png_error(a1, "internal error: array realloc");
  }

  if ((a4 ^ 0x7FFFFFFF) < a5)
  {
    return 0;
  }

  v11 = a5 + a4;
  if (!is_mul_ok(a6, v11))
  {
    return 0;
  }

  v14 = v11 * a6;
  a1 = malloc_type_malloc(v11 * a6, 0x142DC6EFuLL);
  v12 = a1;
  if (v14 <= 0 && a1)
  {
    goto LABEL_25;
  }

  if (!a1)
  {
    return v12;
  }

  if (a4)
  {
    if (a3 < a2)
    {
      goto LABEL_25;
    }

    v15 = a4 * a6;
    if (v15 > a3 - a2)
    {
      goto LABEL_25;
    }

    if (v15 > v14)
    {
      goto LABEL_25;
    }

    a1 = memcpy(a1, a2, v15);
    if (v12 > (v12 + v15))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v12 + v15;
  if (v12 + v15 > v12 + v14 || v12 > v16 || (v17 = a5 * a6, v17 > v14 - v15) || (bzero(v12 + v15, v17), v16 > v16 + v17))
  {
LABEL_25:
    __break(0x5519u);
    goto LABEL_26;
  }

  return v12;
}

unint64_t png_combine_row(unint64_t result, char *__dst, unint64_t a3, int a4)
{
  i = *(result + 439);
  if (!*(result + 439))
  {
    _cg_png_error(result, "internal row logic error");
  }

  v12 = *(result + 336);
  v11 = *(result + 344);
  v13 = *(result + 280);
  v14 = *(result + 429);
  v15 = *(result + 384);
  if (v15)
  {
    v16 = (v13 * *(result + 439) + 7) >> 3;
    if (i >= 8)
    {
      v16 = v13 * (i >> 3);
    }

    if (v15 != v16)
    {
      _cg_png_error(result, "internal row size calculation error");
    }
  }

  if (!v13)
  {
    _cg_png_error(result, "internal row width error");
  }

  v17 = v13 * *(result + 439);
  v18 = i >> 3;
  v19 = v17 & 7;
  if ((v17 & 7) != 0)
  {
    v20 = v18 * v13;
    if (i <= 7)
    {
      v20 = (v17 + 7) >> 3;
    }

    v21 = &__dst[v20 - 1];
    v22 = v21 < a3 && v21 >= __dst;
    if (!v22)
    {
      goto LABEL_184;
    }

    LOBYTE(v4) = *v21;
    v23 = 0xFFu >> v19;
    v24 = 255 << v19;
    if (*(result + 90))
    {
      LOBYTE(v7) = v24;
    }

    else
    {
      LOBYTE(v7) = v23;
    }

    v8 = __dst;
    v6 = a3;
  }

  else
  {
    LOBYTE(v7) = 0;
    LOBYTE(v4) = 0;
    v8 = 0;
    v6 = 0;
    v21 = 0;
  }

  v5 = (v12 + 1);
  if (!*(result + 428))
  {
    goto LABEL_27;
  }

  v25 = *(result + 88);
  if ((v25 & 2) == 0 || v14 > 5)
  {
    goto LABEL_27;
  }

  if (a4 != 1)
  {
    if (!a4)
    {
      v26 = v14 & 1;
      goto LABEL_44;
    }

LABEL_27:
    v27 = v18 * v13;
    v17 = (v17 + 7) >> 3;
    if (i <= 7)
    {
      v28 = v17;
    }

    else
    {
      v28 = v27;
    }

    v13 = a3 - __dst;
    if (a3 < __dst || v5 > v11 || v12 > v5)
    {
      goto LABEL_184;
    }

    LODWORD(i) = v11 - v5;
    v29 = v28 > v11 - v5 || v28 > v13;
    if (v29)
    {
      goto LABEL_184;
    }

    result = memcpy(__dst, (v12 + 1), v28);
    v13 = &__dst[v28];
    if (&__dst[v28] < __dst)
    {
      goto LABEL_184;
    }

LABEL_38:
    if (v21)
    {
      if (v21 >= v6 || v21 < v8)
      {
        goto LABEL_184;
      }

      *v21 = *v21 & ~v7 | v7 & v4;
    }

    return result;
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

  v26 = 1;
LABEL_44:
  v17 = (v26 << (3 - ((v14 + 1) >> 1))) & 7;
  if (v13 > v17)
  {
    if (i <= 7)
    {
      v17 = 1;
      if (i != 2)
      {
        v17 = 2;
      }

      if (i == 1)
      {
        v17 = 0;
      }

      if ((v25 & 0x10000) != 0)
      {
        if (a4)
        {
          v40 = &png_combine_row_display_mask + 12 * v17;
          v17 = &v40[(2 * v14) & 0x1FC];
          if (v17 < v40)
          {
            goto LABEL_184;
          }

          v14 = (v40 + 12);
        }

        else
        {
          v65 = &png_combine_row_row_mask + 24 * v17;
          v17 = &v65[4 * *(result + 429)];
          if (v17 < v65)
          {
            goto LABEL_184;
          }

          v14 = (v65 + 24);
        }
      }

      else
      {
        if (!a4)
        {
          goto LABEL_185;
        }

        v30 = &png_combine_row_display_mask + 12 * v17;
        v17 = &v30[((2 * v14) & 0x1FC) + 36];
        if (v17 < (v30 + 36))
        {
          goto LABEL_184;
        }

        v14 = (v30 + 48);
      }

      if (v17 + 4 <= v14 && v17 <= v17 + 4)
      {
        goto LABEL_198;
      }

      goto LABEL_184;
    }

    if ((i & 7) != 0)
    {
      _cg_png_error(result, "invalid user transform pixel depth");
    }

    i = &__dst[v18 * v17];
    if (__dst > i)
    {
      goto LABEL_184;
    }

    result = v18 * v17;
    v31 = v13 * v18 - result;
    v17 = &v5[result];
    v32 = (v18 << ((6 - v14) >> 1));
    if (v31 < v32)
    {
      LODWORD(v32) = v13 * v18 - result;
    }

    if (a4)
    {
      v7 = v32;
    }

    else
    {
      v7 = v18;
    }

    v14 = (7 - v14) >> 1;
    v4 = (v18 << v14);
    if (v7 == 1)
    {
      if (v17 >= v11 || v17 < v12 || i >= a3)
      {
        goto LABEL_184;
      }

      while (1)
      {
        *i = *v17;
        v29 = v31 > v4;
        v31 -= v4;
        if (!v29)
        {
          break;
        }

        v13 = i + v4;
        if (i + v4 >= i)
        {
          v17 += v4;
          if (v17 < v11 && v17 >= v12)
          {
            i += v4;
            if (v13 < a3)
            {
              continue;
            }
          }
        }

        goto LABEL_184;
      }
    }

    else
    {
      if (v7 != 2)
      {
        if (v7 == 3)
        {
          if (v17 < v11 && v17 >= v12 && i < a3)
          {
            v13 = &__dst[v4];
            i = v12 + v4 + 1;
            v17 = v12;
            do
            {
              v33 = &__dst[result];
              v14 = v17 + result;
              __dst[result] = *(v17 + result + 1);
              v34 = (v17 + result + 2);
              v35 = v34 < v11 && v34 >= v12;
              v36 = v33 + 1;
              if (!v35 || v36 >= a3 || v36 < v33)
              {
                break;
              }

              *v36 = *v34;
              v14 += 3;
              if (v14 >= v11)
              {
                break;
              }

              if (v14 < v12)
              {
                break;
              }

              v39 = &__dst[result + 2];
              if (v39 >= a3 || v39 < v33)
              {
                break;
              }

              *v39 = *v14;
              v29 = v31 > v4;
              v31 -= v4;
              if (!v29)
              {
                return result;
              }

              v14 = v13 + result;
              if (v13 + result < v33)
              {
                break;
              }

              if (i + result >= v11)
              {
                break;
              }

              if (i + result < v12)
              {
                break;
              }

              __dst += v4;
              v17 += v4;
              v13 += v4;
              i += v4;
            }

            while (v14 < a3);
          }
        }

        else if (i & 1) != 0 || v7 > 0xF || (v17 & 1) != 0 || (v7 & 1) != 0 || (v4)
        {
          v22 = a3 >= i;
          i = a3 - i;
          if (v22 && v17 <= v11 && v12 <= v17)
          {
            v17 = v11 - v17;
            if (v17 >= v7 && i >= v7)
            {
              v14 = &__dst[v4];
              v79 = a3 - v14 - result;
              v56 = v12 + v4 + 1;
              v57 = ~v12 + v11 - result;
              v58 = v13 * v18 - result - v4;
              do
              {
                v80 = v58;
                v81 = v57;
                v82 = v56;
                v83 = v14;
                v6 = v11;
                v59 = a3;
                v21 = &__dst[result];
                v8 = result;
                result = memcpy(&__dst[result], &v5[result], v7);
                v13 = &v21[v7];
                if (v21 > &v21[v7])
                {
                  break;
                }

                v13 = v31 - v4;
                if (v31 <= v4)
                {
                  return result;
                }

                result = v8;
                v14 = v83;
                i = &v8[v83];
                if (&v8[v83] < v21)
                {
                  break;
                }

                a3 = v59;
                v17 = v31 - v4;
                v7 = v17 >= v7 ? v7 : v80;
                if (i > v59)
                {
                  break;
                }

                v11 = v6;
                i = &v8[v82];
                if (&v8[v82] > v6)
                {
                  break;
                }

                if (v12 > i)
                {
                  break;
                }

                LODWORD(i) = v81 - v4;
                if (v81 - v4 < v7)
                {
                  break;
                }

                __dst += v4;
                v14 = v83 + v4;
                v17 = v79;
                LODWORD(i) = v79 - v4;
                v5 += v4;
                v56 = v82 + v4;
                v57 = v81 - v4;
                v58 = v80 - v4;
                v31 -= v4;
                v22 = v79 >= v7;
                v79 -= v4;
              }

              while (v22);
            }
          }
        }

        else
        {
          v44 = v4 - v7;
          if (((v17 | v4 | i | v7) & 2) != 0)
          {
            v14 = v44 >> 1;
            v68 = i;
            do
            {
              v69 = v7;
              do
              {
                v13 = v17 + 2;
                v71 = v17 + 2 <= v11 && v17 <= v13 && v17 >= v12;
                v72 = v68 + 1;
                if (!v71 || v68 < i || v72 > a3 || v68 > v72)
                {
                  goto LABEL_184;
                }

                *v68 = *v17;
                v17 += 2;
                ++v68;
                v69 -= 2;
              }

              while (v69);
              v29 = v31 > v4;
              v31 -= v4;
              if (!v29)
              {
                return result;
              }

              v17 = v13 + 2 * v14;
              v68 = &v72[v14];
            }

            while (v31 >= v7);
            if (v68 >= i)
            {
              for (i = 2 * v14; ; ++i)
              {
                v17 = v72 + i;
                v76 = v13 + i < v11 && v13 + i >= v12;
                v14 = v17 + 1;
                v77 = !v76 || v17 >= a3;
                if (v77 || v14 < v17)
                {
                  break;
                }

                *(v72 + i) = *(v13 + i);
                if (!--v31)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            v14 = v44 >> 2;
            v45 = i;
            do
            {
              v46 = v7;
              do
              {
                v13 = v17 + 4;
                v48 = v17 + 4 <= v11 && v17 <= v13 && v17 >= v12;
                v49 = v45 + 1;
                if (!v48 || v45 < i || v49 > a3 || v45 > v49)
                {
                  goto LABEL_184;
                }

                *v45 = *v17;
                v17 += 4;
                ++v45;
                v46 -= 4;
              }

              while (v46);
              v29 = v31 > v4;
              v31 -= v4;
              if (!v29)
              {
                return result;
              }

              v17 = v13 + 4 * v14;
              v45 = &v49[v14];
            }

            while (v31 >= v7);
            if (v45 >= i)
            {
              for (i = 4 * v14; ; ++i)
              {
                v17 = v49 + i;
                v53 = v13 + i < v11 && v13 + i >= v12;
                v14 = v17 + 1;
                v54 = !v53 || v17 >= a3;
                if (v54 || v14 < v17)
                {
                  break;
                }

                *(v49 + i) = *(v13 + i);
                if (!--v31)
                {
                  return result;
                }
              }
            }
          }
        }

        goto LABEL_184;
      }

      v13 = &__dst[v4];
      i = v12;
      do
      {
        v14 = i + result + 1;
        v17 = &__dst[result];
        if (v14 >= v11 || v14 < v12 || v17 >= a3)
        {
          goto LABEL_184;
        }

        v14 = *v14;
        *v17 = v14;
        v43 = (i + result + 2);
        if (v43 >= v11)
        {
          goto LABEL_184;
        }

        if (v43 < v12)
        {
          goto LABEL_184;
        }

        v14 = &__dst[result + 1];
        if (v14 >= a3 || v14 < v17)
        {
          goto LABEL_184;
        }

        *v14 = *v43;
        v29 = v31 > v4;
        v31 -= v4;
        if (!v29)
        {
          return result;
        }

        if (v13 + result < v17)
        {
          goto LABEL_184;
        }

        __dst += v4;
        i += v4;
        v13 += v4;
      }

      while (v31 > 1);
      v13 = i + result;
      i += result + 1;
      if (i >= v11 || i < v12 || (i = &__dst[result], &__dst[result] >= a3))
      {
        while (1)
        {
LABEL_184:
          __break(0x5519u);
LABEL_185:
          v60 = &png_combine_row_row_mask + 24 * v17;
          v61 = v60 + 72;
          v62 = v60 + 96;
          v17 = &v60[4 * v14 + 72];
          v14 = v17 + 4;
          if (v17 >= v61 && v14 <= v62 && v17 <= v14)
          {
LABEL_198:
            v17 = *v17;
            i = 8 / i;
            while (1)
            {
              if (v17)
              {
                if (v17 == 255)
                {
                  if (v5 >= v11 || v5 < v12 || __dst >= a3)
                  {
                    goto LABEL_184;
                  }

                  v66 = *v5;
                }

                else
                {
                  if (__dst >= a3 || v5 >= v11 || v5 < v12)
                  {
                    goto LABEL_184;
                  }

                  v14 = v17 & *v5;
                  v66 = v17 & *v5 | *__dst & ~v17;
                }

                *__dst = v66;
              }

              v29 = v13 > i;
              v13 -= i;
              if (!v29)
              {
                goto LABEL_38;
              }

              if (__dst + 1 < __dst)
              {
                break;
              }

              HIDWORD(v67) = v17;
              LODWORD(v67) = v17;
              v17 = (v67 >> 8);
              ++v5;
              ++__dst;
            }
          }
        }
      }

      *i = *(v13 + 1);
    }
  }

  return result;
}

unint64_t png_do_read_transformations(unint64_t result, unsigned int *a2)
{
  v2 = result;
  v927 = *MEMORY[0x1E69E9840];
  v3 = *(result + 336);
  if (!v3)
  {
    goto LABEL_2012;
  }

  if ((*(result + 80) & 0x4040) == 0x4000)
  {
    v923 = "Uninitialized row";
    goto LABEL_2016;
  }

  v5 = *(result + 88);
  if ((v5 & 0x1000) != 0)
  {
    if (*(a2 + 16) == 3)
    {
      v6 = v3 + 1;
      if (v3 + 1 < v3)
      {
        goto LABEL_2011;
      }

      v7 = *(result + 344);
      v8 = *(result + 400);
      v9 = *(result + 408);
      v10 = *(result + 608);
      v11 = *(result + 616);
      v12 = *(result + 424);
      v13 = *a2;
      result = *(a2 + 17);
      if (result > 7)
      {
        if (result != 8)
        {
          goto LABEL_130;
        }

        if (!v12)
        {
          goto LABEL_97;
        }

        goto LABEL_31;
      }

      if (result == 4)
      {
        if (v13)
        {
          v51 = 4 * (*a2 & 1);
          v52 = (v6 + ((v13 - 1) >> 1));
          v53 = (v3 + v13);
          v54 = *a2;
          do
          {
            if (v52 >= v7 || v52 < v6 || v53 >= v7 || v53 < v6)
            {
              goto LABEL_2011;
            }

            *v53-- = (*v52 >> v51) & 0xF;
            v148 = v51 == 4;
            v55 = v51 == 4;
            v51 += 4;
            if (v148)
            {
              v51 = 0;
            }

            v52 -= v55;
            --v54;
          }

          while (v54);
          goto LABEL_94;
        }
      }

      else if (result == 2)
      {
        if (v13)
        {
          v46 = ~(2 * v13 + 6) & 6;
          v47 = (v6 + ((v13 - 1) >> 2));
          v48 = (v3 + v13);
          v49 = *a2;
          do
          {
            if (v47 >= v7 || v47 < v6 || v48 >= v7 || v48 < v6)
            {
              goto LABEL_2011;
            }

            *v48-- = (*v47 >> v46) & 3;
            v148 = v46 == 6;
            v50 = v46 == 6;
            v46 += 2;
            if (v148)
            {
              v46 = 0;
            }

            v47 -= v50;
            --v49;
          }

          while (v49);
          goto LABEL_94;
        }
      }

      else
      {
        v14 = *a2;
        if (result != 1)
        {
          goto LABEL_96;
        }

        if (v13)
        {
          v15 = -v13 & 7;
          v16 = (v6 + ((v13 - 1) >> 3));
          v17 = (v3 + v13);
          v18 = *a2;
          do
          {
            if (v16 >= v7 || v16 < v6 || v17 >= v7 || v17 < v6)
            {
              goto LABEL_2011;
            }

            *v17-- = (*v16 >> v15) & 1;
            v19 = v15 == 7;
            if (v15 == 7)
            {
              v15 = 0;
            }

            else
            {
              ++v15;
            }

            v16 -= v19;
            --v18;
          }

          while (v18);
LABEL_94:
          v14 = v13;
          goto LABEL_96;
        }
      }

      v14 = 0;
LABEL_96:
      result = 8;
      *(a2 + 17) = 8;
      *(a2 + 19) = 8;
      *(a2 + 1) = v14;
      if (!v12)
      {
LABEL_97:
        v43 = (3 * v13);
        if (v13)
        {
          v56 = (3 * v13);
          do
          {
            v57 = (v3 + v13);
            if (v3 + v13 >= v7 || v57 < v6)
            {
              goto LABEL_2011;
            }

            v59 = v8 + 3 * *v57;
            v60 = v59 + 3;
            v61 = v59 < v8 || v60 > v9;
            if (v61 || v59 > v60)
            {
              goto LABEL_2011;
            }

            v63 = (v3 + v56);
            if (v3 + v56 >= v7 || v63 < v6)
            {
              goto LABEL_2011;
            }

            *v63 = *(v59 + 2);
            v64 = v8 + 3 * *v57;
            v65 = v64 + 3;
            v66 = v64 < v8 || v65 > v9;
            if (v66 || v64 > v65)
            {
              goto LABEL_2011;
            }

            result = v3 + v56 - 1;
            if (result >= v7)
            {
              goto LABEL_2011;
            }

            if (result < v6)
            {
              goto LABEL_2011;
            }

            *result = *(v64 + 1);
            v68 = (v8 + 3 * *v57);
            if (v68 < v8)
            {
              goto LABEL_2011;
            }

            if ((v68 + 3) > v9)
            {
              goto LABEL_2011;
            }

            if (v68 > v68 + 3)
            {
              goto LABEL_2011;
            }

            v69 = (v3 + v56 - 2);
            if (v69 >= v7 || v69 < v6)
            {
              goto LABEL_2011;
            }

            *v69 = *v68;
            v56 -= 3;
            --v13;
          }

          while (v13);
        }

        *(a2 + 17) = 8;
        *(a2 + 19) = 24;
        v44 = 3;
        v45 = 2;
LABEL_129:
        *(a2 + 1) = v43;
        *(a2 + 16) = v45;
        *(a2 + 18) = v44;
        goto LABEL_130;
      }

LABEL_31:
      if (v13)
      {
        v24 = 4 * v13;
        result = v13;
        do
        {
          v25 = (v3 + result);
          v26 = v3 + result < v7 && v25 >= v6;
          if (!v26)
          {
            goto LABEL_2011;
          }

          v27 = v3 + v24;
          v28 = *v25;
          if (v12 <= v28)
          {
            if (v27 >= v7 || v27 < v6)
            {
              goto LABEL_2011;
            }

            v33 = -1;
          }

          else
          {
            v29 = (v10 + v28);
            if (v29 >= v11 || v29 < v10 || v27 >= v7 || v27 < v6)
            {
              goto LABEL_2011;
            }

            v33 = *v29;
          }

          *(v3 + v24) = v33;
          v34 = (v3 + v24 - 1);
          v35 = v8 + 3 * *v25;
          v36 = v35 + 3;
          v37 = v35 < v8 || v36 > v9;
          if (v37 || v35 > v36)
          {
            goto LABEL_2011;
          }

          if (v34 >= v7)
          {
            goto LABEL_2011;
          }

          if (v34 < v6)
          {
            goto LABEL_2011;
          }

          *v34 = *(v35 + 2);
          v39 = v8 + 3 * *v25;
          if (v39 < v8)
          {
            goto LABEL_2011;
          }

          if (v39 + 3 > v9)
          {
            goto LABEL_2011;
          }

          if (v39 > v39 + 3)
          {
            goto LABEL_2011;
          }

          v40 = (v3 + v24 - 2);
          if (v40 >= v7)
          {
            goto LABEL_2011;
          }

          if (v40 < v6)
          {
            goto LABEL_2011;
          }

          *v40 = *(v39 + 1);
          v41 = (v8 + 3 * *v25);
          if (v41 < v8)
          {
            goto LABEL_2011;
          }

          if ((v41 + 3) > v9)
          {
            goto LABEL_2011;
          }

          if (v41 > v41 + 3)
          {
            goto LABEL_2011;
          }

          v42 = (v3 + v24 - 3);
          if (v42 >= v7 || v42 < v6)
          {
            goto LABEL_2011;
          }

          *v42 = *v41;
          v24 -= 4;
          --result;
        }

        while (result);
      }

      *(a2 + 17) = 8;
      *(a2 + 19) = 32;
      v43 = (4 * v13);
      v44 = 4;
      v45 = 6;
      goto LABEL_129;
    }

    if ((v5 & 0x2000000) != 0 && *(result + 424))
    {
      v20 = v3 + 1;
      if (v3 + 1 < v3)
      {
        goto LABEL_2011;
      }

      v21 = (result + 624);
      if (result + 624 > result + 634)
      {
        goto LABEL_2011;
      }

      v22 = *(result + 344);
      v23 = a2;
    }

    else
    {
      v20 = v3 + 1;
      if (v3 + 1 < v3)
      {
        goto LABEL_2011;
      }

      v22 = *(result + 344);
      v23 = a2;
      v21 = 0;
    }

    result = png_do_expand(v23, v20, v22, v21);
  }

LABEL_130:
  v70 = *(v2 + 88);
  if ((v70 & 0x40080) == 0x40000 && (*(a2 + 16) | 2) == 6)
  {
    v71 = *(v2 + 336);
    if (v71 + 1 < v71)
    {
      goto LABEL_2011;
    }

    result = png_do_strip_channel(a2, v71 + 1, *(v2 + 344), 0);
    v70 = *(v2 + 88);
  }

  if ((v70 & 0x600000) == 0)
  {
    goto LABEL_315;
  }

  v72 = *(v2 + 336);
  v73 = v72 + 1;
  if (v72 + 1 < v72)
  {
    goto LABEL_2011;
  }

  v74 = *(a2 + 16);
  if ((v74 & 3) != 2)
  {
    goto LABEL_315;
  }

  v75 = *(v2 + 344);
  v76 = *(v2 + 906);
  v77 = *(v2 + 908);
  v78 = 0x8000 - (v76 + v77);
  v79 = *a2;
  if (*(a2 + 17) == 8)
  {
    v80 = *(v2 + 528);
    if (v80 && (result = *(v2 + 544)) != 0)
    {
      if (v79)
      {
        v81 = 0;
        v82 = *a2;
        v83 = (v72 + 1);
        v84 = (v72 + 1);
        do
        {
          if (v83 >= v75)
          {
            goto LABEL_2011;
          }

          if (v83 < v73)
          {
            goto LABEL_2011;
          }

          if ((v83 + 1) >= v75)
          {
            goto LABEL_2011;
          }

          v86 = v83 + 2;
          v85 = *v83;
          if ((v83 + 2) >= v75 || v86 < v73)
          {
            goto LABEL_2011;
          }

          v87 = v83[1];
          v88 = *v86;
          if (v85 == v87 && v85 == v88)
          {
            v89 = *(v2 + 496);
            if (v89)
            {
              v85 += v89;
              if (v85 < v89 || v85 >= *(v2 + 504))
              {
                goto LABEL_2011;
              }

              LOBYTE(v85) = *v85;
            }

            if (v84 >= v75 || v84 < v73)
            {
              goto LABEL_2011;
            }
          }

          else
          {
            v90 = &v85[result];
            if (&v85[result] < result)
            {
              goto LABEL_2011;
            }

            v91 = *(v2 + 552);
            if (v90 >= v91)
            {
              goto LABEL_2011;
            }

            v92 = (result + v87);
            if (result + v87 < result)
            {
              goto LABEL_2011;
            }

            if (v92 >= v91)
            {
              goto LABEL_2011;
            }

            v93 = (result + v88);
            if (v93 < result || v93 >= v91)
            {
              goto LABEL_2011;
            }

            v94 = (v80 + ((*v92 * v77 + *v90 * v76 + v78 * *v93 + 0x4000) >> 15));
            v95 = v94 < *(v2 + 536) && v94 >= v80;
            v96 = !v95 || v84 >= v75;
            if (v96 || v84 < v73)
            {
              goto LABEL_2011;
            }

            LOBYTE(v85) = *v94;
            v81 = 1;
          }

          v98 = v83 + 3;
          *v84 = v85;
          v99 = v84 + 1;
          if ((v74 & 4) != 0)
          {
            if (v98 >= v75 || v98 < v73 || v84 < v72 || v99 >= v75)
            {
              goto LABEL_2011;
            }

            v100 = *v98;
            v98 = v83 + 4;
            v99 = v84 + 2;
            v84[1] = v100;
          }

          v83 = v98;
          v84 = v99;
          --v82;
        }

        while (v82);
        goto LABEL_309;
      }
    }

    else if (v79)
    {
      v81 = 0;
      v130 = *a2;
      result = v72 + 1;
      v131 = (v72 + 1);
      do
      {
        if (result >= v75)
        {
          goto LABEL_2011;
        }

        if (result < v73)
        {
          goto LABEL_2011;
        }

        if (result + 1 >= v75)
        {
          goto LABEL_2011;
        }

        v133 = (result + 2);
        v132 = *result;
        if (result + 2 >= v75 || v133 < v73)
        {
          goto LABEL_2011;
        }

        v134 = *(result + 1);
        v135 = *v133;
        v137 = v131 < v75 && v131 >= v73;
        if (v132 == v134 && v132 == v135)
        {
          if (!v137)
          {
            goto LABEL_2011;
          }
        }

        else
        {
          if (!v137)
          {
            goto LABEL_2011;
          }

          LOBYTE(v132) = (v132 * v76 + v134 * v77 + v78 * v135) >> 15;
          v81 = 1;
        }

        v138 = (result + 3);
        *v131 = v132;
        v139 = v131 + 1;
        if ((v74 & 4) != 0)
        {
          if (v138 >= v75 || v138 < v73 || v131 < v72 || v139 >= v75)
          {
            goto LABEL_2011;
          }

          v140 = *v138;
          v138 = (result + 4);
          v139 = v131 + 2;
          v131[1] = v140;
        }

        result = v138;
        v131 = v139;
        --v130;
      }

      while (v130);
      goto LABEL_309;
    }

LABEL_308:
    v81 = 0;
    goto LABEL_309;
  }

  v101 = *(v2 + 576);
  if (v101)
  {
    v102 = *(v2 + 560);
    if (v102)
    {
      if (!v79)
      {
        goto LABEL_308;
      }

      v81 = 0;
      LODWORD(result) = *a2;
      v103 = v73;
      v104 = v73;
      while (1)
      {
        if (v103 >= v75)
        {
          goto LABEL_2011;
        }

        if (v103 < v73)
        {
          goto LABEL_2011;
        }

        if ((v103 + 1) >= v75)
        {
          goto LABEL_2011;
        }

        if ((v103 + 2) >= v75)
        {
          goto LABEL_2011;
        }

        if ((v103 + 2) < v73)
        {
          goto LABEL_2011;
        }

        if ((v103 + 3) >= v75)
        {
          goto LABEL_2011;
        }

        if ((v103 + 3) < v73)
        {
          goto LABEL_2011;
        }

        v105 = v103 + 4;
        if ((v103 + 4) >= v75)
        {
          goto LABEL_2011;
        }

        if (v105 < v73)
        {
          goto LABEL_2011;
        }

        v106 = v103 + 5;
        if ((v103 + 5) >= v75 || v106 < v73)
        {
          goto LABEL_2011;
        }

        v107 = *v103;
        v108 = v103[1];
        v109 = v108 | (v107 << 8);
        v110 = v103[2];
        v111 = v103[3];
        v112 = *v106 | (*v105 << 8);
        if ((v111 | (v110 << 8)) == v109 && v109 == v112)
        {
          v113 = *(v2 + 512);
          if (!v113)
          {
            goto LABEL_233;
          }

          v114 = (v113 + 16 * (v111 >> *(v2 + 488)));
          if (v114 < v113)
          {
            goto LABEL_2011;
          }

          if ((v114 + 2) > *(v2 + 520))
          {
            goto LABEL_2011;
          }

          if (v114 > v114 + 2)
          {
            goto LABEL_2011;
          }

          v115 = (*v114 + 2 * v110);
          if (v115 < *v114 || (v115 + 1) > v114[1] || v115 > v115 + 1)
          {
            goto LABEL_2011;
          }
        }

        else
        {
          v116 = *(v2 + 488);
          v117 = (v101 + 16 * (v108 >> v116));
          if (v117 < v101)
          {
            goto LABEL_2011;
          }

          v118 = *(v2 + 584);
          if ((v117 + 2) > v118)
          {
            goto LABEL_2011;
          }

          if (v117 > v117 + 2)
          {
            goto LABEL_2011;
          }

          v119 = (*v117 + 2 * (v109 >> 8));
          if (v119 < *v117)
          {
            goto LABEL_2011;
          }

          if ((v119 + 1) > v117[1])
          {
            goto LABEL_2011;
          }

          if (v119 > v119 + 1)
          {
            goto LABEL_2011;
          }

          v120 = (v101 + 16 * (v111 >> v116));
          if (v120 < v101)
          {
            goto LABEL_2011;
          }

          if ((v120 + 2) > v118)
          {
            goto LABEL_2011;
          }

          if (v120 > v120 + 2)
          {
            goto LABEL_2011;
          }

          v121 = (*v120 + 2 * v110);
          if (v121 < *v120)
          {
            goto LABEL_2011;
          }

          if ((v121 + 1) > v120[1])
          {
            goto LABEL_2011;
          }

          if (v121 > v121 + 1)
          {
            goto LABEL_2011;
          }

          v122 = (v101 + 16 * (v112 >> v116));
          if (v122 < v101)
          {
            goto LABEL_2011;
          }

          if ((v122 + 2) > v118)
          {
            goto LABEL_2011;
          }

          if (v122 > v122 + 2)
          {
            goto LABEL_2011;
          }

          v123 = (*v122 + 2 * (v112 >> 8));
          if (v123 < *v122)
          {
            goto LABEL_2011;
          }

          if ((v123 + 1) > v122[1])
          {
            goto LABEL_2011;
          }

          if (v123 > v123 + 1)
          {
            goto LABEL_2011;
          }

          v124 = *v121 * v77 + *v119 * v76 + v78 * *v123 + 0x4000;
          v125 = (v102 + 16 * ((v124 >> 15) >> v116));
          if (v125 < v102)
          {
            goto LABEL_2011;
          }

          if ((v125 + 2) > *(v2 + 568))
          {
            goto LABEL_2011;
          }

          if (v125 > v125 + 2)
          {
            goto LABEL_2011;
          }

          v115 = (*v125 + 2 * (v124 >> 23));
          if (v115 < *v125 || (v115 + 1) > v125[1] || v115 > v115 + 1)
          {
            goto LABEL_2011;
          }

          v81 = 1;
        }

        v126 = *v115;
        LOBYTE(v108) = v126;
        v107 = v126 >> 8;
LABEL_233:
        if (v104 >= v75)
        {
          goto LABEL_2011;
        }

        if (v104 < v73)
        {
          goto LABEL_2011;
        }

        *v104 = v107;
        v127 = v104 + 2;
        if ((v104 + 1) >= v75)
        {
          goto LABEL_2011;
        }

        v128 = v103 + 6;
        v104[1] = v108;
        if ((v74 & 4) != 0)
        {
          if (v128 >= v75)
          {
            goto LABEL_2011;
          }

          if (v128 < v73)
          {
            goto LABEL_2011;
          }

          if (v127 >= v75)
          {
            goto LABEL_2011;
          }

          if (v127 < v73)
          {
            goto LABEL_2011;
          }

          v129 = v103 + 7;
          *v127 = v103[6];
          if ((v103 + 7) >= v75 || v129 < v73 || (v104 + 3) >= v75 || (v104 + 3) < v73)
          {
            goto LABEL_2011;
          }

          v128 = v103 + 8;
          v127 = v104 + 4;
          v104[3] = *v129;
        }

        v103 = v128;
        v104 = v127;
        result = (result - 1);
        if (!result)
        {
          goto LABEL_309;
        }
      }
    }
  }

  if (!v79)
  {
    goto LABEL_308;
  }

  v81 = 0;
  v141 = *a2;
  result = v73;
  v142 = v73;
  do
  {
    if (result >= v75)
    {
      goto LABEL_2011;
    }

    if (result < v73)
    {
      goto LABEL_2011;
    }

    if (result + 1 >= v75)
    {
      goto LABEL_2011;
    }

    if (result + 2 >= v75)
    {
      goto LABEL_2011;
    }

    if (result + 2 < v73)
    {
      goto LABEL_2011;
    }

    if (result + 3 >= v75)
    {
      goto LABEL_2011;
    }

    if (result + 3 < v73)
    {
      goto LABEL_2011;
    }

    v143 = (result + 4);
    if (result + 4 >= v75)
    {
      goto LABEL_2011;
    }

    if (v143 < v73)
    {
      goto LABEL_2011;
    }

    v144 = (result + 5);
    if (result + 5 >= v75 || v144 < v73)
    {
      goto LABEL_2011;
    }

    v145 = __rev16(*result);
    v146 = __rev16(*(result + 2));
    v147 = *v144 | (*v143 << 8);
    v148 = v145 == v147 && v145 == v146;
    if (!v148)
    {
      v81 = 1;
    }

    if (v142 >= v75)
    {
      goto LABEL_2011;
    }

    if (v142 < v73)
    {
      goto LABEL_2011;
    }

    v149 = v146 * v77 + v145 * v76 + v147 * v78 + 0x4000;
    *v142 = v149 >> 23;
    v150 = v142 + 2;
    if ((v142 + 1) >= v75)
    {
      goto LABEL_2011;
    }

    v151 = result + 6;
    v142[1] = v149 >> 15;
    if ((v74 & 4) != 0)
    {
      if (v151 >= v75)
      {
        goto LABEL_2011;
      }

      if (v151 < v73)
      {
        goto LABEL_2011;
      }

      if (v150 >= v75)
      {
        goto LABEL_2011;
      }

      if (v150 < v73)
      {
        goto LABEL_2011;
      }

      v152 = (result + 7);
      *v150 = *(result + 6);
      if (result + 7 >= v75 || v152 < v73 || (v142 + 3) >= v75 || (v142 + 3) < v73)
      {
        goto LABEL_2011;
      }

      v151 = result + 8;
      v150 = v142 + 4;
      v142[3] = *v152;
    }

    result = v151;
    v142 = v150;
    --v141;
  }

  while (v141);
LABEL_309:
  v153 = *(a2 + 18) - 2;
  *(a2 + 18) = v153;
  *(a2 + 16) &= ~2u;
  v154 = *(a2 + 17) * v153;
  *(a2 + 19) = v154;
  v155 = (v154 * v79 + 7) >> 3;
  v156 = v79 * (v154 >> 3);
  if (v154 < 8u)
  {
    v156 = v155;
  }

  *(a2 + 1) = v156;
  v70 = *(v2 + 88);
  if (v81)
  {
    *(v2 + 904) = 1;
    if ((v70 & 0x600000) == 0x400000)
    {
      result = png_warning(v2, "png_do_rgb_to_gray found nongray pixel");
      v70 = *(v2 + 88);
    }

    if ((v70 & 0x600000) == 0x200000)
    {
      v923 = "png_do_rgb_to_gray found nongray pixel";
      goto LABEL_2016;
    }
  }

LABEL_315:
  if ((v70 & 0x4000) != 0 && (*(v2 + 77) & 8) == 0)
  {
    v157 = *(v2 + 336);
    if (v157 + 1 < v157)
    {
      goto LABEL_2011;
    }

    result = png_do_gray_to_rgb(a2, v157 + 1, *(v2 + 344));
    v70 = *(v2 + 88);
  }

  if ((v70 & 0x80) == 0)
  {
    goto LABEL_320;
  }

  v180 = *(v2 + 336);
  v181 = (v180 + 1);
  if (v180 + 1 < v180)
  {
    goto LABEL_2011;
  }

  v182 = *(v2 + 344);
  v183 = *(v2 + 496);
  v184 = *(v2 + 504);
  v185 = *(v2 + 512);
  v186 = *(v2 + 520);
  v187 = *(v2 + 488);
  v188 = *a2;
  v189 = *(a2 + 16);
  if (v189 <= 3)
  {
    if (*(a2 + 16))
    {
      if (v189 == 2)
      {
        if (*(a2 + 17) == 8)
        {
          if (v183)
          {
            if (v188)
            {
              v190 = (v180 + 3);
              do
              {
                v191 = v190 - 2;
                if ((v190 - 2) >= v182 || v191 < v181)
                {
                  goto LABEL_2011;
                }

                v193 = *v191;
                if (*(v2 + 626) != v193)
                {
                  goto LABEL_380;
                }

                if ((v190 - 1) >= v182)
                {
                  goto LABEL_2011;
                }

                if (*(v2 + 628) != *(v190 - 1))
                {
                  goto LABEL_380;
                }

                if (v190 >= v182 || v190 < v181)
                {
                  goto LABEL_2011;
                }

                if (*(v2 + 630) == *v190)
                {
                  *(v190 - 2) = *(v2 + 454);
                  *(v190 - 1) = *(v2 + 456);
                  v194 = *(v2 + 458);
                }

                else
                {
LABEL_380:
                  v195 = (v183 + v193);
                  if (v195 >= v184 || v195 < v183)
                  {
                    goto LABEL_2011;
                  }

                  *(v190 - 2) = *v195;
                  if ((v190 - 1) >= v182)
                  {
                    goto LABEL_2011;
                  }

                  v197 = (v183 + *(v190 - 1));
                  if (v197 >= v184 || v197 < v183)
                  {
                    goto LABEL_2011;
                  }

                  *(v190 - 1) = *v197;
                  if (v190 >= v182)
                  {
                    goto LABEL_2011;
                  }

                  if (v190 < v181)
                  {
                    goto LABEL_2011;
                  }

                  v199 = (v183 + *v190);
                  if (v199 >= v184 || v199 < v183)
                  {
                    goto LABEL_2011;
                  }

                  v194 = *v199;
                }

                *v190 = v194;
                v190 += 3;
                --v188;
              }

              while (v188);
            }
          }

          else if (v188)
          {
            v787 = (v180 + 3);
            do
            {
              v788 = v787 - 2;
              if ((v787 - 2) >= v182 || v788 < v181)
              {
                goto LABEL_2011;
              }

              if (*(v2 + 626) == *v788)
              {
                if ((v787 - 1) >= v182)
                {
                  goto LABEL_2011;
                }

                if (*(v2 + 628) == *(v787 - 1))
                {
                  if (v787 >= v182 || v787 < v181)
                  {
                    goto LABEL_2011;
                  }

                  if (*(v2 + 630) == *v787)
                  {
                    *(v787 - 2) = *(v2 + 454);
                    *(v787 - 1) = *(v2 + 456);
                    *v787 = *(v2 + 458);
                  }
                }
              }

              v787 += 3;
              --v188;
            }

            while (v188);
          }
        }

        else if (v185)
        {
          if (v188)
          {
            v416 = (v180 + 6);
            do
            {
              v417 = v416 - 5;
              if ((v416 - 5) >= v182 || v417 < v181)
              {
                goto LABEL_2011;
              }

              v419 = v416 - 4;
              if ((v416 - 4) >= v182)
              {
                goto LABEL_2011;
              }

              v420 = v416 - 3;
              if ((v416 - 3) >= v182)
              {
                goto LABEL_2011;
              }

              if (v420 < v181)
              {
                goto LABEL_2011;
              }

              v421 = v416 - 2;
              if ((v416 - 2) >= v182 || v421 < v181 || (v416 - 1) >= v182 || v416 - 1 < v181 || v416 >= v182 || v416 < v181)
              {
                goto LABEL_2011;
              }

              v422 = *(v416 - 5);
              v423 = *(v416 - 4);
              v424 = *(v416 - 3);
              v425 = *(v416 - 2);
              v426 = *(v416 - 1);
              v427 = *v416;
              if ((v423 | (v422 << 8)) == *(v2 + 626) && (v425 | (v424 << 8)) == *(v2 + 628) && (v427 | (v426 << 8)) == *(v2 + 630))
              {
                v428 = *(v2 + 454);
                *v417 = HIBYTE(v428);
                *v419 = v428;
                result = *(v2 + 456);
                *v420 = BYTE1(result);
                *v421 = result;
                v429 = (v2 + 458);
              }

              else
              {
                v430 = (v185 + 16 * (v423 >> v187));
                if ((v430 + 2) > v186)
                {
                  goto LABEL_2011;
                }

                if (v430 > v430 + 2)
                {
                  goto LABEL_2011;
                }

                if (v430 < v185)
                {
                  goto LABEL_2011;
                }

                v431 = (*v430 + 2 * v422);
                if (v431 < *v430)
                {
                  goto LABEL_2011;
                }

                if ((v431 + 1) > v430[1])
                {
                  goto LABEL_2011;
                }

                if (v431 > v431 + 1)
                {
                  goto LABEL_2011;
                }

                v432 = *v431;
                *v417 = HIBYTE(v432);
                *v419 = v432;
                v433 = (v185 + 16 * (v425 >> v187));
                if ((v433 + 2) > v186)
                {
                  goto LABEL_2011;
                }

                if (v433 > v433 + 2)
                {
                  goto LABEL_2011;
                }

                if (v433 < v185)
                {
                  goto LABEL_2011;
                }

                v434 = (*v433 + 2 * v424);
                if (v434 < *v433)
                {
                  goto LABEL_2011;
                }

                if ((v434 + 1) > v433[1])
                {
                  goto LABEL_2011;
                }

                if (v434 > v434 + 1)
                {
                  goto LABEL_2011;
                }

                v435 = *v434;
                *v420 = HIBYTE(*v434);
                *v421 = v435;
                v436 = (v185 + 16 * (v427 >> v187));
                if ((v436 + 2) > v186)
                {
                  goto LABEL_2011;
                }

                if (v436 > v436 + 2)
                {
                  goto LABEL_2011;
                }

                if (v436 < v185)
                {
                  goto LABEL_2011;
                }

                v429 = (*v436 + 2 * v426);
                if (v429 < *v436)
                {
                  goto LABEL_2011;
                }

                result = v436[1];
                if ((v429 + 1) > result || v429 > v429 + 1)
                {
                  goto LABEL_2011;
                }
              }

              *(v416 - 1) = bswap32(*v429) >> 16;
              v416 += 6;
              --v188;
            }

            while (v188);
          }
        }

        else if (v188)
        {
          v790 = v180 + 6;
          do
          {
            v791 = v790 - 5 < v182 && v790 - 5 >= v181;
            if (!v791 || v790 - 4 >= v182 || v790 - 3 >= v182 || v790 - 3 < v181 || v790 - 2 >= v182 || v790 - 2 < v181 || v790 - 1 >= v182 || v790 - 1 < v181 || v790 >= v182 || v790 < v181)
            {
              goto LABEL_2011;
            }

            if (__rev16(*(v790 - 5)) == *(v2 + 626) && __rev16(*(v790 - 3)) == *(v2 + 628) && __rev16(*(v790 - 1)) == *(v2 + 630))
            {
              *(v790 - 5) = bswap32(*(v2 + 454)) >> 16;
              *(v790 - 3) = bswap32(*(v2 + 456)) >> 16;
              *(v790 - 1) = bswap32(*(v2 + 458)) >> 16;
            }

            v790 += 6;
            --v188;
          }

          while (v188);
        }
      }
    }

    else
    {
      v262 = *(a2 + 17);
      if (v262 <= 3)
      {
        if (v262 == 1)
        {
          if (v188)
          {
            v805 = (v180 + 1);
            v806 = 7;
            do
            {
              if (v805 >= v182 || v805 < v181)
              {
                goto LABEL_2011;
              }

              v807 = *v805;
              if (((v807 >> v806) & 1) == *(v2 + 632))
              {
                *v805 = (*(v2 + 460) << v806) | (0x7F7Fu >> (7 - v806)) & v807;
              }

              v808 = v806 == 0;
              if (v806)
              {
                --v806;
              }

              else
              {
                v806 = 7;
              }

              if (v808)
              {
                ++v805;
              }

              --v188;
            }

            while (v188);
          }
        }

        else if (v262 == 2)
        {
          if (v183)
          {
            if (v188)
            {
              v560 = (v180 + 1);
              v561 = 6;
              do
              {
                if (v560 >= v182 || v560 < v181)
                {
                  goto LABEL_2011;
                }

                v562 = *v560;
                v563 = (v562 >> v561) & 3;
                if (v563 == *(v2 + 632))
                {
                  v564 = *(v2 + 460) << v561;
                  result = 0x3F3Fu >> (6 - v561);
                  v565 = result & v562;
                }

                else
                {
                  v566 = (v183 + (85 * v563));
                  if (v566 >= v184 || v566 < v183)
                  {
                    goto LABEL_2011;
                  }

                  result = 0x3F3Fu >> (6 - v561);
                  v565 = result & v562;
                  v564 = *v566 >> 6 << v561;
                }

                *v560 = v564 | v565;
                v568 = v561 == 0;
                if (v561)
                {
                  v561 -= 2;
                }

                else
                {
                  v561 = 6;
                }

                if (v568)
                {
                  ++v560;
                }

                --v188;
              }

              while (v188);
            }
          }

          else if (v188)
          {
            v909 = (v180 + 1);
            v910 = 6;
            do
            {
              if (v909 >= v182 || v909 < v181)
              {
                goto LABEL_2011;
              }

              v911 = *v909;
              if (((v911 >> v910) & 3) == *(v2 + 632))
              {
                *v909 = (*(v2 + 460) << v910) | (0x3F3Fu >> (6 - v910)) & v911;
              }

              v912 = v910 == 0;
              if (v910)
              {
                v910 -= 2;
              }

              else
              {
                v910 = 6;
              }

              if (v912)
              {
                ++v909;
              }

              --v188;
            }

            while (v188);
          }
        }
      }

      else
      {
        switch(v262)
        {
          case 4u:
            if (v183)
            {
              if (v188)
              {
                v792 = (v180 + 1);
                v793 = 4;
                do
                {
                  if (v792 >= v182 || v792 < v181)
                  {
                    goto LABEL_2011;
                  }

                  v794 = *v792;
                  v795 = (v794 >> v793) & 0xF;
                  if (v795 == *(v2 + 632))
                  {
                    v796 = *(v2 + 460) << v793;
                    v797 = (0xF0Fu >> (4 - v793)) & v794;
                  }

                  else
                  {
                    v798 = (v183 + (v795 | (16 * v795)));
                    if (v798 >= v184 || v798 < v183)
                    {
                      goto LABEL_2011;
                    }

                    v797 = (0xF0Fu >> (4 - v793)) & v794;
                    v796 = *v798 >> 4 << v793;
                  }

                  *v792 = v796 | v797;
                  v800 = v793 == 0;
                  if (v793)
                  {
                    v793 -= 4;
                  }

                  else
                  {
                    v793 = 4;
                  }

                  if (v800)
                  {
                    ++v792;
                  }

                  --v188;
                }

                while (v188);
              }
            }

            else if (v188)
            {
              v902 = (v180 + 1);
              v903 = 4;
              do
              {
                if (v902 >= v182 || v902 < v181)
                {
                  goto LABEL_2011;
                }

                v904 = *v902;
                if (((v904 >> v903) & 0xF) == *(v2 + 632))
                {
                  *v902 = (*(v2 + 460) << v903) | (0xF0Fu >> (4 - v903)) & v904;
                }

                v905 = v903 == 0;
                if (v903)
                {
                  v903 -= 4;
                }

                else
                {
                  v903 = 4;
                }

                if (v905)
                {
                  ++v902;
                }

                --v188;
              }

              while (v188);
            }

            break;
          case 8u:
            if (v183)
            {
              for (; v188; --v188)
              {
                if (v181 >= v182)
                {
                  goto LABEL_2011;
                }

                v801 = *v181;
                if (*(v2 + 632) == v801)
                {
                  v802 = *(v2 + 460);
                }

                else
                {
                  v803 = (v183 + v801);
                  if (v803 >= v184 || v803 < v183)
                  {
                    goto LABEL_2011;
                  }

                  v802 = *v803;
                }

                *v181++ = v802;
              }
            }

            else
            {
              for (; v188; --v188)
              {
                if (v181 >= v182)
                {
                  goto LABEL_2011;
                }

                if (*(v2 + 632) == *v181)
                {
                  *v181 = *(v2 + 460);
                }

                ++v181;
              }
            }

            break;
          case 0x10u:
            if (v185)
            {
              if (v188)
              {
                v263 = (v180 + 1);
                do
                {
                  if (v263 >= v182)
                  {
                    goto LABEL_2011;
                  }

                  if (v263 < v181)
                  {
                    goto LABEL_2011;
                  }

                  v266 = *v263;
                  v264 = v263 + 1;
                  v265 = v266;
                  if (v264 >= v182)
                  {
                    goto LABEL_2011;
                  }

                  result = *v264;
                  v267 = (v2 + 460);
                  if ((result | (v265 << 8)) != *(v2 + 632))
                  {
                    v268 = (v185 + 16 * (result >> v187));
                    v269 = (v268 + 2) > v186 || v268 > v268 + 2;
                    if (v269 || v268 < v185)
                    {
                      goto LABEL_2011;
                    }

                    v271 = *v268;
                    result = v268[1];
                    v267 = (*v268 + 2 * v265);
                    v272 = v267 + 1;
                    v273 = v267 < v271 || v272 > result;
                    if (v273 || v267 > v272)
                    {
                      goto LABEL_2011;
                    }
                  }

                  *(v264 - 1) = bswap32(*v267) >> 16;
                  v263 = v264 + 1;
                  --v188;
                }

                while (v188);
              }
            }

            else if (v188)
            {
              v906 = v180 + 2;
              do
              {
                if (v906 - 1 >= v182 || v906 - 1 < v181 || v906 >= v182)
                {
                  goto LABEL_2011;
                }

                if (*(v2 + 632) == bswap32(*(v906 - 1)) >> 16)
                {
                  *(v906 - 1) = bswap32(*(v2 + 460)) >> 16;
                }

                v906 += 2;
                --v188;
              }

              while (v188);
            }

            break;
        }
      }
    }

    goto LABEL_320;
  }

  v200 = *(v2 + 528);
  v201 = *(v2 + 536);
  v202 = *(v2 + 544);
  v203 = *(v2 + 552);
  v204 = *(v2 + 560);
  v205 = *(v2 + 568);
  result = *(v2 + 576);
  v206 = *(v2 + 584);
  v207 = *(v2 + 80);
  if (v189 == 4)
  {
    if (*(a2 + 17) != 8)
    {
      if (v185 && v204 && result)
      {
        if (v188)
        {
          v518 = (v180 + 2);
          do
          {
            v519 = v518 + 1;
            v520 = (v518 + 1) < v182 && v519 >= v181;
            v521 = v518 + 2;
            if (!v520 || v521 >= v182 || v521 < v181)
            {
              goto LABEL_2011;
            }

            v524 = v518 - 1;
            v525 = *v521 | (*v519 << 8);
            if (v525)
            {
              if (v525 == 0xFFFF)
              {
                if (v524 < v180 || v518 >= v182)
                {
                  goto LABEL_2011;
                }

                v526 = (v185 + 16 * (*v518 >> v187));
                v527 = (v526 + 2) > v186 || v526 > v526 + 2;
                v528 = !v527 && v526 >= v185;
                v529 = !v528 || v524 >= v182;
                if (v529 || v524 < v181)
                {
                  goto LABEL_2011;
                }

                v531 = *v526;
                v532 = (v531 + 2 * *v524);
                v533 = v532 + 1;
                v534 = v532 < v531 || v533 > *(v185 + 16 * (*v518 >> v187) + 8);
                if (v534 || v532 > v533)
                {
                  goto LABEL_2011;
                }

                *(v518 - 1) = bswap32(*v532) >> 16;
              }

              else
              {
                if (v524 < v180 || v518 >= v182)
                {
                  goto LABEL_2011;
                }

                v537 = (result + 16 * (*v518 >> v187));
                v538 = (v537 + 2) > v206 || v537 > v537 + 2;
                v539 = !v538 && v537 >= result;
                v540 = !v539 || v524 >= v182;
                if (v540 || v524 < v181)
                {
                  goto LABEL_2011;
                }

                v542 = *v537;
                v543 = (v542 + 2 * *v524);
                v544 = v543 + 1;
                v545 = v543 < v542 || v544 > *(result + 16 * (*v518 >> v187) + 8);
                if (v545 || v543 > v544)
                {
                  goto LABEL_2011;
                }

                v547 = (v525 ^ 0xFFFF) * *(v2 + 470) + v525 * *v543 + 0x8000;
                v548 = v547 + HIWORD(v547);
                if ((v207 & 0x2000) != 0)
                {
                  v558 = HIWORD(v548);
                  v559 = HIBYTE(v548);
                }

                else
                {
                  v549 = (v204 + 16 * (BYTE2(v548) >> v187));
                  if ((v549 + 2) > v205 || v549 > v549 + 2 || v549 < v204)
                  {
                    goto LABEL_2011;
                  }

                  v553 = *v549;
                  v552 = v549[1];
                  v554 = (v553 + 2 * HIBYTE(v548));
                  v555 = v554 + 1;
                  v556 = v554 < v553 || v555 > v552;
                  if (v556 || v554 > v555)
                  {
                    goto LABEL_2011;
                  }

                  v558 = *v554;
                  v559 = v558 >> 8;
                }

                *(v518 - 1) = v559;
                *v518 = v558;
              }
            }

            else
            {
              if (v524 >= v182)
              {
                goto LABEL_2011;
              }

              if (v524 < v181)
              {
                goto LABEL_2011;
              }

              v536 = *(v2 + 460);
              *(v518 - 1) = HIBYTE(v536);
              if (v518 >= v182)
              {
                goto LABEL_2011;
              }

              *v518 = v536;
            }

            v518 += 4;
            --v188;
          }

          while (v188);
        }
      }

      else if (v188)
      {
        v744 = (v180 + 2);
        do
        {
          v745 = v744 + 1;
          v746 = (v744 + 1) < v182 && v745 >= v181;
          v747 = v744 + 2;
          if (!v746 || v747 >= v182 || v747 < v181)
          {
            goto LABEL_2011;
          }

          v750 = *v747 | (*v745 << 8);
          if (v750 != 0xFFFF)
          {
            v751 = v744 - 1;
            if (v750)
            {
              if ((v744 - 1) >= v182 || v751 < v181 || v744 >= v182)
              {
                goto LABEL_2011;
              }

              v753 = __rev16(*(v744 - 1)) * v750 + (v750 ^ 0xFFFF) * *(v2 + 460) + 0x8000;
              v754 = v753 + HIWORD(v753);
              *(v744 - 1) = HIBYTE(v754);
              v752 = HIWORD(v754);
            }

            else
            {
              if ((v744 - 1) >= v182)
              {
                goto LABEL_2011;
              }

              if (v751 < v181)
              {
                goto LABEL_2011;
              }

              LOWORD(v752) = *(v2 + 460);
              *(v744 - 1) = BYTE1(v752);
              if (v744 >= v182)
              {
                goto LABEL_2011;
              }
            }

            *v744 = v752;
          }

          v744 += 4;
          --v188;
        }

        while (v188);
      }

      goto LABEL_320;
    }

    if (!v202 || !v200 || !v183)
    {
      if (v188)
      {
        v740 = (v180 + 1);
        do
        {
          if (v740 < v180 || (v740 + 1) >= v182)
          {
            goto LABEL_2011;
          }

          v741 = v740[1];
          if (v741 != 255)
          {
            if (v740[1])
            {
              if (v740 >= v182 || v740 < v181)
              {
                goto LABEL_2011;
              }

              v743 = *v740 * v741 + *(v2 + 460) * (v741 ^ 0xFF) + 128;
              v742 = (HIBYTE(v743) + v743) >> 8;
            }

            else
            {
              if (v740 >= v182 || v740 < v181)
              {
                goto LABEL_2011;
              }

              LOBYTE(v742) = *(v2 + 460);
            }

            *v740 = v742;
          }

          v740 += 2;
          --v188;
        }

        while (v188);
      }

      goto LABEL_320;
    }

    if (!v188)
    {
      goto LABEL_320;
    }

    v275 = (v180 + 1);
    while (1)
    {
      if (v275 < v180 || (v275 + 1) >= v182)
      {
        goto LABEL_2011;
      }

      v276 = v275[1];
      v278 = v275 < v182 && v275 >= v181;
      if (!v275[1])
      {
        if (!v278)
        {
          goto LABEL_2011;
        }

        LOBYTE(v279) = *(v2 + 460);
        goto LABEL_580;
      }

      if (v276 == 255)
      {
        if (!v278)
        {
          goto LABEL_2011;
        }

        v279 = (v183 + *v275);
        if (v279 >= v184 || v279 < v183)
        {
          goto LABEL_2011;
        }
      }

      else
      {
        if (!v278)
        {
          goto LABEL_2011;
        }

        v280 = (v202 + *v275);
        if (v280 >= v203 || v280 < v202)
        {
          goto LABEL_2011;
        }

        v281 = *v280 * v276 + *(v2 + 470) * (v276 ^ 0xFF) + 128;
        v282 = HIBYTE(v281) + v281;
        if ((v207 & 0x2000) != 0)
        {
          LODWORD(v279) = v282 >> 8;
          goto LABEL_580;
        }

        v279 = (v200 + BYTE1(v282));
        if (v279 >= v201 || v279 < v200)
        {
          goto LABEL_2011;
        }
      }

      LOBYTE(v279) = *v279;
LABEL_580:
      *v275 = v279;
      v275 += 2;
      if (!--v188)
      {
        goto LABEL_320;
      }
    }
  }

  if (v189 != 6)
  {
    goto LABEL_320;
  }

  if (*(a2 + 17) == 8)
  {
    if (v202 && v200 && v183)
    {
      if (!v188)
      {
        goto LABEL_320;
      }

      v208 = (v180 + 2);
      while (1)
      {
        v209 = v208 + 2;
        if ((v208 + 2) >= v182 || v209 < v181)
        {
          goto LABEL_2011;
        }

        v211 = v208 - 1;
        v212 = *v209;
        v214 = (v208 - 1) < v182 && v211 >= v181;
        if (v212)
        {
          if (v212 != 255)
          {
            if (!v214)
            {
              goto LABEL_2011;
            }

            v224 = (v202 + *v211);
            if (v224 >= v203 || v224 < v202)
            {
              goto LABEL_2011;
            }

            v226 = *v224;
            v227 = v212 ^ 0xFF;
            v228 = *(v2 + 464) * (v212 ^ 0xFF) + v226 * v212 + 128;
            v229 = v228 + BYTE1(v228);
            if ((v207 & 0x2000) != 0)
            {
              LODWORD(v230) = v229 >> 8;
            }

            else
            {
              v230 = (v200 + BYTE1(v229));
              if (v230 >= v201 || v230 < v200)
              {
                goto LABEL_2011;
              }

              LOBYTE(v230) = *v230;
            }

            *(v208 - 1) = v230;
            if (v208 >= v182)
            {
              goto LABEL_2011;
            }

            v232 = (v202 + *v208);
            if (v232 >= v203 || v232 < v202)
            {
              goto LABEL_2011;
            }

            v233 = *(v2 + 466) * v227 + *v232 * v212 + 128;
            v234 = v233 + BYTE1(v233);
            if ((v207 & 0x2000) != 0)
            {
              v237 = v234 >> 8;
            }

            else
            {
              v235 = (v200 + BYTE1(v234));
              if (v235 >= v201 || v235 < v200)
              {
                goto LABEL_2011;
              }

              LOBYTE(v237) = *v235;
            }

            *v208 = v237;
            v238 = v208 + 1;
            if ((v208 + 1) >= v182 || v238 < v181)
            {
              goto LABEL_2011;
            }

            v240 = (v202 + *v238);
            if (v240 >= v203 || v240 < v202)
            {
              goto LABEL_2011;
            }

            v242 = *(v2 + 468) * v227 + *v240 * v212 + 128;
            v243 = v242 + BYTE1(v242);
            if ((v207 & 0x2000) != 0)
            {
              LODWORD(v244) = v243 >> 8;
            }

            else
            {
              v244 = (v200 + BYTE1(v243));
              if (v244 >= v201 || v244 < v200)
              {
                goto LABEL_2011;
              }

              LOBYTE(v244) = *v244;
            }

            *v238 = v244;
            goto LABEL_492;
          }

          if (!v214)
          {
            goto LABEL_2011;
          }

          v215 = (v183 + *v211);
          if (v215 >= v184 || v215 < v183)
          {
            goto LABEL_2011;
          }

          *(v208 - 1) = *v215;
          if (v208 >= v182)
          {
            goto LABEL_2011;
          }

          v217 = (v183 + *v208);
          if (v217 >= v184 || v217 < v183)
          {
            goto LABEL_2011;
          }

          *v208 = *v217;
          v218 = v208 + 1;
          if ((v208 + 1) >= v182 || v218 < v181)
          {
            goto LABEL_2011;
          }

          v220 = (v183 + *v218);
          if (v220 >= v184 || v220 < v183)
          {
            goto LABEL_2011;
          }

          v222 = *v220;
        }

        else
        {
          if (!v214)
          {
            goto LABEL_2011;
          }

          *(v208 - 1) = *(v2 + 454);
          if (v208 >= v182)
          {
            goto LABEL_2011;
          }

          *v208 = *(v2 + 456);
          v218 = v208 + 1;
          if ((v208 + 1) >= v182 || v218 < v181)
          {
            goto LABEL_2011;
          }

          v222 = *(v2 + 458);
        }

        *v218 = v222;
LABEL_492:
        v208 += 4;
        if (!--v188)
        {
          goto LABEL_320;
        }
      }
    }

    if (v188)
    {
      v708 = (v180 + 2);
      do
      {
        v709 = v708 + 2;
        if ((v708 + 2) >= v182 || v709 < v181)
        {
          goto LABEL_2011;
        }

        v711 = *v709;
        if (v711 != 255)
        {
          v712 = v708 - 1;
          if (v711)
          {
            if ((v708 - 1) >= v182)
            {
              goto LABEL_2011;
            }

            if (v712 < v181)
            {
              goto LABEL_2011;
            }

            v714 = v711 ^ 0xFF;
            v715 = *(v2 + 454) * (v711 ^ 0xFF) + *(v708 - 1) * v711 + 128;
            *(v708 - 1) = (v715 + HIBYTE(v715)) >> 8;
            if (v708 >= v182)
            {
              goto LABEL_2011;
            }

            v716 = *(v2 + 456) * v714 + *v708 * v711 + 128;
            *v708 = (v716 + HIBYTE(v716)) >> 8;
            v717 = v708 + 1;
            if ((v708 + 1) >= v182 || v717 < v181)
            {
              goto LABEL_2011;
            }

            v719 = *(v2 + 458) * v714 + *v717 * v711 + 128;
            *v717 = (v719 + HIBYTE(v719)) >> 8;
          }

          else
          {
            if ((v708 - 1) >= v182)
            {
              goto LABEL_2011;
            }

            if (v712 < v181)
            {
              goto LABEL_2011;
            }

            *(v708 - 1) = *(v2 + 454);
            if (v708 >= v182)
            {
              goto LABEL_2011;
            }

            *v708 = *(v2 + 456);
            v713 = v708 + 1;
            if ((v708 + 1) >= v182 || v713 < v181)
            {
              goto LABEL_2011;
            }

            *v713 = *(v2 + 458);
          }
        }

        v708 += 4;
        --v188;
      }

      while (v188);
    }
  }

  else if (v185 && v204 && result)
  {
    if (v188)
    {
      v437 = (v180 + 4);
      do
      {
        v438 = v437 + 3;
        v439 = (v437 + 3) < v182 && v438 >= v181;
        v440 = v437 + 4;
        if (!v439 || v440 >= v182 || v440 < v181)
        {
          goto LABEL_2011;
        }

        v443 = v437 - 3;
        v444 = *v440 | (*v438 << 8);
        if (v444)
        {
          if (v444 == 0xFFFF)
          {
            if (v443 < v180 || (v437 - 2) >= v182)
            {
              goto LABEL_2011;
            }

            v445 = (v185 + 16 * (*(v437 - 2) >> v187));
            v446 = (v445 + 2) > v186 || v445 > v445 + 2;
            v447 = !v446 && v445 >= v185;
            v448 = !v447 || v443 >= v182;
            if (v448 || v443 < v181)
            {
              goto LABEL_2011;
            }

            v451 = *v445;
            v450 = v445[1];
            v452 = (*v445 + 2 * *v443);
            v453 = v452 + 1;
            v454 = v452 < v451 || v453 > v450;
            if (v454 || v452 > v453)
            {
              goto LABEL_2011;
            }

            *(v437 - 3) = bswap32(*v452) >> 16;
            if (v437 >= v182)
            {
              goto LABEL_2011;
            }

            if (v437 < v181)
            {
              goto LABEL_2011;
            }

            v456 = (v185 + 16 * (*v437 >> v187));
            if ((v456 + 2) > v186)
            {
              goto LABEL_2011;
            }

            if (v456 > v456 + 2)
            {
              goto LABEL_2011;
            }

            if (v456 < v185)
            {
              goto LABEL_2011;
            }

            v457 = v437 - 1;
            if ((v437 - 1) >= v182)
            {
              goto LABEL_2011;
            }

            if (v457 < v181)
            {
              goto LABEL_2011;
            }

            v458 = (*v456 + 2 * *v457);
            if (v458 < *v456)
            {
              goto LABEL_2011;
            }

            if ((v458 + 1) > v456[1])
            {
              goto LABEL_2011;
            }

            if (v458 > v458 + 1)
            {
              goto LABEL_2011;
            }

            *(v437 - 1) = bswap32(*v458) >> 16;
            v459 = v437 + 2;
            if ((v437 + 2) >= v182)
            {
              goto LABEL_2011;
            }

            if (v459 < v181)
            {
              goto LABEL_2011;
            }

            v460 = (v185 + 16 * (*v459 >> v187));
            if ((v460 + 2) > v186)
            {
              goto LABEL_2011;
            }

            if (v460 > v460 + 2)
            {
              goto LABEL_2011;
            }

            if (v460 < v185)
            {
              goto LABEL_2011;
            }

            v461 = v437 + 1;
            if ((v437 + 1) >= v182)
            {
              goto LABEL_2011;
            }

            if (v461 < v181)
            {
              goto LABEL_2011;
            }

            v462 = (*v460 + 2 * *v461);
            if (v462 < *v460 || (v462 + 1) > v460[1] || v462 > v462 + 1)
            {
              goto LABEL_2011;
            }

            v463 = *v462;
            *v461 = HIBYTE(*v462);
            *v459 = v463;
          }

          else
          {
            if (v443 < v180 || (v437 - 2) >= v182)
            {
              goto LABEL_2011;
            }

            v468 = (result + 16 * (*(v437 - 2) >> v187));
            v469 = (v468 + 2) > v206 || v468 > v468 + 2;
            v470 = !v469 && v468 >= result;
            v471 = !v470 || v443 >= v182;
            if (v471 || v443 < v181)
            {
              goto LABEL_2011;
            }

            v473 = *v468;
            v474 = (v473 + 2 * *v443);
            v475 = v474 + 1;
            v476 = v474 < v473 || v475 > *(result + 16 * (*(v437 - 2) >> v187) + 8);
            if (v476 || v474 > v475)
            {
              goto LABEL_2011;
            }

            v478 = *v474;
            v479 = v444 ^ 0xFFFF;
            v480 = (v444 ^ 0xFFFF) * *(v2 + 464) + v444 * v478 + 0x8000;
            v481 = v480 + HIWORD(v480);
            v482 = HIBYTE(v481);
            if ((v207 & 0x2000) != 0)
            {
              v492 = HIWORD(v481);
            }

            else
            {
              v483 = (v204 + 16 * (BYTE2(v481) >> v187));
              if ((v483 + 2) > v205 || v483 > v483 + 2 || v483 < v204)
              {
                goto LABEL_2011;
              }

              v487 = *v483;
              v486 = v483[1];
              v488 = (v487 + 2 * v482);
              v489 = v488 + 1;
              v490 = v488 < v487 || v489 > v486;
              if (v490 || v488 > v489)
              {
                goto LABEL_2011;
              }

              v492 = *v488;
              v482 = v492 >> 8;
            }

            *(v437 - 3) = v482;
            *(v437 - 2) = v492;
            if (v437 >= v182)
            {
              goto LABEL_2011;
            }

            if (v437 < v181)
            {
              goto LABEL_2011;
            }

            v493 = (result + 16 * (*v437 >> v187));
            if ((v493 + 2) > v206)
            {
              goto LABEL_2011;
            }

            if (v493 > v493 + 2)
            {
              goto LABEL_2011;
            }

            if (v493 < result)
            {
              goto LABEL_2011;
            }

            v494 = v437 - 1;
            if ((v437 - 1) >= v182)
            {
              goto LABEL_2011;
            }

            if (v494 < v181)
            {
              goto LABEL_2011;
            }

            v495 = (*v493 + 2 * *v494);
            if (v495 < *v493 || (v495 + 1) > v493[1] || v495 > v495 + 1)
            {
              goto LABEL_2011;
            }

            v496 = v479 * *(v2 + 466) + v444 * *v495 + 0x8000;
            v497 = v496 + HIWORD(v496);
            v498 = HIBYTE(v497);
            if ((v207 & 0x2000) != 0)
            {
              v508 = HIWORD(v497);
            }

            else
            {
              v499 = (v204 + 16 * (BYTE2(v497) >> v187));
              if ((v499 + 2) > v205 || v499 > v499 + 2 || v499 < v204)
              {
                goto LABEL_2011;
              }

              v503 = *v499;
              v502 = v499[1];
              v504 = (v503 + 2 * v498);
              v505 = v504 + 1;
              v506 = v504 < v503 || v505 > v502;
              if (v506 || v504 > v505)
              {
                goto LABEL_2011;
              }

              v508 = *v504;
              v498 = v508 >> 8;
            }

            *(v437 - 1) = v498;
            *v437 = v508;
            v509 = v437 + 2;
            if ((v437 + 2) >= v182)
            {
              goto LABEL_2011;
            }

            if (v509 < v181)
            {
              goto LABEL_2011;
            }

            v510 = (result + 16 * (*v509 >> v187));
            if ((v510 + 2) > v206)
            {
              goto LABEL_2011;
            }

            if (v510 > v510 + 2)
            {
              goto LABEL_2011;
            }

            if (v510 < result)
            {
              goto LABEL_2011;
            }

            v511 = v437 + 1;
            if ((v437 + 1) >= v182)
            {
              goto LABEL_2011;
            }

            if (v511 < v181)
            {
              goto LABEL_2011;
            }

            v512 = (*v510 + 2 * *v511);
            if (v512 < *v510 || (v512 + 1) > v510[1] || v512 > v512 + 1)
            {
              goto LABEL_2011;
            }

            v513 = v479 * *(v2 + 468) + v444 * *v512 + 0x8000 + ((v479 * *(v2 + 468) + v444 * *v512 + 0x8000) >> 16);
            v514 = HIBYTE(v513);
            if ((v207 & 0x2000) != 0)
            {
              v517 = HIWORD(v513);
            }

            else
            {
              v515 = (v204 + 16 * (BYTE2(v513) >> v187));
              if ((v515 + 2) > v205)
              {
                goto LABEL_2011;
              }

              if (v515 > v515 + 2)
              {
                goto LABEL_2011;
              }

              if (v515 < v204)
              {
                goto LABEL_2011;
              }

              v516 = (*v515 + 2 * v514);
              if (v516 < *v515 || (v516 + 1) > v515[1] || v516 > v516 + 1)
              {
                goto LABEL_2011;
              }

              v517 = *v516;
              v514 = v517 >> 8;
            }

            *v511 = v514;
            *v509 = v517;
          }
        }

        else
        {
          if (v443 >= v182)
          {
            goto LABEL_2011;
          }

          if (v443 < v181)
          {
            goto LABEL_2011;
          }

          v464 = *(v2 + 454);
          *(v437 - 3) = HIBYTE(v464);
          if ((v437 - 2) >= v182)
          {
            goto LABEL_2011;
          }

          *(v437 - 2) = v464;
          if ((v437 - 1) >= v182)
          {
            goto LABEL_2011;
          }

          if (v437 - 1 < v181)
          {
            goto LABEL_2011;
          }

          v465 = *(v2 + 456);
          *(v437 - 1) = HIBYTE(v465);
          if (v437 >= v182)
          {
            goto LABEL_2011;
          }

          if (v437 < v181)
          {
            goto LABEL_2011;
          }

          *v437 = v465;
          if ((v437 + 1) >= v182)
          {
            goto LABEL_2011;
          }

          if (v437 + 1 < v181)
          {
            goto LABEL_2011;
          }

          v466 = *(v2 + 458);
          v437[1] = HIBYTE(v466);
          v467 = v437 + 2;
          if ((v437 + 2) >= v182 || v467 < v181)
          {
            goto LABEL_2011;
          }

          *v467 = v466;
        }

        v437 += 8;
        --v188;
      }

      while (v188);
    }
  }

  else if (v188)
  {
    v720 = v180 + 4;
    do
    {
      v721 = (v720 + 3);
      v722 = v720 + 3 < v182 && v721 >= v181;
      v723 = (v720 + 4);
      if (!v722 || v723 >= v182 || v723 < v181)
      {
        goto LABEL_2011;
      }

      v726 = *v723 | (*v721 << 8);
      if (v726 != 0xFFFF)
      {
        v727 = v720 - 3;
        if (v726)
        {
          if (v720 - 3 >= v182 || v727 < v181 || v720 - 2 >= v182 || v720 - 1 >= v182 || v720 - 1 < v181 || v720 >= v182 || v720 < v181 || v720 + 1 >= v182 || v720 + 1 < v181 || v720 + 2 >= v182 || v720 + 2 < v181)
          {
            goto LABEL_2011;
          }

          v732 = __rev16(*(v720 - 1));
          v733 = __rev16(*(v720 + 1));
          v734 = (v726 ^ 0xFFFF) * *(v2 + 454) + __rev16(*(v720 - 3)) * v726 + 0x8000;
          v735 = v734 + HIWORD(v734);
          result = HIBYTE(v735);
          *(v720 - 3) = HIBYTE(v735);
          *(v720 - 2) = BYTE2(v735);
          v736 = (v726 ^ 0xFFFF) * *(v2 + 456) + v732 * v726 + 0x8000;
          v737 = v736 + HIWORD(v736);
          *(v720 - 1) = HIBYTE(v737);
          *v720 = BYTE2(v737);
          v738 = (v726 ^ 0xFFFF) * *(v2 + 458) + v733 * v726 + 0x8000;
          v739 = v738 + HIWORD(v738);
          *(v720 + 1) = HIBYTE(v739);
          *(v720 + 2) = BYTE2(v739);
        }

        else
        {
          if (v720 - 3 >= v182)
          {
            goto LABEL_2011;
          }

          if (v727 < v181)
          {
            goto LABEL_2011;
          }

          v728 = *(v2 + 454);
          *(v720 - 3) = HIBYTE(v728);
          if (v720 - 2 >= v182)
          {
            goto LABEL_2011;
          }

          *(v720 - 2) = v728;
          if (v720 - 1 >= v182)
          {
            goto LABEL_2011;
          }

          if (v720 - 1 < v181)
          {
            goto LABEL_2011;
          }

          v729 = *(v2 + 456);
          *(v720 - 1) = HIBYTE(v729);
          if (v720 >= v182)
          {
            goto LABEL_2011;
          }

          if (v720 < v181)
          {
            goto LABEL_2011;
          }

          *v720 = v729;
          if (v720 + 1 >= v182)
          {
            goto LABEL_2011;
          }

          if (v720 + 1 < v181)
          {
            goto LABEL_2011;
          }

          v730 = *(v2 + 458);
          *(v720 + 1) = HIBYTE(v730);
          v731 = (v720 + 2);
          if (v720 + 2 >= v182 || v731 < v181)
          {
            goto LABEL_2011;
          }

          *v731 = v730;
        }
      }

      v720 += 8;
      --v188;
    }

    while (v188);
  }

LABEL_320:
  v158 = *(v2 + 88);
  if ((v158 & 0x602000) != 0x2000)
  {
    goto LABEL_496;
  }

  if ((v158 & 0x80) != 0)
  {
    if (*(v2 + 424))
    {
      goto LABEL_496;
    }

    v159 = *(v2 + 431);
    if ((v159 & 4) != 0)
    {
      goto LABEL_496;
    }
  }

  else
  {
    v159 = *(v2 + 431);
  }

  if (v159 != 3)
  {
    v160 = *(v2 + 336);
    v161 = (v160 + 1);
    if (v160 + 1 < v160)
    {
      goto LABEL_2011;
    }

    if ((v162 = *(v2 + 344), v163 = *(v2 + 496), v164 = *(v2 + 504), v165 = *(v2 + 512), v166 = *(v2 + 520), v167 = *(v2 + 488), v168 = *a2, v169 = *(a2 + 17), v169 <= 8) && v163 || v169 == 16 && v165)
    {
      result = *(a2 + 16);
      if (*(a2 + 16) > 3u)
      {
        if (result == 4)
        {
          if (v169 == 8)
          {
            if (v168)
            {
              v784 = (v160 + 1);
              do
              {
                if (v784 >= v162 || v784 < v161)
                {
                  goto LABEL_2011;
                }

                v785 = (v163 + *v784);
                if (v785 >= v164 || v785 < v163)
                {
                  goto LABEL_2011;
                }

                *v784 = *v785;
                v784 += 2;
                --v168;
              }

              while (v168);
            }
          }

          else if (v168)
          {
            v889 = (v160 + 2);
            do
            {
              v890 = v889 - 1;
              if ((v889 - 1) < v160 || v889 >= v162)
              {
                goto LABEL_2011;
              }

              v892 = (v165 + 16 * (*v889 >> v167));
              v893 = (v892 + 2) > v166 || v892 > v892 + 2;
              v894 = !v893 && v892 >= v165;
              v895 = !v894 || v890 >= v162;
              if (v895 || v890 < v161)
              {
                goto LABEL_2011;
              }

              v897 = *v892;
              result = *(v165 + 16 * (*v889 >> v167) + 8);
              v898 = (v897 + 2 * *v890);
              v899 = v898 + 1;
              v900 = v898 < v897 || v899 > result;
              if (v900 || v898 > v899)
              {
                goto LABEL_2011;
              }

              *(v889 - 1) = bswap32(*v898) >> 16;
              v889 += 4;
              --v168;
            }

            while (v168);
          }
        }

        else if (result == 6)
        {
          if (v169 == 8)
          {
            if (v168)
            {
              v406 = (v160 + 1);
              do
              {
                if (v406 >= v162 || v406 < v161)
                {
                  goto LABEL_2011;
                }

                v407 = (v163 + *v406);
                if (v407 >= v164 || v407 < v163)
                {
                  goto LABEL_2011;
                }

                *v406 = *v407;
                v409 = v406 + 1;
                if (v409 >= v162)
                {
                  goto LABEL_2011;
                }

                v410 = (v163 + *v409);
                if (v410 >= v164 || v410 < v163)
                {
                  goto LABEL_2011;
                }

                *v409 = *v410;
                v412 = v409 + 1;
                if (v412 >= v162 || v412 < v161)
                {
                  goto LABEL_2011;
                }

                v414 = (v163 + *v412);
                if (v414 >= v164 || v414 < v163)
                {
                  goto LABEL_2011;
                }

                *v412 = *v414;
                v406 = v412 + 2;
                --v168;
              }

              while (v168);
            }
          }

          else if (v168)
          {
            v866 = (v160 + 6);
            do
            {
              v867 = v866 - 5;
              v868 = v866 - 4;
              if ((v866 - 5) < v160 || v868 >= v162)
              {
                goto LABEL_2011;
              }

              v870 = (v165 + 16 * (*v868 >> v167));
              v871 = (v870 + 2) > v166 || v870 > v870 + 2;
              v872 = !v871 && v870 >= v165;
              v873 = !v872 || v867 >= v162;
              if (v873 || v867 < v161)
              {
                goto LABEL_2011;
              }

              v877 = v870;
              v876 = *v870;
              v875 = v877[1];
              v878 = (v876 + 2 * *v867);
              v879 = v878 + 1;
              v880 = v878 < v876 || v879 > v875;
              if (v880 || v878 > v879)
              {
                goto LABEL_2011;
              }

              *(v866 - 5) = bswap32(*v878) >> 16;
              v882 = v866 - 2;
              if ((v866 - 2) >= v162)
              {
                goto LABEL_2011;
              }

              if (v882 < v161)
              {
                goto LABEL_2011;
              }

              v883 = (v165 + 16 * (*v882 >> v167));
              if ((v883 + 2) > v166)
              {
                goto LABEL_2011;
              }

              if (v883 > v883 + 2)
              {
                goto LABEL_2011;
              }

              if (v883 < v165)
              {
                goto LABEL_2011;
              }

              v884 = v866 - 3;
              if ((v866 - 3) >= v162)
              {
                goto LABEL_2011;
              }

              if (v884 < v161)
              {
                goto LABEL_2011;
              }

              v885 = (*v883 + 2 * *v884);
              if (v885 < *v883)
              {
                goto LABEL_2011;
              }

              if ((v885 + 1) > v883[1])
              {
                goto LABEL_2011;
              }

              if (v885 > v885 + 1)
              {
                goto LABEL_2011;
              }

              *(v866 - 3) = bswap32(*v885) >> 16;
              if (v866 >= v162)
              {
                goto LABEL_2011;
              }

              if (v866 < v161)
              {
                goto LABEL_2011;
              }

              v886 = (v165 + 16 * (*v866 >> v167));
              if ((v886 + 2) > v166)
              {
                goto LABEL_2011;
              }

              if (v886 > v886 + 2)
              {
                goto LABEL_2011;
              }

              if (v886 < v165)
              {
                goto LABEL_2011;
              }

              v887 = v866 - 1;
              if ((v866 - 1) >= v162)
              {
                goto LABEL_2011;
              }

              if (v887 < v161)
              {
                goto LABEL_2011;
              }

              v888 = (*v886 + 2 * *v887);
              if (v888 < *v886)
              {
                goto LABEL_2011;
              }

              result = v886[1];
              if ((v888 + 1) > result || v888 > v888 + 1)
              {
                goto LABEL_2011;
              }

              *(v866 - 1) = bswap32(*v888) >> 16;
              v866 += 8;
              --v168;
            }

            while (v168);
          }
        }
      }

      else if (*(a2 + 16))
      {
        if (result == 2)
        {
          if (v169 == 8)
          {
            if (v168)
            {
              v170 = (v160 + 1);
              do
              {
                if (v170 >= v162 || v170 < v161)
                {
                  goto LABEL_2011;
                }

                v171 = (v163 + *v170);
                if (v171 >= v164 || v171 < v163)
                {
                  goto LABEL_2011;
                }

                *v170 = *v171;
                v173 = v170 + 1;
                if (v173 >= v162)
                {
                  goto LABEL_2011;
                }

                v174 = (v163 + *v173);
                if (v174 >= v164 || v174 < v163)
                {
                  goto LABEL_2011;
                }

                *v173 = *v174;
                v176 = v173 + 1;
                if (v176 >= v162 || v176 < v161)
                {
                  goto LABEL_2011;
                }

                v178 = (v163 + *v176);
                if (v178 >= v164 || v178 < v163)
                {
                  goto LABEL_2011;
                }

                *v176 = *v178;
                v170 = v176 + 1;
                --v168;
              }

              while (v168);
            }
          }

          else if (v168)
          {
            v843 = (v160 + 6);
            do
            {
              v844 = v843 - 5;
              v845 = v843 - 4;
              if ((v843 - 5) < v160 || v845 >= v162)
              {
                goto LABEL_2011;
              }

              v847 = (v165 + 16 * (*v845 >> v167));
              v848 = (v847 + 2) > v166 || v847 > v847 + 2;
              v849 = !v848 && v847 >= v165;
              v850 = !v849 || v844 >= v162;
              if (v850 || v844 < v161)
              {
                goto LABEL_2011;
              }

              v854 = v847;
              v853 = *v847;
              v852 = v854[1];
              v855 = (v853 + 2 * *v844);
              v856 = v855 + 1;
              v857 = v855 < v853 || v856 > v852;
              if (v857 || v855 > v856)
              {
                goto LABEL_2011;
              }

              *(v843 - 5) = bswap32(*v855) >> 16;
              v859 = v843 - 2;
              if ((v843 - 2) >= v162)
              {
                goto LABEL_2011;
              }

              if (v859 < v161)
              {
                goto LABEL_2011;
              }

              v860 = (v165 + 16 * (*v859 >> v167));
              if ((v860 + 2) > v166)
              {
                goto LABEL_2011;
              }

              if (v860 > v860 + 2)
              {
                goto LABEL_2011;
              }

              if (v860 < v165)
              {
                goto LABEL_2011;
              }

              v861 = v843 - 3;
              if ((v843 - 3) >= v162)
              {
                goto LABEL_2011;
              }

              if (v861 < v161)
              {
                goto LABEL_2011;
              }

              v862 = (*v860 + 2 * *v861);
              if (v862 < *v860)
              {
                goto LABEL_2011;
              }

              if ((v862 + 1) > v860[1])
              {
                goto LABEL_2011;
              }

              if (v862 > v862 + 1)
              {
                goto LABEL_2011;
              }

              *(v843 - 3) = bswap32(*v862) >> 16;
              if (v843 >= v162)
              {
                goto LABEL_2011;
              }

              if (v843 < v161)
              {
                goto LABEL_2011;
              }

              v863 = (v165 + 16 * (*v843 >> v167));
              if ((v863 + 2) > v166)
              {
                goto LABEL_2011;
              }

              if (v863 > v863 + 2)
              {
                goto LABEL_2011;
              }

              if (v863 < v165)
              {
                goto LABEL_2011;
              }

              v864 = v843 - 1;
              if ((v843 - 1) >= v162)
              {
                goto LABEL_2011;
              }

              if (v864 < v161)
              {
                goto LABEL_2011;
              }

              v865 = (*v863 + 2 * *v864);
              if (v865 < *v863)
              {
                goto LABEL_2011;
              }

              result = v863[1];
              if ((v865 + 1) > result || v865 > v865 + 1)
              {
                goto LABEL_2011;
              }

              *(v843 - 1) = bswap32(*v865) >> 16;
              v843 += 6;
              --v168;
            }

            while (v168);
          }
        }
      }

      else
      {
        if (v169 == 2 && v168)
        {
          v755 = 0;
          result = 85;
          v756 = (v160 + 1);
          do
          {
            if (v756 >= v162 || v756 < v161)
            {
              goto LABEL_2011;
            }

            v757 = *v756;
            v758 = v757 & 0xC;
            v759 = v757 & 3;
            v760 = (v163 + ((v757 >> 6) | ((v757 & 0xC0) >> 4) | ((v757 & 0xC0) >> 2) | v757 & 0xC0));
            v761 = v760 < v164 && v760 >= v163;
            v762 = (v163 + (((v757 & 0x30) >> 2) & 0xFFFFFF3C | ((((v757 & 0x30) >> 4) & 3) << 6) | (v757 >> 4) & 3 | v757 & 0x30));
            v763 = !v761 || v762 >= v164;
            v764 = !v763 && v762 >= v163;
            v765 = (v163 + ((v758 >> 2) | (20 * v758) | v758));
            v766 = !v764 || v765 >= v164;
            v767 = !v766 && v765 >= v163;
            v768 = (v163 + 85 * v759);
            v769 = !v767 || v768 >= v164;
            if (v769 || v768 < v163)
            {
              goto LABEL_2011;
            }

            *v756++ = (*v762 >> 2) & 0x30 | *v760 & 0xC0 | (*v765 >> 4) & 0xC | (*v768 >> 6);
            v755 += 4;
          }

          while (v755 < v168);
          v169 = *(a2 + 17);
        }

        if (v169 == 4)
        {
          if (v168)
          {
            v915 = 0;
            v916 = v161;
            do
            {
              if (v916 >= v162 || v916 < v161)
              {
                goto LABEL_2011;
              }

              v917 = *v916;
              v918 = (v163 + (v917 & 0xF0 | (v917 >> 4)));
              v919 = v918 < v164 && v918 >= v163;
              v920 = (v163 + (v917 & 0xF | (16 * (v917 & 0xF))));
              v921 = !v919 || v920 >= v164;
              if (v921 || v920 < v163)
              {
                goto LABEL_2011;
              }

              *v916++ = *v918 & 0xF0 | (*v920 >> 4);
              v915 += 2;
            }

            while (v915 < v168);
          }
        }

        else if (v169 == 8)
        {
          for (; v168; --v168)
          {
            if (v161 >= v162)
            {
              goto LABEL_2011;
            }

            v913 = (v163 + *v161);
            if (v913 >= v164 || v913 < v163)
            {
              goto LABEL_2011;
            }

            *v161++ = *v913;
          }
        }

        else if (v169 == 16 && v168)
        {
          v771 = (v160 + 2);
          do
          {
            v772 = v771 - 1;
            if ((v771 - 1) < v160 || v771 >= v162)
            {
              goto LABEL_2011;
            }

            v774 = (v165 + 16 * (*v771 >> v167));
            v775 = (v774 + 2) > v166 || v774 > v774 + 2;
            v776 = !v775 && v774 >= v165;
            v777 = !v776 || v772 >= v162;
            if (v777 || v772 < v161)
            {
              goto LABEL_2011;
            }

            v779 = *v774;
            result = *(v165 + 16 * (*v771 >> v167) + 8);
            v780 = (v779 + 2 * *v772);
            v781 = v780 + 1;
            v782 = v780 < v779 || v781 > result;
            if (v782 || v780 > v781)
            {
              goto LABEL_2011;
            }

            *(v771 - 1) = bswap32(*v780) >> 16;
            v771 += 2;
            --v168;
          }

          while (v168);
        }
      }
    }
  }

LABEL_496:
  v246 = *(v2 + 88);
  if ((~v246 & 0x40080) == 0 && (*(a2 + 16) | 2) == 6)
  {
    v247 = *(v2 + 336);
    if (v247 + 1 < v247)
    {
      goto LABEL_2011;
    }

    result = png_do_strip_channel(a2, v247 + 1, *(v2 + 344), 0);
    v246 = *(v2 + 88);
  }

  if ((v246 & 0x800000) == 0)
  {
    goto LABEL_610;
  }

  v248 = *(a2 + 16);
  if ((v248 & 4) == 0)
  {
    goto LABEL_610;
  }

  v249 = *(v2 + 336);
  v250 = v249 + 1;
  if (v249 + 1 < v249)
  {
    goto LABEL_2011;
  }

  v251 = *(v2 + 344);
  v252 = *a2;
  v253 = *(a2 + 17);
  if (v253 != 16)
  {
    if (v253 == 8)
    {
      v254 = *(v2 + 528);
      if (v254)
      {
        v148 = (v248 & 2) == 0;
        v255 = 4;
        if (v148)
        {
          v255 = 2;
        }

        if (v250 > v249 + v255)
        {
          goto LABEL_2011;
        }

        v256 = *(v2 + 536);
        v257 = v252 + 1;
        while (--v257)
        {
          v258 = (v249 + v255);
          if (v249 + v255 < v251)
          {
            v259 = (v254 + *v258);
            if (v259 < v256 && v259 >= v254)
            {
              *v258 = *v259;
              v261 = v249 + 2 * v255;
              v249 += v255;
              if (v261 >= v258)
              {
                continue;
              }
            }
          }

          goto LABEL_2011;
        }

        goto LABEL_610;
      }
    }

LABEL_609:
    result = png_warning(v2, "png_do_encode_alpha: unexpected call");
    goto LABEL_610;
  }

  v284 = *(v2 + 560);
  if (!v284)
  {
    goto LABEL_609;
  }

  v148 = (v248 & 2) == 0;
  v285 = 8;
  if (v148)
  {
    v285 = 4;
  }

  if (v250 > v250 + v285 - 2)
  {
    goto LABEL_2011;
  }

  v286 = *(v2 + 568);
  v287 = *(v2 + 488);
  v288 = v252 + 1;
  v289 = v249 - 1;
  while (--v288)
  {
    v290 = (v289 + v285);
    v291 = (v289 + v285 + 1);
    if (v291 < v251 && v291 >= v290)
    {
      v293 = (v284 + 16 * (*v291 >> v287));
      v294 = v293 + 2;
      v295 = v293 < v284 || v294 > v286;
      if (!v295 && v293 <= v294)
      {
        v298 = *v293;
        v297 = v293[1];
        v299 = (*v293 + 2 * *v290);
        v300 = v299 + 1;
        v301 = v299 < v298 || v300 > v297;
        if (!v301 && v299 <= v300)
        {
          result = *v299;
          *v290 = BYTE1(result);
          *v291 = result;
          v303 = v289 + 2 * v285;
          v289 += v285;
          if (v303 >= v290)
          {
            continue;
          }
        }
      }
    }

    goto LABEL_2011;
  }

LABEL_610:
  v304 = *(v2 + 88);
  if ((v304 & 0x4000000) != 0)
  {
    v305 = *(v2 + 336);
    v306 = (v305 + 1);
    if (v305 + 1 < v305)
    {
      goto LABEL_2011;
    }

    if (*(a2 + 17) == 16)
    {
      v307 = &v306[*(a2 + 1)];
      if (v307 > v306)
      {
        v308 = *(v2 + 344);
        v309 = v306;
        v310 = v306;
        do
        {
          if (v309 >= v308)
          {
            goto LABEL_2011;
          }

          if (v309 < v306)
          {
            goto LABEL_2011;
          }

          v311 = v309 + 1;
          if (v311 >= v308 || v310 >= v308 || v310 < v306)
          {
            goto LABEL_2011;
          }

          *v310++ = *(v311 - 1) + ((0xFFFF * (*v311 - *(v311 - 1)) + 8388480) >> 24);
          v309 = v311 + 1;
        }

        while (v309 < v307);
        v304 = *(v2 + 88);
      }

      *(a2 + 17) = 8;
      v312 = *(a2 + 18);
      *(a2 + 19) = 8 * v312;
      *(a2 + 1) = *a2 * v312;
    }
  }

  if ((v304 & 0x400) != 0)
  {
    v313 = *(v2 + 336);
    v314 = (v313 + 1);
    if (v313 + 1 < v313)
    {
      goto LABEL_2011;
    }

    if (*(a2 + 17) == 16)
    {
      v315 = &v314[*(a2 + 1)];
      if (v315 > v314)
      {
        v316 = *(v2 + 344);
        v317 = v314;
        v318 = v314;
        do
        {
          if (v317 >= v316 || v317 < v314 || v318 >= v316 || v318 < v314)
          {
            goto LABEL_2011;
          }

          v319 = *v317;
          v317 += 2;
          *v318++ = v319;
        }

        while (v317 < v315);
        v304 = *(v2 + 88);
      }

      *(a2 + 17) = 8;
      v320 = *(a2 + 18);
      *(a2 + 19) = 8 * v320;
      *(a2 + 1) = *a2 * v320;
    }
  }

  if ((v304 & 0x40) == 0)
  {
    goto LABEL_680;
  }

  v321 = *(v2 + 336);
  v322 = (v321 + 1);
  if (v321 + 1 < v321)
  {
    goto LABEL_2011;
  }

  if (*(a2 + 17) == 8)
  {
    v323 = *(v2 + 344);
    v324 = *(v2 + 792);
    v325 = *(v2 + 800);
    v326 = *(v2 + 808);
    v327 = *(v2 + 816);
    v328 = *a2;
    v329 = *a2;
    v330 = *(a2 + 16);
    if (v324 && v330 == 2)
    {
      if (v329)
      {
        v331 = v322;
        v332 = v322;
        do
        {
          if (v331 >= v323)
          {
            goto LABEL_2011;
          }

          if (v331 < v322)
          {
            goto LABEL_2011;
          }

          v335 = *v331;
          v333 = v331 + 1;
          v334 = v335;
          if (v333 >= v323)
          {
            goto LABEL_2011;
          }

          v336 = v333 + 1;
          if (v336 >= v323 || v336 < v322)
          {
            goto LABEL_2011;
          }

          result = *v336;
          v337 = (v324 + ((v334 << 7) & 0x7C00 | (32 * ((*(v336 - 1) >> 3) & 0x1F)) | (result >> 3)));
          v338 = v337 < v325 && v337 >= v324;
          if (!v338 || v332 >= v323)
          {
            goto LABEL_2011;
          }

          *v332++ = *v337;
          v331 = v336 + 1;
          --v329;
        }

        while (v329);
        goto LABEL_673;
      }
    }

    else
    {
      if (!v324 || v330 != 6)
      {
        if (v326 && v330 == 3 && v329)
        {
          do
          {
            if (v322 >= v323)
            {
              goto LABEL_2011;
            }

            v404 = (v326 + *v322);
            if (v404 >= v327 || v404 < v326)
            {
              goto LABEL_2011;
            }

            *v322++ = *v404;
            --v329;
          }

          while (v329);
        }

        goto LABEL_678;
      }

      if (v329)
      {
        v340 = v322;
        v341 = v322;
        do
        {
          if (v340 >= v323)
          {
            goto LABEL_2011;
          }

          if (v340 < v322)
          {
            goto LABEL_2011;
          }

          v344 = *v340;
          v342 = v340 + 1;
          v343 = v344;
          if (v342 >= v323)
          {
            goto LABEL_2011;
          }

          v345 = v342 + 1;
          if (v345 >= v323 || v345 < v322)
          {
            goto LABEL_2011;
          }

          result = *v345;
          v346 = (v324 + ((v343 << 7) & 0x7C00 | (32 * ((*(v345 - 1) >> 3) & 0x1F)) | (result >> 3)));
          v347 = v346 < v325 && v346 >= v324;
          if (!v347 || v341 >= v323)
          {
            goto LABEL_2011;
          }

          *v341++ = *v346;
          v340 = v345 + 2;
          --v329;
        }

        while (v329);
LABEL_673:
        v349 = *(a2 + 17);
        *(a2 + 16) = 3;
        *(a2 + 18) = 1;
        *(a2 + 19) = v349;
        if (v349 < 8)
        {
          v350 = (v349 * v328 + 7) >> 3;
LABEL_677:
          *(a2 + 1) = v350;
          goto LABEL_678;
        }

LABEL_676:
        v350 = v328 * (v349 >> 3);
        goto LABEL_677;
      }
    }

    *(a2 + 16) = 3;
    *(a2 + 9) = 2049;
    v349 = 8;
    goto LABEL_676;
  }

LABEL_678:
  if (!*(a2 + 1))
  {
    v923 = "png_do_quantize returned rowbytes=0";
    goto LABEL_2016;
  }

  v304 = *(v2 + 88);
LABEL_680:
  if ((v304 & 0x200) != 0)
  {
    v351 = *(v2 + 336);
    v352 = v351 + 1;
    if (v351 + 1 < v351)
    {
      goto LABEL_2011;
    }

    if (*(a2 + 17) == 8 && *(a2 + 16) != 3)
    {
      v353 = *(a2 + 1);
      if (v352 + v353 > v352)
      {
        v354 = *(v2 + 344);
        v355 = (v351 + v353);
        v356 = (v351 + 2 * v353);
        do
        {
          if (v355 >= v354 || v355 < v352 || v356 >= v354 || v356 < v352)
          {
            goto LABEL_2011;
          }

          v357 = *v355;
          *v356 = *v355;
          v358 = v356 - 1;
          if ((v356 - 1) >= v354 || v358 < v352)
          {
            goto LABEL_2011;
          }

          *(v356 - 1) = v357;
          v356 -= 2;
          v37 = v358 > v355--;
        }

        while (v37);
        v353 = *(a2 + 1);
        v304 = *(v2 + 88);
      }

      *(a2 + 1) = 2 * v353;
      *(a2 + 17) = 16;
      *(a2 + 19) = 16 * *(a2 + 18);
    }
  }

  if ((v304 & 0x4000) != 0 && (*(v2 + 77) & 8) != 0)
  {
    v360 = *(v2 + 336);
    if (v360 + 1 < v360)
    {
      goto LABEL_2011;
    }

    result = png_do_gray_to_rgb(a2, v360 + 1, *(v2 + 344));
    v304 = *(v2 + 88);
  }

  if ((v304 & 0x20) != 0)
  {
    v361 = *(v2 + 336);
    if (v361 + 1 < v361)
    {
      goto LABEL_2011;
    }

    result = png_do_invert(a2, (v361 + 1), *(v2 + 344));
    v304 = *(v2 + 88);
  }

  if ((v304 & 0x80000) != 0)
  {
    v362 = *(v2 + 336);
    v363 = v362 + 1;
    if (v362 != -1 && (v363 < v362 || v363 >= *(v2 + 344)))
    {
      goto LABEL_2011;
    }

    v364 = v362 + 2;
    v365 = *a2;
    v366 = *(a2 + 16);
    if (v366 == 4)
    {
      if (*(a2 + 17) == 8)
      {
        if (v365)
        {
          v368 = (v362 + *(a2 + 1));
          do
          {
            if (v368 >= v364 || v368 < v363)
            {
              goto LABEL_2011;
            }

            *v368 = ~*v368;
            if ((v368 - 1) >= v364 || (v368 - 1) < v363)
            {
              goto LABEL_2011;
            }

            v368 -= 2;
            --v365;
          }

          while (v365);
        }
      }

      else if (v365)
      {
        v372 = (v362 + *(a2 + 1));
        do
        {
          if (v372 >= v364 || v372 < v363)
          {
            goto LABEL_2011;
          }

          *v372 = ~*v372;
          if ((v372 - 1) >= v364 || (v372 - 1) < v363)
          {
            goto LABEL_2011;
          }

          *(v372 - 1) = ~*(v372 - 1);
          v372 -= 4;
          --v365;
        }

        while (v365);
      }
    }

    else if (v366 == 6)
    {
      if (*(a2 + 17) == 8)
      {
        if (v365)
        {
          v367 = (v362 + *(a2 + 1));
          do
          {
            if (v367 >= v364 || v367 < v363)
            {
              goto LABEL_2011;
            }

            *v367 = ~*v367;
            v367 -= 4;
            --v365;
          }

          while (v365);
        }
      }

      else if (v365)
      {
        v370 = (v362 + *(a2 + 1));
        do
        {
          if (v370 >= v364 || v370 < v363)
          {
            goto LABEL_2011;
          }

          *v370 = ~*v370;
          if ((v370 - 1) >= v364 || (v370 - 1) < v363)
          {
            goto LABEL_2011;
          }

          *(v370 - 1) = ~*(v370 - 1);
          v370 -= 8;
          --v365;
        }

        while (v365);
      }
    }
  }

  v374 = *(v2 + 88);
  if ((v374 & 8) == 0)
  {
    goto LABEL_1189;
  }

  v375 = *(v2 + 336);
  v376 = (v375 + 1);
  if (v375 + 1 < v375 || v2 + 597 > (v2 + 602))
  {
    goto LABEL_2011;
  }

  v378 = *(a2 + 16);
  if (v378 == 3)
  {
    goto LABEL_1189;
  }

  v379 = *(v2 + 344);
  v926 = 0;
  v925 = 0;
  v380 = *(a2 + 17);
  if ((v378 & 2) != 0)
  {
    v381 = *(v2 + 597);
    v383 = v380 - *(v2 + 599);
    LODWORD(v925) = v380 - *(v2 + 598);
    HIDWORD(v925) = v383;
    v382 = 3;
  }

  else
  {
    v381 = *(v2 + 600);
    v382 = 1;
  }

  v924 = v380 - v381;
  if ((v378 & 4) != 0)
  {
    v384 = &v924 + v382;
    if (v384 < &v924 || v384 + 1 > &v927 || v384 > v384 + 1)
    {
      goto LABEL_2011;
    }

    ++v382;
    *v384 = v380 - *(v2 + 601);
  }

  v385 = 0;
  v386 = 1;
LABEL_766:
  result = 4 * v385++;
  do
  {
    v387 = (&v924 + result);
    v388 = &v924 + result + 4;
    if ((&v924 + result) < &v924 || v388 > &v927 || v387 > v388)
    {
      goto LABEL_2011;
    }

    v391 = *v387;
    if (v391 >= 1 && v391 < v380)
    {
      v386 = 0;
      if (v385 == v382)
      {
LABEL_783:
        HIDWORD(v394) = v380 - 2;
        LODWORD(v394) = v380 - 2;
        v393 = v394 >> 1;
        if (v393 > 2)
        {
          if (v393 == 3)
          {
            v571 = *(a2 + 1);
            if (&v376[v571] <= v376)
            {
              goto LABEL_1188;
            }

            v572 = 0;
            v573 = v376;
            while (v573 < v379 && v573 >= v376)
            {
              v574 = &v924 + v572;
              v575 = v574 + 1;
              v576 = v574 < &v924 || v575 > &v927;
              if (v576 || v574 > v575)
              {
                break;
              }

              *v573 = *v573 >> *v574;
              ++v573;
              if (v572 + 1 < v382)
              {
                ++v572;
              }

              else
              {
                v572 = 0;
              }

              if (!--v571)
              {
                goto LABEL_1188;
              }
            }
          }

          else
          {
            if (v393 != 7)
            {
              goto LABEL_1188;
            }

            v399 = &v376[*(a2 + 1)];
            if (v399 <= v376)
            {
              goto LABEL_1188;
            }

            v400 = 0;
            v401 = v376;
            while (v401 < v379)
            {
              if (v401 < v376)
              {
                break;
              }

              v402 = (v401 + 1);
              if (v402 >= v379)
              {
                break;
              }

              v403 = &v924 + v400;
              if (v403 < &v924 || v403 + 1 > &v927 || v403 > v403 + 1)
              {
                break;
              }

              if (v400 + 1 < v382)
              {
                ++v400;
              }

              else
              {
                v400 = 0;
              }

              *(v402 - 1) = __rev16(__rev16(*(v402 - 1)) >> *v403);
              v401 = (v402 + 1);
              if (v401 >= v399)
              {
                goto LABEL_1188;
              }
            }
          }
        }

        else
        {
          if (v393)
          {
            if (v393 == 1)
            {
              v395 = *(a2 + 1);
              if (&v376[v395] > v376)
              {
                v396 = v924;
                v397 = (0xFu >> v924) | (16 * (0xFu >> v924));
                v398 = v376;
                while (v398 < v379 && v398 >= v376)
                {
                  *v398 = (*v398 >> v396) & v397;
                  ++v398;
                  if (!--v395)
                  {
                    goto LABEL_1188;
                  }
                }

                goto LABEL_2011;
              }
            }

LABEL_1188:
            v374 = *(v2 + 88);
            goto LABEL_1189;
          }

          v569 = *(a2 + 1);
          if (&v376[v569] <= v376)
          {
            goto LABEL_1188;
          }

          v570 = v376;
          while (v570 < v379 && v570 >= v376)
          {
            *v570 = (*v570 >> 1) & 0x55;
            ++v570;
            if (!--v569)
            {
              goto LABEL_1188;
            }
          }
        }

LABEL_2011:
        __break(0x5519u);
LABEL_2012:
        v923 = "NULL row buffer";
LABEL_2016:
        _cg_png_error(v2, v923);
      }

      goto LABEL_766;
    }

    *(&v924 + result) = 0;
    ++v385;
    result += 4;
  }

  while (v385 - v382 != 1);
  if ((v386 & 1) == 0)
  {
    goto LABEL_783;
  }

LABEL_1189:
  if ((v374 & 4) == 0)
  {
    goto LABEL_1227;
  }

  v578 = *(v2 + 336);
  v579 = v578 + 1;
  if (v578 + 1 < v578)
  {
    goto LABEL_2011;
  }

  v580 = *(a2 + 17);
  if (v580 > 7)
  {
    goto LABEL_1227;
  }

  v581 = *(v2 + 344);
  v582 = *a2;
  if (v580 == 4)
  {
    if (!v582)
    {
      goto LABEL_1226;
    }

    v593 = (v579 + ((v582 - 1) >> 1));
    v594 = 4 * (*a2 & 1);
    v595 = (v578 + v582);
    v596 = *a2;
    while (v593 < v581 && v593 >= v579 && v595 < v581 && v595 >= v579)
    {
      v597 = *v593 >> v594;
      v148 = v594 == 0;
      v598 = v594 == 0;
      *v595-- = v597 & 0xF;
      v599 = !v148;
      v594 = 4 * v598;
      v593 -= v599;
      if (!--v596)
      {
        goto LABEL_1226;
      }
    }

    goto LABEL_2011;
  }

  if (v580 == 2)
  {
    if (!v582)
    {
      goto LABEL_1226;
    }

    v588 = (v579 + ((v582 - 1) >> 2));
    v589 = ~(2 * v582 + 6) & 6;
    v590 = (v578 + v582);
    v591 = *a2;
    while (v588 < v581 && v588 >= v579 && v590 < v581 && v590 >= v579)
    {
      *v590-- = (*v588 >> v589) & 3;
      v148 = v589 == 6;
      v592 = v589 == 6;
      v589 += 2;
      if (v148)
      {
        v589 = 0;
      }

      v588 -= v592;
      if (!--v591)
      {
        goto LABEL_1226;
      }
    }

    goto LABEL_2011;
  }

  if (v580 == 1 && v582)
  {
    v583 = -v582 & 7;
    v584 = (v579 + ((v582 - 1) >> 3));
    v585 = (v578 + v582);
    v586 = *a2;
    while (v584 < v581 && v584 >= v579 && v585 < v581 && v585 >= v579)
    {
      *v585-- = (*v584 >> v583) & 1;
      v587 = v583 == 7;
      if (v583 == 7)
      {
        v583 = 0;
      }

      else
      {
        ++v583;
      }

      v584 -= v587;
      if (!--v586)
      {
        goto LABEL_1226;
      }
    }

    goto LABEL_2011;
  }

LABEL_1226:
  *(a2 + 17) = 8;
  v600 = *(a2 + 18);
  *(a2 + 19) = 8 * v600;
  *(a2 + 1) = (v582 * v600);
LABEL_1227:
  if (*(a2 + 16) == 3 && (*(v2 + 420) & 0x80000000) == 0)
  {
    result = png_do_check_palette_indexes(v2, a2);
  }

  v601 = *(v2 + 88);
  if (v601)
  {
    v602 = *(v2 + 336);
    if (v602 + 1 < v602)
    {
      goto LABEL_2011;
    }

    result = png_do_bgr(a2, v602 + 1, *(v2 + 344));
    v601 = *(v2 + 88);
  }

  if ((v601 & 0x10000) != 0)
  {
    v603 = *(v2 + 336);
    if (v603 + 1 < v603)
    {
      goto LABEL_2011;
    }

    result = png_do_packswap(a2, (v603 + 1), *(v2 + 344));
    v601 = *(v2 + 88);
  }

  if ((v601 & 0x8000) != 0)
  {
    v604 = *(v2 + 336);
    v605 = v604 + 1;
    if (v604 + 1 < v604)
    {
      goto LABEL_2011;
    }

    v606 = *(v2 + 344);
    v607 = *(v2 + 442);
    v608 = *(v2 + 80);
    v609 = *a2;
    v610 = v607 >> 8;
    if (*(a2 + 16) == 2)
    {
      v616 = *(a2 + 17);
      if (v616 == 16)
      {
        if ((v608 & 0x80) != 0)
        {
          if (v609 < 2)
          {
            v707 = v605 + 6 * v609 + 2 * v609;
          }

          else
          {
            v691 = 6 * v609;
            v692 = v609 - 1;
            v693 = 8 * v609;
            do
            {
              v694 = (v604 + v693);
              if (v604 + v693 >= v606 || v694 < v605)
              {
                goto LABEL_2011;
              }

              *v694 = v607;
              v696 = v694 - 1;
              if (v696 >= v606)
              {
                goto LABEL_2011;
              }

              if (v696 < v605)
              {
                goto LABEL_2011;
              }

              *v696 = BYTE1(v607);
              if (v604 + v691 >= v606)
              {
                goto LABEL_2011;
              }

              if (v604 + v691 < v605)
              {
                goto LABEL_2011;
              }

              v697 = (v604 + v693 - 2);
              if (v697 >= v606)
              {
                goto LABEL_2011;
              }

              if (v697 < v605)
              {
                goto LABEL_2011;
              }

              v698 = (v604 + v691 - 1);
              *v697 = *(v604 + v691);
              if (v698 >= v606)
              {
                goto LABEL_2011;
              }

              if (v698 < v605)
              {
                goto LABEL_2011;
              }

              v699 = (v604 + v693 - 3);
              if (v699 >= v606)
              {
                goto LABEL_2011;
              }

              if (v699 < v605)
              {
                goto LABEL_2011;
              }

              *v699 = *v698;
              v700 = (v604 + v691 - 2);
              if (v700 >= v606)
              {
                goto LABEL_2011;
              }

              if (v700 < v605)
              {
                goto LABEL_2011;
              }

              v701 = (v604 + v693 - 4);
              if (v701 >= v606)
              {
                goto LABEL_2011;
              }

              if (v701 < v605)
              {
                goto LABEL_2011;
              }

              *v701 = *v700;
              v702 = (v604 + v691 - 3);
              if (v702 >= v606)
              {
                goto LABEL_2011;
              }

              if (v702 < v605)
              {
                goto LABEL_2011;
              }

              v703 = (v604 + v693 - 5);
              if (v703 >= v606)
              {
                goto LABEL_2011;
              }

              if (v703 < v605)
              {
                goto LABEL_2011;
              }

              *v703 = *v702;
              v704 = (v604 + v691 - 4);
              if (v704 >= v606)
              {
                goto LABEL_2011;
              }

              if (v704 < v605)
              {
                goto LABEL_2011;
              }

              v705 = (v604 + v693 - 6);
              if (v705 >= v606)
              {
                goto LABEL_2011;
              }

              if (v705 < v605)
              {
                goto LABEL_2011;
              }

              *v705 = *v704;
              v706 = (v604 + v691 - 5);
              if (v706 >= v606)
              {
                goto LABEL_2011;
              }

              if (v706 < v605)
              {
                goto LABEL_2011;
              }

              result = v604 + v693 - 7;
              if (result >= v606 || result < v605)
              {
                goto LABEL_2011;
              }

              *result = *v706;
              v693 -= 8;
              v691 -= 6;
              --v692;
            }

            while (v692);
            v707 = v604 + v693 + 1;
          }

          if (v707 - 1 >= v606)
          {
            goto LABEL_2011;
          }

          if (v707 - 1 < v605)
          {
            goto LABEL_2011;
          }

          *(v707 - 1) = v607;
          v815 = (v707 - 2);
          if (v707 - 2 >= v606 || v815 < v605)
          {
            goto LABEL_2011;
          }

          *v815 = v610;
        }

        else if (v609)
        {
          v643 = 6 * v609;
          v644 = 8 * v609;
          v645 = *a2;
          do
          {
            v646 = (v604 + v643);
            v647 = v604 + v643 < v606 && v646 >= v605;
            v648 = (v604 + v644);
            v649 = !v647 || v648 >= v606;
            if (v649 || v648 < v605)
            {
              goto LABEL_2011;
            }

            v652 = *v646;
            v651 = v646 - 1;
            *v648 = v652;
            if (v651 >= v606)
            {
              goto LABEL_2011;
            }

            if (v651 < v605)
            {
              goto LABEL_2011;
            }

            v653 = (v604 + v644 - 1);
            if (v653 >= v606)
            {
              goto LABEL_2011;
            }

            if (v653 < v605)
            {
              goto LABEL_2011;
            }

            *v653 = *v651;
            v654 = (v604 + v643 - 2);
            if (v654 >= v606)
            {
              goto LABEL_2011;
            }

            if (v654 < v605)
            {
              goto LABEL_2011;
            }

            v655 = (v604 + v644 - 2);
            if (v655 >= v606)
            {
              goto LABEL_2011;
            }

            if (v655 < v605)
            {
              goto LABEL_2011;
            }

            *v655 = *v654;
            v656 = (v604 + v643 - 3);
            if (v656 >= v606)
            {
              goto LABEL_2011;
            }

            if (v656 < v605)
            {
              goto LABEL_2011;
            }

            v657 = (v604 + v644 - 3);
            if (v657 >= v606)
            {
              goto LABEL_2011;
            }

            if (v657 < v605)
            {
              goto LABEL_2011;
            }

            *v657 = *v656;
            v658 = (v604 + v643 - 4);
            if (v658 >= v606)
            {
              goto LABEL_2011;
            }

            if (v658 < v605)
            {
              goto LABEL_2011;
            }

            v659 = (v604 + v644 - 4);
            if (v659 >= v606)
            {
              goto LABEL_2011;
            }

            if (v659 < v605)
            {
              goto LABEL_2011;
            }

            *v659 = *v658;
            v660 = (v604 + v643 - 5);
            if (v660 >= v606)
            {
              goto LABEL_2011;
            }

            if (v660 < v605)
            {
              goto LABEL_2011;
            }

            result = v604 + v644 - 5;
            if (result >= v606)
            {
              goto LABEL_2011;
            }

            if (result < v605)
            {
              goto LABEL_2011;
            }

            *result = *v660;
            v661 = (v604 + v644 - 6);
            if (v661 >= v606)
            {
              goto LABEL_2011;
            }

            if (v661 < v605)
            {
              goto LABEL_2011;
            }

            *v661 = v607;
            v662 = (v604 + v644 - 7);
            if (v662 >= v606 || v662 < v605)
            {
              goto LABEL_2011;
            }

            *v662 = BYTE1(v607);
            v644 -= 8;
            v643 -= 6;
          }

          while (--v645);
        }

        v810 = 3;
        v811 = 64;
      }

      else
      {
        if (v616 != 8)
        {
          goto LABEL_1729;
        }

        if ((v608 & 0x80) != 0)
        {
          v671 = 3 * v609;
          if (v609 < 2)
          {
            v681 = v605 + v609 + v671;
          }

          else
          {
            v672 = v609 - 1;
            v673 = 4 * v609;
            do
            {
              v674 = (v604 + v673);
              if (v604 + v673 >= v606 || v674 < v605)
              {
                goto LABEL_2011;
              }

              *v674 = v607;
              if (v604 + v671 >= v606)
              {
                goto LABEL_2011;
              }

              if (v604 + v671 < v605)
              {
                goto LABEL_2011;
              }

              v676 = (v604 + v673 - 1);
              if (v676 >= v606)
              {
                goto LABEL_2011;
              }

              if (v676 < v605)
              {
                goto LABEL_2011;
              }

              v677 = (v604 + v671 - 1);
              result = *(v604 + v671);
              *v676 = result;
              if (v677 >= v606)
              {
                goto LABEL_2011;
              }

              if (v677 < v605)
              {
                goto LABEL_2011;
              }

              v678 = (v604 + v673 - 2);
              if (v678 >= v606)
              {
                goto LABEL_2011;
              }

              if (v678 < v605)
              {
                goto LABEL_2011;
              }

              *v678 = *v677;
              v679 = (v604 + v671 - 2);
              if (v679 >= v606)
              {
                goto LABEL_2011;
              }

              if (v679 < v605)
              {
                goto LABEL_2011;
              }

              v680 = (v604 + v673 - 3);
              if (v680 >= v606 || v680 < v605)
              {
                goto LABEL_2011;
              }

              *v680 = *v679;
              v673 -= 4;
              v671 -= 3;
              --v672;
            }

            while (v672);
            v681 = v604 + v673 + 1;
          }

          v813 = (v681 - 1);
          if (v813 >= v606 || v813 < v605)
          {
            goto LABEL_2011;
          }

          *v813 = v607;
        }

        else if (v609)
        {
          v617 = 4 * v609;
          v618 = *a2;
          v619 = 3 * v609;
          do
          {
            v620 = (v604 + v619);
            v621 = v604 + v619 < v606 && v620 >= v605;
            v622 = (v604 + v617);
            v623 = !v621 || v622 >= v606;
            if (v623 || v622 < v605)
            {
              goto LABEL_2011;
            }

            v626 = *v620;
            v625 = v620 - 1;
            result = v626;
            *v622 = v626;
            if (v625 >= v606)
            {
              goto LABEL_2011;
            }

            if (v625 < v605)
            {
              goto LABEL_2011;
            }

            v627 = (v604 + v617 - 1);
            if (v627 >= v606)
            {
              goto LABEL_2011;
            }

            if (v627 < v605)
            {
              goto LABEL_2011;
            }

            *v627 = *v625;
            v628 = (v604 + v619 - 2);
            if (v628 >= v606)
            {
              goto LABEL_2011;
            }

            if (v628 < v605)
            {
              goto LABEL_2011;
            }

            v629 = (v604 + v617 - 2);
            if (v629 >= v606)
            {
              goto LABEL_2011;
            }

            if (v629 < v605)
            {
              goto LABEL_2011;
            }

            *v629 = *v628;
            v630 = (v604 + v617 - 3);
            if (v630 >= v606 || v630 < v605)
            {
              goto LABEL_2011;
            }

            *v630 = v607;
            v617 -= 4;
            v619 -= 3;
          }

          while (--v618);
        }

        v810 = 2;
        v811 = 32;
      }

      v812 = 4;
      goto LABEL_1728;
    }

    if (!*(a2 + 16))
    {
      v611 = *(a2 + 17);
      if (v611 == 16)
      {
        if ((v608 & 0x80) != 0)
        {
          if (v609 < 2)
          {
            v690 = v605 + 2 * v609 + 2 * v609;
          }

          else
          {
            v682 = 2 * v609;
            v683 = v609 - 1;
            v684 = 4 * v609;
            do
            {
              v685 = (v604 + v684);
              if (v604 + v684 >= v606 || v685 < v605)
              {
                goto LABEL_2011;
              }

              *v685 = v607;
              v687 = v685 - 1;
              if (v687 >= v606)
              {
                goto LABEL_2011;
              }

              if (v687 < v605)
              {
                goto LABEL_2011;
              }

              *v687 = BYTE1(v607);
              if (v604 + v682 >= v606)
              {
                goto LABEL_2011;
              }

              if (v604 + v682 < v605)
              {
                goto LABEL_2011;
              }

              v688 = (v604 + v684 - 2);
              if (v688 >= v606)
              {
                goto LABEL_2011;
              }

              if (v688 < v605)
              {
                goto LABEL_2011;
              }

              v689 = (v604 + v682 - 1);
              *v688 = *(v604 + v682);
              if (v689 >= v606)
              {
                goto LABEL_2011;
              }

              if (v689 < v605)
              {
                goto LABEL_2011;
              }

              result = v604 + v684 - 3;
              if (result >= v606 || result < v605)
              {
                goto LABEL_2011;
              }

              *result = *v689;
              v684 -= 4;
              v682 -= 2;
              --v683;
            }

            while (v683);
            v690 = v604 + v684 + 1;
          }

          if (v690 - 1 >= v606)
          {
            goto LABEL_2011;
          }

          if (v690 - 1 < v605)
          {
            goto LABEL_2011;
          }

          *(v690 - 1) = v607;
          v814 = (v690 - 2);
          if (v690 - 2 >= v606 || v814 < v605)
          {
            goto LABEL_2011;
          }

          *v814 = v610;
        }

        else if (v609)
        {
          v631 = 2 * v609;
          v632 = 4 * v609;
          v633 = *a2;
          do
          {
            v634 = (v604 + v631);
            v635 = v604 + v631 < v606 && v634 >= v605;
            v636 = (v604 + v632);
            v637 = !v635 || v636 >= v606;
            if (v637 || v636 < v605)
            {
              goto LABEL_2011;
            }

            v640 = *v634;
            v639 = v634 - 1;
            *v636 = v640;
            if (v639 >= v606)
            {
              goto LABEL_2011;
            }

            if (v639 < v605)
            {
              goto LABEL_2011;
            }

            result = v604 + v632 - 1;
            if (result >= v606)
            {
              goto LABEL_2011;
            }

            if (result < v605)
            {
              goto LABEL_2011;
            }

            *result = *v639;
            v641 = (v604 + v632 - 2);
            if (v641 >= v606)
            {
              goto LABEL_2011;
            }

            if (v641 < v605)
            {
              goto LABEL_2011;
            }

            *v641 = v607;
            v642 = (v604 + v632 - 3);
            if (v642 >= v606 || v642 < v605)
            {
              goto LABEL_2011;
            }

            *v642 = BYTE1(v607);
            v632 -= 4;
            v631 -= 2;
          }

          while (--v633);
        }

        v812 = 2;
        v811 = 32;
        v810 = 2;
LABEL_1728:
        *(a2 + 18) = v812;
        *(a2 + 19) = v811;
        *(a2 + 1) = (v609 << v810);
        v601 = *(v2 + 88);
      }

      else if (v611 == 8)
      {
        if ((v608 & 0x80) != 0)
        {
          if (v609 < 2)
          {
            v670 = v605 + v609 + v609;
          }

          else
          {
            v663 = v609 - 1;
            v664 = 2 * v609;
            v665 = *a2;
            do
            {
              v666 = (v604 + v664);
              if (v604 + v664 >= v606 || v666 < v605)
              {
                goto LABEL_2011;
              }

              *v666 = v607;
              v668 = (v604 + v665);
              if (v604 + v665 >= v606)
              {
                goto LABEL_2011;
              }

              if (v668 < v605)
              {
                goto LABEL_2011;
              }

              v669 = (v604 + v664 - 1);
              if (v669 >= v606 || v669 < v605)
              {
                goto LABEL_2011;
              }

              *v669 = *v668;
              --v665;
              v664 -= 2;
              --v663;
            }

            while (v663);
            v670 = v604 + v664 + 1;
          }

          v809 = (v670 - 1);
          if (v809 >= v606 || v809 < v605)
          {
            goto LABEL_2011;
          }

          *v809 = v607;
        }

        else if (v609)
        {
          v612 = (v604 + v609);
          v613 = (v604 + 2 * v609);
          v614 = *a2;
          while (v612 < v606 && v612 >= v605 && v613 < v606 && v613 >= v605)
          {
            *v613 = *v612;
            if ((v613 - 1) >= v606 || (v613 - 1) < v605)
            {
              break;
            }

            *(v613 - 1) = v607;
            --v612;
            v613 -= 2;
            if (!--v614)
            {
              goto LABEL_1707;
            }
          }

          goto LABEL_2011;
        }

LABEL_1707:
        v810 = 1;
        v811 = 16;
        v812 = 2;
        goto LABEL_1728;
      }
    }
  }

LABEL_1729:
  if ((v601 & 0x20000) != 0)
  {
    v816 = *(v2 + 336);
    v817 = v816 + 1;
    if (v816 + 1 < v816)
    {
      goto LABEL_2011;
    }

    v818 = *(v2 + 344);
    v819 = *a2;
    v820 = *(a2 + 16);
    if (v820 == 4)
    {
      if (*(a2 + 17) == 8)
      {
        if (v819)
        {
          v824 = (v816 + *(a2 + 1));
          while (v824 < v818 && v824 >= v817 && (v824 - 1) < v818 && (v824 - 1) >= v817)
          {
            v825 = *v824;
            *v824 = *(v824 - 1);
            *(v824 - 1) = v825;
            v824 -= 2;
            if (!--v819)
            {
              goto LABEL_1795;
            }
          }

          goto LABEL_2011;
        }
      }

      else if (v819)
      {
        v830 = (*(a2 + 1) + v816 - 1);
        while ((v830 + 1) < v818 && (v830 + 1) >= v817)
        {
          if (v830 >= v818)
          {
            break;
          }

          if (v830 < v817)
          {
            break;
          }

          v832 = *v830;
          if ((v830 - 1) >= v818)
          {
            break;
          }

          if ((v830 - 1) < v817)
          {
            break;
          }

          v833 = v830[1];
          v830[1] = *(v830 - 1);
          if ((v830 - 2) >= v818 || (v830 - 2) < v817)
          {
            break;
          }

          *v830 = *(v830 - 2);
          *(v830 - 1) = v833;
          *(v830 - 2) = v832;
          v830 -= 4;
          if (!--v819)
          {
            goto LABEL_1795;
          }
        }

        goto LABEL_2011;
      }
    }

    else if (v820 == 6)
    {
      if (*(a2 + 17) == 8)
      {
        if (v819)
        {
          v821 = (*(a2 + 1) + v816 - 1);
          while ((v821 + 1) < v818 && (v821 + 1) >= v817)
          {
            if (v821 >= v818)
            {
              break;
            }

            if (v821 < v817)
            {
              break;
            }

            v823 = v821[1];
            v821[1] = *v821;
            if ((v821 - 1) >= v818)
            {
              break;
            }

            if ((v821 - 1) < v817)
            {
              break;
            }

            *v821 = *(v821 - 1);
            if ((v821 - 2) >= v818 || (v821 - 2) < v817)
            {
              break;
            }

            *(v821 - 1) = *(v821 - 2);
            *(v821 - 2) = v823;
            v821 -= 4;
            if (!--v819)
            {
              goto LABEL_1795;
            }
          }

          goto LABEL_2011;
        }
      }

      else if (v819)
      {
        v826 = (*(a2 + 1) + v816 - 7);
        while ((v826 + 7) < v818 && (v826 + 7) >= v817)
        {
          if ((v826 + 6) >= v818)
          {
            break;
          }

          if ((v826 + 6) < v817)
          {
            break;
          }

          if ((v826 + 5) >= v818)
          {
            break;
          }

          if ((v826 + 5) < v817)
          {
            break;
          }

          v828 = v826[7];
          v829 = v826[6];
          v826[7] = v826[5];
          if ((v826 + 4) >= v818)
          {
            break;
          }

          if ((v826 + 4) < v817)
          {
            break;
          }

          v826[6] = v826[4];
          if ((v826 + 3) >= v818)
          {
            break;
          }

          if ((v826 + 3) < v817)
          {
            break;
          }

          v826[5] = v826[3];
          if ((v826 + 2) >= v818)
          {
            break;
          }

          if ((v826 + 2) < v817)
          {
            break;
          }

          v826[4] = v826[2];
          if ((v826 + 1) >= v818)
          {
            break;
          }

          if ((v826 + 1) < v817)
          {
            break;
          }

          v826[3] = v826[1];
          if (v826 >= v818 || v826 < v817)
          {
            break;
          }

          v826[2] = *v826;
          v826[1] = v828;
          *v826 = v829;
          v826 -= 8;
          if (!--v819)
          {
            goto LABEL_1795;
          }
        }

        goto LABEL_2011;
      }
    }
  }

LABEL_1795:
  v834 = *(v2 + 88);
  if ((v834 & 0x10) != 0)
  {
    v835 = *(v2 + 336);
    if (v835 + 1 < v835)
    {
      goto LABEL_2011;
    }

    result = png_do_swap(a2, v835 + 1, *(v2 + 344));
    v834 = *(v2 + 88);
  }

  if ((v834 & 0x100000) != 0)
  {
    v836 = *(v2 + 48);
    if (v836)
    {
      v837 = *(v2 + 336);
      v838 = v837 + 1;
      if (v837 != -1 && (v838 < v837 || v838 >= *(v2 + 344)))
      {
        goto LABEL_2011;
      }

      result = v836(v2, a2, v838);
    }

    if (*(v2 + 72))
    {
      *(a2 + 17) = *(v2 + 72);
    }

    v839 = *(v2 + 73);
    if (v839)
    {
      *(a2 + 18) = v839;
    }

    else
    {
      v839 = *(a2 + 18);
    }

    v840 = v839 * *(a2 + 17);
    *(a2 + 19) = v840;
    v26 = v840 >= 8u;
    v841 = (*a2 * v840 + 7) >> 3;
    v842 = *a2 * (v840 >> 3);
    if (!v26)
    {
      v842 = v841;
    }

    *(a2 + 1) = v842;
  }

  return result;
}