void IIOLoadCoreMediaSymbols(void)
{
  if (IIOLoadCoreMediaSymbols(void)::once != -1)
  {
    IIOLoadCoreMediaSymbols();
  }

  if (!gFunc_CMBufferQueueCreate)
  {

    LogFault("IIOLoadCoreMediaSymbols", 891, "*** Failed to load 'CoreMedia' symbols ***\n");
  }
}

const char *___ZL23IIOLoadCoreMediaSymbolsv_block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/CoreMedia.framework/CoreMedia", 261);
  IIOLoadCoreMediaSymbols(void)::lib = v0;
  if (v0)
  {
    gFunc_CMBufferQueueCreate = dlsym(v0, "CMBufferQueueCreate");
    if (!gFunc_CMBufferQueueCreate)
    {
      v1 = dlerror();
      printf("❌  failed to load 'CMBufferQueueCreate' [%s]\n", v1);
    }

    gFunc_CMBufferQueueDequeueAndRetain = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueDequeueAndRetain");
    if (!gFunc_CMBufferQueueDequeueAndRetain)
    {
      v2 = dlerror();
      printf("❌  failed to load 'CMBufferQueueDequeueAndRetain' [%s]\n", v2);
    }

    gFunc_CMBufferQueueEnqueue = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueEnqueue");
    if (!gFunc_CMBufferQueueEnqueue)
    {
      v3 = dlerror();
      printf("❌  failed to load 'CMBufferQueueEnqueue' [%s]\n", v3);
    }

    gFunc_CMBufferQueueGetBufferCount = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueGetBufferCount");
    if (!gFunc_CMBufferQueueGetBufferCount)
    {
      v4 = dlerror();
      printf("❌  failed to load 'CMBufferQueueGetBufferCount' [%s]\n", v4);
    }

    gFunc_CMBufferQueueGetHead = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueGetHead");
    if (!gFunc_CMBufferQueueGetHead)
    {
      v5 = dlerror();
      printf("❌  failed to load 'CMBufferQueueGetHead' [%s]\n", v5);
    }

    gFunc_CMBufferQueueInstallTriggerWithIntegerThreshold = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueInstallTriggerWithIntegerThreshold");
    if (!gFunc_CMBufferQueueInstallTriggerWithIntegerThreshold)
    {
      v6 = dlerror();
      printf("❌  failed to load 'CMBufferQueueInstallTriggerWithIntegerThreshold' [%s]\n", v6);
    }

    gFunc_CMBufferQueueIsAtEndOfData = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueIsAtEndOfData");
    if (!gFunc_CMBufferQueueIsAtEndOfData)
    {
      v7 = dlerror();
      printf("❌  failed to load 'CMBufferQueueIsAtEndOfData' [%s]\n", v7);
    }

    gFunc_CMBufferQueueIsEmpty = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueIsEmpty");
    if (!gFunc_CMBufferQueueIsEmpty)
    {
      v8 = dlerror();
      printf("❌  failed to load 'CMBufferQueueIsEmpty' [%s]\n", v8);
    }

    gFunc_CMBufferQueueMarkEndOfData = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueMarkEndOfData");
    if (!gFunc_CMBufferQueueMarkEndOfData)
    {
      v9 = dlerror();
      printf("❌  failed to load 'CMBufferQueueMarkEndOfData' [%s]\n", v9);
    }

    gFunc_CMBufferQueueReset = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMBufferQueueReset");
    if (!gFunc_CMBufferQueueReset)
    {
      v10 = dlerror();
      printf("❌  failed to load 'CMBufferQueueReset' [%s]\n", v10);
    }

    gFunc_CMClockGetHostTimeClock = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMClockGetHostTimeClock");
    if (!gFunc_CMClockGetHostTimeClock)
    {
      v11 = dlerror();
      printf("❌  failed to load 'CMClockGetHostTimeClock' [%s]\n", v11);
    }

    gFunc_CMTimeAdd = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeAdd");
    if (!gFunc_CMTimeAdd)
    {
      v12 = dlerror();
      printf("❌  failed to load 'CMTimeAdd' [%s]\n", v12);
    }

    gFunc_CMTimeMake = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeMake");
    if (!gFunc_CMTimeMake)
    {
      v13 = dlerror();
      printf("❌  failed to load 'CMTimeMake' [%s]\n", v13);
    }

    gFunc_CMTimeMakeWithSeconds = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeMakeWithSeconds");
    if (!gFunc_CMTimeMakeWithSeconds)
    {
      v14 = dlerror();
      printf("❌  failed to load 'CMTimeMakeWithSeconds' [%s]\n", v14);
    }

    gFunc_CMTimeMakeFromDictionary = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeMakeFromDictionary");
    if (!gFunc_CMTimeMakeFromDictionary)
    {
      v15 = dlerror();
      printf("❌  failed to load 'CMTimeMakeFromDictionary' [%s]\n", v15);
    }

    gFunc_CMTimeCopyAsDictionary = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeCopyAsDictionary");
    if (!gFunc_CMTimeCopyAsDictionary)
    {
      v16 = dlerror();
      printf("❌  failed to load 'CMTimeCopyAsDictionary' [%s]\n", v16);
    }

    gFunc_CMTimeGetSeconds = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimeGetSeconds");
    if (!gFunc_CMTimeGetSeconds)
    {
      v17 = dlerror();
      printf("❌  failed to load 'CMTimeGetSeconds' [%s]\n", v17);
    }

    gFunc_CMTimebaseAddTimerDispatchSource = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseAddTimerDispatchSource");
    if (!gFunc_CMTimebaseAddTimerDispatchSource)
    {
      v18 = dlerror();
      printf("❌  failed to load 'CMTimebaseAddTimerDispatchSource' [%s]\n", v18);
    }

    gFunc_CMTimebaseCreateWithSourceClock = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseCreateWithSourceClock");
    if (!gFunc_CMTimebaseCreateWithSourceClock)
    {
      v19 = dlerror();
      printf("❌  failed to load 'CMTimebaseCreateWithSourceClock' [%s]\n", v19);
    }

    gFunc_CMTimebaseGetTime = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseGetTime");
    if (!gFunc_CMTimebaseGetTime)
    {
      v20 = dlerror();
      printf("❌  failed to load 'CMTimebaseGetTime' [%s]\n", v20);
    }

    gFunc_CMTimebaseSetRate = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseSetRate");
    if (!gFunc_CMTimebaseSetRate)
    {
      v21 = dlerror();
      printf("❌  failed to load 'CMTimebaseSetRate' [%s]\n", v21);
    }

    result = dlsym(IIOLoadCoreMediaSymbols(void)::lib, "CMTimebaseSetTimerDispatchSourceNextFireTime");
    gFunc_CMTimebaseSetTimerDispatchSourceNextFireTime = result;
    if (!result)
    {
      v23 = dlerror();
      return printf("❌  failed to load 'CMTimebaseSetTimerDispatchSourceNextFireTime' [%s]\n", v23);
    }
  }

  else
  {
    v24 = dlerror();
    return LogError("IIOLoadCoreMediaSymbols_block_invoke", 886, "❌  Failed to load %s  [%s]\n", "/System/Library/Frameworks/CoreMedia.framework/CoreMedia", v24);
  }

  return result;
}

uint64_t AppleJPEGReadPlugin::decodeImageImp(IIOReadPlugin *this, IIODecodeParameter *a2, int a3, void *a4, uint64_t a5, uint64_t *a6)
{
  if ((gIIODebugFlags & 0x20000) != 0)
  {
    v11 = *(this + 55);
    v12 = v11 >> 24;
    v13 = MEMORY[0x1E69E9830];
    if ((v11 >> 24) <= 0x7F)
    {
      v14 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
    }

    else
    {
      v14 = __maskrune(v12, 0x40000uLL);
      v11 = *(this + 55);
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
      v11 = *(this + 55);
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
      v11 = *(this + 55);
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
      v22 = *(this + 220);
LABEL_25:
      ImageIOLog("♦️  '%c%c%c%c' [%s] %s\n", v15, v18, v21, v22, iioTypeStr[a3], "virtual OSStatus AppleJPEGReadPlugin::decodeImageImp(IIODecodeParameter *, IIOImageType, IOSurfaceRef *, CVPixelBufferRef *, CGImageBlockSetRef *)");
      goto LABEL_26;
    }

    v22 = 46;
    goto LABEL_25;
  }

LABEL_26:
  v23 = IIOReadPlugin::debugDecodeImage(this, a2);
  if (a3 == 3)
  {
    v26 = *(a2 + 1);
    v27 = *(a2 + 2);
    v28 = *(a2 + 3);
    v29 = *(a2 + 4);
    v30 = *(a2 + 5);
    v31 = *(a2 + 6);
    v32 = *(a2 + 7);
    v33 = *(a2 + 8);
    XmpData = _APP1XMP::getXmpData(a2);
    v35 = (*(*this + 208))(this, v26, v27, XmpData, v28, v29, v30, v31, v32, v33);
    v25 = 4294967246;
    if (a6)
    {
      *a6 = v35;
      if (v35)
      {
        return 0;
      }

      else
      {
        return 4294967246;
      }
    }

    return v25;
  }

  if (a3 != 1)
  {
    _cg_jpeg_mem_term("decodeImageImp", 2857, "*** ERROR: imageType '%d' not handled\n", a3);
    return 4294967246;
  }

  if (!a4)
  {
    return 4294967246;
  }

  if (*a4)
  {
    AppleJPEGReadPlugin::decodeIntoIOSurface(v23, a2, v24);
    v25 = 4294967246;
    _cg_jpeg_mem_term("decodeImageImp", 2838, "*** decodeIntoIOSurface - err = %d\n", -50);
    return v25;
  }

  v37 = *(a2 + 2);
  v38 = _APP1XMP::getXmpData(a2);
  v39 = *(*this + 224);

  return v39(this, v37, v38, a4, 0);
}

uint64_t IIOReadPlugin::setupImageProviderCallbackV2(uint64_t a1, CFDictionaryRef *a2)
{
  v3 = IIOReadPlugin::prepareGeometry(a1, a2);
  if (!v3)
  {
    IIOImagePlus::setImageBlockProc(*(a1 + 16));
  }

  return v3;
}

void IIO_LoadHEIFSymbols()
{
  if (gLoadCMPhotoSymbolsInitOnce != -1)
  {
    IIO_LoadHEIFSymbols_cold_1();
  }

  if (gLoadCoreVideoSymbolsInitOnce != -1)
  {
    IIO_LoadHEIFSymbols_cold_2();
  }

  if (gLoadCoreMediaSymbolsInitOnce != -1)
  {
    IIO_LoadHEIFSymbols_cold_3();
  }

  if (gLoadVideoToolboxSymbolsInitOnce != -1)
  {
    IIO_LoadHEIFSymbols_cold_4();
  }
}

void CGImageMetadataMerge(uint64_t a1, uint64_t a2, IIODictionary *a3)
{
  if (a1)
  {
    v6 = CFGetTypeID(a1);
    TypeID = CGImageMetadataGetTypeID();
    if (a2)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(a2);
        if (v8 == CGImageMetadataGetTypeID())
        {
          Count = CFDictionaryGetCount(*(a2 + 24));
          CFDictionaryGetCount(*(a1 + 24));
          if (Count < 1)
          {
            v12 = 0;
            v11 = 0;
LABEL_84:
            v47 = *(a2 + 32);
            if (v47 && CFDictionaryGetCount(v47))
            {
              if (*(a1 + 32))
              {
                if ((IIODictionaryIsMutable() & 1) == 0)
                {
                  _cg_jpeg_mem_term("CGImageMetadataMerge", 880, "*** ERROR: metadata->_NStoPrefix is immutable???\n");
                  v48 = *(a1 + 32);
                  *(a1 + 32) = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v48);
                  CFRelease(v48);
                }
              }

              else
              {
                *(a1 + 32) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              }

              v62 = 0;
              v63 = 0;
              v64 = 0;
              v49 = IIODictionary::IIODictionary(&v62, *(a1 + 32));
              IIODictionary::appendDictionary(v49, *(a2 + 32));
              IIODictionary::~IIODictionary(&v62);
            }

            v50 = *(a2 + 40);
            if (v50 && CFDictionaryGetCount(v50))
            {
              Mutable = *(a1 + 40);
              if (!Mutable)
              {
                Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(a1 + 40) = Mutable;
              }

              v62 = 0;
              v63 = 0;
              v64 = 0;
              v52 = IIODictionary::IIODictionary(&v62, Mutable);
              IIODictionary::appendDictionary(v52, *(a2 + 40));
              IIODictionary::~IIODictionary(&v62);
            }

            if (*(a2 + 48))
            {
              v53 = *(a1 + 48);
              if (!v53)
              {
                v53 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(a1 + 48) = v53;
              }

              v62 = 0;
              v63 = 0;
              v64 = 0;
              v54 = IIODictionary::IIODictionary(&v62, v53);
              IIODictionary::appendDictionary(v54, *(a2 + 48));
              IIODictionary::~IIODictionary(&v62);
            }

            if (!v11)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v10 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
            if (!v10)
            {
              return;
            }

            v11 = v10;
            v12 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
            if (v12)
            {
              CFDictionaryGetKeysAndValues(*(a2 + 24), v11, v12);
              v13 = *(a2 + 56);
              if (v13)
              {
                v14 = *(a1 + 56);
                if (v14)
                {
                  CFRelease(v14);
                  v13 = *(a2 + 56);
                }

                *(a1 + 56) = CFStringCreateCopy(*MEMORY[0x1E695E480], v13);
              }

              v15 = *(a2 + 64);
              if (v15)
              {
                v16 = *(a1 + 64);
                if (v16)
                {
                  CFRelease(v16);
                  v15 = *(a2 + 64);
                }

                *(a1 + 64) = CFStringCreateCopy(*MEMORY[0x1E695E480], v15);
              }

              v59 = CGImageIIMDigestsMatchOrMissing(a1);
              v56 = a2;
              if (a3)
              {
                v17 = IIODictionary::containsKey(a3, @"kCGImageMetadataMergeOverwrite");
                BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageSourceShouldPreferIPTCToEXIF");
                v19 = v17 ^ 1;
              }

              else
              {
                BoolForKey = 0;
                v19 = 1;
              }

              v58 = v19;
              v20 = 0;
              v57 = *MEMORY[0x1E695E738];
              v55 = !v59 || BoolForKey;
              while (1)
              {
                v21 = v12[v20];
                if (!v21)
                {
                  goto LABEL_79;
                }

                v22 = CFGetTypeID(v12[v20]);
                if (v22 != CGImageMetadataTagGetTypeID())
                {
                  goto LABEL_79;
                }

                Source = CGImageSourceGetSource(v21);
                value = 0;
                ValueIfPresent = CFDictionaryGetValueIfPresent(*(a1 + 24), v11[v20], &value);
                v25 = CGImageSourceGetSource(value);
                v26 = CGImageMetadataTagGetSource(v21);
                v27 = v26;
                if (!ValueIfPresent)
                {
                  v31 = v59;
                  if (v26 != 8)
                  {
                    v31 = 1;
                  }

                  if ((v31 & 1) == 0)
                  {
                    v32 = CGImageMetadataCreateMutable();
                    if (v32)
                    {
                      v33 = v32;
                      CGImageMetadataAddTag(v32, v21);
                      v34 = CGImagePropertiesCreateFromMetadata(v33);
                      if (v34)
                      {
                        v35 = v34;
                        ObjectForKey = IIODictionary::getObjectForKey(v34, @"{IPTC}");
                        if (ObjectForKey)
                        {
                          v62 = 0;
                          v63 = 0;
                          v64 = 0;
                          v37 = IIODictionary::IIODictionary(&v62, ObjectForKey);
                          v38 = SizeOfIPTCData(v37) != 0;
                          IIODictionary::~IIODictionary(&v62);
                        }

                        else
                        {
                          v38 = 0;
                        }

                        (*(*v35 + 8))(v35);
                        CFRelease(v33);
                        if (v38)
                        {
                          goto LABEL_79;
                        }
                      }

                      else
                      {
                        CFRelease(v33);
                      }
                    }
                  }

                  goto LABEL_78;
                }

                v28 = CGImageMetadataTagGetSource(value);
                v62 = @"http://ns.adobe.com/photoshop/1.0/";
                v63 = @"DateCreated";
                v64 = 0;
                v60[2] = 0;
                v61[0] = @"http://ns.adobe.com/xap/1.0/";
                v61[1] = @"CreateDate";
                v61[2] = 0;
                v60[0] = @"http://ns.adobe.com/xap/1.0/";
                v60[1] = @"ModifyDate";
                if (CGImageMetadataTagKeyEqual(v11[v20], &v62) || CGImageMetadataTagKeyEqual(v11[v20], v61) || CGImageMetadataTagKeyEqual(v11[v20], v60))
                {
                  break;
                }

LABEL_52:
                if ((v58 & 1) == 0)
                {
                  if (CGImageMetadataTagGetValue(v21) == v57)
                  {
                    CGImageMetadataRemoveTag(a1, v21);
                  }

                  else
                  {
                    CFDictionarySetValue(*(a1 + 24), v11[v20], v21);
                    CGImageMetadataTagGetSource(v21);
                  }

                  goto LABEL_79;
                }

                v44 = CGImageMetadataTagGetSource(v21);
                v45 = CGImageMetadataTagGetSource(value);
                if ((v44 & 2) != 0)
                {
                  if (v45 == 4)
                  {
                    if (v55)
                    {
                      goto LABEL_79;
                    }
                  }

                  else if (v45 != 8 && (~v45 & 0x22) != 0)
                  {
                    goto LABEL_79;
                  }
                }

                else if (v44 == 16)
                {
                  if (v45 != 4 && v45 != 8 && (v45 & 2) == 0)
                  {
                    goto LABEL_79;
                  }
                }

                else
                {
                  if (v44 == 8)
                  {
                    v46 = v45 == 4 && v59;
                  }

                  else
                  {
                    if (v44 != 4 || v45 == 4)
                    {
                      goto LABEL_79;
                    }

                    if (v45 == 8)
                    {
                      if (v59)
                      {
                        goto LABEL_79;
                      }

                      goto LABEL_78;
                    }

                    v46 = *&v55 & ((v45 & 2) >> 1);
                  }

                  if (v46 != 1)
                  {
                    goto LABEL_79;
                  }
                }

LABEL_78:
                CFDictionarySetValue(*(a1 + 24), v11[v20], v21);
LABEL_79:
                if (Count == ++v20)
                {
                  a2 = v56;
                  goto LABEL_84;
                }
              }

              v29 = v25;
              if ((v28 & 0xC) != 0 || (v29 = Source, (v27 & 0xC) != 0))
              {
                v30 = *(v29 + 48);
                if ((v28 & 2) != 0)
                {
                  goto LABEL_40;
                }
              }

              else
              {
                v30 = 0;
                if ((v28 & 2) != 0)
                {
                  goto LABEL_40;
                }
              }

              v25 = Source;
              if ((v27 & 2) == 0)
              {
                goto LABEL_52;
              }

LABEL_40:
              v39 = *(v25 + 48);
              if (!v39 || !v30)
              {
                goto LABEL_52;
              }

              EXIFDataTimeStringWithXMPDateTimeString = CreateEXIFDataTimeStringWithXMPDateTimeString(v30);
              v41 = CreateEXIFDataTimeStringWithXMPDateTimeString(v39);
              v42 = v41;
              if (EXIFDataTimeStringWithXMPDateTimeString && v41)
              {
                v43 = 0;
                if (CFStringCompare(EXIFDataTimeStringWithXMPDateTimeString, v41, 0) == kCFCompareEqualTo && (v27 & 0xC) != 0)
                {
                  CFDictionarySetValue(*(a1 + 24), v11[v20], v21);
                  v43 = 1;
                }
              }

              else
              {
                v43 = 0;
                if (!EXIFDataTimeStringWithXMPDateTimeString)
                {
                  goto LABEL_49;
                }
              }

              CFRelease(EXIFDataTimeStringWithXMPDateTimeString);
LABEL_49:
              if (v42)
              {
                CFRelease(v42);
              }

              if (v43)
              {
                goto LABEL_79;
              }

              goto LABEL_52;
            }
          }

          free(v11);
LABEL_102:
          if (v12)
          {
            free(v12);
          }
        }
      }
    }
  }
}

double _CGImageMetadataFinalize(char *a1)
{
  if (a1 && *MEMORY[0x1E695E738] != a1)
  {
    v2 = *(a1 + 3);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(a1 + 6);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(a1 + 4);
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = *(a1 + 5);
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = *(a1 + 7);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      CFRelease(v7);
    }

    pthread_mutex_destroy((a1 + 72));
    pthread_mutex_destroy((a1 + 136));
    pthread_mutex_destroy((a1 + 208));
    result = 0.0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *(a1 + 3) = 0u;
    *(a1 + 4) = 0u;
    *(a1 + 5) = 0u;
    *(a1 + 6) = 0u;
    *(a1 + 7) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 9) = 0u;
    *(a1 + 10) = 0u;
    *(a1 + 11) = 0u;
    *(a1 + 12) = 0u;
    *(a1 + 13) = 0u;
    *(a1 + 14) = 0u;
    *(a1 + 15) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void IIONumber::IIONumber(IIONumber *this, float a2)
{
  valuePtr = a2;
  *this = &unk_1EF4D41D0;
  *(this + 1) = 12;
  *(this + 2) = 0;
  *(this + 2) = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
}

uint64_t _CGImageReadFinalize(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  atomic_fetch_add_explicit(&gReadRefCount, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed);
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    *__str = 0u;
    v6 = 0u;
    v2 = a1[3];
    v3 = v2 ? ~*(v2 + 16) : 0;
    snprintf(__str, 0x20uLL, "(%p)", a1);
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "_CGImageReadFinalize", v3, __str, -1, 0);
    }
  }

  result = a1[3];
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  a1[2] = 0;
  a1[3] = 0;
  return result;
}

void IIOImageRead::~IIOImageRead(IIOImageRead *this)
{
  *this = &unk_1EF4DBAF8;
  v2 = (this + 248);
  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(this + 240, *(this + 31));
  *(this + 30) = v2;
  *(this + 32) = 0;
  *v2 = 0;
  if ((gIIODebugFlags & 0x200) != 0)
  {
    ImageIOLog(">>> _cache_keys - deleting %d entries\n", -1171354717 * ((*(this + 37) - *(this + 36)) >> 2));
  }

  v4 = *(this + 36);
  v3 = *(this + 37);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      *&v21[12] = 0u;
      key = 0u;
      *v21 = 0u;
      v6 = *v4;
      v7 = v4[1];
      *&v21[12] = *(v4 + 28);
      key = v6;
      *v21 = v7;
      if ((gIIODebugFlags & 0x200) != 0)
      {
        DebugStringFromKey = createDebugStringFromKey(&key);
        v9 = DebugStringFromKey;
        if (DebugStringFromKey)
        {
          ImageIOLog("--- #%d cache_remove             %p key: %s\n", v5++, gImageBlockCache, DebugStringFromKey);
          free(v9);
        }
      }

      cache_remove(gImageBlockCache, &key);
      v4 = (v4 + 44);
    }

    while (v4 != v3);
  }

  if ((gIIODebugFlags & 0x200) != 0)
  {
    cache_print();
  }

  v10 = *(this + 19);
  v11 = *(this + 20);
  while (v10 != v11)
  {
    (*(v10 + 8))(*v10);
    v10 += 24;
  }

  if (*(this + 66))
  {
    v12 = *(this + 6);
    if ((v12 & 0x80000000) == 0)
    {
      if ((gIIODebugFlags & 0x200000000000) != 0)
      {
        ImageIOLog("<<< _CGImageReadFinalize <IIOImageRead: %p>: closing file %d\n", this, v12);
      }

      kdebug_trace();
      close(*(this + 6));
      *(this + 66) = 0;
    }
  }

  *(this + 6) = -1;
  v13 = *(this + 33);
  if (v13)
  {
    free(v13);
  }

  v14 = *(this + 5);
  if (v14)
  {
    CFRelease(v14);
  }

  *(this + 5) = 0;
  v15 = *(this + 4);
  if (v15)
  {
    CFRelease(v15);
  }

  *(this + 4) = 0;
  v16 = *(this + 6);
  if (v16)
  {
    CFRelease(v16);
  }

  *(this + 6) = 0;
  v17 = *(this + 7);
  if (v17)
  {
    CFRelease(v17);
  }

  *(this + 7) = 0;
  pthread_mutex_destroy((this + 176));
  pthread_mutex_destroy((this + 88));
  pthread_mutex_destroy((this + 376));
  pthread_mutex_destroy((this + 312));
  v18 = *(this + 36);
  if (v18)
  {
    *(this + 37) = v18;
    operator delete(v18);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(this + 240, *(this + 31));
  v19 = *(this + 19);
  if (v19)
  {
    *(this + 20) = v19;
    operator delete(v19);
  }
}

{
  IIOImageRead::~IIOImageRead(this);

  JUMPOUT(0x186602850);
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<IIOBaseObject>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:fe200100]<std::pair<std::string const,std::shared_ptr<IIOBaseObject>>,0>((a2 + 4));

    operator delete(a2);
  }
}

CGMutableImageMetadataRef CreateMetadataFromDatablock(IIOImageReadSession *a1, unsigned __int16 *a2, off_t a3, unsigned int a4, const __CFData *a5, char a6)
{
  v137 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v134 = 0;
  MetadataLong = 0;
  v127 = IIOImageReadSession::getSize(a1);
  Mutable = CGImageMetadataCreateMutable();
  v130 = a1;
  if (IIOImageReadSession::getBytesAtOffset(a1, &v134, a3, 2) == 2)
  {
    v9 = v134;
    if (a4)
    {
      v9 = __rev16(v134);
      v134 = v9;
    }

    if ((v9 - 255) >= 0xFF02u)
    {
      v132 = malloc_type_calloc(v9, 0xCuLL, 0x10000403E1C8BA9uLL);
      if (v132)
      {
        v10 = a3 + 2;
        BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a1, v132, v10, 12 * v134);
        v12 = v134;
        if (BytesAtOffset != 12 * v134)
        {
          goto LABEL_310;
        }

        if (v134)
        {
          v13 = a6;
          if (a4)
          {
            v14 = 0;
            v15 = v132;
            do
            {
              *v15 = bswap32(*v15) >> 16;
              *(v15 + 1) = bswap32(*(v15 + 1)) >> 16;
              *(v15 + 1) = bswap32(*(v15 + 1));
              ++v14;
              v15 += 12;
              v12 = v134;
            }

            while (v14 < v134);
          }

          if ((a6 & 4) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v13 = a6;
          if ((a6 & 4) == 0)
          {
LABEL_13:
            v16 = 0;
LABEL_24:
            v125 = v16;
            if ((v13 & 8) != 0)
            {
              operator new();
            }

            if (a2 == &tagdefsGPS && v134 < 2u)
            {
              goto LABEL_310;
            }

            if (a2 == &tagdefsIFD0)
            {
              if (gInitializeTagKeyCacheIFD0Mutex != -1)
              {
                CreateMetadataFromDatablock();
              }

              v20 = &IFD0TagKeys;
            }

            else if (a2 == &tagdefsIFD1)
            {
              if (gInitializeTagKeyCacheIFD1Mutex != -1)
              {
                CreateMetadataFromDatablock();
              }

              v20 = &IFD1TagKeys;
            }

            else if (a2 == &tagdefsExif)
            {
              if (gInitializeTagKeyCacheExifMutex != -1)
              {
                CreateMetadataFromDatablock();
              }

              v20 = &ExifTagKeys;
            }

            else
            {
              if (a2 != &tagdefsGPS)
              {
                CreateMetadataFromDatablock();
                goto LABEL_33;
              }

              if (gInitializeTagKeyCacheGPSMutex != -1)
              {
                CreateMetadataFromDatablock();
              }

              v20 = &GPSTagKeys;
            }

            if (v134)
            {
              v21 = 0;
              v121 = 0;
              size = 0;
              v22 = 0;
              v23 = 0;
              v124 = *v20;
              alloc = *MEMORY[0x1E695E480];
              v24 = v132;
              while (1)
              {
                v25 = *a2;
                if (v25 == 0xFFFF)
                {
                  goto LABEL_52;
                }

                v26 = 0;
                v27 = *v24;
                v28 = a2 + 16;
                while (v25 != v27)
                {
                  ++v26;
                  v25 = v28[12];
                  v28 += 28;
                  if (v25 == 0xFFFF)
                  {
                    goto LABEL_52;
                  }
                }

                v29 = *(v28 - 15);
                if (*(v28 - 15))
                {
                  v30 = *(v24 + 1);
                  if (v30 != v29 && (v29 != 32771 || (v30 - 3) >= 2u))
                  {
                    if (*(v28 - 15) <= 0x8005u)
                    {
                      if (*(v28 - 15) > 0x8003u)
                      {
                        if (v29 != 32772)
                        {
                          if (v30 > 7)
                          {
                            goto LABEL_173;
                          }

                          v32 = 1 << v30;
                          v33 = 134;
                          goto LABEL_92;
                        }

                        if (v30 != 3 && v30 != 5)
                        {
LABEL_173:
                          _cg_jpeg_mem_term("FindTagDef", 544, "*** tag '%04X'  type mismatch:   expected: %04X  got: %04X\n", v27, *(v28 - 15), v30);
                          goto LABEL_52;
                        }
                      }

                      else if (v29 == 32769)
                      {
                        if ((v30 - 1) >= 2u)
                        {
                          goto LABEL_173;
                        }
                      }

                      else if (v29 != 32770 || (v30 | 2) != 3)
                      {
                        goto LABEL_173;
                      }
                    }

                    else if (*(v28 - 15) <= 0x8007u)
                    {
                      if (v29 == 32774)
                      {
                        if ((v30 - 3) >= 3u)
                        {
                          goto LABEL_173;
                        }
                      }

                      else if (v30 != 5 && v30 != 10)
                      {
                        goto LABEL_173;
                      }
                    }

                    else
                    {
                      if (v29 == 32776)
                      {
                        if (v30 > 7)
                        {
                          goto LABEL_173;
                        }

                        v32 = 1 << v30;
                        v33 = 150;
                        goto LABEL_92;
                      }

                      if (v29 == 32777)
                      {
                        if (v30 > 0x12)
                        {
                          goto LABEL_173;
                        }

                        v32 = 1 << v30;
                        v33 = 270352;
LABEL_92:
                        if ((v32 & v33) == 0)
                        {
                          goto LABEL_173;
                        }

                        goto LABEL_93;
                      }

                      if (v29 != 32778 || v30 != 1 && v30 != 7)
                      {
                        goto LABEL_173;
                      }
                    }
                  }
                }

LABEL_93:
                v34 = *(v28 - 14);
                if (*(v28 - 14))
                {
                  v35 = *(v24 + 1);
                  if (v35 == v34)
                  {
                    v36 = *(v28 - 14);
                  }

                  else
                  {
                    if (v29 != 2 || *(v24 + 1) != 2)
                    {
                      goto LABEL_52;
                    }

                    if (v34 == 2 && v35 == 1)
                    {
                      v36 = 2;
                    }

                    else
                    {
                      if (v34 != 20 || v35 != 19)
                      {
                        goto LABEL_52;
                      }

                      v36 = 20;
                    }

                    v26 = 0xFFFFFFFFLL;
                  }
                }

                else
                {
                  v36 = 0;
                }

                v37 = *(v28 + 1);
                if (!v37)
                {
                  ++v22;
                }

                if (v36 > v127)
                {
                  ++v23;
                }

                if (v22 >= 0x2B)
                {
                  CreateMetadataFromDatablock();
                  goto LABEL_257;
                }

                if (v23 >= 0x2B)
                {
                  CreateMetadataFromDatablock();
                  goto LABEL_257;
                }

                v38 = *(v28 + 2);
                if (v38 | v37)
                {
                  if (!v38)
                  {
                    v38 = *(v28 + 1);
                  }

                  v39 = *v38;
                }

                else
                {
                  v39 = 0;
                }

                v40 = *(v28 - 2);
                if (v40)
                {
                  v41 = *v40;
                }

                else
                {
                  v41 = 0;
                }

                v42 = *(v28 - 1);
                if (v42)
                {
                  v122 = *v42;
                }

                else
                {
                  v122 = 0;
                }

                v43 = 0;
                if ((v26 & 0x80000000) == 0 && v124)
                {
                  v43 = *(v124 + 8 * v26);
                }

                if (a6)
                {
                  if (v27 == 274)
                  {
                    v47 = *(v24 + 2);
                    if (a4)
                    {
                      if (((bswap32(v47) >> 16) - 9) < 0xFFF8u)
                      {
                        v48 = 256;
                        goto LABEL_159;
                      }
                    }

                    else if ((v47 - 9) <= 0xFFF7u)
                    {
                      v48 = 1;
LABEL_159:
                      *(v24 + 2) = v48;
                    }

                    if (*(v24 + 1) != 3 || *(v24 + 1) > 0x28u)
                    {
                      goto LABEL_52;
                    }

                    ReadMetadataShort(Mutable, v130, v41, v122, v39, v43, v34 != 1, v24, 0, a4);
                    v27 = *v24;
                  }

                  if ((v27 & 0xFFFE) != 0x11A)
                  {
                    goto LABEL_166;
                  }

                  if (*(v24 + 1) == 5)
                  {
                    ReadMetadataRtnl(Mutable, v130, v41, v122, v39, v43, *(v28 - 14) != 1, v24, a4);
                    v27 = *v24;
LABEL_166:
                    if (v27 == 296 && *(v24 + 1) == 3)
                    {
                      ReadMetadataShort(Mutable, v130, v41, v122, v39, v43, *(v28 - 14) != 1, v24, 0, a4);
                    }

                    goto LABEL_52;
                  }

                  goto LABEL_52;
                }

                if ((a6 & 2) != 0)
                {
                  if (*v24 <= 0x8768u)
                  {
                    if (v27 == 700)
                    {
                      goto LABEL_52;
                    }

                    v49 = 33723;
                  }

                  else
                  {
                    if (v27 == 34665 || v27 == 34853)
                    {
                      goto LABEL_52;
                    }

                    v49 = 37500;
                  }

                  if (v27 == v49)
                  {
                    goto LABEL_52;
                  }
                }

                if (a2 == &tagdefsIFD0 && v27 == 700)
                {
                  v121 = *(v24 + 2);
                  if (a4)
                  {
                    v121 = bswap32(v121);
                    *(v24 + 2) = v121;
                  }

                  size = *(v24 + 1);
                  goto LABEL_129;
                }

                if (*v24 > 0x8824u)
                {
                  if (v27 == 34853)
                  {
                    MetadataLong = ReadMetadataLong(Mutable, v130, v41, v122, v39, v43, 0, v24, a4);
                    MetadataFromDatablock = CreateMetadataFromDatablock(v130, &tagdefsGPS, MetadataLong, a4, a5, 0);
                    v51 = MetadataFromDatablock;
                    if (!MetadataFromDatablock)
                    {
                      goto LABEL_52;
                    }

                    TopLevelTag = CGImageMetadataGetTopLevelTag(MetadataFromDatablock, @"http://ns.adobe.com/exif/1.0/", @"GPSLatitude");
                    value = CGImageMetadataGetTopLevelTag(v51, @"http://ns.adobe.com/exif/1.0/", @"GPSLatitudeRef");
                    v123 = CGImageMetadataGetTopLevelTag(v51, @"http://ns.adobe.com/exif/1.0/", @"GPSLongitude");
                    v116 = CGImageMetadataGetTopLevelTag(v51, @"http://ns.adobe.com/exif/1.0/", @"GPSLongitudeRef");
                    Source = CGImageSourceGetSource(TopLevelTag);
                    v72 = CGImageSourceGetSource(value);
                    v115 = CGImageSourceGetSource(v123);
                    v114 = CGImageSourceGetSource(v116);
                    if (TopLevelTag)
                    {
                      if (value)
                      {
                        v73 = CFStringCreateWithFormat(alloc, 0, @"%@%@", *(Source + 48), *(v72 + 48));
                        if (v73)
                        {
                          CGImageMetadataTagSetValue(TopLevelTag, v73);
                          CGImageMetadataRemoveTag(v51, value);
                          CFRelease(v73);
                        }
                      }
                    }

                    if (v123)
                    {
                      if (v116)
                      {
                        v74 = CFStringCreateWithFormat(alloc, 0, @"%@%@", *(v115 + 48), *(v114 + 48));
                        if (v74)
                        {
                          CGImageMetadataTagSetValue(v123, v74);
                          CGImageMetadataRemoveTag(v51, v116);
                          CFRelease(v74);
                        }
                      }
                    }

                    goto LABEL_156;
                  }

                  if (v27 == 37500 && *(v24 + 1) >= 5u)
                  {
                    v59 = *(v24 + 2);
                    v60 = bswap32(v59);
                    if (a4)
                    {
                      v61 = v60;
                    }

                    else
                    {
                      v61 = v59;
                    }

                    v62 = GetSizeForTiffType(*(v24 + 1)) * *(v24 + 1);
                    if (!v62)
                    {
                      goto LABEL_52;
                    }

                    if (v62 >= v127)
                    {
                      _cg_jpeg_mem_term("CreateMetadataFromDatablock", 2225, "*** ERROR: Bad makerNoteSize: %d >= fileSize: %d\n", v62, v127);
                      goto LABEL_52;
                    }

                    v63 = malloc_type_calloc(v62, 1uLL, 0x100004077774924uLL);
                    if (v63)
                    {
                      v64 = IIOImageReadSession::getBytesAtOffset(v130, v63, v61, v62);
                      if (v64 != v62)
                      {
                        _cg_jpeg_mem_term("CreateMetadataFromDatablock", 2230, "*** ERROR: failed to read makerNote (expected: %d, got: %d bytes)\n", v62, v64);
                        goto LABEL_52;
                      }

                      if (v62 < 0x20)
                      {
                        if (v62 >= 0xA)
                        {
                          goto LABEL_233;
                        }

                        goto LABEL_237;
                      }

                      if (!strncmp(v63 + 4, "iOS ", 4uLL))
                      {
                        goto LABEL_240;
                      }

LABEL_233:
                      if (*v63 == 0x4F6920656C707041 && *(v63 + 4) == 83)
                      {
                        PropertiesFromAppleMakerNote = CreatePropertiesFromAppleMakerNote(v63, v62);
                        if (PropertiesFromAppleMakerNote)
                        {
                          CreateMetadataFromDatablock(Mutable + 6, PropertiesFromAppleMakerNote);
                        }
                      }

                      else
                      {
LABEL_237:
                        v135 = 0uLL;
                        v136 = 0;
                        IIODictionary::IIODictionary(&v135);
                        v82 = IIOImageSource::cf(v130);
                        call_RAWCamera_readMakerNoteProps(v82, &v135, v61, v62, a4);
                        v83 = *(Mutable + 6);
                        if (v83)
                        {
                          CFRelease(v83);
                        }

                        *(Mutable + 6) = CFRetain(*(&v135 + 1));
                        IIODictionary::~IIODictionary(&v135);
                      }

LABEL_240:
                      v84 = v63;
LABEL_253:
                      free(v84);
                      goto LABEL_52;
                    }

                    goto LABEL_52;
                  }

LABEL_129:
                  v44 = *v28;
                  if (!*v28 && !v39 && !v41)
                  {
                    goto LABEL_52;
                  }

                  if (v27 == 274)
                  {
                    v45 = *(v24 + 2);
                    if (a4)
                    {
                      if (((bswap32(v45) >> 16) - 9) < 0xFFF8u)
                      {
                        v46 = 256;
                        goto LABEL_212;
                      }
                    }

                    else if ((v45 - 9) <= 0xFFF7u)
                    {
                      v46 = 1;
LABEL_212:
                      *(v24 + 2) = v46;
                    }
                  }

                  if (v44)
                  {
                    LOBYTE(v113) = a4;
                    v44(Mutable, v130, v41, v122, v39, v43, v24, 0, v113);
                  }

                  else
                  {
                    v75 = *(v24 + 1);
                    v76 = *(v24 + 1);
                    if ((v75 - 1) >> 4 > 0x270 || v76 != 2)
                    {
                      if (*(v24 + 1) <= 3u)
                      {
                        if (v76 == 1)
                        {
                          if (v75 <= 0x28)
                          {
                            ReadMetadataByte(Mutable, v130, v41, v122, v39, v43, v34 != 1, v24, 0, a4);
                          }
                        }

                        else if (v76 == 3 && v75 <= 0x28)
                        {
                          ReadMetadataShort(Mutable, v130, v41, v122, v39, v43, v34 != 1, v24, 0, a4);
                        }
                      }

                      else
                      {
                        switch(v76)
                        {
                          case 4:
                            if (v75 <= 0x28)
                            {
                              ReadMetadataLong(Mutable, v130, v41, v122, v39, v43, v34 != 1, v24, a4);
                            }

                            break;
                          case 10:
                            ReadMetadataSRtnl(Mutable, v130, v41, v122, v39, v43, v34 != 1, v24, a4);
                            break;
                          case 5:
                            ReadMetadataRtnl(Mutable, v130, v41, v122, v39, v43, v34 != 1, v24, a4);
                            break;
                        }
                      }

                      goto LABEL_52;
                    }

                    ASCIIString = ReadAndCreateASCIIString(v130, v24, 0, a4);
                    v78 = ASCIIString;
                    if (ASCIIString)
                    {
                      if (*ASCIIString && !onlyspaces(ASCIIString))
                      {
                        v79 = stringType(v78, *(v24 + 1));
                        if (v79 == 1)
                        {
                          v80 = 134217984;
LABEL_249:
                          valuea = CFStringCreateWithCString(alloc, v78, v80);
                          if (valuea)
                          {
                            v86 = CGImageMetadataTagCreate(v41, v122, v39, kCGImageMetadataTypeString, valuea);
                            CFRelease(valuea);
                            if (v86)
                            {
                              CGImageMetadataAddTagWithKey(Mutable, v43, v86);
                              CFRelease(v86);
                            }
                          }
                        }

                        else if (!v79)
                        {
                          v80 = 1536;
                          goto LABEL_249;
                        }
                      }

                      v84 = v78;
                      goto LABEL_253;
                    }
                  }

                  goto LABEL_52;
                }

                if (v27 == 33723)
                {
                  if (a2 == &tagdefsIFD0 && (*(v24 + 1) - 1) <= 0xF423F)
                  {
                    v65 = *(v24 + 1);
                    if (v65 > 0xA)
                    {
                      goto LABEL_52;
                    }

                    v66 = GetSizeForTiffType(v65) * *(v24 + 1);
                    v63 = malloc_type_malloc(v66, 0x72EA2A2AuLL);
                    if (!v63)
                    {
                      goto LABEL_52;
                    }

                    v67 = *(v24 + 2);
                    if (a4)
                    {
                      v67 = bswap32(v67);
                      *(v24 + 2) = v67;
                    }

                    if (IIOImageReadSession::getBytesAtOffset(v130, v63, v67, v66) == v66)
                    {
                      MetadataFromIPTCDatabuffer = CreateMetadataFromIPTCDatabuffer(v63, v66);
                      if (MetadataFromIPTCDatabuffer)
                      {
                        metadataSetUnspecifiedSource(Mutable, 2);
                        metadataSetSource(MetadataFromIPTCDatabuffer, 4);
                        CGImageMetadataMerge(Mutable, MetadataFromIPTCDatabuffer, 0);
                        CFRelease(MetadataFromIPTCDatabuffer);
                      }
                    }

                    goto LABEL_240;
                  }

                  goto LABEL_129;
                }

                if (v27 != 34665)
                {
                  goto LABEL_129;
                }

                MetadataLong = ReadMetadataLong(Mutable, v130, v41, v122, v39, v43, 0, v24, a4);
                v50 = CreateMetadataFromDatablock(v130, &tagdefsExif, MetadataLong, a4, a5, 0);
                v51 = v50;
                if (v50)
                {
                  v52 = CGImageMetadataGetTopLevelTag(v50, @"http://ns.adobe.com/exif/1.0/", @"ISOSpeedRatings");
                  if (v52)
                  {
                    v53 = CGImageMetadataTagCopyValue(v52);
                    v54 = v53;
                    if (v53)
                    {
                      v55 = CFGetTypeID(v53);
                      if (v55 == CFArrayGetTypeID() && CFArrayGetCount(v54) >= 1 && CFArrayGetCount(v54) == 1)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v54, 0);
                        DefaultString = CGImageMetadataGetDefaultString(ValueAtIndex);
                        v58 = CGImageMetadataTagCreate(@"http://cipa.jp/exif/1.0/", @"exifEX", @"PhotographicSensitivity", kCGImageMetadataTypeString, DefaultString);
                        if (v58)
                        {
                          CGImageMetadataAddTag(v51, v58);
                          CFRelease(v58);
                        }
                      }

                      CFRelease(v54);
                    }
                  }

LABEL_156:
                  CGImageMetadataMerge(Mutable, v51, 0);
                  CFRelease(v51);
                }

LABEL_52:
                ++v21;
                v24 += 12;
                if (v21 >= v134)
                {
                  goto LABEL_257;
                }
              }
            }

            size = 0;
            v121 = 0;
LABEL_257:
            if (!v125)
            {
              goto LABEL_299;
            }

            if (IIOImageReadSession::getBytesAtOffset(v130, &v134, v125, 2) != 2)
            {
              goto LABEL_33;
            }

            v87 = v134;
            if (a4)
            {
              v87 = __rev16(v134);
              v134 = v87;
            }

            v19 = v132;
            if (v87 > 0xFE)
            {
              goto LABEL_311;
            }

            if (!v87)
            {
              goto LABEL_299;
            }

            v88 = reallocf(v132, 4 * ((3 * v87) & 0x3FFF));
            if (!v88)
            {
              return Mutable;
            }

            v132 = v88;
            v89 = IIOImageReadSession::getBytesAtOffset(v130, v88, v125 + 2, 12 * v134);
            if (v89 != 12 * v134)
            {
              goto LABEL_33;
            }

            v90 = v132;
            if (v134 && a4)
            {
              CreateMetadataFromDatablock(v132, v134);
              v90 = v132;
            }

            else if (!v134)
            {
              goto LABEL_299;
            }

            v91 = 0;
            v92 = 0;
            v93 = 0;
            v94 = *MEMORY[0x1E695E480];
            v95 = (v90 + 8);
            while (1)
            {
              v96 = *(v95 - 4);
              if (v96 == 514)
              {
                v93 = *v95;
                v97 = CFStringCreateWithFormat(v94, 0, @"%d", *v95);
                if (v97)
                {
                  v98 = CGImageMetadataTagCreate(@"http://ns.apple.com/ImageIO/1.0/", @"iio", @"JPEGInterchangeFormatLength", kCGImageMetadataTypeString, v97);
                  goto LABEL_276;
                }
              }

              else if (v96 == 513)
              {
                v92 = *v95 + 12;
                v97 = CFStringCreateWithFormat(v94, 0, @"%d", v92);
                if (v97)
                {
                  v98 = CGImageMetadataTagCreate(@"http://ns.apple.com/ImageIO/1.0/", @"iio", @"JPEGInterchangeFormat", kCGImageMetadataTypeString, v97);
LABEL_276:
                  v99 = v98;
                  if (v98)
                  {
                    CGImageMetadataAddTag(Mutable, v98);
                    CFRelease(v99);
                  }

                  CFRelease(v97);
                }
              }

              ++v91;
              v95 += 3;
              if (v91 >= v134)
              {
                if (v93 && v92)
                {
                  WORD4(v135) = 0;
                  *&v135 = 0;
                  if (IIOImageReadSession::getBytesAtOffset(v130, &v135, v92 - 12, 2) != 2)
                  {
                    goto LABEL_33;
                  }

                  if (bswap32(v135) >> 16 == 65496)
                  {
                    v100 = v92 - 10;
                    while (IIOImageReadSession::getBytesAtOffset(v130, &v135, v100, 10) == 10)
                    {
                      v101 = __rev16(v135);
                      if (v101 == 65472)
                      {
                        v102 = *(&v135 + 5);
                        v103 = CFStringCreateWithFormat(v94, 0, @"%zu", __rev16(*(&v135 + 7)));
                        v104 = CFStringCreateWithFormat(v94, 0, @"%zu", __rev16(v102));
                        if (v103)
                        {
                          v105 = CGImageMetadataTagCreate(@"http://ns.apple.com/ImageIO/1.0/", @"iio", @"JPEGInterchangeFormatWidth", kCGImageMetadataTypeString, v103);
                          if (v105)
                          {
                            CGImageMetadataAddTag(Mutable, v105);
                            CFRelease(v105);
                          }

                          CFRelease(v103);
                        }

                        if (v104)
                        {
                          v106 = CGImageMetadataTagCreate(@"http://ns.apple.com/ImageIO/1.0/", @"iio", @"JPEGInterchangeFormatHeight", kCGImageMetadataTypeString, v104);
                          if (v106)
                          {
                            CGImageMetadataAddTag(Mutable, v106);
                            CFRelease(v106);
                          }

                          CFRelease(v104);
                        }

                        goto LABEL_299;
                      }

                      v100 += (bswap32(WORD1(v135)) >> 16) + 2;
                      if (v101 == 65498)
                      {
                        goto LABEL_299;
                      }
                    }

LABEL_33:
                    v19 = v132;
LABEL_311:
                    free(v19);
                    return Mutable;
                  }
                }

LABEL_299:
                metadataSetUnspecifiedSource(Mutable, 2);
                v107 = 0;
                if (v121 && size)
                {
                  v107 = malloc_type_malloc(size, 0xC2CD7ED4uLL);
                  if (!v107)
                  {
                    goto LABEL_33;
                  }

                  if (IIOImageReadSession::getBytesAtOffset(v130, v107, v121, size) == size)
                  {
                    MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(v107, size);
                    if (MetadataFromXMPBuffer)
                    {
                      CGImageMetadataMerge(Mutable, MetadataFromXMPBuffer, 0);
                      CFRelease(MetadataFromXMPBuffer);
                    }

                    goto LABEL_305;
                  }

LABEL_309:
                  free(v107);
                }

                else
                {
LABEL_305:
                  if (a5)
                  {
                    BytePtr = CFDataGetBytePtr(a5);
                    Length = CFDataGetLength(a5);
                    MetadataFromXMPSidecarData = CreateMetadataFromXMPSidecarData(BytePtr, Length);
                    if (MetadataFromXMPSidecarData)
                    {
                      CGImageMetadataMerge(Mutable, MetadataFromXMPSidecarData, 0);
                      CFRelease(MetadataFromXMPSidecarData);
                    }
                  }

                  if (v107)
                  {
                    goto LABEL_309;
                  }
                }

LABEL_310:
                v19 = v132;
                goto LABEL_311;
              }
            }
          }
        }

        v17 = IIOImageReadSession::getBytesAtOffset(a1, &MetadataLong, v10 + 12 * v12, 4);
        LODWORD(v16) = MetadataLong;
        if (v17 != 4 || MetadataLong == 0)
        {
          v16 = 0;
          v13 = a6;
        }

        else
        {
          v13 = a6;
          if (a4)
          {
            LODWORD(v16) = bswap32(MetadataLong);
            MetadataLong = v16;
          }

          v16 = v16;
        }

        goto LABEL_24;
      }
    }
  }

  return Mutable;
}

void CreateMetadataFromDatablock()
{
  dispatch_once(&gInitializeTagKeyCacheIFD0Mutex, &__block_literal_global_11);
}

{
  dispatch_once(&gInitializeTagKeyCacheExifMutex, &__block_literal_global_64);
}

{
  dispatch_once(&gInitializeTagKeyCacheGPSMutex, &__block_literal_global_67);
}

{
  dispatch_once(&gInitializeTagKeyCacheIFD1Mutex, &__block_literal_global_61);
}

void EnumerateExifDataUsingBlock(const char *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v37 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  LODWORD(v6) = 6;
  if (*a1 == 255)
  {
    v7 = *(a1 + 1) == 225;
    a1 += 4 * v7;
    if (v7)
    {
      LODWORD(v6) = 10;
    }

    else
    {
      LODWORD(v6) = 6;
    }
  }

  if (!strncmp(a1, "Exif", 4uLL))
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  v38 = 0;
  v8 = v5[v6];
  if (v8 != 73)
  {
    if (v8 == 77 && v5[v6 + 1] == 77)
    {
      v9 = 1;
      goto LABEL_14;
    }

LABEL_69:
    v23 = 0;
    goto LABEL_72;
  }

  if (v5[v6 + 1] != 73)
  {
    goto LABEL_69;
  }

  v9 = 0;
LABEL_14:
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  IIOScanner::IIOScanner(&v30, &v5[v6], (a2 - v6), v9 != 1);
  IIOScanner::skip(&v30, 4uLL);
  Val32 = IIOScanner::getVal32(&v30);
  IIOScanner::seek(&v30, Val32);
  v11 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v12 = 0;
  if (v9)
  {
    v13 = 16;
  }

  else
  {
    v13 = 0;
  }

  v24 = v13;
  while (1)
  {
    v38 = *(&v31 + 1);
    v14 = v36[0];
    if (v36[0])
    {
      v15 = v36;
      do
      {
        if (v14[4] <= *(&v31 + 1))
        {
          v15 = v14;
        }

        v14 = v14[v14[4] > *(&v31 + 1)];
      }

      while (v14);
      if (v15 != v36 && *(&v31 + 1) <= v15[4])
      {
        break;
      }
    }

    std::__tree<unsigned long long,std::greater<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(&v35, &v38);
    Val16 = IIOScanner::getVal16(&v30);
    if (Val16)
    {
      v17 = 0;
      v18 = v12 | v24;
      do
      {
        v28 = 0u;
        v29 = 0u;
        BYTE8(v29) = v18;
        v19 = *(&v31 + 1);
        WORD4(v28) = IIOScanner::getVal16(&v30);
        WORD5(v28) = IIOScanner::getVal16(&v30);
        v20 = IIOScanner::getVal32(&v30);
        HIDWORD(v28) = v20;
        if (WORD5(v28) > 4u)
        {
          if (WORD5(v28) > 8u)
          {
            if (WORD5(v28) == 9)
            {
LABEL_39:
              LOWORD(v20) = 4 * v20;
              goto LABEL_41;
            }

            if (WORD5(v28) == 10)
            {
LABEL_38:
              LOWORD(v20) = 8 * v20;
              goto LABEL_41;
            }
          }

          else
          {
            if (WORD5(v28) == 5)
            {
              goto LABEL_38;
            }

            if (WORD5(v28) == 7)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          if (WORD5(v28) - 1 < 2)
          {
            goto LABEL_41;
          }

          if (WORD5(v28) == 3)
          {
            LOWORD(v20) = 2 * v20;
LABEL_41:
            DWORD1(v29) = v20;
            if (v20 >= 4u)
            {
              LODWORD(v29) = IIOScanner::getVal32(&v30);
              goto LABEL_53;
            }

            if (v20 == 2)
            {
              LODWORD(v29) = IIOScanner::getVal16(&v30);
              v21 = 2;
              goto LABEL_52;
            }

            if (v20 == 1)
            {
              LODWORD(v29) = IIOScanner::getVal8(&v30);
              v21 = 3;
LABEL_52:
              IIOScanner::skip(&v30, v21);
LABEL_53:
              *&v28 = v19;
              if (WORD4(v28) == 34853)
              {
                v26 = v29;
                v27 = 34853;
                if (a3)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                if (WORD4(v28) == 34665)
                {
                  v25 = v29;
                  v11 = 34665;
                }

                if (!a3)
                {
                  goto LABEL_60;
                }

LABEL_59:
                (*(a3 + 16))(a3, &v28, v6, &v37);
              }

LABEL_60:
              if (v37)
              {
                goto LABEL_71;
              }

              ++v17;
              continue;
            }

LABEL_51:
            v21 = 4;
            goto LABEL_52;
          }

          if (WORD5(v28) == 4)
          {
            goto LABEL_39;
          }
        }

        if (WORD4(v28) || v17 + 1 != Val16)
        {
          DWORD1(v29) = 0;
          goto LABEL_51;
        }

        IIOScanner::seek(&v30, v19);
        ++v17;
      }

      while (v17 != Val16);
    }

    v22 = IIOScanner::getVal32(&v30);
    if (v22)
    {
      v12 = 1;
      IIOScanner::seek(&v30, v22);
    }

    else if (v11)
    {
      v12 = 2;
      IIOScanner::seek(&v30, v25);
      v11 = 0;
    }

    else
    {
      if (!v27)
      {
        goto LABEL_71;
      }

      v12 = 3;
      IIOScanner::seek(&v30, v26);
      v11 = 0;
      v27 = 0;
    }
  }

  _cg_jpeg_mem_term("EnumerateExifDataUsingBlock", 4807, "*** ERROR: cycle in IDF offsets [offset %ld was already processed]\n", *(&v31 + 1));
LABEL_71:
  IIOScanner::~IIOScanner(&v30);
  v23 = v36[0];
LABEL_72:
  std::__tree<unsigned long long>::destroy(&v35, v23);
}

void sub_185E9581C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x185E957D4);
}

uint64_t IIOScanner::getVal16(IIOScanner *this)
{
  v5 = *(this + 1);
  if (!v5 || (v6 = *(this + 3), (v6 + 2) > *(this + 2)))
  {
    v12 = v1;
    LogError("getVal16", 192, "*** IIOScanner::getVal16 reached EOF\n", v2, v12, v3, v4);
    *(this + 16) = -39;
    exception = __cxa_allocate_exception(4uLL);
    *exception = -39;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v7 = *(v5 + v6);
  v8 = bswap32(v7) >> 16;
  if (!*(this + 68))
  {
    LOWORD(v7) = v8;
  }

  *(this + 3) = v6 + 2;
  return v7;
}

void *std::__tree<unsigned long long,std::greater<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(uint64_t a1, unint64_t *a2)
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
      if (v3 <= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 <= v3)
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

void std::__tree<unsigned long long>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned long long>::destroy(a1, *a2);
    std::__tree<unsigned long long>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void IIOXPCLog(char *a1, ...)
{
  va_start(va, a1);
  v6 = *MEMORY[0x1E69E9840];
  if (IIOXPCLog::onceToken != -1)
  {
    IIOXPCLog_cold_1();
  }

  if (IIOXPCLog::logXPC == 1)
  {
    v3[0] = 0;
    va_copy(&v3[1], va);
    vasprintf(v3, a1, va);
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v5 = v3[0];
      _os_log_impl(&dword_185E59000, 0, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
    }

    v2 = *MEMORY[0x1E69E9848];
    if (gRunningInXPCService)
    {
      fprintf(v2, "[S] %s");
    }

    else
    {
      fprintf(v2, "[C] %s");
    }

    free(v3[0]);
  }
}

void sub_185E95C1C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E95C00);
}

double JPEGReadPlugin::JPEGReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8, int a9)
{
  v13 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a9);
  *v13 = &unk_1EF4D5868;
  result = 0.0;
  *(v13 + 472) = 0u;
  *(v13 + 488) = 0u;
  *(v13 + 504) = 0u;
  *(v13 + 520) = 0;
  *(v13 + 476) = a7;
  *(v13 + 496) = a6;
  *(v13 + 480) = a4;
  *(v13 + 488) = a5;
  *(v13 + 464) = 0;
  return result;
}

double AppleJPEGReadPlugin::AppleJPEGReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6, int a7, uint64_t a8, int a9)
{
  JPEGReadPlugin::JPEGReadPlugin(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  *v9 = &unk_1EF4DBDB8;
  result = 0.0;
  *(v9 + 528) = 0u;
  *(v9 + 544) = 0u;
  *(v9 + 560) = 0u;
  *(v9 + 576) = 0u;
  *(v9 + 592) = 0u;
  *(v9 + 608) = 0u;
  *(v9 + 624) = 0u;
  *(v9 + 640) = 0u;
  *(v9 + 656) = 0u;
  *(v9 + 672) = 0u;
  *(v9 + 688) = 0u;
  *(v9 + 704) = 0;
  return result;
}

uint64_t AppleJPEGReadPlugin::initialize(AppleJPEGReadPlugin *this, IIODictionary *a2)
{
  v114[2] = *MEMORY[0x1E69E9840];
  v105 = *(this + 8);
  v113 = 0;
  v112 = 1380401696;
  v111 = 0;
  v4 = IIO_HardwareDecoderDefaultValue();
  v5 = *(this + 6);
  v106 = *(this + 7);
  *(this + 348) = 255;
  if (!a2)
  {
    AppleJPEGReadPlugin::initialize();
LABEL_330:
    image_info = 4294967246;
    goto LABEL_66;
  }

  v6 = v4;
  if (IIODictionary::containsKey(a2, @"NEW_PLUGIN_dataOffset"))
  {
    *(this + 60) = IIODictionary::getUint32ForKey(a2, @"NEW_PLUGIN_dataOffset");
  }

  if (IIODictionary::containsKey(a2, @"NEW_PLUGIN_dataSize"))
  {
    *(this + 61) = IIODictionary::getUint32ForKey(a2, @"NEW_PLUGIN_dataSize");
  }

  v101 = v6;
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    AppleJPEGReadPlugin::initialize   jpegOffset: %d   jpegLength: %d\n", *(this + 60), *(this + 61));
  }

  v7 = IIOSkipMetadata(v5);
  v102 = IIOSkipXMP_and_IPTC(v5);
  if (IIODictionary::containsKey(v5, @"kCGImageSourceXMPSidecar"))
  {
    theData = IIODictionary::getObjectForKey(v5, @"kCGImageSourceXMPSidecar");
  }

  else
  {
    theData = 0;
  }

  IIODictionary::containsKey(v5, @"kCGImageSourceDecodeRequest");
  if (!((*(this + 232) < 2u) | v7 & 1))
  {
    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
    {
      ImageIOLog("••• Ⓜ️  skipping metadata for thumbnail creation\n");
    }

    v7 = 1;
  }

  Uint32ForKey = IIODictionary::getUint32ForKey(v5, @"kCGImageSourceSubsampleFactor");
  v107 = IIODictionary::containsKey(v5, @"kCGImageSourceColorTransform");
  if (v107)
  {
    v8 = IIODictionary::getUint32ForKey(v5, @"kCGImageSourceColorTransform");
    v99 = v8;
    if ((gIIODebugFlags & 0x8000300000) != 0)
    {
      ImageIOLog("COL      pdfColorTransform: %d\n", v8);
    }
  }

  else
  {
    v99 = -1;
  }

  if (IIODictionary::containsKey(v5, @"kCGImageSourceColorTransformSpace") && (ObjectForKey = IIODictionary::getObjectForKey(v5, @"kCGImageSourceColorTransformSpace")) != 0)
  {
    v10 = ObjectForKey;
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(ObjectForKey);
    if ((gIIODebugFlags & 0x8000300000) != 0)
    {
      Name = CGColorSpaceGetName(v10);
      IIOString::IIOString(&v108, Name);
      v12 = IIOString::utf8String(&v108);
      ImageIOLog("COL pdfColorTransformSpace: %s\n", v12);
      IIOString::~IIOString(&v108);
    }

    v103 = 1;
  }

  else
  {
    NumberOfComponents = 0;
    v103 = 0;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Entering\n", "initialize", 1437);
  }

  if (IIODictionary::getBoolForKey(v5, @"IMAGEIO_USE_LIBJPEG"))
  {
    _cg_jpeg_mem_term("initialize", 1443, "*** IMAGEIO_USE_LIBJPEG --> switching to libJPEG\n");
    IIONumber::IIONumber(&v108, 1279938631);
    IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
    IIONumber::~IIONumber(&v108);
    IIONumber::IIONumber(&v108, *(this + 26));
    IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
    AppleJPEGReadPlugin::initialize(&v108);
LABEL_65:
    image_info = 4294967247;
    goto LABEL_66;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Got session\n", "initialize", 1455);
  }

  v13 = (this + 208);
  if (IIOImageReadSession::seek(*(this + 3), *(this + 26), 0) != *(this + 26))
  {
    goto LABEL_330;
  }

  if (IIODictionary::containsKey(v5, @"kCGImageSourcePreferredThreadCount"))
  {
    v14 = IIODictionary::getUint32ForKey(v5, @"kCGImageSourcePreferredThreadCount");
    v15 = v14;
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: Got preferred theadCount == %d\n", "initialize", 1463, v14);
    }
  }

  else
  {
    v15 = 1;
  }

  if (IIODictionary::containsKey(v5, @"kCGImageSourceEnableMosquitoNoiseFiltering"))
  {
    *(this + 696) = IIODictionary::getBoolForKey(v5, @"kCGImageSourceEnableMosquitoNoiseFiltering");
  }

  *(this + 699) = v15;
  AppleJPEGReadPlugin::appleJPEGDecodeSetup(this);
  if (!*(this + 66))
  {
    AppleJPEGReadPlugin::initialize();
    goto LABEL_330;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: Got ajd_session\n", "initialize", 1477);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      v16 = "not ";
      if (*(this + 369))
      {
        v16 = "";
      }

      ImageIOLog("    %s:%d: Session is %sfinal/numThreads=%d\n", "initialize", 1478, v16, v15);
    }
  }

  if (*(this + 703))
  {
    goto LABEL_52;
  }

  IIOImageReadSession::seek(*(this + 3), *(this + 60), 0);
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    calling appleJPEGDecodeOpen: seeking to jpegOffset: %d\n", *(this + 60));
  }

  v17 = AppleJPEGReadPlugin::appleJPEGDecodeOpen(this);
  image_info = v17;
  if (!v17)
  {
LABEL_52:
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: Opened file\n", "initialize", 1514);
    }

    v19 = (this + 616);
    image_info = applejpeg_decode_get_image_info();
    if (image_info)
    {
      goto LABEL_66;
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: Got imageinfo {%d,%d}\n", "initialize", 1519, *(this + 156), *(this + 157));
    }

    precision = applejpeg_decode_get_precision();
    if (precision == 12)
    {
      v20 = *v13;
      if (!*v13)
      {
LABEL_64:
        _cg_jpeg_mem_term("initialize", 1537, "*** 12-bit JPEG --> switching to HEIC decoder\n");
        IIONumber::IIONumber(&v108, 1212500291);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
        IIONumber::~IIONumber(&v108);
        IIONumber::IIONumber(&v108, *v13);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
        IIONumber::~IIONumber(&v108);
        IIONumber::IIONumber(&v108, *(this + 25));
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataSize");
        AppleJPEGReadPlugin::initialize(&v108);
        goto LABEL_65;
      }

      LODWORD(v108) = 0;
      if (IIOImageReadSession::getBytesAtOffset(*(this + 3), &v108, v20, 4) == 4)
      {
        if (v108 == 255 && BYTE1(v108) == 216 && BYTE2(v108) == 255 && (BYTE3(v108) & 0xF0) != 0xD0)
        {
          goto LABEL_64;
        }

        _cg_jpeg_mem_term("initialize", 1535, "*** ERROR: unexpected data '%02X%02X %02X%02X' at offset %ld\n", v108, BYTE1(v108), BYTE2(v108), BYTE3(v108), *v13);
      }

      else
      {
        AppleJPEGReadPlugin::initialize(this + 26);
      }

LABEL_325:
      image_info = 0;
      goto LABEL_66;
    }

    v24 = AppleJPEGReadPlugin::containsGainMap(this);
    if (*(this + 159) == 1 && !IIODictionary::getBoolForKey(a2, @"OriginalPluginWasMPO") && (v24 & 1) != 0)
    {
      v26 = *(this + 2);
      if (!v26 || (v27 = IIOImagePlus::isr(v26), (Source = CGImageSourceGetSource(v27)) == 0) || IIOImageSource::ignoreJPEGAuxImagesRequest(Source) != 1)
      {
        IIONumber::IIONumber(&v108, 1212500291);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
        IIONumber::~IIONumber(&v108);
        IIONumber::IIONumber(&v108, *v13);
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
        IIONumber::~IIONumber(&v108);
        IIONumber::IIONumber(&v108, *(this + 25));
        IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataSize");
        AppleJPEGReadPlugin::initialize(&v108);
        goto LABEL_65;
      }

      LogError("initialize", 1572, "*** NOTE: dropping 'kCGImageSourceDecodeRequest' since 'kCGImageSourceIgnoreJPEGAuxImages' was requested\n");
    }

    if (v107)
    {
      v108 = 0;
      v109 = 0;
      if (*v19 >= 1)
      {
        v25 = 0;
        while (1)
        {
          applejpeg_decode_get_segment_info();
          if (v108 == 238)
          {
            break;
          }

          if (++v25 >= *v19)
          {
            goto LABEL_97;
          }
        }

        *(this + 697) = 1;
        if (HIDWORD(v108) == 14)
        {
          *(v114 + 6) = 0;
          v114[0] = 0;
          IIOImageReadSession::getBytesAtOffset(*(this + 3), v114, v109 + 2, 14);
          v29 = *(v114 + 2) == 1651467329 && BYTE6(v114[0]) == 101;
          if (v29)
          {
            *(this + 698) = BYTE5(v114[1]);
          }
        }
      }

LABEL_97:
      if ((gIIODebugFlags & 0x8000300000) != 0)
      {
        if (*(this + 697))
        {
          v30 = "true";
        }

        else
        {
          v30 = "false";
        }

        ImageIOLog("COL         hasApp14Marker: %s\n", v30);
      }
    }

    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("    %s:%d: handling metadata\n", "initialize", 1602);
    }

    BoolForKey = IIODictionary::getBoolForKey(*(this + 7), @"kCGImageSourceAddMetadataFromPrimaryImage");
    if (*(this + 26) != 0 && !BoolForKey)
    {
LABEL_118:
      if (*(this + 158) == 1)
      {
        IIODictionary::setObjectForKeyGroup(v106, *MEMORY[0x1E695E4D0], @"IsProgressive", @"{JFIF}");
      }

      if (IIODictionary::getBoolForKey(v5, @"kCGImageSourceAddJPEGQualityInformation"))
      {
        AppleJPEGReadPlugin::readQualityPropertiesFromJPEG(this, *(this + 66), v106);
      }

      else
      {
        *(this + 700) = applejpeg_decode_get_chroma_subsampling();
      }

      if ((gIIODebugFlags & 0x30000) != 0)
      {
        ImageIOLog("    %s:%d: handling colorspace\n", "initialize", 1676);
      }

      v35 = AppleJPEGReadPlugin::readICCData(this, 0, *(this + 26), &v113, &v112);
      if (v35 && (v36 = v113) != 0)
      {
        if (IIODictionary::getBoolForKey(v5, @"kCGImageSourceKeepOriginalProfile") || (pthread_once(&gDisplayCheck, displayCheck), (gIsWideGamutDisplay & 1) != 0) || (v37 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v35, v36, *MEMORY[0x1E695E498])) == 0 || (CanBeIgnoredOnSRGBDevice = ColorSyncDataCanBeIgnoredOnSRGBDevice(), CFRelease(v37), (CanBeIgnoredOnSRGBDevice & 1) == 0))
        {
          v39 = CGColorSpaceCreateWithCopyOfData(v35, v36);
        }

        else
        {
          v39 = 0;
        }

        free(v35);
        v40 = *(this + 58);
        if (!v40)
        {
          goto LABEL_140;
        }

        v41 = (this + 464);
        if (v39)
        {
          CGColorSpaceRelease(v39);
          v40 = *v41;
        }
      }

      else
      {
        v40 = *(this + 58);
        if (!v40)
        {
          v39 = 0;
          goto LABEL_147;
        }

        v41 = (this + 464);
      }

      v39 = CGColorSpaceCreateWithName(v40);
      if ((gIIODebugFlags & 0x8000300000) != 0)
      {
        IIOString::IIOString(&v108, *v41);
        v42 = IIOString::utf8String(&v108);
        ImageIOLog("COL using namedColorSpace '%s'\n", v42);
        IIOString::~IIOString(&v108);
      }

LABEL_140:
      if (v39)
      {
        v43 = CGColorSpaceGetName(v39);
        v44 = v43;
        if (v43 && (CFStringFind(v43, @"PQ", 1uLL).length || CFStringFind(v44, @"HLG", 1uLL).length))
        {
          IIONumber::IIONumber(&v108, 1212500291);
          IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
          IIONumber::~IIONumber(&v108);
          IIONumber::IIONumber(&v108, 0);
          IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
          AppleJPEGReadPlugin::initialize(&v108);
          image_info = 4294967247;
LABEL_180:
          CGColorSpaceRelease(v39);
          goto LABEL_66;
        }

        v45 = 0;
LABEL_148:
        v46 = *(this + 159);
        if ((v46 - 3) < 3)
        {
          *(this + 130) = 4;
          v112 = 1129142603;
          goto LABEL_155;
        }

        if ((v46 - 1) >= 2)
        {
          if (v46)
          {
            goto LABEL_155;
          }

          v112 = 1196573017;
          v47 = 1;
        }

        else
        {
          v112 = 1380401696;
          v47 = 3;
        }

        *(this + 130) = v47;
LABEL_155:
        if (!v45)
        {
          goto LABEL_172;
        }

        v48 = v112;
        if (v112 == 1380401696)
        {
          v49 = createColorSpaceFromMetadata(v105, v7, &v111);
          v39 = v49;
          if (v111 == 1)
          {
            *(this + 172) = 1;
          }

          if (v49)
          {
            goto LABEL_172;
          }
        }

        TopLevelTag = CGImageMetadataGetTopLevelTag(v105, @"http://ns.adobe.com/exif/1.0/", @"ColorSpace");
        if (TopLevelTag)
        {
          v51 = CGImageMetadataTagGetValue(TopLevelTag);
          if (v51)
          {
            if (CFStringGetIntValue(v51) == 1)
            {
              v39 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
              if (v39)
              {
                goto LABEL_172;
              }
            }
          }
        }

        switch(v48)
        {
          case 0x52474220u:
            v52 = MEMORY[0x1E695F1C0];
            break;
          case 0x47524159u:
            v52 = MEMORY[0x1E695F128];
            break;
          case 0x434D594Bu:
            v52 = MEMORY[0x1E695F118];
            break;
          default:
            v39 = 0;
            goto LABEL_172;
        }

        v39 = CGColorSpaceCreateWithName(*v52);
LABEL_172:
        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    %s:%d: handling subsampling\n", "initialize", 1821);
        }

        v53 = *(this + 156);
        v54 = *(this + 157);
        v55 = v54;
        if (v53 > 0x2710 || v54 >= 0x2711)
        {
          if (!is_mul_ok(v53, v54))
          {
            goto LABEL_179;
          }

          v56 = v53 * v54;
          v57 = *(this + 25);
          if (v57 / v56 < 0.003)
          {
            _cg_jpeg_mem_term("initialize", 1836, "*** pixelCount: %ld   fileSize: %d    ratio: %g\n", v53 * v55, v57, v57 / v56);
            goto LABEL_179;
          }
        }

        LOWORD(v58) = Uint32ForKey;
        if (v53 >= v55)
        {
          v59 = v55;
        }

        else
        {
          v59 = *(this + 156);
        }

        if (v59 < Uint32ForKey)
        {
          goto LABEL_185;
        }

        if (Uint32ForKey < 2)
        {
          if (*(this + 232) >= 2u)
          {
            v63 = *(this + 57);
            if (v63)
            {
              if (v53 <= v55)
              {
                v64 = v55;
              }

              else
              {
                v64 = *(this + 156);
              }

              if (v64 <= v63)
              {
                v63 = v64;
              }

              else
              {
                v63 = v63;
              }

              *(this + 57) = v63;
              if (v63 <= (v53 + 7) >> 3 || v63 <= (v55 + 7) >> 3)
              {
                v58 = 8;
              }

              else if (v63 <= (v53 + 3) >> 2 || v63 <= (v55 + 3) >> 2)
              {
                v58 = 4;
              }

              else if (v63 <= (v53 + 1) >> 1 || v63 <= (v55 + 1) >> 1)
              {
                v58 = 2;
              }

              else
              {
                v58 = 1;
              }

              if (v58 > v55 || v58 > v53)
              {
                v66 = 1;
              }

              else
              {
                v66 = v58;
              }

              if (v66 < 2)
              {
LABEL_185:
                LOWORD(v58) = 1;
                goto LABEL_226;
              }

              if ((gIIODebugFlags & 0x30000) != 0 && (ImageIOLog("    subsampling '%d' for thumnnail creation:\n", v66), (gIIODebugFlags & 0x30000) != 0) && (ImageIOLog("    original size: %d x %d\n", v53, v55), (gIIODebugFlags & 0x30000) != 0))
              {
                ImageIOLog("      scaled size: %g x %g\n", (v53 / v66), (v55 / v66));
                v53 /= v66;
                v55 /= v66;
                if ((gIIODebugFlags & 0x30000) != 0)
                {
                  ImageIOLog("       subsampled: %d x %d\n", v53, v55);
                }
              }

              else
              {
                v53 /= v66;
                v55 /= v66;
              }
            }
          }
        }

        else
        {
          v60 = 2;
          if (Uint32ForKey > 3)
          {
            v60 = 4;
          }

          v61 = 1;
          if (Uint32ForKey > 3)
          {
            v61 = 2;
          }

          if (Uint32ForKey <= 7)
          {
            LOWORD(v58) = v60;
          }

          else
          {
            LOWORD(v58) = 8;
          }

          v62 = 3;
          if (Uint32ForKey <= 7)
          {
            v62 = v61;
          }

          v53 >>= v62;
          v55 >>= v62;
        }

LABEL_226:
        if (!v53 || !v55)
        {
LABEL_179:
          image_info = 0;
          if (!v39)
          {
            goto LABEL_66;
          }

          goto LABEL_180;
        }

        *(this + 166) = v58;
        *(this + 702) = 1;
        v67 = v112;
        if (v112 == 1380401696)
        {
          if (*(this + 369))
          {
            v68 = 5;
          }

          else
          {
            *(this + 702) = 0;
            v68 = 3;
          }
        }

        else
        {
          v68 = 0;
        }

        if ((gIIODebugFlags & 0x30000) != 0)
        {
          ImageIOLog("    %s:%d: handling ColorTransform\n", "initialize", 1931);
        }

        v69 = v67 == 1129142603;
        *(this + 701) = -1;
        if (!v107)
        {
LABEL_264:
          *(this + 128) = precision;
          *(this + 144) = precision;
          if (v67 == 1196573017)
          {
            v73 = 1;
          }

          else
          {
            v73 = 4;
          }

          *(this + 130) = v73;
          v74 = precision << (2 * (v67 != 1196573017));
          *(this + 129) = v74;
          *(this + 20) = v39;
          *(this + 85) = v67;
          *(this + 262) = v68;
          *(this + 263) = 0;
          *(this + 265) = 0;
          if (v67 == 1129142603)
          {
            v75 = ((precision + 7) >> 1) & 0xFFFC;
          }

          else
          {
            if (v67 != 1196573017)
            {
              if (precision == 16)
              {
                v85 = 4;
              }

              else
              {
                v85 = 3;
              }

              v86 = precision + 7;
              v87 = v53 * ((v86 >> 3) * v85);
              v29 = (v87 & 0xFFFFFFFF00000000) == 0;
              v88 = (v87 + 15) & 0xFFFFFFF0;
              if (!v29)
              {
                v88 = 0;
              }

              *(this + 63) = v88;
              *(this + 372) = 0;
              *(this + 374) = v69;
              if (v67 == 1380401696)
              {
                v89 = v53 * ((v86 >> 1) & 0xFFFC);
                v29 = (v89 & 0xFFFFFFFF00000000) == 0;
                v90 = (v89 + 15) & 0xFFFFFFF0;
                if (!v29)
                {
                  v90 = 0;
                }

                *(this + 63) = v90;
                *(this + 294) = v68;
                *(this + 295) = 0;
                *(this + 297) = 0;
                *(this + 144) = precision;
                *(this + 145) = v74;
                *(this + 146) = 4;
                *(this + 71) = v90;
                *(this + 378) = 1;
              }

LABEL_275:
              if (v103)
              {
                image_info = 0;
                v78 = 3;
                if (v67 == 1196573017)
                {
                  v78 = 1;
                }

                if (v78 > NumberOfComponents || NumberOfComponents > v78 + 1)
                {
                  goto LABEL_66;
                }
              }

              if ((gIIODebugFlags & 0x80000000) == 0)
              {
                *(this + 376) = 1;
              }

              *(this + 61) = v53;
              *(this + 62) = v55;
              *(this + 49) = 1;
              v79 = *(this + 157);
              *(this + 63) = *(this + 156);
              *(this + 64) = v79;
              chroma_subsampling = applejpeg_decode_get_chroma_subsampling();
              if (chroma_subsampling <= 4 && ((0x1Bu >> chroma_subsampling) & 1) != 0)
              {
                *(this + 91) = dword_186225A3C[chroma_subsampling];
              }

              if (IIODictionary::containsKey(v5, @"kCGImageSourceUseHardwareAcceleration"))
              {
                v81 = IIODictionary::getBoolForKey(v5, @"kCGImageSourceUseHardwareAcceleration");
                if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
                {
                  v82 = "❌";
                  if (v81)
                  {
                    v82 = "✅";
                  }

                  ImageIOLog("••• UseHardwareAcceleration: %s  | %s:%d\n", v82, "initialize", 2128);
                }
              }

              else
              {
                if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
                {
                  ImageIOLog("••• UseHardwareAcceleration: not set  | %s:%d\n", "initialize", 2131);
                }

                v81 = 1;
              }

              if (v101)
              {
                if (v101 == 1)
                {
                  v81 = 1;
                }

                v83 = 0;
                v84 = *(this + 701);
                if (v84 != 255 || *(this + 158) == 1 || !v81)
                {
                  goto LABEL_313;
                }

                v83 = IIOHardwareDecodingEnabledFlag();
              }

              else
              {
                v83 = 0;
              }

              v84 = *(this + 701);
LABEL_313:
              *(this + 520) = v83;
              v91 = *(this + 61) * ((*(this + 128) + 7) >> 3 << (2 * (*(this + 129) != 8)));
              v29 = (v91 & 0xFFFFFFFF00000000) == 0;
              v92 = (v91 + 15) & 0xFFFFFFF0;
              if (!v29)
              {
                v92 = 0;
              }

              *(this + 71) = v92;
              v93 = (v84 == 255) & (v67 != 1129142603) & *(this + 369);
              v94 = 1;
              if (v93 == 1)
              {
                if (v83)
                {
                  v95 = 3;
                }

                else
                {
                  v95 = 4;
                }

                *(this + 473) = v95;
                v94 = 12;
              }

              *(this + 472) = 1;
              *(this + 204) = v94;
              v96 = *(this + 2);
              if (v96 && IIOImagePlus::sourceImageProvider(v96))
              {
                CGImageProviderSetProperty();
              }

              if ((gIIODebugFlags & 0x30000) != 0)
              {
                ImageIOLog("    %s:%d: useVersion3: %d\n", "initialize", 2207, v93);
              }

              goto LABEL_325;
            }

            v75 = (precision + 7) >> 3;
          }

          v76 = v53 * v75;
          if ((v76 & 0xFFFFFFFF00000000) != 0)
          {
            v77 = 0;
          }

          else
          {
            v77 = (v76 + 15) & 0xFFFFFFF0;
          }

          *(this + 63) = v77;
          *(this + 372) = 0;
          *(this + 374) = v69;
          goto LABEL_275;
        }

        if (v99 == 2)
        {
          if (v67 == 1129142603)
          {
            v69 = *(this + 697) ^ 1;
            if ((gIIODebugFlags & 0x8000300000) != 0)
            {
              if (*(this + 697))
              {
                v70 = "false";
              }

              else
              {
                v70 = "true";
              }

              ImageIOLog("COL           shouldInvert: %s\n", v70);
            }

            goto LABEL_257;
          }

          goto LABEL_256;
        }

        if (v99 == 1)
        {
          if ((gIIODebugFlags & 0x8000300000) != 0)
          {
            ImageIOLog("COL           shouldInvert: true\n");
          }

          goto LABEL_244;
        }

        if (v99)
        {
LABEL_257:
          if ((gIIODebugFlags & 0x8000000000) != 0)
          {
            v71 = *(this + 701);
            v72 = v71 > 2 ? "" : off_1E6F0B6B0[v71];
            ImageIOLog("COL           _aj._force_app14: %s\n", v72);
            if ((gIIODebugFlags & 0x8000300000) != 0)
            {
              ImageIOLog("COL              dimension: %d x %d\n", v53, v55);
              if ((gIIODebugFlags & 0x8000300000) != 0)
              {
                ImageIOLog("COL\n");
              }
            }
          }

          goto LABEL_264;
        }

        if (v67 == 1129142603)
        {
          if ((gIIODebugFlags & 0x8000300000) != 0)
          {
            ImageIOLog("COL           shouldInvert: true (icSigCmykData)\n");
          }

LABEL_244:
          v69 = 1;
          goto LABEL_257;
        }

        if (*(this + 697))
        {
          if ((gIIODebugFlags & 0x8000300000) != 0)
          {
            goto LABEL_255;
          }
        }

        else
        {
          *(this + 701) = 0;
          if ((gIIODebugFlags & 0x8000300000) != 0)
          {
LABEL_255:
            ImageIOLog("COL           shouldInvert: %s\n", "false");
          }
        }

LABEL_256:
        v69 = 0;
        goto LABEL_257;
      }

LABEL_147:
      v45 = 1;
      goto LABEL_148;
    }

    if (!AppleJPEGReadPlugin::readJFIFData(this, v106))
    {
      goto LABEL_325;
    }

    ExifData = AppleJPEGReadPlugin::readExifData(this, v5);
    XMPData = ExifData;
    if ((v7 | v102))
    {
      CGImageMetadataMerge(v105, ExifData, 0);
      if (!XMPData)
      {
LABEL_116:
        if (BoolForKey)
        {
          IIODictionary::removeObjectForKey(*(this + 7), @"kCGImageSourceAddMetadataFromPrimaryImage");
        }

        goto LABEL_118;
      }
    }

    else
    {
      if (ExifData)
      {
        CGImageMetadataMerge(v105, ExifData, v5);
        CFRelease(XMPData);
      }

      APP13 = AppleJPEGReadPlugin::readAPP13(this);
      if (APP13)
      {
        CGImageMetadataMerge(v105, APP13, v5);
        CFRelease(APP13);
      }

      XMPData = AppleJPEGReadPlugin::readXMPData(this, theData);
      if (!XMPData)
      {
        goto LABEL_116;
      }

      CGImageMetadataMerge(v105, XMPData, v5);
    }

    CFRelease(XMPData);
    goto LABEL_116;
  }

  if (v17 == 3)
  {
    if (*(this + 369) == 1)
    {
      _cg_jpeg_mem_term("initialize", 1493, "*** AppleJPEG returned APPLEJPEG_ERR_UNSUPPORTED falling back to libJPEG\n");
      IIONumber::IIONumber(&v108, 1279938631);
      IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_ostype");
      IIONumber::~IIONumber(&v108);
      IIONumber::IIONumber(&v108, *v13);
      IIODictionary::setObjectForKey(a2, value, @"NEW_PLUGIN_dataOffset");
      AppleJPEGReadPlugin::initialize(&v108);
      goto LABEL_65;
    }

    AppleJPEGReadPlugin::initialize();
    image_info = 3;
  }

  else
  {
    AppleJPEGReadPlugin::initialize(v17);
  }

LABEL_66:
  v21 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x1000000000) != 0)
  {
    v22 = "NO";
    if (*(this + 520))
    {
      v22 = "YES";
    }

    ImageIOLog("H   %s: image size: {%d, %d} rb: %d    subsample: %d    useHW: %s\n", "initialize", *(this + 61), *(this + 62), *(this + 63), *(this + 166), v22);
    v21 = gIIODebugFlags;
  }

  if ((*&v21 & 0x30000) != 0)
  {
    ImageIOLog("    %s:%d: returning err: %d\n", "initialize", 2215, image_info);
  }

  if (image_info)
  {
    kdebug_trace();
  }

  return image_info;
}

void sub_185E97480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_HardwareDecoderDefaultValue()
{
  if (IIO_HardwareDecoderDefaultValue::onceToken != -1)
  {
    IIO_HardwareDecoderDefaultValue_cold_1();
  }

  return IIO_HardwareDecoderDefaultValue::hwDecoderDefaultValue;
}

unint64_t IIOImageReadSession::seek(IIOImageReadSession *this, unint64_t a2, int a3)
{
  v4 = *(this + 4);
  if (!v4)
  {
    return -1;
  }

  Size = IIOImageRead::getSize(v4);
  if (a3)
  {
    if (a3 == 1)
    {
      a2 += *(this + 5);
    }

    else
    {
      v8 = -1;
      if (a3 != 2 || Size == -1)
      {
        return v8;
      }

      a2 += Size;
    }
  }

  if (Size != -1 && a2 > Size)
  {
    return -1;
  }

  v10 = *(this + 5);
  if (a2 < v10)
  {
    v10 = 0;
    *(this + 5) = 0;
  }

  if (a2 > v10)
  {
    IIOImageReadSession::skipBytes(this, a2 - v10);
    v10 = *(this + 5);
  }

  if (v10 == a2)
  {
    return a2;
  }

  else
  {
    return -1;
  }
}

void *AppleJPEGReadPlugin::appleJPEGDecodeSetup(void *this)
{
  if (!this[66])
  {
    v1 = this;
    this[84] = this[3];
    this[85] = this[26];
    this[86] = this[61];
    this[69] = 0;
    this[67] = iio_jpeg_Malloc;
    this[68] = iio_jpeg_Free;
    applejpeg_get_api_number();
    this = applejpeg_decode_create();
    v1[66] = this;
    *(v1 + 703) = 0;
  }

  return this;
}

AppleJPEGReadPlugin *AppleJPEGReadPlugin::appleJPEGDecodeOpen(AppleJPEGReadPlugin *this)
{
  v9[2] = *MEMORY[0x1E69E9840];
  Size = *(this + 61);
  if (!Size)
  {
    Size = IIOImageReadSession::getSize(*(this + 3));
  }

  *(this + 76) = Size;
  *(this + 70) = iioReadCallback;
  *(this + 73) = iioRewindCallback;
  *(this + 72) = iioSkipCallback;
  *(this + 74) = this + 672;
  v3 = applejpeg_decode_open_file();
  v4 = v3;
  if (v3)
  {
    v5 = AppleJPEGReadPlugin::appleJPEGErrorString(v3, v3);
    _cg_jpeg_mem_term("appleJPEGDecodeOpen", 1326, "*** ERROR: applejpeg_decode_open_file returned: %d '%s'    (jpegOffset: %d   jpegSize: %d) fileSize: %ld\n", v4, v5, *(this + 30), *(this + 61), *(this + 76));
    if (v4 == 4)
    {
      v9[0] = 0;
      v9[1] = 0;
      v6 = IIOImageReadSession::getSize(*(this + 3));
      if (v6 >= 0x10)
      {
        v7 = 16;
      }

      else
      {
        v7 = v6;
      }

      IIOImageReadSession::getBytesAtOffset(*(this + 3), v9, 0, v7);
      IIODumpMemory(v9, v7);
    }
  }

  return v4;
}

uint64_t iioReadCallback(unsigned __int8 *a1, int a2, IIOImageReadSession **a3)
{
  if (!a2)
  {
    return 0;
  }

  LODWORD(result) = IIOImageReadSession::getBytes(*a3, a1, a2);
  if (result)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t AppleJPEGReadPlugin::containsGainMap(IIO_Reader **this)
{
  v2 = IIO_Reader::minimumFileSize(this[3]);
  HasGainMap = IIO_Reader_AppleJPEG::HasGainMap(this[3], v3);
  IIOImageReadSession::seek(this[3], v2, 0);
  return HasGainMap;
}

uint64_t AppleJPEGReadPlugin::readJFIFData(IIOImageReadSession **this, IIODictionary *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  *v17 = 0;
  *v18 = 0;
  if (!a2)
  {
    return 1;
  }

  v19[0] = 0;
  if (IIOImageReadSession::getBytesAtOffset(this[3], v19, 2, 8) != 8)
  {
    return 0;
  }

  v4 = 2;
  while (1)
  {
    v5 = __rev16(LOWORD(v19[0]));
    if (v5 != 0xFFFF)
    {
      break;
    }

    LODWORD(v6) = 0;
    --v4;
LABEL_9:
    v4 += v6 + 2;
    if (IIOImageReadSession::getBytesAtOffset(this[3], v19, v4, 8) != 8)
    {
      return 0;
    }
  }

  if (v5 == 65498)
  {
    return 1;
  }

  v6 = __rev16(WORD1(v19[0]));
  if (v5 != 65504)
  {
    goto LABEL_9;
  }

  if (v6 <= 0xF)
  {
    AppleJPEGReadPlugin::readJFIFData(v19, v6, &v14);
    return v14;
  }

  BytesAtOffset = IIOImageReadSession::getBytesAtOffset(this[3], v17, v4 + 4, 16);
  if (BytesAtOffset == v6)
  {
LABEL_16:
    LOWORD(v17[1]) = bswap32(LOWORD(v17[1])) >> 16;
    LOWORD(v18[0]) = bswap32(LOWORD(v18[0])) >> 16;
    HIWORD(v18[0]) = bswap32(HIWORD(v18[0])) >> 16;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    IIOArray::IIOArray(&v14);
    IIONumber::IIONumber(v13, LOWORD(v17[1]));
    IIOArray::addObject(&v14, v13);
    IIONumber::~IIONumber(v13);
    IIONumber::IIONumber(v13, BYTE2(v17[1]) >> 4);
    IIOArray::addObject(&v14, v13);
    IIONumber::~IIONumber(v13);
    IIONumber::IIONumber(v13, BYTE2(v17[1]) & 0xF);
    IIOArray::addObject(&v14, v13);
    IIONumber::~IIONumber(v13);
    IIODictionary::setObjectForKeyGroup(a2, v15, @"JFIFVersion", @"{JFIF}");
    IIONumber::IIONumber(v13, LOWORD(v18[0]));
    IIODictionary::setObjectForKeyGroup(a2, v13, @"XDensity", @"{JFIF}");
    IIONumber::~IIONumber(v13);
    IIONumber::IIONumber(v13, HIWORD(v18[0]));
    IIODictionary::setObjectForKeyGroup(a2, v13, @"YDensity", @"{JFIF}");
    IIONumber::~IIONumber(v13);
    IIONumber::IIONumber(v13, HIBYTE(v17[1]));
    IIODictionary::setObjectForKeyGroup(a2, v13, @"DensityUnit", @"{JFIF}");
    IIONumber::~IIONumber(v13);
    if (HIBYTE(v17[1]) == 2)
    {
      LOWORD(v9) = v18[0];
      *&v12 = v9 * 2.54;
      v10 = *&v12;
      LOWORD(v12) = HIWORD(v18[0]);
      v11 = v12 * 2.54;
    }

    else
    {
      v10 = 0.0;
      v11 = 0.0;
      if (HIBYTE(v17[1]) == 1)
      {
        LOWORD(v9) = v18[0];
        v10 = v9;
        LOWORD(v9) = HIWORD(v18[0]);
        v11 = v9;
      }
    }

    if (ValidDPI(v10) && ValidDPI(v11))
    {
      IIONumber::IIONumber(v13, v10);
      IIODictionary::setObjectForKey(a2, v13, @"DPIWidth");
      IIONumber::~IIONumber(v13);
      IIONumber::IIONumber(v13, v11);
      IIODictionary::setObjectForKey(a2, v13, @"DPIHeight");
      IIONumber::~IIONumber(v13);
    }

    IIOArray::~IIOArray(&v14);
  }

  else
  {
    if (BytesAtOffset + 4 == v6)
    {
      _cg_jpeg_mem_term("readJFIFData", 485, "*** APP0 marker indicating depth/disparity...\n");
      goto LABEL_16;
    }

    AppleJPEGReadPlugin::readJFIFData(v6);
  }

  return 1;
}

void sub_185E97BE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIONumber::~IIONumber(&a9);
  IIOArray::~IIOArray(&a12);
  _Unwind_Resume(a1);
}

CGImageMetadata *AppleJPEGReadPlugin::readExifData(IIOImageReadSession **this, IIODictionary *a2)
{
  v29 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2000000000;
  v45 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2000000000;
  v43 = 0;
  v4 = 2;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  while (2)
  {
    for (i = v4 + 10; ; ++i)
    {
      if (IIOImageReadSession::getBytesAtOffset(this[3], &v48, i - 10, 4) != 4)
      {
        goto LABEL_21;
      }

      v6 = bswap32(v48) >> 16;
      if (v6 != 0xFFFF)
      {
        break;
      }
    }

    if (v6 == 65498)
    {
      goto LABEL_21;
    }

    v7 = __rev16(HIWORD(v48));
    if (v6 == 65504)
    {
      v29 = 1;
      goto LABEL_14;
    }

    if (v6 != 65505 || v7 < 0xB)
    {
      goto LABEL_14;
    }

    if (IIOImageReadSession::getBytesAtOffset(this[3], &v46, i - 6, 6) != 6)
    {
LABEL_21:
      Mutable = 0;
      goto LABEL_22;
    }

    if (v46 ^ 0x66697845 | v47)
    {
LABEL_14:
      v4 = i + v7 - 8;
      continue;
    }

    break;
  }

  if (v7 < 0x15)
  {
    goto LABEL_21;
  }

  v8 = IIOMetadataFlagsFromImageSourceOptions(a2);
  v9 = malloc_type_malloc(v7 - 6, 0x100004077774924uLL);
  if (!v9)
  {
    goto LABEL_21;
  }

  if (IIOImageReadSession::getBytesAtOffset(this[3], v9, i, v7 - 6) != v7 - 6)
  {
    free(v9);
    goto LABEL_21;
  }

  if (v8)
  {
    Mutable = CGImageMetadataCreateMutable();
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = ___ZN19AppleJPEGReadPlugin12readExifDataEP13IIODictionarybb_block_invoke;
    v34[3] = &unk_1E6F0B5D8;
    v34[8] = Mutable;
    v34[9] = i - 10;
    v35 = v8;
    v34[4] = v44;
    v34[5] = &v40;
    v34[6] = &v36;
    v34[7] = this;
    EnumerateExifDataUsingBlock(v9, v7 - 6, v34);
    if (v41[3] && *(v37 + 6))
    {
      v33 = 0;
      memset(v32, 0, sizeof(v32));
      IIOScanner::IIOScanner(v32, v9, v7 - 6, 0);
      v22 = v41[3];
      if (v22 - IIOScanner::seek(v32, v22 - i) == i && IIOScanner::getVal16(v32) == 65496 && !v33)
      {
        while (1)
        {
          Val16 = IIOScanner::getVal16(v32);
          v24 = IIOScanner::getVal16(v32);
          if (Val16 == 65472)
          {
            break;
          }

          IIOScanner::skip(v32, v24 - 2);
          if (Val16 == 65498 || v33)
          {
            goto LABEL_37;
          }
        }

        IIOScanner::skip(v32, 1uLL);
        v25 = IIOScanner::getVal16(v32);
        v26 = IIOScanner::getVal16(v32);
        IIONumber::IIONumber(v30, v26);
        v27 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"iio", @"JPEGInterchangeFormatWidth", kCGImageMetadataTypeDefault, value);
        IIONumber::~IIONumber(v30);
        if (v27)
        {
          CGImageMetadataSetTagWithPath(Mutable, 0, @"iio:JPEGInterchangeFormatWidth", v27);
          CFRelease(v27);
        }

        IIONumber::IIONumber(v30, v25);
        v28 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"iio", @"JPEGInterchangeFormatHeight", kCGImageMetadataTypeDefault, value);
        IIONumber::~IIONumber(v30);
        if (v28)
        {
          CGImageMetadataSetTagWithPath(Mutable, 0, @"iio:JPEGInterchangeFormatHeight", v28);
          CFRelease(v28);
        }
      }

LABEL_37:
      IIOScanner::~IIOScanner(v32);
    }
  }

  else
  {
    Mutable = CreateMetadataFromDatabuffer(v9, v7 - 6);
  }

  free(v9);
LABEL_22:
  if (v29)
  {
    TopLevelTag = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormat");
    v12 = TopLevelTag;
    if (TopLevelTag)
    {
      v13 = CGImageMetadataTagGetValue(TopLevelTag);
      IntValue = CFStringGetIntValue(v13);
      v41[3] = IntValue;
      LOWORD(v32[0]) = 0;
      IIOImageReadSession::getBytesAtOffset(this[3], v32, IntValue, 2);
      if (LOWORD(v32[0]) != 55551 && LOWORD(v32[0]) != 65496)
      {
        v15 = v41[3] + 18;
        v41[3] = v15;
        IIOImageReadSession::getBytesAtOffset(this[3], v32, v15, 2);
        if (LOWORD(v32[0]) == 65496 || LOWORD(v32[0]) == 55551)
        {
          v16 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%lld", v41[3]);
          if (v16)
          {
            CGImageMetadataTagSetValue(v12, v16);
            CFRelease(v16);
          }
        }

        else
        {
          v17 = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormat");
          CGImageMetadataRemoveTag(Mutable, v17);
          v18 = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatLength");
          CGImageMetadataRemoveTag(Mutable, v18);
          v19 = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatWidth");
          CGImageMetadataRemoveTag(Mutable, v19);
          v20 = CGImageMetadataGetTopLevelTag(Mutable, @"http://ns.apple.com/ImageIO/1.0/", @"JPEGInterchangeFormatHeight");
          CGImageMetadataRemoveTag(Mutable, v20);
        }
      }
    }
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(v44, 8);
  return Mutable;
}

void sub_185E98224(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIONumber::~IIONumber(va);
  __cxa_begin_catch(a1);
  CGImageMetadataRemoveTagWithPath(v4, 0, @"iio:JPEGInterchangeFormatWidth");
  CGImageMetadataRemoveTagWithPath(v4, 0, @"iio:JPEGInterchangeFormatHeight");
  __cxa_end_catch();
  JUMPOUT(0x185E980D4);
}

void sub_185E98294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x185E982CCLL);
}

void sub_185E982C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 200), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

_DWORD *AppleJPEGReadPlugin::readICCData(IIOImageReadSession **this, unint64_t a2, uint64_t a3, unint64_t *a4, unsigned int *a5)
{
  v8 = a3 + 2;
  *a4 = 0;
  if (a2 && v8 > a2)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0;
  v26 = 0;
  while (IIOImageReadSession::getBytesAtOffset(this[3], &v26, v8, 4) == 4)
  {
    v11 = bswap32(v26) >> 16;
    v12 = bswap32(HIWORD(v26)) >> 16;
    if ((v11 + 64) > 2u)
    {
      if (v11 != 65506)
      {
        if (v11 == 65498)
        {
          break;
        }

        goto LABEL_32;
      }

      if (v12 < 0x10)
      {
        break;
      }

      v14 = malloc_type_malloc(v12, 0x100004077774924uLL);
      if (IIOImageReadSession::getBytesAtOffset(this[3], v14, v8 + 4, v12) != v12)
      {
        if (!v14)
        {
          break;
        }

LABEL_36:
        free(v14);
        break;
      }

      if (*v14 == 0x464F52505F434349 && *(v14 + 3) == 0x454C49464F52505FLL)
      {
        v18 = v10;
        v25 = a5;
        v19 = v12 - 16;
        if (v9)
        {
          v20 = v19 + v18;
          v9 = reallocf(v9, v19 + v18);
        }

        else
        {
          v9 = malloc_type_malloc(v12 - 16, 0x100004077774924uLL);
          v20 = v19 + v18;
        }

        memcpy(v9 + v18, v14 + 14, v12 - 16);
        v10 = v20;
        a5 = v25;
      }

      goto LABEL_31;
    }

    if (v12 < 6)
    {
      goto LABEL_32;
    }

    v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    if (IIOImageReadSession::getBytesAtOffset(this[3], v13, v8 + 4, v12) != v12)
    {
      goto LABEL_36;
    }

    v15 = *(v14 + 5);
    switch(v15)
    {
      case 1:
        v16 = 1196573017;
        goto LABEL_28;
      case 4:
        v16 = 1129142603;
        goto LABEL_28;
      case 3:
        v16 = 1380401696;
LABEL_28:
        *a5 = v16;
        break;
    }

LABEL_31:
    free(v14);
LABEL_32:
    v8 += v12 + 2;
    if (a2 && v8 > a2)
    {
      break;
    }
  }

  if (v9)
  {
    *a4 = v10;
    if (v10 >= 0x80)
    {
      v21 = v9[9];
      v22 = bswap32(*v9);
      if (v10 < v22)
      {
        LogError("readICCData", 1273, "Embedded profile header length is greater than data length.\n");
      }

      if (v21 == 1886610273)
      {
        if (*a4 >= v22)
        {
          return v9;
        }
      }

      else
      {
        LogError("readICCData", 1275, "Embedded profile signature is not valid.\n");
      }
    }

    free(v9);
    v9 = 0;
    *a4 = 0;
  }

  return v9;
}

CGColorSpaceRef createColorSpaceFromMetadata(const void *a1, int a2, _BYTE *a3)
{
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = 0.0;
  v20 = 0.0;
  v25 = 0.0;
  TopLevelTag = CGImageMetadataGetTopLevelTag(a1, @"http://cipa.jp/exif/1.0/", @"Gamma");
  Source = CGImageSourceGetSource(TopLevelTag);
  v8 = 0.0;
  if (Source)
  {
    v9 = Source;
    Source = Source[1].data;
    if (Source)
    {
      if (LODWORD(v9[1].info) == 1)
      {
        LODWORD(Source) = GetDoubleFromPropertyValue(Source, &v25);
        v8 = v25;
      }

      else
      {
        LODWORD(Source) = 0;
      }
    }
  }

  if ((a2 & ~Source) != 0)
  {
    v10 = 2.2;
  }

  else
  {
    v10 = v8;
  }

  if ((Source & 1) == 0 && !a2)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"WhitePoint", 0, &v24 + 1);
  if (!v11)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"WhitePoint", 1u, &v24);
  if (!v12)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 0, &v23 + 1);
  if (!v13)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 1u, &v23);
  if (!v14)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 2u, &v22 + 1);
  if (!v15)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 3u, &v22);
  if (!v16)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 4u, &v21);
  if (!v17)
  {
    return 0;
  }

  CGImageMetadataGetFloatAtIndex(a1, @"http://ns.adobe.com/tiff/1.0/", @"PrimaryChromaticities", 5u, &v20);
  if (!v18)
  {
    return 0;
  }

  if (!IIOChromaticitiesMatchAdobeRGB(*(&v24 + 1), *&v24, *(&v23 + 1), *&v23, *(&v22 + 1), *&v22, v21, v20, v10))
  {
    return CGColorSpaceCreateCalRGB(*(&v24 + 1), *&v24, *(&v23 + 1), *&v23, *(&v22 + 1), *&v22, v21, v20, v10);
  }

  if (a3)
  {
    *a3 = 1;
  }

  return CGColorSpaceCreateWithName(*MEMORY[0x1E695F0A0]);
}

float CGImageMetadataGetFloatAtIndex(const CGImageMetadata *a1, const __CFString *a2, const __CFString *a3, unsigned int a4, float *a5)
{
  v12 = 0.0;
  TopLevelTag = CGImageMetadataGetTopLevelTag(a1, a2, a3);
  Source = CGImageSourceGetSource(TopLevelTag);
  if (Source)
  {
    v10 = *(Source + 48);
    if (v10)
    {
      if (*(Source + 40) == 3 && CFArrayGetCount(*(Source + 48)) > a4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, a4);
        if (ValueAtIndex)
        {
          GetDoubleFromPropertyValue(ValueAtIndex, &v12);
        }
      }
    }
  }

  if (a5)
  {
    result = v12;
    *a5 = result;
  }

  return result;
}

uint64_t AppleJPEGReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  switch(v2)
  {
    case 123:
      return IIOReadPlugin::setupImageProviderCallbackV3(a1, a2);
    case 12:
      return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
    case 1:
      return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t IIO_Reader_AppleJPEG::compareOptions(IIO_Reader_AppleJPEG *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v22, 0, sizeof(v22));
  IIODictionary::IIODictionary(v22, a2);
  memset(v21, 0, sizeof(v21));
  IIODictionary::IIODictionary(v21, a3);
  Uint32ForKey = IIODictionary::getUint32ForKey(v22, @"kCGImageSourceSubsampleFactor");
  v6 = IIODictionary::getUint32ForKey(v21, @"kCGImageSourceSubsampleFactor");
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

  if (v7 == v8 && (BoolForKey = IIODictionary::getBoolForKey(v22, @"kCGImageSourceUseCoreImage"), BoolForKey == IIODictionary::getBoolForKey(v21, @"kCGImageSourceUseCoreImage")) && (ObjectForKey = IIODictionary::getObjectForKey(v22, @"kCGImageSourceXMPSidecar"), v11 = IIODictionary::getObjectForKey(v21, @"kCGImageSourceXMPSidecar"), (ObjectForKey != 0) == (v11 != 0)) && (!ObjectForKey || !v11 || CFEqual(ObjectForKey, v11)) && (v12 = IIOSkipMetadata(v22), IIOSkipMetadata(v21) & 1 | ((v12 & 1) == 0)) && (v13 = IIODictionary::getBoolForKey(v22, @"kCGImageSourceAddJPEGQualityInformation"), v13 == IIODictionary::getBoolForKey(v21, @"kCGImageSourceAddJPEGQualityInformation")) && (v14 = IIODictionary::getBoolForKey(v22, @"kCGImageSourceAddThumbnailInformation"), v14 == IIODictionary::getBoolForKey(v21, @"kCGImageSourceAddThumbnailInformation")) && (v15 = IIODictionary::getBoolForKey(v22, @"kCGImageSourceUseHardwareAcceleration"), v15 == IIODictionary::getBoolForKey(v21, @"kCGImageSourceUseHardwareAcceleration")))
  {
    Value = CFDictionaryGetValue(a2, @"kCGImageSourceDecodeRequest");
    v19 = CFDictionaryGetValue(a3, @"kCGImageSourceDecodeRequest");
    if (Value && v19)
    {
      v20 = CFStringCompare(Value, v19, 0) == kCFCompareEqualTo;
    }

    else
    {
      v20 = (Value | v19) == 0;
    }

    v16 = v20;
  }

  else
  {
    v16 = 0;
  }

  IIODictionary::~IIODictionary(v21);
  IIODictionary::~IIODictionary(v22);
  return v16;
}

void sub_185E98B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  IIODictionary::~IIODictionary(&a9);
  IIODictionary::~IIODictionary(&a12);
  _Unwind_Resume(a1);
}

void png_handle_gAMA(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    png_crc_finish(a1, a3);
    v5 = "out of place";
LABEL_9:

    png_chunk_benign_error(a1, v5);
    return;
  }

  if (a3 != 4)
  {
    png_crc_finish(a1, a3);
    v5 = "invalid";
    goto LABEL_9;
  }

  v8 = 0;
  png_crc_read(a1, &v8, 4u);
  if (!png_crc_finish(a1, 0))
  {
    if (v8 << 24 < 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = _byteswap_ulong(v8);
    }

    if (a1 + 1200 > (a1 + 1276))
    {
      __break(0x5519u);
    }

    else
    {
      png_colorspace_set_gamma(a1, a1 + 1200, v7);
      png_colorspace_sync(a1, a2);
    }
  }
}

uint64_t png_colorspace_set_gamma(uint64_t result, uint64_t a2, int a3)
{
  if ((a3 - 625000001) < 0xDABF41CF)
  {
    v4 = *(a2 + 74);
    v5 = "gamma value out of range";
LABEL_6:
    *(a2 + 74) = v4 | 0x8000;

    return png_chunk_report(result, v5, 1);
  }

  v4 = *(a2 + 74);
  if ((*(result + 77) & 0x80) != 0 && (v4 & 8) != 0)
  {
    v5 = "duplicate";
    goto LABEL_6;
  }

  if ((*(a2 + 74) & 0x8000) == 0)
  {
    result = png_colorspace_check_gamma(result, a2, a3, 1);
    if (result)
    {
      *a2 = a3;
      *(a2 + 74) = v4 | 9;
    }
  }

  return result;
}

uint64_t __IIOXPCLog_block_invoke()
{
  result = IIO_OSAppleInternalBuild();
  if (result)
  {
    IIOXPCLog::logXPC = (gIIODebugFlags & 0xC0000) != 0;
  }

  return result;
}

void sub_185E98E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

__IOSurface *IIOImageProviderInfo::CopyIOSurface(uint64x2_t **a1, const void *a2, const __CFDictionary *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    CGImageProviderGetBitmapInfo();
    v6 = *a1;
    IIOPackCopyCallbackInfo(*a1, a3);
    if (v6)
    {
      v7 = v6[8].i32[2];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = v7;
  kdebug_trace();
  IIOInitDebugFlags();
  if (!a1)
  {
    goto LABEL_40;
  }

  if ((gIIODebugFlags & 0xC000) != 0)
  {
    *__str = 0;
    v9 = v8 >> 24;
    v10 = MEMORY[0x1E69E9830];
    v11 = (v8 >> 24) <= 0x7F ? *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000 : __maskrune(v8 >> 24, 0x40000uLL);
    v12 = v11 ? v9 : 46;
    v13 = v8 << 8 >> 24;
    v14 = v13 <= 0x7F ? *(v10 + 4 * v13 + 60) & 0x40000 : __maskrune(v8 << 8 >> 24, 0x40000uLL);
    v15 = v14 ? v13 : 46;
    v16 = v8 >> 8;
    v17 = v16 <= 0x7F ? *(v10 + 4 * v16 + 60) & 0x40000 : __maskrune(v8 >> 8, 0x40000uLL);
    v18 = v17 ? v16 : 46;
    v19 = v8 <= 0x7F ? *(v10 + 4 * v8 + 60) & 0x40000 : __maskrune(v8, 0x40000uLL);
    v20 = v19 ? v8 : 46;
    snprintf(__str, 8uLL, "%c%c%c%c", v12, v15, v18, v20);
    if (gIIODebugFlags >> 14)
    {
      ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CopyIOSurface", a2, __str, -1, a3);
    }
  }

  if (v6 && (v21 = IIOImageProviderInfo::copyIOSurface(v6, a2, a3), (v22 = v21) != 0))
  {
    valuePtr = 0.0;
    v23 = IOSurfaceCopyValue(v21, @"IOSurfaceContentHeadroom");
    v24 = v23;
    if (v23)
    {
      v25 = CFGetTypeID(v23);
      if (v25 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v24, kCFNumberFloatType, &valuePtr);
      }

      CFRelease(v24);
    }

    else
    {
      CGImageProviderGetContentHeadroom();
      v27 = v26;
      valuePtr = v26;
      if ((gIIODebugFlags & 0x300000) != 0)
      {
        ImageIOLog("☀️  %s - updating <IOSurface: %p>  headroom: %g\n", "CopyIOSurface", v22, v26);
      }

      IIONumber::IIONumber(__str, v27);
      IOSurfaceSetValue(v22, @"IOSurfaceContentHeadroom", value[0]);
      IIONumber::~IIONumber(__str);
    }

    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    *__str = 0u;
    *value = 0u;
    if (!IOSurfaceGetBulkAttachments() && !WORD5(v38))
    {
      ContentAverageLightLevelNits = CGImageProviderGetContentAverageLightLevelNits();
      WORD5(v38) = ContentAverageLightLevelNits;
      if (ContentAverageLightLevelNits)
      {
        v29 = WORD4(v38);
        if (!WORD4(v38))
        {
          v29 = vcvtps_s32_f32(valuePtr * 203.0);
          WORD4(v38) = v29;
        }

        if ((gIIODebugFlags & 0x300000) != 0)
        {
          ImageIOLog("☀️  %s - updating <IOSurface: %p>  maxContentLightLevel: %d, maxFrameAverageLightLevel: %d\n", "CopyIOSurface", v22, v29, ContentAverageLightLevelNits);
        }

        v30 = IOSurfaceSetBulkAttachments2();
        if (v30)
        {
          _cg_jpeg_mem_term("CopyIOSurface", 2778, "*** ERROR: IOSurfaceSetBulkAttachments2 failed [%ld]\n", v30);
        }
      }
    }

    IOSurfaceGetWidth(v22);
    IOSurfaceGetHeight(v22);
    IOSurfaceGetPixelFormat(v22);
  }

  else
  {
LABEL_40:
    kdebug_trace();
    v22 = 0;
  }

  kdebug_trace();
  return v22;
}

void sub_185E99304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t AppleJPEGReadPlugin::copyIOSurfaceImp(uint64_t a1, int a2, __CFDictionary *a3, void *a4)
{
  v56[0] = 0;
  memset(v55, 0, sizeof(v55));
  IIODictionary::IIODictionary(v55, a3);
  if (*(a1 + 24))
  {
    IIO_LoadHEIFSymbols();
    v6 = *(a1 + 24);
    if (v6)
    {
      v7 = IIOImageReadSession::mapData(v6);
    }

    else
    {
      v7 = 0;
    }

    v54 = 0;
    v9 = *MEMORY[0x1E695E480];
    v10 = gFunc_CMPhotoDecompressionSessionCreate(*MEMORY[0x1E695E480], 0, &v54);
    updated = v10;
    if (v10)
    {
      v11 = IIOCMErrorString(v10);
      LogError("copyIOSurfaceImp", 3782, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v11, updated);
    }

    else
    {
      cf = 0;
      v52 = 0;
      v51 = 0;
      Size = IIOImageReadSession::getSize(*(a1 + 24));
      v15 = IIOImageReadSession::retainBytePointer(*(a1 + 24), &v51, 1);
      v16 = v15;
      if (v15)
      {
        v17 = *(a1 + 480);
        if (v17)
        {
          v18 = *(a1 + 488);
          if (v18)
          {
            v19 = v18 + v17 > Size;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            v17 = 0;
          }

          else
          {
            Size = *(a1 + 488);
          }

          v16 = v15 + v17;
        }

        v21 = CFDataCreateWithBytesNoCopy(v9, v16, Size, *MEMORY[0x1E695E498]);
        if (v21)
        {
          v23 = gFunc_CMPhotoDecompressionSessionCreateContainer(v54, 0, v21, &v52, &cf);
          updated = v23;
          if (v23)
          {
            v24 = IIOCMErrorString(v23);
            v22 = _cg_jpeg_mem_term("copyIOSurfaceImp", 3821, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v24, updated);
          }

          else
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            IIODictionary::IIODictionary(&v48);
            Uint32ForKey = IIODictionary::getUint32ForKey(v55, @"kCGImageSurfaceFormatRequest");
            v26 = *(a1 + 340);
            if (v26 == 1196573017)
            {
              v27 = 1278226488;
            }

            else if (v26 == 1380401696)
            {
              v27 = 875704422;
              if (!*(a1 + 700))
              {
                if (*(a1 + 437))
                {
                  v27 = 1380401729;
                }

                else
                {
                  v27 = 1111970369;
                }
              }

              if (Uint32ForKey == 875704422 || Uint32ForKey == 1380401729 || Uint32ForKey == 1111970369)
              {
                v27 = Uint32ForKey;
              }
            }

            else
            {
              v27 = 0;
            }

            IIONumber::IIONumber(v47, v27);
            IIODictionary::setObjectForKey(&v48, v47, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
            IIONumber::~IIONumber(v47);
            IIODictionary::setObjectForKey(&v48, *MEMORY[0x1E695E4C0], *gIIO_kCMPhotoDecompressionOption_ApplyTransform);
            if (*(a1 + 308) <= *(a1 + 312))
            {
              v28 = *(a1 + 312);
            }

            else
            {
              v28 = *(a1 + 308);
            }

            IIONumber::IIONumber(v47, v28);
            IIODictionary::setObjectForKey(&v48, v47, *gIIO_kCMPhotoDecompressionOption_MaxPixelSize);
            IIONumber::~IIONumber(v47);
            IIONumber::IIONumber(v47, 1);
            IIODictionary::setObjectForKey(&v48, v47, *gIIO_kCMPhotoDecompressionOption_TiledDownsampling);
            IIONumber::~IIONumber(v47);
            if (*(a1 + 232) == 2 && *(a1 + 476) != 1920231541)
            {
              ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateThumbnailImageForIndex(cf, 0, 0, v49, 1, v56);
            }

            else
            {
              ThumbnailImageForIndex = gFunc_CMPhotoDecompressionContainerCreateImageForIndex(cf, 0, v49, 1, v56);
            }

            updated = ThumbnailImageForIndex;
            if (ThumbnailImageForIndex)
            {
              v30 = IIOCMErrorString(ThumbnailImageForIndex);
              _cg_jpeg_mem_term("copyIOSurfaceImp", 3881, "*** CoSurfaceMPhotoDecompressionContainerCreateImageForIndex  err = %s [%d]\n", v30, updated);
              LODWORD(v31) = HIBYTE(v27);
              v32 = MEMORY[0x1E69E9830];
              if ((*(MEMORY[0x1E69E9830] + 4 * HIBYTE(v27) + 60) & 0x40000) != 0)
              {
                v31 = v31;
              }

              else
              {
                v31 = 46;
              }

              v46 = v31;
              v33 = (v27 << 8) >> 24;
              if (v33 <= 0x7F)
              {
                v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
              }

              else
              {
                v34 = __maskrune((v27 << 8) >> 24, 0x40000uLL);
              }

              if (v34)
              {
                v38 = v33;
              }

              else
              {
                v38 = 46;
              }

              v39 = v27 >> 8;
              if (v39 <= 0x7F)
              {
                v40 = *(v32 + 4 * v39 + 60) & 0x40000;
              }

              else
              {
                v40 = __maskrune(v27 >> 8, 0x40000uLL);
              }

              v27 = v27;
              if (v27 <= 0x7F)
              {
                v41 = *(v32 + 4 * v27 + 60) & 0x40000;
              }

              else
              {
                v41 = __maskrune(v27, 0x40000uLL);
              }

              if (v40)
              {
                v42 = v39;
              }

              else
              {
                v42 = 46;
              }

              if (v41)
              {
                v43 = v27;
              }

              else
              {
                v43 = 46;
              }

              *&v44 = _cg_jpeg_mem_term("copyIOSurfaceImp", 3882, "    outputPixelFormat: %c%c%c%c\n", v46, v38, v42, v43).n128_u64[0];
              _cg_jpeg_mem_term(v49, 4, "cmPhotoContainer", v44);
            }

            else
            {
              if (gFunc_CMPhotoDecompressionSessionDetachSurface)
              {
                v35 = gFunc_CMPhotoDecompressionSessionDetachSurface(v54, v56[0]);
                v36 = v35;
                if (v35)
                {
                  v37 = IIOCMErrorString(v35);
                  _cg_jpeg_mem_term("copyIOSurfaceImp", 3894, "*** CMPhotoDecompressionSessionDetachSurface  err = %s [%d]\n", v37, v36);
                }
              }

              updated = IIO_UpdateIOSurfaceOwnershipIdentity();
            }

            CFRelease(cf);
            IIODictionary::~IIODictionary(&v48);
          }
        }

        else
        {
          updated = 0;
        }

        gFunc_CMPhotoDecompressionSessionFlushCachedBuffers(v54, 0, 0, v22);
        CFRelease(v54);
        if (v21)
        {
          CFRelease(v21);
        }

        if (v51)
        {
          v45 = *(a1 + 24);
          if (v45)
          {
            IIOImageReadSession::releaseBytePointer(v45, v51);
          }
        }
      }

      else
      {
        LogError("copyIOSurfaceImp", 3800, "retainBytePointer failed\n");
        updated = 0;
      }
    }

    if (v7)
    {
      v12 = *(a1 + 24);
      if (v12)
      {
        IIOImageReadSession::unmapData(v12);
      }
    }

    if (a4)
    {
      *a4 = v56[0];
    }
  }

  else
  {
    updated = 4294967246;
  }

  IIODictionary::~IIODictionary(v55);
  return updated;
}

void sub_185E99900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va2, a6);
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

__IOSurface *IIOImageProviderInfo::copyIOSurface(uint64_t a1, const void *a2, uint64_t a3)
{
  v5 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x400000000000) != 0)
  {
    ImageIOLog("\n");
    ImageIOLog("*** copyIOSurface *** %p\n", a2);
    v5 = gIIODebugFlags;
  }

  if ((v5 & 0xC) != 0)
  {
    *(a1 + 144) = CFAbsoluteTimeGetCurrent();
  }

  if (!*(a1 + 232))
  {
    v15 = gIIODebugFlags;
    if ((gIIODebugFlags & 0x400000000000) == 0)
    {
      v16 = 0;
      goto LABEL_30;
    }

LABEL_29:
    ImageIOLog("    copyIOSurface - IOSurface = NULL\n");
    v16 = 0;
    v15 = gIIODebugFlags;
LABEL_30:
    if (v16 || (v15 & 0x800000000000) == 0)
    {
      return v16;
    }

    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "copyIOSurface", 2478, "returned ioSurface is NULL\n");
    return 0;
  }

  v7 = *(a1 + 120);
  if (!v7)
  {
    v8 = 0;
LABEL_16:
    LogFault("copyIOSurface", 2427, "header '%p' is not a CFDictionary...\n", v8);
    return 0;
  }

  v8 = *v7;
  if (!*v7)
  {
    goto LABEL_16;
  }

  v9 = CFGetTypeID(*v7);
  if (v9 != CFDictionaryGetTypeID())
  {
    goto LABEL_16;
  }

  pthread_mutex_lock((a1 + 152));
  v10 = *MEMORY[0x1E695E4D0];
  if (v10 == CFDictionaryGetValue(v8, @"kImageIOInfoHeader_pluginHandlesReMapping") || (Value = CFDictionaryGetValue(v8, @"kImageIOInfoHeader_session")) == 0)
  {
    v14 = 0;
    v13 = 0;
  }

  else
  {
    Source = CGImageSourceGetSource(Value);
    v13 = Source;
    if (Source)
    {
      v14 = IIOImageReadSession::mapData(Source);
    }

    else
    {
      v14 = 0;
    }
  }

  v16 = (*(a1 + 232))(*(a1 + 120), *(a1 + 16), a3);
  if (v16 && (gIIODebugFlags & 0xC) != 0)
  {
    *(a1 + 144) = CFAbsoluteTimeGetCurrent() - *(a1 + 144);
    IIOImageProviderInfo::logSurfaceDecodingTime(a1, v16);
  }

  v17 = !v14;
  if (!v13)
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    IIOImageReadSession::unmapData(v13);
  }

  pthread_mutex_unlock((a1 + 152));
  v15 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x400000000000) == 0)
  {
    goto LABEL_30;
  }

  if (!v16)
  {
    goto LABEL_29;
  }

  Width = IOSurfaceGetWidth(v16);
  Height = IOSurfaceGetHeight(v16);
  BytesPerRow = IOSurfaceGetBytesPerRow(v16);
  PixelFormat = IOSurfaceGetPixelFormat(v16);
  v22 = PixelFormat;
  v23 = PixelFormat >> 24;
  v24 = MEMORY[0x1E69E9830];
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v25 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
  }

  else
  {
    v25 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  if (v25)
  {
    v27 = v23;
  }

  else
  {
    v27 = 46;
  }

  v28 = (v22 << 8) >> 24;
  if (v28 <= 0x7F)
  {
    v29 = *(v24 + 4 * v28 + 60) & 0x40000;
  }

  else
  {
    v29 = __maskrune((v22 << 8) >> 24, 0x40000uLL);
  }

  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 46;
  }

  LODWORD(v31) = v22 >> 8;
  if (v31 <= 0x7F)
  {
    v32 = *(v24 + 4 * v31 + 60) & 0x40000;
  }

  else
  {
    v32 = __maskrune(v22 >> 8, 0x40000uLL);
  }

  if (v32)
  {
    v31 = v31;
  }

  else
  {
    v31 = 46;
  }

  v22 = v22;
  if (v22 <= 0x7F)
  {
    v33 = *(v24 + 4 * v22 + 60) & 0x40000;
  }

  else
  {
    v33 = __maskrune(v22, 0x40000uLL);
  }

  if (v33)
  {
    v34 = v22;
  }

  else
  {
    v34 = 46;
  }

  ImageIOLog("    copyIOSurface - <IOSurface:%p> '%c%c%c%c'  {%ld, %ld} rb: %ld\n", v16, v27, v30, v31, v34, Width, Height, BytesPerRow);
  return v16;
}

IOSurfaceRef IIO_Reader::CopyIOSurfaceProc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SurfaceWithFormat = 0;
  v6 = *(a1 + 8);
  if ((*(*v6 + 80))(v6, a3))
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }

  v7 = (*(*v6 + 32))(v6);
  v8 = *(v6 + 55);
  v9 = v8 >> 24;
  if ((v8 >> 24) <= 0x7F)
  {
    v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune(v9, 0x40000uLL);
    v8 = *(v6 + 55);
  }

  if (v10)
  {
    v11 = (v8 >> 24);
  }

  else
  {
    v11 = 46;
  }

  v12 = v8 << 8 >> 24;
  if (v12 <= 0x7F)
  {
    v13 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(v12, 0x40000uLL);
    v8 = *(v6 + 55);
  }

  if (v13)
  {
    v14 = (v8 << 8 >> 24);
  }

  else
  {
    v14 = 46;
  }

  v15 = v8 >> 8;
  if (v15 <= 0x7F)
  {
    v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
  }

  else
  {
    v16 = __maskrune(v15, 0x40000uLL);
    v8 = *(v6 + 55);
  }

  if (v16)
  {
    v17 = (v8 >> 8);
  }

  else
  {
    v17 = 46;
  }

  if (v8 <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v8 + 60) & 0x40000) != 0)
    {
      goto LABEL_22;
    }

LABEL_24:
    v18 = 46;
    goto LABEL_25;
  }

  if (!__maskrune(v8, 0x40000uLL))
  {
    goto LABEL_24;
  }

LABEL_22:
  v18 = *(v6 + 220);
LABEL_25:
  _cg_jpeg_mem_term("CopyIOSurfaceProc", 1609, "*** IIO_Reader::CopyIOSurfaceProc - using new '%c%c%c%c'- callDecodeImage [kIIOImageType_IOSurface]\n", v11, v14, v17, v18);
  CGImageProviderGetSize();
  v20 = v19;
  v22 = v21;
  if (v7)
  {
    v23 = (*(*v6 + 16))(v6);
    ColorSpace = CGImageProviderGetColorSpace();
    SurfaceWithFormat = IIO_CreateSurfaceWithFormat(v23, v20, v22, ColorSpace);
    if (!SurfaceWithFormat)
    {
      v33 = v23 >> 24;
      if ((v23 >> 24) <= 0x7F)
      {
        v34 = *(MEMORY[0x1E69E9830] + 4 * v33 + 60) & 0x40000;
      }

      else
      {
        v34 = __maskrune(v23 >> 24, 0x40000uLL);
      }

      if (v34)
      {
        v55 = v33;
      }

      else
      {
        v55 = 46;
      }

      v56 = v23 << 8 >> 24;
      if (v56 <= 0x7F)
      {
        v57 = *(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x40000;
      }

      else
      {
        v57 = __maskrune(v23 << 8 >> 24, 0x40000uLL);
      }

      if (v57)
      {
        v58 = v56;
      }

      else
      {
        v58 = 46;
      }

      v59 = v23 >> 8;
      if (v59 <= 0x7F)
      {
        v60 = *(MEMORY[0x1E69E9830] + 4 * v59 + 60) & 0x40000;
      }

      else
      {
        v60 = __maskrune(v23 >> 8, 0x40000uLL);
      }

      if (v23 <= 0x7F)
      {
        v61 = *(MEMORY[0x1E69E9830] + 4 * v23 + 60) & 0x40000;
      }

      else
      {
        v61 = __maskrune(v23, 0x40000uLL);
      }

      if (v60)
      {
        v62 = v59;
      }

      else
      {
        v62 = 46;
      }

      if (v61)
      {
        v63 = v23;
      }

      else
      {
        v63 = 46;
      }

      _cg_jpeg_mem_term("CopyIOSurfaceProc", 1617, "*** ERROR: IIO_CreateSurfaceWithFormat '%c%c%c%c'\n", v55, v58, v62, v63);
      return 0;
    }
  }

  v66 = 0;
  memset(v65, 0, sizeof(v65));
  v25 = IIOReadPlugin::index(v6);
  IIODecodeParameter::IIODecodeParameter(v65, a1, a2, v25, a3, 0.0, 0.0, v20, v22, v20, v22);
  v26 = IIOReadPlugin::callDecodeImage(v6, v65, 1, &SurfaceWithFormat, 0, 0);
  if (v26 == -1400)
  {
    ImageIOLog("‼️ retrying 'decodeImage' (ImageIOXPCService crashed?)\n");
    v28 = IIOReadPlugin::callDecodeImage(v6, v65, 1, &SurfaceWithFormat, 0, 0);
    v26 = v28;
    v29 = "❌";
    if (!v28)
    {
      v29 = "✅";
    }

    ImageIOLog("%s retrying 'decodeImage'  err: %d\n", v29, v28);
  }

  if (v26)
  {
    if (v26 != -56)
    {
      goto LABEL_59;
    }

    v30 = *(v6 + 55);
    v31 = v30 >> 24;
    if ((v30 >> 24) <= 0x7F)
    {
      v32 = *(MEMORY[0x1E69E9830] + 4 * v31 + 60) & 0x40000;
    }

    else
    {
      v32 = __maskrune(v31, 0x40000uLL);
      v30 = *(v6 + 55);
    }

    if (v32)
    {
      v35 = (v30 >> 24);
    }

    else
    {
      v35 = 46;
    }

    v36 = v30 << 8 >> 24;
    if (v36 <= 0x7F)
    {
      v37 = *(MEMORY[0x1E69E9830] + 4 * v36 + 60) & 0x40000;
    }

    else
    {
      v37 = __maskrune(v36, 0x40000uLL);
      v30 = *(v6 + 55);
    }

    if (v37)
    {
      v38 = (v30 << 8 >> 24);
    }

    else
    {
      v38 = 46;
    }

    v39 = v30 >> 8;
    if (v39 <= 0x7F)
    {
      v40 = *(MEMORY[0x1E69E9830] + 4 * v39 + 60) & 0x40000;
    }

    else
    {
      v40 = __maskrune(v39, 0x40000uLL);
      v30 = *(v6 + 55);
    }

    if (v40)
    {
      v41 = (v30 >> 8);
    }

    else
    {
      v41 = 46;
    }

    if (v30 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v30 + 60) & 0x40000) != 0)
      {
        goto LABEL_55;
      }
    }

    else if (__maskrune(v30, 0x40000uLL))
    {
LABEL_55:
      v42 = *(v6 + 220);
LABEL_58:
      LogError("CopyIOSurfaceProc", 1633, "*** IIO_Reader::CopyIOSurfaceProc - '%c%c%c%c'- does not support 'callDecodeImage'\n", v35, v38, v41, v42);
LABEL_59:
      v43 = *(v6 + 55);
      v44 = v43 >> 24;
      if ((v43 >> 24) <= 0x7F)
      {
        v45 = *(MEMORY[0x1E69E9830] + 4 * v44 + 60) & 0x40000;
      }

      else
      {
        v45 = __maskrune(v44, 0x40000uLL);
        v43 = *(v6 + 55);
      }

      if (v45)
      {
        v46 = (v43 >> 24);
      }

      else
      {
        v46 = 46;
      }

      v47 = v43 << 8 >> 24;
      if (v47 <= 0x7F)
      {
        v48 = *(MEMORY[0x1E69E9830] + 4 * v47 + 60) & 0x40000;
      }

      else
      {
        v48 = __maskrune(v47, 0x40000uLL);
        v43 = *(v6 + 55);
      }

      if (v48)
      {
        v49 = (v43 << 8 >> 24);
      }

      else
      {
        v49 = 46;
      }

      v50 = v43 >> 8;
      if (v50 <= 0x7F)
      {
        v51 = *(MEMORY[0x1E69E9830] + 4 * v50 + 60) & 0x40000;
      }

      else
      {
        v51 = __maskrune(v50, 0x40000uLL);
        v43 = *(v6 + 55);
      }

      if (v51)
      {
        v52 = (v43 >> 8);
      }

      else
      {
        v52 = 46;
      }

      if (v43 <= 0x7F)
      {
        if ((*(MEMORY[0x1E69E9830] + 4 * v43 + 60) & 0x40000) != 0)
        {
          goto LABEL_79;
        }
      }

      else if (__maskrune(v43, 0x40000uLL))
      {
LABEL_79:
        v53 = *(v6 + 220);
LABEL_82:
        v27 = _cg_jpeg_mem_term("CopyIOSurfaceProc", 1636, "*** ERROR: '%c%c%c%c' callDecodeImage failed [%d]\n", v46, v49, v52, v53, v26);
        goto LABEL_83;
      }

      v53 = 46;
      goto LABEL_82;
    }

    v42 = 46;
    goto LABEL_58;
  }

LABEL_83:
  if ((*(*v6 + 272))(v6, v27))
  {
    IIOReadPlugin::debugWriteIOSurface(v6, SurfaceWithFormat);
  }

  (*(*v6 + 88))(v6);
  IIODecodeParameter::~IIODecodeParameter(v65);
  result = SurfaceWithFormat;
  if ((gIIODebugFlags & 0x800000000000) != 0 && !SurfaceWithFormat)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CopyIOSurfaceProc", 1649, "could not create IOSurfaceRef");
    return SurfaceWithFormat;
  }

  return result;
}

void sub_185E9A3E0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  __cxa_begin_catch(a1);
  *(v15 - 88) = 0;
  __cxa_end_catch();
  JUMPOUT(0x185E9A25CLL);
}

uint64_t IIO_UpdateIOSurfaceOwnershipIdentity()
{
  if (!IIO_XPCServer() || !IIO_GetIdentityToken())
  {
    return 0;
  }

  v0 = IOSurfaceSetOwnershipIdentity();
  if (v0)
  {
    _cg_jpeg_mem_term("IIO_UpdateIOSurfaceOwnershipIdentity", 279, "*** ERROR: IOSurfaceSetOwnershipIdentity failed: %d", v0);
  }

  return v0;
}

uint64_t PNGReadPlugin::Read_user_chunkCgBI(uint64_t a1, void (**a2)(void), uint64_t a3)
{
  if (*(a1 + 36) == 1)
  {
    *(a1 + 35) = 0;
    *(a1 + 40) = 0;
    return 1;
  }

  else if (*(a3 + 16) == 4)
  {
    v6 = *(a3 + 8);
    v7 = *v6 >> 4;
    v8 = v6[3] & 0x1F;
    if (*(a1 + 72) == 1)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    if (v8 == 6)
    {
      v10 = 6;
    }

    else
    {
      v10 = v9;
    }

    v11 = v10 & 0xFFFFFFF | (v7 << 28);
    v12 = v11 | 0x2000;
    if (v11 == 268435458)
    {
      v13 = 805314562;
    }

    else
    {
      v13 = v11 | 0x2000;
    }

    *(a1 + 40) = v13;
    if ((v12 & 0x10000000) != 0)
    {
      if (*(_cg_png_get_zstream(a2) + 56))
      {
        _cg_png_error(a2, "Too late to change zlib mode.");
      }

      appleflags = _cg_png_get_appleflags(a2);
      _cg_png_set_appleflags(a2, appleflags | 1);
    }

    if ((v12 & 0x20000000) != 0)
    {
      v15 = _cg_png_get_appleflags(a2);
      _cg_png_set_appleflags(a2, v15 | 2);
    }

    result = 1;
    *(a1 + 35) = 1;
  }

  else
  {
    _cg_jpeg_mem_term("Read_user_chunkCgBI", 719, "*** ERROR: PNG ERROR: CgBI chunk encountered with incorrect length (%d)\n", *(a3 + 16));
    return 0xFFFFFFFFLL;
  }

  return result;
}

void png_handle_cHRM(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 76);
  if ((v4 & 1) == 0)
  {
    png_chunk_error(a1, "missing IHDR");
  }

  if ((v4 & 6) != 0)
  {
    png_crc_finish(a1, a3);
    v5 = "out of place";
  }

  else
  {
    if (a3 == 32)
    {
      v18 = 0u;
      v19 = 0u;
      png_crc_read(a1, &v18, 0x20u);
      if (png_crc_finish(a1, 0))
      {
        return;
      }

      if (v18 << 24 < 0)
      {
        v7 = -1;
      }

      else
      {
        v7 = _byteswap_ulong(v18);
      }

      v17[6] = v7;
      if (BYTE4(v18) << 24 < 0)
      {
        v8 = -1;
      }

      else
      {
        v8 = _byteswap_ulong(DWORD1(v18));
      }

      v17[7] = v8;
      if (BYTE8(v18) << 24 < 0)
      {
        v9 = -1;
      }

      else
      {
        v9 = _byteswap_ulong(DWORD2(v18));
      }

      v17[0] = v9;
      if (BYTE12(v18) << 24 < 0)
      {
        v10 = -1;
      }

      else
      {
        v10 = _byteswap_ulong(HIDWORD(v18));
      }

      v17[1] = v10;
      if (v19 << 24 < 0)
      {
        v11 = -1;
      }

      else
      {
        v11 = _byteswap_ulong(v19);
      }

      v17[2] = v11;
      if (BYTE4(v19) << 24 < 0)
      {
        v12 = -1;
      }

      else
      {
        v12 = _byteswap_ulong(DWORD1(v19));
      }

      v17[3] = v12;
      if (BYTE8(v19) << 24 < 0)
      {
        v13 = -1;
      }

      else
      {
        v13 = _byteswap_ulong(DWORD2(v19));
      }

      v17[4] = v13;
      if (BYTE12(v19) << 24 < 0)
      {
        v14 = -1;
      }

      else
      {
        v14 = _byteswap_ulong(HIDWORD(v19));
      }

      v17[5] = v14;
      if (v7 == -1 || v8 == -1 || v9 == -1 || v10 == -1 || v11 == -1 || v12 == -1 || v13 == -1 || v14 == -1)
      {
        v16 = "invalid values";
      }

      else
      {
        v15 = *(a1 + 1274);
        if (v15 < 0)
        {
          return;
        }

        if ((v15 & 0x10) == 0)
        {
          *(a1 + 1274) = v15 | 0x10;
          if (a1 + 1200 > (a1 + 1276))
          {
            __break(0x5519u);
          }

          else
          {
            png_colorspace_set_chromaticities(a1, a1 + 1200, v17, 1);
            png_colorspace_sync(a1, a2);
          }

          return;
        }

        *(a1 + 1274) = v15 | 0x8000;
        png_colorspace_sync(a1, a2);
        v16 = "duplicate";
      }

      png_chunk_benign_error(a1, v16);
      return;
    }

    png_crc_finish(a1, a3);
    v5 = "invalid";
  }

  png_chunk_benign_error(a1, v5);
}

uint64_t png_colorspace_set_chromaticities(void (**a1)(void), uint64_t a2, int *a3, int a4)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v8 = png_colorspace_check_xy(v10, a3);
  if (v8 == 1)
  {
    *(a2 + 74) |= 0x8000u;
    png_benign_error(a1, "invalid chromaticities");
    return 0;
  }

  else
  {
    if (v8)
    {
      *(a2 + 74) |= 0x8000u;
      _cg_png_error(a1, "internal error checking chromaticities");
    }

    return png_colorspace_set_xy_and_XYZ(a1, a2, a3, v10, a4);
  }
}

uint64_t png_xy_from_XYZ(int *a1, int *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v45 = v5;
  result = png_safe_add(&v45, v4, a2[2]);
  if (result)
  {
    return 1;
  }

  v7 = a1 + 1;
  if (a1 + 1 < a1)
  {
LABEL_75:
    __break(0x5519u);
    return result;
  }

  v8 = v45;
  if (v45)
  {
    if (v5)
    {
      v9 = floor(v5 * 100000.0 / v45 + 0.5);
      if (v9 > 2147483650.0 || v9 < -2147483650.0)
      {
        return 1;
      }

      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    *a1 = v11;
    if (v7 > a1 + 2)
    {
      goto LABEL_75;
    }

    v12 = a2[1];
    if (v12)
    {
      v13 = floor(v12 * 100000.0 / v8 + 0.5);
      if (v13 > 2147483650.0 || v13 < -2147483650.0)
      {
        return 1;
      }

      v12 = v13;
    }

    *v7 = v12;
    v16 = a2[3];
    v15 = a2[4];
    v45 = v16;
    result = png_safe_add(&v45, v15, a2[5]);
    if (!result)
    {
      v17 = a1 + 3;
      if (a1 + 2 > a1 + 3)
      {
        goto LABEL_75;
      }

      v18 = v45;
      if (v45)
      {
        if (v16)
        {
          v19 = floor(v16 * 100000.0 / v45 + 0.5);
          if (v19 > 2147483650.0 || v19 < -2147483650.0)
          {
            return 1;
          }

          v21 = v19;
        }

        else
        {
          v21 = 0;
        }

        a1[2] = v21;
        if (v17 > a1 + 4)
        {
          goto LABEL_75;
        }

        v22 = a2[4];
        if (v22)
        {
          v23 = floor(v22 * 100000.0 / v18 + 0.5);
          if (v23 > 2147483650.0 || v23 < -2147483650.0)
          {
            return 1;
          }

          v22 = v23;
        }

        *v17 = v22;
        v26 = a2[6];
        v25 = a2[7];
        v45 = v26;
        result = png_safe_add(&v45, v25, a2[8]);
        if (!result)
        {
          v27 = a1 + 5;
          if (a1 + 4 > a1 + 5)
          {
            goto LABEL_75;
          }

          v28 = v45;
          if (v45)
          {
            if (v26)
            {
              v29 = floor(v26 * 100000.0 / v45 + 0.5);
              if (v29 > 2147483650.0 || v29 < -2147483650.0)
              {
                return 1;
              }

              v31 = v29;
            }

            else
            {
              v31 = 0;
            }

            a1[4] = v31;
            if (v27 > a1 + 6)
            {
              goto LABEL_75;
            }

            v32 = a2[7];
            if (v32)
            {
              v33 = floor(v32 * 100000.0 / v28 + 0.5);
              if (v33 > 2147483650.0 || v33 < -2147483650.0)
              {
                return 1;
              }

              v35 = v33;
            }

            else
            {
              v35 = 0;
            }

            *v27 = v35;
            if (!png_safe_add(&v45, v8, v18))
            {
              v36 = v45;
              v45 = *a2;
              if (!png_safe_add(&v45, a2[3], a2[6]))
              {
                v37 = v45;
                v45 = a2[1];
                result = png_safe_add(&v45, a2[4], a2[7]);
                if (!result)
                {
                  v38 = a1 + 7;
                  if (a1 + 6 > a1 + 7)
                  {
                    goto LABEL_75;
                  }

                  if (v36)
                  {
                    v39 = v45;
                    if (v37)
                    {
                      v40 = floor(v37 * 100000.0 / v36 + 0.5);
                      if (v40 > 2147483650.0 || v40 < -2147483650.0)
                      {
                        return 1;
                      }

                      v42 = v40;
                    }

                    else
                    {
                      v42 = 0;
                    }

                    a1[6] = v42;
                    if (v38 <= a1 + 8)
                    {
                      if (v39)
                      {
                        v43 = floor(v39 * 100000.0 / v36 + 0.5);
                        if (v43 > 2147483650.0 || v43 < -2147483650.0)
                        {
                          return 1;
                        }

                        v39 = v43;
                      }

                      result = 0;
                      *v38 = v39;
                      return result;
                    }

                    goto LABEL_75;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return 1;
}

uint64_t png_colorspace_check_xy(int *a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 0x186A0)
  {
    return 1;
  }

  v5 = a2[1];
  result = 1;
  if ((v5 & 0x80000000) == 0 && v5 <= (100000 - v2))
  {
    v6 = a2[2];
    if (v6 <= 0x186A0)
    {
      v7 = a2[3];
      if ((v7 & 0x80000000) == 0 && v7 <= (100000 - v6))
      {
        v8 = a2[4];
        if (v8 <= 0x186A0)
        {
          v9 = a2[5];
          if ((v9 & 0x80000000) == 0 && v9 <= (100000 - v8))
          {
            v10 = a2[6];
            if (v10 <= 0x186A0)
            {
              v11 = a2[7];
              if (v11 >= 5 && v11 <= (100000 - v10))
              {
                v12 = 0;
                result = (v5 - v9);
                v13 = v6 - v8;
                if (v6 != v8 && v5 != v9)
                {
                  v14 = floor(v13 * result / 7.0 + 0.5);
                  if (v14 > 2147483650.0 || v14 < -2147483650.0)
                  {
                    return 2;
                  }

                  v12 = v14;
                }

                v16 = 0;
                v17 = v7 - v9;
                v18 = v2 - v8;
                if (v2 != v8 && v7 != v9)
                {
                  v19 = floor(v18 * v17 / 7.0 + 0.5);
                  if (v19 > 2147483650.0 || v19 < -2147483650.0)
                  {
                    return 2;
                  }

                  v16 = v19;
                }

                v21 = 0;
                v22 = v11 - v9;
                if (v6 != v8 && v11 != v9)
                {
                  v23 = floor(v13 * v22 / 7.0 + 0.5);
                  if (v23 > 2147483650.0 || v23 < -2147483650.0)
                  {
                    return 2;
                  }

                  v21 = v23;
                }

                v25 = 0;
                v26 = v10 - v8;
                if (v7 != v9 && v10 != v8)
                {
                  v27 = floor(v17 * v26 / 7.0 + 0.5);
                  if (v27 > 2147483650.0 || v27 < -2147483650.0)
                  {
                    return 2;
                  }

                  v25 = v27;
                }

                v29 = v21 - v25;
                if (v21 == v25)
                {
                  return 1;
                }

                v30 = v12 - v16;
                if (v12 == v16)
                {
                  v31 = 0;
                }

                else
                {
                  v32 = floor(v11 * v30 / v29 + 0.5);
                  if (v32 > 2147483650.0 || v32 < -2147483650.0)
                  {
                    return 1;
                  }

                  v31 = v32;
                }

                if (v31 <= v11)
                {
                  return 1;
                }

                v34 = 0;
                if (v5 != v9 && v10 != v8)
                {
                  v35 = floor(result * v26 / 7.0 + 0.5);
                  if (v35 > 2147483650.0 || v35 < -2147483650.0)
                  {
                    return 2;
                  }

                  v34 = v35;
                }

                v37 = 0;
                if (v2 == v8 || v11 == v9)
                {
LABEL_67:
                  if (v34 != v37)
                  {
                    if (v12 == v16)
                    {
                      v40 = 0;
                    }

                    else
                    {
                      v41 = floor(v11 * v30 / (v34 - v37) + 0.5);
                      if (v41 > 2147483650.0 || v41 < -2147483650.0)
                      {
                        return 1;
                      }

                      v40 = v41;
                    }

                    if (v40 <= v11)
                    {
                      return 1;
                    }

                    v43 = 1.0e10 / v11 + 0.5;
                    v44 = floor(v43);
                    v45 = v44 < -2147483650.0 || v44 > 2147483650.0;
                    v46 = vcvtmd_s64_f64(v43);
                    if (v45)
                    {
                      v46 = 0;
                    }

                    v47 = v31;
                    v48 = 1.0e10 / v31 + 0.5;
                    v49 = floor(v48);
                    v50 = v49 < -2147483650.0 || v49 > 2147483650.0;
                    v51 = vcvtmd_s64_f64(v48);
                    v52 = v40;
                    if (v50)
                    {
                      v53 = 0;
                    }

                    else
                    {
                      v53 = v51;
                    }

                    v54 = 1.0e10 / v52 + 0.5;
                    v55 = floor(v54);
                    v56 = v55 < -2147483650.0 || v55 > 2147483650.0;
                    v57 = vcvtmd_s64_f64(v54);
                    if (v56)
                    {
                      v57 = 0;
                    }

                    v58 = v46 - (v53 + v57);
                    if (v58 < 1)
                    {
                      return 1;
                    }

                    if (a1 + 1 < a1)
                    {
                      goto LABEL_160;
                    }

                    if (v2)
                    {
                      v59 = floor(v2 * 100000.0 / v47 + 0.5);
                      if (v59 > 2147483650.0 || v59 < -2147483650.0)
                      {
                        return 1;
                      }

                      v2 = v59;
                    }

                    *a1 = v2;
                    if (a1 + 1 > a1 + 2)
                    {
                      goto LABEL_160;
                    }

                    v61 = a2[1];
                    if (v61)
                    {
                      v62 = floor(v61 * 100000.0 / v47 + 0.5);
                      if (v62 > 2147483650.0 || v62 < -2147483650.0)
                      {
                        return 1;
                      }

                      v61 = v62;
                    }

                    a1[1] = v61;
                    if (a1 + 2 > a1 + 3)
                    {
                      goto LABEL_160;
                    }

                    v64 = 100000 - (a2[1] + *a2);
                    if (v64)
                    {
                      v65 = floor(v64 * 100000.0 / v47 + 0.5);
                      if (v65 > 2147483650.0 || v65 < -2147483650.0)
                      {
                        return 1;
                      }

                      v64 = v65;
                    }

                    a1[2] = v64;
                    if (a1 + 3 > a1 + 4)
                    {
                      goto LABEL_160;
                    }

                    v67 = a2[2];
                    if (v67)
                    {
                      v68 = floor(v67 * 100000.0 / v52 + 0.5);
                      if (v68 > 2147483650.0 || v68 < -2147483650.0)
                      {
                        return 1;
                      }

                      v67 = v68;
                    }

                    a1[3] = v67;
                    if (a1 + 4 > a1 + 5)
                    {
                      goto LABEL_160;
                    }

                    v70 = a2[3];
                    if (v70)
                    {
                      v71 = floor(v70 * 100000.0 / v52 + 0.5);
                      if (v71 > 2147483650.0 || v71 < -2147483650.0)
                      {
                        return 1;
                      }

                      v70 = v71;
                    }

                    a1[4] = v70;
                    if (a1 + 5 > a1 + 6)
                    {
                      goto LABEL_160;
                    }

                    v73 = 100000 - (a2[3] + a2[2]);
                    if (v73)
                    {
                      v74 = floor(v73 * 100000.0 / v52 + 0.5);
                      if (v74 > 2147483650.0 || v74 < -2147483650.0)
                      {
                        return 1;
                      }

                      v73 = v74;
                    }

                    a1[5] = v73;
                    if (a1 + 6 > a1 + 7)
                    {
                      goto LABEL_160;
                    }

                    v76 = a2[4];
                    if (v76)
                    {
                      v77 = floor(v58 * v76 / 100000.0 + 0.5);
                      if (v77 > 2147483650.0 || v77 < -2147483650.0)
                      {
                        return 1;
                      }

                      v76 = v77;
                    }

                    a1[6] = v76;
                    if (a1 + 7 > a1 + 8)
                    {
                      goto LABEL_160;
                    }

                    v79 = a2[5];
                    if (v79)
                    {
                      v80 = floor(v58 * v79 / 100000.0 + 0.5);
                      if (v80 > 2147483650.0 || v80 < -2147483650.0)
                      {
                        return 1;
                      }

                      v79 = v80;
                    }

                    a1[7] = v79;
                    if (a1 + 8 > a1 + 9)
                    {
LABEL_160:
                      __break(0x5519u);
                      return result;
                    }

                    v82 = 100000 - (a2[5] + a2[4]);
                    if (v82)
                    {
                      v83 = floor(v58 * v82 / 100000.0 + 0.5);
                      if (v83 > 2147483650.0 || v83 < -2147483650.0)
                      {
                        return 1;
                      }

                      v82 = v83;
                    }

                    memset(v86, 0, sizeof(v86));
                    a1[8] = v82;
                    if (!png_xy_from_XYZ(v86, a1))
                    {
                      return !png_colorspace_endpoints_match(a2, v86, 5);
                    }
                  }

                  return 1;
                }

                v38 = floor(v18 * v22 / 7.0 + 0.5);
                if (v38 <= 2147483650.0 && v38 >= -2147483650.0)
                {
                  v37 = v38;
                  goto LABEL_67;
                }

                return 2;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t png_colorspace_set_xy_and_XYZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(a2 + 74);
  if (v5 < 0)
  {
    return 0;
  }

  if (a5 > 1 || (v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  if (!png_colorspace_endpoints_match(a3, (a2 + 4), 100))
  {
    *(a2 + 74) = v5 | 0x8000;
    png_benign_error(a1, "inconsistent chromaticities");
    return 0;
  }

  if (!a5)
  {
    return 1;
  }

LABEL_6:
  v11 = *(a3 + 16);
  *(a2 + 4) = *a3;
  *(a2 + 20) = v11;
  v12 = *(a4 + 16);
  *(a2 + 36) = *a4;
  *(a2 + 52) = v12;
  *(a2 + 68) = *(a4 + 32);
  v13 = png_colorspace_endpoints_match(a3, &sRGB_xy, 1000);
  v14 = v5 & 0x7FBD | 2;
  if (v13)
  {
    v14 = v5 | 0x42;
  }

  *(a2 + 74) = v14;
  return 2;
}

uint64_t png_safe_add(int *a1, int a2, int a3)
{
  v3 = *a1;
  v4 = -2147483647 - a2 > a3;
  if (-2147483647 - a2 <= a3)
  {
    v5 = a3 + a2;
  }

  else
  {
    v5 = 50000;
  }

  if (a2 >= 0)
  {
    v4 = 0;
    v5 = a3;
  }

  if ((a2 ^ 0x7FFFFFFF) >= a3)
  {
    v6 = a3 + a2;
  }

  else
  {
    v6 = 50000;
  }

  if (a2 >= 1)
  {
    v7 = (a2 ^ 0x7FFFFFFF) < a3;
  }

  else
  {
    v7 = v4;
  }

  if (a2 >= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  if (v3 >= 1)
  {
    if ((v3 ^ 0x7FFFFFFF) < v8)
    {
      return 1;
    }

    goto LABEL_17;
  }

  if (v3 < 0)
  {
    if (-2147483647 - v3 > v8)
    {
      return 1;
    }

LABEL_17:
    v8 += v3;
  }

  if (!v7)
  {
    v9 = 0;
    *a1 = v8;
    return v9;
  }

  return 1;
}

BOOL png_colorspace_endpoints_match(int *a1, _DWORD *a2, int a3)
{
  v3 = a1[6];
  v4 = a2[6];
  v5 = v4 - a3;
  v6 = v4 + a3;
  if (v3 >= v5)
  {
    v9 = __OFSUB__(v3, v6);
    v7 = v3 == v6;
    v8 = v3 - v6 < 0;
  }

  else
  {
    v9 = 0;
    v7 = 0;
    v8 = 0;
  }

  if (!(v8 ^ v9 | v7))
  {
    return 0;
  }

  v10 = a1[7];
  v11 = a2[7];
  v12 = v11 - a3;
  v13 = v11 + a3;
  if (v10 >= v12)
  {
    v16 = __OFSUB__(v10, v13);
    v14 = v10 == v13;
    v15 = v10 - v13 < 0;
  }

  else
  {
    v16 = 0;
    v14 = 0;
    v15 = 0;
  }

  if (!(v15 ^ v16 | v14))
  {
    return 0;
  }

  v17 = *a1;
  v18 = *a2 + a3;
  if (*a1 >= *a2 - a3)
  {
    v21 = __OFSUB__(v17, v18);
    v19 = v17 == v18;
    v20 = v17 - v18 < 0;
  }

  else
  {
    v21 = 0;
    v19 = 0;
    v20 = 0;
  }

  if (!(v20 ^ v21 | v19))
  {
    return 0;
  }

  v22 = 0;
  v24 = a1[1];
  v25 = a2[1];
  if (v24 >= v25 - a3 && v24 <= v25 + a3)
  {
    v22 = 0;
    v26 = a1[2];
    v27 = a2[2];
    if (v26 >= v27 - a3 && v26 <= v27 + a3)
    {
      v22 = 0;
      v28 = a1[3];
      v29 = a2[3];
      if (v28 >= v29 - a3 && v28 <= v29 + a3)
      {
        v22 = 0;
        v30 = a1[4];
        v31 = a2[4];
        if (v30 >= v31 - a3 && v30 <= v31 + a3)
        {
          v32 = a1[5];
          v33 = a2[5];
          v34 = v33 - a3;
          v35 = v33 + a3;
          if (v32 >= v34)
          {
            v38 = __OFSUB__(v32, v35);
            v36 = v32 == v35;
            v37 = v32 - v35 < 0;
          }

          else
          {
            v38 = 0;
            v36 = 0;
            v37 = 0;
          }

          return (v37 ^ v38 | v36) != 0;
        }
      }
    }
  }

  return v22;
}

unint64_t _cg_png_get_zstream(uint64_t a1)
{
  result = a1 + 96;
  if (result > a1 + 208)
  {
    __break(0x5519u);
  }

  return result;
}

CGImageSourceRef CGImageSourceCreateWithDataProvider(CGDataProviderRef provider, CFDictionaryRef options)
{
  kdebug_trace();
  IIOInitDebugFlags();
  if (provider)
  {
    v4 = CFGetTypeID(provider);
    if (v4 == CGDataProviderGetTypeID())
    {
      if (options)
      {
        v5 = CFGetTypeID(options);
        if (v5 != CFDictionaryGetTypeID())
        {
          LogError("CGImageSourceCreateWithDataProvider", 4552, "*** ERROR: CGImageSourceCreateWithDataProvider: options parameter is not a CFDictionaryRef - ignoring\n");
          options = 0;
        }
      }

      memset(v9, 0, sizeof(v9));
      IIODictionary::IIODictionary(v9, options);
      operator new();
    }

    CGImageSourceCreateWithDataProvider_cold_1();
  }

  else
  {
    CGImageSourceCreateWithDataProvider_cold_2();
  }

  v6 = gIIODebugFlags;
  if ((gIIODebugFlags & 0x800000000000) != 0)
  {
    ImageIOLog("∆∆∆ ISSUE: %s:%d:  %s\n", "CGImageSourceCreateWithDataProvider", 4578, "could not create CGImageSourceRef");
    v6 = gIIODebugFlags;
  }

  v7 = (v6 >> 12) & 3;
  if (v7)
  {
    ImageIODebugOptions(v7, "A", "CGImageSourceCreateWithDataProvider", 0, 0, -1, options);
  }

  kdebug_trace();
  kdebug_trace();
  return 0;
}

void sub_185E9B9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  MEMORY[0x186602850](v4, 0x10E1C4080364B91);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOImageSource::IIOImageSource(IIOImageSource *this, CGDataProvider *a2, IIODictionary *a3)
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
  IIOImageSource::setup(this, 2);
  if (a3)
  {
    *(this + 104) = IIOImageSource::extractOptions(this, a3);
  }

  *(this + 2) = CGImageReadCreateWithProvider(*(this + 1), a2, 1);
  if ((gIIODebugFlags & 0x10000000) != 0)
  {
    v6 = CGDataProviderCopyData(a2);
    if (v6)
    {
      ImageIO_saveImageData("CGImageSourceCreateWithDataProvider", v6);
      CFRelease(v6);
    }
  }
}

void sub_185E9BAD4(_Unwind_Exception *exception_object)
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

uint64_t CGImageReadCreateWithProvider(int a1, IIOImageRead *this, CGDataProvider *a3)
{
  if (this)
  {
    IIOImageRead::CreateWithDataProvider(this, a3);
  }

  return 0;
}

void IIOImageRead::CreateWithDataProvider(IIOImageRead *this, CGDataProvider *a2)
{
  if (copyInputDataCheck != -1)
  {
    IIOImageRead::CreateWithDataProvider();
  }

  if (this)
  {
    SizeOfData = CGDataProviderGetSizeOfData();
    if (SizeOfData != -1)
    {
      v4 = SizeOfData;
      if (!SizeOfData)
      {
        goto LABEL_14;
      }

      if ((gCopyInputData & 1) == 0)
      {
        v5 = CGDataProviderRetainBytePtr();
        if (v5)
        {
          v6 = v5;
          context.version = 0;
          context.info = this;
          context.retain = _providerRetain;
          context.release = _providerRelease;
          memset(&context.copyDescription, 0, 40);
          v7 = *MEMORY[0x1E695E480];
          v8 = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
          if (v8)
          {
            v9 = v8;
            v10 = CFDataCreateWithBytesNoCopy(v7, v6, v4, v8);
            CFRelease(v9);
            if (v10)
            {
              goto LABEL_13;
            }
          }

          else
          {
            CGDataProviderReleaseBytePtr();
          }
        }
      }
    }

    if (CGDataProviderCopyData(this))
    {
LABEL_13:
      operator new();
    }
  }

LABEL_14:
  operator new();
}

uint64_t ___ZL25_CFDataCreateWithProviderP14CGDataProvider_block_invoke()
{
  result = IOPreferencesGetBoolean("ImageIO_CopyInputData", 0, 0);
  gCopyInputData = result;
  return result;
}

CFStringRef CGImageSourceGetType(CGImageSourceRef isrc)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v2 = (gIIODebugFlags >> 12) & 3;
  if (v2)
  {
    ImageIODebugOptions(v2, "A", "CGImageSourceGetType", isrc, 0, -1, 0);
  }

  if (!isrc)
  {
    CGImageSourceGetType_cold_4();
    goto LABEL_21;
  }

  v3 = CFGetTypeID(isrc);
  if (CGImageSourceGetTypeID::once != -1)
  {
    CGImageSourceGetTypeID_cold_1();
  }

  if (v3 != CGImageSourceGetTypeID::id)
  {
    CGImageSourceGetType_cold_2();
    goto LABEL_21;
  }

  v4 = *(isrc + 3);
  if (!v4)
  {
LABEL_21:
    v6 = 0;
    goto LABEL_22;
  }

  if (*(v4 + 89) == 1)
  {
    CGImageSourceGetType_cold_3();
    goto LABEL_21;
  }

  pthread_mutex_lock((v4 + 224));
  if (IIOImageSource::isProxy(v4))
  {
    Type = IIOImageSource::proxyGetType(v4);
  }

  else
  {
    if (!IIOImageSource::bindToReader(v4))
    {
      v6 = 0;
      goto LABEL_15;
    }

    Type = IIO_Reader::utType(*(v4 + 104));
  }

  v6 = Type;
LABEL_15:
  v7 = *(v4 + 104);
  if (v7)
  {
    IIO_Reader::osType(v7);
  }

  pthread_mutex_unlock((v4 + 224));
LABEL_22:
  kdebug_trace();
  return v6;
}

CFArrayRef CGImageDestinationCopyTypeIdentifiers(void)
{
  kdebug_trace();
  IIOInitDebugFlags();
  v0 = ((gIIODebugFlags >> 12) & 3);
  if (v0)
  {
    ImageIODebugOptions(v0, "A", "CGImageDestinationCopyTypeIdentifiers", 0, 0, -1, 0);
  }

  WriterHandler = IIO_WriterHandler::GetWriterHandler(v0);
  v2 = IIO_WriterHandler::copyTypeIdentifiers(WriterHandler);
  kdebug_trace();
  return v2;
}

__CFArray *IIO_WriterHandler::copyTypeIdentifiers(IIO_WriterHandler *this)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  for (i = *(this + 1); i != *(this + 2); ++i)
  {
    if (IIO_Writer::addToTypeIdentifiers(*i))
    {
      v4 = IIO_Writer::utType(*i);
      CFArrayAppendValue(Mutable, v4);
    }
  }

  return Mutable;
}

uint64_t IIO_WriterHandler::GetWriterHandler(IIO_WriterHandler *this)
{
  if (IIO_WriterHandler::GetWriterHandler(void)::writerHandlerCreate != -1)
  {
    IIO_WriterHandler::GetWriterHandler();
  }

  return IIO_WriterHandler::GetWriterHandler(void)::gIIO_WriterHandler;
}

uint64_t IIO_Writer::utType(IIO_Writer *this)
{
  result = *(this + 2);
  if (!result)
  {
    return **(this + 1);
  }

  return result;
}

uint64_t CreateWriter_HEIC(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_HEVC_EncodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateWriter_HEICS(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_HEVC_EncodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

uint64_t CreateWriter_AVIF(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_AV1_EncodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

void IIO_WriterHandler::IIO_WriterHandler(IIO_WriterHandler *this)
{
  *this = &unk_1EF4D8B40;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CFAbsoluteTimeGetCurrent();
  IIO_WriterHandler::buildWriterList(this);
}

void sub_185E9C950(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void IIO_Writer::IIO_Writer(IIO_Writer *this, const __CFString *const *a2, int a3, uint64_t a4, int a5)
{
  *this = &unk_1EF4DDCB8;
  *(this + 1) = a2;
  *(this + 6) = a3;
  *(this + 4) = a4;
  *(this + 10) = a5;
  *(this + 44) = 1;
  *(this + 2) = 0;
}

uint64_t IIOGeneric_Writer::IIOGeneric_Writer(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *a2;
  v5 = a2[2];
  v6 = *(a2 + 6);
  *(a1 + 24) = a3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 44) = 1;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  *a1 = &unk_1EF4DDD10;
  v7 = a2[4];
  *(a1 + 48) = v7;
  if (!v7)
  {
    LogError("IIOGeneric_Writer", 190, "*** ERROR: IIOGeneric_Writer::IIOGeneric_Writer called with invalid pluginInfo (writeProc is nil)");
  }

  return a1;
}

uint64_t CreateWriter_AVCI(void)
{
  IIODetermineHEIFSupport();
  if (gHEIF_AVCI_EncodingSupported == 1)
  {
    operator new();
  }

  return 0;
}

BOOL IIO_Reader_BC::testHeader(IIO_Reader_ETC *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = *(a1 + 1);
  if (v6 == kCGImageTypeIdentifierBMP)
  {
    if (a2[1] > 1u)
    {
      return 0;
    }

    v12 = a2[2];
    v13 = v12 > 0xB;
    v14 = (1 << v12) & 0xE0E;
    v15 = v13 || v14 == 0;
    return !v15 && a2[7] <= 0x20u && (a2[12] || a2[13]) && (a2[14] || a2[15]) && (((a2[16] - 8) >> 3) | (32 * (a2[16] - 8))) <= 3u && a2[17] < 0x40u;
  }

  if (v6 == kCGImageTypeIdentifierBC)
  {
    if (a3 < 0x80 || !IIO_Reader_ETC::isInDDSContainer(a1, a2))
    {
      return 0;
    }

    v16 = bswap32(*(a2 + 21));
    v17 = v16 - 1146639409 < 5 || v16 == 1146630448;
    return v17 || !v16 && (a2[80] & 0x40) != 0;
  }

  if (v6 != kCGImageTypeIdentifierKTX)
  {
    if (a3 < 0x50)
    {
      return 0;
    }

    if (v6 != kCGImageTypeIdentifierKTX2)
    {
      return 0;
    }

    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
    v11 = IIO_ReaderHandler::readerForType(ReaderHandler, 1263818802);
    v28 = *(a5 + 2);
    v27 = *a5;
    return (*(*v11 + 16))(v11, a2, a3, a4, &v27) && IsBCn(*(a2 + 3));
  }

  if (a3 < 0x40)
  {
    return 0;
  }

  v19 = IIO_ReaderHandler::GetReaderHandler(a1);
  v20 = IIO_ReaderHandler::readerForType(v19, 1263818784);
  if (!v20)
  {
    return 0;
  }

  v28 = *(a5 + 2);
  v27 = *a5;
  if (!(*(*v20 + 16))(v20, a2, a3, a4, &v27))
  {
    return 0;
  }

  v21 = *(a2 + 3);
  v22 = *(a2 + 4);
  v23 = bswap32(v22);
  if (v21 != 67305985)
  {
    v22 = v23;
  }

  if (v22)
  {
    return 0;
  }

  v24 = bswap32(*(a2 + 7));
  if (v21 == 67305985)
  {
    v25 = *(a2 + 7);
  }

  else
  {
    v25 = v24;
  }

  if (v25 - 36283 < 4)
  {
    return 1;
  }

  v26 = v25 & 0xFFFFFFFC;
  result = 1;
  if (v26 != 33776 && v26 != 35916 && v26 != 36492)
  {
    return 0;
  }

  return result;
}

uint64_t HEIFReadPlugin::initialize(HEIFReadPlugin *this, IIODictionary *a2)
{
  v3 = *(this + 6);
  v4 = *(this + 8);
  v217 = 0;
  v218[0] = 0;
  IIO_LoadHEIFSymbols();
  if (*(this + 369) != 1)
  {
    v200 = 0;
    v9 = 4294967257;
    goto LABEL_15;
  }

  ObjectForKey = IIODictionary::getObjectForKey(v3, @"kCGImageSourceXMPSidecar");
  if (ObjectForKey)
  {
    v6 = ObjectForKey;
    v7 = CFGetTypeID(ObjectForKey);
    if (v7 == CFDataGetTypeID())
    {
      v8 = v6;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(this + 383);
  if (IIODictionary::containsKey(v3, @"kCGImageSourceTiledDownsamplingMode"))
  {
    *(this + 127) = IIODictionary::getUint32ForKey(v3, @"kCGImageSourceTiledDownsamplingMode");
  }

  if (IIODictionary::containsKey(v3, @"kCGImageSourceSubsampleFactor"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(v3, @"kCGImageSourceSubsampleFactor");
  }

  else
  {
    Uint32ForKey = 0;
  }

  v12 = IIOImageReadSession::globalInfoForType(*(this + 3), 1212500294);
  if (!v12)
  {
    kdebug_trace();
    LogError("initialize", 566, "*** ERROR: globalHEIFInfo was not set in IIO_Reader_HEIF::updateSourceProperties or IIO_Reader_HEIF::getImageCount\n");
    v200 = 0;
    v9 = 4294967246;
    goto LABEL_15;
  }

  v24 = v12;
  if (!GlobalHEIFInfo::getNumberOfMainImages(v12))
  {
    HEIFReadPlugin::initialize();
    v200 = 0;
    v9 = 4294967246;
    goto LABEL_15;
  }

  v199 = v3;
  v25 = GlobalHEIFInfo::resolvedIndexForIndex(v24, *(this + 56));
  v196 = (this + 532);
  *(this + 133) = v25;
  v198 = v24;
  HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v24, v25);
  if (!HEIFMainImageAtIndex)
  {
    HEIFReadPlugin::initialize(v196);
    v200 = 0;
    v9 = 4294967246;
    goto LABEL_15;
  }

  v27 = HEIFMainImageAtIndex;
  *(this + 166) = 0;
  v195 = v4;
  if (*(this + 232) >= 2u)
  {
    HEIFThumbnailImageAtIndex = HEIFMainImage::getHEIFThumbnailImageAtIndex(HEIFMainImageAtIndex, 0);
    if (HEIFThumbnailImageAtIndex)
    {
      v29 = HEIFThumbnailImageAtIndex;
      *(this + 61) = HEIFGroupItem::getGroupType(HEIFThumbnailImageAtIndex);
      *(this + 62) = TIFFFieldIsAnonymous(v29);
      IIO_Reader::osType(v29);
      HEIFThumbnailImage::dataLength(v29);
      v30 = *(this + 57);
      if (!v30)
      {
        goto LABEL_69;
      }

      v31 = *(this + 61);
      if (v31 <= *(this + 62))
      {
        v31 = *(this + 62);
      }

      if (v31 == v30)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_51;
  }

  if (*(this + 57) && (HEIFMainImage::width(HEIFMainImageAtIndex) > *(this + 57) || HEIFMainImage::height(v27) > *(this + 57)))
  {
LABEL_51:
    v200 = 0;
    *(this + 526) = 1;
    goto LABEL_70;
  }

  *(this + 61) = HEIFMainImage::width(v27);
  *(this + 62) = HEIFMainImage::height(v27);
  if (Uint32ForKey < 2)
  {
LABEL_69:
    v200 = 0;
    goto LABEL_70;
  }

  if (Uint32ForKey <= 3)
  {
    v32 = 2;
  }

  else
  {
    v32 = 4;
  }

  if (Uint32ForKey > 7)
  {
    v32 = 8;
  }

  *(this + 166) = v32;
  Size = IIOImageReadSession::getSize(*(this + 3));
  v34 = IIOImageReadSession::retainBytePointer(*(this + 3), &v217, 1);
  if (!v34)
  {
    HEIFReadPlugin::initialize();
    v200 = 0;
    v9 = 4294967246;
    goto LABEL_15;
  }

  v35 = v34;
  v36 = *(this + 61);
  if (v36)
  {
    v37 = *(this + 62);
    if (!v37)
    {
      v36 = 0;
    }

    v35 = v34 + v36;
    if (v37)
    {
      Size = *(this + 62);
    }
  }

  v38 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v35, Size, *MEMORY[0x1E695E498]);
  v214[0] = 0;
  LODWORD(cf) = 0;
  v200 = v38;
  ExpectedWidthAndHeightForSubsampling = HEIFReadPlugin::getExpectedWidthAndHeightForSubsampling(this, v38, *(this + 133), *(this + 166), v214, &cf);
  if (ExpectedWidthAndHeightForSubsampling)
  {
    v9 = ExpectedWidthAndHeightForSubsampling;
    LogError("initialize", 638, "*** ERROR: _getExpectedWidthAndHeightForSubsampling failed\n");
LABEL_15:
    v13 = *(this + 55);
    v14 = v13 >> 24;
    if ((v13 >> 24) <= 0x7F)
    {
      v15 = *(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v13 = *(this + 55);
    }

    if (v15)
    {
      v16 = (v13 >> 24);
    }

    else
    {
      v16 = 46;
    }

    v17 = v13 << 8 >> 24;
    if (v17 <= 0x7F)
    {
      v18 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x40000;
    }

    else
    {
      v18 = __maskrune(v17, 0x40000uLL);
      v13 = *(this + 55);
    }

    if (v18)
    {
      v19 = (v13 << 8 >> 24);
    }

    else
    {
      v19 = 46;
    }

    v20 = v13 >> 8;
    if (v20 <= 0x7F)
    {
      v21 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
    }

    else
    {
      v21 = __maskrune(v20, 0x40000uLL);
      v13 = *(this + 55);
    }

    if (v21)
    {
      v22 = (v13 >> 8);
    }

    else
    {
      v22 = 46;
    }

    if (v13 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v13 + 60) & 0x40000) != 0)
      {
        goto LABEL_35;
      }
    }

    else if (__maskrune(v13, 0x40000uLL))
    {
LABEL_35:
      v23 = *(this + 220);
LABEL_38:
      _cg_jpeg_mem_term("initialize", 1288, "*** ERROR: '%c%c%c%c'-initialize failed [%d]\n", v16, v19, v22, v23, v9);
      kdebug_trace();
      goto LABEL_334;
    }

    v23 = 46;
    goto LABEL_38;
  }

  if ((gIIODebugFlags & 0x30000) != 0)
  {
    ImageIOLog("    getExpectedWidthAndHeightForSubsampling:    subSampleFactor: %d  size: %d x %d\n", *(this + 166), v214[0], cf);
    if ((gIIODebugFlags & 0x30000) != 0)
    {
      ImageIOLog("                                           :    original size: %d x %d\n", *(this + 61), *(this + 62));
    }
  }

  v40 = cf;
  *(this + 61) = v214[0];
  *(this + 62) = v40;
LABEL_70:
  v41 = *(this + 57);
  if (v41 && *(this + 526) == 1)
  {
    v42 = v41 / HEIFMainImage::width(v27);
    v43 = *(this + 57);
    v44 = v43 / HEIFMainImage::height(v27);
    if (v42 < v44)
    {
      v44 = v42;
    }

    if (v44 <= 1.0)
    {
      v45 = v44;
    }

    else
    {
      v45 = 1.0;
    }

    *(this + 61) = (v45 * HEIFMainImage::width(v27));
    *(this + 62) = (v45 * HEIFMainImage::height(v27)) & 0xFFFFFFFE;
  }

  ColorSpaceName = HEIFMainImage::getColorSpaceName(v27);
  if (ColorSpaceName)
  {
    v47 = CGColorSpaceCreateWithName(ColorSpaceName);
  }

  else
  {
    ColorSpace = HEIFMainImage::getColorSpace(v27);
    v47 = CGColorSpaceRetain(ColorSpace);
  }

  *(this + 20) = v47;
  if (!v47)
  {
    v47 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    *(this + 20) = v47;
  }

  if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
  {
    v49 = *(this + 55);
    v50 = v49 >> 24;
    if ((v49 >> 24) <= 0x7F)
    {
      v51 = *(MEMORY[0x1E69E9830] + 4 * v50 + 60) & 0x40000;
    }

    else
    {
      v51 = __maskrune(v50, 0x40000uLL);
      v49 = *(this + 55);
    }

    if (v51)
    {
      v52 = (v49 >> 24);
    }

    else
    {
      v52 = 46;
    }

    v53 = v49 << 8 >> 24;
    if (v53 <= 0x7F)
    {
      v54 = *(MEMORY[0x1E69E9830] + 4 * v53 + 60) & 0x40000;
    }

    else
    {
      v54 = __maskrune(v53, 0x40000uLL);
      v49 = *(this + 55);
    }

    if (v54)
    {
      v55 = (v49 << 8 >> 24);
    }

    else
    {
      v55 = 46;
    }

    v56 = v49 >> 8;
    if (v56 <= 0x7F)
    {
      v57 = *(MEMORY[0x1E69E9830] + 4 * v56 + 60) & 0x40000;
    }

    else
    {
      v57 = __maskrune(v56, 0x40000uLL);
      v49 = *(this + 55);
    }

    if (v57)
    {
      v58 = (v49 >> 8);
    }

    else
    {
      v58 = 46;
    }

    if (v49 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v49 + 60) & 0x40000) != 0)
      {
        goto LABEL_104;
      }
    }

    else if (__maskrune(v49, 0x40000uLL))
    {
LABEL_104:
      v59 = *(this + 220);
LABEL_107:
      Name = CGColorSpaceGetName(*(this + 20));
      v61 = IIOString::IIOString(v214, Name);
      v62 = IIOString::utf8String(v61);
      ImageIOLog("COL '%c%c%c%c' %s:%d using colorSpace: '%s'\n", v52, v55, v58, v59, "initialize", 674, v62);
      IIOString::~IIOString(v214);
      v47 = *(this + 20);
      goto LABEL_108;
    }

    v59 = 46;
    goto LABEL_107;
  }

LABEL_108:
  theData = v8;
  if (CGColorSpaceGetModel(v47) == kCGColorSpaceModelRGB)
  {
    v63 = 1380401696;
  }

  else
  {
    v63 = 1196573017;
  }

  *(this + 85) = v63;
  *(this + 264) = 0;
  StereoAggressorCount = HEIFGroupItem::getStereoAggressorCount(v27);
  if (StereoAggressorCount)
  {
    v65 = StereoAggressorCount;
    for (i = 0; i != v65; ++i)
    {
      if (HEIFMainImage::getHEIFAlternateImageAtIndex(v27, i))
      {
        *(this + 523) = 1;
      }
    }
  }

  NumberOfAuxImages = HEIFMainImage::getNumberOfAuxImages(v27);
  if (!NumberOfAuxImages)
  {
    if (*(this + 85) != 1380401696)
    {
      *(this + 262) = 0;
      if (!v10)
      {
        goto LABEL_128;
      }

      goto LABEL_133;
    }

    v74 = HEIFMainImage::bitDepth(v27);
    *(this + 262) = 5;
    if (v74 == 10)
    {
      *(this + 147) = 5;
      *(this + 163) = 5;
      *(this + 263) = 0;
    }

    goto LABEL_132;
  }

  v68 = NumberOfAuxImages;
  for (j = 0; j != v68; ++j)
  {
    HEIFAuxImageAtIndex = HEIFMainImage::getHEIFAuxImageAtIndex(v27, j);
    v71 = IIOImageWriteSession::getSize(HEIFAuxImageAtIndex);
    if (HEIFAuxImage::auxiliaryType(HEIFAuxImageAtIndex) == 3)
    {
      v72 = HEIFAuxImage::auxiliaryAlpha(HEIFAuxImageAtIndex);
      if (!v72)
      {
        _cg_jpeg_mem_term("initialize", 705, "*** ERROR: image has alpha plane, but auxImage alpha is 'kCGImageAlphaNone'?\n");
        LOBYTE(v72) = 3;
      }

      *(this + 262) = v72 & 0x1F;
      *(this + 529) = HEIFAuxImage::auxiliaryAlpha(HEIFAuxImageAtIndex) == 1;
      *(this + 128) = HEIFAuxImage::auxiliaryPixelFormat(HEIFAuxImageAtIndex);
      *(this + 528) = 1;
    }

    else if (v71 && CFStringCompare(v71, *gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap, 0) == kCFCompareEqualTo)
    {
      *(this + 522) = 1;
    }
  }

  if (*(this + 528))
  {
LABEL_132:
    if (!v10)
    {
      goto LABEL_128;
    }

    goto LABEL_133;
  }

  *(this + 262) = 5;
  if (!v10)
  {
LABEL_128:
    v73 = 1;
    goto LABEL_136;
  }

LABEL_133:
  if (*(this + 522))
  {
    v73 = 0;
  }

  else
  {
    v73 = *(this + 523) ^ 1;
  }

LABEL_136:
  *(this + 128) = HEIFMainImage::bitDepth(v27);
  EnableRestrictedDecodingFlag = HEIFReadPlugin::getEnableRestrictedDecodingFlag(this, v199);
  if (*(this + 85) != 1196573017)
  {
    *(this + 130) = 4;
    v81 = *(this + 128);
    if (v73 & (v81 < 9 || EnableRestrictedDecodingFlag))
    {
      *(this + 64) = 2097160;
      *(this + 264) = 0;
      *(this + 144) = 8;
      *(this + 160) = 8;
    }

    else
    {
      if (v81 != 10 || *(this + 528) == 1)
      {
        *(this + 64) = 4194320;
        v80 = 8;
        goto LABEL_150;
      }

      *(this + 64) = 2097162;
      *(this + 264) = 3;
      *(this + 296) = 3;
      *(this + 328) = 3;
    }

    v80 = 4;
    goto LABEL_150;
  }

  v76 = *(this + 528);
  if (v76)
  {
    v77 = 2;
  }

  else
  {
    v77 = 1;
  }

  *(this + 130) = v77;
  if (*(this + 128) <= 8u)
  {
    v78 = 8;
  }

  else
  {
    v78 = 16;
  }

  *(this + 128) = v78;
  v79 = v78 << v76;
  *(this + 129) = v79;
  v80 = v79 >> 3;
LABEL_150:
  v82 = (*(this + 61) * v80 + 15) & 0xFFFFFFF0;
  *(this + 63) = v82;
  *(this + 71) = v82;
  *(this + 79) = v82;
  v83 = IIOSkipMetadata(v199);
  v84 = IIOSkipXMP_and_IPTC(v199);
  if (v83)
  {
    if (*(this + 383) != 1)
    {
      goto LABEL_167;
    }

    if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
    {
      ImageIOLog("••• Ⓜ️  skipMetadata and decodeToHDR - contradicting requests\n");
    }

    if ((v84 & 1) == 0)
    {
      _cg_jpeg_mem_term("initialize", 836, "*** ERROR: skipMetadata and decodeToHDR - contradicting requests - will only skip XMP metadata\n");
    }

    v84 = 1;
  }

  if (*(this + 232) < 2u || (*(this + 383) & 1) != 0 || (*(this + 382) & 1) != 0)
  {
    v85 = 0;
    goto LABEL_168;
  }

  if ((gIIODebugFlags & 0x4000000000000) != 0 && IIO_OSAppleInternalBuild())
  {
    ImageIOLog("••• Ⓜ️  skipping metadata for thumbnail creation\n");
  }

LABEL_167:
  v85 = 1;
LABEL_168:
  v86 = IIOCreateCMPhotoDecompressionSession(v218);
  if (!v86)
  {
    v212 = 0;
    v213 = 0;
    v211 = 1;
    v89 = v200;
    if (!v200)
    {
      v90 = IIOImageReadSession::getSize(*(this + 3));
      v91 = IIOImageReadSession::retainBytePointer(*(this + 3), &v217, 1);
      if (!v91)
      {
        LogError("initialize", 867, "*** ERROR: retainBytePointer failed\n");
        v200 = 0;
        goto LABEL_308;
      }

      v92 = v91;
      v93 = *(this + 61);
      if (v93)
      {
        v94 = *(this + 62);
        if (!v94)
        {
          v93 = 0;
        }

        v92 = v91 + v93;
        if (v94)
        {
          v90 = *(this + 62);
        }
      }

      v89 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v92, v90, *MEMORY[0x1E695E498]);
      if (!v89)
      {
        v200 = 0;
        goto LABEL_276;
      }
    }

    v200 = v89;
    v95 = gFunc_CMPhotoDecompressionSessionCreateContainer(v218[0], 0, v89, &v211 + 4, &v213);
    if (v95)
    {
      v96 = v95;
      v97 = IIOCMErrorString(v95);
      LogError("initialize", 885, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v97, v96);
LABEL_276:
      CFRelease(v218[0]);
      goto LABEL_277;
    }

    if (GlobalHEIFInfo::hasHEIFSequence(v198))
    {
      v98 = GlobalHEIFInfo::useHEIFSequence(v198);
    }

    else
    {
      v98 = 0;
    }

    v99 = (this + 532);
    v210 = 0;
    v209 = 0;
    if (v85)
    {
      ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v213, *v196, 0, 0, 0, &v211);
      if (ImageGeometryForIndexWithOptions)
      {
        v101 = ImageGeometryForIndexWithOptions;
        v102 = IIOCMErrorString(ImageGeometryForIndexWithOptions);
        LogError("initialize", 909, "*** CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions  err = %s [%d]\n", v102, v101);
        goto LABEL_245;
      }

      *v214 = 0;
      v215 = 0;
      v216 = 0;
      IIODictionary::IIODictionary(v214);
      IIONumber::IIONumber(&cf, v211);
      IIODictionary::setObjectForKeyGroup(v214, v208, @"Orientation", @"{TIFF}");
      IIONumber::~IIONumber(&cf);
      v103 = CGImageMetadataCreateFromLegacyProps(v214);
      CGImageMetadataMerge(v195, v103, 0);
      if (v103)
      {
        CFRelease(v103);
        IIODictionary::~IIODictionary(v214);
        goto LABEL_245;
      }

      IIODictionary::~IIODictionary(v214);
    }

    HEIFExifPayloadAtIndex = HEIFMainImage::getHEIFExifPayloadAtIndex(v27, 0);
    if (HEIFExifPayloadAtIndex)
    {
      v105 = HEIFExifPayloadAtIndex;
      v106 = gFunc_CMPhotoDecompressionContainerCopyExifForIndexWithOptions;
      v107 = v213;
      v108 = IIOImageSource::cf(HEIFExifPayloadAtIndex);
      Ref = IIOImageSource::imageReadRef(v105);
      v110 = v106(v107, v108, Ref, 0, &v210, &v209);
      if (v110)
      {
        v111 = v110;
        v112 = IIOCMErrorString(v110);
        LogError("initialize", 936, "*** CMPhotoDecompressionContainerCopyExifForIndexWithOptions  err = %s [%d]\n", v112, v111);
        v99 = (this + 532);
        v113 = theData;
      }

      else
      {
        BytePtr = CFDataGetBytePtr(v209);
        Length = CFDataGetLength(v209);
        v99 = (this + 532);
        v113 = theData;
        if (Length > v210)
        {
          MetadataFromDatabuffer = CreateMetadataFromDatabuffer(&BytePtr[v210], Length - v210);
          v122 = MetadataFromDatabuffer;
          if (MetadataFromDatabuffer)
          {
            v123 = *(MetadataFromDatabuffer + 48);
            if (v123)
            {
              *v214 = 0;
              v215 = 0;
              v216 = 0;
              v124 = IIODictionary::IIODictionary(v214, v123);
              *(this + 134) = IIODictionary::getFloatForKeyGroup(v124, @"33", @"{MakerApple}");
              FloatForKeyGroup = IIODictionary::getFloatForKeyGroup(v214, @"48", @"{MakerApple}");
              *(this + 135) = FloatForKeyGroup;
              v126 = *(this + 134);
              v127 = 0.0;
              if (v126 < 0.0 || v126 > 0.0 && (v127 = 1.0, v126 < 1.0))
              {
                *(this + 134) = v127;
                v126 = v127;
              }

              v128 = 0.0;
              if (FloatForKeyGroup < 0.0 || FloatForKeyGroup > 0.0 && (v128 = 1.0, FloatForKeyGroup < 1.0))
              {
                *(this + 135) = v128;
                FloatForKeyGroup = v128;
              }

              if ((gIIODebugFlags & 0x300000) != 0)
              {
                ImageIOLog("☀️  %s - headroom from makerNote: _meteorHeadroom: %g   _meteorPlusHeadroom:%g\n", "initialize", v126, FloatForKeyGroup);
              }

              IIODictionary::~IIODictionary(v214);
            }
          }

          if (HEIFMainImage::isTiled(v27))
          {
            metadata = v122;
            TileWidth = HEIFMainImage::getTileWidth(v27);
            TileLength = HEIFMainImage::getTileLength(v27);
            IIONumber::IIONumber(v214, TileWidth);
            v130 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"TileWidth", kCGImageMetadataTypeDefault, v216);
            IIONumber::~IIONumber(v214);
            if (v130)
            {
              CGImageMetadataSetTagWithPath(metadata, 0, @"tiff:TileWidth", v130);
              CFRelease(v130);
            }

            IIONumber::IIONumber(v214, TileLength);
            v131 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"TileLength", kCGImageMetadataTypeDefault, v216);
            IIONumber::~IIONumber(v214);
            v113 = theData;
            v122 = metadata;
            if (v131)
            {
              CGImageMetadataSetTagWithPath(metadata, 0, @"tiff:TileLength", v131);
              CFRelease(v131);
            }
          }

          CGImageMetadataMerge(v195, v122, 0);
          if (v122)
          {
            CFRelease(v122);
          }
        }

        if (v209)
        {
          CFRelease(v209);
        }
      }
    }

    else
    {
      cf = 0;
      v114 = gFunc_CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions(v213, *v196, 0, 0, 0, &cf);
      if (v114)
      {
        v115 = v114;
        v116 = IIOCMErrorString(v114);
        LogError("initialize", 1007, "*** CMPhotoDecompressionContainerCopyImagePropertiesForIndexWithOptions  err = %s [%d]\n", v116, v115);
      }

      v113 = theData;
      if (cf)
      {
        *v214 = 0;
        v215 = 0;
        v216 = 0;
        v117 = IIODictionary::IIODictionary(v214, cf);
        v118 = CGImageMetadataCreateFromLegacyProps(v117);
        if (v118)
        {
          CGImageMetadataMerge(v195, v118, 0);
          CFRelease(v118);
        }

        CFRelease(cf);
        IIODictionary::~IIODictionary(v214);
      }
    }

    if (v84)
    {
      if ((v85 & 1) == 0)
      {
        CGImageMetadataRemoveTagWithPath(v195, 0, @"dc:creator");
      }

      goto LABEL_236;
    }

    if (v113)
    {
      v132 = CFDataGetBytePtr(v113);
      v133 = CFDataGetLength(v113);
      MetadataFromXMPSidecarData = CreateMetadataFromXMPSidecarData(v132, v133);
      CGImageMetadataMerge(v195, MetadataFromXMPSidecarData, 0);
      if (!MetadataFromXMPSidecarData)
      {
LABEL_236:
        if (v98)
        {
          if (*(this + 55) == 1096173907)
          {
            v148 = &kCGImagePropertyAVISDictionary;
          }

          else
          {
            v148 = &kCGImagePropertyHEICSDictionary;
          }

          v149 = *v148;
          FrameDuration = HEIFMainImage::getFrameDuration(v27);
          v151 = *(this + 7);
          IIONumber::IIONumber(v214, FrameDuration);
          IIODictionary::setObjectForKeyGroup(v151, v214, @"UnclampedDelayTime", v149);
          IIONumber::~IIONumber(v214);
          v153 = 0.1;
          if (FrameDuration >= 0.1)
          {
            v153 = FrameDuration;
          }

          v154 = *(this + 7);
          IIONumber::IIONumber(v152, v153);
          IIODictionary::setObjectForKeyGroup(v154, v214, @"DelayTime", v149);
          IIONumber::~IIONumber(v214);
        }

        HEIFItemPayloadAtIndex = HEIFMainImage::getHEIFItemPayloadAtIndex(v27, 0);
        if (HEIFItemPayloadAtIndex)
        {
          HEIFItem::updateProperties(HEIFItemPayloadAtIndex, *(this + 7));
        }

LABEL_245:
        v204 = 0;
        v205 = 0;
        if (v98)
        {
          v156 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v213, 0, 0, &v212);
          if (v156)
          {
            v157 = v156;
            v158 = IIOCMErrorString(v156);
            LogError("initialize", 1100, "*** CMPhotoDecompressionContainerCreateSequenceContainer  err = %s [%d]\n", v158, v157);
          }

          v159 = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v212, *v99, 0, &v205, &v204, &v211);
          if (v159)
          {
            IIOCMErrorString(v159);
            LogError("initialize", 1103, "*** CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions  err = %s [%d]\n");
LABEL_252:
            LODWORD(v211) = 0;
LABEL_253:
            if (IIODictionary::getBoolForKey(v199, @"kCGImageSourceCreateThumbnailWithTransform") && (v211 - 5) <= 3)
            {
              *(this + 276) = vrev64_s32(*(this + 244));
            }

            if (IIODictionary::containsKey(v199, @"kCGImageSourceDecodeRequest"))
            {
              *v214 = 0;
              v215 = 0;
              v216 = 0;
              IIODictionary::IIODictionary(v214);
              v203 = 0;
              if ((*(this + 528) & 1) != 0 || (gFunc_CMPhotoDecompressionContainerGetEncoderNativePixelFormatForIndexWithOptions(v213, *v99, 0, &v203), (DecodePixelFormatForBitDepth = v203) == 0))
              {
                v162 = HEIFMainImage::bitDepth(v27);
                DecodePixelFormatForBitDepth = HEIFReadPlugin::getDecodePixelFormatForBitDepth(this, v162);
              }

              IIONumber::IIONumber(&cf, DecodePixelFormatForBitDepth);
              IIODictionary::setObjectForKey(v214, &cf, *gIIO_kCMPhotoDecompressionOption_OutputPixelFormat);
              IIONumber::~IIONumber(&cf);
              HEIFReadPlugin::updateCreateImageOptions(this, v214, v199);
              v202 = 0;
              v163 = gFunc_CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex(v213, *v99, v215, &v202);
              v164 = v163;
              if (v163)
              {
                v165 = IIOCMErrorString(v163);
                LogError("initialize", 1161, "*** CMPhotoDecompressionContainerCreateOutputBufferAttributesForImageIndex  err = %s [%d]\n", v165, v164);
              }

              if (v202)
              {
                cf = 0;
                v207 = 0;
                v208 = 0;
                IIODictionary::IIODictionary(&cf, v202, 1);
                if ((IIODictionary::containsKey(&cf, *gIIO_kCVPixelBufferPixelFormatTypeKey) & 1) == 0)
                {
                  IIONumber::IIONumber(v201, DecodePixelFormatForBitDepth);
                  IIODictionary::setObjectForKey(&cf, v201, *gIIO_kCVPixelBufferPixelFormatTypeKey);
                  IIONumber::~IIONumber(v201);
                  if ((gIIODebugFlags & 0x2000000) != 0)
                  {
                    v166 = IIODictionary::getUint32ForKey(&cf, *gIIO_kCVPixelBufferPixelFormatTypeKey);
                    LogPixelFormat(v166, "initialize", 1168);
                  }
                }

                HEIFMainImage::getHeadroom(v27);
                if (v167 > 0.0)
                {
                  IIONumber::IIONumber(v201, v167);
                  IIODictionary::setObjectForKey(&cf, v201[2], @"IOSurfaceContentHeadroom");
                  IIONumber::~IIONumber(v201);
                }

                MaxPicAverageLightLevel = HEIFMainImage::getMaxPicAverageLightLevel(v27);
                if (MaxPicAverageLightLevel != 0.0)
                {
                  *(this + 88) = MaxPicAverageLightLevel / 203.0;
                }

                HEIFReadPlugin::handleDecodeRequest(this, v199, &cf);
                CFRelease(v202);
                IIODictionary::~IIODictionary(&cf);
              }

              IIODictionary::~IIODictionary(v214);
            }

            if (v212)
            {
              CFRelease(v212);
            }

            if (v213)
            {
              CFRelease(v213);
            }

            goto LABEL_276;
          }
        }

        else
        {
          v160 = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v213, *v99, 0, &v205, &v204, &v211);
          if (v160)
          {
            IIOCMErrorString(v160);
            LogError("initialize", 1108, "*** CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions  err = %s [%d]\n");
            goto LABEL_252;
          }
        }

        if (v211)
        {
          IIONumber::IIONumber(v214, v211);
          v176 = CGImageMetadataTagCreate(@"http://ns.adobe.com/tiff/1.0/", @"tiff", @"TileLength", kCGImageMetadataTypeDefault, v216);
          IIONumber::~IIONumber(v214);
          if (v176)
          {
            CGImageMetadataSetTagWithPath(v195, 0, @"tiff:Orientation", v176);
            CFRelease(v176);
          }
        }

        goto LABEL_253;
      }

      v135 = MetadataFromXMPSidecarData;
    }

    else
    {
      *v214 = 0;
      HEIFXMPPayloadAtIndex = HEIFMainImage::getHEIFXMPPayloadAtIndex(v27, 0);
      if (!HEIFXMPPayloadAtIndex)
      {
        goto LABEL_236;
      }

      v137 = HEIFXMPPayloadAtIndex;
      v138 = gFunc_CMPhotoDecompressionContainerCopyXMPForIndexWithOptions;
      v139 = v213;
      v140 = IIOImageSource::cf(HEIFXMPPayloadAtIndex);
      v141 = IIOImageSource::imageReadRef(v137);
      v142 = (v138)(v139, v140, v141, 0, 0, v214);
      if (v142)
      {
        v143 = v142;
        v144 = IIOCMErrorString(v142);
        LogError("initialize", 1053, "*** CMPhotoDecompressionContainerCopyXMPForIndexWithOptions  err = %s [%d]\n", v144, v143);
      }

      else
      {
        v145 = CFDataGetBytePtr(*v214);
        v146 = CFDataGetLength(*v214);
        MetadataFromXMPBuffer = CreateMetadataFromXMPBuffer(v145, v146);
        CGImageMetadataMerge(v195, MetadataFromXMPBuffer, 0);
        if (MetadataFromXMPBuffer)
        {
          CFRelease(MetadataFromXMPBuffer);
        }
      }

      v135 = *v214;
      v99 = (this + 532);
      if (!*v214)
      {
        goto LABEL_236;
      }
    }

    CFRelease(v135);
    goto LABEL_236;
  }

  v87 = v86;
  v88 = IIOCMErrorString(v86);
  LogError("initialize", 852, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v88, v87);
LABEL_277:
  *(this + 381) = 0;
  v169 = CGColorSpaceContainsFlexGTCInfo();
  *(this + 380) = v169;
  if ((v169 & 1) == 0 && ((*(this + 523) & 1) != 0 || *(this + 522) == 1))
  {
    v174 = IIODictionary::getObjectForKey(v199, @"kCGImageSourceDecodeRequest");
    if (!v174 || CFStringCompare(v174, @"kCGImageSourceDecodeToHDR", 0))
    {
      goto LABEL_303;
    }

    v175 = IIODictionary::getObjectForKey(v199, @"kCGImageSourceDecodeRequestOptions");
    *v214 = 0;
    v215 = 0;
    v216 = 0;
    IIODictionary::IIODictionary(v214, v175);
    if (*(this + 524) == 1)
    {
      if (CGColorSpaceIsPQBased(*(this + 20)))
      {
        if (*(this + 379) == 1 && (gIIODebugFlags & 0x300000) != 0)
        {
          ImageIOLog("☀️  CHECKME: we called 'didCalculateFlexGTC' and are setting colorSpaceIsFlexGTCProxy - this will call CalculateFlexGTC again\n");
        }

        *(this + 381) = 1;
        IIOReadPlugin::updateColorSpace(this, 0);
      }

      else
      {
        *(this + 524) = 0;
      }
    }
  }

  else
  {
    if (*(this + 88) != 0.0)
    {
      goto LABEL_303;
    }

    v170 = IIODictionary::getObjectForKey(v199, @"kCGImageSourceDecodeRequest");
    if (!v170 || CFStringCompare(v170, @"kCGImageSourceDecodeToHDR", 0))
    {
      goto LABEL_303;
    }

    *v214 = 0;
    v215 = 0;
    v216 = 0;
    IIODictionary::IIODictionary(v214);
    IIODictionary::setObjectForKey(v171, *(this + 20), @"kCGFlexRangeAlternateColorSpace");
    if (IIODictionary::containsKeyGroup(*(this + 6), @"kCGTargetHeadroom", @"kCGImageSourceDecodeRequestOptions"))
    {
      v172 = IIODictionary::getFloatForKeyGroup(*(this + 6), @"kCGTargetHeadroom", @"kCGImageSourceDecodeRequestOptions");
      IIONumber::IIONumber(&cf, v172);
      IIODictionary::setObjectForKey(v214, v208, @"kCGTargetHeadroom");
      IIONumber::~IIONumber(&cf);
    }

    if (IIODictionary::containsKeyGroup(*(this + 6), @"kCGDisableMetal", @"kCGImageSourceDecodeRequestOptions"))
    {
      BoolForKeyGroup = IIODictionary::getBoolForKeyGroup(*(this + 6), @"kCGDisableMetal", @"kCGImageSourceDecodeRequestOptions");
      IIONumber::IIONumber(&cf, BoolForKeyGroup);
      IIODictionary::setObjectForKey(v214, v208, @"kCGDisableMetal");
      IIONumber::~IIONumber(&cf);
    }

    v201[0] = 0;
    (*(*this + 176))(this, v214, 0, v201);
    cf = 0;
    v207 = 0;
    v208 = 0;
    IIODictionary::IIODictionary(&cf, v201[0]);
    *(this + 88) = IIODictionary::getFloatForKey(&cf, @"kCGContentBrightness");
    *(this + 89) = IIODictionary::getFloatForKey(&cf, @"kCGContentHeadroom");
    if (v201[0])
    {
      CFRelease(v201[0]);
    }

    IIODictionary::~IIODictionary(&cf);
  }

  IIODictionary::~IIODictionary(v214);
LABEL_303:
  *(this + 204) = 12;
  v177 = HEIFMainImage::bitDepth(v27);
  if (v177 != *(this + 128))
  {
    v178 = *(this + 7);
    IIONumber::IIONumber(v214, v177);
    IIODictionary::setObjectForKey(v178, v214, @"Depth");
    IIONumber::~IIONumber(v214);
  }

  if (GlobalHEIFInfo::shouldExposeMultiFrameContents(v198))
  {
    v179 = *(this + 56);
    if (v179 == GlobalHEIFInfo::getPrimaryImageIndex(v198))
    {
      IIODictionary::setObjectForKey(*(this + 7), *MEMORY[0x1E695E4D0], @"PrimaryImage");
    }
  }

LABEL_308:
  if ((gIIODebugFlags & 0x30000) != 0)
  {
    v180 = *(this + 55);
    v181 = v180 >> 24;
    if ((v180 >> 24) <= 0x7F)
    {
      v182 = *(MEMORY[0x1E69E9830] + 4 * v181 + 60) & 0x40000;
    }

    else
    {
      v182 = __maskrune(v181, 0x40000uLL);
      v180 = *(this + 55);
    }

    if (v182)
    {
      v183 = (v180 >> 24);
    }

    else
    {
      v183 = 46;
    }

    v184 = v180 << 8 >> 24;
    if (v184 <= 0x7F)
    {
      v185 = *(MEMORY[0x1E69E9830] + 4 * v184 + 60) & 0x40000;
    }

    else
    {
      v185 = __maskrune(v184, 0x40000uLL);
      v180 = *(this + 55);
    }

    if (v185)
    {
      v186 = (v180 << 8 >> 24);
    }

    else
    {
      v186 = 46;
    }

    v187 = v180 >> 8;
    if (v187 <= 0x7F)
    {
      v188 = *(MEMORY[0x1E69E9830] + 4 * v187 + 60) & 0x40000;
    }

    else
    {
      v188 = __maskrune(v187, 0x40000uLL);
      v180 = *(this + 55);
    }

    if (v188)
    {
      v189 = (v180 >> 8);
    }

    else
    {
      v189 = 46;
    }

    if (v180 <= 0x7F)
    {
      if ((*(MEMORY[0x1E69E9830] + 4 * v180 + 60) & 0x40000) != 0)
      {
        goto LABEL_329;
      }
    }

    else if (__maskrune(v180, 0x40000uLL))
    {
LABEL_329:
      v190 = *(this + 220);
LABEL_332:
      ImageIOLog("♦️  '%c%c%c%c'-initialize  w: %d  h: %d  rb: %d  bpp: %d  bpc: %d\n", v183, v186, v189, v190, *(this + 61), *(this + 62), *(this + 63), *(this + 129), *(this + 128));
      goto LABEL_333;
    }

    v190 = 46;
    goto LABEL_332;
  }

LABEL_333:
  v9 = 0;
LABEL_334:
  if (v200)
  {
    CFRelease(v200);
  }

  if (v217)
  {
    v191 = *(this + 3);
    if (v191)
    {
      IIOImageReadSession::releaseBytePointer(v191, v217);
    }
  }

  return v9;
}

BOOL IIO_Reader_PVR::testHeader(IIO_ReaderHandler *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = *(a1 + 1);
  if (v6 == kCGImageTypeIdentifierPVR)
  {
    if (a2[44] == 80 && a2[45] == 86 && a2[46] == 82 && a2[47] == 33)
    {
      v12 = *a2;
      if (v12 == 52)
      {
        return 1;
      }
    }

    else
    {
      v12 = *a2;
    }

    return v12 == 80 && a2[1] == 86 && a2[2] == 82 && a2[3] == 3;
  }

  if (v6 == kCGImageTypeIdentifierKTX)
  {
    if (a3 < 0x40)
    {
      return 0;
    }

    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
    v14 = IIO_ReaderHandler::readerForType(ReaderHandler, 1263818784);
    if (!v14)
    {
      return 0;
    }

    v23 = *(a5 + 2);
    v22 = *a5;
    if (!(*(*v14 + 16))(v14, a2, a3, a4, &v22))
    {
      return 0;
    }

    v15 = *(a2 + 3);
    v16 = *(a2 + 4);
    v17 = bswap32(v16);
    v18 = bswap32(*(a2 + 7));
    v19 = v15 == 67305985;
    v20 = v15 == 67305985 ? *(a2 + 7) : v18;
    if (!v19)
    {
      v16 = v17;
    }

    return !v16 && (v20 & 0xFFFFFFFC) == 0x8C00;
  }

  if (a3 >= 0x50 && v6 == kCGImageTypeIdentifierKTX2)
  {
    v10 = IIO_ReaderHandler::GetReaderHandler(a1);
    v11 = IIO_ReaderHandler::readerForType(v10, 1263818802);
    v23 = *(a5 + 2);
    v22 = *a5;
    if ((*(*v11 + 16))(v11, a2, a3, a4, &v22))
    {
      if (IsPVRTC1(*(a2 + 3)))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t IIO_Reader_HEIF::testHeader(uint64_t a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  if (v5 == kCGImageTypeIdentifierJPEG)
  {
    v15 = (*(a5 + 16) >> 4) & 3;
    if (v15)
    {
      v16 = -1;
    }

    else
    {
      v16 = 0;
    }

    if (v15 == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    if (v17)
    {
      if (v17 == 255 && *a2 == 255 && a2[1] == 216 && a2[2] == 255 && a2[3] == 224 && !a2[4] && a2[5] == 20 && a2[20] == 65 && a2[21] == 77 && a2[22] == 80 && a2[23] == 70)
      {
        return 1;
      }
    }

    else if (*a2 == 255 && a2[1] == 216 && a2[2] == 255)
    {
      return 1;
    }
  }

  else if (v5 == kCGImageTypeIdentifierJPEGXL)
  {
    if (a3 >= 0xC)
    {
      if (*a2 == 2815)
      {
        return 1;
      }

      if (*a2 == 0x204C584A0C000000 && *(a2 + 2) == 176622093)
      {
        return 1;
      }
    }
  }

  else
  {
    if (v5 != kCGImageTypeIdentifierDICOM)
    {
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      IIOScanner::IIOScanner(v24, a2, a3, 0);
      Val32 = IIOScanner::getVal32(v24);
      v9 = IIOScanner::getVal32(v24);
      if (Val32 >= a3)
      {
        v10 = a3;
      }

      else
      {
        v10 = Val32;
      }

      if (v9 != 1718909296)
      {
LABEL_82:
        IIOScanner::~IIOScanner(v24);
        return 0;
      }

      v11 = IIOScanner::getVal32(v24);
      v12 = v11;
      v13 = *(a1 + 8);
      if (v13 == kCGImageTypeIdentifierAVCI)
      {
        v14 = 1635148649;
        goto LABEL_57;
      }

      if (v13 == kCGImageTypeIdentifierHEIC)
      {
        if (v11 != 1751476579)
        {
          v14 = 1751476600;
          goto LABEL_57;
        }
      }

      else if (v13 == kCGImageTypeIdentifierHEICS)
      {
        if (v11 != 1751476600)
        {
          v14 = 1836279345;
          goto LABEL_57;
        }
      }

      else
      {
        if (v13 != kCGImageTypeIdentifierHEIF)
        {
          if (v13 == kCGImageTypeIdentifierAVIF)
          {
            v14 = 1635150182;
          }

          else
          {
            if (v13 != kCGImageTypeIdentifierAVIS)
            {
LABEL_60:
              IIOScanner::getVal32(v24);
              if (v10 >= 0x11 && v10 - 16 >= 4)
              {
                v20 = (v10 - 16) >> 2;
                while (1)
                {
                  v21 = IIOScanner::getVal32(v24);
                  v22 = *(a1 + 8);
                  if (v22 == kCGImageTypeIdentifierAVCI)
                  {
                    if (v21 == 1635148649)
                    {
                      goto LABEL_58;
                    }
                  }

                  else if (v22 != kCGImageTypeIdentifierHEIC || v12 == 1836279345)
                  {
                    if (v22 == kCGImageTypeIdentifierHEICS)
                    {
                      if (v21 == 1751476600 || v21 == 1836279345)
                      {
                        goto LABEL_58;
                      }
                    }

                    else if (v22 == kCGImageTypeIdentifierHEIF && (v21 == 1785750887 || v21 == 1835623985))
                    {
                      goto LABEL_58;
                    }
                  }

                  else if (v21 == 1751476579 || v21 == 1751476600)
                  {
                    goto LABEL_58;
                  }

                  if (!--v20)
                  {
                    goto LABEL_82;
                  }
                }
              }

              goto LABEL_82;
            }

            v14 = 1635150195;
          }

LABEL_57:
          if (v11 == v14)
          {
            goto LABEL_58;
          }

          goto LABEL_60;
        }

        if (v11 != 1785750887)
        {
          v14 = 1835623985;
          goto LABEL_57;
        }
      }

LABEL_58:
      IIOScanner::~IIOScanner(v24);
      return 1;
    }

    if (a3 >= 0x84 && *(a2 + 32) == 1296255300)
    {
      return 1;
    }
  }

  return 0;
}

void sub_185E9F89C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  IIOScanner::~IIOScanner(&a9);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x185E9F878);
}

uint64_t IIOImageRead::setGlobalInfoPtr(IIOImageRead *this, int a2, void *a3, void (*a4)(void *))
{
  pthread_mutex_lock((this + 88));
  v8 = *(this + 19);
  v9 = *(this + 20);
  if (v8 == v9)
  {
LABEL_5:
    v11 = *(this + 21);
    if (v9 >= v11)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3);
      v14 = v13 + 1;
      if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v8) >> 3);
      if (2 * v15 > v14)
      {
        v14 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v16 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        std::__allocate_at_least[abi:fe200100]<std::allocator<IIO_GlobalInfo>>(this + 152, v16);
      }

      v17 = 24 * v13;
      *v17 = a3;
      *(v17 + 8) = a4;
      *(v17 + 16) = a2;
      *(v17 + 20) = 0;
      v12 = 24 * v13 + 24;
      v18 = *(this + 19);
      v19 = *(this + 20) - v18;
      v20 = (24 * v13 - v19);
      memcpy(v20, v18, v19);
      v21 = *(this + 19);
      *(this + 19) = v20;
      *(this + 20) = v12;
      *(this + 21) = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v9 = a3;
      *(v9 + 8) = a4;
      v12 = v9 + 24;
      *(v9 + 16) = a2;
      *(v9 + 20) = 0;
    }

    *(this + 20) = v12;
  }

  else
  {
    v10 = *(this + 19);
    while (*(v10 + 16) != a2)
    {
      v10 += 24;
      if (v10 == v9)
      {
        goto LABEL_5;
      }
    }

    (*(v10 + 8))(*v10);
    *v10 = a3;
    *(v10 + 8) = a4;
    *(v10 + 16) = a2;
    *(v10 + 20) = 0;
  }

  return pthread_mutex_unlock((this + 88));
}

void IIOString::IIOString(IIOString *this, const char *a2)
{
  *this = &unk_1EF4D41F0;
  *(this + 1) = 0;
  if (a2)
  {
    v3 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  }

  else
  {
    LogWarning("IIOString", 525, "IIOString -- 'str' is nil\n");
    v3 = 0;
  }

  *(this + 2) = v3;
}

void ATXReadPlugin::~ATXReadPlugin(ATXReadPlugin *this)
{
  *this = &unk_1EF4D6428;
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);

  JUMPOUT(0x186602850);
}

{
  *this = &unk_1EF4D6428;
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);
}

void CommonASTCReadPlugin::~CommonASTCReadPlugin(CommonASTCReadPlugin *this)
{
  *this = &unk_1EF4DE518;
  v2 = *(this + 61);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 63);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  IIOReadPlugin::~IIOReadPlugin(this);
}

{
  CommonASTCReadPlugin::~CommonASTCReadPlugin(this);

  JUMPOUT(0x186602850);
}

void IIOTextureHandler::~IIOTextureHandler(IIOTextureHandler *this)
{
  *this = &unk_1EF4DE4F8;
  if (*(this + 5))
  {
    IIOImageReadSession::unmapData(*(this + 6));
    CFRelease(*(this + 5));
  }

  *(this + 5) = 0;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 3) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }
}

{
  IIOTextureHandler::~IIOTextureHandler(this);

  JUMPOUT(0x186602850);
}

uint64_t IIOTextureHandler::ReleaseTextureInfo(uint64_t this, void *a2)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void ASTCTextureImp::~ASTCTextureImp(ASTCTextureImp *this)
{
  *this = &unk_1EF4D8FD0;
  v2 = *(this + 7);
  if (v2 && (*(this + 43) & 1) == 0)
  {
    free(v2);
  }

  *(this + 7) = 0;
  v3 = *(this + 9);
  if (v3)
  {
    free(v3);
  }

  *(this + 9) = 0;
  if (*(this + 16))
  {
    v4 = *(this + 17);
    if (v4)
    {
      Source = CGImageSourceGetSource(v4);
      if (Source)
      {
        IIOImageReadSession::releaseBytePointer(Source, *(this + 16));
      }
    }

    *(this + 16) = 0;
  }

  v6 = *(this + 30);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 30) = 0;
  v7 = *(this + 17);
  if (v7)
  {
    CFRelease(v7);
  }

  *(this + 17) = 0;
  pthread_mutex_destroy((this + 168));

  _cg_jpeg_mem_term(this, v8, v9);
}

{
  ASTCTextureImp::~ASTCTextureImp(this);

  JUMPOUT(0x186602850);
}

BOOL IIO_Reader_ASTC::testHeader(IIO_ReaderHandler *a1, _DWORD *a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = *(a1 + 1);
  if (v6 == kCGImageTypeIdentifierASTC)
  {
    return *a2 == 1554098963;
  }

  if (v6 != kCGImageTypeIdentifierKTX)
  {
    if (a3 < 0x51)
    {
      return 0;
    }

    if (v6 != kCGImageTypeIdentifierKTX2)
    {
      return 0;
    }

    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
    v11 = IIO_ReaderHandler::readerForType(ReaderHandler, 1263818802);
    v21 = *(a5 + 2);
    v20 = *a5;
    return (*(*v11 + 16))(v11, a2, a3, a4, &v20) && IsASTC(a2[3]);
  }

  if (a3 < 0x41)
  {
    return 0;
  }

  v13 = IIO_ReaderHandler::GetReaderHandler(a1);
  v14 = IIO_ReaderHandler::readerForType(v13, 1263818784);
  if (!v14)
  {
    return 0;
  }

  v21 = *(a5 + 2);
  v20 = *a5;
  if (!(*(*v14 + 16))(v14, a2, a3, a4, &v20))
  {
    return 0;
  }

  v15 = a2[3];
  v16 = a2[4];
  v17 = bswap32(v16);
  if (v15 != 67305985)
  {
    v16 = v17;
  }

  if (v16)
  {
    return 0;
  }

  v18 = bswap32(a2[7]);
  v19 = v15 == 67305985 ? a2[7] : v18;
  result = 1;
  if (v19 >> 2 != 8855 && v19 - 37886 >= 0x10 && v19 - 37808 >= 0xE && v19 - 37840 >= 0xE)
  {
    return 0;
  }

  return result;
}

BOOL IIO_Reader_ETC::testHeader(IIO_Reader_ETC *a1, unsigned __int8 *a2, unint64_t a3, uint64_t a4, __int128 *a5)
{
  v7 = *(a1 + 1);
  if (v7 == kCGImageTypeIdentifierBC)
  {
    if (a3 < 0x80 || !IIO_Reader_ETC::isInDDSContainer(a1, a2))
    {
      return 0;
    }

    v12 = bswap32(*(a2 + 21));
    v13 = v12 - 1146639409 < 5 || v12 == 1146630448;
    return v13 || !v12 && (a2[80] & 0x40) != 0;
  }

  if (v7 == kCGImageTypeIdentifierKTX)
  {
    if (a3 < 0x40)
    {
      return 0;
    }

    ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
    v15 = IIO_ReaderHandler::readerForType(ReaderHandler, 1263818784);
    if (!v15)
    {
      return 0;
    }

    v22 = *(a5 + 2);
    v21 = *a5;
    if (!(*(*v15 + 16))(v15, a2, a3, a4, &v21))
    {
      return 0;
    }

    v16 = *(a2 + 4);
    v17 = bswap32(v16);
    v18 = bswap32(*(a2 + 7));
    if (*(a2 + 3) == 67305985)
    {
      v19 = *(a2 + 7);
    }

    else
    {
      v16 = v17;
      v19 = v18;
    }

    return !v16 && v19 - 37498 >= 0xFFFFFFF6;
  }

  if (a3 >= 0x50 && v7 == kCGImageTypeIdentifierKTX2)
  {
    v10 = IIO_ReaderHandler::GetReaderHandler(a1);
    v11 = IIO_ReaderHandler::readerForType(v10, 1263818802);
    v22 = *(a5 + 2);
    v21 = *a5;
    if ((*(*v11 + 16))(v11, a2, a3, a4, &v21))
    {
      if (IsETC(*(a2 + 3)))
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t IIO_Reader_HEIF::getImageCount(IIO_Reader_HEIF *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  IIO_LoadHEIFSymbols();
  v9 = IIOImageReadSession::globalInfoForType(a2, 1212500294);
  if (!v9)
  {
    operator new();
  }

  v10 = (*(*this + 272))(this, v9, a2, a3);
  if (v10 << 16)
  {
    v12 = v10;
    LogError("getImageCount", 1154, "*** ERROR: extractImageInfo failed: %d\n", v10);
    NumberOfMainImages = 0;
    if (!a5)
    {
      return v12;
    }

    goto LABEL_4;
  }

  NumberOfMainImages = GlobalHEIFInfo::getNumberOfMainImages(v9);
  v12 = 0;
  if (a5)
  {
LABEL_4:
    *a5 = NumberOfMainImages;
  }

  return v12;
}

void GlobalHEIFInfo::GlobalHEIFInfo(GlobalHEIFInfo *this)
{
  *this = &unk_1EF4DDA80;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  std::vector<_APPx *>::resize(this + 1, 0);
  std::vector<_APPx *>::resize(this + 4, 0);
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
}

void sub_185EA0334(_Unwind_Exception *exception_object)
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

void std::vector<_APPx *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<_APPx *>::__append(a1, a2 - v2);
  }
}

BOOL IIODictionary::containsKey(IIODictionary *this, const char *a2)
{
  IIOString::IIOString(v6, a2);
  v3 = *(this + 1);
  if (v3)
  {
    v4 = CFDictionaryContainsKey(v3, key) != 0;
  }

  else
  {
    v4 = 0;
  }

  IIOString::~IIOString(v6);
  return v4;
}

void sub_185EA03F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_HEIF::extractImageInfo(IIO_Reader_HEIF *this, GlobalHEIFInfo *a2, IIOImageReadSession *a3, IIODictionary *a4)
{
  v62[0] = 0;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  IIOScanner::IIOScanner(&v57, a3);
  if (GlobalHEIFInfo::getNumberOfMainImages(a2))
  {
    v6 = 0;
  }

  else
  {
    v7 = IIOCreateCMPhotoDecompressionSession(v62);
    v6 = v7;
    if (v7)
    {
      v9 = IIOCMErrorString(v7);
      _cg_jpeg_mem_term("extractImageInfo", 470, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n", v9, v6);
    }

    else
    {
      cf = 0;
      v56 = 0;
      v54 = 0;
      v10 = *(&v57 + 1);
      Uint32ForKey = v58;
      if (a4 && IIODictionary::containsKey(a4, @"JPEGOffset"))
      {
        Uint32ForKey = IIODictionary::getUint32ForKey(a4, @"JPEGLength");
        v10 += IIODictionary::getUint32ForKey(a4, @"JPEGOffset");
      }

      v6 = 0;
      v12 = 0;
      if (Uint32ForKey && v10)
      {
        v12 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, Uint32ForKey, *MEMORY[0x1E695E498]);
        if (v12)
        {
          v6 = gFunc_CMPhotoDecompressionSessionCreateContainer(v62[0], 0, v12, &v54, &v56);
          if (v6 || !v56)
          {
            v45 = IIOCMErrorString(v6);
            v8 = _cg_jpeg_mem_term("extractImageInfo", 509, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n", v45, v6);
          }

          else
          {
            theDict = 0;
            v13 = gFunc_CMPhotoDecompressionContainerCreateDictionaryDescription(v56, &theDict);
            v6 = v13;
            if (v13)
            {
              v14 = IIOCMErrorString(v13);
              _cg_jpeg_mem_term("extractImageInfo", 522, "*** CMPhotoDecompressionContainerCreateDictionaryDescription  err = %s [%d]\n", v14, v6);
            }

            else
            {
              memset(v52, 0, sizeof(v52));
              IIODictionary::IIODictionary(v52, theDict);
              if (IIODictionary::containsKey(v52, *gIIO_kCMPhotoDecompressionContainerDescription_GroupsList))
              {
                value[0] = 0;
                CFDictionaryGetValueIfPresent(theDict, *gIIO_kCMPhotoDecompressionContainerDescription_GroupsList, value);
                theArray[0] = 0;
                if (gFunc_CMPhotoDecompressionContainerCopyGroupsDescriptionArray)
                {
                  v6 = gFunc_CMPhotoDecompressionContainerCopyGroupsDescriptionArray(v56, theArray);
                }

                else
                {
                  _cg_jpeg_mem_term("extractImageInfo", 543, "*** ERROR: Symbol 'CMPhotoDecompressionContainerCopyGroupsDescriptionArray' not loaded\n");
                  v6 = 0;
                }

                Count = CFArrayGetCount(value[0]);
                if (theArray[0])
                {
                  v16 = CFArrayGetCount(theArray[0]);
                }

                else
                {
                  v16 = 0;
                }

                if (Count >= 1)
                {
                  for (i = 0; i != Count; ++i)
                  {
                    if (CFArrayGetValueAtIndex(value[0], i))
                    {
                      if (i < v16)
                      {
                        CFArrayGetValueAtIndex(theArray[0], i);
                      }

                      operator new();
                    }
                  }
                }

                if (theArray[0])
                {
                  CFRelease(theArray[0]);
                }
              }

              else
              {
                v6 = 0;
              }

              if (IIODictionary::containsKey(v52, *gIIO_kCMPhotoDecompressionContainerDescription_ImageSequenceCount))
              {
                v18 = IIODictionary::getUint32ForKey(v52, *gIIO_kCMPhotoDecompressionContainerDescription_ImageSequenceCount) != 0;
              }

              else
              {
                v18 = 0;
              }

              if ((GlobalHEIFInfo::useHEIFSequence(a2) & v18) == 1)
              {
                v51 = 0;
                GlobalHEIFInfo::setHasHEIFSequence(a2, 1);
                SequenceCount = gFunc_CMPhotoDecompressionContainerGetSequenceCount(v56, &v51);
                v20 = SequenceCount;
                if (SequenceCount)
                {
                  v21 = IIOCMErrorString(SequenceCount);
                  _cg_jpeg_mem_term("extractImageInfo", 582, "*** CMPhotoDecompressionContainerGetSequenceCount  err = %s [%d]\n", v21, v20);
                }

                v22 = gFunc_CMPhotoDecompressionContainerCreateSequenceContainer(v56, 0, v51 - 1, &cf);
                v23 = v22;
                if (v22)
                {
                  v24 = IIOCMErrorString(v22);
                  _cg_jpeg_mem_term("extractImageInfo", 588, "*** CMPhotoDecompressionContainerCreateSequenceContainer  err = %s [%d]\n", v24, v23);
                }

                v50 = 0;
                v25 = gFunc_CMPhotoDecompressionContainerCreateDictionaryDescription(cf, &v50);
                v6 = v25;
                if (v25)
                {
                  v26 = IIOCMErrorString(v25);
                  _cg_jpeg_mem_term("extractImageInfo", 599, "*** CMPhotoDecompressionContainerCreateDictionaryDescription  err = %s [%d]\n", v26, v6);
                }

                if (v50)
                {
                  v49 = 0;
                  CFDictionaryGetValueIfPresent(v50, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages, &v49);
                  v27 = CFDictionaryGetValue(v50, *gIIO_kCMPhotoDecompressionContainerDescription_LoopCount);
                  if (v27)
                  {
                    IIONumber::IIONumber(value, v27);
                    if (IIONumber::uint64Num(value) > 0xFFFFFFFE)
                    {
                      LODWORD(v27) = -1;
                    }

                    else
                    {
                      IIONumber::IIONumber(theArray, v27);
                      LODWORD(v27) = IIONumber::uint64Num(theArray);
                      IIONumber::~IIONumber(theArray);
                    }

                    IIONumber::~IIONumber(value);
                  }

                  GlobalHEIFInfo::setLoopCount(a2, v27);
                  v38 = CFArrayGetCount(v49);
                  value[0] = 0;
                  CFDictionaryGetValueIfPresent(v50, *gIIO_kCMPhotoDecompressionContainerDescription_SequenceTracksDescription, value);
                  if (v38 >= 1)
                  {
                    for (j = 0; j != v38; ++j)
                    {
                      if (CFArrayGetValueAtIndex(v49, j))
                      {
                        theArray[0] = 0;
                        v40 = gFunc_CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions(cf, j, 0, theArray);
                        v41 = v40;
                        if ((v40 + 16994) >= 2 && v40 != 0)
                        {
                          v43 = IIOCMErrorString(v40);
                          _cg_jpeg_mem_term("extractImageInfo", 628, "*** CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions  err = %s [%d]\n", v43, v41);
                        }

                        operator new();
                      }
                    }
                  }

                  CFRelease(v50);
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }
              }

              else
              {
                value[0] = 0;
                CFDictionaryGetValueIfPresent(theDict, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages, value);
                if (value[0])
                {
                  v28 = CFArrayGetCount(value[0]);
                  if (v28 >= 1)
                  {
                    for (k = 0; k != v28; ++k)
                    {
                      if (CFArrayGetValueAtIndex(value[0], k))
                      {
                        LODWORD(v51) = 0;
                        theArray[0] = 0;
                        v30 = gFunc_CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions(v56, k, 0, theArray);
                        v31 = v30;
                        if ((v30 + 16994) >= 2 && v30 != 0)
                        {
                          v33 = IIOCMErrorString(v30);
                          _cg_jpeg_mem_term("extractImageInfo", 671, "*** CMPhotoDecompressionContainerCopyHEIFItemPropertiesForIndexWithOptions  err = %s [%d]\n", v33, v31);
                        }

                        ImageGeometryForIndexWithOptions = gFunc_CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions(v56, k, 0, 0, 0, &v51);
                        v35 = ImageGeometryForIndexWithOptions;
                        if (ImageGeometryForIndexWithOptions != -16993 && ImageGeometryForIndexWithOptions != 0)
                        {
                          v37 = IIOCMErrorString(ImageGeometryForIndexWithOptions);
                          _cg_jpeg_mem_term("extractImageInfo", 677, "*** CMPhotoDecompressionContainerGetImageGeometryForIndexWithOptions  err = %s [%d]\n", v37, v35);
                        }

                        operator new();
                      }
                    }
                  }
                }
              }

              theArray[0] = 0;
              CFDictionaryGetValueIfPresent(theDict, *gIIO_kCMPhotoDecompressionContainerDescription_PrimaryImageIndex, theArray);
              if (theArray[0])
              {
                IIONumber::IIONumber(value, theArray[0]);
                v44 = IIONumber::uint32Num(value);
                GlobalHEIFInfo::setPrimaryImageIndex(a2, v44);
                IIONumber::~IIONumber(value);
              }

              IIODictionary::~IIODictionary(v52);
            }

            if (theDict)
            {
              CFRelease(theDict);
            }

            CFRelease(v56);
          }
        }

        else
        {
          v6 = 0;
        }
      }

      gFunc_CMPhotoDecompressionSessionFlushCachedBuffers(v62[0], 0, 0, v8);
      CFRelease(v62[0]);
      if (v12)
      {
        CFRelease(v12);
      }
    }
  }

  IIOScanner::~IIOScanner(&v57);
  return v6;
}