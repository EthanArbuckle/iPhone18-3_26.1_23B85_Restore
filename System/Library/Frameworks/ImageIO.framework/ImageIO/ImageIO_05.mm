void sub_185EA0DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  IIODictionary::~IIODictionary(&a20);
  IIOScanner::~IIOScanner(&a27);
  _Unwind_Resume(a1);
}

CFDataRef IIOImageRead::copyData(IIOImageRead *this)
{
  v13 = 0;
  pthread_mutex_lock((this + 376));
  v2 = *(this + 4);
  if (*(this + 67) != 1)
  {
    if (!v2)
    {
      if (*(this + 6) == -1)
      {
        v11 = *(this + 5);
        if (v11)
        {
          v3 = CGDataProviderCopyData(v11);
          goto LABEL_6;
        }
      }

      else
      {
        v6 = *(this + 10);
        if (v6)
        {
          v7 = malloc_type_malloc(v6, 0x100004077774924uLL);
          BytesAtOffset = IIOImageRead::getBytesAtOffset(this, v7, 0, *(this + 10), 1);
          v12 = *byte_1EF4DBB08;
          v9 = *MEMORY[0x1E695E480];
          v10 = CFAllocatorCreate(*MEMORY[0x1E695E480], &v12);
          v4 = CFDataCreateWithBytesNoCopy(v9, v7, BytesAtOffset, v10);
          CFRelease(v10);
          goto LABEL_7;
        }
      }

      v4 = 0;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    v3 = CFRetain(v2);
    goto LABEL_6;
  }

  v3 = IIOImageRead::createDataWithMappedFile(this, 0, &v13);
LABEL_6:
  v4 = v3;
LABEL_7:
  pthread_mutex_unlock((this + 376));
  return v4;
}

uint64_t GlobalHEIFInfo::getNumberOfMainImages(GlobalHEIFInfo *this)
{
  v1 = (*(this + 2) - *(this + 1)) >> 3;
  if (*(this + 72))
  {
    return v1;
  }

  else
  {
    return v1 != 0;
  }
}

uint64_t HEIFMainImage::HEIFMainImage(uint64_t a1, uint64_t a2, int a3, __CFDictionary *a4, uint64_t a5, const __CFDictionary *a6, int a7)
{
  *a1 = &unk_1EF4DDA60;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  memset(v50, 0, sizeof(v50));
  v11 = IIODictionary::IIODictionary(v50, a4);
  *(a1 + 160) = 0u;
  v12 = (a1 + 160);
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 160) = a3;
  *(a1 + 172) = 8;
  if (a6)
  {
    value[0] = 0;
    CFDictionaryGetValueIfPresent(a6, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages, value);
    if (value[0] && CFArrayGetCount(value[0]))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(value[0], 0);
      v48 = 0uLL;
      v49 = 0;
      IIODictionary::IIODictionary(&v48, ValueAtIndex);
      *(a1 + 164) = IIODictionary::getUint32ForKeyGroup(&v48, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
      *(a1 + 168) = IIODictionary::getUint32ForKeyGroup(&v48, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
      IIODictionary::~IIODictionary(&v48);
    }
  }

  else
  {
    *(a1 + 164) = IIODictionary::getUint32ForKeyGroup(v11, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
    *(a1 + 168) = IIODictionary::getUint32ForKeyGroup(v50, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
    if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth))
    {
      ObjectForKey = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_BitDepth);
      v48 = 0uLL;
      v49 = 0;
      IIOArray::IIOArray(&v48, ObjectForKey);
      if (IIOArray::getCount(&v48))
      {
        *(a1 + 172) = IIOArray::getUint32AtIndex(&v48, 0);
      }

      IIOArray::~IIOArray(&v48);
    }
  }

  *(a1 + 200) = IIODictionary::getUint32ForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_ItemID);
  *(a1 + 180) = IIODictionary::getUint32ForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
  *(a1 + 184) = IIODictionary::getUint32ForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
  *(a1 + 196) = a7;
  if ((a7 & 0x80000000) == 0)
  {
    *(a1 + 280) = IIODictionary::getBoolForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleDependsOnOthers);
    v15 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_SequenceSampleDuration);
    v48 = 0uLL;
    v49 = 0;
    gFunc_CMTimeMakeFromDictionary(&v48, v15);
    *value = v48;
    v47 = v49;
    *(a1 + 272) = gFunc_CMTimeGetSeconds(value);
  }

  *(a1 + 296) = 0;
  v16 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_NamedColorSpace);
  *(a1 + 288) = v16;
  if (v16)
  {
    v17 = CFRetain(v16);
LABEL_13:
    *(a1 + 288) = v17;
    goto LABEL_14;
  }

  v41 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_ColorSpace);
  v42 = v41;
  if (!v41)
  {
    v17 = CFRetain(*MEMORY[0x1E695F1C0]);
    goto LABEL_13;
  }

  v43 = CGColorSpaceCopyName(v41);
  *(a1 + 288) = v43;
  if (!v43)
  {
    *(a1 + 296) = CGColorSpaceRetain(v42);
  }

LABEL_14:
  *(a1 + 188) = 0;
  *(a1 + 192) = 0;
  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_TileDimensions))
  {
    *(a1 + 188) = IIODictionary::getUint32ForKeyGroup(v50, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_TileDimensions);
    *(a1 + 192) = IIODictionary::getUint32ForKeyGroup(v50, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_TileDimensions);
  }

  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImages))
  {
    v18 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImages);
    v19 = v18;
    if (v18)
    {
      Count = CFArrayGetCount(v18);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          if (CFArrayGetValueAtIndex(v19, i))
          {
            operator new();
          }
        }
      }
    }
  }

  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImages))
  {
    v22 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryImages);
    v23 = v22;
    if (v22)
    {
      v24 = CFArrayGetCount(v22);
      if (v24 >= 1)
      {
        for (j = 0; j != v24; ++j)
        {
          v26 = CFArrayGetValueAtIndex(v23, j);
          if (v26)
          {
            v27 = CFDictionaryGetValue(v26, *gIIO_kCMPhotoDecompressionContainerDescription_AuxiliaryTypeURN);
            if (!v27 || CFStringCompare(v27, @"http://ns.adobe.com/hdr-gain-map/1.0/", 0))
            {
              operator new();
            }

            _cg_jpeg_mem_term("HEIFMainImage", 1739, "❌ skipping 'http://ns.adobe.com/hdr-gain-map/1.0/'");
          }
        }
      }
    }
  }

  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_CustomMetadataPayloads))
  {
    v28 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_CustomMetadataPayloads);
    v29 = v28;
    if (v28)
    {
      v30 = CFArrayGetCount(v28);
      if (v30 >= 1)
      {
        for (k = 0; k != v30; ++k)
        {
          if (CFArrayGetValueAtIndex(v29, k))
          {
            operator new();
          }
        }
      }
    }
  }

  if (IIODictionary::containsKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_AlternateImages))
  {
    v32 = IIODictionary::getObjectForKey(v50, *gIIO_kCMPhotoDecompressionContainerDescription_AlternateImages);
    v33 = v32;
    if (v32)
    {
      v34 = CFArrayGetCount(v32);
      if (v34 >= 1)
      {
        for (m = 0; m != v34; ++m)
        {
          v36 = CFArrayGetValueAtIndex(v33, m);
          v48 = 0uLL;
          v49 = 0;
          IIODictionary::IIODictionary(&v48, v36);
          Uint32ForKey = IIODictionary::getUint32ForKey(&v48, *gIIO_kCMPhotoDecompressionContainerDescription_ItemType);
          if (!Uint32ForKey)
          {
            Uint32ForKey = IIODictionary::getUint32ForKey(&v48, *gIIO_kCMPhotoDecompressionContainerDescription_CodecType);
          }

          if (Uint32ForKey == 1953325424)
          {
            operator new();
          }

          IIODictionary::~IIODictionary(&v48);
        }
      }
    }
  }

  *(a1 + 204) = 0;
  gFunc_CMPhotoDecompressionContainerCopyImageSubsamplingForIndexWithOptions(a2, *(a1 + 160), 0);
  *&v48 = 0;
  if (gFunc_CMPhotoDecompressionContainerGetExifCountForIndexWithOptions(a2, *v12, 0, &v48))
  {
    v38 = 1;
  }

  else
  {
    v38 = v48 < 1;
  }

  if (!v38)
  {
    operator new();
  }

  if (a5)
  {
    operator new();
  }

  value[0] = 0;
  if (gFunc_CMPhotoDecompressionContainerGetXMPCountForIndexWithOptions(a2, *v12, 0, value))
  {
    v39 = 1;
  }

  else
  {
    v39 = value[0] < 1;
  }

  if (!v39)
  {
    operator new();
  }

  HEIFMainImage::extractISO5Metadata(a1, v50);
  IIODictionary::~IIODictionary(v50);
  return a1;
}

void sub_185EA186C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13, uint64_t a14, void **a15)
{
  IIODictionary::~IIODictionary((v16 - 104));
  v18 = v15[16];
  if (v18)
  {
    v15[17] = v18;
    operator delete(v18);
  }

  v19 = *a15;
  if (*a15)
  {
    v15[14] = v19;
    operator delete(v19);
  }

  v20 = v15[10];
  if (v20)
  {
    v15[11] = v20;
    operator delete(v20);
  }

  v21 = *a12;
  if (*a12)
  {
    v15[8] = v21;
    operator delete(v21);
  }

  v22 = v15[4];
  if (v22)
  {
    v15[5] = v22;
    operator delete(v22);
  }

  v23 = *a13;
  if (*a13)
  {
    v15[2] = v23;
    operator delete(v23);
  }

  _Unwind_Resume(a1);
}

const __CFArray *IIOArray::getCount(IIOArray *this)
{
  result = *(this + 1);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFNumber *IIOArray::getUint32AtIndex(IIOArray *this, CFIndex a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, a2);
  IIONumber::IIONumber(v6, ValueAtIndex);
  v4 = IIONumber::uint32Num(v6);
  IIONumber::~IIONumber(v6);
  return v4;
}

void sub_185EA1AA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t GlobalHEIFInfo::setPrimaryImageIndex(uint64_t this, unsigned int a2)
{
  if (a2 < ((*(this + 16) - *(this + 8)) >> 3))
  {
    *(this + 64) = a2;
  }

  return this;
}

uint64_t IIO_Reader_HEIF::initImageAtOffset(uint64_t a1)
{
  if ((IIO_XPCServer() & 1) == 0)
  {
    CFStringCompare(**(a1 + 8), @"public.jpeg", 0);
    operator new();
  }

  return 4294967246;
}

void sub_185EA1C14(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185EA1B34);
}

uint64_t HEIFReadPlugin::HEIFReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5, char a6, int a7)
{
  v12 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a7);
  *v12 = &unk_1EF4DBC70;
  *(v12 + 464) = 0u;
  *(v12 + 480) = 0u;
  *(v12 + 496) = 0u;
  *(v12 + 512) = 0u;
  *(v12 + 528) = 0u;
  *(v12 + 544) = 0;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  HEIFReadPlugin::HEIFReadPlugin   [%p]\n", a1);
  }

  if (a7 == 1212829767 && a4 >= 1 && a5)
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    IIOScanner::IIOScanner(v14, *(a1 + 24));
    IIOScanner::setEndianness(v14, 0);
    IIOScanner::seek(v14, a4);
    if (IIOScanner::getVal16(v14) == 65496)
    {
      IIOScanner::seek(v14, a4 + a5 - 2);
      if (IIOScanner::getVal16(v14) == 65497 || IIOScanner::getVal16(v14) == 65496)
      {
        *(a1 + 488) = a4;
        *(a1 + 496) = a5;
        _cg_jpeg_mem_term("HEIFReadPlugin", 106, "    HEIFReadPlugin(JPEG) - offset: %ld   size: %d\n", a4, a5);
      }
    }

    IIOScanner::~IIOScanner(v14);
  }

  *(a1 + 508) = 1;
  *(a1 + 527) = a6;
  *(a1 + 368) = 1;
  return a1;
}

void sub_185EA1E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __cxa_end_catch();
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x185EA1E38);
}

uint64_t HEIFReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  IIO_LoadHEIFSymbols();
  if (IIORestrictedDecodingEnabledFlag() && *(a1 + 408) >= 2)
  {
    *(a1 + 408) = 1;
    goto LABEL_6;
  }

  v4 = *(a1 + 408);
  if (v4 == 12)
  {
    v5 = IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
    goto LABEL_7;
  }

  if (v4 == 1)
  {
LABEL_6:
    v5 = IIOReadPlugin::setupCallback(a1, a2);
LABEL_7:
    v6 = v5;
    goto LABEL_8;
  }

  v6 = 4294967246;
LABEL_8:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("       useMainImageForThumbnail: %d\n", *(a1 + 526));
  }

  return v6;
}

void IIONumber::IIONumber(IIONumber *this, const __CFString *cf)
{
  *this = &unk_1EF4D41D0;
  if (!cf)
  {
    goto LABEL_10;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFNumberGetTypeID())
  {
    *(this + 2) = CFRetain(cf);
    *(this + 1) = CFNumberGetType(cf);
    return;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CFBooleanGetTypeID())
  {
    LOBYTE(valuePtr[0]) = *MEMORY[0x1E695E4D0] == cf;
    *(this + 1) = 1;
    *(this + 2) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, valuePtr);
    return;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFStringGetTypeID())
  {
    memset(valuePtr, 0, sizeof(valuePtr));
    IIOString::IIOString(valuePtr, cf);
    v7 = IIOString::utf8String(valuePtr);
    v8 = v7;
    if (v7)
    {
      v9 = strlen(v7);
      if (strnstr(v8, ".", v9))
      {
        *(this + 1) = 13;
        DoubleValue = CFStringGetDoubleValue(cf);
        v10 = CFNumberCreate(*MEMORY[0x1E695E480], *(this + 1), &DoubleValue);
      }

      else
      {
        DoubleValue = COERCE_DOUBLE(atol(v8));
        *(this + 1) = 10;
        v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &DoubleValue);
      }

      *(this + 2) = v10;
    }

    else
    {
      *(this + 1) = 1;
      *(this + 2) = 0;
    }

    IIOString::~IIOString(valuePtr);
  }

  else
  {
LABEL_10:
    IIOLogTypeMismatch(cf, "IIONumber", "CFNumberRef");
    *(this + 1) = 1;
    *(this + 2) = 0;
  }
}

void sub_185EA2104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void IIODictionaryAppendDictionary(__CFDictionary *a1, const __CFDictionary *a2, BOOL a3)
{
  if (a1 && a2)
  {
    if ((IIODictionaryIsMutable() & 1) == 0)
    {
      _cg_jpeg_mem_term("IIODictionaryAppendDictionary", 1626, "*** ERROR: ❌ IIODictionaryAppendDictionary called with immutable dictionary!  [%p]\n", a1);
    }

    Count = CFDictionaryGetCount(a2);
    v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    if (v7)
    {
      v8 = v7;
      v9 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (v9)
      {
        v10 = v9;
        CFDictionaryGetKeysAndValues(a2, v8, v9);
        if (Count >= 1)
        {
          v11 = *MEMORY[0x1E695E480];
          v12 = v10;
          v13 = v8;
          do
          {
            if (a3 || !CFDictionaryContainsKey(a1, *v13))
            {
              v14 = CFGetTypeID(*v12);
              TypeID = CFDictionaryGetTypeID();
              v16 = *v13;
              if (v14 == TypeID)
              {
                Value = CFDictionaryGetValue(a1, v16);
                if (Value)
                {
                  v18 = Value;
                  v19 = CFGetTypeID(Value);
                  if (v19 == CFDictionaryGetTypeID())
                  {
                    MutableCopy = CFDictionaryCreateMutableCopy(v11, 0, v18);
                    if (!MutableCopy)
                    {
                      break;
                    }

                    v21 = MutableCopy;
                    IIODictionaryAppendDictionary(MutableCopy, *v12, a3);
                    CFDictionarySetValue(a1, *v13, v21);
                    CFRelease(v21);
                    goto LABEL_18;
                  }
                }

                v16 = *v13;
              }

              CFDictionarySetValue(a1, v16, *v12);
            }

LABEL_18:
            ++v13;
            ++v12;
            --Count;
          }

          while (Count);
        }

        free(v8);
      }

      else
      {
        v10 = v8;
      }

      free(v10);
    }
  }
}

void __CGImagePropertiesCreateFromMetadata_block_invoke(uint64_t a1, uint64_t a2)
{
  v127 = 0;
  v128 = 0;
  v126 = 0.0;
  TopLevelTag = CGImageMetadataGetTopLevelTag(*(a1 + 40), **(a2 + 24), **(a2 + 32));
  if (!TopLevelTag)
  {
    v17 = *(a2 + 16);
    if (v17 == 16)
    {
      TopLevelTag = CGImageMetadataGetTopLevelTag(*(a1 + 40), **(a2 + 24), @"GPSTime");
      if (TopLevelTag)
      {
        goto LABEL_2;
      }

      v17 = *(a2 + 16);
    }

    if (v17 != 15)
    {
      return;
    }

    TopLevelTag = CGImageMetadataGetTopLevelTag(*(a1 + 40), **(a2 + 24), @"GPSDate");
    if (!TopLevelTag)
    {
      return;
    }
  }

LABEL_2:
  Source = CGImageSourceGetSource(TopLevelTag);
  if (Source)
  {
    v13 = *(Source + 48);
    if (!v13)
    {
      CFStringGetCStringPtr(**(a2 + 24), 0);
      CFStringGetCStringPtr(**(a2 + 32), 0);
      LogMetadata("CGImagePropertiesCreateFromMetadata_block_invoke", 6119, "Tag with namespace = %s, name = %s, has a NULL value\n");
      return;
    }

    v14 = *(a2 + 16);
    v15 = **(a2 + 8);
    switch(*(a2 + 16))
    {
      case 0:
        if (GetIntegerFromPropertyValue(*(Source + 48), &v128 + 1))
        {
          v16 = *(*(*(a1 + 32) + 8) + 24);
          IIONumber::IIONumber(&v123, SHIDWORD(v128));
          IIODictionary::setObjectForKeyGroup(v16, &v123, v15, **a2);
          goto LABEL_71;
        }

        return;
      case 1:
        if (GetDoubleFromPropertyValue(*(Source + 48), &v126))
        {
          v46 = *(*(*(a1 + 32) + 8) + 24);
          IIONumber::IIONumber(&v123, v126);
          IIODictionary::setObjectForKeyGroup(v46, &v123, v15, **a2);
          goto LABEL_71;
        }

        return;
      case 2:
        DefaultString = CGImageMetadataGetDefaultString(*(Source + 48));
        if (DefaultString)
        {
          v38 = DefaultString;
          IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), DefaultString, v15, **a2);
          if (CFStringCompare(**(a2 + 24), @"http://purl.org/dc/elements/1.1/", 0) == kCFCompareEqualTo && CFStringCompare(**(a2 + 32), @"rights", 0) == kCFCompareEqualTo)
          {
            v39 = *(*(*(a1 + 32) + 8) + 24);

            IIODictionary::setObjectForKeyGroup(v39, v38, @"Copyright", @"{TIFF}");
          }
        }

        return;
      case 3:
        EXIFDataTimeStringWithXMPDateTimeString = CreateEXIFDataTimeStringWithXMPDateTimeString(*(Source + 48));
        if (EXIFDataTimeStringWithXMPDateTimeString)
        {
          goto LABEL_112;
        }

        return;
      case 4:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        IIOArray::IIOArray(&v123);
        v31 = CFGetTypeID(v13);
        if (v31 == CFArrayGetTypeID())
        {
          *v120 = 0;
          v121 = 0;
          v122 = 0;
          IIOArray::IIOArray(v120, v13);
          Count = IIOArray::getCount(v120);
          if (Count)
          {
            v33 = 0;
            v34 = Count;
            do
            {
              ObjectAtIndex = IIOArray::getObjectAtIndex(v120, v33);
              v36 = CGImageMetadataGetDefaultString(ObjectAtIndex);
              if (v36)
              {
                HIDWORD(v128) = CFStringGetIntValue(v36);
                IIONumber::IIONumber(v118, SHIDWORD(v128));
                IIOArray::addObject(&v123, v119);
                IIONumber::~IIONumber(v118);
              }

              ++v33;
            }

            while (v34 != v33);
          }

          goto LABEL_36;
        }

        v84 = CFGetTypeID(v13);
        if (v84 == CFStringGetTypeID())
        {
          *v120 = 0;
          v121 = 0;
          v122 = 0;
          IIOString::IIOString(v120, v13);
          v85 = IIOString::utf8String(v120);
          v86 = strdup(v85);
          for (i = strtok(v86, ";"); i; i = strtok(0, ";"))
          {
            sscanf(i, "%d", &v128 + 4);
            IIONumber::IIONumber(v118, SHIDWORD(v128));
            IIOArray::addObject(&v123, v118);
            IIONumber::~IIONumber(v118);
          }

          free(v86);
          IIOString::~IIOString(v120);
        }

        goto LABEL_128;
      case 5:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        IIOArray::IIOArray(&v123);
        v52 = CFGetTypeID(v13);
        if (v52 == CFArrayGetTypeID())
        {
          *v120 = 0;
          v121 = 0;
          v122 = 0;
          IIOArray::IIOArray(v120, v13);
          v53 = IIOArray::getCount(v120);
          if (v53)
          {
            v54 = 0;
            v55 = v53;
            do
            {
              v56 = IIOArray::getObjectAtIndex(v120, v54);
              v57 = CGImageMetadataGetDefaultString(v56);
              if (v57 && GetDoubleFromPropertyValue(v57, &v126))
              {
                v58 = v126;
                IIONumber::IIONumber(v118, v58);
                IIOArray::addObject(&v123, v119);
                IIONumber::~IIONumber(v118);
              }

              ++v54;
            }

            while (v55 != v54);
            IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), v124, v15, **a2);
          }

          IIOArray::~IIOArray(v120);
        }

        else
        {
          v94 = CFGetTypeID(v13);
          if (v94 == CFStringGetTypeID())
          {
            *v120 = 0;
            v121 = 0;
            v122 = 0;
            IIOString::IIOString(v120, v13);
            v95 = IIOString::utf8String(v120);
            v96 = strdup(v95);
            for (j = strtok(v96, ";"); j; j = strtok(0, ";"))
            {
              if (sscanf(j, "%d/%d", &v128 + 4, &v128) == 1)
              {
                IIONumber::IIONumber(v118, SHIDWORD(v128));
                IIOArray::addObject(&v123, v118);
              }

              else
              {
                if (v128)
                {
                  v98 = SHIDWORD(v128) / v128;
                }

                else
                {
                  v98 = 0.0;
                }

                v126 = v98;
                IIONumber::IIONumber(v118, v98);
                IIOArray::addObject(&v123, v118);
              }

              IIONumber::~IIONumber(v118);
            }

            free(v96);
            IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), v124, v15, **a2);
            IIOString::~IIOString(v120);
          }
        }

        goto LABEL_152;
      case 6:
        if (!GetMajorVersionFromPropertyValue(*(Source + 48), &v128 + 1))
        {
          return;
        }

        v123 = 0;
        v124 = 0;
        v125 = 0;
        IIOArray::IIOArray(&v123);
        IIONumber::IIONumber(v120, SHIDWORD(v128));
        IIOArray::addObject(&v123, v122);
        IIONumber::~IIONumber(v120);
        IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), v124, v15, **a2);
        if (GetMinorVersionFromPropertyValue(v13, &v128 + 1))
        {
          IIONumber::IIONumber(v120, SHIDWORD(v128));
          IIOArray::addObject(&v123, v120);
          IIONumber::~IIONumber(v120);
          if (GetRevisionVersionFromPropertyValue(v13, &v128 + 1))
          {
            if (HIDWORD(v128))
            {
              IIONumber::IIONumber(v120, SHIDWORD(v128));
              IIOArray::addObject(&v123, v122);
              IIONumber::~IIONumber(v120);
            }
          }
        }

        goto LABEL_152;
      case 7:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        IIOArray::IIOArray(&v123);
        v40 = CFGetTypeID(v13);
        if (v40 == CFArrayGetTypeID())
        {
          *v120 = 0;
          v121 = 0;
          v122 = 0;
          IIOArray::IIOArray(v120, v13);
          v41 = IIOArray::getCount(v120);
          if (v41)
          {
            v42 = 0;
            v43 = v41;
            do
            {
              v44 = IIOArray::getObjectAtIndex(v120, v42);
              v45 = CGImageMetadataGetDefaultString(v44);
              IIOArray::addObject(&v123, v45);
              ++v42;
            }

            while (v43 != v42);
          }

LABEL_135:
          IIOArray::~IIOArray(v120);
          goto LABEL_150;
        }

        v88 = CFGetTypeID(v13);
        if (v88 == CFStringGetTypeID())
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v13, @"; ");
          if (!ArrayBySeparatingStrings)
          {
            goto LABEL_150;
          }

          *v120 = 0;
          v121 = 0;
          v122 = 0;
          IIOArray::IIOArray(v120, ArrayBySeparatingStrings);
          v90 = IIOArray::getCount(v120);
          if (v90)
          {
            v91 = 0;
            v92 = v90;
            do
            {
              v93 = IIOArray::getObjectAtIndex(v120, v91);
              IIOArray::addObject(&v123, v93);
              ++v91;
            }

            while (v92 != v91);
          }

          CFRelease(ArrayBySeparatingStrings);
          goto LABEL_135;
        }

        CStringPtr = CFStringGetCStringPtr(**(a2 + 24), 0);
        v101 = CFStringGetCStringPtr(**(a2 + 32), 0);
        LogMetadata("CGImagePropertiesCreateFromMetadata_block_invoke", 6321, " Unexpected CFType found for schema = %s, property = %s\n", CStringPtr, v101);
LABEL_150:
        if (IIOArray::getCount(&v123))
        {
          IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), v124, v15, **a2);
        }

LABEL_152:
        IIOArray::~IIOArray(&v123);
        return;
      case 8:
        EXIFDataTimeStringWithXMPDateTimeString = CreateIPTCDateStringWithXMPDateTimeString(*(Source + 48), v6, v7, v8, v9, v10, v11, v12);
        if (EXIFDataTimeStringWithXMPDateTimeString)
        {
          goto LABEL_112;
        }

        return;
      case 9:
        EXIFDataTimeStringWithXMPDateTimeString = CreateIPTCTimeStringWithXMPDateTimeString(*(Source + 48));
        if (!EXIFDataTimeStringWithXMPDateTimeString)
        {
          return;
        }

        goto LABEL_112;
      case 0xA:
        v71 = CFGetTypeID(*(Source + 48));
        if (v71 != CFStringGetTypeID())
        {
          return;
        }

        v72 = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v13, @" ");
        if (!v72)
        {
          return;
        }

        v73 = v72;
        v123 = 0;
        v124 = 0;
        v125 = 0;
        IIOArray::IIOArray(&v123, v72);
        LODWORD(v74) = IIOArray::getCount(&v123);
        if (v74)
        {
          *v120 = 0;
          v121 = 0;
          v122 = 0;
          IIOArray::IIOArray(v120);
          v75 = 0;
          if (v74 >= 4)
          {
            v74 = 4;
          }

          else
          {
            v74 = v74;
          }

          do
          {
            v76 = IIOArray::getObjectAtIndex(&v123, v75);
            if (GetDoubleFromPropertyValue(v76, &v126))
            {
              IIONumber::IIONumber(v118, v126);
              IIOArray::addObject(v120, v119);
              IIONumber::~IIONumber(v118);
            }

            ++v75;
          }

          while (v74 != v75);
          IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), v121, v15, **a2);
          IIOArray::~IIOArray(v120);
        }

        CFRelease(v73);
        goto LABEL_152;
      case 0xB:
        v24 = CFGetTypeID(*(Source + 48));
        if (v24 == CFDictionaryGetTypeID())
        {
          v123 = 0;
          v124 = 0;
          v125 = 0;
          IIODictionary::IIODictionary(&v123);
          *v120 = 0;
          v121 = 0;
          v122 = 0;
          IIODictionary::IIODictionary(v120, v13);
          if ((atomic_load_explicit(&_MergedGlobals_4, memory_order_acquire) & 1) == 0)
          {
            __CGImagePropertiesCreateFromMetadata_block_invoke_cold_1();
          }

          v25 = qword_1ED56A108;
          if (qword_1ED56A108)
          {
            v26 = &qword_1ED56A118;
            do
            {
              ObjectForKey = IIODictionary::getObjectForKey(v120, v25);
              v28 = ObjectForKey;
              if (ObjectForKey && CGImageMetadataGetDefaultString(ObjectForKey))
              {
                v29 = CGImageMetadataGetDefaultString(v28);
                IIODictionary::setObjectForKey(&v123, v29, *(v26 - 1));
              }

              v30 = *v26;
              v26 += 2;
              v25 = v30;
            }

            while (v30);
          }

          IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), v124, v15, **a2);
          IIODictionary::~IIODictionary(v120);
          IIODictionary::~IIODictionary(&v123);
        }

        return;
      case 0xC:
        EXIFDataTimeStringWithXMPDateTimeString = CreateRegionFromPropertyValue(*(Source + 48));
        if (!EXIFDataTimeStringWithXMPDateTimeString)
        {
          return;
        }

        goto LABEL_112;
      case 0xD:
        v60 = CFGetTypeID(*(Source + 48));
        if (v60 == CFArrayGetTypeID())
        {
          v61 = *MEMORY[0x1E695E480];
          v62 = CFArrayGetCount(v13);
          Mutable = CFArrayCreateMutable(v61, v62, MEMORY[0x1E695E9C0]);
          if (Mutable)
          {
            v64 = Mutable;
            if (CFArrayGetCount(v13) >= 1)
            {
              v65 = 0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v13, v65);
                v67 = CGImageMetadataGetDefaultString(ValueAtIndex);
                if (v67)
                {
                  CFArrayAppendValue(v64, v67);
                }

                ++v65;
              }

              while (v65 < CFArrayGetCount(v13));
            }

            v68 = CFStringCreateByCombiningStrings(v61, v64, @"; ");
            if (v68)
            {
              v69 = v68;
              IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), v68, v15, **a2);
              CFRelease(v69);
            }

            v70 = v64;
LABEL_113:

            CFRelease(v70);
          }
        }

        else
        {
          CFStringGetCStringPtr(**a2, 0);
          CFStringGetCStringPtr(v15, 0);
          LogMetadata("CGImagePropertiesCreateFromMetadata_block_invoke", 6470, "{%s}:%s has type kLegacyTypeSemicolonString, expected a CFArray as its XMP value, but got %d\n");
        }

        return;
      case 0xE:
        IntFromXMPFlashStruct = CreateIntFromXMPFlashStruct(*(Source + 48));
        v23 = *(*(*(a1 + 32) + 8) + 24);
        IIONumber::IIONumber(&v123, IntFromXMPFlashStruct);
        IIODictionary::setObjectForKeyGroup(v23, &v123, v15, **a2);
        goto LABEL_71;
      case 0xF:
        EXIFDataTimeStringWithXMPDateTimeString = CreateGPSDateStringWithXMPDateTimeString(*(Source + 48), v6, v7, v8, v9, v10, v11, v12);
        if (!EXIFDataTimeStringWithXMPDateTimeString)
        {
          return;
        }

        goto LABEL_112;
      case 0x10:
        EXIFDataTimeStringWithXMPDateTimeString = CreateGPSTimeStringWithXMPDateTimeString(*(Source + 48), v6, v7, v8, v9, v10, v11, v12);
        if (!EXIFDataTimeStringWithXMPDateTimeString)
        {
          EXIFDataTimeStringWithXMPDateTimeString = CGImageMetadataCopyStringValueWithPath(*(a1 + 40), 0, @"exif:GPSTime");
          if (!EXIFDataTimeStringWithXMPDateTimeString)
          {
            return;
          }
        }

        goto LABEL_112;
      case 0x11:
        *v120 = 0;
        if (!GetLegacyGPSFromXMPGPSCoordinate(v13, &v126, v120))
        {
          return;
        }

        v47 = *(*(*(a1 + 32) + 8) + 24);
        IIONumber::IIONumber(&v123, v126);
        IIODictionary::setObjectForKeyGroup(v47, &v123, v15, **a2);
        IIONumber::~IIONumber(&v123);
        v120[1] = 0;
        v48 = **(a2 + 8);
        if (v48 == @"Latitude")
        {
          if (!v120[0])
          {
            v102 = CGImageMetadataCopyTagWithPath(*(a1 + 40), 0, @"exif:GPSLatitudeRef");
            if (v102)
            {
              v103 = v102;
              v104 = CGImageMetadataTagCopyValue(v102);
              if (v104)
              {
                v105 = v104;
                TypeID = CFStringGetTypeID();
                if (TypeID == CFGetTypeID(v105))
                {
                  v107 = *(*(*(a1 + 32) + 8) + 24);
                  v108 = &kCGImagePropertyGPSLatitudeRef;
LABEL_164:
                  IIODictionary::setObjectForKeyGroup(v107, v105, *v108, @"{GPS}");
                  CFRelease(v105);
                  CFRelease(v103);
                  return;
                }

                CFRelease(v105);
              }

              CFRelease(v103);
            }

            if (v126 < 0.0)
            {
              v114 = 83;
            }

            else
            {
              v114 = 78;
            }

            v120[0] = v114;
          }

          v115 = *(*(*(a1 + 32) + 8) + 24);
          IIOString::IIOString(&v123, v120);
          IIODictionary::setObjectForKeyGroup(v115, v125, @"LatitudeRef", @"{GPS}");
        }

        else
        {
          if (v48 != @"Longitude")
          {
            if (v48 == @"DestLatitude")
            {
              if (!v120[0])
              {
                if (v126 < 0.0)
                {
                  v112 = 83;
                }

                else
                {
                  v112 = 78;
                }

                v120[0] = v112;
              }

              v113 = *(*(*(a1 + 32) + 8) + 24);
              IIOString::IIOString(&v123, v120);
              IIODictionary::setObjectForKeyGroup(v113, v125, @"DestLatitudeRef", @"{GPS}");
            }

            else
            {
              if (v48 != @"DestLongitude")
              {
                return;
              }

              if (!v120[0])
              {
                if (v126 < 0.0)
                {
                  v49 = 87;
                }

                else
                {
                  v49 = 69;
                }

                v120[0] = v49;
              }

              v50 = *(*(*(a1 + 32) + 8) + 24);
              IIOString::IIOString(&v123, v120);
              IIODictionary::setObjectForKeyGroup(v50, v125, @"DestLongitudeRef", @"{GPS}");
            }

            goto LABEL_185;
          }

          if (!v120[0])
          {
            v109 = CGImageMetadataCopyTagWithPath(*(a1 + 40), 0, @"exif:GPSLongitudeRef");
            if (v109)
            {
              v103 = v109;
              v110 = CGImageMetadataTagCopyValue(v109);
              if (v110)
              {
                v105 = v110;
                v111 = CFStringGetTypeID();
                if (v111 == CFGetTypeID(v105))
                {
                  v107 = *(*(*(a1 + 32) + 8) + 24);
                  v108 = &kCGImagePropertyGPSLongitudeRef;
                  goto LABEL_164;
                }

                CFRelease(v105);
              }

              CFRelease(v103);
            }

            if (v126 < 0.0)
            {
              v116 = 87;
            }

            else
            {
              v116 = 69;
            }

            v120[0] = v116;
          }

          v117 = *(*(*(a1 + 32) + 8) + 24);
          IIOString::IIOString(&v123, v120);
          IIODictionary::setObjectForKeyGroup(v117, v125, @"LongitudeRef", @"{GPS}");
        }

LABEL_185:
        IIOString::~IIOString(&v123);
        return;
      case 0x12:
        EXIFDataTimeStringWithXMPDateTimeString = CreateGPSVersionArrayFromString(*(Source + 48));
        if (!EXIFDataTimeStringWithXMPDateTimeString)
        {
          return;
        }

LABEL_112:
        v77 = EXIFDataTimeStringWithXMPDateTimeString;
        IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), EXIFDataTimeStringWithXMPDateTimeString, v15, **a2);
        v70 = v77;
        goto LABEL_113;
      case 0x13:
        IIODictionary::removeObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), @"ISOSpeedRatings", @"{Exif}");
        v123 = 0;
        v124 = 0;
        v125 = 0;
        IIOArray::IIOArray(&v123);
        v78 = CFGetTypeID(v13);
        if (v78 == CFArrayGetTypeID())
        {
          *v120 = 0;
          v121 = 0;
          v122 = 0;
          IIOArray::IIOArray(v120, v13);
          v79 = IIOArray::getCount(v120);
          if (v79)
          {
            v80 = 0;
            v81 = v79;
            do
            {
              v82 = IIOArray::getObjectAtIndex(v120, v80);
              v83 = CGImageMetadataGetDefaultString(v82);
              if (v83)
              {
                HIDWORD(v128) = CFStringGetIntValue(v83);
                IIONumber::IIONumber(v118, SHIDWORD(v128));
                IIOArray::addObject(&v123, v119);
                IIONumber::~IIONumber(v118);
              }

              ++v80;
            }

            while (v81 != v80);
          }

LABEL_36:
          IIOArray::~IIOArray(v120);
        }

        else
        {
          v99 = CFGetTypeID(v13);
          if (v99 == CFStringGetTypeID())
          {
            HIDWORD(v128) = CFStringGetIntValue(v13);
            IIONumber::IIONumber(v120, SHIDWORD(v128));
            IIOArray::addObject(&v123, v122);
            IIONumber::~IIONumber(v120);
          }
        }

LABEL_128:
        IIODictionary::setObjectForKeyGroup(*(*(*(a1 + 32) + 8) + 24), v124, v15, **a2);
        goto LABEL_152;
      case 0x14:
        if (GetLongLongFromPropertyValue(*(Source + 48), &v127))
        {
          v51 = *(*(*(a1 + 32) + 8) + 24);
          IIONumber::IIONumber(&v123, v127);
          IIODictionary::setObjectForKeyGroup(v51, &v123, v15, **a2);
LABEL_71:
          IIONumber::~IIONumber(&v123);
        }

        return;
      case 0x15:
        v59 = CFGetTypeID(*(Source + 48));
        if (v59 == CFArrayGetTypeID())
        {
          operator new();
        }

        return;
      default:
        if (v14 != 98)
        {
          v18 = *(a2 + 18);
          v19 = CFStringGetCStringPtr(**a2, 0);
          v20 = CFStringGetCStringPtr(**(a2 + 8), 0);
          _cg_jpeg_mem_term("CGImagePropertiesCreateFromMetadata_block_invoke", 6686, "Unhandled conversion from tag type (%d) to property type (%d) for {%s}:%s\n", v18, v14, v19, v20);
        }

        return;
    }
  }
}

void sub_185EA3518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

BOOL CGImageMetadataSetTagWithPath(CGMutableImageMetadataRef metadata, CGImageMetadataTagRef parent, CFStringRef path, CGImageMetadataTagRef tag)
{
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataSetTagWithPath", 0, 0, -1, 0);
  }

  Source = CGImageSourceGetSource(tag);
  if (!metadata)
  {
    goto LABEL_14;
  }

  v9 = Source;
  v10 = CFGetTypeID(metadata);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  if (v10 != _MergedGlobals_1)
  {
    goto LABEL_14;
  }

  LOBYTE(v11) = 0;
  if (!path)
  {
    return v11;
  }

  if ((*(metadata + 16) & 1) == 0)
  {
    return v11;
  }

  v12 = CFGetTypeID(path);
  TypeID = CFStringGetTypeID();
  LOBYTE(v11) = 0;
  if (!tag || v12 != TypeID)
  {
    return v11;
  }

  v14 = CFGetTypeID(tag);
  if (v14 != CGImageMetadataTagGetTypeID())
  {
LABEL_14:
    LOBYTE(v11) = 0;
    return v11;
  }

  v15 = (metadata + 208);
  pthread_mutex_lock((metadata + 208));
  if (*(metadata + 200) == 1)
  {
    LogMetadata("CGImageMetadataSetTagWithPath", 944, "Cannot mutate metadata while enumerating");
    LOBYTE(v11) = 0;
  }

  else
  {
    pthread_mutex_unlock((metadata + 208));
    v15 = (metadata + 72);
    pthread_mutex_lock((metadata + 72));
    v11 = CGImageMetadataSetValueWithPath(metadata, parent, path, *(v9 + 48));
    if (v11)
    {
      TagWithPath = CGImageMetadataGetTagWithPath(metadata, parent, path);
      if (TagWithPath)
      {
        v18 = TagWithPath;
        v19 = CGImageSourceGetSource(TagWithPath);
        CGImageMetadataTagSetNamespace(v18, *(v9 + 16));
        CGImageMetadataTagSetPrefix(v18, *(v9 + 24));
        v20 = *(v9 + 56);
        if (v20)
        {
          *(v19 + 56) = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v20);
        }

        *(v19 + 40) = *(v9 + 40);
      }
    }
  }

  pthread_mutex_unlock(v15);
  return v11;
}

void *CGImageMetadataTagKeyCreateWithTag(const void *a1)
{
  Source = CGImageSourceGetSource(a1);
  if (!a1)
  {
    return 0;
  }

  v3 = Source;
  v4 = CFGetTypeID(a1);
  if (v4 != CGImageMetadataTagGetTypeID())
  {
    return 0;
  }

  v6 = *(v3 + 16);
  v7 = *(v3 + 32);

  return CGImageMetadataTagKeyCreate(v6, v7);
}

CFStringRef CGImageMetadataCreateSimpleStringFromCFValue(CFStringRef result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = CFGetTypeID(result);
  if (v4 == CFStringGetTypeID())
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = v3;
    goto LABEL_4;
  }

  v7 = CFGetTypeID(v3);
  if (v7 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v3);
    v5 = *MEMORY[0x1E695E480];
    if (Value == 1)
    {
      v6 = @"True";
    }

    else
    {
      v6 = @"False";
    }

LABEL_4:

    return CFStringCreateCopy(v5, v6);
  }

  v9 = CFGetTypeID(v3);
  if (v9 == CFNumberGetTypeID())
  {
    switch(CFNumberGetType(v3))
    {
      case kCFNumberSInt8Type:
        LOBYTE(v73) = 0;
        v10 = OUTLINED_FUNCTION_5_2();
        if (!CFNumberGetValue(v10, kCFNumberSInt8Type, v11))
        {
          return 0;
        }

        v12 = *MEMORY[0x1E695E480];
        *&v13 = SLOBYTE(v73);
        goto LABEL_54;
      case kCFNumberSInt16Type:
        LOWORD(v73) = 0;
        v53 = OUTLINED_FUNCTION_5_2();
        if (!CFNumberGetValue(v53, kCFNumberSInt16Type, v54))
        {
          return 0;
        }

        v12 = *MEMORY[0x1E695E480];
        *&v13 = SLOWORD(v73);
        goto LABEL_54;
      case kCFNumberSInt32Type:
        LODWORD(v73) = 0;
        v44 = OUTLINED_FUNCTION_5_2();
        if (!CFNumberGetValue(v44, kCFNumberSInt32Type, v45))
        {
          return 0;
        }

        v12 = *MEMORY[0x1E695E480];
        *&v13 = SLODWORD(v73);
        goto LABEL_54;
      case kCFNumberSInt64Type:
        v46 = OUTLINED_FUNCTION_2_12();
        v48 = kCFNumberSInt64Type;
        goto LABEL_59;
      case kCFNumberFloat32Type:
        LODWORD(v73) = 0;
        v37 = OUTLINED_FUNCTION_5_2();
        if (!CFNumberGetValue(v37, kCFNumberFloat32Type, v38))
        {
          return 0;
        }

        if (a2 == 2)
        {
          goto LABEL_65;
        }

        if (a2 == 1)
        {
          goto LABEL_31;
        }

        v66 = OUTLINED_FUNCTION_20_0(v28, v29, v30, v31, v32, v33, v34, v35, v69, v71, 0.0, *&v73);
        goto LABEL_77;
      case kCFNumberFloat64Type:
        v55 = OUTLINED_FUNCTION_2_12();
        if (!CFNumberGetValue(v55, kCFNumberFloat64Type, v56))
        {
          return 0;
        }

        if (a2 == 2)
        {
          goto LABEL_64;
        }

        if (a2 == 1)
        {
          return CFStringCreateWithFormat(0, 0, @"%@", v3, *&v71, *v72);
        }

        *v72 = 0;
        v66 = v73;
LABEL_77:
        SRationalApprox(v66, &v72[1], v72);
        LODWORD(v63) = v72[0];
        if (!v72[0])
        {
          return 0;
        }

        if (a2 != 4 || v72[0] != 1)
        {
          LODWORD(v64) = v72[1];
          v68 = v72[1] < 2 || v72[1] >= v72[0];
          if (!v68 && v72[1] + v72[0] / v72[1] * v72[1] - v72[0] == 1)
          {
            LODWORD(v63) = (v72[0] + 1) / v72[1];
            LODWORD(v64) = 1;
            v72[0] = v63;
            v72[1] = 1;
          }

          v12 = *MEMORY[0x1E695E480];
          v64 = v64;
          v63 = v63;
          return CFStringCreateWithFormat(v12, 0, @"%ld/%ld", v64, v63, *v72);
        }

        v12 = *MEMORY[0x1E695E480];
        *&v13 = v72[1];
LABEL_54:
        v70 = v13;
        return CFStringCreateWithFormat(v12, 0, @"%ld", *&v70, *&v71, *v72);
      case kCFNumberCharType:
        LOBYTE(v73) = 0;
        v57 = OUTLINED_FUNCTION_5_2();
        if (!CFNumberGetValue(v57, kCFNumberCharType, v58))
        {
          return 0;
        }

        v51 = *MEMORY[0x1E695E480];
        v52 = SLOBYTE(v73);
        return CFStringCreateWithFormat(v51, 0, @"%d", v52, *&v71, *v72);
      case kCFNumberShortType:
        LOWORD(v73) = 0;
        v49 = OUTLINED_FUNCTION_5_2();
        if (!CFNumberGetValue(v49, kCFNumberShortType, v50))
        {
          return 0;
        }

        v51 = *MEMORY[0x1E695E480];
        v52 = SLOWORD(v73);
        return CFStringCreateWithFormat(v51, 0, @"%d", v52, *&v71, *v72);
      case kCFNumberIntType:
        LODWORD(v73) = 0;
        v59 = OUTLINED_FUNCTION_5_2();
        if (!CFNumberGetValue(v59, kCFNumberIntType, v60))
        {
          return 0;
        }

        v51 = *MEMORY[0x1E695E480];
        v52 = LODWORD(v73);
        return CFStringCreateWithFormat(v51, 0, @"%d", v52, *&v71, *v72);
      case kCFNumberLongType:
        v23 = OUTLINED_FUNCTION_2_12();
        v25 = kCFNumberLongType;
        goto LABEL_52;
      case kCFNumberLongLongType:
        v46 = OUTLINED_FUNCTION_2_12();
        v48 = kCFNumberLongLongType;
LABEL_59:
        if (!CFNumberGetValue(v46, v48, v47))
        {
          return 0;
        }

        return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%lld", *&v73, *&v71, *v72);
      case kCFNumberFloatType:
        LODWORD(v73) = 0;
        v26 = OUTLINED_FUNCTION_5_2();
        if (!CFNumberGetValue(v26, kCFNumberFloatType, v27))
        {
          return 0;
        }

        if (a2 == 2)
        {
LABEL_65:
          v62 = OUTLINED_FUNCTION_20_0(v28, v29, v30, v31, v32, v33, v34, v35, v69, v71, *v72, *&v73);
          return CFStringCreateWithFormat(v61, 0, @"%g", *&v62, *&v71, *v72);
        }

        if (a2 != 1)
        {
          v36 = OUTLINED_FUNCTION_20_0(v28, v29, v30, v31, v32, v33, v34, v35, v69, v71, 0.0, *&v73);
          goto LABEL_68;
        }

LABEL_31:
        v40 = OUTLINED_FUNCTION_20_0(v28, v29, v30, v31, v32, v33, v34, v35, v69, v71, *v72, *&v73);
        return CFStringCreateWithFormat(v39, 0, @"%f", *&v40, *&v71, *v72);
      case kCFNumberDoubleType:
        v41 = OUTLINED_FUNCTION_2_12();
        v43 = kCFNumberDoubleType;
        goto LABEL_37;
      case kCFNumberCFIndexType:
        v23 = OUTLINED_FUNCTION_2_12();
        v25 = kCFNumberCFIndexType;
        goto LABEL_52;
      case kCFNumberNSIntegerType:
        v23 = OUTLINED_FUNCTION_2_12();
        v25 = kCFNumberNSIntegerType;
LABEL_52:
        if (!CFNumberGetValue(v23, v25, v24))
        {
          return 0;
        }

        v12 = *MEMORY[0x1E695E480];
        v13 = v73;
        goto LABEL_54;
      case kCFNumberCGFloatType:
        v41 = OUTLINED_FUNCTION_2_12();
        v43 = kCFNumberCGFloatType;
LABEL_37:
        if (!CFNumberGetValue(v41, v43, v42))
        {
          return 0;
        }

        if (a2 == 2)
        {
LABEL_64:
          v61 = *MEMORY[0x1E695E480];
          v62 = v73;
          return CFStringCreateWithFormat(v61, 0, @"%g", *&v62, *&v71, *v72);
        }

        if (a2 == 1)
        {
          v39 = *MEMORY[0x1E695E480];
          v40 = v73;
          return CFStringCreateWithFormat(v39, 0, @"%f", *&v40, *&v71, *v72);
        }

        *v72 = 0;
        v36 = v73;
LABEL_68:
        SRationalApprox(v36, &v72[1], v72);
        v63 = v72[0];
        if (v72[0])
        {
          v12 = *MEMORY[0x1E695E480];
          v64 = v72[1];
          if (a2 != 4 || v72[0] != 1)
          {
            return CFStringCreateWithFormat(v12, 0, @"%ld/%ld", v64, v63, *v72);
          }

          *&v70 = v72[1];
          return CFStringCreateWithFormat(v12, 0, @"%ld", *&v70, *&v71, *v72);
        }

        break;
      default:
        return 0;
    }

    return 0;
  }

  v14 = CFGetTypeID(v3);
  if (v14 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(v3);
  v16 = *MEMORY[0x1E695E480];
  result = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
  if (result)
  {
    v17 = result;
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        SimpleStringFromCFValue = CGImageMetadataCreateSimpleStringFromCFValue(ValueAtIndex, a2);
        if (SimpleStringFromCFValue)
        {
          v21 = SimpleStringFromCFValue;
          CFArraySetValueAtIndex(v17, i, SimpleStringFromCFValue);
          CFRelease(v21);
        }
      }
    }

    v22 = CFStringCreateByCombiningStrings(v16, v17, @"; ");
    CFRelease(v17);
    return v22;
  }

  return result;
}

void CGImageMetadataAddTag(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = CGImageMetadataTagKeyCreateWithTag(a2);
      if (v4)
      {
        v5 = v4;
        CFDictionarySetValue(*(a1 + 24), v4, a2);

        CGImageMetadataTagKeyRelease(v5);
      }
    }
  }
}

void IIOMetadata_Tag::~IIOMetadata_Tag(IIOMetadata_Tag *this)
{
  IIOMetadata_Tag::~IIOMetadata_Tag(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DBFF0;
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    CFRelease(v6);
  }
}

uint64_t _CGImageMetadataTagFinalize(void *a1)
{
  atomic_fetch_add_explicit(&gMDTCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  result = a1[3];
  if (result)
  {
    result = (*(*result + 8))(result);
    a1[3] = 0;
  }

  return result;
}

void CGImageMetadataTagSetNamespace(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      IIOMetadata_Tag::setNamespace(v2, a2);
    }
  }
}

void IIOMetadata_Tag::setPrefix(IIOMetadata_Tag *this, const __CFString *a2)
{
  v3 = *(this + 3);
  *(this + 3) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  IIOMetadata_Tag::updatePrefixFlag(this);
  if (v3)
  {

    CFRelease(v3);
  }
}

void CGImageMetadataTagSetPrefix(uint64_t a1, const __CFString *a2)
{
  if (a1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      IIOMetadata_Tag::setPrefix(v2, a2);
    }
  }
}

void IIOMetadata_Tag::setNamespace(IIOMetadata_Tag *this, const __CFString *a2)
{
  v2 = *(this + 2);
  *(this + 2) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t CGImageMetadataTagGetValue(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 24);
    if (v1)
    {
      return *(v1 + 48);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *CGImageMetadataGetDefaultString(const void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == CGImageMetadataTagGetTypeID())
    {
      v1 = *(CGImageSourceGetSource(v1) + 48);
      if (!v1)
      {
        return 0;
      }
    }

    v3 = CFGetTypeID(v1);
    if (v3 == CFArrayGetTypeID() && CFArrayGetCount(v1) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v1, 0), (v1 = ValueAtIndex) != 0) && (v5 = CFGetTypeID(ValueAtIndex), v5 == CGImageMetadataTagGetTypeID()) && (v1 = *(CGImageSourceGetSource(v1) + 48)) == 0)
    {
      return 0;
    }

    else
    {
      v6 = CFGetTypeID(v1);
      if (v6 == CFStringGetTypeID())
      {
        return v1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void *CGImageMetadataGetStringValueWithPath(void *a1, void *a2, const __CFString *a3)
{
  result = CGImageMetadataGetTagWithPath(a1, a2, a3);
  if (result)
  {

    return CGImageMetadataGetDefaultString(result);
  }

  return result;
}

uint64_t __CGImageMetadataGetTagMatchingImageProperty_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = CFStringCompare(*(a1 + 40), **a2, 0);
  if (!result)
  {
    result = CFStringCompare(*(a1 + 48), **(a2 + 8), 0);
    if (!result)
    {
      result = CGImageMetadataGetTopLevelTag(*(a1 + 56), **(a2 + 24), **(a2 + 32));
      *(*(*(a1 + 32) + 8) + 24) = result;
      *a3 = 1;
    }
  }

  return result;
}

__CFArray *ReadMetadataLong(uint64_t a1, IIOImageReadSession *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, int a7, uint64_t a8, char a9)
{
  v16 = *(a8 + 4);
  if (v16 < 2)
  {
    v17 = 0;
  }

  else
  {
    v17 = malloc_type_calloc(v16, 4uLL, 0x100004052888210uLL);
    LODWORD(v16) = *(a8 + 4);
  }

  v18 = (a8 + 8);
  if (v16 <= 1)
  {
    v19 = (a8 + 8);
  }

  else
  {
    v19 = v17;
  }

  BytesAtOffset = (4 * v16);
  if (BytesAtOffset >= 5)
  {
    v21 = *v18;
    if (a9)
    {
      v21 = bswap32(v21);
      *v18 = v21;
    }

    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v17, v21, BytesAtOffset);
  }

  if (a3 || a4 || a5)
  {
    v24 = *(a8 + 4);
    if (BytesAtOffset == 4 * v24)
    {
      prefix = a4;
      v25 = MEMORY[0x1E695E480];
      if (v24 > 1 || a7)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v23 = Mutable;
        if (!*(a8 + 4))
        {
          if (!Mutable)
          {
            goto LABEL_42;
          }

          v38 = a1;
          v39 = a6;
          v35 = kCGImageMetadataTypeArrayOrdered;
          v34 = prefix;
          goto LABEL_38;
        }

        v41 = a5;
        v38 = a1;
        v39 = a6;
        v26 = 3;
      }

      else
      {
        if (!v24)
        {
          goto LABEL_41;
        }

        v41 = a5;
        v38 = a1;
        v39 = a6;
        v23 = 0;
        v26 = 1;
      }

      type = v26;
      v28 = 0;
      v29 = *v25;
      do
      {
        LODWORD(v30) = v19[v28];
        v31 = bswap32(v30);
        if (a9)
        {
          v30 = v31;
        }

        else
        {
          v30 = v30;
        }

        v32 = CFStringCreateWithFormat(v29, 0, @"%d", v30);
        if ((a7 & 1) != 0 || (v33 = *(a8 + 4), v33 >= 2))
        {
          CFArrayAppendValue(v23, v32);
          CFRelease(v32);
          v32 = 0;
          v33 = *(a8 + 4);
        }

        ++v28;
      }

      while (v28 < v33);
      if (v23)
      {
        a5 = v41;
        v34 = prefix;
        v35 = type;
LABEL_38:
        v36 = CGImageMetadataTagCreate(a3, v34, a5, v35, v23);
        v32 = v23;
LABEL_39:
        CFRelease(v32);
        if (v36)
        {
          CGImageMetadataAddTagWithKey(v38, v39, v36);
          CFRelease(v36);
        }

        goto LABEL_41;
      }

      if (v32)
      {
        v36 = CGImageMetadataTagCreate(a3, prefix, v41, type, v32);
        goto LABEL_39;
      }
    }

LABEL_41:
    v23 = 0;
    goto LABEL_42;
  }

  v22 = bswap32(*v19);
  if (a9)
  {
    v23 = v22;
  }

  else
  {
    v23 = *v19;
  }

LABEL_42:
  if (v17)
  {
    free(v17);
  }

  return v23;
}

uint64_t CGImageMetadataGetTagMatchingImageProperty(const void *a1, const void *a2, const void *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (qword_1ED569DD0 == -1)
    {
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    else
    {
      CGImageMetadataCopyTagWithPath_cold_1();
      if (!a2)
      {
        goto LABEL_9;
      }
    }

    if (v6 == _MergedGlobals_1)
    {
      v7 = CFGetTypeID(a2);
      TypeID = CFStringGetTypeID();
      if (a3)
      {
        if (v7 == TypeID)
        {
          v9 = CFGetTypeID(a3);
          if (v9 == CFStringGetTypeID())
          {
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 0x40000000;
            v12[2] = __CGImageMetadataGetTagMatchingImageProperty_block_invoke;
            v12[3] = &unk_1E6F09958;
            v12[4] = &v13;
            v12[5] = a2;
            v12[6] = a3;
            v12[7] = a1;
            XMPMappingIterateUsingBlock(v12);
          }
        }
      }
    }
  }

LABEL_9:
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_185EA46D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CreateMetadataFromDatabuffer(const char *a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 <= 0xD)
    {
      _cg_jpeg_mem_term("CreateMetadataFromDatabuffer", 2579, "*** ERROR bad metadata length (%d bytes)\n", a2);
      return 0;
    }

    v3 = strncmp(a1, "Exif", 4uLL);
    v4 = 6;
    if (v3)
    {
      v4 = 0;
    }

    v5 = &a1[v4];
    v6 = a1[v4];
    if (v6 == 73)
    {
      if (v5[1] == 73 && v5[2] == 42 && !v5[3])
      {
LABEL_15:
        CGImageReadCreateWithDataForMetadata();
      }
    }

    else if (v6 == 77 && v5[1] == 77 && !v5[2] && v5[3] == 42)
    {
      goto LABEL_15;
    }
  }

  return 0;
}

void CGImageMetadataAddTagWithKey(uint64_t a1, const void *a2, const void *a3)
{
  if (a1 && a3)
  {
    if (a2)
    {
      CFDictionarySetValue(*(a1 + 24), a2, a3);
    }

    else
    {
      CGImageMetadataAddTag(a1, a3);
    }
  }
}

void metadataSetUnspecifiedSource(uint64_t a1, int a2)
{
  Count = CFDictionaryGetCount(*(a1 + 24));
  v5 = malloc_type_calloc(8uLL, Count, 0x80040B8603338uLL);
  v6 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
  CFDictionaryGetKeysAndValues(*(a1 + 24), v5, v6);
  if (Count >= 1)
  {
    v7 = v6;
    do
    {
      Source = CGImageSourceGetSource(*v7);
      if (*(Source + 68) <= 1u)
      {
        *(Source + 68) = a2;
      }

      ++v7;
      --Count;
    }

    while (Count);
  }

  if (v5)
  {
    free(v5);
  }

  if (v6)
  {

    free(v6);
  }
}

uint64_t IIOImageRead::IIOImageRead(uint64_t a1, const UInt8 *a2, CFIndex a3, int a4, char a5)
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
  IIOImageRead::setup(a1, a4);
  *(a1 + 64) = a5;
  *(a1 + 65) = a5 ^ 1;
  v9 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  *(a1 + 32) = v9;
  if ((gIIODebugFlags & 0x80000000000) != 0)
  {
    ImageIOLog("D   %s:%d CFDataCreateWithBytesNoCopy %p\n", "IIOImageRead", 541, v9);
  }

  *(a1 + 80) = a3;
  return a1;
}

void sub_185EA4AA8(_Unwind_Exception *a1)
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

void ReadMetadataRtnl(uint64_t a1, IIOImageReadSession *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, int a7, uint64_t a8, char a9)
{
  v16 = malloc_type_calloc(*(a8 + 4), 8uLL, 0x100004052888210uLL);
  v17 = *(a8 + 8);
  if (a9)
  {
    v17 = bswap32(v17);
    *(a8 + 8) = v17;
  }

  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v16, v17, (8 * *(a8 + 4)));
  v19 = *(a8 + 4);
  if (BytesAtOffset == 8 * v19)
  {
    if ((v19 & 0x7FFFFFFF) != 0 && a9)
    {
      v20 = 0;
      do
      {
        *&v16[4 * v20] = bswap32(*&v16[4 * v20]);
        ++v20;
        v19 = *(a8 + 4);
      }

      while (v20 < 2 * v19);
    }

    v21 = v19 <= 1 && a7 == 0;
    v22 = MEMORY[0x1E695E480];
    if (v21)
    {
      if (!v19)
      {
        goto LABEL_30;
      }

      prefix = a4;
      name = a5;
      v37 = a1;
      v25 = a6;
      v24 = 0;
      v26 = 1;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v24 = Mutable;
      if (!*(a8 + 4))
      {
        if (!Mutable)
        {
          goto LABEL_30;
        }

        v32 = kCGImageMetadataTypeArrayOrdered;
        goto LABEL_27;
      }

      prefix = a4;
      name = a5;
      v37 = a1;
      v25 = a6;
      v26 = 3;
    }

    type = v26;
    v27 = 0;
    v28 = *v22;
    v29 = (v16 + 4);
    do
    {
      v30 = CFStringCreateWithFormat(v28, 0, @"%u/%u", *(v29 - 1), *v29);
      if ((a7 & 1) != 0 || (v31 = *(a8 + 4), v31 >= 2))
      {
        CFArrayAppendValue(v24, v30);
        CFRelease(v30);
        v30 = 0;
        v31 = *(a8 + 4);
      }

      v29 += 2;
      ++v27;
    }

    while (v27 < v31);
    a6 = v25;
    a1 = v37;
    a4 = prefix;
    if (!v24)
    {
      if (!v30)
      {
        goto LABEL_30;
      }

      v33 = CGImageMetadataTagCreate(a3, prefix, name, type, v30);
      goto LABEL_28;
    }

    a5 = name;
    v32 = type;
LABEL_27:
    v33 = CGImageMetadataTagCreate(a3, a4, a5, v32, v24);
    v30 = v24;
LABEL_28:
    CFRelease(v30);
    if (v33)
    {
      CGImageMetadataAddTagWithKey(a1, a6, v33);
      CFRelease(v33);
    }
  }

LABEL_30:

  free(v16);
}

void ReadMetadataShort(uint64_t a1, IIOImageReadSession *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5, const void *a6, int a7, uint64_t a8, uint64_t a9, char a10)
{
  v15 = *(a8 + 4);
  if (v15 < 3)
  {
    v16 = 0;
  }

  else
  {
    v16 = malloc_type_calloc(v15, 2uLL, 0x1000040BDFB0063uLL);
    LODWORD(v15) = *(a8 + 4);
  }

  v17 = (a8 + 8);
  if (v15 <= 2)
  {
    v18 = (a8 + 8);
  }

  else
  {
    v18 = v16;
  }

  v19 = (2 * v15);
  if (v19 < 5)
  {
    goto LABEL_11;
  }

  v20 = *v17;
  if (a10)
  {
    v20 = bswap32(v20);
    *v17 = v20;
  }

  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v16, a9 + v20, v19);
  LODWORD(v15) = *(a8 + 4);
  if (BytesAtOffset == 2 * v15)
  {
LABEL_11:
    v22 = v15 <= 1 && a7 == 0;
    v23 = MEMORY[0x1E695E480];
    if (v22)
    {
      if (!v15)
      {
        goto LABEL_35;
      }

      v36 = a1;
      v37 = a6;
      v25 = 0;
      v26 = 1;
    }

    else
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v25 = Mutable;
      if (!*(a8 + 4))
      {
        if (!Mutable)
        {
          goto LABEL_35;
        }

        v33 = kCGImageMetadataTypeArrayOrdered;
        goto LABEL_32;
      }

      v36 = a1;
      v37 = a6;
      v26 = 3;
    }

    type = v26;
    v27 = 0;
    v28 = *v23;
    do
    {
      v29 = *&v18[2 * v27];
      v30 = bswap32(v29) >> 16;
      if (a10)
      {
        LOWORD(v29) = v30;
      }

      v31 = CFStringCreateWithFormat(v28, 0, @"%d", v29);
      if ((a7 & 1) != 0 || (v32 = *(a8 + 4), v32 >= 2))
      {
        CFArrayAppendValue(v25, v31);
        CFRelease(v31);
        v31 = 0;
        v32 = *(a8 + 4);
      }

      ++v27;
    }

    while (v27 < v32);
    a1 = v36;
    a6 = v37;
    if (!v25)
    {
      if (!v31)
      {
        goto LABEL_35;
      }

      v34 = CGImageMetadataTagCreate(a3, a4, a5, type, v31);
      goto LABEL_33;
    }

    v33 = type;
LABEL_32:
    v34 = CGImageMetadataTagCreate(a3, a4, a5, v33, v25);
    v31 = v25;
LABEL_33:
    CFRelease(v31);
    if (v34)
    {
      CGImageMetadataAddTagWithKey(a1, a6, v34);
      CFRelease(v34);
    }
  }

LABEL_35:
  if (v16)
  {

    free(v16);
  }
}

uint64_t GetDoubleFromPropertyValue(const __CFString *cf, double *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v3 = cf;
  *a2 = 0.0;
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CGImageMetadataTagGetTypeID())
  {
    v3 = *(CGImageSourceGetSource(v3) + 48);
    if (!v3)
    {
      return 0;
    }
  }

  v5 = CFGetTypeID(v3);
  if (v5 != CFStringGetTypeID())
  {
    return 0;
  }

  memset(v10, 0, sizeof(v10));
  result = CFStringGetCString(v3, v10, 32, 0x8000100u);
  if (result)
  {
    v7 = atol(v10);
    v8 = strchr(v10, 47);
    if (v8)
    {
      *v8 = 0;
      v9 = atol(v8 + 1);
      if (v9)
      {
        if (v9 != 1)
        {
          v7 = v7 / v9;
        }
      }

      else
      {
        v7 = 0.0;
      }
    }

    *a2 = v7;
    return 1;
  }

  return result;
}

double IIODictionary::getDoubleForKey(IIODictionary *this, const __CFString *a2)
{
  v2 = *(this + 1);
  if (!v2)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(v2, a2);
  IIONumber::IIONumber(v6, Value);
  v4 = IIONumber::doubleNum(v6);
  IIONumber::~IIONumber(v6);
  return v4;
}

void sub_185EA5128(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

float _cg_png_get_pixel_aspect_ratio(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  if (a1 && a2 && (*(a2 + 8) & 0x80) != 0)
  {
    v3 = *(a2 + 248);
    if (v3)
    {
      return *(a2 + 252) / v3;
    }
  }

  return result;
}

void PNGReadPlugin::~PNGReadPlugin(PNGReadPlugin *this)
{
  *this = &unk_1EF4D5108;
  v2 = *(this + 64);
  if (v2)
  {
    free(v2);
    *(this + 64) = 0;
  }

  v3 = *(this + 66);
  if (v3)
  {
    CFRelease(v3);
    *(this + 66) = 0;
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  PNGReadPlugin::~PNGReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOImageRead::validateFileSize(IIOImageRead *this)
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 376));
  bzero(v9, 0x400uLL);
  bzero(&v8, 0x90uLL);
  v2 = *(this + 6);
  if (v2)
  {
    v3 = IIO_CFURLCopyResolvedFileSystemPath(v2);
    if (v3)
    {
      v4 = v3;
      if (_CFStringGetFileSystemRepresentation())
      {
        if (!stat(v9, &v8))
        {
          st_size = v8.st_size;
          if (st_size != CFDataGetLength(*(this + 4)))
          {
            CFDataGetLength(*(this + 4));
            kdebug_trace();
            Length = CFDataGetLength(*(this + 4));
            LogFault("validateFileSize", 1820, "*** ImageIO - mmapped file changed (old: %ld  new: %ld) [v]\n", Length, v8.st_size);
          }
        }
      }

      else
      {
        LogError("validateFileSize", 1813, "*** ERROR: cannot get URL path\n");
      }

      CFRelease(v4);
    }

    else
    {
      LogError("validateFileSize", 1810, "*** ERROR: cannot resolve URL\n");
    }
  }

  return pthread_mutex_unlock((this + 376));
}

uint64_t png_app_error(uint64_t a1, char *a2)
{
  if ((*(a1 + 82) & 0x40) == 0)
  {
    _cg_png_error(a1, a2);
  }

  return png_warning(a1, a2);
}

uint64_t png_warning(uint64_t a1, _BYTE *a2)
{
  if (a1)
  {
    if (*a2 == 35)
    {
      for (i = 1; i != 15; ++i)
      {
        if (a2[i] == 32)
        {
          break;
        }
      }
    }

    else
    {
      LODWORD(i) = 0;
    }

    v4 = *(a1 + 8);
    if (v4)
    {

      return v4();
    }
  }

  else
  {
    LODWORD(i) = 0;
  }

  v6 = MEMORY[0x1E69E9848];
  fprintf(*MEMORY[0x1E69E9848], "libpng warning: %s", &a2[i]);
  v7 = *v6;

  return fputc(10, v7);
}

const char *ImageIO_make_read_only(mach_vm_address_t a1, mach_vm_size_t a2)
{
  pthread_mutex_lock(&gImageIOMemoryHashLock);
  if (gMemoryHashCreateOnce == -1)
  {
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  _ImageIO_AccreditMemory_cold_1();
  if (!a2)
  {
LABEL_3:
    v5[0] = ~a1;
    v5[2] = v5;
    a2 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(gIIOMemoryHash + 8, v5)[5];
  }

LABEL_4:
  mach_vm_protect(*MEMORY[0x1E69E9A60], a1, a2, 1, 1);
  result = pthread_mutex_unlock(&gImageIOMemoryHashLock);
  if ((gIIODebugFlags & 0x80000000000) != 0)
  {
    return ImageIOLog("D   %s:%d mach_vm_protect: %p\n", "ImageIO_make_read_only", 544, a1);
  }

  return result;
}

void ___ZN13IIOReadPlugin20extractDecodeOptionsEPK14__CFDictionary_block_invoke(uint64_t a1, CFStringRef theString1, const __CFString *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  if (CFStringCompare(theString1, *MEMORY[0x1E695F288], 0) == kCFCompareEqualTo)
  {
    if (CFStringCompare(a3, *MEMORY[0x1E695F280], 0))
    {
      IIOString::IIOString(v17, a3);
      v11 = IIOString::utf8String(v17);
      LogWarning("extractDecodeOptions_block_invoke", 1409, "ImageIO - ignoring kCGImageBlockFormatRequest '%s'\n", v11);
      IIOString::~IIOString(v17);
      goto LABEL_19;
    }

    if (*(v7 + 336) == 1)
    {
      v12 = *(v7 + 320);
      if (*(v7 + 322) == 32 && v12 == 8)
      {
        *(v7 + 436) = 1;
        *(v7 + 438) = 1;
        return;
      }

      LogError("extractDecodeOptions_block_invoke", 1398, "❌ ERROR: kCGImageBlockFormatBGRx8 is called for %d-bpp (%d-bpc) image (rdar://143602439)\n", *(v7 + 322), v12);
    }

    else
    {
      _cg_jpeg_mem_term("extractDecodeOptions_block_invoke", 1403, "*** ERROR: kCGImageBlockFormatBGRx8 is called for non-RGB image [csm=%d]\n", *(v7 + 336));
    }

    *(v7 + 446) = 0;
    return;
  }

  if (CFStringCompare(theString1, *MEMORY[0x1E695F268], 0) == kCFCompareEqualTo)
  {
    IIONumber::IIONumber(v17, a3);
    *(v7 + 416) = IIONumber::uint64Num(v17);
    IIONumber::~IIONumber(v17);
    if (*(v7 + 416))
    {
      *(v7 + 441) = 1;
    }

    return;
  }

  if (CFStringCompare(theString1, *MEMORY[0x1E695F270], 0) == kCFCompareEqualTo)
  {
    IIONumber::IIONumber(v17, a3);
    *(v7 + 424) = IIONumber::uint64Num(v17);
    IIONumber::~IIONumber(v17);
    if (*(v7 + 424))
    {
      *(v7 + 442) = 1;
    }

    return;
  }

  if (CFStringCompare(theString1, *MEMORY[0x1E695F298], 0) == kCFCompareEqualTo)
  {
    v14 = CFGetTypeID(a3);
    if (v14 == CFBooleanGetTypeID())
    {
      *(v7 + 440) = *MEMORY[0x1E695E4D0] == a3;
      return;
    }

    IIONumber::IIONumber(v17, a3);
    *(v7 + 440) = IIONumber::uint64Num(v17) != 0;
LABEL_40:
    IIONumber::~IIONumber(v17);
    return;
  }

  if (CFStringCompare(theString1, *MEMORY[0x1E695F278], 0) == kCFCompareEqualTo)
  {
    LogWarning("extractDecodeOptions_block_invoke", 1436, "ignoring 'kCGImageBlockColorSpaceRequest'\n");
    goto LABEL_19;
  }

  if (CFStringCompare(theString1, *MEMORY[0x1E695F290], 0) == kCFCompareEqualTo)
  {
    v15 = CFGetTypeID(a3);
    if (v15 == CFBooleanGetTypeID())
    {
      *(v7 + 439) = *MEMORY[0x1E695E4D0] == a3;
      return;
    }

    IIONumber::IIONumber(v17, a3);
    *(v7 + 439) = IIONumber::uint64Num(v17) != 0;
    goto LABEL_40;
  }

  if (CFStringCompare(theString1, *MEMORY[0x1E695F2A0], 0) && CFStringCompare(theString1, @"kCGImageBlockIOSurfacePromoteToCIF10", 0) && CFStringCompare(theString1, @"kImageIOConvertWideGamutImage", 0) && CFStringCompare(theString1, @"kCGImageBlockPreHeating", 0) && CFStringCompare(theString1, @"kCGImageSourceRasterizationDPI", 0) && CFStringCompare(theString1, @"kCGImagePreferGPUForColorConversion", 0) && CFStringCompare(theString1, @"kCGImagePreferredColorConversionMode", 0) && CFStringCompare(theString1, @"kCGImageProviderPreferedBandHeight", 0) && CFStringCompare(theString1, @"kCGImageSurfaceFormatRequest", 0))
  {
    v8 = CFCopyDescription(a3);
    IIOString::IIOString(v17, theString1);
    v9 = IIOString::utf8String(v17);
    IIOString::IIOString(v16, v8);
    v10 = IIOString::utf8String(v16);
    _cg_jpeg_mem_term("extractDecodeOptions_block_invoke", 1476, "ignoring unknown request for '%s' : '%s'\n", v9, v10);
    IIOString::~IIOString(v16);
    IIOString::~IIOString(v17);
    CFRelease(v8);
LABEL_19:
    *(v7 + 446) = 0;
    *a4 = 1;
  }
}

void sub_185EA5A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void HEIFMainImage::extractISO5Metadata(HEIFMainImage *this, IIODictionary *a2)
{
  ObjectForKey = IIODictionary::getObjectForKey(a2, @"AmbientViewingEnvironment");
  if (ObjectForKey)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    IIODictionary::IIODictionary(&v9, ObjectForKey);
    *(this + 52) = IIODictionary::getUint32ForKey(&v9, @"AmbientIlluminance") / 10000.0;
    *(this + 53) = IIODictionary::getUint32ForKey(&v9, @"AmbientLightX") / 50000.0;
    *(this + 54) = IIODictionary::getUint32ForKey(&v9, @"AmbientLightY") / 50000.0;
    IIODictionary::~IIODictionary(&v9);
  }

  v5 = IIODictionary::getObjectForKey(a2, @"ContentLightLevelInfo");
  if (!v5)
  {
    v7 = IIODictionary::getObjectForKey(a2, @"MasteringDisplayColorVolume");
    v6 = 0.0;
    if (!v7)
    {
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  IIODictionary::IIODictionary(&v9, v5);
  *(this + 55) = IIODictionary::getUint32ForKey(&v9, @"MaxContentLightLevel");
  *(this + 56) = IIODictionary::getUint32ForKey(&v9, @"MaxPicAverageLightLevel");
  v6 = *(this + 55);
  IIODictionary::~IIODictionary(&v9);
  v7 = IIODictionary::getObjectForKey(a2, @"MasteringDisplayColorVolume");
  if (v7)
  {
LABEL_7:
    v9 = 0;
    v10 = 0;
    v11 = 0;
    IIODictionary::IIODictionary(&v9, v7);
    *(this + 59) = IIODictionary::getUint32ForKey(&v9, @"DisplayPrimariesXB") / 50000.0;
    *(this + 57) = IIODictionary::getUint32ForKey(&v9, @"DisplayPrimariesXG") / 50000.0;
    *(this + 61) = IIODictionary::getUint32ForKey(&v9, @"DisplayPrimariesXR") / 50000.0;
    *(this + 60) = IIODictionary::getUint32ForKey(&v9, @"DisplayPrimariesYB") / 50000.0;
    *(this + 58) = IIODictionary::getUint32ForKey(&v9, @"DisplayPrimariesYG") / 50000.0;
    *(this + 62) = IIODictionary::getUint32ForKey(&v9, @"DisplayPrimariesYR") / 50000.0;
    *(this + 65) = IIODictionary::getUint32ForKey(&v9, @"MaxDisplayMasteringLuminance") / 10000.0;
    *(this + 66) = IIODictionary::getUint32ForKey(&v9, @"MinDisplayMasteringLuminance") / 10000.0;
    *(this + 63) = IIODictionary::getUint32ForKey(&v9, @"WhitePointX") / 50000.0;
    *(this + 64) = IIODictionary::getUint32ForKey(&v9, @"WhitePointY") / 50000.0;
    v8 = *(this + 65);
    IIODictionary::~IIODictionary(&v9);
    if (v5)
    {
      if (v8 < v6)
      {
        v6 = v8;
      }
    }

    else
    {
      v6 = v8;
    }
  }

  if (v6 <= 0.0)
  {
    return;
  }

  if ((v6 / 203.0) >= 1.0)
  {
    v6 = v6 / 203.0;
  }

  else
  {
    v6 = 1.0;
  }

LABEL_16:
  *(this + 67) = v6;
}

void sub_185EA5D50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageMetadataTagSetSource(uint64_t result, int a2)
{
  if (result)
  {
    v2 = *(result + 24);
    if (v2)
    {
      *(v2 + 68) = a2;
    }
  }

  return result;
}

void HEIFReadPlugin::~HEIFReadPlugin(HEIFReadPlugin *this)
{
  *this = &unk_1EF4DBC70;
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  HEIFReadPlugin::~HEIFReadPlugin  ••• [%p]\n", this);
  }

  v2 = *(this + 68);
  if (v2)
  {
    CFRelease(v2);
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  HEIFReadPlugin::~HEIFReadPlugin(this);

  JUMPOUT(0x186602850);
}

float IIO_Reader_HEIF::updateImageHeadroom(uint64_t a1, CGImageRef image, IIOImageReadSession *a3, uint64_t a4)
{
  CGImageGetColorSpace(image);
  if (CGColorSpaceContainsFlexGTCInfo())
  {
    CGColorSpaceGetHeadroomInfo();
    goto LABEL_16;
  }

  if (!a3 || (v8 = IIOImageReadSession::globalInfoForType(a3, 1212500294)) == 0 || (HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v8, 0)) == 0 || (HEIFMainImage::getHeadroom(HEIFMainImageAtIndex), v10 <= 0.0))
  {
LABEL_16:

    return IIO_Reader::updateImageHeadroom(a1, image, a3, a4);
  }

  v11 = v10;
  if (image)
  {
    ColorSpace = CGImageGetColorSpace(image);
    Name = CGColorSpaceGetName(ColorSpace);
    if (!Name)
    {
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        v17 = CGColorSpaceCopyICCProfileDescription();
        Name = v17;
        if (v17)
        {
          CFAutorelease(v17);
        }
      }

      else
      {
        Name = 0;
      }
    }

    memset(v18, 0, sizeof(v18));
    IIOString::IIOString(v18, Name);
    v14 = IIOString::utf8String(v18);
    if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || CGColorSpaceUsesExtendedRange(ColorSpace))
    {
      v15 = CGImageSetHeadroom();
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        if (v15)
        {
          ImageIOLog("☀️  %s - updating image headroom: %g [colorspace: '%s']\n");
        }

        else
        {
          ImageIOLog("☀️  %s - failed to update image headroom: %g  [colorspace: '%s']\n");
        }
      }
    }

    else if ((gIIODebugFlags & 0x300000) != 0)
    {
      ImageIOLog("☀️  %s - not setting image headroom: %g for SDR [colorspace: '%s']\n", "updateImageHeadroom", v11, v14);
    }

    IIOString::~IIOString(v18);
  }

  return v11;
}

void sub_185EA6070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

BOOL HEIFReadPlugin::getEnableRestrictedDecodingFlag(IIODictionary **this, IIODictionary *a2)
{
  if (IIORestrictedDecodingEnabledFlag())
  {
    return 1;
  }

  if (!IIODictionary::getCount(a2))
  {
    return 0;
  }

  if (IIODictionary::containsKey(a2, @"kCGImageSourceEnableRestrictedDecoding"))
  {
    BoolForKey = IIODictionary::getBoolForKey(a2, @"kCGImageSourceEnableRestrictedDecoding");
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
    {
      ImageIOLog("••• EnableRestrictedDecoding: %s | %s:%d\n");
    }

    return BoolForKey;
  }

  if (!IIODictionary::containsKey(this[6], @"kCGImageSourceEnableRestrictedDecoding"))
  {
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
    {
      ImageIOLog("••• EnableRestrictedDecoding: not set  | %s:%d\n", "getEnableRestrictedDecodingFlag", 1452);
    }

    return 0;
  }

  BoolForKey = IIODictionary::getBoolForKey(this[6], @"kCGImageSourceEnableRestrictedDecoding");
  if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
  {
    ImageIOLog("••• EnableRestrictedDecoding: %s  | %s:%d\n");
  }

  return BoolForKey;
}

uint64_t GlobalHEIFInfo::getHEIFMainImageAtIndex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 8);
  v3 = (*(this + 16) - v2) >> 3;
  if (v3 <= a2)
  {
    return 0;
  }

  if (*(this + 72))
  {
    v4 = a2;
  }

  else
  {
    v4 = *(this + 64);
  }

  if (v3 > v4)
  {
    return *(v2 + 8 * v4);
  }

  __break(1u);
  return this;
}

uint64_t GlobalHEIFInfo::resolvedIndexForIndex(GlobalHEIFInfo *this, uint64_t a2)
{
  if ((*(this + 72) & 1) == 0)
  {
    return *(this + 16);
  }

  return a2;
}

uint64_t IIO_Reader_HEIF::compareOptions(IIO_Reader_HEIF *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v16, 0, sizeof(v16));
  IIODictionary::IIODictionary(v16, a2);
  memset(v15, 0, sizeof(v15));
  IIODictionary::IIODictionary(v15, a3);
  Uint32ForKey = IIODictionary::getUint32ForKey(v16, @"kCGImageSourceSubsampleFactor");
  v6 = IIODictionary::getUint32ForKey(v15, @"kCGImageSourceSubsampleFactor");
  if (Uint32ForKey <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = Uint32ForKey;
  }

  if (v6 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6;
  }

  if (v7 == v8 && (v9 = IIOSkipMetadata(v16), IIOSkipMetadata(v15) & 1 | ((v9 & 1) == 0)))
  {
    Value = CFDictionaryGetValue(a2, @"kCGImageSourceDecodeRequest");
    v11 = CFDictionaryGetValue(a3, @"kCGImageSourceDecodeRequest");
    if (Value && v11)
    {
      v12 = CFStringCompare(Value, v11, 0) == kCFCompareEqualTo;
    }

    else
    {
      v12 = (Value | v11) == 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  IIODictionary::~IIODictionary(v15);
  IIODictionary::~IIODictionary(v16);
  return v13;
}

void sub_185EA63AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(&a12);
  _Unwind_Resume(a1);
}

CGImage *CGImageCopySourceData(CGImage *a1)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCopySourceData", 0, 0, -1, 0);
  }

  kdebug_trace();
  if (!a1)
  {
    goto LABEL_11;
  }

  Property = CGImageGetProperty();
  *buffer = 0;
  if (Property)
  {
    v9.location = 0;
    v9.length = 8;
    CFDataGetBytes(Property, v9, buffer);
    if (!*buffer)
    {
      return 0;
    }

    Source = CGImageSourceGetSource(*buffer);
    if (Source)
    {
      v4 = IIOImageRead::copyData(Source);
      a1 = v4;
      if (v4)
      {
        CFDataGetLength(v4);
      }

      goto LABEL_11;
    }
  }

  else
  {
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    _cg_jpeg_mem_term("CGImageCopySourceData", 2824, "*** ERROR: cannot get CGImageReadRef from image (%ldx%ld)\n", Width, Height);
  }

  a1 = 0;
LABEL_11:
  kdebug_trace();
  return a1;
}

uint64_t CGImageMetadataTagSetValue(uint64_t a1, const __CFString *a2)
{
  if (a1 && (v2 = *(a1 + 24)) != 0)
  {
    return IIOMetadata_Tag::setValue(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t IIOMetadata_Tag::setValue(IIOMetadata_Tag *this, const __CFString *cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 != CFStringGetTypeID())
  {
    v5 = CFGetTypeID(cf);
    if (v5 != CFNumberGetTypeID())
    {
      v6 = CFGetTypeID(cf);
      if (v6 != CFBooleanGetTypeID())
      {
        v7 = CFGetTypeID(cf);
        if (v7 != CFDictionaryGetTypeID())
        {
          v8 = CFGetTypeID(cf);
          if (v8 != CFArrayGetTypeID())
          {
            return 0;
          }
        }
      }
    }
  }

  if (*(this + 64) != 1)
  {
    LogMetadata("setValue", 283, "Attempting to modify a tag from an immutable CGImageMetadataRef. Create a new CGImageMetadataTagRef or use CGImageMetadataCreateMutableCopy.\n");
    return 0;
  }

  v9 = *(this + 6);
  v10 = CFGetTypeID(cf);
  if (v10 == CFNumberGetTypeID() || (v11 = CFGetTypeID(cf), v11 == CFBooleanGetTypeID()))
  {
    SimpleStringFromCFValue = CGImageMetadataCreateSimpleStringFromCFValue(cf, 1);
    if (!SimpleStringFromCFValue)
    {
      _cg_jpeg_mem_term("setValue", 269, "*** ERROR: failed to create a CFString from 'value'\n");
      return 0;
    }
  }

  else
  {
    SimpleStringFromCFValue = CFRetain(cf);
  }

  *(this + 6) = SimpleStringFromCFValue;
  if (v9)
  {
    CFRelease(v9);
  }

  return 1;
}

void HEIFMainImage::getHeadroom(HEIFMainImage *this)
{
  v2 = *(this + 67) > 0.0;
  v3 = *(this + 4);
  v4 = *(this + 5) - v3;
  if ((v4 & 0x7FFFFFFF8) != 0)
  {
    v5 = 0;
    v6 = v4 >> 3;
    v7 = (v4 >> 3);
    while (1)
    {
      if (v6 <= v5)
      {
        v8 = 0;
      }

      else
      {
        v8 = *(v3 + 8 * v5);
      }

      v9 = *(v8 + 48);
      if (v9 == 0.0)
      {
        v9 = *(v8 + 44);
      }

      if (v9 > 0.0)
      {
        break;
      }

      if (v7 == ++v5)
      {
        goto LABEL_12;
      }
    }

    v2 = 1;
  }

LABEL_12:
  v10 = *(this + 7);
  v11 = *(this + 8) - v10;
  if ((v11 & 0x7FFFFFFF8) != 0)
  {
    v12 = 0;
    v13 = (v11 >> 3);
    while (fmaxf(*(*(v10 + 8 * v12) + 56), *(*(v10 + 8 * v12) + 60)) <= 0.0)
    {
      if (v13 == ++v12)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    if (!v2)
    {
      if (!*(this + 37) || (CGColorSpaceGetHeadroomInfo(), v14 <= 0.0))
      {
        v15 = *(this + 36);
        if (v15)
        {
          v16 = CGColorSpaceCreateWithName(v15);
          if (v16)
          {
            v17 = v16;
            CGColorSpaceGetHeadroomInfo();
            CGColorSpaceRelease(v17);
          }
        }
      }
    }
  }
}

ssize_t IIOImageRead::getFileBytesAtOffset(IIOImageRead *this, void *__buf, off_t a3, size_t __nbyte)
{
  if ((gIIODebugFlags & 0x800000) != 0)
  {
    v8 = *(this + 6);
    Length = CFDataGetLength(*(this + 4));
    ImageIOLog("    %s:%d:  file: %p  [%8ld]  offset: 0x%08lX   size: %8ld\n", "getFileBytesAtOffset", 1509, v8, Length, a3, __nbyte);
  }

  v10 = *(this + 33);
  if (!v10)
  {
    return 0;
  }

  v11 = *(this + 34);
  if (!v11)
  {
    return 0;
  }

  v12 = *(this + 35);
  v13 = a3 % v11;
  v14 = a3 % v11 + __nbyte;
  if (v12 == -1 || v12 > a3)
  {
    if (v14 < v11)
    {
      goto LABEL_12;
    }
  }

  else if (v14 < v11)
  {
    if (v12 + v11 > a3)
    {
      v15 = *(this + 35);
LABEL_20:
      if ((gIIODebugFlags & 0xC00000) != 0)
      {
        ImageIOLog("    %s:   file-buffer: [%10lld - %10lld] (%10lld bytes)   request: [%10ld - %10ld] (%10ld bytes)  memcpy from buffer\n", "getFileBytesAtOffset", v15, *(this + 34) + v15, *(this + 34), a3, __nbyte + a3, __nbyte);
      }

      memmove(__buf, (*(this + 33) + v13), __nbyte);
      return __nbyte;
    }

LABEL_12:
    v15 = a3 - v13;
    if (v11 >= *(this + 10) - (a3 - v13))
    {
      v16 = *(this + 10) - (a3 - v13);
    }

    else
    {
      v16 = *(this + 34);
    }

    if ((gIIODebugFlags & 0xC00000) != 0)
    {
      ImageIOLog("    %s:   file-buffer: [%10lld - %10lld] (%10lld bytes)   request: [%10ld - %10ld] (%10ld bytes)  fill buffer pread\n", "getFileBytesAtOffset", v12, v12 + v11, v11, a3, __nbyte + a3, __nbyte);
      v10 = *(this + 33);
    }

    if (pread(*(this + 6), v10, v16, a3 - v13) == -1)
    {
      v17 = *__error();
      v18 = __error();
      v19 = strerror(*v18);
      LogFault("getFileBytesAtOffset", 1560, "pread failed: err = %d (%s)\n", v17, v19);
    }

    *(this + 35) = v15;
    goto LABEL_20;
  }

  *(this + 35) = -1;
  if ((gIIODebugFlags & 0xC00000) != 0)
  {
    ImageIOLog("    %s:   file-buffer: [%10lld - %10lld] (%10lld bytes)   request: [%10ld - %10ld] (%10ld bytes)  size/boundary pread\n", "getFileBytesAtOffset", -1, v11 - 1, v11, a3, __nbyte + a3, __nbyte);
  }

  v21 = pread(*(this + 6), __buf, __nbyte, a3);
  return v21 & ~(v21 >> 63);
}

void IIOBytesNoCopyDeallocate(void *a1, void *a2)
{
  if (a1)
  {
    free(a1);
  }
}

void IIOImageRead::IIOImageRead(IIOImageRead *this, int a2, const char *a3, unint64_t a4, char a5, char a6)
{
  v14 = *MEMORY[0x1E69E9840];
  *this = &unk_1EF4DBAF8;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 31) = 0;
  *(this + 30) = this + 248;
  *(this + 32) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 36) = 0;
  IIOImageRead::setup(this, 7);
  *(this + 6) = a2;
  *(this + 10) = a4;
  *(this + 64) = a6;
  *(this + 65) = a6 ^ 1;
  *(this + 66) = 1;
  bzero(&v13, 0x878uLL);
  if (statfs(a3, &v13))
  {
    if (a4 >= 0x1000)
    {
      f_iosize = 4096;
    }

    else
    {
      f_iosize = a4;
    }
  }

  else if (v13.f_iosize >= a4)
  {
    f_iosize = a4;
  }

  else
  {
    f_iosize = v13.f_iosize;
  }

  *(this + 34) = f_iosize;
  if ((gIIODebugFlags & 0xC00000) != 0)
  {
    ImageIOLog("    %s: _fileBufferSize: %8ld  stat.f_iosize: %8ld  filesize: %8ld  file: '%s'", "IIOImageRead", f_iosize, v13.f_iosize, a4, a3);
    f_iosize = *(this + 34);
  }

  *(this + 71) = a5;
  *(this + 35) = -1;
  *(this + 33) = malloc_type_malloc(f_iosize, 0x100004077774924uLL);
}

void sub_185EA6BF0(_Unwind_Exception *a1)
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

uint64_t HEIFMainImage::getHEIFExifPayloadAtIndex(HEIFMainImage *this, unsigned int a2)
{
  v2 = *(this + 10);
  if (a2 >= ((*(this + 11) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t HEIFMainImage::getHEIFXMPPayloadAtIndex(HEIFMainImage *this, unsigned int a2)
{
  v2 = *(this + 13);
  if (a2 >= ((*(this + 14) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t HEIFMainImage::getHEIFItemPayloadAtIndex(HEIFMainImage *this, unsigned int a2)
{
  v2 = *(this + 16);
  if (a2 >= ((*(this + 17) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t globalHEIFInfoReleaseProc(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void GlobalHEIFInfo::~GlobalHEIFInfo(GlobalHEIFInfo *this)
{
  GlobalHEIFInfo::~GlobalHEIFInfo(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DDA80;
  v2 = *(this + 7);
  if (v2)
  {
    CFRelease(v2);
    *(this + 7) = 0;
  }

  v4 = *(this + 1);
  v3 = *(this + 2);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = *(v4 + 8 * v5);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v4 = *(this + 1);
        v3 = *(this + 2);
      }

      v5 = v6++;
    }

    while (v5 < (v3 - v4) >> 3);
  }

  v8 = *(this + 4);
  v9 = *(this + 5);
  if (v9 != v8)
  {
    v10 = 0;
    v11 = 1;
    do
    {
      v12 = v8[v10];
      if (v12)
      {
        (*(*v12 + 8))(v12);
        v8 = *(this + 4);
        v9 = *(this + 5);
      }

      v10 = v11++;
    }

    while (v10 < (v9 - v8) >> 3);
  }

  if (v8)
  {
    *(this + 5) = v8;
    operator delete(v8);
  }

  v13 = *(this + 1);
  if (v13)
  {
    *(this + 2) = v13;
    operator delete(v13);
  }
}

void HEIFMainImage::~HEIFMainImage(HEIFMainImage *this)
{
  *this = &unk_1EF4DDA60;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 1);
  }

  *(this + 2) = v2;
  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 != v5)
  {
    do
    {
      if (*v4)
      {
        (*(**v4 + 8))(*v4);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = *(this + 4);
  }

  *(this + 5) = v4;
  v6 = *(this + 7);
  v7 = *(this + 8);
  if (v6 != v7)
  {
    do
    {
      if (*v6)
      {
        (*(**v6 + 8))(*v6);
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = *(this + 7);
  }

  *(this + 8) = v6;
  v8 = *(this + 10);
  v9 = *(this + 11);
  if (v8 != v9)
  {
    do
    {
      if (*v8)
      {
        (*(**v8 + 8))(*v8);
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = *(this + 10);
  }

  *(this + 11) = v8;
  v10 = *(this + 16);
  v11 = *(this + 17);
  if (v10 != v11)
  {
    do
    {
      if (*v10)
      {
        (*(**v10 + 8))(*v10);
      }

      ++v10;
    }

    while (v10 != v11);
    v10 = *(this + 16);
  }

  *(this + 17) = v10;
  v12 = *(this + 13);
  v13 = *(this + 14);
  if (v12 != v13)
  {
    do
    {
      if (*v12)
      {
        (*(**v12 + 8))(*v12);
      }

      ++v12;
    }

    while (v12 != v13);
    v12 = *(this + 13);
  }

  *(this + 14) = v12;
  v14 = *(this + 36);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(this + 37);
  if (v15)
  {
    CGColorSpaceRelease(v15);
  }

  v16 = *(this + 16);
  if (v16)
  {
    *(this + 17) = v16;
    operator delete(v16);
  }

  v17 = *(this + 13);
  if (v17)
  {
    *(this + 14) = v17;
    operator delete(v17);
  }

  v18 = *(this + 10);
  if (v18)
  {
    *(this + 11) = v18;
    operator delete(v18);
  }

  v19 = *(this + 7);
  if (v19)
  {
    *(this + 8) = v19;
    operator delete(v19);
  }

  v20 = *(this + 4);
  if (v20)
  {
    *(this + 5) = v20;
    operator delete(v20);
  }

  v21 = *(this + 1);
  if (v21)
  {
    *(this + 2) = v21;
    operator delete(v21);
  }
}

{
  HEIFMainImage::~HEIFMainImage(this);

  JUMPOUT(0x186602850);
}

void HEIFExif::~HEIFExif (HEIFExif *this)
{
  *this = &unk_1EF4DD960;
  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4DD960;
}

uint64_t _cg_png_set_add_alpha(uint64_t result, __int16 a2, int a3)
{
  if (result)
  {
    v3 = result;
    result = _cg_png_set_filler(result, a2, a3);
    v4 = *(v3 + 88);
    if ((v4 & 0x8000) != 0)
    {
      *(v3 + 88) = v4 | 0x1000000;
    }
  }

  return result;
}

uint64_t _cg_png_set_filler(uint64_t result, __int16 a2, int a3)
{
  if (!result)
  {
    return result;
  }

  if ((*(result + 77) & 0x80) == 0)
  {
    if (*(result + 431))
    {
      if (*(result + 431) == 2)
      {
        v3 = 4;
LABEL_9:
        *(result + 436) = v3;
        goto LABEL_10;
      }

      v6 = "png_set_filler: inappropriate color type";
    }

    else
    {
      if (*(result + 432) >= 8u)
      {
        v3 = 2;
        goto LABEL_9;
      }

      v6 = "png_set_filler is invalid for low bit depth gray output";
    }

    return png_app_error(result, v6);
  }

  *(result + 442) = a2;
LABEL_10:
  *(result + 88) |= 0x8000u;
  v4 = *(result + 80);
  if (a3 == 1)
  {
    v5 = v4 | 0x80;
  }

  else
  {
    v5 = v4 & 0xFFFFFF7F;
  }

  *(result + 80) = v5;
  return result;
}

const char *_mappedDeallocate(void *a1, void *a2)
{
  if (munmap(a1, a2) < 0)
  {
    v5 = __error();
    v6 = strerror(*v5);
    return LogFault("_mappedDeallocate", 78, "Failed to unmap data (%p; 0x%lx): %s.\n", a1, a2, v6);
  }

  else
  {
    result = kdebug_trace();
    if ((gIIODebugFlags & 0x100000000000) != 0)
    {
      result = ImageIOLog("   ------------------------------------------------------\n");
      if ((gIIODebugFlags & 0x100000000000) != 0)
      {
        result = ImageIOLog("    %s:%d             munmap   ptr: %p  size: %ld\n", "_mappedDeallocate", 84, a1, a2);
        if ((gIIODebugFlags & 0x100000000000) != 0)
        {

          return ImageIOLog("   ------------------------------------------------------\n");
        }
      }
    }
  }

  return result;
}

const __CFData *IIOImageRead::createDataWithMappedFile(IIOImageRead *this, BOOL *Length, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  bzero(&v17, 0x90uLL);
  *(this + 70) = 1;
  v6 = *(this + 6);
  if (!v6)
  {
LABEL_16:
    v11 = 0;
    LODWORD(Length) = 0;
    if (!a3)
    {
      return v11;
    }

    goto LABEL_26;
  }

  v7 = IIO_CFURLCopyResolvedFileSystemPath(v6);
  if (!v7)
  {
    LogError("createDataWithMappedFile", 1737, "*** ERROR: cannot resolve URL\n");
    goto LABEL_16;
  }

  v8 = v7;
  bzero(v18, 0x400uLL);
  if (!_CFStringGetFileSystemRepresentation())
  {
    LogError("createDataWithMappedFile", 1740, "*** ERROR: cannot get URL path\n");
    LODWORD(Length) = 0;
    v11 = 0;
    goto LABEL_25;
  }

  v9 = open(v18, 0, 0);
  kdebug_trace();
  if ((gIIODebugFlags & 0x200000000000) != 0)
  {
    ImageIOLog(">>> %s: opening file [%d] '%s'\n", "createDataWithMappedFile", v9, v18);
  }

  if (v9 < 0)
  {
    LODWORD(Length) = *__error();
    v14 = strerror(Length);
    LogFault("createDataWithMappedFile", 1786, "*** ERROR: 'open' failed '%s'\terror = %d (%s)\n", v18, Length, v14);
    kdebug_trace();
    v11 = 0;
    goto LABEL_25;
  }

  if (fstat(v9, &v17) < 0)
  {
    LODWORD(Length) = *__error();
    v15 = strerror(Length);
    LogFault("createDataWithMappedFile", 1754, "*** ERROR: 'failed - fstat err = %d (%s)\n", Length, v15);
    v11 = 0;
  }

  else
  {
    v10 = _CFDataCreateWithMappedFile(v9, v18, &v17, *(this + 68));
    v11 = v10;
    if (v10)
    {
      *(this + 70) = 0;
      if (!Length)
      {
        goto LABEL_22;
      }

      *Length = 1;
      Length = CFDataGetLength(v10);
      BytePtr = CFDataGetBytePtr(v11);
      if (!Length)
      {
        goto LABEL_22;
      }

      if (Length >= 4)
      {
        v13 = 4;
      }

      else
      {
        v13 = Length;
      }

      ImageIO_FileIsNotReadable(BytePtr, v13);
    }

    else
    {
      LogFault("createDataWithMappedFile", 1776, "*** ERROR: '_CFDataCreateWithMappedFile' failed '%s'\n", v18);
    }

    LODWORD(Length) = 0;
  }

LABEL_22:
  if ((gIIODebugFlags & 0x200000000000) != 0)
  {
    ImageIOLog("<<< %s: closing file [%d] '%s'\n", "createDataWithMappedFile", v9, v18);
  }

  kdebug_trace();
  close(v9);
LABEL_25:
  CFRelease(v8);
  if (a3)
  {
LABEL_26:
    *a3 = Length;
  }

  return v11;
}

void *ImageIO_FileIsNotReadable(unsigned __int8 *a1, size_t a2)
{
  v5 = a1;
  __n = a2;
  memset(__b, 0, sizeof(__b));
  return memcpy(__b, v5, __n);
}

uint64_t CGImageSourceSetAllowableTypes(const void *a1)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceSetAllowableTypes", 0, 0, -1, 0);
  }

  return IIODecodingSetAllowableTypes(a1);
}

uint64_t IIODecodingSetAllowableTypes(const void *a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v1 = 4294967246;
  v9 = -50;
  if (a1)
  {
    v3 = CFGetTypeID(a1);
    if (v3 == CFArrayGetTypeID())
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = __IIODecodingSetAllowableTypes_block_invoke;
      v5[3] = &unk_1E6F09710;
      v5[4] = &v6;
      v5[5] = a1;
      if (IIODecodingSetAllowableTypes::onceToken != -1)
      {
        dispatch_once(&IIODecodingSetAllowableTypes::onceToken, v5);
      }

      v1 = *(v7 + 6);
    }

    else
    {
      v1 = 4294967246;
      *(v7 + 6) = -50;
    }
  }

  _Block_object_dispose(&v6, 8);
  return v1;
}

void sub_185EA779C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFArrayRef __IIODecodingSetAllowableTypes_block_invoke(IIO_ReaderHandler *a1)
{
  v1 = a1;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    a1 = IIO_OSAppleInternalBuild();
    if (a1)
    {
      Count = CFArrayGetCount(*(v1 + 5));
      a1 = ImageIOLog("••• CGImageSourceSetAllowableTypes: limiting to %ld types\n", Count);
    }
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
  *(*(*(v1 + 4) + 8) + 24) = IIO_ReaderHandler::setAllowableTypes(ReaderHandler, *(v1 + 5));
  if (gAllowedTypes)
  {
    CFRelease(gAllowedTypes);
  }

  result = CGImageSourceCopyTypeIdentifiers();
  gAllowedTypes = result;
  gAllowedTypesChanged = 1;
  return result;
}

const __CFArray *IIO_ReaderHandler::setAllowableTypes(uint64_t **this, const __CFArray *a2)
{
  memset(v22, 0, sizeof(v22));
  v3 = IIOArray::IIOArray(v22, a2);
  IIOArray::getCount(v3);
  kdebug_trace();
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  if (IIOArray::getCount(v22))
  {
    v4 = IIO_ReaderHandler::copyTypeIdentifiers(this);
    Count = CFArrayGetCount(v4);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 0x40000000;
    v17[2] = ___ZN17IIO_ReaderHandler17setAllowableTypesEPK9__CFArray_block_invoke;
    v17[3] = &unk_1E6F0A9D8;
    v17[4] = &v18;
    v17[5] = v4;
    IIOArray::enumerate(v22, v17);
    CFRelease(v4);
    v6 = Count;
  }

  else
  {
    LogWarning("setAllowableTypes", 1184, "*** 'CGImageSourceSetAllowableTypes' -> disabling all image decoding\n");
    v6 = 0;
  }

  v7 = this[2];
  if (this[3] == v7)
  {
    v8 = 0;
    if (v6)
    {
LABEL_18:
      _cg_jpeg_mem_term("setAllowableTypes", 1221, "*** 'CGImageSourceSetAllowableTypes' - original: %d  new: %d (removed %d)\n", v6, *(v19 + 6), v6 - *(v19 + 6));
    }
  }

  else
  {
    v8 = 4294967230;
    do
    {
      v9 = IIO_Reader::utType(*v7);
      result = IIOArray::containsValue(v22, v9);
      if (result)
      {
        ++v7;
        v11 = this[3];
      }

      else
      {
        v12 = this[3];
        if (v12 == v7)
        {
          __break(1u);
          return result;
        }

        std::__copy_move_unwrap_iters[abi:fe200100]<std::__move_impl<std::_ClassicAlgPolicy>,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,std::unique_ptr<IIO_Reader> *,0>(v7 + 1, v12, v7);
        v11 = v13;
        v14 = this[3];
        while (v14 != v11)
        {
          v16 = *--v14;
          v15 = v16;
          *v14 = 0;
          if (v16)
          {
            (*(*v15 + 8))(v15);
          }
        }

        v8 = 0;
        this[3] = v11;
      }
    }

    while (v7 != v11);
    if (v6)
    {
      goto LABEL_18;
    }
  }

  kdebug_trace();
  _Block_object_dispose(&v18, 8);
  IIOArray::~IIOArray(v22);
  return v8;
}

__CFArray *IIO_ReaderHandler::copyTypeIdentifiers(IIO_ReaderHandler *this)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v4 = *(this + 2);
  v3 = *(this + 3);
  while (v4 != v3)
  {
    if (IIO_Reader::addToTypeIdentifiers(*v4))
    {
      v5 = IIO_Reader::utType(*v4);
      CFArrayAppendValue(Mutable, v5);
    }

    ++v4;
  }

  return Mutable;
}

void ___ZN17IIO_ReaderHandler17setAllowableTypesEPK9__CFArray_block_invoke(uint64_t a1, const void *a2)
{
  v4 = *(a1 + 40);
  v7.length = CFArrayGetCount(v4);
  v7.location = 0;
  if (CFArrayContainsValue(v4, v7, a2))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    IIOString::IIOString(v6, a2);
    v5 = IIOString::utf8String(v6);
    LogError("setAllowableTypes_block_invoke", 1194, "*** CGImageSourceSetAllowableTypes - ignoring unknown: '%s'\n", v5);
    IIOString::~IIOString(v6);
  }
}

void sub_185EA7C00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

const __CFArray *IIOArray::containsValue(IIOArray *this, const void *a2)
{
  result = *(this + 1);
  if (result)
  {
    v5.length = CFArrayGetCount(result);
    v5.location = 0;
    return (CFArrayContainsValue(*(this + 1), v5, a2) != 0);
  }

  return result;
}

void IIOReader_RawCamera::~IIOReader_RawCamera(IIOReader_RawCamera *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_ASTC::~IIO_Reader_ASTC(IIO_Reader_ASTC *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_BC::~IIO_Reader_BC(IIO_Reader_BC *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_ETC::~IIO_Reader_ETC(IIO_Reader_ETC *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_PVR::~IIO_Reader_PVR(IIO_Reader_PVR *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_KTX2::~IIO_Reader_KTX2(IIO_Reader_KTX2 *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_HEIF::~IIO_Reader_HEIF(IIO_Reader_HEIF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_ICNS::~IIO_Reader_ICNS(IIO_Reader_ICNS *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_PSD::~IIO_Reader_PSD(IIO_Reader_PSD *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_PDF::~IIO_Reader_PDF(IIO_Reader_PDF *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_AI::~IIO_Reader_AI(IIO_Reader_AI *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_CUR::~IIO_Reader_CUR(IIO_Reader_CUR *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_TGA::~IIO_Reader_TGA(IIO_Reader_TGA *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_OpenEXR::~IIO_Reader_OpenEXR(IIO_Reader_OpenEXR *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_RAD::~IIO_Reader_RAD(IIO_Reader_RAD *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

void IIO_Reader_PBM::~IIO_Reader_PBM(IIO_Reader_PBM *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

CFArrayRef CGImageSourceCopyTypeIdentifiers(void)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v0 = ((gIIODebugFlags >> 12) & 3);
  if (v0)
  {
    ImageIODebugOptions(v0, "A", "CGImageSourceCopyTypeIdentifiers", 0, 0, -1, 0);
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v0);
  v2 = IIO_ReaderHandler::copyTypeIdentifiers(ReaderHandler);
  kdebug_trace();
  return v2;
}

IIO_Writer *IIO_WriterHandler::getWriterForType(IIO_WriterHandler *this, const __CFString *a2, const __CFString *a3)
{
  v3 = *(this + 1);
  if (v3 == *(this + 2))
  {
    return 0;
  }

  while (1)
  {
    v6 = IIO_Writer::utType(*v3);
    if (CFStringCompare(v6, a2, 0) == kCFCompareEqualTo)
    {
      break;
    }

    if (++v3 == *(this + 2))
    {
      return 0;
    }
  }

  return *v3;
}

IIO_Reader *IIO_WriterHandler::findWriterForTypeAndAlternateType(IIO_WriterHandler *this, const __CFString *a2, const __CFString *a3, uint64_t a4, IIODictionary *a5)
{
  WriterForType = IIO_WriterHandler::getWriterForType(this, a2, a3);
  if (!WriterForType)
  {
    IIOString::IIOString(v13, a2);
    v11 = IIOString::utf8String(v13);
    LogError("findWriterForTypeAndAlternateType", 132, "*** ERROR: unsupported output file format '%s'\n", v11);
    IIOString::~IIOString(v13);
    kdebug_trace();
    return 0;
  }

  v8 = WriterForType;
  if (a4 && IIO_Reader::testHeaderSize(WriterForType) != -1 && IIO_Reader::testHeaderSize(v8) < a4)
  {
    IIOString::IIOString(v13, a2);
    v9 = IIOString::utf8String(v13);
    v10 = IIO_Reader::testHeaderSize(v8);
    LogError("findWriterForTypeAndAlternateType", 141, "*** ERROR: capacity parameter (%d) is too large for this file format '%s' (max is %d)\n", a4, v9, v10);
    IIOString::~IIOString(v13);
    return 0;
  }

  return v8;
}

void sub_185EA8200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void IIOImageDestination::IIOImageDestination(IIOImageDestination *this, __CFData *a2, IIO_Writer *a3, const __CFString *a4, uint64_t a5, IIODictionary *a6)
{
  *this = &unk_1EF4DA278;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  IIOImageDestination::setup(this, 1);
  v11 = CGImageWriteSessionCreateWithMutableData(a2);
  *(this + 2) = v11;
  *(this + 3) = CGImageSourceGetSource(v11);
  *(this + 8) = a3;
  *(this + 9) = IIO_Writer::utType(a3);
  *(this + 5) = a5;
  IIOImageDestination::setProperties(this, a6);
}

void sub_185EA82D0(_Unwind_Exception *exception_object)
{
  v4 = v1[16];
  if (v4)
  {
    v1[17] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[14] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGImageDestinationRefCreateWith_ImageDestination(IIOImageDestination *a1)
{
  if (CGImageDestinationGetTypeID::once != -1)
  {
    CGImageDestinationGetTypeID_cold_1();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 16) = 1;
  atomic_fetch_add_explicit(&gIDRCount, 1uLL, memory_order_relaxed);
  *(result + 24) = a1;
  *(a1 + 1) = result;
  return result;
}

void IIOImageDestination::addImageInternal(IIOImageDestination *this, CGImage *a2, IIODictionary *a3)
{
  CFAbsoluteTimeGetCurrent();
  if (CGImageGetMask())
  {
    IIOImageCreateWithImageAndMaskInterleaved(a2, 0);
  }

  if ((gIIODebugFlags & 0x300000) != 0)
  {
    CGImageGetContentHeadroom();
    ImageIOLog("☀️  %s - adding image with headroom: %g\n", "addImageInternal", v5);
  }

  *(this + 23) = 0;
  *(this + 104) = 1;
  *(this + 229) = 0;
  *(this + 222) = 0;
  v6 = *(this + 6);
  *(this + 6) = v6 + 1;
  *(this + 7) = v6;
  operator new();
}

void sub_185EA8D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void IIOImageDestination::cleanupDestinationProperties(IIOImageDestination *this, IIODictionary *a2)
{
  if (IIODictionary::containsKey(a2, @"HasAlpha"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a2, @"HasAlpha");
    IIODictionary::setObjectForKey(a2, ObjectForKey, @"kCGImageDestinationAllowAlpha");

    IIODictionary::removeObjectForKey(a2, @"HasAlpha");
  }
}

void IIOImageDestination::updateCompression(CFStringRef *this, IIODictionary *a2)
{
  if (CFStringCompare(this[9], @"public.tiff", 0) == kCFCompareEqualTo)
  {
    if ((IIODictionary::containsKey(a2, @"{TIFF}") & 1) == 0)
    {
      v6 = 0;
      value = 0;
      v8 = 0;
      IIODictionary::IIODictionary(&v6);
      IIODictionary::setObjectForKey(a2, value, @"{TIFF}");
      IIODictionary::~IIODictionary(&v6);
    }

    if (IIODictionary::containsKey(a2, @"Compression"))
    {
      ObjectForKey = IIODictionary::getObjectForKey(a2, @"Compression");
      IIODictionary::setObjectForKeyGroup(a2, ObjectForKey, @"Compression", @"{TIFF}");
      IIODictionary::removeObjectForKey(a2, @"Compression");
      if (IIODictionary::getUint32ForKeyGroup(a2, @"Compression", @"{TIFF}") >= 2)
      {
        IIODictionary::removeObjectForKeyGroup(a2, @"TileWidth", @"{TIFF}");
        IIODictionary::removeObjectForKeyGroup(a2, @"TileLength", @"{TIFF}");
      }
    }
  }

  if (CFStringCompare(this[9], @"com.truevision.tga-image", 0) == kCFCompareEqualTo && IIODictionary::containsKey(a2, @"Compression"))
  {
    if (IIODictionary::containsKey(a2, @"{TGA}"))
    {
      v5 = IIODictionary::getObjectForKey(a2, @"Compression");
      IIODictionary::setObjectForKeyGroup(a2, v5, @"Compression", @"{TGA}");
      IIODictionary::removeObjectForKey(a2, @"Compression");
    }
  }
}

void sub_185EA9010(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImageRef IIOImageDestination::create1BitImage(IIOImageDestination *this, CGImageRef image, IIODictionary *a3, int a4)
{
  BitsPerComponent = CGImageGetBitsPerComponent(image);
  v9 = BitsPerComponent;
  if (BitsPerComponent != 8 && BitsPerComponent != 1 || (HEIFAuxImage::auxiliaryPixelFormat(*(this + 8)) & 0x100) == 0)
  {
    return 0;
  }

  v10 = IIODictionary::containsKey(a3, @"Depth");
  Uint32ForKey = v9;
  if (v10)
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(a3, @"Depth");
  }

  if (Uint32ForKey != 1)
  {
    return 0;
  }

  if (v9 == 8)
  {
    ColorSpace = CGImageGetColorSpace(image);
    if (CGColorSpaceGetModel(ColorSpace))
    {
      v13 = 0;
    }

    else
    {
      if (IIODictionary::containsKey(a3, @"kCGImagePropertyThreshold"))
      {
        v16 = IIODictionary::getUint32ForKey(a3, @"kCGImagePropertyThreshold");
      }

      else
      {
        v16 = 0x80;
      }

      v13 = Create1BitImageFromImageRefWithOrientation(image, a4, v16);
      if (v13)
      {
        IIONumber::IIONumber(v17, 1);
        IIODictionary::setObjectForKey(a3, v17, @"Orientation");
        IIONumber::~IIONumber(v17);
        *(this + 104) = 1;
      }
    }
  }

  else
  {
    v13 = CGImageRetain(image);
  }

  if (CFStringCompare(*(this + 9), @"public.tiff", 0) == kCFCompareEqualTo)
  {
    Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(a3, @"Compression", @"{TIFF}");
    if ((Uint32ForKeyGroup - 3) >= 2)
    {
      _cg_jpeg_mem_term("create1BitImage", 2175, "*** {TIFF} dictionary does not contain compression information - using COMPRESSION_CCITTFAX4\n");
      Uint32ForKeyGroup = 4;
    }

    IIONumber::IIONumber(v17, Uint32ForKeyGroup);
    IIODictionary::setObjectForKeyGroup(a3, v17, @"Compression", @"{TIFF}");
    IIONumber::~IIONumber(v17);
  }

  return v13;
}

void sub_185EA9214(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::updateCreateHDRGainMapFlag(IIOImageDestination *this, CGImage *a2, IIODictionary *a3)
{
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "updateCreateHDRGainMapFlag");
  }

  *(this + 227) = -1;
  if (IIODictionary::containsKey(a3, @"kCGImageDestinationCreateHDRGainMap"))
  {
    ColorSpace = CGImageGetColorSpace(a2);
    if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || (v7 = CGColorSpaceUsesExtendedRange(ColorSpace)))
    {
      LOBYTE(v7) = IIODictionary::getBoolForKey(a3, @"kCGImageDestinationCreateHDRGainMap");
    }

    *(this + 227) = v7;
  }

  return 0;
}

const void *IIO_ImageBlockCreate(unint64_t a1, uint64_t a2, const void *a3, double a4, double a5, double a6, double a7)
{
  if (a3)
  {
    v13 = a3;
    v14 = "";
  }

  else
  {
    pthread_mutex_lock(&gImageIOMemoryHashLock);
    if (gMemoryHashCreateOnce != -1)
    {
      _ImageIO_AccreditMemory_cold_1();
    }

    v17[0] = ~a1;
    v17[2] = v17;
    v13 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(gIIOMemoryHash + 8, v17)[5];
    pthread_mutex_unlock(&gImageIOMemoryHashLock);
    v14 = "cached";
  }

  v15 = CGImageBlockCreate();
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    atomic_fetch_add_explicit(&gBlockCount, 1u, memory_order_relaxed);
    ImageIOLog("    CGImageBlockCreate:       %14p - info: %14p  data: %14p  B-[%2ld]  rb: %8ld  r:(%4g,%4g,%4g,%4g) %s\n", v15, v13, a1, gBlockCount, a2, a4, a5, a6, a7, v14);
    if ((gIIODebugFlags & 0x800) != 0)
    {
      IIODebug_ShowBacktrace(2);
    }
  }

  return v15;
}

void png_handle_iCCP(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v2;
  v55 = *MEMORY[0x1E69E9840];
  v41 = v4;
  v6 = *(v2 + 76);
  if ((v6 & 1) == 0)
  {
    png_chunk_error(v2, "missing IHDR");
  }

  v7 = v4;
  if ((v6 & 6) != 0)
  {
    png_crc_finish(v2, v4);
    v8 = "out of place";
LABEL_6:

    png_chunk_benign_error(v5, v8);
    return;
  }

  if (v4 <= 0xD)
  {
    png_crc_finish(v2, v4);
    v8 = "too short";
    goto LABEL_6;
  }

  v9 = *(v2 + 1274);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = v3;
    if ((v9 & 4) != 0)
    {
      v15 = "too many profiles";
LABEL_20:
      png_crc_finish(v5, v41);
LABEL_21:
      *(v5 + 1274) |= 0x8000u;
      png_colorspace_sync(v5, v10);
      *(v5 + 96) = 0;
      if (!v15)
      {
        return;
      }

      v14 = v5;
      v13 = v15;
      goto LABEL_23;
    }

    v54 = 0;
    memset(__src, 0, sizeof(__src));
    if (v4 >= 0x51)
    {
      v11 = 81;
    }

    else
    {
      v11 = v4;
    }

    png_crc_read(v2, __src, v11);
    v12 = v7 - v11;
    v41 = v12;
    if (v12 < 0xB)
    {
      png_crc_finish(v5, v12);
      v13 = "too short";
      v14 = v5;
LABEL_23:
      png_chunk_benign_error(v14, v13);
      return;
    }

    v16 = 0;
    if (v7 >= 0x50)
    {
      v17 = 80;
    }

    else
    {
      v17 = v7;
    }

    while (*(__src + v16))
    {
      if (v17 == ++v16)
      {
        goto LABEL_32;
      }
    }

    LODWORD(v17) = v16;
LABEL_32:
    if ((v17 - 1) > 0x4E)
    {
      v15 = "bad keyword";
      goto LABEL_20;
    }

    v18 = v17 + 1;
    if (v18 >= v11 || *(__src + v18))
    {
      v15 = "bad compression method";
      goto LABEL_20;
    }

    if (png_inflate_claim(v5, 1766015824))
    {
      v15 = *(v5 + 144);
      goto LABEL_20;
    }

    v19 = (v17 + 2);
    v51 = 0;
    v50 = 0u;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    bzero(v42, 0x1000uLL);
    v40 = 132;
    *(v5 + 96) = __src + v19;
    *(v5 + 104) = v11 - v19;
    png_inflate_read(v5, v42, &v43, &v41, &v43, &v52, &v40, 0);
    if (v40)
    {
      goto LABEL_40;
    }

    if (v5 + 1200 > v5 + 1276)
    {
      goto LABEL_73;
    }

    v20 = bswap32(v43);
    if (png_icc_check_length(v5, v5 + 1200, __src, v20) && png_icc_check_header(v5, v5 + 1200, __src, v20, &v43, *(v5 + 431)))
    {
      v21 = v51;
      buffer = png_read_buffer(v5, v20, 2);
      if (!buffer)
      {
        v15 = "out of memory";
        goto LABEL_56;
      }

      if (v23 < buffer)
      {
        goto LABEL_73;
      }

      if (v23 - buffer < 0x84)
      {
        goto LABEL_73;
      }

      *buffer = v43;
      v24 = v44;
      v25 = v45;
      v26 = v47;
      *(buffer + 3) = v46;
      *(buffer + 4) = v26;
      *(buffer + 1) = v24;
      *(buffer + 2) = v25;
      v27 = v48;
      v28 = v49;
      v29 = v50;
      *(buffer + 32) = v51;
      *(buffer + 6) = v28;
      *(buffer + 7) = v29;
      *(buffer + 5) = v27;
      if ((buffer + 132) < buffer)
      {
        goto LABEL_73;
      }

      v30 = 12 * bswap32(v21);
      v40 = v30;
      v38 = v23 - buffer;
      v39 = buffer;
      v36 = buffer + 132;
      v37 = v23;
      png_inflate_read(v5, v42, &v43, &v41, buffer + 132, v23, &v40, 0);
      if (v40)
      {
        goto LABEL_40;
      }

      if (v38 < v20)
      {
        goto LABEL_73;
      }

      if (png_icc_check_tag_table(v5, v5 + 1200, __src, v20, v39))
      {
        v40 = v20 - v30 - 132;
        if (&v36[v30] < v39)
        {
          goto LABEL_73;
        }

        png_inflate_read(v5, v42, &v43, &v41, &v36[v30], v37, &v40, 1);
        v31 = v41;
        if (v41)
        {
          if ((*(v5 + 82) & 0x10) == 0)
          {
            v15 = "extra compressed data";
            goto LABEL_56;
          }

          if (!v40)
          {
            png_chunk_warning(v5, "extra compressed data");
LABEL_62:
            png_crc_finish(v5, v31);
            png_icc_set_sRGB(v5, v5 + 1200, v39, v37, *(v5 + 192));
            if (!v10)
            {
LABEL_70:
              *(v5 + 92) = 0;
              *(v5 + 96) = 0;
              return;
            }

            png_free_data(v5, v10, 0x10u, 0);
            v32 = malloc_type_malloc(v18, 0xF92B8FAFuLL);
            v33 = &v32[v18];
            if (v32)
            {
              v34 = &v32[v18];
            }

            else
            {
              v34 = 0;
            }

            *(v10 + 136) = v32;
            *(v10 + 144) = v34;
            if (!v32)
            {
              *(v5 + 1274) |= 0x8000u;
              png_colorspace_sync(v5, v10);
              *(v5 + 92) = 0;
              v15 = "out of memory";
              goto LABEL_21;
            }

            v35 = v32;
            memcpy(v32, __src, v18);
            if (v35 <= v33 && v38 >= v20)
            {
              *(v10 + 160) = v20;
              *(v10 + 152) = v39;
              *(v5 + 1120) = 0u;
              *(v10 + 340) |= 0x10u;
              *(v10 + 8) |= 0x1000u;
              png_colorspace_sync(v5, v10);
              goto LABEL_70;
            }

LABEL_73:
            __break(0x5519u);
            return;
          }
        }

        else if (!v40)
        {
          goto LABEL_62;
        }

LABEL_40:
        v15 = *(v5 + 144);
LABEL_56:
        *(v5 + 92) = 0;
        goto LABEL_20;
      }
    }

    v15 = 0;
    goto LABEL_56;
  }

  png_crc_finish(v2, v4);
}

uint64_t png_icc_check_length(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4)
{
  if (a4 <= 0x83)
  {
    a4 = a4;
    v4 = "too short";
LABEL_6:
    png_icc_profile_error(a1, a2, a3, a4, v4);
    return 0;
  }

  v5 = *(a1 + 1072);
  if (v5 && v5 < a4)
  {
    a4 = a4;
    v4 = "exceeds application limits";
    goto LABEL_6;
  }

  return 1;
}

uint64_t png_zstream_error(uint64_t result, int a2)
{
  if (!*(result + 144))
  {
    if ((a2 + 7) > 9)
    {
      v2 = "unexpected zlib return code";
    }

    else
    {
      v2 = off_1E6F0A8D0[a2 + 7];
    }

    *(result + 144) = v2;
  }

  return result;
}

uint64_t png_icc_check_header(uint64_t a1, uint64_t a2, _BYTE *a3, unint64_t a4, uint64_t a5, char a6)
{
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = bswap32(*a5);
  if (v9 != a4)
  {
    v12 = "length does not match profile";
LABEL_13:
    a4 = v9;
    goto LABEL_14;
  }

  if ((a4 & 3) != 0 && *(a5 + 8) >= 4u)
  {
    a4 = a4;
    v12 = "invalid length";
LABEL_5:
    a1 = v8;
    a2 = v7;
    a3 = v6;
LABEL_14:
    png_icc_profile_error(a1, a2, a3, a4, v12);
    return 0;
  }

  v9 = bswap32(*(a5 + 128));
  if (v9 > 0x1555554A || 12 * v9 + 132 > a4)
  {
    v12 = "tag count too large";
    goto LABEL_13;
  }

  a4 = bswap32(*(a5 + 64));
  if (a4 >= 0xFFFF)
  {
    v12 = "invalid rendering intent";
    goto LABEL_5;
  }

  if (a4 >= 4)
  {
    png_icc_profile_error(a1, 0, a3, a4, "intent outside defined range");
  }

  a4 = bswap32(*(a5 + 36));
  if (a4 != 1633907568)
  {
    v12 = "invalid signature";
    goto LABEL_5;
  }

  if (*(a5 + 68) != 0x100D6F60000 || *(a5 + 76) != 768802816)
  {
    png_icc_profile_error(v8, 0, v6, 0, "PCS illuminant is not D50");
  }

  a4 = bswap32(*(a5 + 16));
  if (a4 == 1196573017)
  {
    if ((a6 & 2) != 0)
    {
      v12 = "Gray color space not permitted on RGB PNG";
      a1 = v8;
      a2 = v7;
      a3 = v6;
      a4 = 1196573017;
      goto LABEL_14;
    }
  }

  else
  {
    if (a4 != 1380401696)
    {
      v12 = "invalid ICC profile color space";
      goto LABEL_5;
    }

    if ((a6 & 2) == 0)
    {
      v12 = "RGB color space not permitted on grayscale PNG";
      a1 = v8;
      a2 = v7;
      a3 = v6;
      a4 = 1380401696;
      goto LABEL_14;
    }
  }

  v16 = bswap32(*(a5 + 12));
  if (v16 <= 1852662635)
  {
    if (v16 == 1633842036)
    {
      v12 = "invalid embedded Abstract ICC profile";
      a1 = v8;
      a2 = v7;
      a3 = v6;
      a4 = 1633842036;
      goto LABEL_14;
    }

    if (v16 == 1818848875)
    {
      v12 = "unexpected DeviceLink ICC profile class";
      a1 = v8;
      a2 = v7;
      a3 = v6;
      a4 = 1818848875;
      goto LABEL_14;
    }

    v17 = 1835955314;
  }

  else if (v16 > 1935896177)
  {
    if (v16 == 1935896178)
    {
      goto LABEL_48;
    }

    v17 = 1936744803;
  }

  else
  {
    if (v16 == 1852662636)
    {
      v18 = "unexpected NamedColor ICC profile class";
      v19 = v8;
      v20 = v6;
      v16 = 1852662636;
      goto LABEL_47;
    }

    v17 = 1886549106;
  }

  if (v16 != v17)
  {
    v18 = "unrecognized ICC profile class";
    v19 = v8;
    v20 = v6;
LABEL_47:
    png_icc_profile_error(v19, 0, v20, v16, v18);
  }

LABEL_48:
  a4 = bswap32(*(a5 + 20));
  result = 1;
  if (a4 != 1281450528 && a4 != 1482250784)
  {
    v12 = "unexpected ICC PCS encoding";
    goto LABEL_5;
  }

  return result;
}

unint64_t png_icc_check_tag_table(unint64_t result, uint64_t a2, _BYTE *a3, unsigned int a4, unint64_t a5)
{
  v5 = a5 + a4;
  v6 = (a5 + 128);
  v7 = a5 + 128 < v5 && v6 >= a5;
  v8 = (a5 + 129);
  v9 = !v7 || v8 >= v5;
  v10 = (a5 + 130);
  v11 = v9 || v10 >= v5;
  v12 = (a5 + 131);
  if (!v11 && v12 < v5)
  {
    v14 = (*v6 << 24) | (*v8 << 16) | (*v10 << 8) | *v12;
    if (!v14)
    {
      return 1;
    }

    v19 = result;
    v20 = a5 + 132;
    while (v20 < v5)
    {
      if (v20 < a5)
      {
        break;
      }

      v21 = v20 + 1;
      if (v21 >= v5)
      {
        break;
      }

      if (v21 < a5)
      {
        break;
      }

      v22 = v21 + 1;
      if (v22 >= v5)
      {
        break;
      }

      if (v22 < a5)
      {
        break;
      }

      v23 = (v22 + 1);
      if (v23 >= v5)
      {
        break;
      }

      if (v23 < a5)
      {
        break;
      }

      if ((v23 + 1) >= v5)
      {
        break;
      }

      if ((v23 + 1) < a5)
      {
        break;
      }

      if ((v23 + 2) >= v5)
      {
        break;
      }

      if ((v23 + 2) < a5)
      {
        break;
      }

      if ((v23 + 3) >= v5)
      {
        break;
      }

      if ((v23 + 3) < a5)
      {
        break;
      }

      v24 = v23 + 4;
      if ((v23 + 4) >= v5)
      {
        break;
      }

      if (v24 < a5)
      {
        break;
      }

      if ((v23 + 5) >= v5)
      {
        break;
      }

      if ((v23 + 5) < a5)
      {
        break;
      }

      if ((v23 + 6) >= v5)
      {
        break;
      }

      if ((v23 + 6) < a5)
      {
        break;
      }

      if ((v23 + 7) >= v5)
      {
        break;
      }

      if ((v23 + 7) < a5)
      {
        break;
      }

      v25 = v23 + 8;
      if ((v23 + 8) >= v5 || v25 < a5)
      {
        break;
      }

      v26 = bswap32(*(v23 - 3));
      v27 = (v23[1] << 24) | (v23[2] << 16) | (v23[3] << 8);
      v28 = *v24;
      if (a4 < (v27 | v28) || bswap32(*(v24 + 1)) > a4 - (v27 | v28))
      {
        png_icc_profile_error(v19, a2, a3, v26, "ICC profile tag outside profile");
        return 0;
      }

      if ((v28 & 3) != 0)
      {
        result = png_icc_profile_error(v19, 0, a3, v26, "ICC profile tag start not a multiple of 4");
      }

      v20 = (v25 + 1);
      if (!--v14)
      {
        return 1;
      }
    }
  }

  __break(0x5519u);
  return result;
}

unsigned __int8 *png_icc_set_sRGB(unsigned __int8 *result, uint64_t a2, unsigned int *a3, unint64_t a4, uLong a5)
{
  if ((~*(result + 206) & 0x30) == 0)
  {
    return result;
  }

  v6 = vdupq_n_s64(a3);
  if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vcgtq_u64(v6, vaddq_s64(v6, xmmword_186224270)), vcgtq_u64(v6, vaddq_s64(v6, xmmword_186224280))))) & 1) != 0 || a3 + 87 >= a4 || a3 + 86 >= a4 || (a3 + 21) >= a4 || a3 + 85 >= a4)
  {
    goto LABEL_104;
  }

  v9 = result;
  v10 = 0;
  v11 = (a3 + 22);
  v12 = a3 + 89;
  v13 = a3 + 90;
  v14 = a3 + 91;
  v15 = (a3 + 23);
  v16 = a3 + 93;
  v17 = a3 + 94;
  v18 = a3 + 95;
  v19 = (a3 + 24);
  v20 = a3 + 97;
  result = a3 + 98;
  v21 = a3 + 99;
  v47 = a3 + 65;
  v48 = (a3 + 16);
  v22 = a3 + 66;
  v23 = a3 + 67;
  v25 = (a3 + 24) >= a4 || v19 < a3;
  v27 = v15 >= a4 || v15 < a3;
  v29 = v11 >= a4 || v11 < a3;
  if (v12 >= a4 || v12 < a3)
  {
    v29 = 1;
  }

  if (v13 >= a4 || v13 < a3)
  {
    v29 = 1;
  }

  if (v14 >= a4 || v14 < a3)
  {
    v29 = 1;
  }

  if (v16 >= a4 || v16 < a3)
  {
    v27 = 1;
  }

  if (v17 >= a4 || v17 < a3)
  {
    v27 = 1;
  }

  if (v18 >= a4 || v18 < a3)
  {
    v27 = 1;
  }

  if (v20 >= a4 || v20 < a3)
  {
    v25 = 1;
  }

  v38 = result >= a4 || result < a3 || v25;
  v39 = v21 < a4 && v21 >= a3;
  v40 = bswap32(a3[21]);
  if (!v39)
  {
    v38 = 1;
  }

  v41 = 0x10000;
  v42 = &dword_1862242F0;
  v43 = 5;
  while (1)
  {
    if (v40 == *(v42 - 1))
    {
      if (v29)
      {
        goto LABEL_104;
      }

      if (((*v11 << 24) | (*v12 << 16) | (*v13 << 8) | *v14) == *v42)
      {
        if (v27)
        {
          goto LABEL_104;
        }

        if (((*v15 << 24) | (*v16 << 16) | (*v17 << 8) | *v18) == v42[1])
        {
          if (v38)
          {
            goto LABEL_104;
          }

          if (((*v19 << 24) | (*v20 << 16) | (*result << 8) | *v21) == v42[2])
          {
            if (!v10)
            {
              if (a3 >= a4)
              {
                goto LABEL_104;
              }

              v10 = bswap32(*a3);
              v41 = bswap32(a3[16]);
            }

            if (v10 == *(v42 - 2) && v41 == *(v42 + 7))
            {
              break;
            }
          }
        }
      }
    }

    v42 += 8;
    if (!--v43)
    {
      return result;
    }
  }

  if (!a5)
  {
    v44 = adler32(0, 0, 0);
    a5 = adler32(v44, a3, v10);
  }

  if (a5 == *(v42 - 4))
  {
    v45 = crc32(0, 0, 0);
    result = crc32(v45, a3, v10);
    if (result == *(v42 - 3))
    {
      if (v48 < a4 && v48 >= a3 && v47 < a4 && v47 >= a3 && v22 < a4 && v22 >= a3 && v23 < a4 && v23 >= a3)
      {
        v46 = (*v48 << 24) | (*v47 << 16) | (*v22 << 8) | *v23;

        return png_colorspace_set_sRGB(v9, a2, v46);
      }

LABEL_104:
      __break(0x5519u);
      return result;
    }
  }

  return png_chunk_report(v9, "Not recognizing known sRGB profile that has been edited", 0);
}

uint64_t png_inflate_read(uint64_t result, Bytef *a2, unint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t *a7, int a8)
{
  v8 = result;
  if (*(result + 92) == *(result + 312))
  {
    *(result + 120) = a5;
    *(result + 128) = 0;
    v13 = a3 - a2;
    if (a8)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    LODWORD(v15) = 4096;
    while (1)
    {
      if (!*(v8 + 104))
      {
        v16 = *a4;
        if (v15 >= *a4)
        {
          v15 = v16;
        }

        else
        {
          v15 = v15;
        }

        *a4 = v16 - v15;
        if (v15)
        {
          if (a3 < a2 || v13 < v15)
          {
            __break(0x5519u);
            return result;
          }

          png_crc_read(v8, a2, v15);
        }

        *(v8 + 96) = a2;
        *(v8 + 104) = v15;
      }

      if (!*(v8 + 128))
      {
        if (*a7 >= 0xFFFFFFFF)
        {
          v17 = 0xFFFFFFFFLL;
        }

        else
        {
          v17 = *a7;
        }

        *a7 -= v17;
        *(v8 + 128) = v17;
      }

      v18 = *a4 ? 0 : v14;
      result = png_zlib_inflate(v8, v18);
      if (result)
      {
        break;
      }

      if (!*a7 && !*(v8 + 128))
      {
        v19 = 0;
        goto LABEL_29;
      }
    }

    v19 = *a7 + *(v8 + 128);
LABEL_29:
    *a7 = v19;
    *(v8 + 128) = 0;

    return png_zstream_error(v8, result);
  }

  else
  {
    *(result + 144) = "zstream unclaimed";
  }

  return result;
}

uint64_t _cg_png_get_iCCP(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4, unsigned int **a5, _DWORD *a6)
{
  result = 0;
  if (!a1)
  {
    return result;
  }

  if (!a2)
  {
    return result;
  }

  result = 0;
  if (!a6 || !a5 || !a3 || (*(a2 + 8) & 0x1000) == 0)
  {
    return result;
  }

  v8 = *(a2 + 136);
  if (v8 && v8 >= *(a2 + 144))
  {
    goto LABEL_21;
  }

  *a3 = v8;
  v9 = *(a2 + 152);
  v10 = *(a2 + 160);
  if (!v9)
  {
    *a5 = 0;
    if (v10)
    {
      goto LABEL_13;
    }

LABEL_21:
    __break(0x5519u);
    return result;
  }

  if (!v10)
  {
    goto LABEL_21;
  }

  *a5 = v9;
LABEL_13:
  if ((v9 + 1) < v9)
  {
    goto LABEL_21;
  }

  v11 = v9 + v10;
  if (v9 + 1 >= v11 || v9 + 2 >= v11 || v9 + 3 >= v11)
  {
    goto LABEL_21;
  }

  *a6 = bswap32(*v9);
  if (a4)
  {
    *a4 = 0;
  }

  return 4096;
}

CGColorSpaceRef CGColorSpaceCreateWithCopyOfData(UInt8 *bytes, unint64_t length)
{
  if (!bytes)
  {
    return 0;
  }

  if (length < 0xFB)
  {
    return 0;
  }

  v2 = CFDataCreate(0, bytes, length);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CGColorSpaceCreateWithICCData(v2);
  CFRelease(v3);
  return v4;
}

void IIOImageWriteSession::IIOImageWriteSession(IIOImageWriteSession *this, CFTypeRef cf)
{
  *this = &unk_1EF4D5E30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 36) = 2;
  *(this + 10) = this;
  *(this + 11) = this;
  *(this + 19) = 0;
  *(this + 3) = CFRetain(cf);
  Length = CFDataGetLength(cf);
  *(this + 7) = Length;
  if (Length)
  {
    CFDataSetLength(*(this + 3), 0);
    *(this + 7) = 0;
  }
}

{
  *this = &unk_1EF4D5E30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 36) = 3;
  *(this + 10) = this;
  *(this + 11) = this;
  *(this + 19) = 0;
  *(this + 2) = CFRetain(cf);
  *(this + 3) = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
}

const char *IIOImageDestination::setProperties(IIOImageDestination *this, IIODictionary *a2)
{
  if (!*(this + 2))
  {
    return IIOImageDestination::setProperties();
  }

  if (*(this + 233))
  {
    return IIOImageDestination::setProperties();
  }

  v4 = *(this + 12);
  if (!v4 || !CFArrayGetCount(v4))
  {
    if (a2)
    {
      v5 = *(this + 11);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      operator new();
    }

    operator new();
  }

  return IIOImageDestination::setProperties();
}

void CGImageDestinationAddImage(CGImageDestinationRef idst, CGImageRef image, CFDictionaryRef properties)
{
  v37 = *MEMORY[0x1E69E9840];
  memset(v31, 0, sizeof(v31));
  IIODictionary::IIODictionary(v31, properties);
  if (image)
  {
    CGImageGetWidth(image);
    CGImageGetHeight(image);
  }

  IIOPackDstInputInfo(v31);
  IIOPackImageDesc(image);
  kdebug_trace();
  IIO_LoadHEIFSymbols();
  if ((gIIODebugFlags & 0x3000) != 0)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    *__str = 0u;
    if (!image)
    {
      strcpy(__str, "(NULL)");
      goto LABEL_15;
    }

    if (CGImageGetImageProvider())
    {
      if (CGImageProviderGetProperty() == *MEMORY[0x1E695E4D0])
      {
        v5 = "(IP-S)";
      }

      else
      {
        v5 = "(IP)";
      }
    }

    else
    {
      v5 = "(DP)";
    }

    v27 = v5;
    Property = CGImageGetProperty();
    v7 = CGImageGetProperty();
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    BytesPerRow = CGImageGetBytesPerRow(image);
    BitsPerComponent = CGImageGetBitsPerComponent(image);
    if (Property)
    {
      IIOString::IIOString(v30, Property);
      v12 = IIOString::utf8String(v30);
      if (v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v12 = "";
      if (v7)
      {
LABEL_13:
        IIOString::IIOString(buffer, v7);
        v13 = IIOString::utf8String(buffer);
        snprintf(__str, 0x50uLL, "[%p] {%ld,%ld}  rb:%ld  bpc:%ld  %s %s%s", image, Width, Height, BytesPerRow, BitsPerComponent, v27, v12, v13);
        IIOString::~IIOString(buffer);
        if (Property)
        {
LABEL_14:
          IIOString::~IIOString(v30);
        }

LABEL_15:
        v14 = (gIIODebugFlags >> 12) & 3;
        if (v14)
        {
          ImageIODebugOptions(v14, "A", "CGImageDestinationAddImage", 0, __str, -1, properties);
        }

        v15 = CGImageGetProperty();
        *buffer = 0;
        if (v15)
        {
          v38.location = 0;
          v38.length = 8;
          CFDataGetBytes(v15, v38, buffer);
          Source = CGImageSourceGetSource(*buffer);
          v17 = IIOImageRead::copySourceInfo(Source);
          free(v17);
        }

        goto LABEL_19;
      }
    }

    snprintf(__str, 0x50uLL, "[%p] {%ld,%ld}  rb:%ld  bpc:%ld  %s %s%s", image, Width, Height, BytesPerRow, BitsPerComponent, v27, v12, "");
    if (!Property)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_19:
  Uint32ForKey = IIODictionary::getUint32ForKey(v31, @"kCGImageSurfaceFormatRequest");
  Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(v31, @"kCGImageDestinationEncodeBasePixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  IIOPixelFormatIndex(Uint32ForKey);
  IIOPixelFormatIndex(Uint32ForKeyGroup);
  IIODictionary::getUint32ForKeyGroup(v31, @"kCGImageDestinationEncodeGainMapPixelFormatRequest", @"kCGImageDestinationEncodeRequestOptions");
  if (idst)
  {
    v20 = 5452;
  }

  else
  {
    v20 = 5451;
  }

  if (idst)
  {
    v21 = "*** ERROR: CGImageDestinationAddImage: cgImage is nil\n";
  }

  else
  {
    v21 = "*** ERROR: CGImageDestinationAddImage: destination is nil\n";
  }

  if (!idst || !image)
  {
    goto LABEL_44;
  }

  v22 = CFGetTypeID(idst);
  if (CGImageDestinationGetTypeID::once != -1)
  {
    CGImageDestinationAddImage_cold_1();
  }

  if (v22 != CGImageDestinationGetTypeID::id)
  {
    LogError("CGImageDestinationAddImage", 5453, "*** ERROR: CGImageDestinationAddImage: destination is not a CGImageDestinationRef\n");
    goto LABEL_45;
  }

  v23 = CFGetTypeID(image);
  if (v23 != CGImageGetTypeID())
  {
    v21 = "*** ERROR: CGImageDestinationAddImage: cgImage is not a CGImageRef\n";
    v20 = 5454;
LABEL_44:
    LogError("CGImageDestinationAddImage", v20, v21);
    goto LABEL_45;
  }

  if (properties)
  {
    v24 = CFGetTypeID(properties);
    if (v24 != CFDictionaryGetTypeID())
    {
      LogError("CGImageDestinationAddImage", 5457, "*** ERROR: CGImageDestinationAddImage: properties parameter is not a CFDictionaryRef - ignoring\n");
    }
  }

  v25 = *(idst + 3);
  if (v25)
  {
    IIOImageDestination::addImage(*(idst + 3), image, v31);
    v26 = *(v25 + 64);
    if (v26)
    {
      IIO_Reader::osType(v26);
    }
  }

LABEL_45:
  kdebug_trace();
  IIODictionary::~IIODictionary(v31);
}

void sub_185EAAFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  IIOString::~IIOString(&a20);
  if (v26)
  {
    IIOString::~IIOString(&a23);
  }

  IIODictionary::~IIODictionary(&a26);
  _Unwind_Resume(a1);
}

uint64_t IIOPackDstInputInfo(IIODictionary *a1)
{
  if (!a1)
  {
    return 0xFFA800000000;
  }

  v2 = (IIODictionary::getUint32ForKey(a1, @"Orientation") & 0xF) << 52;
  v3 = v2 | ((IIODictionary::getUint32ForKeyGroup(a1, @"Orientation", @"{TIFF}") & 0xF) << 48);
  if (IIODictionary::containsKey(a1, @"kCGImageDestinationEncodeRequest"))
  {
    ObjectForKey = IIODictionary::getObjectForKey(a1, @"kCGImageDestinationEncodeRequest");
    if (CFStringCompare(ObjectForKey, @"kCGImageDestinationEncodeToSDR", 0))
    {
      if (CFStringCompare(ObjectForKey, @"kCGImageDestinationEncodeToISOHDR", 0))
      {
        if (CFStringCompare(ObjectForKey, @"kCGImageDestinationEncodeToISOGainmap", 0))
        {
          v5 = 0;
        }

        else
        {
          v5 = 0x300000000000;
        }
      }

      else
      {
        v5 = 0x200000000000;
      }
    }

    else
    {
      v5 = 0x100000000000;
    }

    if (IIODictionary::containsKeyGroup(a1, @"kCGToneMappingMode", @"kCGImageDestinationEncodeRequestOptions"))
    {
      v8 = (IIODictionary::getUint32ForKeyGroup(a1, @"kCGToneMappingMode", @"kCGImageDestinationEncodeRequestOptions") & 0xF) << 40;
    }

    else
    {
      v8 = 0xF0000000000;
    }

    v9 = v5 | v8 | v3;
    if (IIODictionary::containsKeyGroup(a1, @"kCGImageDestinationCreateHDRGainMap", @"kCGImageDestinationEncodeRequestOptions"))
    {
      if (IIODictionary::getBoolForKeyGroup(a1, @"kCGImageDestinationCreateHDRGainMap", @"kCGImageDestinationEncodeRequestOptions"))
      {
        v7 = v9 | 0x4000000000;
      }

      else
      {
        v7 = v9;
      }
    }

    else
    {
      v7 = v9 | 0x8000000000;
    }
  }

  else
  {
    v7 = v3 | 0xFF8000000000;
  }

  if (IIODictionary::containsKey(a1, @"kCGImageDestinationPreserveGainMap"))
  {
    if (IIODictionary::getBoolForKey(a1, @"kCGImageDestinationPreserveGainMap"))
    {
      v7 |= 0x1000000000uLL;
    }
  }

  else
  {
    v7 |= 0x2000000000uLL;
  }

  if (IIODictionary::containsKey(a1, @"kCGImageDestinationOptimizeColorForSharing"))
  {
    if (IIODictionary::getBoolForKey(a1, @"kCGImageDestinationOptimizeColorForSharing"))
    {
      v7 |= 0x400000000uLL;
    }
  }

  else
  {
    v7 |= 0x800000000uLL;
  }

  ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(a1, @"ImageDescription", @"{TIFF}");
  if (ObjectForKeyGroup)
  {
    v11 = ObjectForKeyGroup;
    v12 = CFGetTypeID(ObjectForKeyGroup);
    if (v12 == CFStringGetTypeID() && CFStringCompare(v11, @"Screenshot", 0) == kCFCompareEqualTo)
    {
      v7 |= 0x200000000uLL;
    }
  }

  v13 = IIODictionary::getObjectForKeyGroup(a1, @"UserComment", @"{Exif}");
  if (v13)
  {
    v14 = v13;
    v15 = CFGetTypeID(v13);
    if (v15 == CFStringGetTypeID() && CFStringCompare(v14, @"Screenshot", 0) == kCFCompareEqualTo)
    {
      v7 |= 0x100000000uLL;
    }
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(a1, @"kCGImageDestinationImageMaxPixelSize");
  if (!Uint32ForKey)
  {
    LOWORD(Uint32ForKey) = IIODictionary::getUint32ForKey(a1, @"kCGImageSourceThumbnailMaxPixelSize");
  }

  return v7 | Uint32ForKey;
}

CGImage *IIOPackImageDesc(CGImage *result)
{
  if (result)
  {
    v1 = result;
    v2 = CGImageGetBitsPerPixel(result) << 58;
    v3 = v2 & 0xFC0FFFFFFFFFFFFFLL | ((CGImageGetBitsPerComponent(v1) & 0x3F) << 52);
    ColorSpace = CGImageGetColorSpace(v1);
    v5 = v3 | ((CGColorSpaceGetModel(ColorSpace) & 0xF) << 48);
    ImageProvider = CGImageGetImageProvider();
    v7 = 0x400000000000;
    if (!ImageProvider)
    {
      v7 = 0x800000000000;
    }

    v8 = v5 | v7;
    CGImageGetContentHeadroom();
    v10 = v8 & 0xFFFFC03FFFFFFFFFLL | ((v9 * 10.0) << 38);
    CGImageGetColorSpace(v1);
    v11 = CGColorSpaceGetID() & 0x7F;
    return (CGImageGetBitmapInfo(v1) | (v11 << 32) | v10);
  }

  return result;
}

uint64_t IIOPixelFormatIndex(uint64_t a1)
{
  if (a1 <= 1380401728)
  {
    if (a1 <= 875836517)
    {
      if (a1 > 875704421)
      {
        if (a1 == 875704422)
        {
          return 1;
        }

        if (a1 == 875704934)
        {
          return 2;
        }
      }

      else
      {
        if (a1 == 843264056)
        {
          return 10;
        }

        if (a1 == 843264310)
        {
          return 11;
        }
      }
    }

    else if (a1 <= 1278226487)
    {
      if (a1 == 875836518)
      {
        return 3;
      }

      if (a1 == 1111970369)
      {
        return 12;
      }
    }

    else
    {
      switch(a1)
      {
        case 1278226488:
          return 7;
        case 1278226736:
          return 8;
        case 1278226742:
          return 9;
      }
    }
  }

  else if (a1 > 1815491697)
  {
    if (a1 <= 2019963439)
    {
      if (a1 == 1815491698)
      {
        return 17;
      }

      if (a1 == 1999843442)
      {
        return 14;
      }
    }

    else
    {
      switch(a1)
      {
        case 2019963440:
          return 4;
        case 2019963442:
          return 5;
        case 2019963956:
          return 6;
      }
    }
  }

  else if (a1 <= 1380411456)
  {
    if (a1 == 1380401729)
    {
      return 13;
    }

    if (a1 == 1380410945)
    {
      return 19;
    }
  }

  else
  {
    switch(a1)
    {
      case 1380411457:
        return 18;
      case 1647534392:
        return 15;
      case 1815162994:
        return 16;
    }
  }

  return 129;
}

uint64_t IIOImageDestination::addImage(IIOImageDestination *this, void *cf, IIODictionary *a3)
{
  if (*(this + 2))
  {
    if (*(this + 233))
    {
      IIOImageDestination::addImage();
    }

    else if (*(this + 232))
    {
      IIOImageDestination::addImage();
    }

    else if (cf)
    {
      v6 = CFGetTypeID(cf);
      if (v6 == CGImageGetTypeID())
      {
        IIOImageDestination::addImageInternal(this, cf, a3);
      }

      IIOImageDestination::addImage();
    }

    else
    {
      IIOImageDestination::addImage();
    }
  }

  else
  {
    IIOImageDestination::addImage();
  }

  return 4294967246;
}

void IIOImageDestination::setImagePropertiesAtIndex(IIOImageDestination *this, IIODictionary *a2, unsigned int a3)
{
  v5 = *(this + 16);
  v6 = *(this + 17);
  v7 = (v6 - v5) >> 3;
  if (a3 >= v7)
  {
    v10 = *(this + 12);
    if (a3 >= v10)
    {
      _cg_jpeg_mem_term("setImagePropertiesAtIndex", 4644, "setImagePropertiesAtIndex index (%d) larger than vectorCount (%d) and image count (%d\n", a3, (v6 - v5) >> 3, v10);
    }

    else
    {
      for (; v7 <= a3; v7 = (v6 - v5) >> 3)
      {
        v11 = *(this + 18);
        if (v6 >= v11)
        {
          v12 = v11 - v5;
          if (v12 >> 2 <= v7 + 1)
          {
            v13 = v7 + 1;
          }

          else
          {
            v13 = v12 >> 2;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(this + 128, v14);
        }

        *v6++ = 0;
        *(this + 17) = v6;
        v5 = *(this + 16);
      }

      *(v5 + 8 * a3) = a2;
    }
  }

  else
  {
    if (v7 <= a3)
    {
      goto LABEL_21;
    }

    v8 = a3;
    v9 = *(v5 + 8 * a3);
    if (v9)
    {
      (*(*v9 + 8))(v9);
      v5 = *(this + 16);
      v7 = (*(this + 17) - v5) >> 3;
    }

    if (v7 <= v8)
    {
LABEL_21:
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = a2;
    }
  }
}

uint64_t IIOGetExifOrientation(IIODictionary *a1, unsigned __int16 a2)
{
  if (a1)
  {
    if (IIODictionary::containsKey(a1, @"Orientation"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(a1, @"Orientation");
    }

    else if (IIODictionary::containsKeyGroup(a1, @"Orientation", @"{TIFF}"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKeyGroup(a1, @"Orientation", @"{TIFF}");
    }

    else
    {
      Uint32ForKey = 1;
    }

    if ((Uint32ForKey - 9) >= 0xFFF8u)
    {
      return Uint32ForKey;
    }

    else
    {
      return a2;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t IIOImageDestination::updateCreateISOGainMapFlag(IIOImageDestination *this, CGImage *a2, IIODictionary *a3)
{
  if ((gIIODebugFlags & 0x300000) != 0)
  {
    ImageIOLog("☀️  %s\n", "updateCreateISOGainMapFlag");
  }

  *(this + 228) = -1;
  if (IIODictionary::containsKey(a3, @"kCGImageDestinationEncodeRequest"))
  {
    *(this + 228) = 0;
    ColorSpace = CGImageGetColorSpace(a2);
    if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || CGColorSpaceUsesExtendedRange(ColorSpace))
    {
      ObjectForKey = IIODictionary::getObjectForKey(a3, @"kCGImageDestinationEncodeRequest");
      if (CFStringCompare(ObjectForKey, @"kCGImageDestinationEncodeToISOGainmap", 0) == kCFCompareEqualTo)
      {
        *(this + 228) = 1;
      }
    }
  }

  return 0;
}

uint64_t IIOImageDestination::updateCreateISOGainMapWithSDRandHDRFlags(IIOImageDestination *this, CGImage *a2, IIODictionary *a3)
{
  if (IIODictionary::containsKey(a3, @"kCGImageDestinationEncodeRequestOptions") && ((IIODictionary::containsKeyGroup(a3, @"kCGImageDestinationEncodeIsBaseImage", @"kCGImageDestinationEncodeRequestOptions") & 1) != 0 || IIODictionary::containsKeyGroup(a3, @"kCGImageDestinationEncodeGenerateGainMapWithBaseImage", @"kCGImageDestinationEncodeRequestOptions")))
  {
    *(this + 234) = 1;
  }

  return 0;
}

uint64_t IIOImageDestination::GetOptimizeForSharing(IIOImageDestination *this, IIODictionary *a2, BOOL *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (!this)
  {
    return 0;
  }

  result = IIODictionary::containsKey(this, @"kCGImageDestinationOptimizeColorForSharing");
  if (!result)
  {
    return result;
  }

  ObjectForKey = IIODictionary::getObjectForKey(this, @"kCGImageDestinationOptimizeColorForSharing");
  v7 = CFGetTypeID(ObjectForKey);
  if (v7 == CFBooleanGetTypeID())
  {
    return ObjectForKey == *MEMORY[0x1E695E4D0];
  }

  v8 = CFGetTypeID(ObjectForKey);
  if (v8 != CFStringGetTypeID())
  {
    return 0;
  }

  v9 = CFStringCompare(ObjectForKey, @"sRGB", 0);
  result = v9 == kCFCompareEqualTo;
  if (a2)
  {
    if (v9 == kCFCompareEqualTo)
    {
      result = 1;
      *a2 = 1;
    }
  }

  return result;
}

uint64_t IIO_ReaderHandler::UseAppleJPEG(IIO_ReaderHandler *this)
{
  if (IIO_ReaderHandler::UseAppleJPEG(void)::appleJPEGCheck != -1)
  {
    IIO_ReaderHandler::UseAppleJPEG();
  }

  return IIO_ReaderHandler::UseAppleJPEG(void)::gUseAppleJPEGPlugin;
}

uint64_t IIOImageDestination::swapWriterIfNeeded(IIO_Writer **this, CGImage *a2, int a3)
{
  v6 = IIO_Writer::utType(this[8]);
  result = CFStringCompare(v6, @"public.jpeg", 0);
  if (result)
  {
    return result;
  }

  WriterHandler = IIO_WriterHandler::GetWriterHandler(0);
  result = IIO_Reader::osType(this[8]);
  if (a3)
  {
    v9 = result;
    result = IIO_WriterHandler::findWriterForTypeAndAlternateType(WriterHandler, @"public.heic", @"public.jpeg", 1, 0);
    if (!result)
    {
      return result;
    }

    v10 = result;
    *(this + 110) = 256;
    if (*(this + 54) == 5)
    {
      v11 = 6;
    }

    else
    {
      v11 = 4;
    }

    *(this + 54) = v11;
    v12 = v9 >> 24;
    v13 = MEMORY[0x1E69E9830];
    if ((v9 >> 24) <= 0x7F)
    {
      v14 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v9 >> 24, 0x40000uLL);
    }

    if (v14)
    {
      v19 = v12;
    }

    else
    {
      v19 = 46;
    }

    v20 = v9 << 8 >> 24;
    if (v20 <= 0x7F)
    {
      v21 = *&v13[4 * v20 + 60] & 0x40000;
    }

    else
    {
      v21 = __maskrune(v9 << 8 >> 24, 0x40000uLL);
    }

    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 46;
    }

    v23 = v9 >> 8;
    if (v23 <= 0x7F)
    {
      v24 = *&v13[4 * v23 + 60] & 0x40000;
    }

    else
    {
      v24 = __maskrune(v9 >> 8, 0x40000uLL);
    }

    if (v24)
    {
      v25 = v23;
    }

    else
    {
      v25 = 46;
    }

    if (v9 <= 0x7F)
    {
      v26 = *&v13[4 * v9 + 60] & 0x40000;
    }

    else
    {
      v26 = __maskrune(v9, 0x40000uLL);
    }

    if (v26)
    {
      v27 = v9;
    }

    else
    {
      v27 = 46;
    }

    if ((v13[350] & 4) != 0)
    {
      v28 = 72;
    }

    else
    {
      v28 = 46;
    }

    if ((v13[338] & 4) != 0)
    {
      v29 = 69;
    }

    else
    {
      v29 = 46;
    }

    if ((v13[354] & 4) != 0)
    {
      v30 = 73;
    }

    else
    {
      v30 = 46;
    }

    if ((v13[330] & 4) != 0)
    {
      v31 = 67;
    }

    else
    {
      v31 = 46;
    }

    v32 = *(this + 54);
    if (v32 > 6)
    {
      v33 = "";
    }

    else
    {
      v33 = off_1E6F0A898[v32];
    }

    _cg_jpeg_mem_term("swapWriterIfNeeded", 4689, "*** 🔄 ImageIO: write plugin changed from '%c%c%c%c' to '%c%c%c%c' (%s)\n", v19, v22, v25, v27, v28, v29, v30, v31, v33);
    result = kdebug_trace();
LABEL_56:
    this[8] = v10;
    return result;
  }

  if (a2)
  {
    AlphaInfo = CGImageGetAlphaInfo(a2);
    ColorSpace = CGImageGetColorSpace(a2);
    Model = CGColorSpaceGetModel(ColorSpace);
    result = CGColorSpaceUsesITUR_2100TF(ColorSpace);
    v18 = result;
    if (result)
    {
      *(this + 222) = 0;
    }

    if (AlphaInfo != kCGImageAlphaNoneSkipLast || Model)
    {
      result = IIO_CGImageWrapsIOSurface(a2, 1);
      if (((v18 | result ^ 1) & 1) == 0)
      {
        result = IIO_WriterHandler::findWriterForTypeAndAlternateType(WriterHandler, @"public.heic", @"public.jpeg", 1, 0);
        v10 = result;
        if (result)
        {
          goto LABEL_56;
        }
      }
    }
  }

  return result;
}

const __CFDictionary *IIOImageDestination::handleDestinationImageMaxPixelSize(IIOImageDestination *this, CGImage *a2, IIODictionary *a3, BOOL *a4)
{
  *a4 = 0;
  if ((gIIODebugFlags & 0x2000000000000) != 0)
  {
    IIODebugOrientation("handleDestinationImageMaxPixelSize", 2195, a3);
  }

  v8 = IIODictionary::containsKey(a3, @"kCGImageDestinationImageMaxPixelSize");
  if (v8)
  {
    if (IIODictionary::getBoolForKey(a3, @"kCGImageSourceCreateThumbnailWithTransform"))
    {
      v9 = IIOGetExifOrientation(a3, 0);
      v10 = v9 > 1;
      if (v9 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v9;
      }
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }

    Uint32ForKey = IIODictionary::getUint32ForKey(a3, @"kCGImageDestinationImageMaxPixelSize");
    if (*(this + 222) == 1 && IIODictionary::containsKey(a3, @"IMAGEIO_USE_LIBJPEG"))
    {
      *(this + 222) &= !IIODictionary::getBoolForKey(a3, @"IMAGEIO_USE_LIBJPEG");
    }

    if (*(this + 221) == 1)
    {
      if ((gIIODebugFlags & 0x2000000000000) != 0)
      {
        v13 = "skip";
        if (v10)
        {
          v13 = "use";
        }

        ImageIOLog("%s %s:%d %s orientation(_HEIC_to_JPEG): %d\n", "-o- ", "handleDestinationImageMaxPixelSize", 2223, v13, v11);
      }

      *(this + 21) = CGImageRetain(a2);
      *(this + 24) = Uint32ForKey;
      *a4 = 1;
    }

    else if (*(this + 222) == 1)
    {
      if ((gIIODebugFlags & 0x2000000000000) != 0)
      {
        v14 = "skip";
        if (v10)
        {
          v14 = "use";
        }

        ImageIOLog("%s %s:%d %s orientation(_useAppleJPEG_resize): %d\n", "-o- ", "handleDestinationImageMaxPixelSize", 2235, v14, v11);
      }

      *(this + 220) = 1;
      *(this + 21) = CGImageRetain(a2);
      *(this + 24) = Uint32ForKey;
      *a4 = 1;
    }

    else
    {
      if ((gIIODebugFlags & 0x2000000000000) != 0)
      {
        v15 = "skip";
        if (v10)
        {
          v15 = "use";
        }

        ImageIOLog("%s %s:%d %s orientation(default): %d\n", "-o- ", "handleDestinationImageMaxPixelSize", 2248, v15, v11);
      }

      if (IIODictionary::containsKey(a3, @"Depth"))
      {
        v16 = IIODictionary::getUint32ForKey(a3, @"Depth");
        if (CFStringCompare(*(this + 9), @"public.jpeg", 0))
        {
          v17 = v16;
        }

        else
        {
          v17 = -1;
        }
      }

      else
      {
        v17 = -1;
      }

      v31 = v17;
      if (*(this + 229))
      {
        v18 = 2;
      }

      else
      {
        v18 = 0;
      }

      v30 = v18;
      if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
      {
        if (*(this + 229))
        {
          v19 = "on";
        }

        else
        {
          v19 = "off";
        }

        ImageIOLog("COL adding image [%p] with optimizeColorForSharing turned %s\n", a2, v19);
      }

      v20 = *(this + 23);
      if (v10)
      {
        if (v20)
        {
          CGImageRelease(v20);
          *(this + 23) = 0;
        }

        ThumbNew = CGImageCreateThumbNew(a2, Uint32ForKey, v11, v31, v30);
        *(this + 23) = ThumbNew;
        if (ThumbNew)
        {
          *(this + 104) = 1;
          if ((gIIODebugFlags & 0x2000000000000) != 0)
          {
            ImageIOLog("%s %s:%d CGImageCreateThumbNew: maxPixelSize: %d  applied exifOrientation: %d  - resetting orientation in options to 1\n", "-o- ", "handleDestinationImageMaxPixelSize", 2277, Uint32ForKey, v11);
          }

          IIONumber::IIONumber(&v34, 1);
          IIODictionary::setObjectForKey(a3, &v34, @"Orientation");
          IIONumber::~IIONumber(&v34);
          IIONumber::IIONumber(&v34, 1);
          IIODictionary::setObjectForKeyGroup(a3, &v34, @"Orientation", @"{TIFF}");
          IIONumber::~IIONumber(&v34);
          IIODictionary::removeObjectForKey(a3, @"kCGImageSourceCreateThumbnailWithTransform");
        }
      }

      else
      {
        if (v20)
        {
          CGImageRelease(v20);
          *(this + 23) = 0;
        }

        if (!*(this + 20))
        {
          goto LABEL_62;
        }

        v34 = 0;
        options = 0;
        v36 = 0;
        IIODictionary::IIODictionary(&v34);
        v22 = *(this + 22);
        if ((v22 & 0x8000000000000000) != 0)
        {
          v22 = *(this + 7);
        }

        IIONumber::IIONumber(v32, Uint32ForKey);
        IIODictionary::setObjectForKey(&v34, value, @"kCGImageSourceThumbnailMaxPixelSize");
        IIONumber::~IIONumber(v32);
        v23 = *MEMORY[0x1E695E4D0];
        IIODictionary::setObjectForKey(&v34, *MEMORY[0x1E695E4D0], @"kCGImageSourceCreateThumbnailFromImageIfAbsent");
        ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(*(this + 20), v22, options);
        v25 = ThumbnailAtIndex;
        if (ThumbnailAtIndex)
        {
          Width = CGImageGetWidth(ThumbnailAtIndex);
          Height = CGImageGetHeight(v25);
          if (Width >= Uint32ForKey || Height >= Uint32ForKey || (CGImageRelease(v25), IIODictionary::removeObjectForKey(&v34, @"kCGImageSourceCreateThumbnailFromImageIfAbsent"), IIODictionary::setObjectForKey(&v34, v23, @"kCGImageSourceCreateThumbnailFromImageAlways"), (v25 = CGImageSourceCreateThumbnailAtIndex(*(this + 20), v22, options)) != 0))
          {
            if (*(this + 229) == 1)
            {
              v28 = CGImageCreateThumbNew(v25, Uint32ForKey, 1u, v31, v30);
            }

            else
            {
              v28 = CGImageRetain(v25);
            }

            *(this + 23) = v28;
            CGImageRelease(v25);
          }
        }

        IIODictionary::~IIODictionary(&v34);
        if (!*(this + 23))
        {
LABEL_62:
          *(this + 23) = CGImageCreateThumbNew(a2, Uint32ForKey, 0, v31, v30);
        }
      }
    }
  }

  return v8;
}

void sub_185EAC3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageDestination::createPixelDataProviderConforming(uint64_t a1, CGImage *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, IIODictionary *a7)
{
  ImageProvider = CGImageGetImageProvider();
  Decode = CGImageGetDecode(a2);
  Current = CFAbsoluteTimeGetCurrent();
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("CGImageDestination - CGImagePixelDataProviderCreateConforming\n");
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      ImageIOLog("-------------------------------------------------------------\n");
      if ((gIIODebugFlags & 0x10000000000) != 0)
      {
        ImageIOLog("           writerMode:  %s [0x%X]\n", IIO_WriterModeString(CGImagePluginWriteModes)::output, a6);
      }
    }
  }

  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  if (a3 != 1 && a4)
  {
    if ((gIIODebugFlags & 0x2000000000000) != 0)
    {
      ImageIOLog("*** ERROR: Orientation '%d' not handled - fallback to old CGImageCreateConforming.\n", a3);
    }

    v15 = 0;
    goto LABEL_335;
  }

  *&v116 = _ImageGetBitmapInfo(a2);
  LODWORD(v115) = CGImageGetBitsPerComponent(a2);
  DWORD1(v115) = CGImageGetBitsPerPixel(a2);
  *(&v115 + 1) = CGImageGetColorSpace(a2);
  *(&v116 + 1) = CGImageGetDecode(a2);
  BitsPerComponent = CGImageGetBitsPerComponent(a2);
  BitsPerPixel = CGImageGetBitsPerPixel(a2);
  ColorSpace = CGImageGetColorSpace(a2);
  Model = CGColorSpaceGetModel(ColorSpace);
  Type = CGColorSpaceGetType();
  AlphaInfo = _ImageGetAlphaInfo(a2);
  EndianInfo = _ImageGetEndianInfo(a2);
  IsFloat = _ImageIsFloat(a2);
  v18 = *(a1 + 72);
  if (v18)
  {
    v104 = CFStringCompare(v18, @"public.tiff", 0) == kCFCompareEqualTo;
  }

  else
  {
    v104 = 0;
  }

  v15 = 0;
  if ((a6 & 0x7F000000) == 0 || (a6 & 0x1FF00) == 0 || !a2 || (a6 & 0x7F) == 0)
  {
    goto LABEL_335;
  }

  v19 = IIOImageDestination::adjustWriteModesForWriter(a1, a6, BitsPerComponent, Model, AlphaInfo, *(a1 + 40), ColorSpace, a7);
  v20 = v19;
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("       new writerMode:  %s [0x%X]\n", IIO_WriterModeString(CGImagePluginWriteModes)::output, v19);
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      BitmapInfo = CGImageGetBitmapInfo(a2);
      v22 = CGImageGetBitmapInfo(a2);
      v23 = IIO_BitmapInfoString(v22);
      ImageIOLog("     image bitmapInfo:  0x%X %s\n", BitmapInfo, v23);
    }
  }

  v24 = Type;
  if (Type == 7)
  {
    ColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
    v25 = CGColorSpaceGetType();
    Model = CGColorSpaceGetModel(ColorSpace);
    v26 = 1;
    v27 = Model == kCGColorSpaceModelRGB;
    if (Model == kCGColorSpaceModelRGB)
    {
      v28 = 1;
      v24 = 7;
      if ((v20 & 0x10) != 0)
      {
LABEL_30:
        v109 = 1;
        v27 = v26;
        Model = v28;
        goto LABEL_31;
      }
    }

    else
    {
      v24 = 7;
    }
  }

  else
  {
    LOBYTE(v26) = Model == kCGColorSpaceModelRGB;
    v27 = Model == kCGColorSpaceModelRGB;
    v25 = Type;
  }

  if (v24 != 7 && v27 && (v20 & 1) != 0 || (v26 & 1) == 0)
  {
    v26 = v27;
    v28 = Model;
    v24 = Type;
    goto LABEL_30;
  }

  v109 = 0;
  v24 = Type;
LABEL_31:
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("            csIndexed: %d\n", v24 == 7);
    v24 = Type;
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      v29 = IIO_ColorModelString(Model);
      ImageIOLog("              csModel: %d = %s\n", Model, v29);
      v24 = Type;
      if ((gIIODebugFlags & 0x10000000000) != 0)
      {
        ImageIOLog("            indexedOK: %d\n", v109);
        v24 = Type;
      }
    }
  }

  if ((v24 == 7) & (v20 >> 4))
  {
    v30 = v20 & 0xF9FFFFFF;
  }

  else
  {
    v30 = v20;
  }

  v31 = (v20 & 2) != 0 && Model == kCGColorSpaceModelCMYK;
  v32 = !v31;
  if ((v27 & (((v20 & 0x10) != 0) | v20) & 1) != 0 || !v32)
  {
    goto LABEL_49;
  }

  if (Model != kCGColorSpaceModelLab)
  {
    if (Model == kCGColorSpaceModelMonochrome && (v20 & 0x24) != 0)
    {
      goto LABEL_49;
    }

LABEL_59:
    v33 = 0;
    goto LABEL_64;
  }

  if ((v20 & 8) == 0)
  {
    goto LABEL_59;
  }

LABEL_49:
  if (!ImageProvider || CGImageProviderGetProperty() != *MEMORY[0x1E695E4D0])
  {
    v33 = 1;
    if ((CGColorSpaceUsesExtendedRange(ColorSpace) & IsFloat) != 1 || (v30 & 0x18000) != 0)
    {
      goto LABEL_64;
    }

    if (((*(**(a1 + 64) + 48))(*(a1 + 64)) & 1) == 0)
    {
      if (v27)
      {
        OUTLINED_FUNCTION_2_9();
        if (!v31)
        {
          ImageIOLog("COL extended-sRGB --> P3\n");
        }

        IIOImageDestination::createPixelDataProviderForExtendedRange(a1, a2);
      }

      if (Model == kCGColorSpaceModelMonochrome)
      {
        OUTLINED_FUNCTION_2_9();
        if (!v31)
        {
          ImageIOLog("COL extended-Gray --> gray\n");
        }
      }
    }
  }

  v33 = 1;
LABEL_64:
  if ((v33 & 1) == 0)
  {
    v34 = Model == kCGColorSpaceModelDeviceN && BitsPerComponent == 1;
    if (v34 && (v30 & 0x100) != 0)
    {
      v35 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(a2, v35);
      if (CopyWithColorSpace)
      {
        v37 = CopyWithColorSpace;
        *(&v115 + 1) = v35;
        v15 = CGImagePixelDataProviderCreate(CopyWithColorSpace, &v115);
        CGImageRelease(v37);
      }

      else
      {
        v15 = 0;
      }

LABEL_333:
      if (v35)
      {
        CGColorSpaceRelease(v35);
      }

      goto LABEL_335;
    }
  }

  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("         spaceModelOK: %d\n", v33);
  }

  if (v25 < 6 && ((0x27u >> v25) & 1) != 0)
  {
    v38 = 1;
  }

  else
  {
    v38 = (v25 != 9) & (v30 >> 18);
  }

  v106 = v38;
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("          spaceTypeOK: %d\n", v38);
  }

  v105 = v33;
  if (BitsPerComponent == 1 && (v30 & 0x100) != 0)
  {
    goto LABEL_107;
  }

  if (BitsPerComponent == 2 && (v30 & 0x200) != 0)
  {
    goto LABEL_107;
  }

  if (BitsPerComponent == 4 && (v30 & 0x400) != 0)
  {
    goto LABEL_107;
  }

  if (BitsPerComponent == 8 && (v30 & 0x800) != 0)
  {
    goto LABEL_107;
  }

  if (BitsPerComponent == 16 && (v30 & 0x1000) != 0)
  {
    goto LABEL_107;
  }

  if (BitsPerComponent == 16 && (v30 & 0x4000) != 0)
  {
    goto LABEL_107;
  }

  v101 = v30 & 0x10000;
  v39 = IsFloat ^ 1;
  if (BitsPerComponent == 16 && v101 && !v39)
  {
    goto LABEL_107;
  }

  v40 = (v30 & 0x2000) != 0 && BitsPerComponent == 32;
  v41 = !v40;
  if (((v41 | v39) & 1) == 0)
  {
    goto LABEL_107;
  }

  v42 = BitsPerComponent != 32;
  if ((v30 & 0x8000) == 0)
  {
    v42 = 1;
  }

  if (((v42 | v39) & 1) == 0)
  {
LABEL_107:
    v100 = v30 & 0x8000;
    v101 = v30 & 0x10000;
    v39 = IsFloat ^ 1;
    v43 = 1;
  }

  else
  {
    v100 = v30 & 0x8000;
    v43 = 0;
  }

  v102 = v39;
  if ((v30 & 0x18000) != 0)
  {
    v39 = 1;
  }

  v44 = v39 & v43;
  if ((gIIODebugFlags & 0x10000000000) != 0 && (ImageIOLog("          bitsPerComp: %zu\n", BitsPerComponent), (gIIODebugFlags & 0x10000000000) != 0))
  {
    ImageIOLog("              depthOK: %d\n", v44);
    OUTLINED_FUNCTION_0_20();
    v53 = v52 & v30 & 0x7F000000;
    v46 = v53 != 0;
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      ImageIOLog("              alphaOK: %d\n", v53 != 0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_20();
    v46 = (v45 & v30 & 0x7F000000) != 0;
  }

  v103 = v46;
  if (BitsPerComponent == 1 && !EndianInfo && (v30 & 0x100) != 0)
  {
    goto LABEL_134;
  }

  if (BitsPerComponent == 2 && !EndianInfo && (v30 & 0x200) != 0)
  {
    goto LABEL_134;
  }

  if (BitsPerComponent == 4 && !EndianInfo && (v30 & 0x400) != 0)
  {
    goto LABEL_134;
  }

  if (BitsPerComponent == 8 && !EndianInfo && (v30 & 0x800) != 0)
  {
    goto LABEL_134;
  }

  if (BitsPerComponent == 8 && EndianInfo == 0x2000 && (v30 & 0x840) == 0x840)
  {
    goto LABEL_134;
  }

  v47 = BitsPerComponent != 16;
  if (BitsPerComponent == 16 && EndianInfo == 12288 && (v30 & 0x1000) != 0)
  {
    goto LABEL_134;
  }

  if (BitsPerComponent == 16 && !EndianInfo && (v30 & 0x1000) != 0)
  {
    goto LABEL_134;
  }

  if (EndianInfo != 4096)
  {
    v47 = 1;
  }

  v87 = (v30 & 0x4000) == 0 || v47;
  if (!v101)
  {
    v47 = 1;
  }

  v48 = 1;
  if (v87 == 1 && ((v47 | v102) & 1) != 0)
  {
    v89 = BitsPerComponent != 32 || EndianInfo != 0x4000;
    if ((v30 & 0x2000) == 0)
    {
      v89 = 1;
    }

    if (((v89 | v102) & 1) == 0)
    {
      goto LABEL_134;
    }

    v91 = BitsPerComponent != 32 || EndianInfo != 0;
    if ((v30 & 0x2000) == 0)
    {
      v91 = 1;
    }

    if (((v91 | v102) & 1) == 0)
    {
LABEL_134:
      v48 = 1;
      goto LABEL_135;
    }

    v94 = BitsPerComponent == 32 && EndianInfo == 0x2000 && v100 != 0;
    v48 = v94 & IsFloat;
  }

LABEL_135:
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("          bitsPerComp: %zd\n", BitsPerComponent);
    if ((gIIODebugFlags & 0x10000000000) != 0)
    {
      ImageIOLog("           endianInfo: %d [0x%X]\n", EndianInfo, EndianInfo);
      if ((gIIODebugFlags & 0x10000000000) != 0)
      {
        ImageIOLog("             endianOK: %d\n", v48);
      }
    }
  }

  if (Decode)
  {
    OUTLINED_FUNCTION_3_7();
    v54 = v31 && *(v49 + 8) == 0.0;
    if (v50 == 0.0)
    {
      OUTLINED_FUNCTION_3_7();
      v51 = v31;
      if (Model)
      {
        goto LABEL_156;
      }
    }

    else
    {
      v51 = 0;
      if (Model)
      {
        goto LABEL_156;
      }
    }
  }

  else
  {
    v54 = 0;
    v51 = 1;
    if (Model)
    {
      goto LABEL_156;
    }
  }

  v55 = *&v54 & ((v20 & 0x20) >> 5);
  if (BitsPerComponent == 1)
  {
    v55 = 1;
  }

  v51 = v55 | v51 & ((v20 & 4) >> 2);
LABEL_156:
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("             decodeOK: %d\n", v51);
  }

  HasMask = _ImageHasMask();
  v57 = HasMask;
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("               maskOK: %d\n", !HasMask);
  }

  v58 = CGImageGetColorSpace(a2);
  MinimalPixelSize = _GetMinimalPixelSize(v58, BitsPerComponent, AlphaInfo);
  v60 = MinimalPixelSize;
  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("                bppOK: %d\n", BitsPerPixel == MinimalPixelSize);
  }

  v61 = IIO_CGImageWrapsIOSurface(a2, 1);
  v31 = BitsPerPixel == v60;
  v62 = v48;
  v63 = v44 & v106 & v109 & v105 & v51 & !v57 & v103 & v48;
  if (!v31)
  {
    v63 = 0;
  }

  if ((v63 & 1) == 0 && (*&v61 & ((v30 & 0x80000) >> 19)) == 0)
  {
    if (_ImageIsOpaque(a2))
    {
      v64 = BitsPerComponent;
      v65 = Type;
      v66 = v102;
      if ((v30 & 0x40000000) != 0)
      {
        v67 = 6;
      }

      else if ((v30 & 0x20000000) != 0)
      {
        v67 = 5;
      }

      else if ((v30 & 0x1000000) != 0)
      {
        v67 = 0;
      }

      else if ((v30 & 0x8000000) != 0)
      {
        v67 = 3;
      }

      else if ((v30 & 0x10000000) != 0)
      {
        v67 = 4;
      }

      else if ((v30 & 0x2000000) != 0)
      {
        v67 = 1;
      }

      else if ((v30 & 0x4000000) != 0)
      {
        v67 = 2;
      }

      else
      {
        v67 = 0x1000000;
      }
    }

    else
    {
      v68 = AlphaInfo - 1;
      v64 = BitsPerComponent;
      v65 = Type;
      v66 = v102;
      if ((v30 & 0x2000000) != 0 && (v68 < 2 || v104 && (gIIODebugFlags & 0x800000000) == 0))
      {
        v67 = 1;
      }

      else if ((v30 & 0x4000000) != 0 && (v68 < 2 || v104 && (gIIODebugFlags & 0x800000000) == 0))
      {
        v67 = 2;
      }

      else if ((v30 & 0x8000000) != 0)
      {
        v67 = 3;
      }

      else
      {
        if ((v30 & 0x10000000) != 0)
        {
          v67 = 4;
        }

        else
        {
          v67 = 1;
        }

        if ((v30 & 0x12000000) == 0)
        {
          v67 = 2;
        }

        if ((v30 & 0x16000000) != 0)
        {
          v65 = Type;
        }

        else
        {
          v65 = Type;
          if ((v30 & 0x40000000) != 0)
          {
            v67 = 6;
          }

          else
          {
            v67 = ((4 * v30) >> 31) & 5;
          }
        }
      }
    }

    if ((v30 & 0x1000000) != 0 && (v67 - 7) >= 0xFFFFFFFE && Model == kCGColorSpaceModelCMYK)
    {
      v67 = 0;
    }

    if ((v44 & 1) == 0)
    {
      if ((v30 & 0x1FF00) == 0x2000 || (((v30 & 0xA000) != 0) & IsFloat) != 0)
      {
        v64 = 32;
      }

      else if ((v101 == 0) | v66 & 1 && (BitsPerComponent < 9 || (v30 & 0x5000) == 0))
      {
        v86 = (v30 >> 11) & 1;
        if ((v30 & 0x15000) == 0)
        {
          v86 = 1;
        }

        if (v86)
        {
          v64 = 8;
        }

        else
        {
          v64 = 16;
        }

        v65 = Type;
      }

      else
      {
        v64 = 16;
      }
    }

    if (v67)
    {
      v71 = 0;
    }

    else
    {
      v71 = v64 == 16;
    }

    if (v71 && BitsPerComponent == 10)
    {
      v73 = 5;
    }

    else
    {
      v73 = v67;
    }

    v74 = v64;
    if ((v62 & 1) == 0)
    {
      if (v64 == 16 && (v30 & 0x14000) != 0)
      {
        v75 = v73 | 0x1000;
        goto LABEL_239;
      }

      v77 = v64 != 32 || v100 == 0;
      if ((v77 | v102))
      {
        v78 = 0;
      }

      else
      {
        v78 = 0x2000;
      }

      EndianInfo = v78;
    }

    v75 = EndianInfo | v73;
    if (v64 == 32)
    {
      v75 |= 0x100u;
      goto LABEL_243;
    }

    if (v64 != 16)
    {
LABEL_243:
      v79 = v105 & v106;
      v80 = v109 ^ 1;
      if (v65 != 7)
      {
        v80 = 1;
      }

      if ((v80 & 1) == 0 && v79)
      {
        v81 = CGImageGetColorSpace(a2);
        v35 = CGColorSpaceRetain(v81);
LABEL_324:
        v95 = _GetMinimalPixelSize(v35, v74, v73);
        *&v115 = __PAIR64__(v95, v74);
        *(&v115 + 1) = v35;
        *&v116 = v75;
        v96 = Decode;
        if (!v51)
        {
          v96 = 0;
        }

        *(&v116 + 1) = v96;
        if ((gIIODebugFlags & 0x10000000000) != 0)
        {
          ImageIOLog("CGImagePixelDataProviderCreate\n");
          if ((gIIODebugFlags & 0x10000000000) != 0)
          {
            v97 = IIO_BitmapInfoString(v75);
            ImageIOLog("        newBitmapInfo: %d  %s\n", v75, v97);
            if ((gIIODebugFlags & 0x10000000000) != 0)
            {
              ImageIOLog("    newbits/Component: %d\n", v74);
              if ((gIIODebugFlags & 0x10000000000) != 0)
              {
                ImageIOLog("        newbits/Pixel: %zd\n", v95);
              }
            }
          }
        }

        v15 = CGImagePixelDataProviderCreate(a2, &v115);
        if (!v15)
        {
          _cg_jpeg_mem_term("createPixelDataProviderConforming", 1499, "*** CGImagePixelDataProviderCreate failed (nil)\n");
        }

        goto LABEL_333;
      }

      if (v79)
      {
        v82 = CGColorSpaceRetain(ColorSpace);
LABEL_323:
        v35 = v82;
        goto LABEL_324;
      }

      v83 = v105 ^ 1;
      if (Model == kCGColorSpaceModelCMYK)
      {
        v84 = v105 ^ 1;
      }

      else
      {
        v84 = 1;
      }

      if ((v84 & 1) == 0)
      {
LABEL_254:
        v85 = MEMORY[0x1E695F118];
LABEL_322:
        v82 = CGColorSpaceCreateWithName(*v85);
        goto LABEL_323;
      }

      if (Model)
      {
        v83 = 1;
      }

      if (v83)
      {
        if ((v20 & 1) != 0 && (v75 & 0x100) != 0)
        {
          v85 = MEMORY[0x1E695F108];
          goto LABEL_322;
        }

        if (v20)
        {
          v85 = MEMORY[0x1E695F1C0];
          goto LABEL_322;
        }

        if ((v20 & 2) != 0)
        {
          goto LABEL_254;
        }

        if ((v20 & 4) == 0)
        {
          v35 = 0;
          goto LABEL_324;
        }
      }

      v85 = MEMORY[0x1E695F128];
      goto LABEL_322;
    }

LABEL_239:
    if (IsFloat)
    {
      v75 |= v101 >> 8;
    }

    else if ((v30 & 0x5000) == 0)
    {
      v75 |= 0x100u;
    }

    goto LABEL_243;
  }

  v15 = CGImagePixelDataProviderCreate(a2, &v115);
  if (!v15)
  {
    _cg_jpeg_mem_term("createPixelDataProviderConforming", 1334, "*** CGImagePixelDataProviderCreate (orig image) failed (nil)\n");
  }

LABEL_335:
  if ((gIIODebugFlags & 0x20000000000) != 0)
  {
    v98 = CFAbsoluteTimeGetCurrent();
    ImageIOLog("    IIOImageDestination::createPixelDataProviderConforming - %g ms\n", (v98 - Current) * 1000.0);
  }

  return v15;
}

uint64_t _ImageGetAlphaInfo(CGImage *a1)
{
  AlphaInfo = CGImageGetAlphaInfo(a1);
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  if (ColorSpace)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(ColorSpace);
  }

  else
  {
    NumberOfComponents = 0;
  }

  v6 = CGImageGetBitsPerComponent(a1) * NumberOfComponents;
  if (BitsPerPixel == v6)
  {
    v7 = kCGImageAlphaNone;
  }

  else
  {
    v7 = AlphaInfo;
  }

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = BitsPerPixel > v6;
  }

  if (v8)
  {
    return 5;
  }

  else
  {
    return v7;
  }
}

uint64_t IIOImageDestination::adjustWriteModesForWriter(uint64_t a1, uint64_t a2, int a3, int a4, int a5, unsigned int a6, CGColorSpace *a7, IIODictionary *this)
{
  if (!*(a1 + 64) || !*(a1 + 72))
  {
    return 0;
  }

  v16 = a2;
  if (this)
  {
    v16 = a2;
    if (IIODictionary::containsKey(this, @"kCGImageDestinationAllowAlpha"))
    {
      if (IIODictionary::getBoolForKey(this, @"kCGImageDestinationAllowAlpha"))
      {
        v16 = a2;
      }

      else
      {
        v16 = a2 & 0xE1FFFFFF;
      }
    }
  }

  if (CFStringCompare(*(a1 + 72), @"public.png", 0) == kCFCompareEqualTo)
  {
    if (a3 > 7)
    {
      goto LABEL_22;
    }

    if (a4 == 5)
    {
      if ((a5 - 1) > 3)
      {
LABEL_22:
        if (a6 <= 1)
        {
          v16 = v16;
        }

        else
        {
          v16 = v16 & 0xFFFFBFFF;
        }

        goto LABEL_43;
      }
    }

    else if (!a4 && (a5 - 1) >= 4)
    {
      goto LABEL_22;
    }

    LODWORD(v16) = v16 & 0xFFFFF8FF;
    goto LABEL_22;
  }

  if (CFStringCompare(*(a1 + 72), @"public.heic", 0) == kCFCompareEqualTo)
  {
    if (a5)
    {
      v19 = 0;
    }

    else
    {
      v19 = a3 == 16;
    }

    if (v19 && a4 == 1)
    {
      v16 = v16 & 0xFFFEAFFF;
    }

    else
    {
      v16 = v16;
    }

    goto LABEL_43;
  }

  if (CFStringCompare(*(a1 + 72), @"public.jpeg", 0) == kCFCompareEqualTo)
  {
    if (((a4 == 0) & (a2 >> 2)) != 0)
    {
      v16 = v16 & 0x9FFFFFFF;
    }

    else
    {
      v16 = v16;
    }

    goto LABEL_43;
  }

  if (CFStringCompare(*(a1 + 72), @"com.microsoft.bmp", 0) == kCFCompareEqualTo)
  {
    if (a4 != 5 || a3 == 8)
    {
      v16 = v16;
    }

    else
    {
      v16 = v16 & 0xFFFFFFEF;
    }

    goto LABEL_43;
  }

  if (CFStringCompare(*(a1 + 72), @"com.apple.atx", 0) == kCFCompareEqualTo)
  {
    v26 = *(a1 + 88);
    if (v26 && IIODictionary::containsKey(v26, @"kCGImagePropertyEncoder"))
    {
      v27 = *(a1 + 88);
    }

    else
    {
      if (!this)
      {
        goto LABEL_58;
      }

      if (!IIODictionary::containsKey(this, @"kCGImagePropertyEncoder"))
      {
        goto LABEL_44;
      }

      v27 = this;
    }

    ObjectForKey = IIODictionary::getObjectForKey(v27, @"kCGImagePropertyEncoder");
    if (ObjectForKey)
    {
      if (CFEqual(ObjectForKey, @"kCGImageProperty420fEncoder"))
      {
        v16 = v16 & 0xF4FFFFFF;
      }

      else
      {
        v16 = v16;
      }
    }

LABEL_43:
    if (!this)
    {
      goto LABEL_58;
    }

    goto LABEL_44;
  }

  v17 = @"org.khronos.ktx";
  Uint32ForKey = CFStringCompare(*(a1 + 72), @"org.khronos.ktx", 0);
  if (!Uint32ForKey)
  {
    if (!this)
    {
      goto LABEL_90;
    }

    if (IIODictionary::containsKey(this, @"kCGImagePropertyEncoder"))
    {
      v29 = IIODictionary::getObjectForKey(this, @"kCGImagePropertyEncoder");
      if (CFEqual(v29, @"kCGImagePropertyPVREncoder"))
      {
        v30 = kCGImageTypeIdentifierPVR;
LABEL_85:
        v17 = *v30;
        goto LABEL_86;
      }

      if (CFEqual(v29, @"kCGImagePropertyBCEncoder"))
      {
        v30 = kCGImageTypeIdentifierBC;
        goto LABEL_85;
      }

      if (CFEqual(v29, @"kCGImagePropertyASTCEncoder"))
      {
        v17 = @"org.khronos.astc";
      }
    }

LABEL_86:
    Uint32ForKey = IIODictionary::containsKey(this, @"kCGImagePropertyBCFormat");
    if (Uint32ForKey)
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(this, @"kCGImagePropertyBCFormat");
      v31 = 0;
      if ((Uint32ForKey - 36494) >= 2 && Uint32ForKey != 36284)
      {
        v31 = Uint32ForKey != 36286;
      }

      goto LABEL_91;
    }

LABEL_90:
    v31 = 0;
LABEL_91:
    WriterHandler = IIO_WriterHandler::GetWriterHandler(Uint32ForKey);
    WriterForType = IIO_WriterHandler::findWriterForType(WriterHandler, v17, 1, this, v33);
    if (WriterForType)
    {
      LODWORD(v16) = HEIFAuxImage::auxiliaryPixelFormat(WriterForType);
    }

    if (v31)
    {
      v16 = v16 & 0xFFFE7FFF;
    }

    else
    {
      v16 = v16;
    }

    if (a7)
    {
      switch(a4)
      {
        case 2:
          v16 = v16 & 0xFFFBFFFF;
          break;
        case 1:
          if (!IIO_CGColorSpaceNameMatchesName(a7, *MEMORY[0x1E695F1C0]) && !IIO_CGColorSpaceNameMatchesName(a7, *MEMORY[0x1E695F0B8]))
          {
            v36[0] = 0;
            v36[1] = 0;
            v35 = *MEMORY[0x1E695F0A0];
            IIOColorSpace::IIOColorSpace(v36, *MEMORY[0x1E695F0A0]);
            if (IIO_CGColorSpaceNameMatchesName(a7, v35))
            {
              v16 = v16;
            }

            else
            {
              v16 = v16 & 0xFFFBFFFF;
            }

            IIOColorSpace::~IIOColorSpace(v36);
          }

          break;
        case 0:
          if (IIO_CGColorSpaceNameMatchesName(a7, *MEMORY[0x1E695F128]))
          {
            v16 = v16;
          }

          else
          {
            v16 = v16 & 0xFFFBFFFF;
          }

          break;
      }
    }

    goto LABEL_43;
  }

  if (CFStringCompare(*(a1 + 72), @"com.compuserve.gif", 0))
  {
    CFStringCompare(*(a1 + 72), @"com.apple.icns", 0);
    goto LABEL_43;
  }

  if (!this)
  {
    goto LABEL_58;
  }

  if (IIODictionary::containsKeyGroup(this, @"ImageColorMap", @"{GIF}"))
  {
    v16 = v16 | 0x1000000;
  }

  else
  {
    v16 = v16;
  }

LABEL_44:
  if (!IIODictionary::containsKey(this, @"Depth"))
  {
    goto LABEL_58;
  }

  v22 = IIODictionary::getUint32ForKey(this, @"Depth");
  switch(v22)
  {
    case 8u:
      if ((a2 & 0x800) == 0)
      {
        goto LABEL_58;
      }

LABEL_53:
      v24 = v16 & 0xFFFF5FFF;
      if (v22 >= 0x11)
      {
        v24 = v16;
      }

      if (v22 >= 9)
      {
        v16 = v24;
      }

      else
      {
        v16 = v24 & 0xFFFEAFFF;
      }

      goto LABEL_58;
    case 0x20u:
      v23 = 40960;
      break;
    case 0x10u:
      v23 = 86016;
      break;
    default:
      goto LABEL_58;
  }

  if ((a2 & v23) != 0)
  {
    goto LABEL_53;
  }

LABEL_58:
  if (v16 == a2)
  {
    return a2;
  }

  if ((gIIODebugFlags & 0x10000000000) != 0)
  {
    ImageIOLog("        adjusted mode: 0x%X  ->  0x%X\n", a2, v16);
  }

  return v16;
}

void sub_185EAD95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOColorSpace::~IIOColorSpace(va);
  _Unwind_Resume(a1);
}

BOOL _ImageIsOpaque(CGImage *a1)
{
  if (_ImageHasMask())
  {
    return 0;
  }

  AlphaInfo = _ImageGetAlphaInfo(a1);
  return AlphaInfo != 7 && (AlphaInfo - 5) < 0xFFFFFFFC;
}

size_t _GetMinimalPixelSize(CGColorSpace *a1, uint64_t a2, int a3)
{
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(a1);
  if (a3)
  {
    v6 = NumberOfComponents + 1;
  }

  else
  {
    v6 = NumberOfComponents;
  }

  return v6 * a2;
}

uint64_t IIO_CGImageWrapsIOSurface(uint64_t result, int a2)
{
  if (result)
  {
    result = CGImageGetImageProvider();
    if (result)
    {
      Property = CGImageProviderGetProperty();
      if (Property)
      {
        v4 = Property == *MEMORY[0x1E695E4D0];
      }

      else
      {
        v4 = 0;
      }

      result = v4;
      if (!v4)
      {
        if (a2)
        {
          return CGImageProviderGetCallbackVersion() > 1;
        }
      }
    }
  }

  return result;
}

uint64_t CGImagePixelDataProviderCreate(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a2 + 8))
    {
      if (CGImagePixelDataProviderGetTypeID::once != -1)
      {
        CGImagePixelDataProviderCreate_cold_1();
      }

      *(_CFRuntimeCreateInstance() + 16) = 1;
      atomic_fetch_add_explicit(&gPDPCount, 1uLL, memory_order_relaxed);
      operator new();
    }

    _cg_jpeg_mem_term("CGImagePixelDataProviderCreate", 1676, "*** ERROR: CGImagePixelDataProviderCreate is called with NULL-dstFormat-colorspace\n");
  }

  else
  {
    _cg_jpeg_mem_term("CGImagePixelDataProviderCreate", 1671, "*** ERROR: CGImagePixelDataProviderCreate is called with NULL-image\n");
  }

  return 0;
}

void IIOImagePixelDataProvider::IIOImagePixelDataProvider(IIOImagePixelDataProvider *this, CGImage *a2, vImage_CGImageFormat *a3, CGColor *a4)
{
  *this = &unk_1EF4DE880;
  if (a2)
  {
    if (a3)
    {
      if (a3->colorSpace)
      {
        IIOImagePixelDataProvider::setup(this, a2, a3, a4);
        return;
      }

      v4 = -3;
    }

    else
    {
      v4 = -2;
    }
  }

  else
  {
    v4 = -1;
  }

  *(this + 59) = v4;
}

void IIOImagePixelDataProvider::setup(IIOImagePixelDataProvider *this, CGImage *a2, vImage_CGImageFormat *a3, CGColorRef color)
{
  v39 = *MEMORY[0x1E69E9840];
  *(this + 1) = 0;
  *(this + 120) = 0u;
  v8 = (this + 120);
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 25) = 0;
  *(this + 28) = CGColorRetain(color);
  *(this + 24) = 0;
  *(this + 233) = 0;
  *(this + 32) = 0;
  *(this + 264) = 0;
  *(this + 59) = 0;
  *(this + 22) = 0;
  *(this + 2) = CGImageRetain(a2);
  *(this + 3) = CGImageGetWidth(a2);
  Height = CGImageGetHeight(a2);
  *(this + 4) = Height;
  *(this + 23) = 0;
  *(this + 30) = 0;
  *(this + 31) = 0;
  IIOImagePixelDataProvider::initvImageCGImageFormat(Height, a2, this + 1);
  *(this + 10) = *&a3->bitsPerComponent;
  *(this + 11) = CGColorSpaceRetain(a3->colorSpace);
  *(this + 12) = *&a3->bitmapInfo;
  *(this + 13) = a3->decode;
  *(this + 28) = CGImageGetRenderingIntent(*(this + 2));
  memset(v38, 0, sizeof(v38));
  if (color)
  {
    CGColorGetColorSpace(color);
    if (CGColorSpaceEqualToColorSpace())
    {
      Components = CGColorGetComponents(color);
    }

    else if (IIO_ConvertCGColorToColorComponents(color, *(this + 11)))
    {
      Components = v38;
    }

    else
    {
      Components = 0;
    }
  }

  else
  {
    Components = 0;
  }

  v11 = *(this + 14) & 0xF0000;
  if (v11 == 196608)
  {
    _cg_jpeg_mem_term("setup", 163, "*** NOTE: vImageConverter_CreateWithCGImageFormat cannot handle kCGImagePixelFormatRGB101010 - using workaround\n");
    *(this + 16) = CGImageGetBytesPerRow(*(this + 2));
    *(this + 18) = CGImageGetWidth(*(this + 2)) * (*(this + 21) >> 3);
    *(this + 22) = CGImageGetHeight(*(this + 2));
    *(this + 24) = IIOImagePixelDataProvider::GetBytesDataProviderRGB101010;
    v13 = *(this + 18);
LABEL_13:
    *(this + 20) = CGImageGetHeight(*(this + 2)) * v13;
    v14 = *(this + 16);
    *(this + 21) = CGImageGetHeight(*(this + 2)) * v14;
    return;
  }

  if (v11 == 0x40000)
  {
    *(this + 234) = 1;
    *(this + 10) = 0x4000000010;
    *(this + 16) = CGImageGetBytesPerRow(*(this + 2));
    Width = CGImageGetWidth(*(this + 2));
    v13 = 8 * Width;
    *(this + 18) = 8 * Width;
    if (Width >> 61)
    {
      abort();
    }

    *(this + 24) = IIOImagePixelDataProvider::GetBytesDataProviderCIF10;
    goto LABEL_13;
  }

  error = 0;
  v15 = vImageConverter_CreateWithCGImageFormat(this + 1, this + 2, Components, 0x10u, &error);
  *v8 = v15;
  if (!v15)
  {
    v20 = error;
    v21 = IIO_vImageErrorString(error);
    LogWarning("setup", 183, "Could not create vImageConverter, vImageConverter_CreateWithCGImageFormat: err=%d [%s]\n", v20, v21);
    v22 = *(this + 14);
    v23 = *(this + 10);
    v24 = *(this + 11);
    v25 = IIO_BitmapInfoString(v22);
    _cg_jpeg_mem_term("setup", 184, "*** srcFormat: bpc: %d   bpp: %d  bmi: 0x%08X %s\n", v23, v24, v22, v25);
    v26 = *(this + 24);
    v27 = *(this + 20);
    v28 = *(this + 21);
    v29 = IIO_BitmapInfoString(v26);
    _cg_jpeg_mem_term("setup", 185, "*** dstFormat: bpc: %d   bpp: %d  bmi: 0x%08X %s\n", v27, v28, v26, v29);
    *(this + 59) = -5;
    return;
  }

  *(this + 16) = CGImageGetBytesPerRow(*(this + 2));
  v16 = CGImageGetWidth(*(this + 2));
  v17 = *(this + 21);
  v18 = v16 * v17 + 7;
  *(this + 18) = v18 >> 3;
  v19 = *(this + 16);
  if (v19 > v18 >> 3)
  {
    if (*(this + 14) == *(this + 24))
    {
      if (MEMORY[0x186603EF0](this + 40, this + 80))
      {
        v19 = *(this + 16);
LABEL_23:
        *(this + 18) = v19;
        goto LABEL_24;
      }

      if (*(this + 11) <= *(this + 21))
      {
        _cg_jpeg_mem_term("setup", 203, "*** image: %p  bad rowbytes?   size: %5zd x %5zd      _srcRowBytes: %d   _dstRowBytes: %d\n", *(this + 2), *(this + 3), *(this + 4), *(this + 16), *(this + 18));
      }
    }

    else if (*(this + 11) == v17 && *(this + 10) == *(this + 20))
    {
      goto LABEL_23;
    }
  }

LABEL_24:
  if (CGImageGetImageProvider())
  {
    Property = CGImageProviderGetProperty();
    if (Property)
    {
      if (CFEqual(Property, *MEMORY[0x1E695E4D0]))
      {
        v31 = CGImageProviderGetProperty();
        if (v31)
        {
          v32 = v31;
          v33 = CFGetTypeID(v31);
          if (v33 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v32, kCFNumberLongType, this + 176);
          }
        }
      }
    }

    v34 = IIOImagePixelDataProvider::GetBytesImageProvider;
LABEL_31:
    *(this + 24) = v34;
    goto LABEL_32;
  }

  *(this + 24) = IIOImagePixelDataProvider::GetBytesDataProvider;
  if (CGImageGetDataProvider(a2) && CGDataProviderGetSizeOfData() == -1)
  {
    if (!MEMORY[0x186603EF0](this + 40, this + 80))
    {
      if (!vImageConverter_MustOperateOutOfPlace(*v8, 0, 0, 0) && *(this + 18) >= *(this + 16))
      {
        *(this + 264) = 1;
      }

      v34 = IIOImagePixelDataProvider::GetBytesCGAccessSessionConvert;
      goto LABEL_31;
    }

    *(this + 24) = IIOImagePixelDataProvider::GetBytesCGAccessSessionNoConvert;
    *(this + 18) = *(this + 16);
  }

LABEL_32:
  v35 = *(this + 18);
  *(this + 20) = CGImageGetHeight(*(this + 2)) * v35;
  v36 = *(this + 16);
  *(this + 21) = CGImageGetHeight(*(this + 2)) * v36;
  if ((gIIODebugFlags & 0x400000000) != 0)
  {
    vImageConverter_Print();
  }
}

const CGFloat *IIOImagePixelDataProvider::initvImageCGImageFormat(IIOImagePixelDataProvider *this, CGImageRef image, vImage_CGImageFormat *a3)
{
  a3->bitsPerComponent = CGImageGetBitsPerComponent(image);
  a3->bitsPerPixel = CGImageGetBitsPerPixel(image);
  a3->colorSpace = CGImageGetColorSpace(image);
  a3->bitmapInfo = CGImageGetBitmapInfo(image);
  a3->renderingIntent = CGImageGetRenderingIntent(image);
  a3->version = 0;
  result = CGImageGetDecode(image);
  a3->decode = result;
  return result;
}

void IIOImageDestination::setSourceImageAtIndex(IIOImageDestination *this, CGImageRef image, uint64_t a3)
{
  v6 = this + 104;
  v7 = (*(this + 14) - *(this + 13)) >> 3;
  v8 = *(this + 12);
  if (image)
  {
    CGImageRetain(image);
  }

  if (a3 >= v7)
  {
    if (a3 >= v8)
    {
      _cg_jpeg_mem_term("setSourceImageAtIndex", 4603, "setSourceImageAtIndex index (%d) larger than vectorCount (%d) and image count (%d\n", a3, v7, v8);
    }

    else
    {
      v12 = *(this + 13);
      v13 = *(this + 14);
      for (i = (v13 - v12) >> 3; i <= a3; i = (v13 - v12) >> 3)
      {
        v15 = *(this + 15);
        if (v13 >= v15)
        {
          v16 = v15 - v12;
          if (v16 >> 2 <= i + 1)
          {
            v17 = i + 1;
          }

          else
          {
            v17 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v18 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v17;
          }

          std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(v6, v18);
        }

        *v13++ = 0;
        *(this + 14) = v13;
        v12 = *(this + 13);
      }

      *(v12 + 8 * a3) = image;
    }
  }

  else
  {
    v9 = *(this + 13);
    v10 = (*(this + 14) - v9) >> 3;
    if (v10 <= a3)
    {
      goto LABEL_23;
    }

    v11 = *(v9 + 8 * a3);
    if (v11)
    {
      CGImageRelease(v11);
      v9 = *(this + 13);
      v10 = (*(this + 14) - v9) >> 3;
    }

    if (v10 <= a3)
    {
LABEL_23:
      __break(1u);
    }

    else
    {
      *(v9 + 8 * a3) = image;
    }
  }
}

void IIOWritePlugin::IIOWritePlugin(IIOWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, int a4)
{
  *this = &unk_1EF4DE1B8;
  *(this + 8) = a4;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 36) = IIOPluginShouldDebugWriteImageBlocks();
}

const __CFArray *IIOImageDestination::pixelProviderCount(IIOImageDestination *this)
{
  result = *(this + 12);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

uint64_t PNGWritePlugin::writePrologue(PNGWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3)
{
  data = 0;
  AlphaInfo = IIOImagePixelDataProvider::getAlphaInfo(a2);
  v82 = AlphaInfo;
  if (AlphaInfo)
  {
    if (AlphaInfo >= 5)
    {
      v84 = *(this + 121) ^ 1;
      v7 = 1;
    }

    else
    {
      v7 = 1;
      v84 = 1;
    }
  }

  else
  {
    v7 = *(this + 121) ^ 1;
    v84 = v7;
  }

  valuePtr = 0.0;
  IIOImageSource::imageReadRef(a2);
  CGImageGetImageProvider();
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    writePrologue\n");
  }

  v8 = *(this + 18);
  v9 = *(this + 19);
  v10 = IIOImageSource::count(a2);
  v85 = IIO_Reader::testHeaderSize(a2);
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
  SourceGeomColorSpace = IIOImagePlus::getSourceGeomColorSpace(a2);
  result = 4294967246;
  if (BytesPerRow && SourceGeomColorSpace)
  {
    v86 = a3;
    v14 = v10;
    v83 = v8;
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(SourceGeomColorSpace);
    Model = CGColorSpaceGetModel(SourceGeomColorSpace);
    if (CGColorSpaceGetType() == 7)
    {
      v17 = *(this + 124);
    }

    else
    {
      v17 = 0;
    }

    v88 = v9;
    if (v17 == 1)
    {
      BaseColorSpace = CGColorSpaceGetBaseColorSpace(SourceGeomColorSpace);
      v19 = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
      ColorTableCount = CGColorSpaceGetColorTableCount(SourceGeomColorSpace);
      *(this + 13) = ColorTableCount;
      v21 = malloc_type_malloc(ColorTableCount * v19, 0x100004077774924uLL);
      *(this + 14) = v21;
      CGColorSpaceGetColorTable(SourceGeomColorSpace, v21);
      SourceGeomColorSpace = CGColorSpaceGetBaseColorSpace(SourceGeomColorSpace);
      CGColorSpaceGetType();
      Model = CGColorSpaceGetModel(SourceGeomColorSpace);
    }

    v22 = NumberOfComponents + (v7 & 1);
    appleflags = _cg_png_get_appleflags(a2);
    v24 = _cg_GifLastError(a2);
    if (v22 - 5 >= 0xFFFFFFFFFFFFFFFCLL)
    {
      v25 = v24;
      v26 = appleflags;
      if (!(*(this + 121) & 1 | (appleflags != 24)))
      {
        v26 = 32;
      }

      if (v22 * v24 == v26)
      {
        if (v88)
        {
          if ((v17 & v7) != 1)
          {
LABEL_31:
            v29 = 2;
            v30 = v14;
            if (Model != kCGColorSpaceModelIndexed && Model != kCGColorSpaceModelRGB)
            {
              v35 = v86;
              if (Model)
              {
                v80 = 0;
                v81 = 1;
              }

              else
              {
                v80 = 0;
                v81 = 0;
                if (v84)
                {
                  v29 = 4;
                }

                else
                {
                  v29 = 0;
                }
              }

              goto LABEL_41;
            }

            v80 = v84;
            v81 = v84 ^ 1;
            if (v84)
            {
              v29 = 6;
            }

            else
            {
              v29 = 2;
            }

LABEL_40:
            v35 = v86;
LABEL_41:
            if (IIODictionary::containsKeyGroup(v35, @"InterlaceType", @"{PNG}"))
            {
              v36 = IIODictionary::getUint32ForKeyGroup(v35, @"InterlaceType", @"{PNG}") != 0;
            }

            else
            {
              v36 = 0;
            }

            _cg_png_set_IHDR(*(this + 5), *(this + 6), v30, v85, v25, v29, v36, 0, 0);
            if (IIODictionary::containsKey(v35, @"DPIWidth") && IIODictionary::containsKey(v35, @"DPIHeight"))
            {
              FloatForKey = IIODictionary::getFloatForKey(v35, @"DPIWidth");
              v38 = IIODictionary::getFloatForKey(v35, @"DPIHeight");
              _cg_png_set_pHYs(*(this + 5), *(this + 6), vcvtms_u32_f32((FloatForKey / 0.0254) + 0.5), vcvtms_u32_f32((v38 / 0.0254) + 0.5), 1);
            }

            Property = CGImageProviderGetProperty();
            if (Property)
            {
              CFNumberGetValue(Property, kCFNumberDoubleType, &valuePtr);
            }

            v40 = 0.0;
            v41 = v88;
            if (IIODictionary::containsKeyGroup(v35, @"Gamma", @"{PNG}"))
            {
              FloatForKeyGroup = IIODictionary::getFloatForKeyGroup(v35, @"Gamma", @"{PNG}");
              if (FloatForKeyGroup > 0.0)
              {
                v43 = FloatForKeyGroup;
                if (FloatForKeyGroup <= 21474.83)
                {
                  if (FloatForKeyGroup != 0.0)
                  {
                    _cg_png_set_gAMA(*(this + 5), *(this + 6), FloatForKeyGroup);
                    v44 = valuePtr == v43;
                    goto LABEL_60;
                  }

                  v40 = FloatForKeyGroup;
                }
              }
            }

            if (valuePtr == 0.0)
            {
              v44 = 0;
            }

            else
            {
              _cg_png_set_gAMA(*(this + 5), *(this + 6), valuePtr);
              v44 = 1;
            }

            v43 = v40;
LABEL_60:
            if (IIODictionary::containsKeyGroup(v35, @"Chromaticities", @"{PNG}"))
            {
              ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v35, @"Chromaticities", @"{PNG}");
              v91[0] = 0;
              v91[1] = 0;
              *&v92 = 0;
              IIOArray::IIOArray(v91, ObjectForKeyGroup);
              if (IIOArray::getCount(v91) >= 8)
              {
                DoubleAtIndex = IIOArray::getDoubleAtIndex(v91, 0);
                v47 = IIOArray::getDoubleAtIndex(v91, 1);
                v48 = IIOArray::getDoubleAtIndex(v91, 2);
                v49 = IIOArray::getDoubleAtIndex(v91, 3);
                v50 = IIOArray::getDoubleAtIndex(v91, 4);
                v51 = IIOArray::getDoubleAtIndex(v91, 5);
                v52 = IIOArray::getDoubleAtIndex(v91, 6);
                v53 = IIOArray::getDoubleAtIndex(v91, 7);
                _cg_png_set_cHRM(*(this + 5), *(this + 6), DoubleAtIndex, v47, v48, v49, v50, v51, v52, v53);
              }

              IIOArray::~IIOArray(v91);
            }

            if (v88)
            {
              goto LABEL_106;
            }

            v91[0] = 0;
            ExifBufferFromPropertiesJPEG = CreateExifBufferFromPropertiesJPEG(v35, v30, v85, SourceGeomColorSpace, 0, @"public.jpeg", v91);
            if (ExifBufferFromPropertiesJPEG)
            {
              v55 = ExifBufferFromPropertiesJPEG;
              if (v91[0] >= 7)
              {
                _cg_png_set_eXIf_1(*(this + 5), *(this + 6), (LODWORD(v91[0]) - 6), (ExifBufferFromPropertiesJPEG + 6));
              }

              free(v55);
            }

            ObjectForKey = IIODictionary::getObjectForKey(v35, @"{MetaData}");
            v57 = CGImageMetadataCreateFromLegacyProps(v35);
            v58 = v57;
            if (ObjectForKey)
            {
              if (v57)
              {
                CGImageMetadataMerge(ObjectForKey, v57, 0);
                CFRelease(v58);
              }

              CFRetain(ObjectForKey);
            }

            else
            {
              ObjectForKey = v57;
              if (!v57)
              {
                goto LABEL_80;
              }
            }

            XMPData = CGImageMetadataCreateXMPData(ObjectForKey, 0);
            CFRelease(ObjectForKey);
            if (XMPData)
            {
              v87 = v44;
              v94 = 0;
              v92 = 0u;
              v93 = 0u;
              *v91 = 0u;
              BytePtr = CFDataGetBytePtr(XMPData);
              if (BytePtr)
              {
                v61 = BytePtr;
                Length = CFDataGetLength(XMPData);
                if (Length)
                {
                  v63 = Length;
                  v64 = malloc_type_calloc(Length + 1, 1uLL, 0x100004077774924uLL);
                  if (v64)
                  {
                    v65 = v64;
                    memcpy(v64, v61, v63);
                    LODWORD(v91[0]) = 1;
                    v91[1] = "XML:com.adobe.xmp";
                    v92 = v65;
                    v93 = v63;
                    v94 = 0;
                    _cg_png_set_text(*(this + 5), *(this + 6), v91, 1);
                    free(v65);
                  }
                }
              }

              CFRelease(XMPData);
              v41 = v88;
              v44 = v87;
            }

LABEL_80:
            if (((v44 | *(this + 124)) & 1) == 0)
            {
              v90 = 0;
              error = 0;
              if ((CGColorSpaceContainsFlexGTCInfo() & 1) == 0)
              {
                CGColorSpaceGetCICPInfo();
              }

              Ref = IIOImageSource::imageReadRef(a2);
              RenderingIntent = CGImageGetRenderingIntent(Ref);
              data = CGColorSpaceCopyData(SourceGeomColorSpace, RenderingIntent);
              if (data)
              {
                v68 = ColorSyncProfileCreate(data, &error);
                if (v68)
                {
                  v69 = v68;
                  SanitizedCopy = ColorSyncProfileCreateSanitizedCopy();
                  CFRelease(v69);
                }

                else
                {
                  SanitizedCopy = 0;
                }

                CFRelease(data);
                data = 0;
                if (SanitizedCopy)
                {
                  if (v90)
                  {
                    if (((v81 | v80) & 1) != 0 && v43 == 0.0)
                    {
                      v71 = 0;
                      goto LABEL_95;
                    }
                  }

                  else
                  {
                    data = ColorSyncProfileCopyData(SanitizedCopy, &error);
                    if (data)
                    {
                      v75 = CFDataGetBytePtr(data);
                      v76 = CFDataGetLength(data);
                      if (v75 && v76)
                      {
                        CGColorSpaceGetName(SourceGeomColorSpace);
                        operator new();
                      }

                      CFRelease(data);
                      data = 0;
                    }
                  }

LABEL_105:
                  CFRelease(SanitizedCopy);
                  goto LABEL_106;
                }
              }

              if (((v81 | v80) & 1) != 0 && v43 == 0.0)
              {
                SanitizedCopy = 0;
                v71 = 1;
LABEL_95:
                v72 = IIOImageSource::imageReadRef(a2);
                v73 = CGImageGetRenderingIntent(v72) - 1;
                if (v73 > 3)
                {
                  v74 = 0;
                }

                else
                {
                  v74 = dword_18620AF10[v73];
                }

                _cg_png_set_sRGB(*(this + 5), *(this + 6), v74);
                if (v71)
                {
                  goto LABEL_106;
                }

                goto LABEL_105;
              }
            }

LABEL_106:
            if (IIODictionary::containsKeyGroup(v35, @"kCGImagePropertyPNGCompressionFilter", @"{PNG}"))
            {
              Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(v35, @"kCGImagePropertyPNGCompressionFilter", @"{PNG}");
              if (Uint32ForKeyGroup <= 0xF8)
              {
                _cg_png_set_filter(*(this + 5), 0, Uint32ForKeyGroup);
                _cg_png_set_compression_strategy(*(this + 5), 1);
              }
            }

            _cg_png_set_write_fn(*(this + 5), *(this + 2), write_fn, flush_fn);
            if (v41 || v83 < 2)
            {
              if (v41)
              {
                return 0;
              }
            }

            else
            {
              _cg_png_set_acTL(*(this + 5), *(this + 6), *(this + 18), *(this + 20));
            }

            _cg_png_write_info(*(this + 5), *(this + 6));
            if ((v84 & 1) == 0)
            {
              if (v82 == 6)
              {
                v78 = *(this + 5);
                v79 = 0;
                goto LABEL_118;
              }

              if (v82 == 5)
              {
                v78 = *(this + 5);
                v79 = 1;
LABEL_118:
                _cg_png_set_filler(v78, 0, v79);
              }
            }

            return 0;
          }

          goto LABEL_25;
        }

        v27 = _cg_png_create_write_struct("1.6.43", 0, handle_write_error, handle_write_warning);
        *(this + 5) = v27;
        if (v27)
        {
          _cg_png_set_compression_level(v27, 1);
          info_struct = _cg_png_create_info_struct(*(this + 5));
          *(this + 6) = info_struct;
          if (info_struct)
          {
            _cg_png_set_option(*(this + 5), 2u, 3);
            _cg_png_set_benign_errors(*(this + 5), 1);
            if ((v17 & v7 & 1) == 0)
            {
              if (*(this + 124) == 1)
              {
                _cg_png_set_PLTE(*(this + 5), *(this + 6), *(this + 14), *(this + 26));
                v31 = IIODictionary::getObjectForKeyGroup(v86, @"kCGImagePropertyPNGTransparency", @"{PNG}");
                v30 = v14;
                if (v31)
                {
                  v32 = v31;
                  v33 = CFDataGetBytePtr(v31);
                  v34 = CFDataGetLength(v32);
                  if (*(this + 13) == v34)
                  {
                    _cg_png_set_tRNS(*(this + 5), *(this + 6), v33, v34, 0);
                  }
                }

                v80 = 0;
                v81 = 0;
                v29 = 3;
                goto LABEL_40;
              }

              goto LABEL_31;
            }

LABEL_25:
            *(this + 84) = v25;
            v80 = 1;
            v81 = 0;
            *(this + 122) = 1;
            v25 = 8;
            v29 = 6;
            v30 = v14;
            goto LABEL_40;
          }
        }

        else
        {
          PNGWritePlugin::writePrologue();
        }
      }
    }

    return 4294967246;
  }

  return result;
}

uint64_t IIOImageDestination::getImagePropertiesAtIndex(IIOImageDestination *this, unint64_t a2)
{
  v2 = *(this + 16);
  v3 = (*(this + 17) - v2) >> 3;
  if (v3 > a2)
  {
    return *(v2 + 8 * a2);
  }

  _cg_jpeg_mem_term("getImagePropertiesAtIndex", 4617, "*** ERROR: IIOImageDestination::getImagePropertiesAtIndex - index (%d) larger than vector size (%d)\n", a2, v3);
  return 0;
}

uint64_t _cg_png_set_compression_level(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 220) = a2;
  }

  return result;
}

CFIndex validValueForKey(unsigned __int16 *a1, const __CFString *cf)
{
  v2 = 0;
  if (!a1 || !cf)
  {
    return v2;
  }

  v5 = CFGetTypeID(cf);
  if (v5 != CFArrayGetTypeID() || (Count = CFArrayGetCount(cf)) == 0)
  {
    v15 = CFGetTypeID(cf);
    if (v15 == CFNumberGetTypeID())
    {
      v14 = 0;
      v7 = 0;
      v9 = CFNumberIsFloatType(cf) == 0;
      v13 = 1;
      goto LABEL_15;
    }

    v14 = 0;
    v7 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v7 = Count;
  if (Count < 1)
  {
    v14 = 1;
    v13 = 1;
LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  v8 = 0;
  v9 = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, v8);
    v11 = CFGetTypeID(ValueAtIndex);
    TypeID = CFNumberGetTypeID();
    v13 = v11 == TypeID;
    if (v11 != TypeID)
    {
      break;
    }

    v9 = (CFNumberIsFloatType(ValueAtIndex) == 0) & v9;
    ++v8;
  }

  while (v7 != v8);
  v14 = 1;
LABEL_15:
  v16 = CFGetTypeID(cf);
  v17 = CFStringGetTypeID();
  v18 = v17;
  v19 = a1[2];
  if (v19 == 4)
  {
    v20 = *a1;
    if (a1[1] == 7)
    {
      switch(v20)
      {
        case 0xA000u:
          goto LABEL_20;
        case 0x9101u:
          return 4;
        case 0x9000u:
LABEL_20:
          if (v9)
          {
            if (v7 <= 1)
            {
              v2 = 0;
              if (v20 == 36864 && v16 == v17)
              {
                return CFStringGetLength(cf) == 4;
              }

              return v2;
            }

            return 4;
          }

          break;
      }
    }
  }

  else
  {
    v20 = *a1;
  }

  if (v20 == 42082)
  {
    v22 = !v13;
    if (v7 < 7)
    {
      v22 = 1;
    }

    if ((v22 & 1) == 0)
    {
      if (v7 < 8)
      {
        return 56;
      }

      if (v7 == 8)
      {
        return 58;
      }

      return 8 * v7 - 12;
    }

    return 0;
  }

  if (v20 == 41995)
  {
    v21 = CFGetTypeID(cf);
    if (v21 == CFArrayGetTypeID())
    {
      usedBufLen = 0;
      p_usedBufLen = &usedBufLen;
      v57 = 0x2000000000;
      v58 = 4;
      memset(v54, 0, sizeof(v54));
      IIOArray::IIOArray(v54, cf);
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 0x40000000;
      v53[2] = ___ZL16validValueForKeyPK6tagdefPKv_block_invoke;
      v53[3] = &unk_1E6F093C0;
      v53[4] = &usedBufLen;
      IIOArray::enumerate(v54, v53);
      v2 = p_usedBufLen[3];
      IIOArray::~IIOArray(v54);
      _Block_object_dispose(&usedBufLen, 8);
      return v2;
    }

    return 0;
  }

  if (v19 != 4)
  {
    v23 = a1[1];
    if (v19 != 3)
    {
      goto LABEL_74;
    }

    if (v23 == 5)
    {
      if (v7)
      {
        goto LABEL_49;
      }

      if (v20 == 7 && v16 == v17)
      {
        return 24;
      }

      if (!v13)
      {
        v7 = 0;
        goto LABEL_49;
      }
    }

    else
    {
      if (!v7 && v23 == 32775 && v20 == 7 && v16 == v17)
      {
        return 24;
      }

      if (v7)
      {
        v31 = 0;
      }

      else
      {
        v31 = v23 == 32775;
      }

      if (!v31 || !v13)
      {
        goto LABEL_74;
      }
    }

    if (v20 > 0x16 || ((1 << v20) & 0x500014) == 0)
    {
      goto LABEL_100;
    }

    return 24;
  }

  v23 = a1[1];
  if (v20)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23 == 1;
  }

  v25 = v24;
  if ((v25 & v9) == 1)
  {
    return 4 * (v7 > 1);
  }

LABEL_74:
  if (v23 != 7)
  {
LABEL_100:
    if (v23 == 2 && v16 == v18)
    {
      v65.length = CFStringGetLength(cf);
      usedBufLen = 0;
      v65.location = 0;
      CFStringGetBytes(cf, v65, 0x8000100u, 0x3Fu, 0, 0, 0, &usedBufLen);
      if (usedBufLen)
      {
        return usedBufLen + 1;
      }

      else
      {
        return 0;
      }
    }

    if (((v23 == 1) & v9) == 1)
    {
      v39 = a1[2];
      v40 = v39 == 1;
      if (a1[2])
      {
        v41 = 0;
      }

      else
      {
        v41 = v14;
      }

      v42 = v7 == v39 && v39 != 0;
      if (v41 | v42)
      {
        return v7;
      }

      else
      {
        return v40;
      }
    }

    if (((v23 == 3) & v9) == 1)
    {
      v43 = a1[2];
      v44 = v43 == 1;
      if (a1[2])
      {
        v45 = 0;
      }

      else
      {
        v45 = v14;
      }

      v46 = v7 == v43 && v43 > 1;
      if (v45 | v46)
      {
        v47 = v7;
      }

      else
      {
        v47 = v44;
      }

      return 2 * v47;
    }

    v2 = 0;
    if (v23 <= 9)
    {
      if (v23 != 4)
      {
        if (v23 != 5)
        {
          return v2;
        }

        goto LABEL_49;
      }

LABEL_132:
      if (v9)
      {
        v48 = a1[2];
        v49 = v48 == 1;
        if (a1[2])
        {
          v50 = 0;
        }

        else
        {
          v50 = v14;
        }

        v51 = v7 == v48 && v48 > 1;
        if (v50 | v51)
        {
          v52 = v7;
        }

        else
        {
          v52 = v49;
        }

        return 4 * v52;
      }

      return 0;
    }

    if (v23 != 10)
    {
      if (v23 != 32771)
      {
        return v2;
      }

      goto LABEL_132;
    }

LABEL_49:
    if (v13)
    {
      v26 = a1[2];
      v27 = v26 == 1;
      if (a1[2])
      {
        v28 = 0;
      }

      else
      {
        v28 = v14;
      }

      v29 = v7 == v26 && v26 > 1;
      if (v28 | v29)
      {
        v30 = v7;
      }

      else
      {
        v30 = v27;
      }

      return 8 * v30;
    }

    return 0;
  }

  if (v20 == 37510 && v16 == v17)
  {
    Length = CFStringGetLength(cf);
    usedBufLen = 0;
    if (Length && (v60.location = 0, v60.length = Length, CFStringGetBytes(cf, v60, 0x600u, 0, 0, 0, 0, &usedBufLen) < 1))
    {
      v64.location = 0;
      v64.length = Length;
      CFStringGetBytes(cf, v64, 0x100u, 0x3Fu, 1u, 0, 0, &usedBufLen);
    }

    else
    {
      v61.location = 0;
      v61.length = Length;
      CFStringGetBytes(cf, v61, 0x600u, 0x3Fu, 0, 0, 0, &usedBufLen);
    }

    v37 = usedBufLen;
    v38 = usedBufLen + 8;
LABEL_145:
    if (v37)
    {
      return v38;
    }

    else
    {
      return 0;
    }
  }

  if (v20 == 37500 && v16 == v17)
  {
    v34 = CFStringGetLength(cf);
    usedBufLen = 0;
    if (v34 && (v62.location = 0, v62.length = v34, CFStringGetBytes(cf, v62, 0x600u, 0, 0, 0, 0, &usedBufLen) < 1))
    {
      v66.location = 0;
      v66.length = v34;
      CFStringGetBytes(cf, v66, 0x100u, 0x3Fu, 1u, 0, 0, &usedBufLen);
    }

    else
    {
      v63.location = 0;
      v63.length = v34;
      CFStringGetBytes(cf, v63, 0x600u, 0x3Fu, 0, 0, 0, &usedBufLen);
    }

    v37 = usedBufLen;
    v38 = usedBufLen + 44;
    goto LABEL_145;
  }

  if (v20 != 37500)
  {
    return ((*a1 & 0xFFFE) == 41728) & v9;
  }

  v35 = CFGetTypeID(cf);
  if (v35 != CFDictionaryGetTypeID())
  {
    v23 = a1[1];
    if (v23 == 7)
    {
      return ((*a1 & 0xFFFE) == 41728) & v9;
    }

    goto LABEL_100;
  }

  return AppleMakerNoteGetLength(cf);
}