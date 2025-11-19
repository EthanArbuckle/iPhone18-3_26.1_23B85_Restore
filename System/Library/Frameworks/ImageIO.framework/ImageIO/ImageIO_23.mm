void sub_185FC8670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImage *IIOImageSource::CGImageGetHash(IIOImageSource *this, CGImage *a2)
{
  Property = CGImageGetProperty();
  if (Property)
  {
    IIONumber::IIONumber(v15, Property);
    Hash = IIONumber::uint64Num(v15);
LABEL_3:
    IIONumber::~IIONumber(v15);
    return Hash;
  }

  DataProvider = CGImageGetDataProvider(this);
  if (!DataProvider)
  {
    _cg_jpeg_mem_term("CGImageGetHash", 1331, "*** ERROR: cannot get CGDataProvider from image\n");
    return 0;
  }

  Hash = IIOHashForDataProvider(DataProvider, a2);
  if (Hash)
  {
    Mask = CGImageGetMask();
    if (Mask)
    {
      Hash = IIOImageSource::CGImageGetHash(Mask, Hash, v9);
    }

    ColorSpace = CGImageGetColorSpace(this);
    if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelIndexed)
    {
      v11 = CGColorSpaceCopyColorTable();
      if (v11)
      {
        v12 = v11;
        Length = CFDataGetLength(v11);
        BytePtr = CFDataGetBytePtr(v12);
        if (BytePtr && Length)
        {
          Hash = IIOHashForBuffer(BytePtr, Length, Hash);
        }

        CFRelease(v12);
      }
    }

    memset(v15, 0, sizeof(v15));
    IIONumber::IIONumber(v15, Hash);
    CGImageSetProperty();
    goto LABEL_3;
  }

  return Hash;
}

void sub_185FC87D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageSource::iPlusGetStatusAtIndex(IIOImageSource *this, unint64_t a2)
{
  if (IIOImageSource::bindToReader(this))
  {
    Status = *(this + 28);
  }

  else
  {
    Status = 4294967292;
  }

  ImagePlus = IIOImageSource::getImagePlus(this, a2);
  if (*(this + 3) - 1 < a2)
  {
    return 4294967292;
  }

  if (ImagePlus)
  {
    Status = IIOImagePlus::getStatus(ImagePlus);
    if (Status == -1)
    {
      v6 = IIOImageSource::updatedCount(this);
      v8 = v6 < 2 || v6 - 1 <= a2;
      return (v8 << 31 >> 31);
    }
  }

  return Status;
}

uint64_t IIOImageSource::isColorOptimizedForSharing(CFSetRef *this, const __CFDictionary **a2)
{
  Count = CFSetGetCount(this[23]);
  if (!Count)
  {
    ImageAtIndex = IIOImageSource::createImageAtIndex(this, 0, a2, 0, 0);
    if (ImageAtIndex)
    {
      v10 = ImageAtIndex;
      IsOptimizedForSharing = CGImageIsOptimizedForSharing();
      CGImageRelease(v10);
      return IsOptimizedForSharing;
    }

    return 0;
  }

  v5 = Count;
  v6 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  CFSetGetValues(this[23], v6);
  if (v5 < 1)
  {
    IsOptimizedForSharing = 0;
  }

  else
  {
    IsOptimizedForSharing = CGImageIsOptimizedForSharing();
  }

  free(v7);
  return IsOptimizedForSharing;
}

CGImage *IIOImageSource::createImageAtIndex(IIOImageSource *this, unint64_t a2, const __CFDictionary **a3, int *a4, unsigned int *a5)
{
  v90 = *MEMORY[0x1E69E9840];
  *v87 = 0;
  *v88 = 0;
  if ((IIOImageSource::bindToReader(this) & 1) == 0)
  {
    Source = CGImageSourceGetSource(*(this + 2));
    if (Source)
    {
      v15 = Source;
      v16 = IIOImageRead::length(Source);
      if (v16 >= 8)
      {
        v17 = 8;
      }

      else
      {
        v17 = v16;
      }

      *bytes = 0;
      IIOImageRead::getBytesAtOffset(v15, bytes, 0, v17, 0);
      v82 = *(this + 54);
      v81 = IIOImageRead::length(v15);
      v18 = bytes[0];
      v19 = bytes[1];
      v80 = bytes[2];
      v79 = bytes[3];
      v78 = bytes[4];
      v77 = bytes[5];
      v76 = bytes[6];
      v75 = bytes[7];
      v20 = MEMORY[0x1E69E9830];
      if (bytes[0] < 0)
      {
        v21 = __maskrune(bytes[0], 0x40000uLL);
      }

      else
      {
        v21 = *(MEMORY[0x1E69E9830] + 4 * bytes[0] + 60) & 0x40000;
      }

      v22 = bytes[1];
      if (v21)
      {
        v28 = bytes[0];
      }

      else
      {
        v28 = 46;
      }

      v74 = v28;
      if ((bytes[1] & 0x80) != 0)
      {
        v29 = __maskrune(bytes[1], 0x40000uLL);
        v22 = bytes[1];
      }

      else
      {
        v29 = *(v20 + 4 * bytes[1] + 60) & 0x40000;
      }

      if (v29)
      {
        v30 = v22;
      }

      else
      {
        v30 = 46;
      }

      v31 = bytes[2];
      if ((bytes[2] & 0x8000000000000000) != 0)
      {
        v32 = __maskrune(bytes[2], 0x40000uLL);
        v31 = bytes[2];
      }

      else
      {
        v32 = *(v20 + 4 * bytes[2] + 60) & 0x40000;
      }

      if (v32)
      {
        v33 = v31;
      }

      else
      {
        v33 = 46;
      }

      v34 = bytes[3];
      if ((bytes[3] & 0x8000000000000000) != 0)
      {
        v35 = __maskrune(bytes[3], 0x40000uLL);
        v34 = bytes[3];
      }

      else
      {
        v35 = *(v20 + 4 * bytes[3] + 60) & 0x40000;
      }

      if (v35)
      {
        v36 = v34;
      }

      else
      {
        v36 = 46;
      }

      v37 = bytes[4];
      if ((bytes[4] & 0x8000000000000000) != 0)
      {
        v38 = __maskrune(bytes[4], 0x40000uLL);
        v37 = bytes[4];
      }

      else
      {
        v38 = *(v20 + 4 * bytes[4] + 60) & 0x40000;
      }

      if (v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = 46;
      }

      v40 = bytes[5];
      if ((bytes[5] & 0x8000000000000000) != 0)
      {
        v41 = __maskrune(bytes[5], 0x40000uLL);
        v40 = bytes[5];
      }

      else
      {
        v41 = *(v20 + 4 * bytes[5] + 60) & 0x40000;
      }

      if (v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = 46;
      }

      v43 = bytes[6];
      if ((bytes[6] & 0x8000000000000000) != 0)
      {
        v44 = __maskrune(bytes[6], 0x40000uLL);
        v43 = bytes[6];
      }

      else
      {
        v44 = *(v20 + 4 * bytes[6] + 60) & 0x40000;
      }

      if (v44)
      {
        v45 = v43;
      }

      else
      {
        v45 = 46;
      }

      LOBYTE(v46) = bytes[7];
      if ((bytes[7] & 0x8000000000000000) != 0)
      {
        v47 = __maskrune(bytes[7], 0x40000uLL);
        LOBYTE(v46) = bytes[7];
      }

      else
      {
        v47 = *(v20 + 4 * bytes[7] + 60) & 0x40000;
      }

      if (v47)
      {
        v46 = v46;
      }

      else
      {
        v46 = 46;
      }

      LogError("createImageAtIndex", 2046, "*** ERROR: createImageAtIndex %d could not find plugin for image source [%ld bytes] %02X %02X %02X %02X %02X %02X %02X %02X... '%c%c%c%c%c%c%c%c'\n", v82, v81, v18, v19, v80, v79, v78, v77, v76, v75, v74, v30, v33, v36, v39, v42, v45, v46);
    }

    else
    {
      LogError("createImageAtIndex", 2037, "*** ERROR: could not find plugin for image source - imageRead is NULL\n");
    }

    Image = 0;
    v12 = 0;
    v87[1] = -62;
    v13 = 2049;
LABEL_71:
    v87[0] = v13;
    goto LABEL_72;
  }

  ImagePlus = IIOImageSource::makeImagePlus(this, a2, a3);
  *v88 = ImagePlus;
  if (!ImagePlus)
  {
    if ((gIIODebugFlags & 0x3000) != 0)
    {
      ImageIOLog("*** %s:%d: makeImagePlus returned nil\n", "createImageAtIndex", 2058);
    }

    Image = 0;
    v12 = 0;
    v87[1] = -58;
    v13 = 2060;
    goto LABEL_71;
  }

  v9 = ImagePlus;
  v10 = *(this + 24);
  if (v10)
  {
    v91.length = CFArrayGetCount(*(this + 24));
    v91.location = 0;
    if (CFArrayContainsValue(v10, v91, v9))
    {
      if ((gIIODebugFlags & 0x3000) != 0)
      {
        ImageIOLog("*** %s:%d: 'createImage' returned incomplete iPlus: %p -- skipping image creation\n", "createImageAtIndex", 2068, 0);
      }

      Image = 0;
      v12 = 0;
      v87[1] = -59;
      v13 = 2070;
      goto LABEL_71;
    }
  }

  v12 = v9[3];
  Image = IIOImagePlus::createImage(v12, *(this + 1), &v87[1], v87);
  if (Image)
  {
    CFSetAddValue(*(this + 23), Image);
    Plugin = IIOImagePlus::readPlugin(v12);
    v24 = Plugin;
    if (Plugin)
    {
      v25 = *(Plugin + 220);
      v26 = IIO_Reader::osType(*(this + 13));
      PluginUTI = IIO_Reader::utType(*(this + 13));
      if (v25 != v26)
      {
        PluginUTI = IIOReadPlugin::getPluginUTI(v24);
      }

      (*(*v24 + 128))(v24, Image, PluginUTI, a2);
    }

    else
    {
      IIO_Reader::utType(*(this + 13));
      CGImageSetProperty();
      IIONumber::IIONumber(bytes, a2);
      CGImageSetProperty();
      IIONumber::~IIONumber(bytes);
      v55 = IIO_Reader::osType(*(this + 13));
      IIOString::IIOString(bytes, v55);
      CGImageSetProperty();
      IIOString::~IIOString(bytes);
    }

    *bytes = *(this + 2);
    v56 = *MEMORY[0x1E695E480];
    v57 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 8);
    if (v57)
    {
      CGImageSetProperty();
      CFRelease(v57);
    }

    v58 = CFDataCreate(v56, v88, 8);
    if (v58)
    {
      CGImageSetProperty();
      CFRelease(v58);
    }

    if (IIOImagePlus::getSubsampleFactor(v12))
    {
      valuePtr = IIOImagePlus::getSubsampleFactor(v12);
      v59 = CFNumberCreate(v56, kCFNumberSInt16Type, &valuePtr);
      if (v59)
      {
        CGImageSetProperty();
        CFRelease(v59);
      }
    }

    ImagePropertiesAtIndex = IIOImageSource::getImagePropertiesAtIndex(this, a2);
    v61 = ImagePropertiesAtIndex;
    if (ImagePropertiesAtIndex && IIODictionary::containsKey(ImagePropertiesAtIndex, @"Orientation"))
    {
      IIODictionary::getObjectForKey(v61, @"Orientation");
      CGImageSetProperty();
    }

    shouldCacheImmediately = IIOImagePlus::shouldCacheImmediately(v12);
    if (shouldCacheImmediately)
    {
      IIOImageSource::cacheImmediately(shouldCacheImmediately, v63, a3, Image);
    }
  }

  else
  {
    if ((gIIODebugFlags & 0x3000) != 0)
    {
      ImageIOLog("*** %s:%d: 'createImage' returned nil (this: %p   iPlus: %p)\n", "createImageAtIndex", 2083, this, v12);
    }

    Image = 0;
  }

LABEL_72:
  IIOImageSource::removeUnusedImages(this);
  if ((gIIODebugFlags & 0x3000) == 0)
  {
    if (Image)
    {
      goto LABEL_129;
    }

    v48 = *(this + 13);
    if (v48)
    {
      v49 = IIO_Reader::osType(v48) >> 24;
      if (v49 > 0x7F)
      {
        v50 = __maskrune(v49, 0x40000uLL);
        goto LABEL_84;
      }
    }

    else
    {
      v49 = 110;
    }

    v50 = *(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000;
LABEL_84:
    v51 = *(this + 13);
    if (v50)
    {
      if (!v51)
      {
        v53 = 47;
        v52 = 110;
        goto LABEL_105;
      }

      v52 = (IIO_Reader::osType(v51) >> 24);
      v51 = *(this + 13);
      if (v51)
      {
        goto LABEL_87;
      }
    }

    else
    {
      v52 = 46;
      if (v51)
      {
LABEL_87:
        v53 = (IIO_Reader::osType(v51) << 8) >> 24;
        if (v53 > 0x7F)
        {
          v54 = __maskrune(v53, 0x40000uLL);
          goto LABEL_106;
        }

LABEL_105:
        v54 = *(MEMORY[0x1E69E9830] + 4 * v53 + 60) & 0x40000;
LABEL_106:
        v64 = *(this + 13);
        if (v54)
        {
          if (!v64)
          {
            v66 = 97;
            v65 = 47;
            goto LABEL_114;
          }

          v65 = ((IIO_Reader::osType(v64) << 8) >> 24);
          v64 = *(this + 13);
          if (v64)
          {
            goto LABEL_109;
          }
        }

        else
        {
          v65 = 46;
          if (v64)
          {
LABEL_109:
            v66 = IIO_Reader::osType(v64) >> 8;
            if (v66 > 0x7F)
            {
              v67 = __maskrune(v66, 0x40000uLL);
              goto LABEL_115;
            }

LABEL_114:
            v67 = *(MEMORY[0x1E69E9830] + 4 * v66 + 60) & 0x40000;
LABEL_115:
            v68 = *(this + 13);
            if (v67)
            {
              if (!v68)
              {
                v70 = 32;
                v69 = 97;
                goto LABEL_125;
              }

              v69 = (IIO_Reader::osType(v68) >> 8);
              v68 = *(this + 13);
              if (v68)
              {
LABEL_118:
                v70 = IIO_Reader::osType(v68);
                if (v70 > 0x7F)
                {
                  if (__maskrune(v70, 0x40000uLL))
                  {
                    goto LABEL_120;
                  }

                  goto LABEL_126;
                }

LABEL_125:
                if ((*(MEMORY[0x1E69E9830] + 4 * v70 + 60) & 0x40000) != 0)
                {
LABEL_120:
                  v71 = *(this + 13);
                  if (v71)
                  {
                    v72 = IIO_Reader::osType(v71);
                  }

                  else
                  {
                    v72 = 32;
                  }

                  goto LABEL_128;
                }

LABEL_126:
                v72 = 46;
LABEL_128:
                LogError("createImageAtIndex", 2185, "*** ERROR: createImageAtIndex[%ld] - '%c%c%c%c' - failed to create image [%d]\n", a2, v52, v65, v69, v72, v87[1]);
                goto LABEL_129;
              }
            }

            else
            {
              v69 = 46;
              if (v68)
              {
                goto LABEL_118;
              }
            }

            v70 = 32;
            goto LABEL_125;
          }
        }

        v66 = 97;
        goto LABEL_114;
      }
    }

    v53 = 47;
    goto LABEL_105;
  }

  if (!Image)
  {
    ImageIOLog("*** %s:%d: could not create image (nil) (this: %p  iPlus: %p)\n", "createImageAtIndex", 2183, this, v12);
  }

LABEL_129:
  if (a4)
  {
    *a4 = v87[1];
  }

  if (a5)
  {
    *a5 = v87[0];
  }

  return Image;
}

void IIOImageSource::addProperty(IIOImageSource *this, const __CFString *a2, const __CFString *a3, const void *a4)
{
  if (a3)
  {
    v4 = *(this + 15);
    if (!v4)
    {
      operator new();
    }

    if (a2)
    {
      if (a4)
      {

        IIODictionary::setObjectForKeyGroup(v4, a4, a3, a2);
      }

      else
      {

        IIODictionary::removeObjectForKeyGroup(v4, a3, a2);
      }
    }

    else if (a4)
    {

      IIODictionary::setObjectForKey(v4, a4, a3);
    }

    else
    {

      IIODictionary::removeObjectForKey(v4, a3);
    }
  }

  else
  {

    LogError("addProperty", 1585, "*** ERROR: key parameter is nil\n", a4);
  }
}

uint64_t IIOImageSource::getProperties(IIOImageSource *this, IIODictionary *a2)
{
  pthread_mutex_lock((this + 288));
  PropertiesInternal = IIOImageSource::getPropertiesInternal(this, a2);
  pthread_mutex_unlock((this + 288));
  return PropertiesInternal;
}

uint64_t IIOImageSource::getPropertiesInternal(IIOImageSource *this, IIODictionary *a2)
{
  if (!IIOImageSource::bindToReader(this))
  {
    return 0;
  }

  Source = CGImageSourceGetSource(*(this + 2));
  v5 = Source;
  if (!*(this + 15))
  {
    goto LABEL_5;
  }

  if ((IIOImageRead::isFinal(Source) & 1) == 0)
  {
    if (!*(this + 15))
    {
LABEL_5:
      operator new();
    }

    Size = IIOImageRead::getSize(v5);
    IIONumber::IIONumber(v37, Size);
    IIOImageSource::addProperty(this, 0, @"FileSize", v38);
    IIONumber::~IIONumber(v37);
    if ((*(**(this + 13) + 176))(*(this + 13)))
    {
      v7 = CGImageReadSessionCreate(*(this + 2));
      if (v7)
      {
        v8 = v7;
        v36 = -1;
        v9 = IIO_Reader::osType(*(this + 13));
        IIODebugCallbackPriv(v9, "addSourceProps");
        v37[0] = 0;
        v37[1] = 0;
        v38 = 0;
        IIODictionary::IIODictionary(v37);
        v11 = *MEMORY[0x1E695E4D0];
        v12 = *MEMORY[0x1E695E4C0];
        if (*(this + 50))
        {
          v13 = *MEMORY[0x1E695E4D0];
        }

        else
        {
          v13 = *MEMORY[0x1E695E4C0];
        }

        IIODictionary::setObjectForKey(v10, v13, @"shouldExposeMultiFrameContents");
        if (*(this + 52))
        {
          v14 = v11;
        }

        else
        {
          v14 = v12;
        }

        IIODictionary::setObjectForKey(v37, v14, @"useImageSequence");
        IIONumber::IIONumber(v35, *(this + 53));
        IIODictionary::setObjectForKey(v37, v35, @"kCGImageSourceForceUseServer");
        IIONumber::~IIONumber(v35);
        v15 = (*(**(this + 13) + 48))(*(this + 13), v8, *(this + 1), *(this + 15), v37, a2, &v36);
        v16 = v15;
        if (v15 == -48)
        {
          ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v15);
          v21 = IIO_ReaderHandler::readerForType(ReaderHandler, 1212500291);
          if (v21)
          {
            v22 = 67;
            if ((*(MEMORY[0x1E69E9830] + 328) & 0x40000) == 0)
            {
              v22 = 46;
            }

            v23 = 73;
            if ((*(MEMORY[0x1E69E9830] + 352) & 0x40000) == 0)
            {
              v23 = 46;
            }

            v34 = v22;
            v24 = 69;
            if ((*(MEMORY[0x1E69E9830] + 336) & 0x40000) == 0)
            {
              v24 = 46;
            }

            v25 = 72;
            if ((*(MEMORY[0x1E69E9830] + 348) & 0x40000) == 0)
            {
              v25 = 46;
            }

            v32 = v25;
            v33 = v24;
            v26 = 71;
            if ((*(MEMORY[0x1E69E9830] + 344) & 0x40000) == 0)
            {
              v26 = 46;
            }

            v31 = v24;
            v27 = 80;
            if ((*(MEMORY[0x1E69E9830] + 380) & 0x40000) == 0)
            {
              v27 = 46;
            }

            v28 = 74;
            if ((*(MEMORY[0x1E69E9830] + 356) & 0x40000) == 0)
            {
              v28 = 46;
            }

            _cg_jpeg_mem_term("getPropertiesInternal", 1668, "*** 🔄 ImageIO: plugin changed from '%c%c%c%c' to '%c%c%c%c' (contains 'MPF' marker)\n", v28, v27, v31, v26, v32, v33, v23, v34);
            kdebug_trace();
            *(this + 13) = v21;
            v16 = (*(*v21 + 48))(v21, v8, *(this + 1), *(this + 15), v37, a2, &v36);
          }

          else
          {
            v16 = -48;
          }
        }

        else if (v15 == -1400)
        {
          ImageIOLog("‼️ retrying 'updateSourceProperties' (ImageIOXPCService crashed?)\n");
          v17 = (*(**(this + 13) + 48))(*(this + 13), v8, *(this + 1), *(this + 15), v37, a2, &v36);
          v16 = v17;
          v18 = "❌";
          if (!v17)
          {
            v18 = "✅";
          }

          ImageIOLog("%s retrying 'updateSourceProperties'  err: %d\n", v18, v17);
        }

        v29 = v36;
        pthread_mutex_lock((this + 352));
        *(this + 28) = v29;
        pthread_mutex_unlock((this + 352));
        if (v16 == -39)
        {
          v30 = *(this + 15);
          if (v30)
          {
            (*(*v30 + 8))(v30);
            *(this + 15) = 0;
          }
        }

        CFRelease(v8);
        IIODictionary::~IIODictionary(v37);
      }
    }
  }

  return *(this + 15);
}

void sub_185FC9868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary((v10 - 72));
  _Unwind_Resume(a1);
}

CFDictionaryRef IIOImageSource::copyProperties(IIOImageSource *this, IIODictionary *a2)
{
  pthread_mutex_lock((this + 288));
  PropertiesInternal = IIOImageSource::getPropertiesInternal(this, a2);
  pthread_mutex_unlock((this + 288));
  if (!PropertiesInternal)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = *(PropertiesInternal + 8);

  return CFDictionaryCreateCopy(v5, v6);
}

uint64_t IIOImageSource::copyMetadataAtIndex(IIOImageSource *this, unint64_t a2, const __CFDictionary **a3)
{
  if (!IIOImageSource::bindToReader(this))
  {
    return 0;
  }

  ImagePlus = IIOImageSource::makeImagePlus(this, a2, a3);
  v7 = ImagePlus ? IIOImagePlus::getMetadata(*(ImagePlus + 24)) : IIOImageSource::getImageMetadataAtIndex(this, a2);
  if (!v7 || v7 == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  return CGImageMetadataCreateImmutableCopy(v7);
}

const void *IIOImageSource::getImageMetadataAtIndex(CFArrayRef *this, CFIndex a2)
{
  Count = CFArrayGetCount(this[22]);
  if (a2 >= Count)
  {
    _cg_jpeg_mem_term("getImageMetadataAtIndex", 4063, "getImageMetadataAtIndex index (%d) larger than arrayCount (%d)\n", a2, Count);
    return 0;
  }

  else
  {
    result = CFArrayGetValueAtIndex(this[22], a2);
    if (result == *MEMORY[0x1E695E738])
    {
      return 0;
    }
  }

  return result;
}

__CFArray *IIOImageSource::copyMetadataPropertiesAtIndex(IIOImageSource *this, unint64_t a2, const __CFDictionary **a3, unsigned int *a4)
{
  if (!IIOImageSource::bindToReader(this))
  {
    return 0;
  }

  ImagePlus = IIOImageSource::makeImagePlus(this, a2, a3);
  v9 = ImagePlus ? IIOImagePlus::getMetadata(*(ImagePlus + 24)) : IIOImageSource::getImageMetadataAtIndex(this, a2);
  v10 = v9;
  if (!v9)
  {
    return 0;
  }

  TagWithPath = CGImageMetadataGetTagWithPath(v9, 0, @"tiff:Orientation");
  if (a4)
  {
    Value = CGImageMetadataTagGetValue(TagWithPath);
    IIONumber::IIONumber(v14, Value);
    *a4 = IIONumber::uint16Num(v14);
    IIONumber::~IIONumber(v14);
  }

  return CGImageMetadataCreateMetadataProperties(v10);
}

void sub_185FC9B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageSource::cacheImmediately(IIOImageSource *this, unint64_t a2, IIODictionary *a3, CGImage *a4)
{
  result = CGImageGetImageProvider();
  if (result)
  {
    result = IIOReadPluginFromImageProvider();
    if (result)
    {
      v5 = *(*result + 160);

      return v5();
    }
  }

  return result;
}

uint64_t IIOImageSource::imageSourceCanBeUsedForJPEGResize(IIOImageSource *this, unsigned __int32 a2)
{
  *gCrashMessage = 0;
  snprintf(gCrashMessage, 0x200uLL, "ImageIO: imageSourceCanBeUsedForJPEGResize: <CGImageSourceRef:%p> <CGImageReadRef:%p>\n", *(this + 1), *(this + 2));
  qword_1ED5688A0 = gCrashMessage;
  v4 = *(this + 2);
  if (!v4)
  {
    v8 = 0;
LABEL_11:
    LogError("imageSourceCanBeUsedForJPEGResize", 2209, "*** ERROR: invalid image source: <CGImageSourceRef:%p>  <CGImageReadRef:%p>", *(this + 1), v8);
    goto LABEL_12;
  }

  v5 = CFGetTypeID(v4);
  if (v5 != CGImageReadGetTypeID())
  {
    v8 = *(this + 2);
    goto LABEL_11;
  }

  if ((IIOImageSource::bindToReader(this) & 1) == 0)
  {
LABEL_12:
    result = 0;
    qword_1ED5688A0 = 0;
    return result;
  }

  result = IIO_Reader::utType(*(this + 13));
  qword_1ED5688A0 = 0;
  if (result)
  {
    if (CFStringCompare(result, @"public.jpeg", 0))
    {
      result = *(this + 13);
      if (result)
      {
        result = (*(*result + 152))(result);
        if (result)
        {
          IIOImageSource::updateThumbnailInfo(this, 0, 0, 0);
          IIOImageSource::getThumbnailInfoAtIndex(this, 0, a2, v9);
          return v7 == 0;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void IIOImageSource::updateThumbnailInfo(IIOImageSource *this, IIODictionary *a2, unsigned int *a3, unsigned int *a4)
{
  if (*(this + 26) != *(this + 25))
  {
    return;
  }

  v8 = 1970170734;
  v9 = *(this + 13);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = (*(*v9 + 152))(v9);
  if (v10)
  {
    v8 = 1918990112;
    goto LABEL_7;
  }

  v11 = *(this + 13);
  if (!v11)
  {
LABEL_10:
    v10 = 0;
LABEL_11:
    pthread_mutex_lock((this + 288));
    PropertiesInternal = IIOImageSource::getPropertiesInternal(this, a2);
    pthread_mutex_unlock((this + 288));
    if (PropertiesInternal)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = IIO_Reader::osType(v11);
LABEL_7:
  if (!*(this + 13))
  {
    goto LABEL_11;
  }

  PropertiesInternal = *(this + 15);
  if (PropertiesInternal)
  {
    goto LABEL_13;
  }

LABEL_12:
  pthread_mutex_lock((this + 288));
  PropertiesInternal = IIOImageSource::getPropertiesInternal(this, a2);
  pthread_mutex_unlock((this + 288));
LABEL_13:
  LODWORD(v13) = 0;
  if (v8 > 1212829766)
  {
    if (v8 != 1918990112)
    {
      Uint32ForKey = 0;
      if (v8 != 1212829767)
      {
        goto LABEL_63;
      }
    }

LABEL_21:
    if (!PropertiesInternal)
    {
      LODWORD(v13) = 0;
      Uint32ForKey = 0;
      goto LABEL_40;
    }

    v16 = &kCGImagePropertyImages;
    if (v10)
    {
      v16 = kIIOPropertyRawImagesArray;
    }

    ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(PropertiesInternal, *v16, @"{FileContents}");
    v13 = ObjectForKeyGroup;
    if (ObjectForKeyGroup)
    {
      if (CFArrayGetCount(ObjectForKeyGroup))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
        v40 = 0;
        v41 = 0;
        v42 = 0;
        IIODictionary::IIODictionary(&v40, ValueAtIndex);
        LODWORD(v13) = IIODictionary::getUint32ForKey(&v40, @"Width");
        Uint32ForKey = IIODictionary::getUint32ForKey(&v40, @"Height");
        IIODictionary::~IIODictionary(&v40);
        if (!v10)
        {
          goto LABEL_32;
        }

LABEL_30:
        Value = IIODictionary::getObjectForKeyGroup(PropertiesInternal, @"Thumbnails", @"{raw}");
        goto LABEL_34;
      }

      ValueAtIndex = 0;
      Uint32ForKey = 0;
      LODWORD(v13) = 0;
      if (v10)
      {
        goto LABEL_30;
      }
    }

    else
    {
      ValueAtIndex = 0;
      Uint32ForKey = 0;
      if (v10)
      {
        goto LABEL_30;
      }
    }

LABEL_32:
    if (!ValueAtIndex)
    {
      v20 = 0;
LABEL_35:
      v40 = 0;
      v41 = 0;
      v42 = 0;
      IIOArray::IIOArray(&v40, v20);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 0x40000000;
      v36[2] = ___ZN14IIOImageSource19updateThumbnailInfoEP13IIODictionaryPjS2__block_invoke;
      v36[3] = &__block_descriptor_tmp_100;
      v36[4] = this;
      v37 = v13;
      v38 = Uint32ForKey;
      v39 = v10;
      IIOArray::enumerate(&v40, v36);
      v22 = *(this + 25);
      v23 = *(this + 26);
      v24 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v23 - v22) >> 3));
      if (v23 == v22)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      std::__introsort<std::_ClassicAlgPolicy,IIOImageSource::updateThumbnailInfo(IIODictionary *,unsigned int *,unsigned int *)::$_0 &,IIOThumbnailInfo *,false>(v22, v23, v25, 1, v21);
      IIOArray::~IIOArray(&v40);
      if (!v13)
      {
        goto LABEL_40;
      }

LABEL_39:
      if (Uint32ForKey)
      {
        goto LABEL_63;
      }

      goto LABEL_40;
    }

    Value = CFDictionaryGetValue(ValueAtIndex, @"ThumbnailImages");
LABEL_34:
    v20 = Value;
    goto LABEL_35;
  }

  if (v8 == 1212500291)
  {
    goto LABEL_21;
  }

  Uint32ForKey = 0;
  if (v8 != 1212500307)
  {
    goto LABEL_63;
  }

  if (!PropertiesInternal)
  {
    Uint32ForKey = 0;
    LODWORD(v13) = 0;
    v26 = 72;
    goto LABEL_41;
  }

  ObjectForKey = IIODictionary::getObjectForKey(PropertiesInternal, @"{HEICS}");
  v40 = 0;
  v41 = 0;
  v42 = 0;
  IIODictionary::IIODictionary(&v40, ObjectForKey);
  LODWORD(v13) = IIODictionary::getUint32ForKey(&v40, @"CanvasPixelWidth");
  Uint32ForKey = IIODictionary::getUint32ForKey(&v40, @"CanvasPixelHeight");
  IIODictionary::~IIODictionary(&v40);
  if (v13)
  {
    goto LABEL_39;
  }

LABEL_40:
  v26 = HIBYTE(v8);
LABEL_41:
  v27 = MEMORY[0x1E69E9830];
  if ((*(MEMORY[0x1E69E9830] + 4 * v26 + 60) & 0x40000) != 0)
  {
    v28 = v26;
  }

  else
  {
    v28 = 46;
  }

  v29 = (v8 << 8) >> 24;
  if (v29 <= 0x7F)
  {
    v30 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60) & 0x40000;
  }

  else
  {
    v30 = __maskrune((v8 << 8) >> 24, 0x40000uLL);
  }

  if (v30)
  {
    v31 = v29;
  }

  else
  {
    v31 = 46;
  }

  LODWORD(v32) = v8 >> 8;
  if (v32 <= 0x7F)
  {
    v33 = *(v27 + 4 * v32 + 60) & 0x40000;
  }

  else
  {
    v33 = __maskrune(v8 >> 8, 0x40000uLL);
  }

  if (v33)
  {
    v32 = v32;
  }

  else
  {
    v32 = 46;
  }

  v8 = v8;
  if (v8 <= 0x7F)
  {
    v34 = *(v27 + 4 * v8 + 60) & 0x40000;
  }

  else
  {
    v34 = __maskrune(v8, 0x40000uLL);
  }

  if (v34)
  {
    v35 = v8;
  }

  else
  {
    v35 = 46;
  }

  _cg_jpeg_mem_term("updateThumbnailInfo", 2387, "*** ERROR: IIOImageSource::updateThumbnailInfo '%c%c%c%c' did not get image dimensions (%d x %d)\n", v28, v31, v32, v35, v13, Uint32ForKey);
LABEL_63:
  if (a3)
  {
    *a3 = v13;
  }

  if (a4)
  {
    *a4 = Uint32ForKey;
  }
}

void sub_185FCA1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

__n128 IIOImageSource::getThumbnailInfoAtIndex(uint64_t a1, uint64_t a2, unsigned __int32 a3, __n128 *a4)
{
  v4 = *(a1 + 200);
  v5 = *(a1 + 208);
  if (v4 != v5)
  {
    for (i = (v4 + 40); v4[1].n128_u32[3] != a2 || v4->n128_u32[3] < a3 && v4[1].n128_u32[0] < a3 || v5 != i && (v4[2].n128_u8[3] & 1) != 0; i = (i + 40))
    {
      v4 = (v4 + 40);
      if (v4 == v5)
      {
        return result;
      }
    }

    result = *v4;
    v8 = v4[1];
    a4[2].n128_u64[0] = v4[2].n128_u64[0];
    *a4 = result;
    a4[1] = v8;
  }

  return result;
}

const __CFString *IIOImageSource::imageSourceCanBeUsedForHEICResize(IIO_Reader **this)
{
  result = IIOImageSource::bindToReader(this);
  if (result)
  {
    result = IIO_Reader::utType(this[13]);
    if (result)
    {
      return (CFStringCompare(result, @"public.heic", 0) == kCFCompareEqualTo);
    }
  }

  return result;
}

void ___ZN14IIOImageSource19updateThumbnailInfoEP13IIODictionaryPjS2__block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v3 = *(a1 + 32);
  memset(v31, 0, sizeof(v31));
  IIODictionary::IIODictionary(v31, a2);
  Uint32ForKey = IIODictionary::getUint32ForKey(v31, @"Width");
  v5 = IIODictionary::getUint32ForKey(v31, @"Height");
  v6 = *(a1 + 40);
  v7 = *(a1 + 44);
  v8 = IIODictionary::getUint32ForKey(v31, @"Orientation");
  if (*(a1 + 48) == 1)
  {
    Uint64ForKey = IIODictionary::getUint64ForKey(v31, @"JPEGOffset");
    v9 = IIODictionary::getUint32ForKey(v31, @"JPEGLength");
    v10 = 1;
  }

  else
  {
    Uint64ForKey = IIODictionary::getUint64ForKey(v31, @"ThumbnailOffset");
    v9 = IIODictionary::getUint32ForKey(v31, @"ThumbnailSize");
    v10 = 0;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 44);
  v14 = Uint32ForKey == v11 && v5 == v12;
  v15 = vabdd_f64(Uint32ForKey / v5, v11 / v12) > 0.02;
  v16 = v3[26];
  v17 = v3[27];
  if (v16 >= v17)
  {
    v29 = v7;
    v19 = v3[25];
    v20 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - v19) >> 3);
    v21 = v20 + 1;
    if (v20 + 1 > 0x666666666666666)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v22 = 0xCCCCCCCCCCCCCCCDLL * ((v17 - v19) >> 3);
    if (2 * v22 > v21)
    {
      v21 = 2 * v22;
    }

    if (v22 >= 0x333333333333333)
    {
      v23 = 0x666666666666666;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOThumbnailInfo>>((v3 + 25), v23);
    }

    v24 = 40 * v20;
    *v24 = Uint64ForKey;
    *(v24 + 8) = v9;
    *(v24 + 12) = Uint32ForKey;
    *(v24 + 16) = v5;
    *(v24 + 20) = v6;
    *(v24 + 24) = v29;
    *(v24 + 28) = 0;
    *(v24 + 32) = v8;
    *(v24 + 33) = v10;
    *(v24 + 34) = v14;
    *(v24 + 35) = v15;
    *(v24 + 36) = 0;
    v18 = 40 * v20 + 40;
    v25 = v3[25];
    v26 = v3[26] - v25;
    v27 = (40 * v20 - v26);
    memcpy(v27, v25, v26);
    v28 = v3[25];
    v3[25] = v27;
    v3[26] = v18;
    v3[27] = 0;
    if (v28)
    {
      operator delete(v28);
    }
  }

  else
  {
    *v16 = Uint64ForKey;
    *(v16 + 8) = v9;
    *(v16 + 12) = Uint32ForKey;
    *(v16 + 16) = v5;
    *(v16 + 20) = v6;
    *(v16 + 24) = v7;
    *(v16 + 28) = 0;
    *(v16 + 32) = v8;
    *(v16 + 33) = v10;
    *(v16 + 34) = v14;
    *(v16 + 35) = v15;
    v18 = v16 + 40;
    *(v16 + 36) = 0;
  }

  v3[26] = v18;
  IIODictionary::~IIODictionary(v31);
}

void sub_185FCA51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageSource::createThumbnailAtIndex(IIOImageSource *this, unint64_t a2, IIODictionary *a3, int *a4, unsigned int *a5)
{
  v25 = -50;
  *v24 = 0;
  v23 = kCGImageAlphaNone;
  v22 = 0;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  IIORestrictedDecodingEnabledFlag();
  v19 = 0;
  if (IIOImageSource::bindToReader(this) && IIOImageSource::updatedCount(this) > a2)
  {
    IIODictionary::getBoolForKey(a3, @"kCGImageSourceCreateThumbnailFromImageAlways");
    IIODictionary::getBoolForKey(a3, @"kCGImageSourceCreateThumbnailFromImageIfAbsent");
    IIODictionary::containsKey(a3, @"kCGImageSourceCreateThumbnailFromImageIfAbsent");
    IIODictionary::getBoolForKey(a3, @"kCGImageSourceCreateThumbnailWithTransform");
    IIODictionary::getUint32ForKey(a3, @"Orientation");
    if (IIODictionary::containsKey(a3, @"kCGImageSourceShouldCache"))
    {
      IIODictionary::getBoolForKey(a3, @"kCGImageSourceShouldCache");
    }

    if (IIODictionary::containsKey(a3, @"kCGImageSourceThumbnailMaxPixelSize"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(a3, @"kCGImageSourceThumbnailMaxPixelSize");
      (*(**(this + 13) + 184))(*(this + 13));
    }

    else
    {
      Uint32ForKey = 0;
    }

    IIOImageSource::updateThumbnailInfo(this, a3, &v24[1], v24);
    if (v24[1] <= v24[0])
    {
      v9 = v24[0];
    }

    else
    {
      v9 = v24[1];
    }

    if (!Uint32ForKey)
    {
      Uint32ForKey = v9;
    }

    if (v24[1] && v24[0] && Uint32ForKey > v24[1] && Uint32ForKey > v24[0])
    {
      LogError("createThumbnailAtIndex", 2531, "*** ERROR: kCGImageSourceThumbnailMaxPixelSize: %d is larger than image-dimension: %dx%d\n", Uint32ForKey, v24[1], v24[0]);
      IIODictionary::removeObjectForKey(a3, @"kCGImageSourceThumbnailMaxPixelSize");
      if (v24[1] <= v24[0])
      {
        Uint32ForKey = v24[0];
      }

      else
      {
        Uint32ForKey = v24[1];
      }
    }

    v10 = getprogname();
    if (!strncasecmp("Camera", v10, 7uLL))
    {
      if (IIODictionary::containsKey(a3, @"kCGImageSourceDecodeRequest"))
      {
        ObjectForKey = IIODictionary::getObjectForKey(a3, @"kCGImageSourceDecodeRequest");
        if (CFStringCompare(ObjectForKey, @"kCGImageSourceDecodeToHDR", 0) == kCFCompareEqualTo)
        {
          if ((IIODictionary::containsKey(a3, @"kCGImageSourceDecodeRequestOptions") & 1) == 0)
          {
            IIODictionary::IIODictionary(&v18);
            IIODictionary::setObjectForKey(a3, *&v18.b, @"kCGImageSourceDecodeRequestOptions");
            IIODictionary::~IIODictionary(&v18);
          }

          IIODictionary::setObjectForKeyGroup(a3, *MEMORY[0x1E695E4C0], @"kCGGenerateFlexGTC", @"kCGImageSourceDecodeRequestOptions");
          if (IIODictionary::getBoolForKeyGroup(a3, @"kCGGenerateFlexGTC", @"kCGImageSourceDecodeRequestOptions"))
          {
            LogError("createThumbnailAtIndex", 2555, "*** Camera - creating kCGGenerateFlexGTC\n");
          }
        }
      }
    }

    IIOImageSource::getThumbnailInfoAtIndex(this, 0, Uint32ForKey, v20);
    v12 = *(this + 2);
    if (v12)
    {
      v13 = CGImageReadSessionCreate(v12);
      if (v13)
      {
        v14 = v13;
        CGImageSourceGetSource(v12);
        CGImageSourceGetSource(v14);
        operator new();
      }

      IIOImageSource::createThumbnailAtIndex(&v19);
    }

    else
    {
      IIOImageSource::createThumbnailAtIndex(&v19);
    }
  }

  if (v25)
  {
    CGImageRelease(0);
    kdebug_trace();
  }

  if (a4)
  {
    *a4 = v25;
    if (a5)
    {
      *a5 = v19;
    }
  }

  return 0;
}

__n128 IIOImageSource::makeThumbTransform@<Q0>(float a1@<S0>, float a2@<S1>, unint64_t a3@<X1>, unint64_t a4@<X2>, int a5@<W3>, uint64_t a6@<X8>)
{
  v55 = *MEMORY[0x1E69E9840];
  v7 = a2 / a1;
  if (a2 <= a1)
  {
    v7 = 1.0;
  }

  v8 = a1 <= a2;
  v9 = a1 / a2;
  v14[0] = v7;
  v14[1] = 0.0;
  v14[2] = 0.0;
  if (v8)
  {
    v9 = 1.0;
  }

  v14[3] = v9;
  v14[4] = 0.0;
  v14[5] = 0.0;
  v15 = -v7;
  v16 = 0;
  v17 = 0;
  v18 = v9;
  v19 = (v7 * a3);
  v20 = 0;
  v21 = v15;
  v22 = 0;
  v23 = 0;
  v24 = -v9;
  v25 = v19;
  v26 = (v9 * a4);
  v27 = v7;
  v28 = 0;
  v29 = 0;
  v30 = v24;
  v31 = 0;
  v32 = v26;
  v33 = 0;
  v34 = v15;
  v35 = v24;
  v36 = 0;
  v37 = v26;
  v38 = v19;
  v39 = 0;
  v40 = v15;
  v41 = v9;
  v42 = 0;
  v43 = 0;
  v44 = v19;
  v45 = 0;
  v46 = v7;
  v47 = v9;
  v48 = 0u;
  v49 = 0u;
  v50 = v7;
  v51 = v24;
  v52 = 0;
  v53 = v26;
  v54 = 0;
  if ((a5 - 9) >= 0xFFFFFFF8)
  {
    v10 = a5 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = &v14[6 * v10];
  result = *v11;
  v13 = *(v11 + 2);
  *(a6 + 16) = *(v11 + 1);
  *(a6 + 32) = v13;
  *a6 = result;
  return result;
}

CGColorSpace *IIOImageSource::createThumbnailColorspace(IIOImageSource *this, CGImageRef image, CGImageAlphaInfo *a3, unint64_t *a4)
{
  AlphaInfo = CGImageGetAlphaInfo(image);
  ColorSpace = CGImageGetColorSpace(image);
  Model = CGColorSpaceGetModel(ColorSpace);
  Type = CGColorSpaceGetType();
  IsOpaque = _ImageIsOpaque(image);
  if (Model)
  {
    v12 = IsOpaque;
    if (Model != kCGColorSpaceModelRGB || Type == 7)
    {
      v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    }

    else
    {
      v13 = CGColorSpaceRetain(ColorSpace);
    }

    v14 = v13;
    *a4 = 4;
    if (v12)
    {
      v15 = kCGImageAlphaNoneSkipFirst;
    }

    else
    {
      v15 = kCGImageAlphaPremultipliedFirst;
    }

    *a3 = v15;
    CGImageGetBitmapInfo(image);
  }

  else
  {
    v14 = CGColorSpaceRetain(ColorSpace);
    if (AlphaInfo)
    {
      *a4 = 2;
      *a3 = kCGImageAlphaPremultipliedLast;
    }

    else
    {
      *a4 = 1;
      *a3 = kCGImageAlphaNone;
    }
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    Name = CGColorSpaceGetName(v14);
    IIOString::IIOString(v19, Name);
    v17 = IIOString::utf8String(v19);
    ImageIOLog("COL createThumbnailColorspace: '%s'\n", v17);
    IIOString::~IIOString(v19);
  }

  return v14;
}

void sub_185FCBFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIOImageSource::getImageCacheAtIndex(IIOImageSource *this, unint64_t a2, const __CFDictionary **a3)
{
  if (!IIOImageSource::bindToReader(this))
  {
    return 0;
  }

  ImagePlus = IIOImageSource::makeImagePlus(this, a2, a3);
  if (!ImagePlus || !*(ImagePlus + 24))
  {
    return 0;
  }

  return IIOLookupISR();
}

__IOSurface *IIOImageSource::createIOSurfaceAtIndex(IIOImageSource *this, unint64_t a2, IIODictionary *a3)
{
  *v16 = 0;
  IIODictionary::containsKey(a3, "kCGImageSourceSoftmaskData");
  IIODictionary::containsKey(a3, @"kCGImageSourceColorTransform");
  if (IIODictionary::containsKey(a3, @"kCGImageSourceThumbnailMaxPixelSize"))
  {
    IIODictionary::getUint32ForKey(a3, @"kCGImageSourceThumbnailMaxPixelSize");
    operator new();
  }

  ImageAtIndex = IIOImageSource::createImageAtIndex(this, a2, a3, &v16[1], v16);
  if (ImageAtIndex)
  {
    ColorSpace = CGImageGetColorSpace(ImageAtIndex);
    Model = CGColorSpaceGetModel(ColorSpace);
    if (Model >= kCGColorSpaceModelCMYK)
    {
      _cg_jpeg_mem_term("createIOSurfaceAtIndex", 3209, "*** ERROR: unsupported colorspace (csm=%d)\n", Model);
    }

    else
    {
      if (IIODictionary::containsKey(a3, @"kCGImageSourceUseNativeSurfaceFormat"))
      {
        BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageSourceUseNativeSurfaceFormat");
      }

      else
      {
        BoolForKey = 0;
      }

      if (CGImageGetImageProvider())
      {
        CGImageProviderGetSize();
        operator new();
      }

      _cg_jpeg_mem_term("createIOSurfaceAtIndex", 3286, " CGImageGetImageProvider returned NULL, creating IOSurface from CGImage data.\n");
      if (!BoolForKey)
      {
        IOSurfaceFromImage = IIO_CreateIOSurfaceFromImage(ImageAtIndex, 1380401729);
        if (IOSurfaceFromImage)
        {
          v11 = IOSurfaceCopyValue(IOSurfaceFromImage, @"IOSurfaceContentHeadroom");
          if (v11)
          {
            CFRelease(v11);
          }

          else
          {
            CGImageGetContentHeadroom();
            if (v12 >= 1.0)
            {
              IIONumber::IIONumber(v14, v12);
              IOSurfaceSetValue(IOSurfaceFromImage, @"IOSurfaceContentHeadroom", value);
              IIONumber::~IIONumber(v14);
            }
          }
        }

        goto LABEL_18;
      }
    }

    IOSurfaceFromImage = 0;
LABEL_18:
    CGImageRelease(ImageAtIndex);
    return IOSurfaceFromImage;
  }

  return 0;
}

void sub_185FCC5A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

vImage_Error IIOImageSource::mergeSoftmask(IIOImageSource *this, IOSurfaceRef buffer, IIODictionary *a3)
{
  PixelFormat = IOSurfaceGetPixelFormat(buffer);
  if (PixelFormat != 1380401729 && PixelFormat != 1111970369)
  {
    return 0;
  }

  Width = IOSurfaceGetWidth(buffer);
  Height = IOSurfaceGetHeight(buffer);
  BytesPerRow = IOSurfaceGetBytesPerRow(buffer);
  ObjectForKey = IIODictionary::getObjectForKey(a3, "kCGImageSourceSoftmaskData");
  Length = CFDataGetLength(ObjectForKey);
  Uint32ForKey = IIODictionary::getUint32ForKey(a3, "kCGImageSourceSoftmaskWidth");
  v10 = Uint32ForKey;
  v11 = IIODictionary::getUint32ForKey(a3, "kCGImageSourceSoftmaskHeight");
  v12 = IIODictionary::getUint32ForKey(a3, "kCGImageSourceSoftmaskRowBytes");
  v13 = IIODictionary::getUint32ForKey(a3, "kCGImageSourceSoftmaskBitsPerComponent");
  v14 = v13;
  if (v13 <= 8 && (v15 = 1, ((1 << v13) & 0x116) != 0))
  {
    v16 = 0;
  }

  else
  {
    _cg_jpeg_mem_term("mergeSoftmask", 3335, "*** ERROR: invalid softmask bitsPerComponent: %d (expected 1,2,4, or 8\n", v13);
    v15 = 0;
    v16 = 4294967246;
  }

  if (v14 <= 8 && ((1 << v14) & 0x116) != 0)
  {
    if (Length < v14 * v11)
    {
      _cg_jpeg_mem_term("mergeSoftmask", 3340, "*** ERROR: invalid softmask: %ldx%ld  dataSize: %ld\n  expected: %ld   (%d bpc)", Uint32ForKey, v11, Length, v14 * v11, v14);
      return 4294967246;
    }
  }

  else if (!v15)
  {
    return v16;
  }

  BytePtr = CFDataGetBytePtr(ObjectForKey);
  if (v14 > 7)
  {
    v19 = 0;
    if (!v11)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  v18 = v12;
  v19 = malloc_type_calloc(Uint32ForKey, v11, 0x100004077774924uLL);
  src.data = BytePtr;
  src.height = v11;
  src.width = Uint32ForKey;
  src.rowBytes = v18;
  dest.data = v19;
  dest.height = v11;
  dest.width = Uint32ForKey;
  dest.rowBytes = Uint32ForKey;
  switch(v14)
  {
    case 4u:
      vImageConvert_Planar4toPlanar8(&src, &dest, 0x10u);
      break;
    case 2u:
      vImageConvert_Planar2toPlanar8(&src, &dest, 0x10u);
      break;
    case 1u:
      vImageConvert_Planar1toPlanar8(&src, &dest, 0x10u);
      break;
  }

  BytePtr = v19;
  if (v11)
  {
LABEL_23:
    for (i = 0; i != v11; ++i)
    {
      if (Uint32ForKey)
      {
        v21 = &BytePtr[i * Uint32ForKey];
        v22 = Uint32ForKey;
        do
        {
          *v21 = ~*v21;
          ++v21;
          --v22;
        }

        while (v22);
      }
    }
  }

LABEL_28:
  src.data = BytePtr;
  src.height = v11;
  src.width = Uint32ForKey;
  src.rowBytes = Uint32ForKey;
  if (Width == Uint32ForKey && Height == v11)
  {
    v23 = 0;
    v24 = Height;
    v25 = Width;
  }

  else
  {
    dest = src;
    v23 = malloc_type_calloc(Width, Height, 0x100004077774924uLL);
    src.data = v23;
    src.height = Height;
    src.width = Width;
    src.rowBytes = Width;
    v16 = vImageScale_Planar8(&dest, &src, 0, 0x10u);
    if (v16)
    {
      _cg_jpeg_mem_term("mergeSoftmask", 3401, "*** ERROR: vImageScale_Planar8 failed - err= %d\n", v16);
      if (!v23)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v24 = src.height;
    v25 = src.width;
  }

  if (v25 != Width || v24 != Height)
  {
    _cg_jpeg_mem_term("mergeSoftmask", 3408, "*** ERROR: invalid dimesions:  alpha: %ldx%ld   surface: %ldx%ld", v10, v11, Length, v11 * v10);
    v16 = 4294967246;
    if (!v23)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (!IOSurfaceLock(buffer, 0, 0))
  {
    dest.data = IOSurfaceGetBaseAddress(buffer);
    dest.height = Height;
    dest.width = Width;
    dest.rowBytes = BytesPerRow;
    v16 = vImageOverwriteChannels_ARGB8888(&src, &dest, &dest, 1u, 0x10u);
    if (v16)
    {
      _cg_jpeg_mem_term("mergeSoftmask", 3418, "*** ERROR: vImageOverwriteChannels_ARGB8888 failed - err= %d\n", v16);
    }

    vImageClipToAlpha_RGBA8888(&dest, &dest, 0x10u);
    IOSurfaceUnlock(buffer, 0, 0);
    if (!v23)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v16 = 0;
  if (v23)
  {
LABEL_41:
    free(v23);
  }

LABEL_42:
  if (v19)
  {
    free(v19);
  }

  return v16;
}

uint64_t ___ZN14IIOImageSource14getCacheValuesEP13IIODictionaryPbS2__block_invoke()
{
  v0 = "enabled";
  if (((gIIODebugFlags >> 30) & 1) == 0)
  {
    v0 = "disabled";
  }

  return _cg_jpeg_mem_term("getCacheValues_block_invoke", 3596, ">>> IMAGEIO_ENABLE_CACHE was set to: %d = caching is %s for all images\n", (gIIODebugFlags >> 30) & 1, v0);
}

uint64_t IIOImageSource::copyAuxiliaryDataInfoAtIndex(IIOImageSource *this, unint64_t a2, __CFString *a3, IIODictionary *a4)
{
  IIO_LoadCMPhotoSymbols();
  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeDisparity", a3, 0) == kCFCompareEqualTo)
  {
    v8 = *gIIO_kCMPhotoAuxiliaryImageTypeURN_Depth;
    v9 = *gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Depth;
    v10 = 1;
    goto LABEL_32;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeDepth", a3, 0) == kCFCompareEqualTo)
  {
    v8 = *gIIO_kCMPhotoAuxiliaryImageTypeURN_Depth;
    v9 = *gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Depth;
    v10 = 2;
    goto LABEL_32;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeAlpha", a3, 0) == kCFCompareEqualTo)
  {
    v8 = *gIIO_kCMPhotoAuxiliaryImageTypeURN_Alpha;
    v9 = *gIIO_kCMPhotoAuxiliaryImageTypeURN_MIAF_Alpha;
    v10 = 3;
    goto LABEL_32;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypePortraitEffectsMatte", a3, 0) == kCFCompareEqualTo)
  {
    v9 = 0;
    v8 = *gIIO_kCMPhotoAuxiliaryImageTypeURN_PortraitEffectsMatte;
    v10 = 5;
    goto LABEL_32;
  }

  if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationSkinMatte", a3, 0))
  {
    if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationHairMatte", a3, 0))
    {
      if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationTeethMatte", a3, 0))
      {
        if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationGlassesMatte", a3, 0))
        {
          if (CFStringCompare(@"kCGImageAuxiliaryDataTypeSemanticSegmentationSkyMatte", a3, 0))
          {
            if (CFStringCompare(@"kCGImageAuxiliaryDataTypeHDRGainMap", a3, 0))
            {
              v8 = @"kCGImageAuxiliaryDataTypeISOGainMap";
              if (CFStringCompare(@"kCGImageAuxiliaryDataTypeISOGainMap", a3, 0) == kCFCompareEqualTo)
              {
                v9 = 0;
                v10 = 98;
                goto LABEL_32;
              }

              goto LABEL_30;
            }

            v12 = 0;
            v11 = 3;
            v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap;
          }

          else
          {
            v12 = 0;
            v11 = 2;
            v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte;
          }
        }

        else
        {
          v12 = 0;
          v11 = 1;
          v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte;
        }
      }

      else
      {
        v11 = 0;
        v12 = 1;
        v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte;
      }
    }

    else
    {
      v11 = 0;
      v12 = 1;
      v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte;
    }
  }

  else
  {
    v11 = 0;
    v12 = 1;
    v13 = &gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte;
  }

  v14 = *v13;
  v8 = *v14;
  if (*v14)
  {
    v15 = CFStringCompare(*v14, @"FIG_STRING_SYMBOL_NOT_FOUND", 0);
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = v12;
    }

    if (v16)
    {
      if (v15)
      {
        v9 = 0;
        v10 = 4;
        goto LABEL_32;
      }
    }

    else
    {
      LogError("copyAuxiliaryDataInfoAtIndex", 3935, "*** ERROR: copyAuxiliaryDataInfoAtIndex - MediaToolbox symbol not found [%d]\n", v11);
    }

LABEL_48:
    v25 = 0;
    v26 = 0;
    v27 = 0;
    IIOString::IIOString(&v25, a3);
    v24 = IIOString::utf8String(&v25);
    LogError("copyAuxiliaryDataInfoAtIndex", 3983, "*** ERROR: unsupported auxiliaryDataType: '%s'\n", v24);
    IIOString::~IIOString(&v25);
    return 0;
  }

LABEL_30:
  if ((IIO_OSAppleInternalBuild() & 1) == 0)
  {
    goto LABEL_48;
  }

  v9 = 0;
  v10 = 99;
  v8 = a3;
LABEL_32:
  if (!IIOImageSource::bindToReader(this))
  {
    return 0;
  }

  ImagePlus = IIOImageSource::getImagePlus(this, a2);
  if (!ImagePlus)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    IIODictionary::IIODictionary(&v25);
    v23 = IIOImageSource::makeImagePlus(this, a2, &v25);
    if (v23)
    {
      ImagePlus = *(v23 + 24);
      IIODictionary::~IIODictionary(&v25);
      if (ImagePlus)
      {
        goto LABEL_34;
      }
    }

    else
    {
      IIODictionary::~IIODictionary(&v25);
    }

    return 0;
  }

LABEL_34:
  Plugin = IIOImagePlus::readPlugin(ImagePlus);
  if (!Plugin)
  {
    goto LABEL_52;
  }

  v19 = Plugin;
  result = (*(*Plugin + 168))(Plugin, v10, v8, a4);
  if (!result && v9 != 0)
  {
    result = (*(*v19 + 168))(v19, v10, v9, a4);
  }

  if (!result)
  {
LABEL_52:
    if ((*(**(this + 13) + 192))(*(this + 13)))
    {
      v22 = IIOImageSource::cf(ImagePlus);
      return (*(**(this + 13) + 120))(*(this + 13), v22, a2, a3);
    }

    return 0;
  }

  return result;
}

void sub_185FCCF2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

const __CFNumber *IIOImageSource::getPrimaryImageIndex(IIOImageSource *this)
{
  pthread_mutex_lock((this + 288));
  PropertiesInternal = IIOImageSource::getPropertiesInternal(this, 0);
  pthread_mutex_unlock((this + 288));
  v3 = *(this + 13);
  if (!v3 || IIO_Reader::osType(v3) != 1212500291 && IIO_Reader::osType(*(this + 13)) != 1096173894 || !PropertiesInternal)
  {
    return 0;
  }

  return IIODictionary::getUint32ForKey(PropertiesInternal, @"PrimaryImage");
}

void sub_185FCD0C8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185FCD074);
}

IIOImagePlus *IIOImageSource::getAnimationReadPlugin(IIOImageSource *this)
{
  result = IIOImageSource::getImagePlus(this, 0);
  if (result)
  {

    return IIOImagePlus::readPlugin(result);
  }

  return result;
}

uint64_t CGImageSourceGetRead(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 24)) != 0)
  {
    return CGImageSourceGetSource(*(v1 + 16));
  }

  else
  {
    return 0;
  }
}

CFTypeID CGImageSourceGetTypeID(void)
{
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  return CGImageSourceGetTypeID::id;
}

CFStringRef _CGImageSourceCopyDescription(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    v3 = "";
    if (v2)
    {
      if (IIOImageSource::isProxy(a1[3]))
      {
        v3 = "Proxy";
      }

      v4 = *(v2 + 104);
      if (v4)
      {
        v5 = IIO_Reader::utType(v4);
        if (v5)
        {
          return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGImageSource%s: %p> %p '%@'", v3, a1, v2, v5);
        }
      }
    }
  }

  else
  {
    v2 = 0;
    v3 = "";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGImageSource%s: %p> %p", v3, a1, v2);
}

CFMutableArrayRef CGImageSourceCopyTypeExtensions(const __CFString *a1)
{
  IIOInitDebugFlags();
  TypeID = gIIODebugFlags >> 14;
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(TypeID, "S", "CGImageSourceCopyTypeExtensions", 0, 0, -1, 0);
  }

  if (a1 && (v3 = CFGetTypeID(a1), TypeID = CFStringGetTypeID(), v3 != TypeID))
  {
    CGImageSourceCopyTypeExtensions_cold_1();
    return 0;
  }

  else
  {
    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(TypeID);

    return IIO_ReaderHandler::copyTypeExtensions(ReaderHandler, a1);
  }
}

__CFString *CGImageSourceGetTypeWithExtension(const __CFString *a1)
{
  IIOInitDebugFlags();
  v2 = (gIIODebugFlags >> 14);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(v2, "S", "CGImageSourceGetTypeWithExtension", 0, 0, -1, 0);
  }

  if (!a1)
  {
    return 0;
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v2);

  return IIO_ReaderHandler::typeForPathExtension(ReaderHandler, a1);
}

IIO_Reader *CGImageSourceGetTypeWithDataProvider(uint64_t a1, __CFString *a2, BOOL *a3)
{
  IIOInitDebugFlags();
  v6 = (gIIODebugFlags >> 14);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(v6, "S", "CGImageSourceGetTypeWithDataProvider", 0, 0, -1, 0);
  }

  v9 = 0uLL;
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v6);
  v10 = 0;
  return IIO_ReaderHandler::typeForDataProvider(ReaderHandler, a1, a2, &v9, a3);
}

IIO_Reader *CGImageSourceGetTypeWithURL(const void *a1, __CFString *a2)
{
  IIOInitDebugFlags();
  v4 = (gIIODebugFlags >> 14);
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(v4, "S", "CGImageSourceGetTypeWithURL", 0, 0, -1, 0);
  }

  memset(v7, 0, sizeof(v7));
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(v4);
  return IIO_ReaderHandler::typeFromURL(ReaderHandler, a1, a2, v7);
}

CGImageSourceRef CGImageSourceCreateIncremental(CFDictionaryRef options)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (options)
  {
    v2 = CFGetTypeID(options);
    if (v2 != CFDictionaryGetTypeID())
    {
      LogError("CGImageSourceCreateIncremental", 4779, "*** ERROR: CGImageSourceCreateIncremental: options parameter is not a CFDictionaryRef - ignoring\n");
      options = 0;
    }
  }

  memset(v4, 0, sizeof(v4));
  IIODictionary::IIODictionary(v4, options);
  operator new();
}

void sub_185FCD5F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x186602850](v2, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageSourceUpdateDataProvider(CGImageSourceRef isrc, CGDataProviderRef provider, BOOL final)
{
  v3 = final;
  kdebug_trace();
  IIOInitDebugFlags();
  v6 = (gIIODebugFlags >> 12) & 3;
  if (v6)
  {
    ImageIODebugOptions(v6, "A", "CGImageSourceUpdateDataProvider", 0, 0, -1, 0);
  }

  if (isrc)
  {
    if (provider)
    {
      v7 = CFGetTypeID(isrc);
      if (CGImageSourceGetTypeID::once != -1)
      {
        CGImageSourceGetTypeID_cold_1();
      }

      if (v7 == CGImageSourceGetTypeID::id)
      {
        v8 = CFGetTypeID(provider);
        if (v8 == CGDataProviderGetTypeID())
        {
          v9 = *(isrc + 3);
          if (v9 && !IIOImageSource::isProxy(v9))
          {
            pthread_mutex_lock((v9 + 224));
            IIOImageSource::updateDataProvider(v9, provider, v3);
            v10 = *(v9 + 104);
            if (v10)
            {
              IIO_Reader::osType(v10);
            }

            Source = CGImageSourceGetSource(*(v9 + 16));
            if (Source)
            {
              IIOImageRead::length(Source);
            }

            pthread_mutex_unlock((v9 + 224));
          }
        }

        else
        {
          CGImageSourceUpdateDataProvider_cold_3();
        }
      }

      else
      {
        CGImageSourceUpdateDataProvider_cold_2();
      }
    }

    else
    {
      CGImageSourceUpdateDataProvider_cold_4();
    }
  }

  else
  {
    CGImageSourceUpdateDataProvider_cold_5();
  }

  kdebug_trace();
}

void CGImageSourceUpdateData(CGImageSourceRef isrc, CFDataRef data, BOOL final)
{
  v3 = final;
  v49 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  IIOInitDebugFlags();
  if ((gIIODebugFlags & 0x3000) == 0)
  {
    goto LABEL_50;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  *__str = 0u;
  if (!data || CFDataGetLength(data) < 9)
  {
    strcpy(__str, "(NULL)");
    goto LABEL_48;
  }

  BytePtr = CFDataGetBytePtr(data);
  Length = CFDataGetLength(data);
  v8 = "NO ";
  if (v3)
  {
    v8 = "YES";
  }

  v42 = v8;
  v43 = Length;
  v9 = *BytePtr;
  v41 = BytePtr[1];
  v40 = BytePtr[2];
  v39 = BytePtr[3];
  v38 = BytePtr[4];
  v37 = BytePtr[5];
  v36 = BytePtr[6];
  v35 = BytePtr[7];
  v10 = MEMORY[0x1E69E9830];
  if ((v9 & 0x80) != 0)
  {
    if (__maskrune(v9, 0x40000uLL))
    {
      goto LABEL_8;
    }
  }

  else if ((*(MEMORY[0x1E69E9830] + 4 * *BytePtr + 60) & 0x40000) != 0)
  {
LABEL_8:
    v11 = *BytePtr;
    goto LABEL_12;
  }

  v11 = 46;
LABEL_12:
  v34 = v11;
  v12 = *(BytePtr + 1);
  if (v12 < 0)
  {
    if (__maskrune(BytePtr[1], 0x40000uLL))
    {
      goto LABEL_14;
    }
  }

  else if ((*(v10 + 4 * v12 + 60) & 0x40000) != 0)
  {
LABEL_14:
    v13 = BytePtr[1];
    goto LABEL_17;
  }

  v13 = 46;
LABEL_17:
  v33 = v13;
  v14 = *(BytePtr + 2);
  if (v14 < 0)
  {
    if (__maskrune(BytePtr[2], 0x40000uLL))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v10 + 4 * v14 + 60) & 0x40000) != 0)
  {
LABEL_19:
    v15 = BytePtr[2];
    goto LABEL_22;
  }

  v15 = 46;
LABEL_22:
  v32 = v15;
  v16 = *(BytePtr + 3);
  if (v16 < 0)
  {
    if (__maskrune(BytePtr[3], 0x40000uLL))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v10 + 4 * v16 + 60) & 0x40000) != 0)
  {
LABEL_24:
    v17 = BytePtr[3];
    goto LABEL_27;
  }

  v17 = 46;
LABEL_27:
  v31 = v17;
  v18 = *(BytePtr + 4);
  if (v18 < 0)
  {
    if (__maskrune(BytePtr[4], 0x40000uLL))
    {
      goto LABEL_29;
    }
  }

  else if ((*(v10 + 4 * v18 + 60) & 0x40000) != 0)
  {
LABEL_29:
    v19 = BytePtr[4];
    goto LABEL_32;
  }

  v19 = 46;
LABEL_32:
  v20 = *(BytePtr + 5);
  if (v20 < 0)
  {
    if (__maskrune(BytePtr[5], 0x40000uLL))
    {
      goto LABEL_34;
    }
  }

  else if ((*(v10 + 4 * v20 + 60) & 0x40000) != 0)
  {
LABEL_34:
    v21 = BytePtr[5];
    goto LABEL_37;
  }

  v21 = 46;
LABEL_37:
  v22 = *(BytePtr + 6);
  if (v22 < 0)
  {
    if (__maskrune(BytePtr[6], 0x40000uLL))
    {
      goto LABEL_39;
    }
  }

  else if ((*(v10 + 4 * v22 + 60) & 0x40000) != 0)
  {
LABEL_39:
    v23 = BytePtr[6];
    goto LABEL_42;
  }

  v23 = 46;
LABEL_42:
  v24 = *(BytePtr + 7);
  if (v24 < 0)
  {
    if (__maskrune(BytePtr[7], 0x40000uLL))
    {
      goto LABEL_44;
    }

LABEL_46:
    v25 = 46;
    goto LABEL_47;
  }

  if ((*(v10 + 4 * v24 + 60) & 0x40000) == 0)
  {
    goto LABEL_46;
  }

LABEL_44:
  v25 = BytePtr[7];
LABEL_47:
  snprintf(__str, 0x50uLL, "[%p]-(%ld) final:%s  | %02X %02X %02X %02X  %02X %02X %02X %02X | %c%c%c%c %c%c%c%c", data, v43, v42, v9, v41, v40, v39, v38, v37, v36, v35, v34, v33, v32, v31, v19, v21, v23, v25);
LABEL_48:
  v26 = (gIIODebugFlags >> 12) & 3;
  if (v26)
  {
    ImageIODebugOptions(v26, "A", "CGImageSourceUpdateData", isrc, __str, -1, 0);
  }

LABEL_50:
  if (isrc)
  {
    if (data)
    {
      v27 = CFGetTypeID(isrc);
      if (CGImageSourceGetTypeID::once != -1)
      {
        CGImageSourceUpdateData_cold_1();
      }

      if (v27 == CGImageSourceGetTypeID::id)
      {
        v28 = CFGetTypeID(data);
        if (v28 == CFDataGetTypeID())
        {
          v29 = *(isrc + 3);
          if (v29 && !IIOImageSource::isProxy(v29))
          {
            pthread_mutex_lock((v29 + 224));
            IIOImageSource::updateData(v29, data, v3);
            v30 = *(v29 + 104);
            if (v30)
            {
              IIO_Reader::osType(v30);
            }

            pthread_mutex_unlock((v29 + 224));
          }
        }

        else
        {
          CGImageSourceUpdateData_cold_3();
        }
      }

      else
      {
        CGImageSourceUpdateData_cold_2();
      }
    }

    else
    {
      CGImageSourceUpdateData_cold_4();
    }
  }

  else
  {
    CGImageSourceUpdateData_cold_5();
  }

  kdebug_trace();
}

uint64_t CGImageSourceAddProperty(uint64_t a1, const __CFString *a2, const __CFString *a3, const void *a4)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (a1 && (v8 = *(a1 + 24)) != 0 && !IIOImageSource::isProxy(v8))
  {
    IIOImageSource::addProperty(v8, a2, a3, a4);
    v10 = *(v8 + 13);
    if (v10)
    {
      IIO_Reader::osType(v10);
    }
  }

  else
  {
    LogError("CGImageSourceAddProperty", 5004, "image source parameter is nil\n");
  }

  return kdebug_trace();
}

CFDictionaryRef CGImageSourceCopyProperties(CGImageSourceRef isrc, CFDictionaryRef options)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v4 = (gIIODebugFlags >> 12) & 3;
  if (v4)
  {
    ImageIODebugOptions(v4, "A", "CGImageSourceCopyProperties", isrc, 0, -1, options);
  }

  if (!isrc)
  {
    CGImageSourceCopyProperties_cold_3();
LABEL_19:
    v9 = 0;
    goto LABEL_20;
  }

  v5 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  if (v5 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceCopyProperties_cold_2();
    goto LABEL_19;
  }

  if (options)
  {
    v6 = CFGetTypeID(options);
    if (v6 != CFDictionaryGetTypeID())
    {
      LogError("CGImageSourceCopyProperties", 5026, "*** ERROR: CGImageSourceCopyProperties: options parameter is not a CFDictionaryRef - ignoring\n");
      options = 0;
    }
  }

  v7 = *(isrc + 3);
  if (!v7)
  {
    goto LABEL_19;
  }

  memset(v12, 0, sizeof(v12));
  IIODictionary::IIODictionary(v12, options);
  pthread_mutex_lock((v7 + 224));
  if (IIOImageSource::isProxy(v7))
  {
    v8 = IIOImageSource::proxyCopyProperties(v7, v12);
  }

  else
  {
    v8 = IIOImageSource::copyProperties(v7, v12);
  }

  v9 = v8;
  v10 = *(v7 + 104);
  if (v10)
  {
    IIO_Reader::osType(v10);
  }

  pthread_mutex_unlock((v7 + 224));
  IIODictionary::~IIODictionary(v12);
LABEL_20:
  kdebug_trace();
  return v9;
}

void sub_185FCDF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageSourceIsColorOptimizedForSharing(void *a1, const void *a2)
{
  IIOInitDebugFlags();
  v4 = gIIODebugFlags >> 14;
  if ((v4 & (gIIODebugFlags >> 12)) != 0)
  {
    ImageIODebugOptions(v4, "A", "CGImageSourceIsColorOptimizedForSharing", a1, 0, -1, 0);
  }

  if (a1)
  {
    v5 = CFGetTypeID(a1);
    if (CGImageSourceGetTypeID::once != -1)
    {
      CGImageSourceGetTypeID_cold_1();
    }

    if (v5 == CGImageSourceGetTypeID::id)
    {
      if (a2)
      {
        v6 = CFGetTypeID(a2);
        if (v6 != CFDictionaryGetTypeID())
        {
          LogError("CGImageSourceIsColorOptimizedForSharing", 5070, "*** ERROR: CGImageSourceIsColorOptimizedForSharing: options parameter is not a CFDictionaryRef - ignoring\n");
          a2 = 0;
        }
      }

      v7 = a1[3];
      if (v7 && !IIOImageSource::isProxy(v7))
      {
        memset(v10, 0, sizeof(v10));
        IIODictionary::IIODictionary(v10, a2);
        isColorOptimizedForSharing = IIOImageSource::isColorOptimizedForSharing(v7, v10);
        IIODictionary::~IIODictionary(v10);
        return isColorOptimizedForSharing;
      }
    }

    else
    {
      CGImageSourceIsColorOptimizedForSharing_cold_2();
    }
  }

  else
  {
    CGImageSourceIsColorOptimizedForSharing_cold_3();
  }

  return 0;
}

void sub_185FCE088(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void CGImageSourceRemoveCacheAtIndex(CGImageSourceRef isrc, size_t index)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v4 = (gIIODebugFlags >> 12) & 3;
  if (v4)
  {
    ImageIODebugOptions(v4, "A", "CGImageSourceRemoveCacheAtIndex", isrc, 0, index, 0);
  }

  if (isrc)
  {
    v5 = CFGetTypeID(isrc);
    if (CGImageSourceGetTypeID::once != -1)
    {
      CGImageSourceGetTypeID_cold_1();
    }

    if (v5 == CGImageSourceGetTypeID::id)
    {
      if (!CGImageSourceIsProxy(isrc))
      {
        v6 = *(isrc + 3);
        if (v6)
        {
          Source = CGImageSourceGetSource(*(v6 + 16));
          if (Source)
          {
            IIOImageRead::removeCacheKey(Source, index);
          }
        }
      }
    }

    else
    {
      CGImageSourceRemoveCacheAtIndex_cold_2();
    }
  }

  else
  {
    CGImageSourceRemoveCacheAtIndex_cold_3();
  }

  kdebug_trace();
}

CGImageRef CGImageSourceCreateThumbnailAtIndex(CGImageSourceRef isrc, size_t index, CFDictionaryRef options)
{
  v3 = options;
  memset(v52, 0, 24);
  v6 = IIODictionary::IIODictionary(v52, options, 1);
  IIOPackSrcInputInfo(v6, index);
  kdebug_trace();
  IIOInitDebugFlags();
  v7 = (gIIODebugFlags >> 12) & 3;
  if (v7)
  {
    ImageIODebugOptions(v7, "A", "CGImageSourceCreateThumbnailAtIndex", isrc, 0, index, v3);
  }

  *v51 = 0;
  if (!isrc)
  {
    v45 = 5214;
    LogError("CGImageSourceCreateThumbnailAtIndex", 5214, "*** ERROR: CGImageSourceCreateThumbnailAtIndex: source is nil\n");
LABEL_108:
    ThumbnailAtIndex = 0;
    v13 = 0;
    v15 = 0;
    v51[0] = v45;
    Uint32ForKey = -1;
    v10 = -1;
    v48 = -1;
    BoolForKey = 255;
    v47 = 255;
    goto LABEL_37;
  }

  v8 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceUpdateData_cold_1();
  }

  if (v8 != CGImageSourceGetTypeID::id)
  {
    v45 = 5215;
    LogError("CGImageSourceCreateThumbnailAtIndex", 5215, "*** ERROR: CGImageSourceCreateThumbnailAtIndex: source is not a CGImageSourceRef\n");
    goto LABEL_108;
  }

  if (v3)
  {
    v9 = CFGetTypeID(v3);
    if (v9 != CFDictionaryGetTypeID())
    {
      LogError("CGImageSourceCreateThumbnailAtIndex", 5218, "*** ERROR: CGImageSourceCreateThumbnailAtIndex: options parameter is not a CFDictionaryRef - ignoring\n");
      v3 = 0;
    }
  }

  if (IIODictionary::containsKey(v52, @"kCGImageSourceCreateThumbnailFromImageAlways"))
  {
    BoolForKey = IIODictionary::getBoolForKey(v52, @"kCGImageSourceCreateThumbnailFromImageAlways");
  }

  else
  {
    BoolForKey = 255;
  }

  if (IIODictionary::containsKey(v52, @"kCGImageSourceCreateThumbnailFromImageIfAbsent"))
  {
    v48 = IIODictionary::getBoolForKey(v52, @"kCGImageSourceCreateThumbnailFromImageIfAbsent");
  }

  else
  {
    v48 = -1;
  }

  if (IIODictionary::containsKey(v52, @"kCGImageSourceCreateThumbnailWithTransform"))
  {
    v10 = IIODictionary::getBoolForKey(v52, @"kCGImageSourceCreateThumbnailWithTransform");
  }

  else
  {
    v10 = -1;
  }

  if (IIODictionary::containsKey(v52, @"kCGImageSourceThumbnailMaxPixelSize"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(v52, @"kCGImageSourceThumbnailMaxPixelSize");
    v12 = 1;
  }

  else
  {
    Uint32ForKey = -1;
    v12 = 255;
  }

  v47 = v12;
  v13 = *(isrc + 3);
  if (v13 && !IIOImageSource::isProxy(v13))
  {
    if (*(v13 + 89) == 1)
    {
      LogError("CGImageSourceCreateThumbnailAtIndex", 5238, "*** ERROR: invalid CGImageSourceRef (non-matching hint)\n");
      ThumbnailAtIndex = 0;
      v15 = 0;
      v51[0] = 5238;
    }

    else
    {
      v15 = 1848598816;
      if (BoolForKey == 1)
      {
        v16 = IIODictionary::containsKey(v52, @"kCGImageSourceThumbnailMaxPixelSize");
        v17 = v10 == -1 ? v16 : 1;
        if ((v17 & 1) == 0)
        {
          pthread_mutex_lock((v13 + 224));
          ImageAtIndex = IIOImageSource::createImageAtIndex(v13, index, v52, &v51[1], v51);
          v19 = *(v13 + 104);
          v20 = 1848598816;
          if (v19)
          {
            v20 = IIO_Reader::osType(v19);
          }

          pthread_mutex_unlock((v13 + 224));
          if (ImageAtIndex)
          {
            goto LABEL_102;
          }
        }
      }

      pthread_mutex_lock((v13 + 224));
      ThumbnailAtIndex = IIOImageSource::createThumbnailAtIndex(v13, index, v52, &v51[1], v51);
      v21 = *(v13 + 104);
      if (v21)
      {
        v15 = IIO_Reader::osType(v21);
      }

      pthread_mutex_unlock((v13 + 224));
    }
  }

  else
  {
    LogError("CGImageSourceCreateThumbnailAtIndex", 5264, "*** ERROR: CGImageSourceGetSource returned NULL\n");
    ThumbnailAtIndex = 0;
    v15 = 0;
    v51[0] = 5265;
  }

LABEL_37:
  ImageAtIndex = ThumbnailAtIndex;
  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageAtIndex = ThumbnailAtIndex;
    if (!ThumbnailAtIndex)
    {
      ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCreateThumbnailAtIndex", 5269, "could not create thumbnail-CGImageRef");
      ImageAtIndex = 0;
    }
  }

  if (!ThumbnailAtIndex && v13)
  {
    if (IIOImageSource::isProxy(v13))
    {
      goto LABEL_104;
    }

    kdebug_trace();
    LODWORD(v22) = v15 >> 24;
    if (v3)
    {
      v23 = v22 > 0x7F ? __maskrune(v15 >> 24, 0x40000uLL) : *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
      v24 = v23 ? v22 : 46;
      v46 = v24;
      v25 = v15 << 8 >> 24;
      v26 = v25 <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v25 + 60) & 0x40000 : __maskrune(v15 << 8 >> 24, 0x40000uLL);
      v27 = v26 ? v25 : 46;
      v28 = v15 >> 8;
      v29 = v28 <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v28 + 60) & 0x40000 : __maskrune(v15 >> 8, 0x40000uLL);
      v30 = v15 <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000 : __maskrune(v15, 0x40000uLL);
      v31 = v29 ? v28 : 46;
      v32 = v30 ? v15 : 46;
      LogError("CGImageSourceCreateThumbnailAtIndex", 5277, "*** ERROR: CGImageSourceCreateThumbnailAtIndex[%ld] - '%c%c%c%c' - failed to create thumbnail [%d] {alw:%d, abs: %d tra:%d max:%d}\n", index, v46, v27, v31, v32, v51[1], BoolForKey, v48, v10, Uint32ForKey);
    }

    else
    {
      v33 = v22 > 0x7F ? __maskrune(v15 >> 24, 0x40000uLL) : *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
      v22 = v33 ? v22 : 46;
      v34 = v15 << 8 >> 24;
      v35 = v34 <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v34 + 60) & 0x40000 : __maskrune(v15 << 8 >> 24, 0x40000uLL);
      v36 = v35 ? v34 : 46;
      v37 = v15 >> 8;
      v38 = v37 <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v37 + 60) & 0x40000 : __maskrune(v15 >> 8, 0x40000uLL);
      v39 = v15 <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000 : __maskrune(v15, 0x40000uLL);
      v40 = v38 ? v37 : 46;
      v41 = v39 ? v15 : 46;
      LogError("CGImageSourceCreateThumbnailAtIndex", 5274, "*** ERROR: CGImageSourceCreateThumbnailAtIndex[%ld] - '%c%c%c%c' - failed to create thumbnail (no options) [%d]\n", index, v22, v36, v40, v41, v51[1]);
    }

    if (BoolForKey != 255)
    {
      goto LABEL_104;
    }

    if (v47 != 1)
    {
      LogError("CGImageSourceCreateThumbnailAtIndex", 5294, "*** ERROR: CGImageSourceCreateThumbnailAtIndex[%ld]  'FromImageAlways' / 'FromImageIfAbsent' / 'ThumbnailMaxPixelSize' were not specified - no thumbnail created'\n", index);
LABEL_104:
      kdebug_trace();
      ImageAtIndex = 0;
      v20 = v15;
      goto LABEL_105;
    }

    memset(v50, 0, sizeof(v50));
    IIODictionary::IIODictionary(v50, v3, 1);
    IIODictionary::setObjectForKey(v50, *MEMORY[0x1E695E4D0], @"kCGImageSourceCreateThumbnailFromImageAlways");
    pthread_mutex_lock((v13 + 224));
    ImageAtIndex = IIOImageSource::createThumbnailAtIndex(v13, index, v50, &v51[1], v51);
    v42 = *(v13 + 104);
    if (v42)
    {
      v15 = IIO_Reader::osType(v42);
    }

    else
    {
      v15 = 1848598816;
    }

    pthread_mutex_unlock((v13 + 224));
    IIODictionary::~IIODictionary(v50);
  }

  v20 = v15;
  if (!ImageAtIndex)
  {
    goto LABEL_104;
  }

LABEL_102:
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
  if ((gIIODebugFlags & 0x10000000) != 0)
  {
    CFShow(ImageAtIndex);
    ImageIO_dumpImageData("CreateThumbnailAtIndex", ImageAtIndex);
  }

LABEL_105:
  kdebug_trace();
  IIO_CheckHeadroom("CGImageSourceCreateThumbnailAtIndex", v20, ImageAtIndex, v52);
  IIODictionary::~IIODictionary(v52);
  return ImageAtIndex;
}

uint64_t CGImageSourceGetImageCacheAtIndex(void *a1, unint64_t a2, const __CFDictionary *a3)
{
  IIOInitDebugFlags();
  memset(v12, 0, sizeof(v12));
  IIODictionary::IIODictionary(v12, a3);
  IIOPackSrcInputInfo(v12, a2);
  kdebug_trace();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceGetImageCacheAtIndex", a1, 0, -1, a3);
  }

  if (!a1)
  {
    LogError("CGImageSourceGetImageCacheAtIndex", 5337, "*** ERROR: CGImageSourceGetImageCacheAtIndex: source is nil\n");
LABEL_12:
    ImageCacheAtIndex = 0;
    goto LABEL_17;
  }

  v6 = CFGetTypeID(a1);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceUpdateData_cold_1();
  }

  if (v6 != CGImageSourceGetTypeID::id)
  {
    LogError("CGImageSourceGetImageCacheAtIndex", 5338, "*** ERROR: CGImageSourceGetImageCacheAtIndex: source is not a CGImageSourceRef\n");
    goto LABEL_12;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 != CFDictionaryGetTypeID())
    {
      LogError("CGImageSourceGetImageCacheAtIndex", 5341, "*** ERROR: CGImageSourceGetImageCacheAtIndex: options parameter is not a CFDictionaryRef - ignoring\n");
    }
  }

  v8 = a1[3];
  if (!v8 || IIOImageSource::isProxy(v8))
  {
    goto LABEL_12;
  }

  if (*(v8 + 89) == 1)
  {
    LogError("CGImageSourceGetImageCacheAtIndex", 5348, "*** ERROR: invalid CGImageSourceRef (non-matching hint)\n");
    goto LABEL_12;
  }

  pthread_mutex_lock((v8 + 224));
  ImageCacheAtIndex = IIOImageSource::getImageCacheAtIndex(v8, a2, v12);
  v10 = *(v8 + 104);
  if (v10)
  {
    IIO_Reader::osType(v10);
  }

  pthread_mutex_unlock((v8 + 224));
LABEL_17:
  kdebug_trace();
  IIODictionary::~IIODictionary(v12);
  return ImageCacheAtIndex;
}

void sub_185FCECC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImageMetadataRef CGImageSourceCopyMetadataAtIndex(CGImageSourceRef isrc, size_t index, CFDictionaryRef options)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v6 = (gIIODebugFlags >> 12) & 3;
  if (v6)
  {
    ImageIODebugOptions(v6, "A", "CGImageSourceCopyMetadataAtIndex", isrc, 0, index, options);
  }

  if (!isrc)
  {
    CGImageSourceCopyMetadataAtIndex_cold_3();
LABEL_12:
    v10 = 0;
    goto LABEL_16;
  }

  v7 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  if (v7 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceCopyMetadataAtIndex_cold_2();
    goto LABEL_12;
  }

  if (options)
  {
    v8 = CFGetTypeID(options);
    if (v8 != CFDictionaryGetTypeID())
    {
      LogError("CGImageSourceCopyMetadataAtIndex", 5432, "*** ERROR: CGImageSourceCopyMetadataAtIndex: options parameter is not a CFDictionaryRef - ignoring\n");
      options = 0;
    }
  }

  v9 = *(isrc + 3);
  if (!v9 || IIOImageSource::isProxy(v9))
  {
    goto LABEL_12;
  }

  memset(v13, 0, sizeof(v13));
  IIODictionary::IIODictionary(v13, options);
  pthread_mutex_lock((v9 + 224));
  v11 = *(v9 + 104);
  if (v11)
  {
    IIO_Reader::osType(v11);
  }

  v10 = IIOImageSource::copyMetadataAtIndex(v9, index, v13);
  pthread_mutex_unlock((v9 + 224));
  IIODictionary::~IIODictionary(v13);
LABEL_16:
  if ((gIIODebugFlags & 0x800000000000) != 0 && !v10)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCopyMetadataAtIndex", 5448, "could not create CGImageMetadataRef");
  }

  kdebug_trace();
  return v10;
}

void sub_185FCEED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

__CFArray *CGImageSourceCopyMetadataPropertiesAtIndex(void *a1, unint64_t a2, const __CFDictionary *a3)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceCopyMetadataPropertiesAtIndex", a1, 0, -1, a3);
  }

  if (!a1)
  {
    CGImageSourceCopyMetadataPropertiesAtIndex_cold_4();
LABEL_12:
    v9 = 0;
    goto LABEL_20;
  }

  v6 = CFGetTypeID(a1);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  if (v6 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceCopyMetadataPropertiesAtIndex_cold_2();
    goto LABEL_12;
  }

  if (a3)
  {
    v7 = CFGetTypeID(a3);
    if (v7 != CFDictionaryGetTypeID())
    {
      LogError("CGImageSourceCopyMetadataPropertiesAtIndex", 5472, "*** ERROR: CGImageSourceCopyMetadataPropertiesAtIndex: options parameter is not a CFDictionaryRef - ignoring\n");
      a3 = 0;
    }
  }

  v8 = a1[3];
  if (!v8 || IIOImageSource::isProxy(v8))
  {
    goto LABEL_12;
  }

  if (*(v8 + 89) == 1)
  {
    CGImageSourceCopyMetadataPropertiesAtIndex_cold_3();
    goto LABEL_12;
  }

  v13 = 1;
  pthread_mutex_lock((v8 + 224));
  if (a3)
  {
    memset(v12, 0, sizeof(v12));
    IIODictionary::IIODictionary(v12, a3);
    v9 = IIOImageSource::copyMetadataPropertiesAtIndex(v8, a2, v12, &v13);
    IIODictionary::~IIODictionary(v12);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v8 + 104);
  if (v10)
  {
    IIO_Reader::osType(v10);
  }

  pthread_mutex_unlock((v8 + 224));
LABEL_20:
  if ((gIIODebugFlags & 0x800000000000) != 0 && !v9)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCopyMetadataPropertiesAtIndex", 5494, "*** ERROR: CGImageSourceCopyMetadataPropertiesAtIndex returned NULL\n");
  }

  kdebug_trace();
  return v9;
}

void sub_185FCF110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

__IOSurface *CGImageSourceCreateIOSurfaceAtIndex(IIOImageSource **a1, unint64_t a2, const __CFDictionary *a3)
{
  IIOInitDebugFlags();
  memset(v12, 0, sizeof(v12));
  IIODictionary::IIODictionary(v12, a3);
  IIOPackSrcInputInfo(v12, a2);
  kdebug_trace();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceCreateIOSurfaceAtIndex", a1, 0, -1, a3);
  }

  if (a1)
  {
    v6 = CFGetTypeID(a1);
    if (CGImageSourceGetTypeID::once != -1)
    {
      CGImageSourceUpdateData_cold_1();
    }

    if (v6 == CGImageSourceGetTypeID::id)
    {
      if (a3)
      {
        v7 = CFGetTypeID(a3);
        if (v7 != CFDictionaryGetTypeID())
        {
          LogError("CGImageSourceCreateIOSurfaceAtIndex", 5524, "*** ERROR: CGImageSourceCreateIOSurfaceAtIndex: options parameter is not a CFDictionaryRef - ignoring\n");
        }
      }

      v8 = a1[3];
      if (v8 && !IIOImageSource::isProxy(a1[3]))
      {
        if (*(v8 + 89) == 1)
        {
          LogError("CGImageSourceCreateIOSurfaceAtIndex", 5531, "*** ERROR: invalid CGImageSourceRef (non-matching hint)\n");
        }

        else
        {
          pthread_mutex_lock((v8 + 224));
          IOSurfaceAtIndex = IIOImageSource::createIOSurfaceAtIndex(v8, a2, v12);
          v11 = *(v8 + 13);
          if (v11)
          {
            IIO_Reader::osType(v11);
          }

          pthread_mutex_unlock((v8 + 224));
          if (IOSurfaceAtIndex)
          {
            IOSurfaceGetWidth(IOSurfaceAtIndex);
            IOSurfaceGetHeight(IOSurfaceAtIndex);
            IOSurfaceGetPixelFormat(IOSurfaceAtIndex);
            goto LABEL_15;
          }
        }
      }
    }

    else
    {
      LogError("CGImageSourceCreateIOSurfaceAtIndex", 5521, "*** ERROR: CGImageSourceCreateIOSurfaceAtIndex: source is not a CGImageSourceRef\n");
    }
  }

  else
  {
    LogError("CGImageSourceCreateIOSurfaceAtIndex", 5520, "*** ERROR: CGImageSourceCreateIOSurfaceAtIndex: source is nil\n");
  }

  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCreateIOSurfaceAtIndex", 5545, "could not create IOSurfaceRef");
  }

  IOSurfaceAtIndex = 0;
LABEL_15:
  kdebug_trace();
  IIODictionary::~IIODictionary(v12);
  return IOSurfaceAtIndex;
}

void sub_185FCF374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImageSourceStatus CGImageSourceGetStatus(CGImageSourceRef isrc)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v2 = (gIIODebugFlags >> 12) & 3;
  if (v2)
  {
    ImageIODebugOptions(v2, "A", "CGImageSourceGetStatus", isrc, 0, -1, 0);
  }

  if (!isrc)
  {
    CGImageSourceGetStatus_cold_4();
LABEL_9:
    v5 = kCGImageStatusInvalidData;
    goto LABEL_17;
  }

  v3 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  if (v3 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceGetStatus_cold_2();
    goto LABEL_9;
  }

  v4 = *(isrc + 3);
  if (!v4 || IIOImageSource::isProxy(*(isrc + 3)))
  {
    goto LABEL_9;
  }

  if (*(v4 + 89) == 1)
  {
    CGImageSourceGetStatus_cold_3();
    goto LABEL_9;
  }

  pthread_mutex_lock((v4 + 224));
  if (IIOImageSource::bindToReader(v4))
  {
    v5 = *(v4 + 112);
  }

  else
  {
    v5 = kCGImageStatusInvalidData;
  }

  v6 = *(v4 + 104);
  if (v6)
  {
    IIO_Reader::osType(v6);
  }

  pthread_mutex_unlock((v4 + 224));
LABEL_17:
  kdebug_trace();
  return v5;
}

CGImageSourceStatus CGImageSourceGetStatusAtIndex(CGImageSourceRef isrc, size_t index)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v4 = (gIIODebugFlags >> 12) & 3;
  if (v4)
  {
    ImageIODebugOptions(v4, "A", "CGImageSourceGetStatusAtIndex", isrc, 0, index, 0);
  }

  if (!isrc)
  {
    CGImageSourceGetStatusAtIndex_cold_4();
LABEL_9:
    StatusAtIndex = kCGImageStatusInvalidData;
    goto LABEL_17;
  }

  v5 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  if (v5 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceGetStatusAtIndex_cold_2();
    goto LABEL_9;
  }

  v6 = *(isrc + 3);
  if (!v6 || IIOImageSource::isProxy(*(isrc + 3)))
  {
    goto LABEL_9;
  }

  if (*(v6 + 89) == 1)
  {
    CGImageSourceGetStatusAtIndex_cold_3();
    goto LABEL_9;
  }

  pthread_mutex_lock((v6 + 224));
  if (IIOImageSource::bindToReader(v6))
  {
    StatusAtIndex = IIOImageSource::iPlusGetStatusAtIndex(v6, index);
  }

  else
  {
    StatusAtIndex = *(v6 + 112);
  }

  v8 = *(v6 + 104);
  if (v8)
  {
    IIO_Reader::osType(v8);
  }

  pthread_mutex_unlock((v6 + 224));
LABEL_17:
  kdebug_trace();
  return StatusAtIndex;
}

size_t CGImageSourceGetPrimaryImageIndex(CGImageSourceRef isrc)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v2 = (gIIODebugFlags >> 12) & 3;
  if (v2)
  {
    ImageIODebugOptions(v2, "A", "CGImageSourceGetPrimaryImageIndex", isrc, 0, -1, 0);
  }

  if (!isrc)
  {
    CGImageSourceGetPrimaryImageIndex_cold_4();
    goto LABEL_18;
  }

  v3 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  if (v3 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceGetPrimaryImageIndex_cold_2();
    goto LABEL_18;
  }

  v4 = *(isrc + 3);
  if (!v4)
  {
LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if (*(v4 + 89) == 1)
  {
    CGImageSourceGetPrimaryImageIndex_cold_3();
    goto LABEL_18;
  }

  pthread_mutex_lock((v4 + 224));
  if (IIOImageSource::isProxy(v4))
  {
    PrimaryImageIndex = IIOImageSource::proxyGetPrimaryImageIndex(v4);
  }

  else
  {
    PrimaryImageIndex = IIOImageSource::getPrimaryImageIndex(v4);
  }

  v6 = PrimaryImageIndex;
  v7 = *(v4 + 104);
  if (v7)
  {
    IIO_Reader::osType(v7);
  }

  pthread_mutex_unlock((v4 + 224));
LABEL_19:
  kdebug_trace();
  return v6;
}

__CFString *CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions(void *a1, unint64_t a2, __CFString *a3, const __CFDictionary *a4)
{
  IIOInitDebugFlags();
  if (a3 && CFStringCompare(a3, @"kCGImageAuxiliaryDataTypeHDRGainMap", 0))
  {
    CFStringCompare(a3, @"kCGImageAuxiliaryDataTypeISOGainMap", 0);
  }

  kdebug_trace();
  if ((gIIODebugFlags & 0x3000) != 0)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    IIOString::IIOString(&v15, a3);
    v8 = (gIIODebugFlags >> 12) & 3;
    if (v8)
    {
      v9 = IIOString::utf8String(&v15);
      ImageIODebugOptions(v8, "A", "CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions", a1, v9, a2, 0);
    }

    IIOString::~IIOString(&v15);
  }

  if (!a1)
  {
    CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions_cold_5();
LABEL_16:
    a3 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
    CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions_cold_4();
    goto LABEL_22;
  }

  v10 = CFGetTypeID(a1);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceUpdateData_cold_1();
  }

  if (v10 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions_cold_2();
    goto LABEL_16;
  }

  v11 = CFGetTypeID(a3);
  if (v11 != CFStringGetTypeID())
  {
    CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions_cold_3();
    goto LABEL_16;
  }

  v12 = a1[3];
  if (!v12 || IIOImageSource::isProxy(v12))
  {
    goto LABEL_16;
  }

  v15 = 0;
  v16 = 0;
  v17 = 0;
  IIODictionary::IIODictionary(&v15, a4);
  if (*(v12 + 89) == 1)
  {
    LogError("CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions", 5701, "*** ERROR: invalid CGImageSourceRef (non-matching hint)\n");
    a3 = 0;
  }

  else
  {
    pthread_mutex_lock((v12 + 224));
    a3 = IIOImageSource::copyAuxiliaryDataInfoAtIndex(v12, a2, a3, &v15);
    v13 = *(v12 + 104);
    if (v13)
    {
      IIO_Reader::osType(v13);
    }

    pthread_mutex_unlock((v12 + 224));
  }

  IIODictionary::~IIODictionary(&v15);
LABEL_22:
  if ((gIIODebugFlags & 0x800000000000) != 0 && !a3)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCopyAuxiliaryDataInfoAtIndexWithOptions", 5710, "could not create AuxiliaryDataInfo dictionary");
  }

  kdebug_trace();
  return a3;
}

void sub_185FCFA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageSourceIsCloudTranscodable(void *a1, const __CFDictionary *a2)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceIsCloudTranscodable", a1, 0, -1, a2);
  }

  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a2);
  if (a1)
  {
    v4 = a1[3];
    if (v4 && !IIOImageSource::isProxy(v4))
    {
      pthread_mutex_lock((v4 + 224));
      isCloudTranscodable = IIOImageSource::isCloudTranscodable(v4, v7);
      pthread_mutex_unlock((v4 + 224));
      goto LABEL_8;
    }
  }

  else
  {
    LogError("CGImageSourceIsCloudTranscodable", 5727, "*** ERROR: CGImageSourceIsCloudTranscodable: source is NULL\n");
  }

  isCloudTranscodable = 4294967292;
LABEL_8:
  IIODictionary::~IIODictionary(v7);
  return isCloudTranscodable;
}

void sub_185FCFB88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageSourceCanAnimate(uint64_t a1)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceCanAnimate", 0, 0, -1, 0);
  }

  if (!a1)
  {
    CGImageSourceCanAnimate_cold_2();
    return 4294967292;
  }

  v2 = *(a1 + 24);
  if (!v2 || IIOImageSource::isProxy(v2))
  {
    return 4294967292;
  }

  if (*(v2 + 89) == 1)
  {
    CGImageSourceCanAnimate_cold_1();
    return 4294967292;
  }

  pthread_mutex_lock((v2 + 224));
  canAnimate = IIOImageSource::canAnimate(v2);
  pthread_mutex_unlock((v2 + 224));
  return canAnimate;
}

uint64_t CGImageIsDecodable(const __CFDictionary *a1, const __CFDictionary *a2)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageIsDecodable", 0, 0, -1, a2);
  }

  memset(v8, 0, sizeof(v8));
  IIODictionary::IIODictionary(v8, a1);
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a2);
  if (!a1)
  {
    LogError("CGImageIsDecodable", 5782, "*** ERROR: CGImageIsDecodable: property dictionary is NULL\n");
LABEL_18:
    v5 = 4294967292;
    goto LABEL_10;
  }

  v4 = CFGetTypeID(a1);
  if (v4 != CFDictionaryGetTypeID())
  {
    LogError("CGImageIsDecodable", 5783, "*** ERROR: CGImageIsDecodable: property parameter is not a CFDictionary\n");
    goto LABEL_18;
  }

  if (!IIODictionary::containsKey(v8, @"ColorModel"))
  {
    _cg_jpeg_mem_term("CGImageIsDecodable", 5785, "*** dictionary contains no 'ColorModel'\n");
    goto LABEL_18;
  }

  if (!IIODictionary::containsKey(v8, @"PixelHeight"))
  {
    _cg_jpeg_mem_term("CGImageIsDecodable", 5786, "*** dictionary contains no 'PixelHeight'\n");
    goto LABEL_18;
  }

  if (!IIODictionary::containsKey(v8, @"PixelWidth"))
  {
    _cg_jpeg_mem_term("CGImageIsDecodable", 5787, "*** dictionary contains no 'PixelWidth'\n");
    goto LABEL_18;
  }

  if ((IIODictionary::containsKey(v8, @"Depth") & 1) == 0)
  {
    _cg_jpeg_mem_term("CGImageIsDecodable", 5788, "*** dictionary contains no 'Depth'\n");
    goto LABEL_18;
  }

  v5 = 0;
LABEL_10:
  IIODictionary::~IIODictionary(v7);
  IIODictionary::~IIODictionary(v8);
  return v5;
}

void sub_185FCFDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImage *CGImageGetHash(CGImage *Hash)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if ((~gIIODebugFlags & 0xC000) == 0)
  {
    ImageIODebugOptions(3, "S", "CGImageGetHash", 0, 0, -1, 0);
  }

  if (Hash)
  {
    Hash = IIOImageSource::CGImageGetHash(Hash, 0);
  }

  else
  {
    CGImageGetHash_cold_1();
  }

  kdebug_trace();
  return Hash;
}

uint64_t CGImageComputeImageStatistics(CGImage *a1, uint64_t a2, CFTypeRef *a3)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageComputeImageStatistics", 0, 0, -1, 0);
  }

  kdebug_trace();
  if (a1)
  {
    ImageProvider = CGImageGetImageProvider();
    v38 = 0;
    v39 = 0;
    v40 = 0;
    IIODictionary::IIODictionary(&v38);
    if (ImageProvider)
    {
      v6 = CGImageProviderCopyIOSurface();
      Data = v6;
      if (v6)
      {
        v8 = IIOCreatePixelBufferWithIOSurfaceAndOptions(v6);
        v9 = 0;
        v10 = 0;
        v11 = 0;
        DataProvider = 0;
        if (v8)
        {
          goto LABEL_7;
        }

        goto LABEL_48;
      }
    }

    if (CGImageGetImageProvider())
    {
      CGImageGetWidth(a1);
      CGImageGetHeight(a1);
      v11 = CGImageProviderCopyImageBlockSet();
      if (!v11)
      {
        v13 = 4294967246;
LABEL_56:
        IIODictionary::~IIODictionary(&v38);
        goto LABEL_57;
      }

      if (CGImageBlockSetGetCount() != 1)
      {
        DataProvider = 0;
        v10 = 0;
        Data = 0;
        v13 = 4294967246;
        v9 = 1;
        goto LABEL_49;
      }

      CGImageBlockSetGetImageBlock();
      Data = CGImageBlockGetData();
      CGImageBlockGetRect();
      v10 = 0;
      DataProvider = 0;
      Length = (v15 * CGImageBlockGetBytesPerRow());
      if (Data)
      {
        goto LABEL_13;
      }
    }

    else
    {
      DataProvider = CGImageGetDataProvider(a1);
      Data = CGDataProviderRetainBytePtr();
      SizeOfData = CGDataProviderGetSizeOfData();
      if (Data)
      {
        v31 = SizeOfData;
        v11 = 0;
        v10 = 0;
LABEL_17:
        v35 = 0;
        cf = 0;
        v37 = 0;
        IIODictionary::IIODictionary(&v35);
        BitsPerComponent = CGImageGetBitsPerComponent(a1);
        BitsPerPixel = CGImageGetBitsPerPixel(a1);
        AlphaInfo = CGImageGetAlphaInfo(a1);
        BitmapInfo = CGImageGetBitmapInfo(a1);
        v22 = BitmapInfo;
        switch(BitsPerComponent)
        {
          case 0x10uLL:
            if ((BitmapInfo & 0xF00) != 0)
            {
              v23 = 1380411457;
            }

            else
            {
              v23 = 1815491698;
            }

            if (BitsPerPixel != 64)
            {
              goto LABEL_44;
            }

            break;
          case 0xAuLL:
            if (BitsPerPixel == 32)
            {
              v23 = 1815162994;
              break;
            }

            goto LABEL_44;
          case 8uLL:
            if (BitsPerPixel != 32)
            {
              goto LABEL_44;
            }

            if (((AlphaInfo < kCGImageAlphaOnly) & (0x54u >> AlphaInfo)) != 0)
            {
              if ((BitmapInfo & 0x3000) != 0)
              {
                v23 = 1111970369;
                break;
              }

              goto LABEL_44;
            }

            if ((BitmapInfo & 0x3000) != 0)
            {
LABEL_44:
              v25 = IIO_BitmapInfoStringSmall(v22);
              _cg_jpeg_mem_term("IIOGetPixelFormatForImage", 5943, "*** NOTE: IIOGetPixelFormatForImage failed for bpc=%d  bpp=%d  bmi=%s\n", BitsPerComponent, BitsPerPixel, v25);
              v23 = 0;
              break;
            }

            v23 = 1380401729;
            break;
          default:
            if (BitsPerPixel != 32)
            {
              _cg_jpeg_mem_term("IIOGetPixelFormatForImage", 5940, "*** ERROR: unhandled bitdepth (%d bpc)\n", BitsPerComponent);
            }

            goto LABEL_44;
        }

        Width = CGImageGetWidth(a1);
        Height = CGImageGetHeight(a1);
        BytesPerRow = CGImageGetBytesPerRow(a1);
        v8 = IIOCreatePixelBufferWithBuffer(Width, Height, BytesPerRow, v23, Data, v31, &v35);
        if (v8)
        {
          ColorSpace = CGImageGetColorSpace(a1);
          IIOPixelBufferSetColorSpace(v8, ColorSpace);
        }

        IIODictionary::setObjectForKey(&v38, *MEMORY[0x1E695E4D0], @"kCGDisableMetal");
        IIODictionary::~IIODictionary(&v35);
        Data = 0;
        v9 = 1;
        if (v8)
        {
LABEL_7:
          v34 = 0;
          v13 = CGImageComputeHDRImageStatistics(v8, 0, &v34, v39);
          if (a3)
          {
            v35 = 0;
            cf = 0;
            v37 = 0;
            IIODictionary::IIODictionary(&v35, v34, 1);
            CFRetain(cf);
            IIODictionary::getFloatForKey(&v35, @"kCGContentHeadroom");
            FloatForKey = IIODictionary::getFloatForKey(&v35, @"kCGContentBrightness");
            IIONumber::IIONumber(v32, llround(FloatForKey * 203.0));
            IIODictionary::setObjectForKey(&v35, value, @"kCGContentBrightness");
            IIONumber::~IIONumber(v32);
            *a3 = cf;
            IIODictionary::~IIODictionary(&v35);
          }

          if (v34)
          {
            CFRelease(v34);
          }

          gFunc_CVPixelBufferRelease(v8);
          if (!v11)
          {
            goto LABEL_50;
          }

          goto LABEL_49;
        }

        goto LABEL_48;
      }

      v24 = CGDataProviderCopyData(DataProvider);
      v10 = v24;
      if (!v24)
      {
        v13 = 4294967246;
LABEL_54:
        if (DataProvider)
        {
          CGDataProviderReleaseBytePtr();
        }

        goto LABEL_56;
      }

      Data = CFDataGetBytePtr(v24);
      Length = CFDataGetLength(v10);
      v11 = 0;
      if (Data)
      {
LABEL_13:
        v31 = Length;
        goto LABEL_17;
      }
    }

    v9 = 1;
LABEL_48:
    v13 = 4294967246;
    if (!v11)
    {
LABEL_50:
      if (v10)
      {
        CFRelease(v10);
      }

      if ((v9 & 1) == 0)
      {
        CFRelease(Data);
      }

      goto LABEL_54;
    }

LABEL_49:
    CGImageBlockSetRelease();
    goto LABEL_50;
  }

  LogError("CGImageComputeImageStatistics", 5966, "*** ERROR: CGImageComputeImageStatistics called with NULL inputImage\n");
  v13 = 4294967246;
LABEL_57:
  kdebug_trace();
  return v13;
}

void sub_185FD046C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t CGImageCreateSDRPreservingGainCurve()
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateSDRPreservingGainCurve", 0, 0, -1, 0);
  }

  return 4294967246;
}

uint64_t CGImageSourceDisableRAWDecoding()
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceDisableRAWDecoding", 0, 0, -1, 0);
  }

  return IIODisableRAWDecoding();
}

uint64_t CGImageSourceDisableMetadataParsing()
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceDisableMetadataParsing", 0, 0, -1, 0);
  }

  return IIODisableMetadataParsing();
}

uint64_t CGImageSourceDisableHardwareDecoding()
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceDisableHardwareDecoding", 0, 0, -1, 0);
  }

  return IIODisableHardwareDecoding();
}

uint64_t CGImageSourceDisableCaching()
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageSourceDisableCaching", 0, 0, -1, 0);
  }

  return IIODisableCaching();
}

uint64_t *std::__tree_balance_after_insert[abi:fe200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *std::__tree_remove[abi:fe200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<IIOThumbnailInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,IIOImageSource::updateThumbnailInfo(IIODictionary *,unsigned int *,unsigned int *)::$_0 &,IIOThumbnailInfo *,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 40);
  v10 = (a2 - 80);
  v11 = (a2 - 120);
  for (i = a1; ; *(i - 24) = v216)
  {
LABEL_2:
    a1 = i;
    v13 = a2 - i;
    v14 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - i) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (*(a2 - 28) < *(i + 12))
        {
          v319 = *(i + 32);
          v253 = *i;
          v287 = *(i + 16);
          v133 = *(a2 - 40);
          v134 = *(a2 - 24);
          *(i + 32) = *(a2 - 8);
          *i = v133;
          *(i + 16) = v134;
          result = v253;
          *(a2 - 8) = v319;
          *(a2 - 24) = v287;
          *(a2 - 40) = v253;
        }

        return result;
      }

      goto LABEL_9;
    }

    switch(v14)
    {
      case 3:
        v127 = *(i + 52);
        v128 = *(a2 - 28);
        if (v127 < *(i + 12))
        {
          if (v128 < v127)
          {
            v318 = *(i + 32);
            v252 = *i;
            v286 = *(i + 16);
            v129 = *v9;
            v130 = *(a2 - 24);
            *(i + 32) = *(a2 - 8);
            *i = v129;
            *(i + 16) = v130;
            result = v252;
            v131 = v286;
            v132 = v318;
LABEL_195:
            *(a2 - 8) = v132;
            *v9 = result;
            *(a2 - 24) = v131;
            return result;
          }

LABEL_193:
          v324 = *(a1 + 32);
          v260 = *a1;
          v295 = *(a1 + 16);
          v203 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v203;
          *(a1 + 32) = *(a1 + 72);
          result = v260;
          *(a1 + 40) = v260;
          *(a1 + 56) = v295;
          *(a1 + 72) = v324;
          if (*(a2 - 28) >= *(a1 + 52))
          {
            return result;
          }

          result = *(a1 + 40);
          v131 = *(a1 + 56);
          v132 = *(a1 + 72);
          v205 = *v9;
          v204 = *(a2 - 24);
          *(a1 + 72) = *(a2 - 8);
          *(a1 + 40) = v205;
          *(a1 + 56) = v204;
          goto LABEL_195;
        }

        if (v128 >= v127)
        {
          return result;
        }

        result = *(i + 40);
        v292 = *(i + 56);
        v322 = *(i + 72);
        v190 = *v9;
        v189 = *(a2 - 24);
        *(i + 72) = *(a2 - 8);
        *(i + 40) = v190;
        *(i + 56) = v189;
        *(a2 - 8) = v322;
        *v9 = result;
        *(a2 - 24) = v292;
LABEL_202:
        if (*(i + 52) < *(i + 12))
        {
          v327 = *(i + 32);
          v262 = *i;
          v298 = *(i + 16);
          v214 = *(i + 56);
          *i = *(i + 40);
          *(i + 16) = v214;
          *(i + 32) = *(i + 72);
          result = v262;
          *(i + 40) = v262;
          *(i + 56) = v298;
          *(i + 72) = v327;
        }

        return result;
      case 4:
        v135 = *(i + 52);
        v136 = *(i + 92);
        if (v135 >= *(i + 12))
        {
          if (v136 < v135)
          {
            v191 = *(i + 72);
            result = *(i + 40);
            v192 = *(i + 96);
            *(i + 40) = *(i + 80);
            v193 = *(i + 56);
            *(i + 56) = v192;
            *(i + 72) = *(i + 112);
            *(i + 80) = result;
            *(i + 96) = v193;
            *(i + 112) = v191;
            if (*(i + 52) < *(i + 12))
            {
              v323 = *(i + 32);
              v258 = *i;
              v293 = *(i + 16);
              v194 = *(i + 56);
              *i = *(i + 40);
              *(i + 16) = v194;
              *(i + 32) = *(i + 72);
              result = v258;
              *(i + 40) = v258;
              *(i + 56) = v293;
              *(i + 72) = v323;
            }
          }
        }

        else
        {
          if (v136 < v135)
          {
            v320 = *(i + 32);
            v254 = *i;
            v288 = *(i + 16);
            v137 = *(i + 96);
            *i = *(i + 80);
            *(i + 16) = v137;
            *(i + 32) = *(i + 112);
            result = v254;
            *(i + 80) = v254;
            *(i + 96) = v288;
            v138 = v320;
            goto LABEL_198;
          }

          v325 = *(i + 32);
          v261 = *i;
          v296 = *(i + 16);
          v206 = *(i + 56);
          *i = *(i + 40);
          *(i + 16) = v206;
          *(i + 32) = *(i + 72);
          result = v261;
          *(i + 40) = v261;
          *(i + 56) = v296;
          *(i + 72) = v325;
          if (v136 < *(i + 52))
          {
            v138 = *(i + 72);
            result = *(i + 56);
            v207 = *(i + 40);
            v208 = *(i + 96);
            *(i + 40) = *(i + 80);
            *(i + 56) = v208;
            *(i + 72) = *(i + 112);
            *(i + 80) = v207;
            *(i + 96) = result;
LABEL_198:
            *(i + 112) = v138;
          }
        }

        if (*(a2 - 28) >= *(i + 92))
        {
          return result;
        }

        result = *(i + 80);
        v297 = *(i + 96);
        v326 = *(i + 112);
        v210 = *v9;
        v209 = *(a2 - 24);
        *(i + 112) = *(a2 - 8);
        *(i + 80) = v210;
        *(i + 96) = v209;
        *(a2 - 8) = v326;
        *v9 = result;
        *(a2 - 24) = v297;
        if (*(i + 92) >= *(i + 52))
        {
          return result;
        }

        v211 = *(i + 72);
        result = *(i + 40);
        v212 = *(i + 96);
        *(i + 40) = *(i + 80);
        v213 = *(i + 56);
        *(i + 56) = v212;
        *(i + 72) = *(i + 112);
        *(i + 80) = result;
        *(i + 96) = v213;
        *(i + 112) = v211;
        goto LABEL_202;
      case 5:

        result.n128_u64[0] = std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,IIOImageSource::updateThumbnailInfo(IIODictionary *,unsigned int *,unsigned int *)::$_0 &,IIOThumbnailInfo *,0>(i, i + 40, i + 80, i + 120, a2 - 40, result).n128_u64[0];
        return result;
    }

LABEL_9:
    if (v13 <= 959)
    {
      break;
    }

    if (!a3)
    {
      if (i != a2)
      {
        v148 = (v14 - 2) >> 1;
        v149 = v148;
        do
        {
          v150 = v149;
          if (v148 >= v149)
          {
            v151 = (2 * v149) | 1;
            v152 = i + 40 * v151;
            if (2 * v150 + 2 < v14)
            {
              v153 = *(v152 + 12);
              v154 = *(v152 + 52);
              v155 = v153 >= v154;
              v156 = v153 >= v154 ? 0 : 40;
              v152 += v156;
              if (!v155)
              {
                v151 = 2 * v150 + 2;
              }
            }

            v157 = i + 40 * v150;
            v158 = *(v157 + 12);
            if (*(v152 + 12) >= v158)
            {
              v222 = *(v157 + 8);
              v218 = *v157;
              v290 = *(v157 + 32);
              v256 = *(v157 + 16);
              do
              {
                v159 = v152;
                v160 = *v152;
                v161 = *(v152 + 16);
                *(v157 + 32) = *(v152 + 32);
                *v157 = v160;
                *(v157 + 16) = v161;
                if (v148 < v151)
                {
                  break;
                }

                v162 = (2 * v151) | 1;
                v152 = i + 40 * v162;
                v163 = 2 * v151 + 2;
                if (v163 < v14)
                {
                  v164 = *(v152 + 12);
                  v165 = *(v152 + 52);
                  v166 = v164 >= v165;
                  v167 = v164 >= v165 ? 0 : 40;
                  v152 += v167;
                  if (!v166)
                  {
                    v162 = v163;
                  }
                }

                v157 = v159;
                v151 = v162;
              }

              while (*(v152 + 12) >= v158);
              *v159 = v218;
              *(v159 + 8) = v222;
              *(v159 + 12) = v158;
              *(v159 + 16) = v256;
              *(v159 + 32) = v290;
            }
          }

          v149 = v150 - 1;
        }

        while (v150);
        v168 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          v169 = 0;
          v321 = *(i + 32);
          v257 = *i;
          v291 = *(i + 16);
          v170 = i;
          do
          {
            v171 = v170 + 40 * v169;
            v172 = (v171 + 40);
            v173 = (2 * v169) | 1;
            v169 = 2 * v169 + 2;
            if (v169 >= v168)
            {
              v169 = v173;
            }

            else
            {
              v174 = *(v171 + 52);
              v175 = *(v171 + 92);
              v176 = (v171 + 80);
              if (v174 >= v175)
              {
                v169 = v173;
              }

              else
              {
                v172 = v176;
              }
            }

            v177 = *v172;
            v178 = v172[1];
            *(v170 + 32) = v172[2].n128_u64[0];
            *v170 = v177;
            *(v170 + 16) = v178;
            v170 = v172;
          }

          while (v169 <= ((v168 - 2) >> 1));
          a2 -= 40;
          if (v172 == a2)
          {
            result = v257;
            v172[2].n128_u64[0] = v321;
            *v172 = v257;
            v172[1] = v291;
          }

          else
          {
            v179 = *a2;
            v180 = *(a2 + 16);
            v172[2].n128_u64[0] = *(a2 + 32);
            *v172 = v179;
            v172[1] = v180;
            result = v257;
            *(a2 + 32) = v321;
            *a2 = v257;
            *(a2 + 16) = v291;
            v181 = &v172[2].n128_i64[1] - i;
            if (v181 >= 41)
            {
              v182 = (-2 - 0x3333333333333333 * (v181 >> 3)) >> 1;
              v183 = i + 40 * v182;
              v184 = v172->n128_u32[3];
              if (*(v183 + 12) < v184)
              {
                v232 = v172->n128_u32[2];
                v229 = v172->n128_u64[0];
                v226 = v172[2].n128_u64[0];
                v219 = v172[1];
                do
                {
                  v185 = v183;
                  v186 = *v183;
                  v187 = *(v183 + 16);
                  v172[2].n128_u64[0] = *(v183 + 32);
                  *v172 = v186;
                  v172[1] = v187;
                  if (!v182)
                  {
                    break;
                  }

                  v182 = (v182 - 1) >> 1;
                  v183 = i + 40 * v182;
                  v172 = v185;
                }

                while (*(v183 + 12) < v184);
                v185->n128_u64[0] = v229;
                v185->n128_u32[2] = v232;
                v185->n128_u32[3] = v184;
                result = v219;
                v185[1] = v219;
                v185[2].n128_u64[0] = v226;
              }
            }
          }
        }

        while (v168-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = i + 40 * (v14 >> 1);
    v17 = *(a2 - 28);
    if (v13 >= 0x1401)
    {
      v18 = *(v16 + 12);
      if (v18 >= *(i + 12))
      {
        if (v17 < v18)
        {
          v301 = *(v16 + 32);
          v235 = *v16;
          v265 = *(v16 + 16);
          v24 = *v9;
          v25 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 8) = v301;
          *v9 = v235;
          *(a2 - 24) = v265;
          if (*(v16 + 12) < *(i + 12))
          {
            v302 = *(i + 32);
            v236 = *i;
            v266 = *(i + 16);
            v26 = *v16;
            v27 = *(v16 + 16);
            *(i + 32) = *(v16 + 32);
            *i = v26;
            *(i + 16) = v27;
            *(v16 + 32) = v302;
            *v16 = v236;
            *(v16 + 16) = v266;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v299 = *(i + 32);
          v233 = *i;
          v263 = *(i + 16);
          v19 = *v9;
          v20 = *(a2 - 24);
          *(i + 32) = *(a2 - 8);
          *i = v19;
          *(i + 16) = v20;
          goto LABEL_26;
        }

        v305 = *(i + 32);
        v239 = *i;
        v269 = *(i + 16);
        v32 = *v16;
        v33 = *(v16 + 16);
        *(i + 32) = *(v16 + 32);
        *i = v32;
        *(i + 16) = v33;
        *(v16 + 32) = v305;
        *v16 = v239;
        *(v16 + 16) = v269;
        if (*(a2 - 28) < *(v16 + 12))
        {
          v299 = *(v16 + 32);
          v233 = *v16;
          v263 = *(v16 + 16);
          v34 = *v9;
          v35 = *(a2 - 24);
          *(v16 + 32) = *(a2 - 8);
          *v16 = v34;
          *(v16 + 16) = v35;
LABEL_26:
          *(a2 - 8) = v299;
          *v9 = v233;
          *(a2 - 24) = v263;
        }
      }

      v36 = i + 40 * v15;
      v37 = v36 - 40;
      v38 = *(v36 - 28);
      v39 = *(a2 - 68);
      if (v38 >= *(i + 52))
      {
        if (v39 < v38)
        {
          v306 = *(v37 + 32);
          v240 = *v37;
          v270 = *(v37 + 16);
          v45 = *v10;
          v46 = *(a2 - 64);
          *(v37 + 32) = *(a2 - 48);
          *v37 = v45;
          *(v37 + 16) = v46;
          *(a2 - 48) = v306;
          *v10 = v240;
          *(a2 - 64) = v270;
          if (*(v37 + 12) < *(i + 52))
          {
            v47 = *(i + 40);
            v271 = *(i + 56);
            v48 = *(i + 72);
            v50 = *v37;
            v49 = *(v37 + 16);
            *(i + 72) = *(v37 + 32);
            *(i + 40) = v50;
            *(i + 56) = v49;
            *(v37 + 32) = v48;
            *v37 = v47;
            *(v37 + 16) = v271;
          }
        }
      }

      else
      {
        if (v39 < v38)
        {
          v40 = *(i + 40);
          v41 = *(i + 56);
          v42 = *(i + 72);
          v44 = *v10;
          v43 = *(a2 - 64);
          *(i + 72) = *(a2 - 48);
          *(i + 40) = v44;
          *(i + 56) = v43;
          goto LABEL_38;
        }

        v55 = *(i + 40);
        v273 = *(i + 56);
        v56 = *(i + 72);
        v58 = *v37;
        v57 = *(v37 + 16);
        *(i + 72) = *(v37 + 32);
        *(i + 40) = v58;
        *(i + 56) = v57;
        *(v37 + 32) = v56;
        *v37 = v55;
        *(v37 + 16) = v273;
        if (*(a2 - 68) < *(v37 + 12))
        {
          v308 = *(v37 + 32);
          v242 = *v37;
          v274 = *(v37 + 16);
          v59 = *v10;
          v60 = *(a2 - 64);
          *(v37 + 32) = *(a2 - 48);
          *v37 = v59;
          *(v37 + 16) = v60;
          v40 = v242;
          v41 = v274;
          v42 = v308;
LABEL_38:
          *(a2 - 48) = v42;
          *v10 = v40;
          *(a2 - 64) = v41;
        }
      }

      v61 = i + 40 * v15;
      v62 = *(v61 + 52);
      v63 = *(a2 - 108);
      if (v62 >= *(i + 92))
      {
        if (v63 < v62)
        {
          v309 = *(v61 + 72);
          v243 = *(v61 + 40);
          v275 = *(v61 + 56);
          v69 = *v11;
          v70 = *(a2 - 104);
          *(v61 + 72) = *(a2 - 88);
          *(v61 + 56) = v70;
          *(v61 + 40) = v69;
          *(a2 - 88) = v309;
          *v11 = v243;
          *(a2 - 104) = v275;
          if (*(v61 + 52) < *(i + 92))
          {
            v71 = *(i + 80);
            v276 = *(i + 96);
            v72 = *(i + 112);
            v73 = *(v61 + 56);
            v74 = *(v61 + 40);
            *(i + 112) = *(v61 + 72);
            *(i + 80) = v74;
            *(i + 96) = v73;
            *(v61 + 56) = v276;
            *(v61 + 72) = v72;
            *(v61 + 40) = v71;
          }
        }
      }

      else
      {
        if (v63 < v62)
        {
          v64 = *(i + 80);
          v65 = *(i + 96);
          v66 = *(i + 112);
          v68 = *v11;
          v67 = *(a2 - 104);
          *(i + 112) = *(a2 - 88);
          *(i + 80) = v68;
          *(i + 96) = v67;
          goto LABEL_47;
        }

        v75 = *(i + 80);
        v277 = *(i + 96);
        v76 = *(i + 112);
        v77 = *(v61 + 56);
        v78 = *(v61 + 40);
        *(i + 112) = *(v61 + 72);
        *(i + 80) = v78;
        *(i + 96) = v77;
        *(v61 + 56) = v277;
        *(v61 + 72) = v76;
        *(v61 + 40) = v75;
        if (*(a2 - 108) < *(v61 + 52))
        {
          v310 = *(v61 + 72);
          v244 = *(v61 + 40);
          v278 = *(v61 + 56);
          v79 = *v11;
          v80 = *(a2 - 104);
          *(v61 + 72) = *(a2 - 88);
          *(v61 + 56) = v80;
          *(v61 + 40) = v79;
          v64 = v244;
          v65 = v278;
          v66 = v310;
LABEL_47:
          *(a2 - 88) = v66;
          *v11 = v64;
          *(a2 - 104) = v65;
        }
      }

      v81 = *(v16 + 12);
      v82 = *(v61 + 52);
      if (v81 >= *(v37 + 12))
      {
        if (v82 < v81)
        {
          v312 = *(v16 + 32);
          v246 = *v16;
          v280 = *(v16 + 16);
          v84 = *(v61 + 56);
          *v16 = *(v61 + 40);
          *(v16 + 16) = v84;
          *(v16 + 32) = *(v61 + 72);
          *(v61 + 56) = v280;
          *(v61 + 72) = v312;
          *(v61 + 40) = v246;
          if (*(v16 + 12) < *(v37 + 12))
          {
            v313 = *(v37 + 32);
            v247 = *v37;
            v281 = *(v37 + 16);
            v85 = *(v16 + 16);
            *v37 = *v16;
            *(v37 + 16) = v85;
            *(v37 + 32) = *(v16 + 32);
            *(v16 + 32) = v313;
            *v16 = v247;
            *(v16 + 16) = v281;
          }
        }
      }

      else
      {
        if (v82 < v81)
        {
          v311 = *(v37 + 32);
          v245 = *v37;
          v279 = *(v37 + 16);
          v83 = *(v61 + 56);
          *v37 = *(v61 + 40);
          *(v37 + 16) = v83;
          *(v37 + 32) = *(v61 + 72);
          goto LABEL_56;
        }

        v314 = *(v37 + 32);
        v248 = *v37;
        v282 = *(v37 + 16);
        v86 = *(v16 + 16);
        *v37 = *v16;
        *(v37 + 16) = v86;
        *(v37 + 32) = *(v16 + 32);
        *(v16 + 32) = v314;
        *v16 = v248;
        *(v16 + 16) = v282;
        if (*(v61 + 52) < *(v16 + 12))
        {
          v311 = *(v16 + 32);
          v245 = *v16;
          v279 = *(v16 + 16);
          v87 = *(v61 + 56);
          *v16 = *(v61 + 40);
          *(v16 + 16) = v87;
          *(v16 + 32) = *(v61 + 72);
LABEL_56:
          *(v61 + 56) = v279;
          *(v61 + 72) = v311;
          *(v61 + 40) = v245;
        }
      }

      v315 = *(i + 32);
      v249 = *i;
      v283 = *(i + 16);
      v88 = *v16;
      v89 = *(v16 + 16);
      *(i + 32) = *(v16 + 32);
      *i = v88;
      *(i + 16) = v89;
      *(v16 + 32) = v315;
      *v16 = v249;
      *(v16 + 16) = v283;
      goto LABEL_58;
    }

    v21 = *(i + 12);
    if (v21 >= *(v16 + 12))
    {
      if (v17 < v21)
      {
        v303 = *(i + 32);
        v237 = *i;
        v267 = *(i + 16);
        v28 = *v9;
        v29 = *(a2 - 24);
        *(i + 32) = *(a2 - 8);
        *i = v28;
        *(i + 16) = v29;
        *(a2 - 8) = v303;
        *v9 = v237;
        *(a2 - 24) = v267;
        if (*(i + 12) < *(v16 + 12))
        {
          v304 = *(v16 + 32);
          v238 = *v16;
          v268 = *(v16 + 16);
          v30 = *i;
          v31 = *(i + 16);
          *(v16 + 32) = *(i + 32);
          *v16 = v30;
          *(v16 + 16) = v31;
          *(i + 32) = v304;
          *i = v238;
          *(i + 16) = v268;
        }
      }
    }

    else
    {
      if (v17 >= v21)
      {
        v307 = *(v16 + 32);
        v241 = *v16;
        v272 = *(v16 + 16);
        v51 = *i;
        v52 = *(i + 16);
        *(v16 + 32) = *(i + 32);
        *v16 = v51;
        *(v16 + 16) = v52;
        *(i + 32) = v307;
        *i = v241;
        *(i + 16) = v272;
        if (*(a2 - 28) >= *(i + 12))
        {
          goto LABEL_58;
        }

        v300 = *(i + 32);
        v234 = *i;
        v264 = *(i + 16);
        v53 = *v9;
        v54 = *(a2 - 24);
        *(i + 32) = *(a2 - 8);
        *i = v53;
        *(i + 16) = v54;
      }

      else
      {
        v300 = *(v16 + 32);
        v234 = *v16;
        v264 = *(v16 + 16);
        v22 = *v9;
        v23 = *(a2 - 24);
        *(v16 + 32) = *(a2 - 8);
        *v16 = v22;
        *(v16 + 16) = v23;
      }

      *(a2 - 8) = v300;
      *v9 = v234;
      *(a2 - 24) = v264;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v90 = *(i + 12);
LABEL_61:
      v91 = 0;
      v230 = *(i + 8);
      v227 = *i;
      v224 = *(i + 32);
      v215 = *(i + 16);
      do
      {
        if (i + v91 + 40 == a2)
        {
          goto LABEL_192;
        }

        v92 = *(i + v91 + 52);
        v91 += 40;
      }

      while (v92 < v90);
      v93 = i + v91;
      v94 = a2;
      if (v91 != 40)
      {
        while (v94 != i)
        {
          v95 = v94 - 40;
          v96 = *(v94 - 28);
          v94 -= 40;
          if (v96 < v90)
          {
            goto LABEL_73;
          }
        }

        goto LABEL_192;
      }

      v97 = a2;
      while (v93 < v97)
      {
        v95 = v97 - 40;
        v98 = *(v97 - 28);
        v97 -= 40;
        if (v98 < v90)
        {
          goto LABEL_73;
        }
      }

      v95 = v97;
LABEL_73:
      i = v93;
      if (v93 < v95)
      {
        v99 = v95;
LABEL_75:
        v316 = *(i + 32);
        v250 = *i;
        v284 = *(i + 16);
        v100 = *v99;
        v101 = *(v99 + 16);
        *(i + 32) = *(v99 + 32);
        *i = v100;
        *(i + 16) = v101;
        *(v99 + 32) = v316;
        *v99 = v250;
        *(v99 + 16) = v284;
        v102 = i + 40;
        while (v102 != a2)
        {
          v103 = *(v102 + 12);
          v102 += 40;
          if (v103 >= v90)
          {
            i = v102 - 40;
            v104 = v99;
            while (v104 != a1)
            {
              v99 = v104 - 40;
              v105 = *(v104 - 28);
              v104 -= 40;
              if (v105 < v90)
              {
                if (i < v99)
                {
                  goto LABEL_75;
                }

                goto LABEL_82;
              }
            }

            goto LABEL_192;
          }
        }

        goto LABEL_192;
      }

LABEL_82:
      v106 = (i - 40);
      if (i - 40 != a1)
      {
        v107 = *v106;
        v108 = *(i - 24);
        *(a1 + 32) = *(i - 8);
        *a1 = v107;
        *(a1 + 16) = v108;
      }

      *(i - 32) = v230;
      *v106 = v227;
      *(i - 28) = v90;
      *(i - 8) = v224;
      *(i - 24) = v215;
      if (v93 < v95)
      {
LABEL_87:
        std::__introsort<std::_ClassicAlgPolicy,IIOImageSource::updateThumbnailInfo(IIODictionary *,unsigned int *,unsigned int *)::$_0 &,IIOThumbnailInfo *,false>(a1, i - 40, a3, a4 & 1);
        a4 = 0;
        goto LABEL_2;
      }

      v109 = std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,IIOImageSource::updateThumbnailInfo(IIODictionary *,unsigned int *,unsigned int *)::$_0 &,IIOThumbnailInfo *>(a1, i - 40, v215);
      if (!std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,IIOImageSource::updateThumbnailInfo(IIODictionary *,unsigned int *,unsigned int *)::$_0 &,IIOThumbnailInfo *>(i, a2, v110))
      {
        if (v109)
        {
          goto LABEL_2;
        }

        goto LABEL_87;
      }

      a2 = i - 40;
      if (v109)
      {
        return result;
      }

      goto LABEL_1;
    }

    v90 = *(i + 12);
    if (*(i - 28) < v90)
    {
      goto LABEL_61;
    }

    v231 = *(i + 8);
    v228 = *i;
    v216 = *(i + 16);
    v225 = *(i + 32);
    if (v90 >= *(a2 - 28))
    {
      v113 = i + 40;
      do
      {
        i = v113;
        if (v113 >= a2)
        {
          break;
        }

        v114 = *(v113 + 12);
        v113 += 40;
      }

      while (v90 >= v114);
    }

    else
    {
      v111 = i + 40;
      do
      {
        if (v111 == a2)
        {
          goto LABEL_192;
        }

        v112 = *(v111 + 12);
        v111 += 40;
      }

      while (v90 >= v112);
      i = v111 - 40;
    }

    v115 = a2;
    if (i < a2)
    {
      v116 = a2;
      while (v116 != a1)
      {
        v115 = v116 - 40;
        v117 = *(v116 - 28);
        v116 -= 40;
        if (v90 >= v117)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_192;
    }

LABEL_107:
    if (i < v115)
    {
      v317 = *(i + 32);
      v251 = *i;
      v285 = *(i + 16);
      v118 = *v115;
      v119 = *(v115 + 16);
      *(i + 32) = *(v115 + 32);
      *i = v118;
      *(i + 16) = v119;
      *(v115 + 32) = v317;
      *v115 = v251;
      *(v115 + 16) = v285;
      v120 = i + 40;
      while (v120 != a2)
      {
        v121 = *(v120 + 12);
        v120 += 40;
        if (v90 < v121)
        {
          i = v120 - 40;
          v122 = v115;
          while (v122 != a1)
          {
            v115 = v122 - 40;
            v123 = *(v122 - 28);
            v122 -= 40;
            if (v90 >= v123)
            {
              goto LABEL_107;
            }
          }

          goto LABEL_192;
        }
      }

      goto LABEL_192;
    }

    v124 = (i - 40);
    if (i - 40 != a1)
    {
      v125 = *v124;
      v126 = *(i - 24);
      *(a1 + 32) = *(i - 8);
      *a1 = v125;
      *(a1 + 16) = v126;
    }

    a4 = 0;
    *(i - 32) = v231;
    *v124 = v228;
    *(i - 28) = v90;
    result = v216;
    *(i - 8) = v225;
  }

  if ((a4 & 1) == 0)
  {
    if (i == a2)
    {
      return result;
    }

    v195 = i + 40;
    if (i + 40 == a2)
    {
      return result;
    }

    v196 = 40;
    v197 = i;
    while (1)
    {
      v198 = *(v197 + 52);
      if (v198 < *(v197 + 12))
      {
        break;
      }

LABEL_190:
      v197 += 40;
      v196 += 40;
      v195 = i + v196;
      if (i + v196 == a2)
      {
        return result;
      }
    }

    v199 = 0;
    v223 = *(v195 + 8);
    v220 = *v195;
    v259 = *(v197 + 56);
    v294 = *(v197 + 72);
    while (1)
    {
      v200 = v197 + v199;
      v201 = *(v197 + v199 + 16);
      *(v200 + 40) = *(v197 + v199);
      *(v200 + 56) = v201;
      *(v200 + 72) = *(v197 + v199 + 32);
      if (!(v196 + v199))
      {
        break;
      }

      v199 -= 40;
      if (v198 >= *(v200 - 28))
      {
        v202 = v197 + v199;
        *(v202 + 40) = v220;
        *(v202 + 48) = v223;
        *(v202 + 52) = v198;
        result = v259;
        *(v202 + 72) = v294;
        *(v202 + 56) = v259;
        goto LABEL_190;
      }
    }

LABEL_192:
    __break(1u);
    goto LABEL_193;
  }

  if (i != a2)
  {
    v139 = i + 40;
    if (i + 40 != a2)
    {
      v140 = 0;
      v141 = i;
      do
      {
        v142 = v139;
        v143 = *(v141 + 52);
        if (v143 < *(v141 + 12))
        {
          v221 = *(v142 + 8);
          v217 = *v142;
          v255 = *(v141 + 56);
          v289 = *(v141 + 72);
          v144 = v140;
          while (1)
          {
            v145 = i + v144;
            v146 = *(i + v144 + 16);
            *(v145 + 40) = *(i + v144);
            *(v145 + 56) = v146;
            *(v145 + 72) = *(i + v144 + 32);
            if (!v144)
            {
              break;
            }

            v144 -= 40;
            if (v143 >= *(v145 - 28))
            {
              v147 = i + v144 + 40;
              goto LABEL_134;
            }
          }

          v147 = i;
LABEL_134:
          *v147 = v217;
          *(v147 + 8) = v221;
          *(v147 + 12) = v143;
          result = v255;
          *(v147 + 16) = v255;
          *(v147 + 32) = v289;
        }

        v139 = v142 + 40;
        v140 += 40;
        v141 = v142;
      }

      while (v142 + 40 != a2);
    }
  }

  return result;
}

__n128 std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,IIOImageSource::updateThumbnailInfo(IIODictionary *,unsigned int *,unsigned int *)::$_0 &,IIOThumbnailInfo *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 result)
{
  v6 = *(a2 + 12);
  v7 = *(a3 + 12);
  if (v6 >= *(a1 + 12))
  {
    if (v7 < v6)
    {
      result = *a2;
      v12 = *(a2 + 16);
      v13 = *(a2 + 32);
      v14 = *(a3 + 32);
      v15 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v15;
      *(a2 + 32) = v14;
      *(a3 + 32) = v13;
      *a3 = result;
      *(a3 + 16) = v12;
      if (*(a2 + 12) < *(a1 + 12))
      {
        result = *a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 32);
        v18 = *(a2 + 32);
        v19 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v19;
        *(a1 + 32) = v18;
        *(a2 + 32) = v17;
        *a2 = result;
        *(a2 + 16) = v16;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      v8 = *(a1 + 16);
      v9 = *(a1 + 32);
      v10 = *(a3 + 32);
      v11 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v11;
      *(a1 + 32) = v10;
LABEL_9:
      *(a3 + 32) = v9;
      *a3 = result;
      *(a3 + 16) = v8;
      goto LABEL_10;
    }

    result = *a1;
    v20 = *(a1 + 16);
    v21 = *(a1 + 32);
    v22 = *(a2 + 32);
    v23 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v23;
    *(a1 + 32) = v22;
    *(a2 + 32) = v21;
    *a2 = result;
    *(a2 + 16) = v20;
    if (*(a3 + 12) < *(a2 + 12))
    {
      result = *a2;
      v8 = *(a2 + 16);
      v9 = *(a2 + 32);
      v24 = *(a3 + 32);
      v25 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v25;
      *(a2 + 32) = v24;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 12) < *(a3 + 12))
  {
    result = *a3;
    v26 = *(a3 + 16);
    v27 = *(a3 + 32);
    v28 = *(a4 + 32);
    v29 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v29;
    *(a3 + 32) = v28;
    *(a4 + 32) = v27;
    *a4 = result;
    *(a4 + 16) = v26;
    if (*(a3 + 12) < *(a2 + 12))
    {
      result = *a2;
      v30 = *(a2 + 16);
      v31 = *(a2 + 32);
      v32 = *(a3 + 32);
      v33 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v33;
      *(a2 + 32) = v32;
      *(a3 + 32) = v31;
      *a3 = result;
      *(a3 + 16) = v30;
      if (*(a2 + 12) < *(a1 + 12))
      {
        result = *a1;
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = *(a2 + 32);
        v37 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v37;
        *(a1 + 32) = v36;
        *(a2 + 32) = v35;
        *a2 = result;
        *(a2 + 16) = v34;
      }
    }
  }

  if (*(a5 + 12) < *(a4 + 12))
  {
    result = *a4;
    v38 = *(a4 + 16);
    v39 = *(a4 + 32);
    v40 = *(a5 + 32);
    v41 = *(a5 + 16);
    *a4 = *a5;
    *(a4 + 16) = v41;
    *(a4 + 32) = v40;
    *(a5 + 32) = v39;
    *a5 = result;
    *(a5 + 16) = v38;
    if (*(a4 + 12) < *(a3 + 12))
    {
      result = *a3;
      v42 = *(a3 + 16);
      v43 = *(a3 + 32);
      v44 = *(a4 + 32);
      v45 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v45;
      *(a3 + 32) = v44;
      *(a4 + 32) = v43;
      *a4 = result;
      *(a4 + 16) = v42;
      if (*(a3 + 12) < *(a2 + 12))
      {
        result = *a2;
        v46 = *(a2 + 16);
        v47 = *(a2 + 32);
        v48 = *(a3 + 32);
        v49 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v49;
        *(a2 + 32) = v48;
        *(a3 + 32) = v47;
        *a3 = result;
        *(a3 + 16) = v46;
        if (*(a2 + 12) < *(a1 + 12))
        {
          result = *a1;
          v50 = *(a1 + 16);
          v51 = *(a1 + 32);
          v52 = *(a2 + 32);
          v53 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v53;
          *(a1 + 32) = v52;
          *(a2 + 32) = v51;
          *a2 = result;
          *(a2 + 16) = v50;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fe200100]<std::_ClassicAlgPolicy,IIOImageSource::updateThumbnailInfo(IIODictionary *,unsigned int *,unsigned int *)::$_0 &,IIOThumbnailInfo *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = (a2 - 40);
      v11 = *(a1 + 52);
      v12 = *(a2 - 28);
      if (v11 < *(a1 + 12))
      {
        if (v12 >= v11)
        {
          v54 = *(a1 + 32);
          v56 = *a1;
          v55 = *(a1 + 16);
          v57 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v57;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v56;
          *(a1 + 56) = v55;
          *(a1 + 72) = v54;
          if (*(a2 - 28) >= *(a1 + 52))
          {
            return 1;
          }

          v13 = *(a1 + 40);
          v14 = *(a1 + 56);
          v15 = *(a1 + 72);
          v58 = *(a2 - 8);
          v59 = *(a2 - 24);
          *(a1 + 40) = *v10;
          *(a1 + 56) = v59;
          *(a1 + 72) = v58;
        }

        else
        {
          v13 = *a1;
          v14 = *(a1 + 16);
          v15 = *(a1 + 32);
          v16 = *(a2 - 8);
          v17 = *(a2 - 24);
          *a1 = *v10;
          *(a1 + 16) = v17;
          *(a1 + 32) = v16;
        }

        *(a2 - 8) = v15;
        v9 = 1;
        *v10 = v13;
        *(a2 - 24) = v14;
        return v9;
      }

      if (v12 >= v11)
      {
        return 1;
      }

      v33 = *(a1 + 40);
      v34 = *(a1 + 56);
      v35 = *(a1 + 72);
      v36 = *(a2 - 8);
      v37 = *(a2 - 24);
      *(a1 + 40) = *v10;
      *(a1 + 56) = v37;
      *(a1 + 72) = v36;
      *(a2 - 8) = v35;
      *v10 = v33;
      *(a2 - 24) = v34;
LABEL_50:
      if (*(a1 + 52) < *(a1 + 12))
      {
        v88 = *(a1 + 32);
        v90 = *a1;
        v89 = *(a1 + 16);
        v91 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v91;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v90;
        *(a1 + 56) = v89;
        v9 = 1;
        *(a1 + 72) = v88;
        return v9;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:fe200100]<std::_ClassicAlgPolicy,IIOImageSource::updateThumbnailInfo(IIODictionary *,unsigned int *,unsigned int *)::$_0 &,IIOThumbnailInfo *,0>(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v26 = *(a1 + 52);
    v27 = *(a1 + 12);
    v28 = *(a1 + 92);
    if (v26 >= v27)
    {
      if (v28 < v26)
      {
        v46 = *(a1 + 72);
        v47 = *(a1 + 56);
        v48 = *(a1 + 40);
        v49 = *(a1 + 96);
        *(a1 + 40) = *(a1 + 80);
        *(a1 + 56) = v49;
        *(a1 + 72) = *(a1 + 112);
        *(a1 + 80) = v48;
        *(a1 + 96) = v47;
        *(a1 + 112) = v46;
        if (*(a1 + 52) < v27)
        {
          v50 = *(a1 + 32);
          v52 = *a1;
          v51 = *(a1 + 16);
          v53 = *(a1 + 56);
          *a1 = *(a1 + 40);
          *(a1 + 16) = v53;
          *(a1 + 32) = *(a1 + 72);
          *(a1 + 40) = v52;
          *(a1 + 56) = v51;
          *(a1 + 72) = v50;
        }
      }

      goto LABEL_47;
    }

    if (v28 >= v26)
    {
      v73 = *(a1 + 32);
      v75 = *a1;
      v74 = *(a1 + 16);
      v76 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v76;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v75;
      *(a1 + 56) = v74;
      *(a1 + 72) = v73;
      if (v28 >= *(a1 + 52))
      {
        goto LABEL_47;
      }

      v29 = *(a1 + 72);
      v30 = *(a1 + 56);
      v31 = *(a1 + 40);
      v77 = *(a1 + 96);
      *(a1 + 40) = *(a1 + 80);
      *(a1 + 56) = v77;
      *(a1 + 72) = *(a1 + 112);
    }

    else
    {
      v29 = *(a1 + 32);
      v31 = *a1;
      v30 = *(a1 + 16);
      v32 = *(a1 + 96);
      *a1 = *(a1 + 80);
      *(a1 + 16) = v32;
      *(a1 + 32) = *(a1 + 112);
    }

    *(a1 + 80) = v31;
    *(a1 + 96) = v30;
    *(a1 + 112) = v29;
LABEL_47:
    if (*(a2 - 28) >= *(a1 + 92))
    {
      return 1;
    }

    v78 = a2 - 40;
    v79 = *(a1 + 80);
    v80 = *(a1 + 96);
    v81 = *(a1 + 112);
    v82 = *(a2 - 8);
    v83 = *(a2 - 24);
    *(a1 + 80) = *(a2 - 40);
    *(a1 + 96) = v83;
    *(a1 + 112) = v82;
    *(v78 + 32) = v81;
    *v78 = v79;
    *(v78 + 16) = v80;
    if (*(a1 + 92) >= *(a1 + 52))
    {
      return 1;
    }

    v84 = *(a1 + 72);
    v85 = *(a1 + 40);
    v86 = *(a1 + 96);
    *(a1 + 40) = *(a1 + 80);
    v87 = *(a1 + 56);
    *(a1 + 56) = v86;
    *(a1 + 72) = *(a1 + 112);
    *(a1 + 80) = v85;
    *(a1 + 96) = v87;
    *(a1 + 112) = v84;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 28) < *(a1 + 12))
    {
      v4 = *a1;
      v5 = *(a1 + 16);
      v6 = *(a1 + 32);
      v7 = *(a2 - 8);
      v8 = *(a2 - 24);
      *a1 = *(a2 - 40);
      *(a1 + 16) = v8;
      *(a1 + 32) = v7;
      *(a2 - 8) = v6;
      *(a2 - 24) = v5;
      v9 = 1;
      *(a2 - 40) = v4;
      return v9;
    }

    return 1;
  }

LABEL_13:
  v18 = a1 + 80;
  v19 = *(a1 + 52);
  v20 = *(a1 + 12);
  v21 = *(a1 + 92);
  if (v19 >= v20)
  {
    if (v21 < v19)
    {
      v38 = *(a1 + 72);
      v39 = *(a1 + 56);
      v40 = *(a1 + 40);
      v41 = *(a1 + 96);
      *(a1 + 40) = *v18;
      *(a1 + 56) = v41;
      *(a1 + 72) = *(a1 + 112);
      *v18 = v40;
      *(a1 + 96) = v39;
      *(a1 + 112) = v38;
      if (*(a1 + 52) < v20)
      {
        v42 = *(a1 + 32);
        v44 = *a1;
        v43 = *(a1 + 16);
        v45 = *(a1 + 56);
        *a1 = *(a1 + 40);
        *(a1 + 16) = v45;
        *(a1 + 32) = *(a1 + 72);
        *(a1 + 40) = v44;
        *(a1 + 56) = v43;
        *(a1 + 72) = v42;
      }
    }
  }

  else
  {
    if (v21 >= v19)
    {
      v60 = *(a1 + 32);
      v62 = *a1;
      v61 = *(a1 + 16);
      v63 = *(a1 + 56);
      *a1 = *(a1 + 40);
      *(a1 + 16) = v63;
      *(a1 + 32) = *(a1 + 72);
      *(a1 + 40) = v62;
      *(a1 + 56) = v61;
      *(a1 + 72) = v60;
      if (v21 >= *(a1 + 52))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 72);
      v23 = *(a1 + 56);
      v24 = *(a1 + 40);
      v64 = *(a1 + 96);
      *(a1 + 40) = *v18;
      *(a1 + 56) = v64;
      *(a1 + 72) = *(a1 + 112);
    }

    else
    {
      v22 = *(a1 + 32);
      v24 = *a1;
      v23 = *(a1 + 16);
      v25 = *(a1 + 96);
      *a1 = *v18;
      *(a1 + 16) = v25;
      *(a1 + 32) = *(a1 + 112);
    }

    *v18 = v24;
    *(a1 + 96) = v23;
    *(a1 + 112) = v22;
  }

LABEL_33:
  v65 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    v68 = *(v65 + 12);
    if (v68 < *(v18 + 12))
    {
      v95 = *v65;
      v96 = *(v65 + 8);
      v93 = *(v65 + 16);
      v94 = *(v65 + 32);
      v69 = v66;
      while (1)
      {
        v70 = a1 + v69;
        v71 = *(a1 + v69 + 96);
        *(v70 + 120) = *(a1 + v69 + 80);
        *(v70 + 136) = v71;
        *(v70 + 152) = *(a1 + v69 + 112);
        if (v69 == -80)
        {
          break;
        }

        v69 -= 40;
        if (v68 >= *(v70 + 52))
        {
          v72 = a1 + v69 + 120;
          goto LABEL_41;
        }
      }

      v72 = a1;
LABEL_41:
      *v72 = v95;
      *(v72 + 8) = v96;
      *(v72 + 12) = v68;
      *(v72 + 16) = v93;
      *(v72 + 32) = v94;
      if (++v67 == 8)
      {
        return v65 + 40 == a2;
      }
    }

    v18 = v65;
    v66 += 40;
    v65 += 40;
    if (v65 == a2)
    {
      return 1;
    }
  }
}

unint64_t png_safecat(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, _BYTE *a5)
{
  if (!result || a4 >= a3)
  {
    return a4;
  }

  if (a5)
  {
    v5 = *a5;
    if (*a5)
    {
      if (a3 - 1 > a4)
      {
        v6 = (result + a4);
        v7 = a5 + 1;
        while (v6 < a2 && v6 >= result)
        {
          ++a4;
          *v6++ = v5;
          v8 = *v7++;
          v5 = v8;
          if (v8)
          {
            v9 = a4 >= a3 - 1;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_18;
      }
    }
  }

LABEL_14:
  v10 = (result + a4);
  if (result + a4 < a2 && v10 >= result)
  {
    *v10 = 0;
    return a4;
  }

LABEL_18:
  __break(0x5519u);
  return result;
}

char *png_format_number(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6)
{
  result = (a3 - 1);
  if (a3 - 1 < a2 && result >= a1)
  {
    *result = 0;
    if (result <= a1)
    {
LABEL_58:
      if (result >= a1)
      {
        return result;
      }

      goto LABEL_59;
    }

    v9 = 0;
    v10 = 0;
    v11 = 1;
    while (1)
    {
      if (!a6 && v9 >= v11)
      {
        goto LABEL_58;
      }

      v12 = 0;
      if (a5 <= 2)
      {
        if (a5 == 1)
        {
          goto LABEL_20;
        }

        if (a5 == 2)
        {
          v11 = 2;
LABEL_20:
          v12 = a6 / 0xA;
          v14 = &png_format_number_digits[a6 % 0xA];
          if (v14 >= "123456789" || v14 < "0123456789ABCDEF")
          {
            break;
          }

          if (--result >= a2 || result < a1)
          {
            break;
          }

          *result = *v14;
LABEL_34:
          ++v9;
          goto LABEL_57;
        }
      }

      else
      {
        switch(a5)
        {
          case 3:
            goto LABEL_29;
          case 4:
            v11 = 2;
LABEL_29:
            v16 = &png_format_number_digits[a6 & 0xF];
            if (v16 >= "123456789")
            {
              goto LABEL_59;
            }

            if (v16 < "0123456789ABCDEF")
            {
              goto LABEL_59;
            }

            if (--result >= a2 || result < a1)
            {
              goto LABEL_59;
            }

            *result = *v16;
            v12 = a6 >> 4;
            goto LABEL_34;
          case 5:
            v12 = a6 / 0xA;
            v13 = a6 % 0xA;
            if (v10 || v13)
            {
              v17 = &png_format_number_digits[v13];
              if (&png_format_number_digits[v13] >= "123456789" || v17 < "0123456789ABCDEF")
              {
                goto LABEL_59;
              }

              if (--result >= a2 || result < a1)
              {
                goto LABEL_59;
              }

              *result = *v17;
              v10 = 1;
            }

            else
            {
              v10 = 0;
            }

            v11 = 5;
            break;
        }
      }

      ++v9;
      if (a5 == 5 && v9 == 5 && result > a1)
      {
        if (v10)
        {
          if (--result >= a2 || result < a1)
          {
            break;
          }

          *result = 46;
        }

        else if (v12)
        {
          v10 = 0;
        }

        else
        {
          if (--result >= a2 || result < a1)
          {
            break;
          }

          v12 = 0;
          v10 = 0;
          *result = 48;
        }

        v9 = 5;
      }

LABEL_57:
      a6 = v12;
      if (result <= a1)
      {
        goto LABEL_58;
      }
    }
  }

LABEL_59:
  __break(0x5519u);
  return result;
}

unint64_t png_warning_parameter(unint64_t result, unsigned int a2, _BYTE *a3)
{
  if (a2 - 1 <= 7)
  {
    return png_safecat(result + 32 * a2 - 32, result + 32 * a2, 0x20uLL, 0, a3);
  }

  return result;
}

char *png_warning_parameter_signed(uint64_t a1, unsigned int a2, int a3, int a4)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(v13, 0, sizeof(v13));
  if (a4 >= 0)
  {
    v7 = a4;
  }

  else
  {
    v7 = -a4;
  }

  result = png_format_number(v13, &v14, &v14, &v14, a3, v7);
  v10 = result;
  if (a4 < 0 && v13 < result)
  {
    v11 = result - 1;
    if ((result - 1) >= v9 || v11 < result)
    {
      __break(0x5519u);
      return result;
    }

    *v11 = 45;
    v10 = result - 1;
  }

  if (a2 - 1 <= 7)
  {
    return png_safecat(a1 + 32 * a2 - 32, a1 + 32 * a2, 0x20uLL, 0, v10);
  }

  return result;
}

uint64_t png_formatted_warning(uint64_t a1, char *a2, unsigned __int8 *a3)
{
  v3 = 0;
  v16[1] = *MEMORY[0x1E69E9840];
  memset(v15, 0, sizeof(v15));
  while (1)
  {
    v4 = *a3;
    if (!*a3)
    {
      break;
    }

    if (!a2 || v4 != 64)
    {
      goto LABEL_23;
    }

    v5 = a3 + 1;
    v4 = a3[1];
    if (!a3[1])
    {
      LOBYTE(v4) = 64;
LABEL_23:
      v5 = a3;
LABEL_24:
      v12 = v3 + 1;
      a3 = v5 + 1;
      *(v15 + v3++) = v4;
      goto LABEL_25;
    }

    v6 = 0;
    v7 = a2;
    while (1)
    {
      v8 = png_formatted_warning_valid_parameters[v6];
      if (v8 == v4 || v8 == 0)
      {
        break;
      }

      if (&png_formatted_warning_valid_parameters[++v6] < "0123456789ABCDEF")
      {
        v7 += 32;
        if (&png_formatted_warning_valid_parameters[v6] >= "123456789")
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    if (v6 > 7)
    {
      goto LABEL_24;
    }

    if (v3 <= 0xBE)
    {
      v10 = v7;
      while (v10 < v7 + 32 && v10 >= v7)
      {
        v11 = *v10;
        if (*v10)
        {
          ++v10;
          *(v15 + v3++) = v11;
          if (v3 != 191)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      goto LABEL_33;
    }

LABEL_21:
    a3 += 2;
    v12 = v3;
LABEL_25:
    if (v12 >= 0xBF)
    {
      goto LABEL_28;
    }
  }

  v12 = v3;
LABEL_28:
  if ((v15 + v12) >= v16 || (v15 + v12) < v15)
  {
LABEL_33:
    __break(0x5519u);
  }

  *(v15 + v12) = 0;
  return png_warning(a1, v15);
}

uint64_t png_benign_error(uint64_t a1, char *a2)
{
  v2 = *(a1 + 76);
  if ((*(a1 + 82) & 0x10) == 0)
  {
    if ((v2 & 0x8000) == 0 || !*(a1 + 312))
    {
      _cg_png_error(a1, a2);
    }

    png_chunk_error(a1, a2);
  }

  if ((v2 & 0x8000) != 0 && *(a1 + 312))
  {

    return png_chunk_warning(a1, a2);
  }

  else
  {

    return png_warning(a1, a2);
  }
}

void png_chunk_error(void (**a1)(void), char *a2)
{
  if (!a1)
  {
    _cg_png_error(0, a2);
  }

  memset(v3, 0, sizeof(v3));
  png_format_buffer(a1, v3, &v4, a2);
  _cg_png_error(a1, v3);
}

uint64_t png_chunk_benign_error(uint64_t a1, char *a2)
{
  if ((*(a1 + 82) & 0x10) == 0)
  {
    png_chunk_error(a1, a2);
  }

  return png_chunk_warning(a1, a2);
}

uint64_t png_chunk_report(uint64_t a1, char *a2, int a3)
{
  if ((*(a1 + 77) & 0x80) != 0)
  {
    if (a3 > 1)
    {
      return png_chunk_benign_error(a1, a2);
    }

    else
    {
      return png_chunk_warning(a1, a2);
    }
  }

  else if (a3 <= 0)
  {
    return png_app_warning(a1, a2);
  }

  else
  {
    return png_app_error(a1, a2);
  }
}

void png_fixed_error(void (**a1)(void), uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  qmemcpy(v4, "fixed point overflow in ", sizeof(v4));
  v2 = 0;
  if (a2)
  {
    while (*(a2 + v2))
    {
      if (v5 + v2 >= v7 || v5 + v2 < v4)
      {
        goto LABEL_11;
      }

      *(v5 + v2) = *(a2 + v2);
      if (++v2 == 195)
      {
        LODWORD(v2) = 195;
        break;
      }
    }

    v2 = v2;
  }

  v3 = &v4[v2 + 24];
  if (v3 < v7 && v3 >= v4)
  {
    *v3 = 0;
    _cg_png_error(a1, v4);
  }

LABEL_11:
  __break(0x5519u);
}

uint64_t _TIFFSetupFields(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 1256))
  {
    v11 = *(a1 + 1264);
    if (v11)
    {
      v12 = 0;
      v13 = (a1 + 1256);
      v14 = 1;
      do
      {
        v15 = *(*v13 + v12);
        v16 = *(v15 + 32);
        if (v16 && *(v15 + 24) == 65 && *(v15 + 12))
        {
          free(v16);
          free(v15);
          v11 = *(a1 + 1264);
        }

        v12 = v14;
      }

      while (v11 > v14++);
      free(*v13);
      *v13 = 0;
      *(a1 + 1264) = 0;
    }
  }

  result = _TIFFMergeFields(a1, *(a2 + 16), *(a2 + 8), a4, a5, a6, a7, a8);
  if (!result)
  {

    return TIFFErrorExtR(a1, "_TIFFSetupFields", "Setting up field info failed", v19, v20, v21, v22, v23, a9);
  }

  return result;
}

uint64_t _TIFFMergeFields(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  *(a1 + 1272) = 0;
  v11 = *(a1 + 1256);
  if (v11 && (v12 = *(a1 + 1264)) != 0)
  {
    v13 = _TIFFCheckRealloc(a1, v11, v12 + a3, 8, "for fields array", a6, a7, a8);
  }

  else
  {
    v13 = _TIFFCheckMalloc(a1, a3, 8, "for fields array", a5, a6, a7, a8);
  }

  *(a1 + 1256) = v13;
  if (v13)
  {
    if (v8)
    {
      v19 = v8;
      do
      {
        if (!TIFFFindField(a1, *a2, 0))
        {
          v20 = *(a1 + 1264);
          *(*(a1 + 1256) + 8 * v20) = a2;
          *(a1 + 1264) = v20 + 1;
        }

        a2 += 12;
        --v19;
      }

      while (v19);
      v13 = *(a1 + 1256);
    }

    qsort(v13, *(a1 + 1264), 8uLL, tagCompare);
  }

  else
  {
    TIFFErrorExtR(a1, "_TIFFMergeFields", "Failed to allocate fields array", v14, v15, v16, v17, v18, v22);
    return 0;
  }

  return v8;
}

_DWORD *TIFFFindField(void *a1, int a2, int a3)
{
  memset(v7, 0, sizeof(v7));
  __key = v7;
  result = a1[159];
  if (!result || *result != a2 || a3 && result[2] != a3)
  {
    v5 = a1[157];
    if (v5)
    {
      LODWORD(v7[0]) = a2;
      DWORD2(v7[0]) = a3;
      result = bsearch(&__key, v5, a1[158], 8uLL, tagCompare);
      if (result)
      {
        result = *result;
      }

      a1[159] = result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t tagCompare(int **a1, int **a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = **a2;
  result = (v3 - v4);
  if (v3 == v4)
  {
    v6 = v2[2];
    if (v6)
    {
      return ((*a2)[2] - v6);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TIFFDataWidth(unsigned int a1)
{
  if (a1 > 0x12)
  {
    return 0;
  }

  else
  {
    return dword_186208A94[a1];
  }
}

uint64_t TIFFFieldSetGetSize(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1 > 0x33)
    {
      return 0;
    }

    else
    {
      return dword_186208AE0[v1];
    }
  }

  return result;
}

_DWORD *TIFFFieldWithTag(void *a1, int a2)
{
  v2 = a2;
  v9 = TIFFFindField(a1, a2, 0);
  if (!v9)
  {
    TIFFWarningExtR(a1, "TIFFFieldWithTag", "Warning, unknown tag 0x%x", v4, v5, v6, v7, v8, v2);
  }

  return v9;
}

int *_TIFFCreateAnonField(uint64_t a1, int a2, int a3)
{
  v5 = malloc_type_malloc(0x30uLL, 0x1030040E2282842uLL);
  v6 = v5;
  if (v5)
  {
    _TIFFmemset(v5, 0, 0x30uLL);
    v7 = 0;
    *v6 = a2;
    v6[1] = -131075;
    v6[2] = a3;
    v6[3] = 1;
    if ((a3 - 1) <= 0x11)
    {
      v7 = dword_186208BB0[a3 - 1];
    }

    v6[4] = v7;
    v6[5] = v7;
    v6[6] = 16842817;
    v8 = malloc_type_malloc(0x20uLL, 0x100004077774924uLL);
    *(v6 + 4) = v8;
    if (v8)
    {
      *(v6 + 5) = 0;
      snprintf(v8, 0x20uLL, "Tag %d", a2);
    }

    else
    {
      free(v6);
      return 0;
    }
  }

  return v6;
}

uint64_t _TIFFCheckFieldIsValidForCodec(uint64_t a1, int a2)
{
  if (((a2 - 292) > 0x37 || ((1 << (a2 - 36)) & 0x80001C02000003) == 0) && ((a2 - 512) > 9 || ((1 << a2) & 0x38F) == 0) && a2 != 50674)
  {
    return 1;
  }

  result = _cg_TIFFIsCODECConfigured(*(a1 + 120));
  if (!result)
  {
    return result;
  }

  v5 = *(a1 + 120);
  if (v5 > 7)
  {
    if (*(a1 + 120) > 0x80B1u)
    {
      if (*(a1 + 120) <= 0x886Cu)
      {
        if (v5 != 32946)
        {
          return v5 == 34887 && a2 == 50674;
        }

        return a2 == 317;
      }

      if (v5 != 34925)
      {
        v6 = 50000;
LABEL_33:
        if (v5 != v6)
        {
          return 0;
        }
      }

      return a2 == 317;
    }

    if (v5 == 8)
    {
      return a2 == 317;
    }

    if (v5 != 32771)
    {
      v6 = 32909;
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  if (*(a1 + 120) <= 4u)
  {
    if (v5 - 2 >= 3)
    {
      return 0;
    }

LABEL_21:
    if ((a2 - 326) < 3)
    {
      return 1;
    }

    if (a2 != 293)
    {
      return a2 == 292 && v5 == 3;
    }

    return v5 == 4;
  }

  if (v5 == 5)
  {
    return a2 == 317;
  }

  if (v5 != 6)
  {
    return v5 == 7 && a2 == 347;
  }

  if ((a2 - 512) < 0xA)
  {
    return dword_186208BF8[a2 - 512];
  }

  return 0;
}

uint64_t CGCreatePNGDataFromSVGData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  IIOInitDebugFlags();
  if (gIIODebugFlags >> 14)
  {
    ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGCreatePNGDataFromSVGData", 0, 0, -1, 0);
  }

  if (a1)
  {
    if (a3)
    {
      return 4294967292;
    }

    CGCreatePNGDataFromSVGData_cold_1();
  }

  else
  {
    CGCreatePNGDataFromSVGData_cold_2();
  }

  return 4294967246;
}

void *PDFReadPlugin::PDFReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4D4780;
  result[59] = 0;
  result[60] = 0;
  result[58] = 0;
  return result;
}

void PDFReadPlugin::~PDFReadPlugin(PDFReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t PDFReadPlugin::loadDataFromXPCObject(PDFReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_pdf", &length);
    if (length == 24)
    {
      v6 = data;
      result = 0;
      v7 = *v6;
      *(this + 60) = v6[2];
      *(this + 29) = v7;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t PDFReadPlugin::saveDataToXPCObject(PDFReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_pdf", this + 464, 0x18uLL);
  }

  return v4;
}

uint64_t PDFReadPlugin::initialize(IIOImageReadSession **this, IIODictionary *a2)
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  IIOScanner::IIOScanner(&v30, this[3]);
  *(&v31 + 1) = 0;
  if ((IIOImageReadSession::isFinal(this[3]) & 1) == 0 || (SessionPDFRef = CreateSessionPDFRef(&v30, 0), (v4 = SessionPDFRef) == 0))
  {
    v28 = 4294967246;
    goto LABEL_47;
  }

  Page = CGPDFDocumentGetPage(SessionPDFRef, (*(this + 56) + 1));
  v6 = Page;
  if (!Page)
  {
    goto LABEL_40;
  }

  RotationAngle = CGPDFPageGetRotationAngle(Page);
  v8 = RotationAngle;
  PDFReadPlugin::getPageBox(RotationAngle, v6);
  if ((v8 / 90))
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if ((v8 / 90))
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (IIODictionary::containsKey(this[6], @"kCGImageSourceDrawAnnotations"))
  {
    *(this + 465) = IIODictionary::getBoolForKey(this[6], @"kCGImageSourceDrawAnnotations");
  }

  v13 = *(this + 57);
  if (!v13)
  {
    _cg_jpeg_mem_term("initialize", 113, "*** ERROR: PDF decode can only be used with 'CGImageSourceCreateThumbnailAtIndex'\n");
LABEL_40:
    v27 = 0;
    v28 = 4294967246;
    goto LABEL_46;
  }

  v14 = v11;
  v15 = v12;
  if (v11 > v13 || v15 > v13)
  {
    v17 = v13;
    if (v14 <= v15)
    {
      v18 = v12;
    }

    else
    {
      v18 = v11;
    }

    v19 = v17 / v18;
    v20 = floorf(v19 * v14);
    if (v14 >= v15)
    {
      v20 = v17;
    }

    v21 = floorf(v19 * v15);
    if (v14 > v15)
    {
      v17 = v21;
    }

    if (v20 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v20;
    }

    if (v17 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v17;
    }
  }

  if (v14)
  {
    v22 = v15 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    goto LABEL_40;
  }

  *(this + 61) = v14;
  *(this + 62) = v15;
  this[32] = 0x5000400200008;
  *(this + 63) = 4 * v14;
  *(this + 372) = 0;
  *(this + 374) = 0;
  *(this + 85) = 1380401696;
  v23 = CGPDFPageContainsWideGamutContent();
  v24 = MEMORY[0x1E695F0B8];
  if (!v23)
  {
    v24 = MEMORY[0x1E695F1C0];
  }

  this[20] = CGColorSpaceCreateWithName(*v24);
  this[59] = v14;
  this[60] = v15;
  *(this + 464) = *(this + 57) != 0;
  v25 = IIODictionary::containsKey(this[6], @"kCGImageSourceUsePDFBackgroundWhite");
  v26 = this[6];
  if (v25)
  {
    *(this + 466) = IIODictionary::getBoolForKey(v26, @"kCGImageSourceUsePDFBackgroundWhite");
  }

  else if (IIODictionary::containsKey(v26, @"kCGImageSourceUsePDFBackgroundBlack"))
  {
    *(this + 467) = IIODictionary::getBoolForKey(this[6], @"kCGImageSourceUsePDFBackgroundBlack");
  }

  else if (*(this + 57))
  {
    *(this + 466) = 1;
  }

  v28 = 0;
  v27 = 1;
  this[49] = 1;
  *(this + 204) = 1;
LABEL_46:
  CGPDFDocumentRelease(v4);
  if ((v27 & 1) == 0)
  {
LABEL_47:
    kdebug_trace();
  }

  IIOScanner::~IIOScanner(&v30);
  return v28;
}

double PDFReadPlugin::getPageBox(PDFReadPlugin *this, CGPDFPageRef page)
{
  BoxRect = CGPDFPageGetBoxRect(page, kCGPDFCropBox);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  v18 = CGPDFPageGetBoxRect(page, kCGPDFMediaBox);
  v7 = v18.origin.x;
  v8 = v18.origin.y;
  v9 = v18.size.width;
  v10 = v18.size.height;
  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;

  *&result = CGRectIntersection(*&v11, *&v7);
  return result;
}

CGFloat PDFReadPlugin::getPageDrawingTransform@<D0>(PDFReadPlugin *this@<X0>, CGPDFPage *a2@<X1>, CGRect a3@<0:D0, 8:D1, 16:D2, 24:D3>, uint64_t a4@<X8>)
{
  width = a3.size.width;
  height = a3.size.height;
  y = a3.origin.y;
  x = a3.origin.x;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  memset(&v45, 0, sizeof(v45));
  v46.origin.x = PDFReadPlugin::getPageBox(this, a2);
  v7 = v46.origin.x;
  v8 = v46.origin.y;
  v9 = v46.size.width;
  v10 = v46.size.height;
  MinX = CGRectGetMinX(v46);
  v47.origin.x = v7;
  v47.origin.y = v8;
  v47.size.width = v9;
  v47.size.height = v10;
  MinY = CGRectGetMinY(v47);
  v36 = MinY;
  v48.origin.x = v7;
  v48.origin.y = v8;
  v48.size.width = v9;
  v48.size.height = v10;
  MaxX = CGRectGetMaxX(v48);
  v49.origin.x = v7;
  v49.origin.y = v8;
  v49.size.width = v9;
  v49.size.height = v10;
  MaxY = CGRectGetMaxY(v49);
  v50.origin.x = v7;
  v50.origin.y = v8;
  v50.size.width = v9;
  v50.size.height = v10;
  v14 = CGRectGetWidth(v50);
  v51.origin.x = v7;
  v51.origin.y = v8;
  v51.size.width = v9;
  v51.size.height = v10;
  v15 = CGRectGetHeight(v51);
  v16 = CGPDFPageGetRotationAngle(a2) % 360;
  v17 = v16 + (v16 < 0 ? 0x168 : 0);
  if (v17 == 90)
  {
    v19 = -v36;
    *a4 = xmmword_186208C20;
    *(a4 + 16) = xmmword_186208860;
    goto LABEL_7;
  }

  if (v17 == 180)
  {
    *a4 = 0xBFF0000000000000;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0xBFF0000000000000;
    v19 = MaxX;
    MaxX = MaxY;
  }

  else
  {
    v18 = MinX;
    if (v17 == 270)
    {
      MaxX = -v18;
      *a4 = xmmword_186208C30;
      *(a4 + 16) = xmmword_186208C40;
      v19 = MaxY;
LABEL_7:
      v20 = v14;
      v14 = v15;
      goto LABEL_10;
    }

    v19 = -v18;
    MaxX = -v36;
    *a4 = 0x3FF0000000000000;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0x3FF0000000000000;
  }

  v20 = v15;
LABEL_10:
  v38 = v20;
  *(a4 + 32) = v19;
  *(a4 + 40) = MaxX;
  CGAffineTransformMakeTranslation(&v45, (v14 * -0.5), (v20 * -0.5));
  v21 = *(a4 + 16);
  *&t1.a = *a4;
  *&t1.c = v21;
  *&t1.tx = *(a4 + 32);
  t2 = v45;
  CGAffineTransformConcat(a4, &t1, &t2);
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v22 = CGRectGetMinX(v52);
  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  v23 = CGRectGetMinY(v53);
  v54.origin.x = x;
  v54.origin.y = y;
  v54.size.width = width;
  v54.size.height = height;
  v24 = CGRectGetWidth(v54);
  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v25 = CGRectGetHeight(v55);
  v26 = v24 / v14;
  if ((v24 / v14) < (v25 / v38))
  {
    v26 = v25 / v38;
  }

  CGAffineTransformMakeScale(&t1, v26, v26);
  v45 = t1;
  v29 = *(a4 + 16);
  *&t2.a = *a4;
  *&t2.c = v29;
  *&t2.tx = *(a4 + 32);
  v42 = t1;
  CGAffineTransformConcat(&t1, &t2, &v42);
  v30 = *&t1.c;
  *a4 = *&t1.a;
  *(a4 + 16) = v30;
  *(a4 + 32) = *&t1.tx;
  CGAffineTransformMakeTranslation(&t1, (v24 * 0.5), (v25 * 0.5));
  v45 = t1;
  v31 = *(a4 + 16);
  *&t2.a = *a4;
  *&t2.c = v31;
  *&t2.tx = *(a4 + 32);
  v42 = t1;
  CGAffineTransformConcat(&t1, &t2, &v42);
  v32 = *&t1.c;
  *a4 = *&t1.a;
  *(a4 + 16) = v32;
  *(a4 + 32) = *&t1.tx;
  v28 = v22;
  v27 = v23;
  CGAffineTransformMakeTranslation(&t1, v28, v27);
  v45 = t1;
  v33 = *(a4 + 16);
  *&t2.a = *a4;
  *&t2.c = v33;
  *&t2.tx = *(a4 + 32);
  v42 = t1;
  CGAffineTransformConcat(&t1, &t2, &v42);
  v34 = *&t1.c;
  *a4 = *&t1.a;
  *(a4 + 16) = v34;
  result = t1.tx;
  *(a4 + 32) = *&t1.tx;
  return result;
}

uint64_t PDFReadPlugin::decodeImageData(IIOImageReadSession **this, unsigned __int8 *a2)
{
  v4 = *(this + 70);
  v5 = *(this + 69);
  v6 = *(this + 79);
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  IIOScanner::IIOScanner(v20, this[3]);
  SessionPDFRef = CreateSessionPDFRef(v20, 0);
  v8 = SessionPDFRef;
  if (SessionPDFRef)
  {
    Page = CGPDFDocumentGetPage(SessionPDFRef, (*(this + 56) + 1));
    v10 = pthread_mutex_lock(&PDFReadPlugin::decodeImageData(unsigned char *,unsigned long)::lock);
    v23.size.width = v5;
    v23.size.height = v4;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    PDFReadPlugin::getPageDrawingTransform(v10, Page, v23, &transform);
    v22 = transform;
    v11 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if (v11)
    {
      if (PDFReadPlugin::decodeImageData(unsigned char *,unsigned long)::onceToken != -1)
      {
        PDFReadPlugin::decodeImageData();
      }

      if (*(this + 467) == 1)
      {
        bzero(a2, v6 * v4);
      }

      else if ((this[58] & 1) != 0 || *(this + 466) == 1)
      {
        memset(a2, 255, v6 * v4);
      }

      if (*(this + 464))
      {
        v13 = 5;
      }

      else
      {
        v13 = 1;
      }

      if (*(this + 464))
      {
        v14 = 8198;
      }

      else
      {
        v14 = 8194;
      }

      if (*(this + 437))
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      v16 = CGBitmapContextCreate(a2, v5, v4, 8uLL, v6, v11, v15);
      if (v16)
      {
        memset(v18, 0, sizeof(v18));
        IIODictionary::IIODictionary(v18);
        if (*(this + 464) == 1)
        {
          CGContextSetTextGreekingThreshold();
        }

        CGContextSetShouldSmoothFonts(v16, 0);
        transform = v22;
        CGContextConcatCTM(v16, &transform);
        if (*(this + 465) == 1)
        {
          IIODictionary::setObjectForKey(v18, *MEMORY[0x1E695E4D0], *MEMORY[0x1E695F228]);
        }

        CGContextDrawPDFPageWithOptions();
        CGContextRelease(v16);
        IIODictionary::~IIODictionary(v18);
        v12 = 0;
      }

      else
      {
        _cg_jpeg_mem_term("decodeImageData", 319, "*** ERROR: CGBitmapContextCreate returned NULL\n");
        v12 = 4294967243;
      }

      CGColorSpaceRelease(v11);
    }

    else
    {
      v12 = 4294967243;
    }

    pthread_mutex_unlock(&PDFReadPlugin::decodeImageData(unsigned char *,unsigned long)::lock);
    CGPDFDocumentRelease(v8);
  }

  else
  {
    _cg_jpeg_mem_term("decodeImageData", 278, "*** could not create PDFDocument\n");
    v12 = 4294967243;
  }

  IIOScanner::~IIOScanner(v20);
  return v12;
}

void sub_185FD3F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

double BMPReadPlugin::BMPReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v5 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v5 = &unk_1EF4D48E8;
  result = 0.0;
  *(v5 + 464) = 0u;
  *(v5 + 480) = 0u;
  *(v5 + 496) = 0u;
  return result;
}

void BMPReadPlugin::~BMPReadPlugin(BMPReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t BMPReadPlugin::loadDataFromXPCObject(BMPReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_bmp", &length);
    if (length == 48)
    {
      v6 = data;
      result = 0;
      v7 = *v6;
      v8 = v6[2];
      *(this + 30) = v6[1];
      *(this + 31) = v8;
      *(this + 29) = v7;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t BMPReadPlugin::saveDataToXPCObject(BMPReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_bmp", this + 464, 0x30uLL);
  }

  return v4;
}

void BMPReadPlugin::debugHeader(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 55)
  {
    if (v2 > 107)
    {
      if (v2 == 108)
      {
        ImageIOLog("bmp v4\n");
      }

      else if (v2 == 124)
      {
        ImageIOLog("bmp v5\n");
      }
    }

    else if (v2 == 56)
    {
      ImageIOLog("bmp v3 with RGBA masks\n");
    }

    else if (v2 == 64)
    {
      ImageIOLog("bmp OS2 v2\n");
    }
  }

  else if (v2 > 39)
  {
    if (v2 == 40)
    {
      ImageIOLog("bmp v3\n");
    }

    else if (v2 == 52)
    {
      ImageIOLog("bmp v3 with RGB masks\n");
    }
  }

  else if (v2 == 12)
  {
    ImageIOLog("bmp OS2 v1\n");
  }

  else if (v2 == 16)
  {
    ImageIOLog("bmp v2\n");
  }
}

uint64_t BMPReadPlugin::initialize(BMPReadPlugin *this, IIODictionary *a2)
{
  v80 = 0u;
  memset(v81, 0, sizeof(v81));
  v79 = 0u;
  memset(v78, 0, sizeof(v78));
  v76 = 0u;
  v77 = 0u;
  v75 = 0;
  memset(v74, 0, sizeof(v74));
  IIOScanner::IIOScanner(v74, *(this + 3));
  if (*(this + 369) != 1 || (BMPReadPlugin::readHeader(this, &v76, v74) & 1) == 0)
  {
    goto LABEL_172;
  }

  v3 = DWORD2(v76);
  v4 = v76;
  if ((SDWORD2(v76) & 0x80000000) == 0)
  {
    v5 = DWORD2(v76);
  }

  else
  {
    v5 = -DWORD2(v76);
  }

  if (v76 == 40 && v77 == 3)
  {
    *(this + 119) = 66;
  }

  v6 = DWORD1(v76);
  bzero(&v76 + v4, 124 - v4);
  if (DWORD2(v77) && HIDWORD(v77))
  {
    v7 = DWORD2(v77) * 0.0254;
    v8 = HIDWORD(v77) * 0.0254;
    if (fabsf(v7 + -72.0) < 0.05)
    {
      v7 = 72.0;
    }

    if (fabsf(v8 + -72.0) < 0.05)
    {
      v8 = 72.0;
    }

    if (fabsf(v7 + -96.0) >= 0.05)
    {
      v9 = v7;
    }

    else
    {
      v9 = 96.0;
    }

    if (fabsf(v8 + -96.0) >= 0.05)
    {
      v10 = v8;
    }

    else
    {
      v10 = 96.0;
    }

    if (ValidDPI(v9) && ValidDPI(v10))
    {
      v11 = *(this + 7);
      IIONumber::IIONumber(v73, v9);
      IIODictionary::setObjectForKey(v11, v73, @"DPIWidth");
      IIONumber::~IIONumber(v73);
      v12 = *(this + 7);
      IIONumber::IIONumber(v73, v10);
      IIODictionary::setObjectForKey(v12, v73, @"DPIHeight");
      IIONumber::~IIONumber(v73);
    }
  }

  *(this + 61) = v6;
  *(this + 62) = v5;
  v13 = HIWORD(v76);
  *(this + 129) = HIWORD(v76);
  v14 = v77;
  *(this + 120) = v77;
  if (!v6 || !v3 || WORD6(v76) != 1)
  {
    goto LABEL_172;
  }

  v15 = v76;
  if (v76 < 0x7C)
  {
    if (v76 >= 0x6C && LODWORD(v78[3]) > 1)
    {
      goto LABEL_172;
    }
  }

  else if ((LODWORD(v78[3]) > 4 || LODWORD(v78[3]) == 3) && LODWORD(v78[3]) != 1934772034)
  {
    goto LABEL_172;
  }

  if (v13 <= 7)
  {
    switch(v13)
    {
      case 1:
        if (v14)
        {
          v16 = 1;
          v17 = 353;
          goto LABEL_171;
        }

        break;
      case 2:
        if (v14)
        {
          v16 = 2;
          v17 = 356;
          goto LABEL_171;
        }

        break;
      case 4:
        if ((v14 & 0xFFFFFFFD) != 0)
        {
          v16 = 4;
          v17 = 359;
          goto LABEL_171;
        }

        break;
      default:
        goto LABEL_172;
    }

    goto LABEL_77;
  }

  if (v13 <= 23)
  {
    if (v13 != 8)
    {
      if (v13 == 16)
      {
        if (v14)
        {
          if (v14 != 3)
          {
            v16 = 16;
            v17 = 365;
LABEL_171:
            _cg_jpeg_mem_term("initialize", v17, "bitsPerPixel: %d   compression: %d\n", v16, v14);
            goto LABEL_172;
          }

          goto LABEL_50;
        }

        goto LABEL_77;
      }

LABEL_172:
      kdebug_trace();
      v70 = 4294967246;
      goto LABEL_173;
    }

    if (v14 > 1)
    {
      v16 = 8;
      v17 = 362;
      goto LABEL_171;
    }

LABEL_77:
    v26 = 0;
LABEL_78:
    v72 = 0;
    goto LABEL_79;
  }

  if (v13 == 24)
  {
    if (v14)
    {
      v16 = 24;
      v17 = 368;
      goto LABEL_171;
    }

    goto LABEL_60;
  }

  if (v13 != 32)
  {
    goto LABEL_172;
  }

  if (!v14)
  {
LABEL_60:
    if (IIODictionary::containsKey(*(this + 6), @"kCGImageSourceSubsampleFactor"))
    {
      Uint32ForKey = IIODictionary::getUint32ForKey(*(this + 6), @"kCGImageSourceSubsampleFactor");
      *(this + 166) = 1;
      if (v6 >= v5)
      {
        v28 = v5;
      }

      else
      {
        v28 = v6;
      }

      if (Uint32ForKey > v28)
      {
        goto LABEL_77;
      }

      v29 = (this + 332);
      if (Uint32ForKey >= 2)
      {
        if (Uint32ForKey >= 0x80)
        {
          v26 = 0;
          v30 = 128;
LABEL_189:
          *v29 = v30;
          goto LABEL_78;
        }

        if (Uint32ForKey >= 0x40)
        {
          v26 = 0;
          v30 = 64;
          goto LABEL_189;
        }

        if (Uint32ForKey >= 0x20)
        {
LABEL_179:
          v26 = 0;
          v30 = 32;
          goto LABEL_189;
        }

        if (Uint32ForKey < 0x10)
        {
          if (Uint32ForKey < 8)
          {
            if (Uint32ForKey < 4)
            {
              goto LABEL_187;
            }

LABEL_181:
            v26 = 0;
            v30 = 4;
            goto LABEL_189;
          }

LABEL_177:
          v26 = 0;
          v30 = 8;
          goto LABEL_189;
        }

LABEL_76:
        v26 = 0;
        v30 = 16;
        goto LABEL_189;
      }
    }

    else
    {
      v29 = (this + 332);
      *(this + 166) = 1;
    }

    if (*(this + 232) < 2u)
    {
      goto LABEL_77;
    }

    v31 = *(this + 57);
    if (v31)
    {
      if (v31 < v6 >> 5 || v5 >> 5 > v31)
      {
        goto LABEL_179;
      }

      if (v31 < v6 >> 4)
      {
        goto LABEL_76;
      }

      if (v31 < v6 >> 3)
      {
        goto LABEL_177;
      }

      if (v31 < v6 >> 2)
      {
        goto LABEL_181;
      }

      if (v31 < v6 >> 1)
      {
LABEL_187:
        v26 = 0;
        v30 = 2;
        goto LABEL_189;
      }
    }

    v26 = 0;
    v30 = 1;
    goto LABEL_189;
  }

  if (v14 != 3)
  {
    v16 = 32;
    v17 = 371;
    goto LABEL_171;
  }

LABEL_50:
  if (v76 < 0x34)
  {
    goto LABEL_172;
  }

  v18.i64[0] = v78[1];
  v19 = v78[1];
  v20 = HIDWORD(v78[1]);
  if ((HIDWORD(v78[1]) & v78[1]) != 0)
  {
    goto LABEL_172;
  }

  v21 = v78[2];
  if ((v78[2] & LODWORD(v78[1])) != 0)
  {
    goto LABEL_172;
  }

  v22 = HIDWORD(v78[2]);
  if ((HIDWORD(v78[2]) | LODWORD(v78[2])) & HIDWORD(v78[1]) | HIDWORD(v78[2]) & (LODWORD(v78[2]) | LODWORD(v78[1])))
  {
    goto LABEL_172;
  }

  v18.i64[1] = v78[2];
  v23 = vpaddlq_u8(vcntq_s8(v18));
  v24 = vpaddlq_u16(v23);
  *(this + 507) = v24.i8[0];
  *(this + 508) = v24.i8[4];
  *(this + 509) = v24.i8[8];
  v25.i32[0] = BMPReadPlugin::countBitsAndCalculateShift(unsigned int,int *,int *)::Mod37BitPosition[(v19 & -v19) % 0x25];
  v25.i32[1] = BMPReadPlugin::countBitsAndCalculateShift(unsigned int,int *,int *)::Mod37BitPosition[(v20 & -v20) % 0x25];
  v25.i32[2] = BMPReadPlugin::countBitsAndCalculateShift(unsigned int,int *,int *)::Mod37BitPosition[(v21 & -v21) % 0x25];
  v25.i32[3] = BMPReadPlugin::countBitsAndCalculateShift(unsigned int,int *,int *)::Mod37BitPosition[(v22 & -v22) % 0x25];
  v72 = vbic_s8(vadd_s16(vmovn_s32(vpadalq_u16(v25, v23)), 0xF800F800F800F8), vmovn_s32(vceqzq_s32(v18)));
  v26 = v24.i8[12];
LABEL_79:
  v32 = *(this + 120);
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v33 = DWORD1(v77);
      v41 = *(this + 25);
      if (!DWORD1(v77) || v41 <= DWORD1(v77))
      {
        v33 = v41 - *(this + 118);
      }

      v42 = v6 * v5;
      if ((v42 & 0xFFFFFFFF00000000) != 0)
      {
        goto LABEL_172;
      }

      if (130 * v41 <= v42)
      {
        _cg_jpeg_mem_term("initialize", 496, "malformed 4bitRLE-BMP?\n");
        goto LABEL_172;
      }

      goto LABEL_99;
    }

    if (v32 != 3)
    {
      goto LABEL_172;
    }

    goto LABEL_90;
  }

  if (!v32)
  {
LABEL_90:
    v36 = *(this + 61);
    v37 = v36 * *(this + 129);
    if ((v37 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_172;
    }

    v38 = ((v37 + 31) >> 3) & 0x1FFFFFFC;
    v39 = *(this + 62);
    v40 = v39 * v38;
    if ((v40 & 0xFFFFFFFF00000000) != 0)
    {
      goto LABEL_172;
    }

    if (!v38)
    {
      _cg_jpeg_mem_term("initialize", 485, "*** ERROR: %dx%d - bpp=%d compression=%d --> rb=%d\n", v36, v39, *(this + 129), *(this + 120), 0);
      goto LABEL_172;
    }

    v33 = v40;
    goto LABEL_99;
  }

  if (v32 != 1)
  {
    goto LABEL_172;
  }

  v33 = DWORD1(v77);
  v34 = *(this + 25);
  if (!DWORD1(v77) || v34 <= DWORD1(v77))
  {
    v33 = v34 - *(this + 118);
  }

  v35 = v6 * v5;
  if ((v35 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_172;
  }

  if (35 * v34 <= v35)
  {
    _cg_jpeg_mem_term("initialize", 505, "malformed 8bitRLE-BMP?  %ld < (35 * %ld) = %ld   [%g]\n", v6 * v5, v34, 35 * v34, v35 / v34);
    goto LABEL_172;
  }

LABEL_99:
  if (!v33)
  {
    goto LABEL_172;
  }

  *(this + 20) = 0;
  *(this + 85) = 1380401696;
  *(this + 374) = 0;
  v43 = *(this + 129);
  if (v43 > 8)
  {
    switch(v43)
    {
      case 0x20u:
        v51 = 0;
        *(this + 128) = 8;
        *(this + 72) = 2097160;
        if (v26)
        {
          v61 = 0;
        }

        else
        {
          v61 = v32 == 3;
        }

        if (v61 || v15 == 40)
        {
          v63 = 5;
        }

        else
        {
          v63 = 3;
        }

        *(this + 146) = 4;
        *(this + 262) = v63;
        *(this + 294) = v63;
        *(this + 295) = 4;
        *(this + 71) = 4 * *(this + 61);
        v43 = 32;
        break;
      case 0x18u:
        v51 = 0;
        *(this + 128) = 8;
        *(this + 36) = 0x405000400200008;
        break;
      case 0x10u:
        v51 = 0;
        *(this + 128) = 8;
        *(this + 72) = 2097160;
        *(this + 146) = 4;
        *(this + 294) = 5;
        v43 = 16;
        if (v32 == 3 && HIDWORD(v78[2]))
        {
          v51 = 0;
          *(this + 262) = 3;
        }

        break;
      default:
        v51 = 0;
        break;
    }

    goto LABEL_155;
  }

  *(this + 72) = 524296;
  *(this + 146) = 1;
  *(this + 71) = *(this + 63);
  v44 = 1 << v43;
  if (v15 < 0x11)
  {
    v45 = 3;
  }

  else
  {
    v45 = 4;
  }

  v46 = v45 << v43;
  v47 = LODWORD(v78[0]) != 0;
  v48 = LODWORD(v78[0]) < v44;
  if (v47 && v48)
  {
    v49 = LODWORD(v78[0]);
  }

  else
  {
    v49 = v44;
  }

  if (v47 && v48)
  {
    v50 = (LODWORD(v78[0]) * v45);
  }

  else
  {
    v50 = v46;
  }

  v51 = malloc_type_calloc(v49, v45, 0x100004077774924uLL);
  if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v51, *(this + 119), v50) > v50)
  {
    if (v51)
    {
      free(v51);
    }

    goto LABEL_172;
  }

  v52 = 0;
  v53 = 0;
  v54 = (v49 - 1);
  if (v49 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v49;
  }

  v56 = v55 + 2 * v55;
  do
  {
    v57 = v51[v52 + 1];
    v58 = v51[v52];
    v51[v53] = v51[v52 + 2];
    v51[(v53 + 1)] = v57;
    v51[(v53 + 2)] = v58;
    v53 += 3;
    v52 += v45;
  }

  while (v56 != v53);
  v59 = v15 + v50 + 14;
  v60 = *(this + 118);
  if (v60 < v59 && v60 + 4 < v59)
  {
    *(this + 118) = v59;
  }

  if (v49 != 2 || v13 != 1)
  {
    goto LABEL_152;
  }

  if (*v51 != 255)
  {
    if (!*v51 && !v51[1] && !v51[2] && v51[3] == 255 && v51[4] == 255 && v51[5] == 255)
    {
      goto LABEL_190;
    }

LABEL_152:
    v64 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    *(this + 20) = CGColorSpaceCreateIndexed(v64, v54, v51);
    *(this + 42) = 0x5247422000000005;
    CGColorSpaceRelease(v64);
    if (*(this + 129) == 8)
    {
      *(this + 71) = 4 * *(this + 61);
      *(this + 290) = 262176;
    }

    goto LABEL_154;
  }

  if (v51[1] != 255 || v51[2] != 255 || v51[3] || v51[4] || v51[5])
  {
    goto LABEL_152;
  }

LABEL_190:
  *(this + 42) = 0x4752415900000000;
  if (*v51 == 255 && v51[1] == 255 && v51[2] == 255 && !v51[3] && !v51[4] && !v51[5])
  {
    *(this + 374) = 1;
  }

LABEL_154:
  v43 = *(this + 129);
  *(this + 128) = v43;
  *(this + 262) = 0;
LABEL_155:
  *(this + 372) = 0;
  if (!*(this + 63))
  {
    *(this + 63) = ((*(this + 61) * v43 + 31) >> 3) & 0x1FFFFFFC;
  }

  *(this + 58) = v33;
  v65 = DWORD2(v76);
  *(this + 484) = SDWORD2(v76) > 0;
  v66 = *(this + 166);
  if (v66 >= 2)
  {
    v67 = SDWORD1(v76) / v66;
    *(this + 69) = SDWORD1(v76) / v66;
    v68 = v65 / v66;
    if (v68 < 0)
    {
      v68 = -v68;
    }

    *(this + 70) = v68;
    *(this + 71) = 4 * v67;
  }

  *(this + 49) = 1;
  if (*(this + 120) == 3)
  {
    *(this + 488) = *&v78[1];
    *(this + 504) = v72.i8[0];
    *(this + 505) = v72.i8[2];
    *(this + 506) = v72.i8[4];
    *(this + 510) = v72.i8[6];
    *(this + 511) = v26;
  }

  v69 = v43 / *(this + 128);
  *(this + 130) = v69;
  if (v69 == 1)
  {
    *(this + 71) = (*(this + 61) + 3) & 0xFFFFFFFC;
  }

  if (*(this + 145) == 32)
  {
    *(this + 378) = 1;
  }

  *(this + 204) = 1;
  if (v51)
  {
    free(v51);
  }

  v70 = 0;
LABEL_173:
  IIOScanner::~IIOScanner(v74);
  return v70;
}

void sub_185FD4D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t BMPReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t BMPReadPlugin::decodeUncompressed(BMPReadPlugin *this, unsigned __int8 *a2)
{
  v4 = 0;
  v5 = *(this + 129);
  if (v5 <= 0xF)
  {
    if (v5 - 1 < 2 || v5 == 4)
    {
      v7 = *(this + 62);
      if (*(this + 58) <= (v7 * *(this + 63)))
      {
        v8 = (v7 * *(this + 63));
      }

      else
      {
        v8 = *(this + 58);
      }

      v9 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
      if (!v9)
      {
        return 1;
      }

      v4 = v9;
      if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v9, *(this + 118), v8) != v8)
      {
        goto LABEL_110;
      }

      v10 = *(this + 85);
      if (v10 == 1380401696)
      {
        if (*(this + 108) == 1768842360)
        {
          operator new();
        }

        operator new();
      }

      if (v10 == 1196573017)
      {
        operator new();
      }
    }

    else
    {
      if (v5 != 8)
      {
        goto LABEL_81;
      }

      v14 = *(this + 62);
      if (*(this + 58) <= (v14 * *(this + 63)))
      {
        v15 = (v14 * *(this + 63));
      }

      else
      {
        v15 = *(this + 58);
      }

      v16 = malloc_type_calloc(v15, 1uLL, 0x100004077774924uLL);
      if (!v16)
      {
        return 1;
      }

      v4 = v16;
      if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v16, *(this + 118), v15) != v15)
      {
        goto LABEL_110;
      }

      v17 = *(this + 70);
      if (v17)
      {
        v18 = 0;
        v19 = -1;
        do
        {
          v20 = v17 + v19;
          if (!*(this + 484))
          {
            v20 = v18;
          }

          memcpy(&a2[*(this + 79) * v20], &v4[*(this + 63) * v18++], *(this + 63));
          v17 = *(this + 70);
          --v19;
        }

        while (v18 < v17);
      }
    }

    goto LABEL_80;
  }

  if (v5 == 16)
  {
    v21 = *(this + 437) != 0;
    v22 = *(this + 437) == 0;
    v23 = *(this + 62);
    if (*(this + 58) <= (v23 * *(this + 63)))
    {
      v24 = (v23 * *(this + 63));
    }

    else
    {
      v24 = *(this + 58);
    }

    v25 = malloc_type_calloc(v24, 1uLL, 0x100004077774924uLL);
    if (!v25)
    {
      return 1;
    }

    v4 = v25;
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v25, *(this + 118), v24) != v24)
    {
      goto LABEL_110;
    }

    v26 = *(this + 70);
    if (v26)
    {
      v27 = 0;
      v28 = *(this + 69);
      do
      {
        if (v28)
        {
          v29 = 0;
          v30 = v26 + ~v27;
          if (!*(this + 484))
          {
            v30 = v27;
          }

          v31 = &a2[*(this + 79) * v30];
          v32 = &v4[*(this + 63) * v27 + 1];
          do
          {
            v33 = *v32;
            v34 = *(v32 - 1);
            v31[2 * v22] = (2 * v33) & 0xF8;
            v31[1] = ((v34 | (v33 << 8)) >> 2) & 0xF8;
            v31[2 * v21] = 8 * v34;
            v31[3] = -1;
            ++v29;
            v31 += 4;
            v28 = *(this + 69);
            v32 += 2;
          }

          while (v29 < v28);
          v26 = *(this + 70);
        }

        ++v27;
      }

      while (v27 < v26);
    }

    goto LABEL_80;
  }

  if (v5 != 24 && v5 != 32)
  {
LABEL_81:
    if (v5 == 32)
    {
      v49 = *(this + 262);
      if (v49 != 5 && v49 != 3)
      {
        goto LABEL_105;
      }
    }

    else
    {
      if (v5 != 24 || *(this + 262) != 5 || *(this + 79) < (4 * *(this + 69)))
      {
        goto LABEL_109;
      }

      v49 = 5;
    }

    v50 = *(this + 70);
    if (!v50)
    {
      goto LABEL_109;
    }

    v51 = 0;
    v52 = a2 + 3;
    v53 = 1;
    do
    {
      if (*(this + 69))
      {
        v54 = &v52[(*(this + 79) * v51)];
        v55 = *(this + 69);
        while (!*v54)
        {
          v54 += 4;
          if (!--v55)
          {
            goto LABEL_96;
          }
        }

        v53 = 0;
      }

LABEL_96:
      ++v51;
    }

    while (v51 != v50);
    if (v53)
    {
      v56 = 0;
      v57 = *(this + 69);
      do
      {
        if (v57)
        {
          v58 = 0;
          v59 = &v52[*(this + 79) * v56];
          do
          {
            *v59 = -1;
            v59 += 4;
            ++v58;
            v57 = *(this + 69);
          }

          while (v58 < v57);
          LODWORD(v50) = *(this + 70);
        }

        ++v56;
      }

      while (v56 < v50);
      goto LABEL_109;
    }

LABEL_105:
    if (*(this + 437) && v49 != 5 && *(this + 438) == 1)
    {
      v60 = *(this + 70);
      src.data = a2;
      src.height = v60;
      v61 = *(this + 79);
      src.width = *(this + 69);
      src.rowBytes = v61;
      vImagePremultiplyData_RGBA8888(&src, &src, 0x10u);
    }

LABEL_109:
    if (v4)
    {
      goto LABEL_110;
    }

    return 1;
  }

  if (*(this + 166) <= 1u)
  {
    v11 = 1;
  }

  else
  {
    v11 = *(this + 166);
  }

  *(this + 166) = v11;
  v63 = *(this + 63);
  LODWORD(v12) = v63 * v11;
  v64 = 1;
  v71[0] = 1;
  if (*(this + 484) == 1)
  {
    v13 = *(this + 78) - 1;
    v64 = -1;
  }

  else
  {
    v13 = 0;
  }

  v35 = *(this + 118);
  v36 = *(this + 79);
  v37 = malloc_type_calloc(v63 * v11, 1uLL, 0x100004077774924uLL);
  if (!v37)
  {
    return 1;
  }

  v4 = v37;
  v70 = 0u;
  memset(&src, 0, sizeof(src));
  IIOSubsampler::IIOSubsampler(&src, *(this + 61), *(this + 63), (*(this + 263) << 12) | (*(this + 264) << 16) | ((*(this + 265) != 0) << 8) | *(this + 262), *(this + 128), *(this + 129) >> 3, *(this + 166), 2 * (*(this + 129) != 32), *(this + 77), *(this + 79));
  v68.data = v4;
  v68.height = 1;
  v38 = *(this + 62);
  v39 = *(this + 63);
  v68.width = *(this + 77);
  v68.rowBytes = v39;
  *&v67.data = xmmword_186205EC0;
  v40 = *(this + 79);
  v67.width = v68.width;
  v67.rowBytes = v40;
  if (!v38)
  {
LABEL_70:
    v46 = *(this + 129);
    if (v46 == 24)
    {
      if (*(this + 437))
      {
LABEL_78:
        IIOSubsampler::~IIOSubsampler(&src);
LABEL_80:
        v5 = *(this + 129);
        goto LABEL_81;
      }
    }

    else if (v46 != 32 || !*(this + 437))
    {
      goto LABEL_78;
    }

    *permuteMap = 50331906;
    v47 = *(this + 78);
    dest.data = a2;
    dest.height = v47;
    v48 = *(this + 79);
    dest.width = *(this + 77);
    dest.rowBytes = v48;
    vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0x10u);
    goto LABEL_78;
  }

  v41 = 0;
  v42 = v13 * v36;
  v43 = v13 + v64;
  v44 = v64 * v36;
  while (1)
  {
    v45 = v11 + v41;
    if (v11 + v41 > v38)
    {
      v11 = v38 - v41;
    }

    v12 = v45 <= v38 ? v12 : (v38 - v41) * v63;
    if (IIOImageReadSession::getBytesAtOffset(*(this + 3), v4, v35, v12) != v12)
    {
      break;
    }

    if (*(this + 166) < 2u)
    {
      if (*(this + 129) == 32)
      {
        memcpy(&a2[v42], v4, (4 * *(this + 77)));
        if ((v43 & 0x80000000) != 0)
        {
          goto LABEL_70;
        }

        goto LABEL_66;
      }

      v67.data = &a2[v42];
      vImageConvert_RGB888toBGRA8888(&v68, 0, 0xFFu, &v67, 0, 0x10u);
    }

    else
    {
      v71[0] = 1;
      IIOSubsampler::subsample(&src, v4, v11, &a2[v42], v71);
    }

    if ((v43 & 0x80000000) != 0)
    {
      goto LABEL_70;
    }

LABEL_66:
    if (v43 < *(this + 78))
    {
      v35 += v12;
      v41 += v11;
      v38 = *(this + 62);
      v42 += v44;
      v43 += v64;
      if (v41 < v38)
      {
        continue;
      }
    }

    goto LABEL_70;
  }

  IIOSubsampler::~IIOSubsampler(&src);
LABEL_110:
  free(v4);
  return 1;
}

uint64_t BMPReadPlugin::decodeImageData(BMPReadPlugin *this, unsigned __int8 *a2, size_t a3)
{
  v3 = *(this + 120);
  if (v3)
  {
    if ((v3 - 1) < 2)
    {
      BMPReadPlugin::decodeRLE(this, a2);
    }

    else if (v3 == 3)
    {
      BMPReadPlugin::decodeBitField(this, a2, a3);
    }

    else
    {
      LogError("decodeImageData", 1413, "unknown BMP compression: %d\n", v3);
    }
  }

  else
  {
    BMPReadPlugin::decodeUncompressed(this, a2);
  }

  return 0;
}

uint64_t BMPReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, IOSurfaceRef *a4)
{
  v41 = 0;
  seed = 0;
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v8 = *(this + 55);
    v9 = v8 >> 24;
    v10 = MEMORY[0x1E69E9830];
    if ((v8 >> 24) <= 0x7F)
    {
      v11 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
    }

    else
    {
      v11 = __maskrune(v9, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v11)
    {
      v12 = (v8 >> 24);
    }

    else
    {
      v12 = 46;
    }

    v13 = v8 << 8 >> 24;
    if (v13 <= 0x7F)
    {
      v14 = *(v10 + 4 * v13 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v13, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v14)
    {
      v15 = (v8 << 8 >> 24);
    }

    else
    {
      v15 = 46;
    }

    v16 = v8 >> 8;
    if (v16 <= 0x7F)
    {
      v17 = *(v10 + 4 * v16 + 60) & 0x40000;
    }

    else
    {
      v17 = __maskrune(v16, 0x40000uLL);
      v8 = *(this + 55);
    }

    if (v17)
    {
      v18 = (v8 >> 8);
    }

    else
    {
      v18 = 46;
    }

    if (v8 <= 0x7F)
    {
      if ((*(v10 + 4 * v8 + 60) & 0x40000) != 0)
      {
        goto LABEL_22;
      }
    }

    else if (__maskrune(v8, 0x40000uLL))
    {
LABEL_22:
      v19 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v12, v15, v18, v19, iioTypeStr[a3], "virtual OSStatus BMPReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v19 = 46;
    goto LABEL_25;
  }

LABEL_26:
  IIOReadPlugin::debugDecodeImage(this, a2);
  if (*(this + 446) != 1)
  {
    return 4294967115;
  }

  if (*(this + 166) >= 2u)
  {
    v20 = (*(this + 77) * (*(this + 161) >> 3) + 15) & 0xFFFFFFF0;
    *(this + 71) = v20;
    *(this + 79) = v20;
  }

  v21 = *(this + 3);
  if (v21)
  {
    v22 = IIOImageReadSession::mapData(v21);
  }

  else
  {
    v22 = 0;
  }

  if (a3 == 3)
  {
    BlockArray = IIOReadPlugin::allocateBlockArray(this, *(this + 26));
    LODWORD(v30) = *(this + 77);
    v29 = v30;
    v31 = *(this + 78);
    v27 = v31;
    v26 = *(this + 79) * v31;
    BaseAddress = _ImageIO_Malloc(v26, *(this + 52), &v41, kImageMalloc_BMP_Data[0], 0, 0);
    v28 = 0;
  }

  else
  {
    if (a3 != 1 || !a4 || !*a4)
    {
      BlockArray = 0;
      goto LABEL_54;
    }

    IOSurfaceLock(*a4, 0, &seed);
    BaseAddress = IOSurfaceGetBaseAddress(*a4);
    Height = IOSurfaceGetHeight(*a4);
    BlockArray = 0;
    v26 = IOSurfaceGetBytesPerRow(*a4) * Height;
    v41 = v26;
    v27 = 0.0;
    v28 = 1;
    v29 = 0.0;
  }

  if (!BaseAddress || (bzero(BaseAddress, v26), v32 = (*(*this + 120))(this, BaseAddress, v41), BlockArray = v32, a3 != 3) || v32)
  {
    if (!v28)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v33 = 0;
  v42.origin.x = 0.0;
  v42.origin.y = 0.0;
  v42.size.width = v29;
  v42.size.height = v27;
  **(this + 12) = IIOReadPlugin::createImageBlock(this, BaseAddress, v41, v42, *(this + 79), *(this + 371));
  if (CGRectEqualToRect(*(this + 120), *MEMORY[0x1E695F050]))
  {
    v34 = 0;
  }

  else
  {
    v43.origin.x = 0.0;
    v43.origin.y = 0.0;
    v43.size.width = v29;
    v43.size.height = v27;
    *(&v34 - 1) = CGRectUnion(*(this + 120), v43);
    v33 = v35;
    v29 = v36;
    v27 = v37;
  }

  BlockArray = 0;
  *(this + 15) = v33;
  *(this + 16) = v34;
  *(this + 17) = v29;
  *(this + 18) = v27;
  if (v28)
  {
    BaseAddress = 0;
LABEL_50:
    IOSurfaceUnlock(*a4, 0, &seed);
LABEL_51:
    if (a3 == 3 && BaseAddress)
    {
      _ImageIO_Free(BaseAddress, v41);
    }
  }

LABEL_54:
  if (v22)
  {
    v38 = *(this + 3);
    if (v38)
    {
      IIOImageReadSession::unmapData(v38);
    }
  }

  return BlockArray;
}

uint64_t _cg_TIFFReadDirectory(uint64_t a1)
{
  v224 = -1;
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  if (!v3)
  {
    result = 0;
    *(a1 + 24) = 0;
    return result;
  }

  result = _TIFFCheckDirNumberAndOffset(a1, *(a1 + 880) + 1, *(a1 + 32));
  if (result)
  {
    __src = 0;
    v9 = TIFFFetchDirectory(a1, v3, &__src, v2, v5, v6, v7, v8);
    if (!v9)
    {
      v220 = v3;
      v21 = "Failed to read directory at offset %llu";
      goto LABEL_10;
    }

    v15 = v9;
    v16 = 0;
    v17 = 0;
    ++*(a1 + 880);
    v18 = __src;
    v19 = __src;
    while (1)
    {
      v20 = *v19;
      if (v17 > v20)
      {
        break;
      }

      v17 = v20 + 1;
      ++v16;
      v19 += 16;
      if (v9 <= v16)
      {
        goto LABEL_12;
      }
    }

    TIFFWarningExtR(a1, "TIFFReadDirectoryCheckOrder", "Invalid TIFF directory; tags are not sorted in ascending order", v10, v11, v12, v13, v14, v219);
    v18 = __src;
LABEL_12:
    v22 = 0;
    while (v15 > ++v22)
    {
      v23 = v18 + 16;
      v24 = *v18;
      v25 = v22;
      v26 = v23;
      do
      {
        if (v24 == *v26)
        {
          *(v26 + 24) = 1;
        }

        v26 += 16;
        ++v25;
      }

      while (v15 > v25);
      v18 = v23;
    }

    *(a1 + 16) &= 0xFBEFFFBF;
    (*(a1 + 1072))(a1);
    _cg_TIFFFreeDirectory(a1);
    TIFFDefaultDirectory(a1);
    v27 = malloc_type_malloc(16 * v15, 0x1000040451B5BE8uLL);
    *(a1 + 456) = v27;
    if (!v27)
    {
      v44 = "TIFFReadDirectory";
      v45 = "Failed to allocate memory for counting IFD data size at reading";
      goto LABEL_79;
    }

    v222 = (a1 + 72);
    _cg_TIFFSetField(a1, 284, v28, v29, v30, v31, v32, v33, 1);
    v41 = 0;
    v42 = __src;
    v43 = __src;
    while (*v43 != 277)
    {
      v43 += 16;
      if (v15 <= ++v41)
      {
        goto LABEL_27;
      }
    }

    if (!TIFFFetchNormalTag(a1, v43, 0))
    {
      goto LABEL_80;
    }

    *(v43 + 24) = 1;
    v42 = __src;
LABEL_27:
    v46 = 0;
    while (v42->i16[0] != 259)
    {
      v42 += 4;
      if (v15 <= ++v46)
      {
        if (!_cg_TIFFSetField(a1, 259, v34, v35, v36, v37, v38, v39, 1))
        {
          goto LABEL_80;
        }

        goto LABEL_39;
      }
    }

    LOWORD(v223) = 0;
    v48 = TIFFReadDirEntryShort(a1, v42, &v223, v40);
    if (v48 == 1)
    {
      v48 = TIFFReadDirEntryPersampleShort(a1, v42, &v223);
    }

    if (v48)
    {
      v55 = "Compression";
      v56 = a1;
      goto LABEL_36;
    }

    if (!_cg_TIFFSetField(a1, 259, v49, v50, v51, v52, v53, v54, v223))
    {
LABEL_80:
      result = __src;
      if (!__src)
      {
        return result;
      }

      free(__src);
      return 0;
    }

    v42[3].i8[0] = 1;
LABEL_39:
    v57 = 0;
    v58 = __src;
    while (1)
    {
      if (!*(v58 + 24))
      {
        v59 = *v58;
        TIFFReadDirectoryFindFieldInfo(a1, v59, &v224);
        v60 = v224;
        if (v224 == -1)
        {
          TIFFWarningExtR(a1, "TIFFReadDirectory", "Unknown field with tag %hu (0x%hx) encountered", v29, v30, v31, v32, v33, v59);
          v61 = _TIFFCreateAnonField(a1, *v58, v58[1]);
          if (!v61 || !_TIFFMergeFields(a1, v61, 1, v62, v63, v64, v65, v66))
          {
            TIFFWarningExtR(a1, "TIFFReadDirectory", "Registering anonymous field with tag %hu (0x%hx) failed", v62, v63, v64, v65, v66, *v58);
LABEL_57:
            *(v58 + 24) = 1;
            goto LABEL_58;
          }

          v59 = *v58;
          TIFFReadDirectoryFindFieldInfo(a1, v59, &v224);
          v60 = v224;
          if (v224 == -1)
          {
            _cg_TIFFReadDirectory_cold_1();
          }
        }

        if (!*(v58 + 24))
        {
          v67 = *(*(*(a1 + 1256) + 8 * v60) + 24);
          if (!v67)
          {
            goto LABEL_57;
          }

          if (v59 - 256 <= 0x1C)
          {
            if (((1 << v59) & 0x10400003) != 0)
            {
              goto LABEL_56;
            }

            if (((1 << v59) & 0x820000) != 0)
            {
LABEL_61:
              *&v222[(v67 >> 3) & 0x1FFC] |= 1 << v67;
              goto LABEL_58;
            }
          }

          if (v59 - 322 <= 0x10)
          {
            v68 = 1 << (v59 - 66);
            if ((v68 & 0x10003) != 0)
            {
              goto LABEL_56;
            }

            if ((v68 & 0xC) != 0)
            {
              goto LABEL_61;
            }
          }

          if (v59 - 32997 < 2)
          {
LABEL_56:
            if (!TIFFFetchNormalTag(a1, v58, 0))
            {
              goto LABEL_80;
            }

            goto LABEL_57;
          }

          if (!_TIFFCheckFieldIsValidForCodec(a1, v59))
          {
            goto LABEL_57;
          }
        }
      }

LABEL_58:
      ++v57;
      v58 += 16;
      if (v15 <= v57)
      {
        if (*(a1 + 120) == 6 && *(a1 + 170) == 2)
        {
          if (!_TIFFFillStrilesInternal(a1, 1))
          {
            goto LABEL_80;
          }

          v69 = 0;
          v70 = __src + 8;
          while (*(v70 - 4) != 273)
          {
            ++v69;
            v70 += 4;
            if (v15 <= v69)
            {
              goto LABEL_76;
            }
          }

          if (*v70 == 1)
          {
            v71 = 0;
            v72 = __src + 8;
            while (*(v72 - 4) != 279)
            {
              ++v71;
              v72 += 4;
              if (v15 <= v71)
              {
                goto LABEL_76;
              }
            }

            if (*v72 == 1)
            {
              *(a1 + 170) = 1;
              TIFFWarningExtR(a1, "TIFFReadDirectory", "Planarconfig tag value assumed incorrect, assuming data is contig instead of chunky", v29, v30, v31, v32, v33, v220);
            }
          }
        }

LABEL_76:
        if ((*v222 & 2) == 0)
        {
          v73 = "ImageLength";
          goto LABEL_78;
        }

        v74 = 0;
        v75 = 0;
        v76 = __src;
        v77 = "unknown tagname";
        v78 = "TIFFReadDirectory";
        v79 = "Invalid data type for tag %s";
        while (2)
        {
          if (v76[3].i8[0])
          {
            goto LABEL_86;
          }

          v80 = v76->u16[0];
          if (v80 > 0x13F)
          {
            if (v76->u16[0] > 0x152u)
            {
              if (v80 - 340 < 2)
              {
                v223 = 0;
                if (*&v76[1] != *(a1 + 130))
                {
                  if (EvaluateIFDdatasizeReading(a1, v76))
                  {
                    v89 = 1;
LABEL_240:
                    LODWORD(v96) = v76->u16[0];
LABEL_241:
                    v203 = TIFFFieldWithTag(a1, v96);
                    if (v203)
                    {
                      v55 = *(v203 + 4);
                    }

                    else
                    {
                      v55 = "unknown tagname";
                    }

                    v56 = a1;
                    v48 = v89;
LABEL_36:
                    TIFFReadDirEntryOutputErr(v56, v48, "TIFFReadDirectory", v55, 0, v52, v53, v54);
                  }

                  goto LABEL_80;
                }

                v89 = TIFFReadDirEntryDoubleArray(a1, v76, &v223);
                if ((EvaluateIFDdatasizeReading(a1, v76) & 1) == 0)
                {
                  goto LABEL_80;
                }

                if (v89)
                {
                  goto LABEL_240;
                }

                v221 = v74;
                v119 = v79;
                v120 = v78;
                v121 = v77;
                v122 = *(a1 + 16);
                *(a1 + 16) = v122 | 0x400000;
                v123 = v223;
                v124 = _cg_TIFFSetField(a1, v76->u16[0], v113, v114, v115, v116, v117, v118, v223);
                *(a1 + 16) = v122;
                v77 = v121;
                v78 = v120;
                v79 = v119;
                v74 = v221;
                free(v123);
                if (!v124)
                {
                  goto LABEL_80;
                }

                goto LABEL_86;
              }

              if (v80 == 32996 || v80 == 339)
              {
                goto LABEL_109;
              }

              goto LABEL_141;
            }

            if (v80 == 320)
            {
              goto LABEL_102;
            }

            if (v80 == 324)
            {
              goto LABEL_116;
            }

            if (v80 != 325)
            {
              goto LABEL_141;
            }
          }

          else
          {
            if (v76->u16[0] <= 0x116u)
            {
              if (v80 != 255)
              {
                if (v80 != 258)
                {
                  if (v80 != 273)
                  {
                    goto LABEL_141;
                  }

LABEL_116:
                  v97 = v76->u16[1];
                  if ((v97 > 0x10 || ((1 << v97) & 0x10018) == 0) && (*(a1 + 12) != 2 || v76->i16[1] || *&v76[1] || *&v76[2]))
                  {
                    v98 = TIFFFieldWithTag(a1, v80);
                    if (v98)
                    {
                      v104 = *(v98 + 4);
                    }

                    else
                    {
                      LOBYTE(v104) = v77;
                    }

                    TIFFWarningExtR(a1, v78, v79, v99, v100, v101, v102, v103, v104);
                  }

                  v152 = (a1 + 256);
LABEL_164:
                  _TIFFmemcpy(v152, v76, 0x20uLL);
                  if ((EvaluateIFDdatasizeReading(a1, v76) & 1) == 0)
                  {
                    goto LABEL_80;
                  }

                  goto LABEL_86;
                }

LABEL_109:
                LOWORD(v223) = 0;
                v89 = TIFFReadDirEntryShort(a1, v76, &v223, v47);
                if (!EvaluateIFDdatasizeReading(a1, v76))
                {
                  goto LABEL_80;
                }

                if (v89 == 1)
                {
                  v89 = TIFFReadDirEntryPersampleShort(a1, v76, &v223);
                }

                v96 = v76->u16[0];
                if (v89)
                {
                  goto LABEL_241;
                }

                if (!_cg_TIFFSetField(a1, v96, v90, v91, v92, v93, v94, v95, v223))
                {
                  goto LABEL_80;
                }

                if (v76->i16[0] == 258)
                {
                  v74 = 1;
                }

                goto LABEL_86;
              }

              LOWORD(v223) = 0;
              if (TIFFReadDirEntryShort(a1, v76, &v223, v47))
              {
                goto LABEL_86;
              }

              if (v223 == 2)
              {
                v131 = 1;
              }

              else
              {
                if (v223 != 3)
                {
                  goto LABEL_86;
                }

                v131 = 2;
              }

              _cg_TIFFSetField(a1, 254, v125, v126, v127, v128, v129, v130, v131);
LABEL_86:
              ++v75;
              v76 += 4;
              if (v15 <= v75)
              {
                CalcFinalIFDdatasizeReading(a1, v15);
                if (*(a1 + 120) == 6)
                {
                  if (*(a1 + 73))
                  {
                    if (*(a1 + 122) == 2)
                    {
                      *(a1 + 122) = 6;
                      TIFFWarningExtR(a1, "TIFFReadDirectory", "Photometric tag value assumed incorrect, assuming data is YCbCr instead of RGB", v156, v157, v158, v159, v160, v220);
                    }
                  }

                  else
                  {
                    TIFFWarningExtR(a1, "TIFFReadDirectory", "Photometric tag is missing, assuming data is YCbCr", v156, v157, v158, v159, v160, v220);
                    if (!_cg_TIFFSetField(a1, 262, v161, v162, v163, v164, v165, v166, 6))
                    {
                      goto LABEL_80;
                    }
                  }

                  v167 = *v222;
                  if ((*v222 & 0x40) == 0)
                  {
                    TIFFWarningExtR(a1, "TIFFReadDirectory", "BitsPerSample tag is missing, assuming 8 bits per sample", v156, v157, v158, v159, v160, v220);
                    if (!_cg_TIFFSetField(a1, 258, v168, v169, v170, v171, v172, v173, 8))
                    {
                      goto LABEL_80;
                    }

                    v167 = *v222;
                  }

                  if ((v167 & 0x10000) == 0)
                  {
                    v174 = *(a1 + 122);
                    if (v174 == 2)
                    {
                      TIFFWarningExtR(a1, "TIFFReadDirectory", "SamplesPerPixel tag is missing, assuming correct SamplesPerPixel value is 3", v156, v157, v158, v159, v160, v220);
                      if (!_cg_TIFFSetField(a1, 277, v175, v176, v177, v178, v179, v180, 3))
                      {
                        goto LABEL_80;
                      }

                      v174 = *(a1 + 122);
                    }

                    if (v174 >= 2)
                    {
                      if (v174 == 6)
                      {
                        TIFFWarningExtR(a1, "TIFFReadDirectory", "SamplesPerPixel tag is missing, applying correct SamplesPerPixel value of 3", v156, v157, v158, v159, v160, v220);
                        v181 = 3;
                        goto LABEL_186;
                      }
                    }

                    else
                    {
                      v181 = 1;
LABEL_186:
                      if (!_cg_TIFFSetField(a1, 277, v155, v156, v157, v158, v159, v160, v181))
                      {
                        goto LABEL_80;
                      }
                    }
                  }
                }

                if ((*v222 & 4) != 0)
                {
                  v183 = _cg_TIFFNumberOfTiles(a1, v154, v155, v156, v157, v158, v159, v160);
                  v185 = *(a1 + 16) | 0x400;
                }

                else
                {
                  v183 = _cg_TIFFNumberOfStrips(a1, v154, v155, v156, v157, v158, v159, v160);
                  v184 = *(a1 + 132);
                  *(a1 + 100) = *(a1 + 88);
                  *(a1 + 104) = v184;
                  *(a1 + 108) = *(a1 + 96);
                  v185 = *(a1 + 16) & 0xFFFFFBFF;
                }

                *(a1 + 228) = v183;
                *(a1 + 16) = v185;
                if (!v183)
                {
                  if ((v185 & 0x400) != 0)
                  {
                    v200 = "tiles";
                  }

                  else
                  {
                    v200 = "strips";
                  }

                  TIFFErrorExtR(a1, "TIFFReadDirectory", "Cannot handle zero number of %s", v29, v30, v31, v32, v33, v200);
                  goto LABEL_80;
                }

                *(a1 + 224) = v183;
                if (*(a1 + 170) == 2)
                {
                  *(a1 + 224) = v183 / *(a1 + 130);
                }

                if ((*v222 & 0x2000000) == 0)
                {
                  if (v183 == 1 && *(a1 + 120) == 6 && (v185 & 0x400) == 0)
                  {
                    *v222 |= 0x2000000u;
                    goto LABEL_198;
                  }

                  if ((v185 & 0x400) != 0)
                  {
                    v73 = "TileOffsets";
                  }

                  else
                  {
                    v73 = "StripOffsets";
                  }

LABEL_78:
                  v44 = "MissingRequired";
                  v219 = v73;
                  v45 = "TIFF directory is missing required %s field";
LABEL_79:
                  TIFFErrorExtR(a1, v44, v45, v29, v30, v31, v32, v33, v219);
                  goto LABEL_80;
                }

LABEL_198:
                if (*(a1 + 12) != 2 || !*(a1 + 256) || *(a1 + 264) || *(a1 + 258) || *(a1 + 272) || !*(a1 + 288) || *(a1 + 296) || *(a1 + 290) || *(a1 + 304))
                {
                  if ((v185 & 0x1000000) == 0 && (*(a1 + 256) && !TIFFFetchStripThing(a1, (a1 + 256), v183, (a1 + 232)) || *(a1 + 288) && !TIFFFetchStripThing(a1, (a1 + 288), *(a1 + 228), (a1 + 240))))
                  {
                    goto LABEL_80;
                  }
                }

                else
                {
                  TIFFSetupStrips(a1, v182, v183, v29, v30, v31, v32, v33);
                }

                v186 = *(a1 + 122);
                v187 = _TIFFGetMaxColorChannels(v186);
                if (v187)
                {
                  v188 = v187;
                  if (*(a1 + 130) - *(a1 + 212) > v187)
                  {
                    TIFFWarningExtR(a1, "TIFFReadDirectory", "Sum of Photometric type-related color channels and ExtraSamples doesn't match SamplesPerPixel. Defining non-color channels as ExtraSamples.", v29, v30, v31, v32, v33, v220);
                    v189 = *(a1 + 212);
                    v190 = *(a1 + 130) - v188;
                    *(a1 + 212) = v190;
                    v191 = malloc_type_calloc(v190, 2uLL, 0x1000040BDFB0063uLL);
                    if (!v191)
                    {
                      TIFFErrorExtR(a1, "TIFFReadDirectory", "Failed to allocate memory for temporary new sampleinfo array (%hu 16 bit elements)", v192, v193, v194, v195, v196, *(a1 + 212));
                      goto LABEL_80;
                    }

                    v197 = v191;
                    if (v189)
                    {
                      memcpy(v191, *(a1 + 216), 2 * v189);
                    }

                    _TIFFsetShortArrayExt(a1, (a1 + 216), v197, *(a1 + 212), v193, v194, v195, v196);
                    free(v197);
                    v186 = *(a1 + 122);
                  }
                }

                if (v186 == 3 && (*(a1 + 75) & 4) == 0)
                {
                  if (*(a1 + 116) < 8u)
                  {
                    v73 = "Colormap";
                    goto LABEL_78;
                  }

                  if (*(a1 + 130) == 3)
                  {
                    v198 = 2;
                  }

                  else
                  {
                    v198 = 1;
                  }

                  *(a1 + 122) = v198;
                }

                if (*(a1 + 120) != 6)
                {
                  if (*(a1 + 75))
                  {
                    v201 = *(a1 + 16);
                    if (*(a1 + 228) == 1 && (v201 & 0x400) == 0)
                    {
                      if (ByteCountLooksBad(a1))
                      {
                        v202 = "Bogus StripByteCounts field, ignoring and calculating from imagelength";
                        goto LABEL_249;
                      }

                      v201 = *(a1 + 16);
                    }

                    if ((v201 & 0x1000000) == 0 && *(a1 + 170) == 1 && *(a1 + 228) >= 3u && *(a1 + 120) == 1)
                    {
                      v204 = _TIFFGetStrileOffsetOrByteCountValue(a1, 0);
                      if (v204 != _TIFFGetStrileOffsetOrByteCountValue(a1, 1) && _TIFFGetStrileOffsetOrByteCountValue(a1, 0) && _TIFFGetStrileOffsetOrByteCountValue(a1, 1))
                      {
                        v202 = "Wrong StripByteCounts field, ignoring and calculating from imagelength";
                        goto LABEL_249;
                      }
                    }
                  }

                  else
                  {
                    v199 = *(a1 + 170);
                    if (v199 == 2)
                    {
                      if (*(a1 + 228) != *(a1 + 130))
                      {
LABEL_226:
                        v73 = "StripByteCounts";
                        goto LABEL_78;
                      }
                    }

                    else if (v199 == 1 && *(a1 + 228) > 1u)
                    {
                      goto LABEL_226;
                    }

                    v202 = "TIFF directory is missing required StripByteCounts field, calculating from imagelength";
LABEL_249:
                    TIFFWarningExtR(a1, "TIFFReadDirectory", v202, v29, v30, v31, v32, v33, v220);
                    if ((EstimateStripByteCounts(a1, __src, v15) & 0x80000000) != 0)
                    {
                      goto LABEL_80;
                    }
                  }
                }

                if (__src)
                {
                  free(__src);
                  __src = 0;
                }

                if ((*(a1 + 74) & 8) == 0)
                {
                  v205 = *(a1 + 116);
                  if (v205 <= 0xF)
                  {
                    v206 = ~(-1 << v205);
                  }

                  else
                  {
                    v206 = -1;
                  }

                  *(a1 + 138) = v206;
                }

                (*(a1 + 952))(a1);
                if (*(a1 + 170) == 1)
                {
                  v214 = *(a1 + 120);
                  if (*(a1 + 228) != 1)
                  {
                    goto LABEL_273;
                  }

                  if (v214 != 1 || (*(a1 + 16) & 0x8400) != 0x8000 || (ChopUpSingleUncompressedStrip(a1), *(a1 + 170) == 1))
                  {
                    v214 = *(a1 + 120);
LABEL_273:
                    if (v214 == 1 && (*(a1 + 16) & 0x8400) == 0x8000 && _cg_TIFFStripSize64(a1, v207, v208, v209, v210, v211, v212, v213) >> 31)
                    {
                      TryChopUpUncompressedBigTiff(a1, v207, v208, v209, v210, v211, v212, v213);
                    }
                  }
                }

                *(a1 + 16) &= 0xFFDFFFF7;
                *(a1 + 876) = -1;
                *(a1 + 884) = -1;
                *(a1 + 928) = -1;
                *(a1 + 936) = -1;
                v215 = _cg_TIFFScanlineSize(a1, v207, v208, v209, v210, v211, v212, v213);
                *(a1 + 1104) = v215;
                if (v215)
                {
                  if ((*(a1 + 17) & 4) == 0)
                  {
                    if (!_cg_TIFFStripSize(a1, v216, v217, v10, v11, v12, v13, v14))
                    {
                      v21 = "Cannot handle zero strip size";
                      goto LABEL_10;
                    }

                    return 1;
                  }

                  v218 = _cg_TIFFTileSize(a1, v216, v217, v10, v11, v12, v13, v14);
                  *(a1 + 936) = v218;
                  if (v218)
                  {
                    return 1;
                  }

                  v21 = "Cannot handle zero tile size";
                }

                else
                {
                  v21 = "Cannot handle zero scanline size";
                }

LABEL_10:
                TIFFErrorExtR(a1, "TIFFReadDirectory", v21, v10, v11, v12, v13, v14, v220);
                return 0;
              }

              continue;
            }

            if (v80 - 280 < 2)
            {
              goto LABEL_109;
            }

            if (v80 != 279)
            {
              if (v80 == 301)
              {
LABEL_102:
                v223 = 0;
                if (v74)
                {
                  v81 = *(a1 + 116);
                  if (v81 < 0x19)
                  {
                    v139 = v76[1];
                    if (v80 == 301 && *&v139 == 1 << v81 || *&v139 == 3 << v81)
                    {
                      v140 = TIFFReadDirEntryShortArray(a1, v76, &v223);
                      if ((EvaluateIFDdatasizeReading(a1, v76) & 1) == 0)
                      {
                        goto LABEL_80;
                      }

                      if (!v140)
                      {
                        v153 = v223;
                        _cg_TIFFSetField(a1, v76->u16[0], v141, v142, v143, v144, v145, v146, v223);
                        free(v153);
                        goto LABEL_86;
                      }
                    }

                    else
                    {
                      if ((EvaluateIFDdatasizeReading(a1, v76) & 1) == 0)
                      {
                        goto LABEL_80;
                      }

                      v140 = 1;
                    }

                    v147 = TIFFFieldWithTag(a1, v76->u16[0]);
                    if (v147)
                    {
                      v151 = *(v147 + 4);
                    }

                    else
                    {
                      v151 = v77;
                    }

                    TIFFReadDirEntryOutputErr(a1, v140, v78, v151, 1, v148, v149, v150);
                  }

                  else
                  {
                    v82 = TIFFFieldWithTag(a1, v80);
                    if (v82)
                    {
                      v88 = *(v82 + 4);
                    }

                    else
                    {
                      LOBYTE(v88) = v77;
                    }

                    TIFFWarningExtR(a1, v78, "Ignoring %s because BitsPerSample=%hu>24", v83, v84, v85, v86, v87, v88);
                  }
                }

                else
                {
                  v132 = TIFFFieldWithTag(a1, v80);
                  if (v132)
                  {
                    v138 = *(v132 + 4);
                  }

                  else
                  {
                    LOBYTE(v138) = v77;
                  }

                  TIFFWarningExtR(a1, v78, "Ignoring %s since BitsPerSample tag not found", v133, v134, v135, v136, v137, v138);
                }

                goto LABEL_86;
              }

LABEL_141:
              TIFFFetchNormalTag(a1, v76, 1);
              goto LABEL_86;
            }
          }

          break;
        }

        v105 = v76->u16[1];
        if ((v105 > 0x10 || ((1 << v105) & 0x10018) == 0) && (*(a1 + 12) != 2 || v76->i16[1] || *&v76[1] || *&v76[2]))
        {
          v106 = TIFFFieldWithTag(a1, v80);
          if (v106)
          {
            v112 = *(v106 + 4);
          }

          else
          {
            LOBYTE(v112) = v77;
          }

          TIFFWarningExtR(a1, v78, v79, v107, v108, v109, v110, v111, v112);
        }

        v152 = (a1 + 288);
        goto LABEL_164;
      }
    }
  }

  return result;
}