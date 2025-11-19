uint64_t RemoveClient(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      CFSetRemoveValue(*(DerivedStorage + 16), a2);
      FigSimpleMutexUnlock();
      return 0;
    }
  }

  return result;
}

uint64_t FigTTMLFeatureCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLFeatureCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLFeatureCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLBodyConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  FigBytePumpGetFigBaseObject(*a2);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  value = 0;
  cf = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_24;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v15, &cf);
    if (v8)
    {
      goto LABEL_24;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLDivCreate(v9, a1, a2, &value);
      if (!v8)
      {
        v10 = *(DerivedStorage + 136);
LABEL_12:
        CFArrayAppendValue(v10, value);
        goto LABEL_14;
      }

      goto LABEL_24;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v11 = CFGetAllocator(*a2);
      v8 = FigTTMLSetCreate(v11, a1, a2, &value);
      if (!v8)
      {
        v10 = *(DerivedStorage + 144);
        goto LABEL_12;
      }

LABEL_24:
      v12 = v8;
      goto LABEL_16;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_24;
  }

LABEL_14:
  v12 = 0;
  if (a3)
  {
    *a3 = value;
    value = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v12;
}

uint64_t FigTTMLBodyCreate_cold_1(uint64_t a1, _DWORD *a2)
{
  result = FigSignalErrorAtGM();
  *a2 = result;
  return result;
}

uint64_t FigTTMLBodyCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLBody_CopyChildNodeArray_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLBody_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCPEFairPlayProtectorCreateForFormatDescriptions(const void *a1, const __CFDictionary *a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  v76 = 0;
  cf = 0;
  context = 0;
  if (!a4)
  {
    return 4294955146;
  }

  v4 = a4;
  MEMORY[0x19A8D3660](&FigFairPlayCPEProtectorGetClassID_sRegisterFigFairPlayCPEProtectorTypeOnce, RegisterFigFairPlayCPEProtectorType);
  v8 = CMDerivedObjectCreate();
  if (v8)
  {
    v16 = v8;
    goto LABEL_121;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    goto LABEL_120;
  }

  v10 = DerivedStorage;
  if (a1)
  {
    v11 = CFRetain(a1);
  }

  else
  {
    v11 = 0;
  }

  *v10 = v11;
  *&v79 = 0;
  FigBytePumpGetFigBaseObject(v11);
  if (!a3 || (Value = CFDictionaryGetValue(a3, @"StorageURL")) == 0 || (v13 = Value, v14 = CFGetTypeID(Value), v14 != CFURLGetTypeID()) || (v15 = CFRetain(v13)) == 0)
  {
    v15 = FigFairPlayCopyDefaultKeybagFolderURL();
  }

  v16 = FigFairPlaySharedContextCopyForKeybagURLAndClient(a1, v15, cf, &v79);
  if (!v16)
  {
    *(v10 + 8) = v79;
    *&v79 = 0;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v79)
  {
    CFRelease(v79);
  }

  if (v16)
  {
    goto LABEL_121;
  }

  if (a3)
  {
    v17 = CFDictionaryGetValue(a3, @"AE50A074-4909-4EBC-8ADF-C8DDD5F591AA");
    *(v10 + 48) = v17;
    if (v17)
    {
      v18 = CFGetTypeID(v17);
      if (v18 != CFDictionaryGetTypeID())
      {
        goto LABEL_79;
      }

      v19 = *(v10 + 48);
      if (v19)
      {
        CFRetain(v19);
      }
    }

    v20 = CFDictionaryGetValue(a3, @"9692C034-625A-4B20-9D38-D1E9CF40B67F");
    *(v10 + 40) = v20;
    if (v20)
    {
      v21 = CFGetTypeID(v20);
      if (v21 != CFDictionaryGetTypeID())
      {
        goto LABEL_79;
      }

      v22 = *(v10 + 40);
      if (v22)
      {
        CFRetain(v22);
      }
    }

    v23 = CFDictionaryGetValue(a3, @"MonitorExternalProtectionState");
    if (v23)
    {
      v24 = v23;
      v25 = CFGetTypeID(v23);
      if (v25 == CFBooleanGetTypeID())
      {
        *(v10 + 73) = CFBooleanGetValue(v24);
        goto LABEL_31;
      }

LABEL_79:
      v16 = 4294955136;
      goto LABEL_121;
    }
  }

LABEL_31:
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    context = Mutable;
    *(v10 + 16) = Mutable;
    if (Mutable)
    {
      CFDictionaryApplyFunction(a2, FormatDescriptionFilter, &context);
      *(v10 + 24) = v76;
      if (CFDictionaryGetCount(*(v10 + 16)) < 1)
      {
        v16 = 4294955141;
        goto LABEL_121;
      }

LABEL_37:
      v27 = CMBaseObjectGetDerivedStorage();
      v79 = xmmword_196E73090;
      v28 = *(v27 + 48);
      v29 = MEMORY[0x1E695E480];
      if (v28)
      {
        v30 = CFDictionaryGetValue(v28, @"sinfs");
        if (!v30)
        {
          goto LABEL_79;
        }

        v31 = v30;
        v32 = CFGetTypeID(v30);
        if (v32 != CFArrayGetTypeID())
        {
          goto LABEL_79;
        }

        Count = CFArrayGetCount(v31);
        if (Count < 1)
        {
          goto LABEL_79;
        }

        v34 = Count;
        v73 = v27;
        v71 = v10;
        v72 = v4;
        v35 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
        v36 = OUTLINED_FUNCTION_3_123();
        v37 = 0;
        allocator = *v29;
        v38 = v35;
        v39 = v34;
        while (1)
        {
          LODWORD(valuePtr) = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v31, v37);
          if (!ValueAtIndex)
          {
            break;
          }

          v41 = ValueAtIndex;
          v42 = CFGetTypeID(ValueAtIndex);
          if (v42 != CFDictionaryGetTypeID())
          {
            break;
          }

          v43 = CFDictionaryGetValue(v41, @"id");
          if (!v43)
          {
            break;
          }

          v44 = v43;
          v45 = CFGetTypeID(v43);
          if (v45 != CFNumberGetTypeID() || !CFNumberGetValue(v44, kCFNumberSInt32Type, &valuePtr) || (valuePtr & 0x80000000) != 0)
          {
            break;
          }

          if (valuePtr)
          {
            *v38 = FigCPECreateFormatDescriptionIdentifierForTrackIDAndIndex(allocator, valuePtr, 0);
          }

          else
          {
            if (CFDictionaryGetCount(*(v73 + 16)) != 1)
            {
              goto LABEL_68;
            }

            CFDictionaryGetKeysAndValues(*(v73 + 16), v38, 0);
            if (*v38)
            {
              CFRetain(*v38);
            }
          }

          CFDictionaryGetValue(v41, @"sinf");
          CFDictionaryGetValue(v41, @"sinf2");
          SinfExtensionsFromSinfData = FigFairPlayCreateSinfExtensionsFromSinfData();
          v36[v37] = SinfExtensionsFromSinfData;
          if (SinfExtensionsFromSinfData)
          {
            if (!*v38)
            {
              goto LABEL_68;
            }
          }

          else
          {
            CFDictionaryGetValue(v41, @"pinf");
            CFDictionaryGetValue(v41, @"dpInfo");
            SinfExtensionsFromPinfData = FigFairPlayCreateSinfExtensionsFromPinfData();
            v36[v37] = SinfExtensionsFromPinfData;
            if (!*v38 || !SinfExtensionsFromPinfData)
            {
LABEL_68:
              v54 = 0;
              goto LABEL_69;
            }
          }

          ++v37;
          ++v38;
          if (!--v39)
          {
            v54 = CFDictionaryCreate(allocator, v35, v36, v34, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_69:
            v16 = 0;
            v55 = 1;
            goto LABEL_71;
          }
        }

        v54 = 0;
        v55 = 0;
        v16 = 4294955136;
LABEL_71:
        v56 = 0;
        v10 = v71;
        v4 = v72;
        do
        {
          v57 = v35[v56];
          if (v57)
          {
            CFRelease(v57);
          }

          v58 = v36[v56];
          if (v58)
          {
            CFRelease(v58);
          }

          ++v56;
        }

        while (v34 != v56);
        free(v35);
        free(v36);
        if (!v55)
        {
LABEL_112:
          if (!v54)
          {
LABEL_114:
            if (v16)
            {
              goto LABEL_121;
            }

            v67 = FigSimpleMutexCreate();
            *(v10 + 96) = v67;
            if (v67)
            {
              v68 = dispatch_queue_create("com.apple.fpcpefp.persistentrepo", 0);
              *(v10 + 128) = v68;
              if (v68)
              {
                v69 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                *(v10 + 120) = v69;
                if (v69)
                {
                  v16 = 0;
                  *v4 = cf;
                  return v16;
                }
              }
            }

            goto LABEL_120;
          }

LABEL_113:
          CFRelease(v54);
          goto LABEL_114;
        }

        v27 = v73;
        if (!v54)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v48 = CFDictionaryGetCount(*(v27 + 16));
        if (v48 <= 0)
        {
          allocator = *v29;
          v54 = CFDictionaryCreate(*v29, 0, 0, v48, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v50 = 0;
          v49 = 0;
        }

        else
        {
          v49 = OUTLINED_FUNCTION_3_123();
          v50 = OUTLINED_FUNCTION_3_123();
          CFDictionaryGetKeysAndValues(*(v27 + 16), v49, v50);
          for (i = 0; i != v48; ++i)
          {
            v50[i] = FigFairPlayCopySinfExtensionsFromFormatDescription(v50[i]);
          }

          allocator = *v29;
          v54 = CFDictionaryCreate(*v29, v49, v50, v48, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          for (j = 0; j != v48; ++j)
          {
            v53 = v50[j];
            if (v53)
            {
              CFRelease(v53);
            }
          }
        }

        free(v49);
        free(v50);
      }

      if (CFDictionaryGetCount(*(v27 + 16)) < 1)
      {
        BYTE9(v79) = 1;
      }

      else
      {
        *&v79 = v54;
        CFDictionaryApplyFunction(*(v27 + 16), SetProtectionInfoValidateEntry, &v79);
        if (!BYTE8(v79))
        {
          v16 = 4294955136;
          if (!v54)
          {
            goto LABEL_114;
          }

          goto LABEL_113;
        }
      }

      v59 = *(v27 + 32);
      *(v27 + 32) = v54;
      if (v54)
      {
        CFRetain(v54);
      }

      if (v59)
      {
        CFRelease(v59);
      }

      v61 = (v27 + 64);
      v60 = *(v27 + 64);
      *(v27 + 80) = 0;
      if (BYTE9(v79))
      {
        if (v60)
        {
          if (FigCPEExternalProtectionMonitorGetMethods(v60))
          {
            goto LABEL_111;
          }

          v62 = *v61;
        }

        else
        {
          v62 = 0;
        }

        valuePtr = 0;
        v63 = FigCPEExternalProtectionMonitorCreateForMethods(*v27, 5u, 0, v62, &valuePtr);
        if (v63)
        {
          goto LABEL_123;
        }

        v64 = *v61;
        v65 = valuePtr;
        *v61 = valuePtr;
        if (v65)
        {
          CFRetain(v65);
        }

        if (v64)
        {
          CFRelease(v64);
        }

        if (valuePtr)
        {
          CFRelease(valuePtr);
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_153();
        v63 = FigNotificationCenterAddWeakListener();
        if (v63)
        {
          goto LABEL_123;
        }

        if (*(v27 + 73))
        {
LABEL_110:
          FigCPEExternalProtectionMonitorBeginMonitoring(*(v27 + 64));
          *(v27 + 72) = 1;
          CMNotificationCenterGetDefaultLocalCenter();
          OUTLINED_FUNCTION_0_164();
          v63 = FigNotificationCenterAddWeakListener();
          if (!v63)
          {
            goto LABEL_111;
          }

LABEL_123:
          v16 = v63;
          if (!v54)
          {
            goto LABEL_114;
          }

          goto LABEL_113;
        }
      }

      else if (!v60)
      {
        v63 = FigCPEExternalProtectionMonitorCreateForMethods(*v27, 4u, 0, 0, (v27 + 64));
        if (v63)
        {
          goto LABEL_123;
        }

        CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_1_153();
        v63 = FigNotificationCenterAddWeakListener();
        if (v63)
        {
          goto LABEL_123;
        }

        if (*(v27 + 73))
        {
          goto LABEL_110;
        }
      }

LABEL_111:
      v66 = CFDictionaryGetValue(*(v27 + 32), *(v27 + 24));
      FigFairPlayGetSinfExtensionType(v66, (v27 + 56));
      v16 = 0;
      goto LABEL_112;
    }

LABEL_120:
    v16 = 4294955145;
    goto LABEL_121;
  }

  if (*(v10 + 73))
  {
    *(v10 + 16) = CFDictionaryCreate(a1, 0, 0, 0, 0, 0);
    goto LABEL_37;
  }

  v16 = 4294955146;
LABEL_121:
  if (cf)
  {
    CFRelease(cf);
  }

  return v16;
}

uint64_t FigCPEFairPlayProtectorCreateForFormatReader(const void *a1, uint64_t a2, const __CFDictionary *a3, CFTypeRef *a4)
{
  cf = 0;
  v28 = 0;
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v10 = Mutable;
  if (!a2)
  {
    v22 = 4294955146;
    if (!Mutable)
    {
      goto LABEL_26;
    }

LABEL_25:
    CFRelease(v10);
    goto LABEL_26;
  }

  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    goto LABEL_24;
  }

  v24 = a4;
  v12 = v11(a2, &v28);
  if (!v12)
  {
    if (v28 >= 1)
    {
      v13 = 0;
      while (1)
      {
        v26 = 0;
        theArray = 0;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v14)
        {
          break;
        }

        v12 = v14(a2, v13, &cf, 0, &v26);
        if (v12)
        {
          goto LABEL_22;
        }

        FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
        v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v16)
        {
          break;
        }

        v12 = v16(FigBaseObject, @"TrackFormatDescriptionArray", v8, &theArray);
        if (v12)
        {
          goto LABEL_22;
        }

        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v18 = Count;
            for (i = 0; i != v18; ++i)
            {
              v20 = FigCPECreateFormatDescriptionIdentifierForTrackIDAndIndex(v8, v26, i);
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
              CFDictionarySetValue(v10, v20, ValueAtIndex);
              if (v20)
              {
                CFRelease(v20);
              }
            }
          }

          if (theArray)
          {
            CFRelease(theArray);
          }
        }

        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        if (++v13 >= v28)
        {
          goto LABEL_21;
        }
      }

LABEL_24:
      v22 = 4294954514;
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

LABEL_21:
    v12 = FigCPEFairPlayProtectorCreateForFormatDescriptions(a1, v10, a3, v24);
  }

LABEL_22:
  v22 = v12;
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  return v22;
}

uint64_t FigCPEFairPlayProtectorCreate(const void *a1, CFDictionaryRef theDict, CFTypeRef *a3)
{
  if (!theDict)
  {
    return 4294955146;
  }

  if (CFDictionaryContainsKey(theDict, @"6519D6C3-E423-4DEA-811B-AA98B31B3180"))
  {

    return FigCPEFairPlayCloudProtectorCreate(a1, theDict, a3);
  }

  else
  {

    return FigCPEFairPlayProtectorCreateForFormatDescriptions(a1, 0, theDict, a3);
  }
}

uint64_t FigFairPlayCPEProtectorCopyProperty(uint64_t a1, const void *a2, uint64_t a3, __CFString **a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 4294955146;
  if (!a2 || !a4)
  {
    return v8;
  }

  v9 = DerivedStorage;
  if (CFEqual(a2, @"DisplayList"))
  {
    v10 = *(v9 + 64);

    return FigCPEExternalProtectionMonitorCopyProperty(v10, @"DisplayList", a3, a4);
  }

  if (CFEqual(a2, @"ExternalProtectionRequiredForPlayback"))
  {
    if (FigCPEExternalProtectionMonitorGetMethods(*(v9 + 64)))
    {
LABEL_9:
      v12 = MEMORY[0x1E695E4D0];
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (CFEqual(a2, @"ApplicationAuthorizationChallengeProvider"))
  {
    v13 = @"ApplicationAuthorizationChallengeProviderNone";
    goto LABEL_58;
  }

  if (CFEqual(a2, @"IsRental"))
  {
    v8 = IsRental(v9, 0);
    if (v8)
    {
      return v8;
    }

    v13 = *(v9 + 104);
    if (!v13)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  if (CFEqual(a2, @"IsRentalPlaybackStarted"))
  {
    v14 = *MEMORY[0x1E695E4C0];
    v15 = IsRental(v9, 0);
    if (v15)
    {
      v8 = v15;
    }

    else if (CFBooleanGetValue(*(v9 + 104)))
    {
      theDict = 0;
      v8 = CopyRentalInfo(v9, &theDict);
      if (!v8)
      {
        if (CFDictionaryContainsKey(theDict, @"RentalPlaybackPeriodStartDate"))
        {
          v14 = *MEMORY[0x1E695E4D0];
        }

        if (theDict)
        {
          CFRelease(theDict);
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if (v14)
    {
      v13 = CFRetain(v14);
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_60;
  }

  if (CFEqual(a2, @"RentalPeriodStartDate") || CFEqual(a2, @"RentalPeriodEndDate") || CFEqual(a2, @"RentalPlaybackPeriodStartDate") || CFEqual(a2, @"RentalPlaybackPeriodEndDate"))
  {
    theDict = 0;
    v8 = CopyRentalInfo(v9, &theDict);
    if (!v8)
    {
      Value = CFDictionaryGetValue(theDict, a2);
      if (Value)
      {
        v8 = 0;
      }

      else
      {
        v8 = 4294955137;
      }

      if (Value)
      {
        Value = CFRetain(Value);
      }

      *a4 = Value;
      if (theDict)
      {
        CFRelease(theDict);
      }
    }

    return v8;
  }

  if (CFEqual(a2, @"ContentKind"))
  {
    v17 = (v9 + 80);
    v16 = *(v9 + 80);
    if (!v16)
    {
      v21 = CFDictionaryGetValue(*(v9 + 32), *(v9 + 24));
      if (FigFairPlayGetMediaKindFromSinf(v21, (v9 + 80)))
      {
        *v17 = 0;
LABEL_50:
        v12 = kFigCPEContentKind_Unknown;
        goto LABEL_57;
      }

      v16 = *v17;
    }

    switch(v16)
    {
      case 1:
        v12 = kFigCPEContentKind_Song;
        break;
      case 2:
        v12 = kFigCPEContentKind_Movie;
        break;
      case 3:
      case 5:
      case 6:
      case 7:
        goto LABEL_50;
      case 4:
        v12 = kFigCPEContentKind_Podcast;
        break;
      case 8:
        v12 = kFigCPEContentKind_AudioBook;
        break;
      default:
        switch(v16)
        {
          case 16:
            v12 = kFigCPEContentKind_Booklet;
            break;
          case 32:
            v12 = kFigCPEContentKind_MusicVideo;
            break;
          case 64:
            v12 = kFigCPEContentKind_TVShow;
            break;
          default:
            goto LABEL_50;
        }

        break;
    }

LABEL_57:
    v13 = *v12;
    if (!*v12)
    {
LABEL_59:
      v8 = 0;
LABEL_60:
      *a4 = v13;
      return v8;
    }

LABEL_58:
    v13 = CFRetain(v13);
    goto LABEL_59;
  }

  if (CFEqual(a2, @"AllowsImageGeneration"))
  {
    v19 = (v9 + 80);
    v18 = *(v9 + 80);
    if (v18)
    {
      goto LABEL_34;
    }

    v22 = CFDictionaryGetValue(*(v9 + 32), *(v9 + 24));
    if (!FigFairPlayGetMediaKindFromSinf(v22, (v9 + 80)))
    {
      v18 = *v19;
LABEL_34:
      if (v18 == 32)
      {
        goto LABEL_9;
      }

      goto LABEL_56;
    }

    *v19 = 0;
LABEL_56:
    v12 = MEMORY[0x1E695E4C0];
    goto LABEL_57;
  }

  if (CFEqual(a2, @"IsAirPlayPossible"))
  {
    if (*(v9 + 56) == 1)
    {
      goto LABEL_9;
    }

    goto LABEL_56;
  }

  v23 = *(v9 + 8);

  return CMBaseObjectCopyProperty(v23, a2, a3, a4);
}

uint64_t FigFairPlayCPEProtectorSetProperty(uint64_t a1, const void *a2, const __CFArray *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  v6 = DerivedStorage;
  if (CFEqual(a2, @"DisplayList"))
  {
    v7 = *(v6 + 64);

    return FigCPEExternalProtectionMonitorSetProperty(v7, @"DisplayList", a3);
  }

  else if (CFEqual(a2, @"NeroTransport"))
  {
    v9 = *(v6 + 136);
    *(v6 + 136) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    return 0;
  }

  else
  {
    return 4294955144;
  }
}

uint64_t CopyRentalInfo(uint64_t a1, void *a2)
{
  v27 = 0;
  v4 = IsRental(a1, &v27);
  if (v4 | v27)
  {
    v5 = v4;
  }

  else
  {
    v5 = 4294955144;
  }

  if (!v5)
  {
    FigSimpleMutexLock();
    if (!*(a1 + 112))
    {
      Value = CFDictionaryGetValue(*(a1 + 32), *(a1 + 24));
      BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(Value);
      v25 = 0;
      v26 = 0;
      FairPlayContext = GetFairPlayContext(a1);
      BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
      Length = CFDataGetLength(BestSinfFromSinfExtensions);
      RbFpir(FairPlayContext, BytePtr, Length, &v25);
      v14 = FAIRPLAY_CALL_LOG(v13);
      if (v14)
      {
        v5 = v14;
LABEL_11:
        FigSimpleMutexUnlock();
        return v5;
      }

      *(a1 + 112) = CFDictionaryCreateMutable(*a1, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      LODWORD(v15) = v25;
      v16 = *MEMORY[0x1E695E468];
      CFDateCreate(*a1, v15 - *MEMORY[0x1E695E468]);
      v17 = OUTLINED_FUNCTION_4_118();
      CFDictionaryAddValue(v17, @"RentalPeriodStartDate", BestSinfFromSinfExtensions);
      if (BestSinfFromSinfExtensions)
      {
        CFRelease(BestSinfFromSinfExtensions);
      }

      LODWORD(v19) = HIDWORD(v25);
      LODWORD(v18) = v25;
      OUTLINED_FUNCTION_5_102(*a1, v18, v19);
      v20 = OUTLINED_FUNCTION_4_118();
      CFDictionaryAddValue(v20, @"RentalPeriodEndDate", BestSinfFromSinfExtensions);
      if (BestSinfFromSinfExtensions)
      {
        CFRelease(BestSinfFromSinfExtensions);
      }

      if (v26 != -1)
      {
        CFDateCreate(*a1, v26 - v16);
        v21 = OUTLINED_FUNCTION_4_118();
        CFDictionaryAddValue(v21, @"RentalPlaybackPeriodStartDate", BestSinfFromSinfExtensions);
        if (BestSinfFromSinfExtensions)
        {
          CFRelease(BestSinfFromSinfExtensions);
        }

        LODWORD(v23) = HIDWORD(v26);
        LODWORD(v22) = v26;
        OUTLINED_FUNCTION_5_102(*a1, v22, v23);
        v24 = OUTLINED_FUNCTION_4_118();
        CFDictionaryAddValue(v24, @"RentalPlaybackPeriodEndDate", BestSinfFromSinfExtensions);
        if (BestSinfFromSinfExtensions)
        {
          CFRelease(BestSinfFromSinfExtensions);
        }
      }
    }

    if (a2)
    {
      v6 = *(a1 + 112);
      if (v6)
      {
        v6 = CFRetain(v6);
      }

      v5 = 0;
      *a2 = v6;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_11;
  }

  return v5;
}

uint64_t GetFairPlayContext(uint64_t *a1)
{
  number = 0;
  valuePtr = 0;
  v1 = *a1;
  v2 = a1[1];
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    if (!v3(v2, 0x1F0B529B8, v1, &number))
    {
      CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  return valuePtr;
}

uint64_t FigFairPlayCPEProtectorCreateCryptorForFormatDescriptionIdentifier(uint64_t a1, uint64_t a2, int a3, const __CFDictionary *a4, const void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (!a5 || !DerivedStorage)
  {
    return result;
  }

  if (!CFDictionaryContainsKey(*(DerivedStorage + 16), a5))
  {
    return 4294955132;
  }

  v31 = 0;
  v11 = a4 ? CFDictionaryGetValue(a4, @"ClientSecTask") : 0;
  IsApplicationAuthorizedWithEntitlement = FigFairPlayCPEProtectorIsApplicationAuthorizedWithEntitlement(a1, v11, a3, &v31);
  result = 4294955135;
  if (IsApplicationAuthorizedWithEntitlement || v31 != a3)
  {
    return result;
  }

  if (!a4)
  {
    CFDictionaryGetValue(*(DerivedStorage + 32), a5);
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(a4, @"Destination");
  CFDictionaryGetValue(*(DerivedStorage + 32), a5);
  if (!Value || CFEqual(Value, @"DestinationLocal"))
  {
LABEL_16:
    CFDictionaryGetValue(*(DerivedStorage + 16), a5);
    v22 = OUTLINED_FUNCTION_2_147();
    result = FigFairPlayCPECryptorCreate(v22, v23, v24, v25, v26, v27, v28, v29);
    if (result)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!CFEqual(Value, @"DestinationNero"))
  {
    return 4294955136;
  }

  CFDictionaryGetValue(*(DerivedStorage + 16), a5);
  v14 = OUTLINED_FUNCTION_2_147();
  result = FigFairPlayOctaviaCPECryptorCreate(v14, v15, v16, v17, v18, v19, v20, v21);
  if (!result)
  {
LABEL_17:
    FigSimpleMutexLock();
    v30 = *(DerivedStorage + 112);
    if (v30)
    {
      CFRelease(v30);
      *(DerivedStorage + 112) = 0;
    }

    FigSimpleMutexUnlock();
    return 0;
  }

  return result;
}

CFIndex FigFairPlayCPEProtectorIsApplicationAuthorizedWithEntitlement(uint64_t a1, __SecTask *a2, int a3, int *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  error = 0;
  v18 = 1;
  Code = 4294955146;
  if (!a4)
  {
    goto LABEL_19;
  }

  if (!a2)
  {
    goto LABEL_19;
  }

  v9 = DerivedStorage;
  if (!DerivedStorage)
  {
    goto LABEL_19;
  }

  v11 = (DerivedStorage + 80);
  v10 = *(DerivedStorage + 80);
  if (v10)
  {
    if ((v10 & 0x1000) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    Value = CFDictionaryGetValue(*(DerivedStorage + 32), *(DerivedStorage + 24));
    if (FigFairPlayGetMediaKindFromSinf(Value, (v9 + 80)))
    {
      *v11 = 0;
    }

    else if ((*v11 & 0x1000) != 0)
    {
LABEL_6:
      v12 = CFDictionaryGetValue(*(v9 + 32), *(v9 + 24));
      FigFairPlayIsPreviewEncrypted(v12, &v18);
      if (v18)
      {
        v13 = @"com.apple.coremedia.allow-preview-encrypted-tone-playback";
      }

      else
      {
        v13 = @"com.apple.coremedia.allow-protected-content-playback";
      }

      goto LABEL_13;
    }
  }

  v18 = 0;
  v13 = @"com.apple.coremedia.allow-protected-content-playback";
LABEL_13:
  v15 = SecTaskCopyValueForEntitlement(a2, v13, &error);
  if (!error)
  {
    Code = 0;
    if (v15 == *MEMORY[0x1E695E4D0])
    {
      v16 = 3;
    }

    else
    {
      v16 = 0;
    }

    *a4 = v16 & a3;
    if (!v15)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  Code = CFErrorGetCode(error);
  if (v15)
  {
LABEL_18:
    CFRelease(v15);
  }

LABEL_19:
  if (error)
  {
    CFRelease(error);
  }

  return Code;
}

uint64_t FigFairPlayCPEProtectorIsContentAuthorized(uint64_t a1, int a2, _DWORD *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a3)
  {
    if (DerivedStorage)
    {
      *a3 = 0;
      result = CFDictionaryGetValue(*(DerivedStorage + 32), *(DerivedStorage + 24));
      if (result)
      {
        if (*(DerivedStorage + 56) == 2)
        {
          *(DerivedStorage + 60) = 1;
        }

        else
        {
          v7 = result;
          v15 = 0u;
          v16 = 0u;
          LegacySinfFromSinfExtensions = FigFairPlayGetLegacySinfFromSinfExtensions(result);
          if (LegacySinfFromSinfExtensions)
          {
            v9 = LegacySinfFromSinfExtensions;
            *(&v15 + 1) = CFDataGetBytePtr(LegacySinfFromSinfExtensions);
            LODWORD(v15) = CFDataGetLength(v9);
          }

          ExtendedSinfFromSinfExtensions = FigFairPlayGetExtendedSinfFromSinfExtensions(v7);
          if (ExtendedSinfFromSinfExtensions)
          {
            v11 = ExtendedSinfFromSinfExtensions;
            *(&v16 + 1) = CFDataGetBytePtr(ExtendedSinfFromSinfExtensions);
            LODWORD(v16) = CFDataGetLength(v11);
          }

          FairPlayContext = GetFairPlayContext(DerivedStorage);
          HN0R(FairPlayContext, &v15);
          v14 = FAIRPLAY_CALL_LOG(v13);
          if (v14 == -42072)
          {
            result = 0;
            *(DerivedStorage + 60) = 257;
            return result;
          }

          *(DerivedStorage + 60) = 1;
          if (v14)
          {
            return 0;
          }
        }

        result = 0;
        *a3 = a2;
      }
    }
  }

  return result;
}

uint64_t FigFairPlayCPEProtectorGetAggregateExternalProtectionStatus(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2)
  {
    if (DerivedStorage)
    {
      Status = FigCPEExternalProtectionMonitorGetStatus(*(DerivedStorage + 64));
      result = 0;
      *a2 = Status;
    }
  }

  return result;
}

uint64_t FigFairPlayCPEProtectorGetAggregateExternalProtectionState(uint64_t a1, _DWORD *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && DerivedStorage)
  {
    if (*(DerivedStorage + 73))
    {
      State = FigCPEExternalProtectionMonitorGetState(*(DerivedStorage + 64), 7);
      result = 0;
      *a2 = State;
    }

    else
    {
      return 4294955137;
    }
  }

  return result;
}

uint64_t FigFairPlayCPEProtectorEndAirPlaySession()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    return 4294955146;
  }

  v1 = DerivedStorage;
  result = *(DerivedStorage + 88);
  if (result)
  {
    FigFairPlayAirPlaySessionDestroy(result);
    result = 0;
    *(v1 + 88) = 0;
  }

  return result;
}

uint64_t FigFairPlayCPEProtectorCopyPropertyForFormatDescriptionIdentifierAndRights(uint64_t a1, const void *a2, char a3, const void *a4, uint64_t a5, void *a6)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && DerivedStorage && a4 && a6)
  {
    if (CFDictionaryContainsKey(*(DerivedStorage + 32), a2))
    {
      if (CFEqual(a4, *MEMORY[0x1E6961098]))
      {
        Value = CFDictionaryGetValue(*(DerivedStorage + 32), a2);
        v21 = 0;
        LegacySinfFromSinfExtensions = FigFairPlayGetLegacySinfFromSinfExtensions(Value);
        if (LegacySinfFromSinfExtensions)
        {
          v14 = LegacySinfFromSinfExtensions;
          CFDataGetBytePtr(LegacySinfFromSinfExtensions);
          CFDataGetLength(v14);
        }

        ExtendedSinfFromSinfExtensions = FigFairPlayGetExtendedSinfFromSinfExtensions(Value);
        if (ExtendedSinfFromSinfExtensions)
        {
          v16 = ExtendedSinfFromSinfExtensions;
          CFDataGetBytePtr(ExtendedSinfFromSinfExtensions);
          CFDataGetLength(v16);
        }

        IsLowValueSinf = FigFairPlayIsLowValueSinf(Value, &v21);
        if (v21)
        {
          v18 = IsLowValueSinf;
        }

        else
        {
          v18 = -42042;
        }

        v19 = v18 == -42407 || v18 == -42403;
        if ((v19 || !v18 || v18 == -42031) && (a3 & 5) != 0)
        {
          v20 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v20 = MEMORY[0x1E695E4C0];
        }

        result = 0;
        *a6 = *v20;
      }

      else
      {
        return 4294954509;
      }
    }

    else
    {
      return 4294955132;
    }
  }

  return result;
}

uint64_t FigCSSStyleDeclarationCopyPropertyValue(uint64_t a1, const void *a2, void *a3)
{
  if (a1)
  {
    if (!a2)
    {
      goto LABEL_12;
    }

    if (a3)
    {
      v4 = *(a1 + 24);
      if (!v4)
      {
        return 4294949478;
      }

      Value = CFDictionaryGetValue(v4, a2);
      if (!Value)
      {
        return 4294949477;
      }

      v6 = CFDictionaryGetValue(Value, @"value");
      if (!v6)
      {
        return 4294949477;
      }

      v7 = CFRetain(v6);
      result = 0;
      *a3 = v7;
      return result;
    }
  }

  OUTLINED_FUNCTION_0_23();
LABEL_12:

  return FigSignalErrorAtGM();
}

uint64_t FigCSSStyleSheetCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleSheetCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleSheetCopyRuleList_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleSheetCopyRuleList_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleSheetSetRuleList_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleSheetSetRuleList_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSRuleListCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSRuleListCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSRuleListCopyRuleAtIndex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSRuleListCopyRuleAtIndex_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSRuleListCopyRuleAtIndex_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSRuleListAppendRule_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSRuleListAppendRule_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSRuleCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSRuleCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleCopySelector_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_148();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleCopySelector_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleCopySelector_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleCopyDeclaration_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_148();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleCopyDeclaration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleCopyDeclaration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleSetSelector_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_148();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleSetSelector_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleSetSelector_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleSetDeclaration_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_148();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleSetDeclaration_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleRuleSetDeclaration_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationCreate_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationCopyPropertyNameAtIndex_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationSetPropertyInfo_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationSetPropertyInfo_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationSetPropertyInfo_cold_3(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_154();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationSetPropertyInfo_cold_4(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCSSStyleDeclarationSetPropertyInfo_cold_6(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_23();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 4294947752;
  if (a2 && a4)
  {
    v8 = DerivedStorage;
    FigSimpleMutexLock();
    if (CFEqual(a2, @"PWDEncryptor"))
    {
      if (*(v8 + 80))
      {
        UInt64 = FigCFNumberCreateUInt64();
        *a4 = UInt64;
        if (UInt64)
        {
          v7 = 0;
        }

        else
        {
          v7 = 4294947756;
        }
      }
    }

    else if (CFEqual(a2, @"PWDKeyID"))
    {
      v10 = *(v8 + 96);
      if (v10)
      {
        v7 = 0;
        *a4 = CFRetain(v10);
      }
    }

    else
    {
      v7 = 0;
    }

    FigSimpleMutexUnlock();
  }

  return v7;
}

uint64_t FigPWDKeyExchangeSenderCreateForAOCP_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPWDKeyExchangeSenderCreateForAOCP_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigPWDKeyExchangeSenderCreateForAOCP_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void __getAMSBagClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAMSBagClass(void)_block_invoke") description:{@"FigPWDKeyExchangeSender_AOCP.m", 140, @"Unable to find class %s", "AMSBag"}];
  __break(1u);
}

void AppleMediaServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void *AppleMediaServicesLibrary(void)") description:{@"FigPWDKeyExchangeSender_AOCP.m", 139, @"%s", *a1}];
  __break(1u);
}

void __getAMSFairPlayDeviceIdentityProviderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAMSFairPlayDeviceIdentityProviderClass(void)_block_invoke") description:{@"FigPWDKeyExchangeSender_AOCP.m", 148, @"Unable to find class %s", "AMSFairPlayDeviceIdentityProvider"}];
  __break(1u);
}

void __getAMSURLSessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAMSURLSessionClass(void)_block_invoke") description:{@"FigPWDKeyExchangeSender_AOCP.m", 146, @"Unable to find class %s", "AMSURLSession"}];
  __break(1u);
}

void __getAMSURLRequestEncoderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getAMSURLRequestEncoderClass(void)_block_invoke") description:{@"FigPWDKeyExchangeSender_AOCP.m", 147, @"Unable to find class %s", "AMSURLRequestEncoder"}];
  __break(1u);
}

uint64_t pwdKeyExchangeSenderAOCP_Start_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_Start_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_Start_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_Start_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_Start_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_Start_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_Start_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_5(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_6(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_7(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_8(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_9(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_10(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_12(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_13(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_14(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_15(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_16(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_17(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_18(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t pwdKeyExchangeSenderAOCP_ProcessIncomingMessage_cold_19(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigFairPlayCPECryptorCopyProperty()
{
  v3 = OUTLINED_FUNCTION_15_47();
  if (!v3)
  {
    return 4294955146;
  }

  v4 = v3;
  if (CFEqual(v2, *MEMORY[0x1E6961098]))
  {
    v17 = 0;
    IsLowValueSinf = FigFairPlayIsLowValueSinf(*(v4 + 24), &v17);
    if (v17)
    {
      v6 = IsLowValueSinf;
    }

    else
    {
      v6 = -42042;
    }

    v9 = v6 == -42407 || v6 == -42403 || v6 == 0 || v6 == -42031;
    if (v9 && (*(v4 + 16) & 5) != 0)
    {
      v10 = MEMORY[0x1E695E4D0];
    }

    else
    {
      v10 = MEMORY[0x1E695E4C0];
    }

    result = 0;
    v13 = *v10;
    goto LABEL_26;
  }

  if (CFEqual(v2, *MEMORY[0x1E6961118]))
  {
    v11 = CFRetain(*MEMORY[0x1E695E4D0]);
LABEL_25:
    v13 = v11;
    result = 0;
LABEL_26:
    *v0 = v13;
    return result;
  }

  if (CFEqual(v2, *MEMORY[0x1E69610C0]))
  {
    Methods = FigCPEExternalProtectionMonitorGetMethods(*(v4 + 80));
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &Methods);
    goto LABEL_25;
  }

  v14 = *(v4 + 8);
  v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v15)
  {
    return 4294954514;
  }

  return v15(v14, v2, v1, v0);
}

uint64_t FigFairPlayCPECryptorSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  v6 = DerivedStorage;
  if (!CFEqual(a2, *MEMORY[0x1E69610C0]))
  {
    return 4294955144;
  }

  Methods = FigCPEExternalProtectionMonitorGetMethods(*(v6 + 80));
  valuePtr = 0;
  if (!a3)
  {
    return 4294955136;
  }

  v8 = Methods;
  v9 = CFGetTypeID(a3);
  if (v9 != CFNumberGetTypeID())
  {
    return 4294955136;
  }

  CFNumberGetValue(a3, kCFNumberSInt64Type, &valuePtr);
  if ((valuePtr & ~v8) == 0)
  {
    return 0;
  }

  cf = 0;
  result = FigCPEExternalProtectionMonitorCreateForMethods(*MEMORY[0x1E695E480], valuePtr & ~v8, 0, *(v6 + 80), &cf);
  if (!result)
  {
    v11 = *(v6 + 80);
    v12 = cf;
    *(v6 + 80) = cf;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {
      CFRelease(v11);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    return 0;
  }

  return result;
}

uint64_t FigFairPlayCPECryptorGetNativeSession(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2 && v4)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      AudioQueue = FigAudioQueueTimingShimGetAudioQueue(v5);
    }

    else
    {
      AudioQueue = 0;
    }

    return OUTLINED_FUNCTION_16_45(AudioQueue);
  }

  return result;
}

uint64_t FigFairPlayCPECryptorGetExternalProtectionMethods(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2)
  {
    if (v4)
    {
      Methods = FigCPEExternalProtectionMonitorGetMethods(*(v4 + 80));
      return OUTLINED_FUNCTION_9_59(Methods);
    }
  }

  return result;
}

uint64_t FigFairPlayCPECryptorGetAggregateExternalProtectionStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  Status = FigCPEExternalProtectionMonitorGetStatus(*(DerivedStorage + 80));
  return OUTLINED_FUNCTION_9_59(Status);
}

uint64_t FigFairPlayCPECryptorScrambleDecryptedSample(uint64_t a1, OpaqueCMBlockBuffer *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  DataLength = CMBlockBufferGetDataLength(a2);
  v8 = OUTLINED_FUNCTION_2_149(a2, v5, v6, v7, &v20);
  result = 4294955146;
  if (DataLength && !v8 && v20)
  {
    if (!CMBlockBufferIsRangeContiguous(a2, 0, DataLength))
    {
      return 4294955140;
    }

    if (*(DerivedStorage + 49))
    {
      v10 = *(DerivedStorage + 52);
      if (DataLength <= v10)
      {
        return 0;
      }

      v12 = *(DerivedStorage + 56);
      v11 = *(DerivedStorage + 60);
    }

    else
    {
      v11 = 0;
      v10 = 0;
      v12 = 512;
    }

    result = 0;
    v13 = v12 + v11;
    if (v13 && v10 < DataLength)
    {
      do
      {
        v14 = DataLength - v10;
        if (DataLength - v10 >= v12)
        {
          v14 = v12;
        }

        v15 = v14 & 0xFFFFFFF0;
        v16 = __CFADD__(v15, v10);
        v17 = v15 + v10;
        if (v16)
        {
          v18 = FigFairPlayCPECryptorScrambleDecryptedSample_sbCounter;
          v19 = v10;
          do
          {
            v20[v19++] = ((v18 ^ 0x4C) * (32 - v18)) ^ &FigFairPlayCPECryptorScrambleDecryptedSample_sbCounter;
            v18 = ++FigFairPlayCPECryptorScrambleDecryptedSample_sbCounter;
          }

          while (v19 > v17);
        }

        v10 += v13;
      }

      while (v10 < DataLength);
      return 0;
    }
  }

  return result;
}

uint64_t FigFairPlayCPECryptorPairForReEncryption(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2 && v7)
  {
    if ((*(v7 + 16) & 5) == 1)
    {
      if (a4)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        if (DerivedStorage)
        {
          if ((*(DerivedStorage + 16) & 5) == 1)
          {
            return 4294955136;
          }

          else
          {
            return 4294955143;
          }
        }

        else
        {
          return 4294955146;
        }
      }
    }

    else
    {
      return 4294955143;
    }
  }

  return result;
}

uint64_t FigFairPlayCPECryptorIsCompatibleWithFormatDescription(uint64_t a1, const opaqueCMFormatDescription *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = 0;
  v10 = 0;
  if (a2)
  {
    if (a1)
    {
      v6 = DerivedStorage;
      if (DerivedStorage)
      {
        v7 = FigFairPlayCopySinfExtensionsFromFormatDescription(a2);
        v8 = v7;
        if (v7 && CFEqual(v7, *(v6 + 24)))
        {
          v5 = 1;
          goto LABEL_13;
        }

        if (FigFairPlayGetDPInfoFromSinfExtensions(*(v6 + 24)) && !FigFairPlayIsPlaceholder(v8, &v10) && v10)
        {
          v5 = 1;
          if (!v8)
          {
            return v5;
          }

          goto LABEL_13;
        }

        v5 = 0;
        if (v8)
        {
LABEL_13:
          CFRelease(v8);
        }
      }
    }
  }

  return v5;
}

uint64_t FigFairPlayCPECryptorGetMaximumRequiredOutputBufferSizeForSampleWithFormat(uint64_t a1, OpaqueCMBlockBuffer *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = 4294955146;
  if (a2 && a4)
  {
    if (!*(DerivedStorage + 72))
    {
      result = FigFairPlayGetMaximumReEncryptionPaddingByteCount(*(DerivedStorage + 24), (DerivedStorage + 64));
      if (result)
      {
        return result;
      }

      *(DerivedStorage + 72) = 1;
    }

    DataLength = CMBlockBufferGetDataLength(a2);
    result = 0;
    *a4 = *(DerivedStorage + 64) + DataLength;
  }

  return result;
}

uint64_t FigFairPlayCPECryptorReEncryptSample()
{
  v3 = OUTLINED_FUNCTION_15_47();
  if (!v2)
  {
    return 4294955146;
  }

  return DecryptCommon(v3, v1, v0);
}

uint64_t FigFairPlayCPECryptorReEncryptSampleWithFormat()
{
  v3 = OUTLINED_FUNCTION_15_47();
  if (!v2)
  {
    return 4294955146;
  }

  return DecryptCommon(v3, v1, v0);
}

uint64_t FigFairPlayCPECryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions()
{
  OUTLINED_FUNCTION_5_103();
  v111 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_124(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v68, v75, v82, v89, v90, v91, v92, cf, v94, theData, v96, v97, v98, v99, v100, v101, BytePtr, v103, v104, v105, v106);
  FormatDescription = CMSampleBufferGetFormatDescription(v2);
  if (CMFormatDescriptionGetMediaSubType(FormatDescription) != 1685220713)
  {
    OUTLINED_FUNCTION_49_0();
    goto LABEL_42;
  }

  if (FigCFEqual())
  {
LABEL_24:
    DataBuffer = CMSampleBufferGetDataBuffer(v2);
    v39 = OUTLINED_FUNCTION_7_77(DataBuffer, v32, v33, v34, v35, v36, v37, v38, v69, v76, v83, v89, v90, v91, v92, cf);
    if (v39)
    {
      goto LABEL_43;
    }

    v39 = OUTLINED_FUNCTION_14_51(0, v40, v41, v42, v43, v44, v45, v46, v70, v77, v84, v89, v90, v91, v92, cf);
    if (v39)
    {
      goto LABEL_43;
    }

    v39 = OUTLINED_FUNCTION_4_119(0, v47, v48, v49, v50, v51, v52, v53, v71, v78, v85, v89, v90, v91);
    if (v39)
    {
      goto LABEL_43;
    }

    v39 = OUTLINED_FUNCTION_2_149(v90, v54, v55, v56, &v89);
    if (v39)
    {
      goto LABEL_43;
    }

    AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(v1 + 40));
    v108 = 0;
    v57 = (v0 & 1) != 0 ? 5 : 1;
    OUTLINED_FUNCTION_1_156(v57, v72, v79, v86, v89, v90, v91, v92, cf, v94, theData, v96, v97, v98, v99, v100, v101, BytePtr, v103, v104, v105, v106);
    v39 = FAIRPLAY_CALL_LOG(v58);
    if (v39)
    {
      goto LABEL_43;
    }

    if (v109 == v91 && v110 < 0x11)
    {
      v59 = OUTLINED_FUNCTION_10_57(v110, v73, v80, v87, v89, v90, v91, v92, cf, v94, theData, v96, v97, v98, v99, v100, v101, BytePtr, v103, v104, v105, v106);
      OUTLINED_FUNCTION_11_60(v59, v60, v61, v62, v63, v64, v65, v66, v74, v81, v88, v89, v90);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_49_0();
LABEL_42:
    v39 = FigSignalErrorAtGM();
LABEL_43:
    v4 = v39;
    goto LABEL_35;
  }

  v76 = v3;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_89();
  Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x1E69600A0]);
  if (!Extension)
  {
    goto LABEL_44;
  }

  v15 = Extension;
  v16 = CFGetTypeID(Extension);
  if (v16 != CFDictionaryGetTypeID())
  {
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(v15, @"avcC");
  if (!Value)
  {
    goto LABEL_44;
  }

  v18 = Value;
  v19 = CFGetTypeID(Value);
  if (v19 != CFDataGetTypeID())
  {
    goto LABEL_44;
  }

  SPSAndPPSCountFromAVCC = FigH264Bridge_GetSPSAndPPSCountFromAVCC();
  if (SPSAndPPSCountFromAVCC)
  {
    goto LABEL_15;
  }

  if (v101 == 1 && v100 == 1)
  {
    CFDataGetBytePtr(v18);
    OUTLINED_FUNCTION_17_40();
    SPSAndPPSCountFromAVCC = OUTLINED_FUNCTION_12_55();
    if (!SPSAndPPSCountFromAVCC)
    {
      CFDataGetBytePtr(v18);
      v21 = OUTLINED_FUNCTION_17_40();
      SPSAndPPSCountFromAVCC = OUTLINED_FUNCTION_13_43(v21, v22, v23, v24, v25, v26, v27, v28, v69, v3, v83);
      if (!SPSAndPPSCountFromAVCC)
      {
        SPSAndPPSCountFromAVCC = FigH264Bridge_CopyStandaloneSPSData();
        if (!SPSAndPPSCountFromAVCC)
        {
          SPSAndPPSCountFromAVCC = FigH264Bridge_CopyStandalonePPSData();
          if (!SPSAndPPSCountFromAVCC)
          {
            BytePtr = CFDataGetBytePtr(theData);
            LODWORD(v103) = CFDataGetLength(theData);
            v104 = CFDataGetBytePtr(v94);
            LODWORD(v105) = CFDataGetLength(v94);
            FigAudioQueueTimingShimGetAudioQueue(*(v3 + 40));
            CdfajkOy32ff();
            SPSAndPPSCountFromAVCC = FAIRPLAY_CALL_LOG(v29);
          }
        }
      }
    }
  }

  else
  {
LABEL_44:
    OUTLINED_FUNCTION_49_0();
    SPSAndPPSCountFromAVCC = FigSignalErrorAtGM();
  }

LABEL_15:
  v4 = SPSAndPPSCountFromAVCC;
  if (theData)
  {
    CFRelease(theData);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (!v4)
  {
    v30 = *(v1 + 88);
    *(v1 + 88) = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_24;
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  return v4;
}

uint64_t FigFairPlayCPECryptorGetAggregateExternalProtectionStatusIgnoringDisplays(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    return 4294955146;
  }

  StatusIgnoringDisplays = FigCPEExternalProtectionMonitorGetStatusIgnoringDisplays(*(DerivedStorage + 80));
  return OUTLINED_FUNCTION_9_59(StatusIgnoringDisplays);
}

uint64_t FigFairPlayCPECryptorCopySerializedCryptorRecipe(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = 0;
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(a1, &v7);
    if (result)
    {
      return result;
    }

    *bytes = v7;
    Methods = FigCPEExternalProtectionMonitorGetMethods(*(v3 + 80));
    v10 = 1;
    v6 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    if (!v6)
    {
      return 4294955145;
    }
  }

  else
  {
    v6 = 0;
  }

  return OUTLINED_FUNCTION_16_45(v6);
}

uint64_t FigFairPlayCPECryptorGetCryptorType(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 4294955146;
  }

  result = 0;
  *a2 = 1;
  return result;
}

uint64_t DecryptCommon(uint64_t a1, OpaqueCMBlockBuffer *a2, CFTypeRef *a3)
{
  v20 = 0;
  v21 = 0;
  v3 = 4294955146;
  if (a1 && a2 && a3 && *a3)
  {
    v7 = CFRetain(*a3);
    DataLength = CMBlockBufferGetDataLength(a2);
    v9 = CMBlockBufferGetDataLength(v7);
    if (CMBlockBufferIsRangeContiguous(a2, 0, DataLength) && CMBlockBufferIsRangeContiguous(v7, 0, v9))
    {
      if (*(a1 + 40))
      {
        v13 = OUTLINED_FUNCTION_2_149(a2, v10, v11, v12, &v21);
        if (v13 || (v13 = OUTLINED_FUNCTION_2_149(v7, v14, v15, v16, &v20), v13) || (FigAudioQueueTimingShimGetAudioQueue(*(a1 + 40)), YHrWZQ6wU(), v13 = FAIRPLAY_CALL_LOG(v17), v13))
        {
          v3 = v13;
        }

        else
        {
          v18 = *a3;
          *a3 = v7;
          if (v7)
          {
            CFRetain(v7);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          v3 = 0;
        }
      }

      else
      {
        v3 = 4294955138;
      }
    }

    else
    {
      v3 = 4294955140;
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return v3;
}

uint64_t FigFairPlayCPELimitedCryptorGetNativeSession(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2 && v4)
  {
    v5 = *(v4 + 8);
    if (v5)
    {
      AudioQueue = FigAudioQueueTimingShimGetAudioQueue(v5);
    }

    else
    {
      AudioQueue = 0;
    }

    return OUTLINED_FUNCTION_16_45(AudioQueue);
  }

  return result;
}

uint64_t FigFairPlayCPELimitedCryptorGetExternalProtectionMethods(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2)
  {
    if (v4)
    {
      result = 0;
      *a2 = *(v4 + 24);
    }
  }

  return result;
}

uint64_t FigFairPlayCPELimitedCryptorDecryptSampleWithFormat(uint64_t a1, OpaqueCMBlockBuffer *a2, OpaqueCMBlockBuffer *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = 0;
  v19 = 0;
  result = 4294955146;
  if (a1 && a2 && a3)
  {
    DataLength = CMBlockBufferGetDataLength(a2);
    v9 = CMBlockBufferGetDataLength(a3);
    if (v9 < DataLength)
    {
      return 4294955136;
    }

    else
    {
      v10 = v9;
      if (CMBlockBufferIsRangeContiguous(a2, 0, DataLength) && CMBlockBufferIsRangeContiguous(a3, 0, v10))
      {
        if (*(DerivedStorage + 8))
        {
          result = OUTLINED_FUNCTION_2_149(a2, v11, v12, v13, &v19);
          if (!result)
          {
            result = OUTLINED_FUNCTION_2_149(a3, v14, v15, v16, &v18);
            if (!result)
            {
              FigAudioQueueTimingShimGetAudioQueue(*(DerivedStorage + 8));
              YHrWZQ6wU();
              return FAIRPLAY_CALL_LOG(v17);
            }
          }
        }

        else
        {
          return 4294955138;
        }
      }

      else
      {
        return 4294955140;
      }
    }
  }

  return result;
}

uint64_t FigFairPlayCPELimitedCryptorCreateProcessedBlockBufferAndSubsampleAuxiliaryDataWithOptions()
{
  OUTLINED_FUNCTION_5_103();
  v111 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_3_124(DerivedStorage, v6, v7, v8, v9, v10, v11, v12, v68, v75, v82, v89, v90, v91, v92, cf, v94, theData, v96, v97, v98, v99, v100, v101, BytePtr, v103, v104, v105, v106);
  FormatDescription = CMSampleBufferGetFormatDescription(v2);
  if (CMFormatDescriptionGetMediaSubType(FormatDescription) != 1685220713)
  {
    OUTLINED_FUNCTION_49_0();
    goto LABEL_42;
  }

  if (FigCFEqual())
  {
LABEL_24:
    DataBuffer = CMSampleBufferGetDataBuffer(v2);
    v39 = OUTLINED_FUNCTION_7_77(DataBuffer, v32, v33, v34, v35, v36, v37, v38, v69, v76, v83, v89, v90, v91, v92, cf);
    if (v39)
    {
      goto LABEL_43;
    }

    v39 = OUTLINED_FUNCTION_14_51(0, v40, v41, v42, v43, v44, v45, v46, v70, v77, v84, v89, v90, v91, v92, cf);
    if (v39)
    {
      goto LABEL_43;
    }

    v39 = OUTLINED_FUNCTION_4_119(0, v47, v48, v49, v50, v51, v52, v53, v71, v78, v85, v89, v90, v91);
    if (v39)
    {
      goto LABEL_43;
    }

    v39 = OUTLINED_FUNCTION_2_149(v90, v54, v55, v56, &v89);
    if (v39)
    {
      goto LABEL_43;
    }

    AudioQueue = FigAudioQueueTimingShimGetAudioQueue(*(v1 + 8));
    v108 = 0;
    v57 = (v0 & 1) != 0 ? 5 : 1;
    OUTLINED_FUNCTION_1_156(v57, v72, v79, v86, v89, v90, v91, v92, cf, v94, theData, v96, v97, v98, v99, v100, v101, BytePtr, v103, v104, v105, v106);
    v39 = FAIRPLAY_CALL_LOG(v58);
    if (v39)
    {
      goto LABEL_43;
    }

    if (v109 == v91 && v110 < 0x11)
    {
      v59 = OUTLINED_FUNCTION_10_57(v110, v73, v80, v87, v89, v90, v91, v92, cf, v94, theData, v96, v97, v98, v99, v100, v101, BytePtr, v103, v104, v105, v106);
      OUTLINED_FUNCTION_11_60(v59, v60, v61, v62, v63, v64, v65, v66, v74, v81, v88, v89, v90);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_49_0();
LABEL_42:
    v39 = FigSignalErrorAtGM();
LABEL_43:
    v4 = v39;
    goto LABEL_35;
  }

  v76 = v3;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_6_89();
  Extension = CMFormatDescriptionGetExtension(FormatDescription, *MEMORY[0x1E69600A0]);
  if (!Extension)
  {
    goto LABEL_44;
  }

  v15 = Extension;
  v16 = CFGetTypeID(Extension);
  if (v16 != CFDictionaryGetTypeID())
  {
    goto LABEL_44;
  }

  Value = CFDictionaryGetValue(v15, @"avcC");
  if (!Value)
  {
    goto LABEL_44;
  }

  v18 = Value;
  v19 = CFGetTypeID(Value);
  if (v19 != CFDataGetTypeID())
  {
    goto LABEL_44;
  }

  SPSAndPPSCountFromAVCC = FigH264Bridge_GetSPSAndPPSCountFromAVCC();
  if (SPSAndPPSCountFromAVCC)
  {
    goto LABEL_15;
  }

  if (v101 == 1 && v100 == 1)
  {
    CFDataGetBytePtr(v18);
    OUTLINED_FUNCTION_17_40();
    SPSAndPPSCountFromAVCC = OUTLINED_FUNCTION_12_55();
    if (!SPSAndPPSCountFromAVCC)
    {
      CFDataGetBytePtr(v18);
      v21 = OUTLINED_FUNCTION_17_40();
      SPSAndPPSCountFromAVCC = OUTLINED_FUNCTION_13_43(v21, v22, v23, v24, v25, v26, v27, v28, v69, v3, v83);
      if (!SPSAndPPSCountFromAVCC)
      {
        SPSAndPPSCountFromAVCC = FigH264Bridge_CopyStandaloneSPSData();
        if (!SPSAndPPSCountFromAVCC)
        {
          SPSAndPPSCountFromAVCC = FigH264Bridge_CopyStandalonePPSData();
          if (!SPSAndPPSCountFromAVCC)
          {
            BytePtr = CFDataGetBytePtr(theData);
            LODWORD(v103) = CFDataGetLength(theData);
            v104 = CFDataGetBytePtr(v94);
            LODWORD(v105) = CFDataGetLength(v94);
            FigAudioQueueTimingShimGetAudioQueue(*(v3 + 8));
            CdfajkOy32ff();
            SPSAndPPSCountFromAVCC = FAIRPLAY_CALL_LOG(v29);
          }
        }
      }
    }
  }

  else
  {
LABEL_44:
    OUTLINED_FUNCTION_49_0();
    SPSAndPPSCountFromAVCC = FigSignalErrorAtGM();
  }

LABEL_15:
  v4 = SPSAndPPSCountFromAVCC;
  if (theData)
  {
    CFRelease(theData);
  }

  if (v94)
  {
    CFRelease(v94);
  }

  if (!v4)
  {
    v30 = *(v1 + 16);
    *(v1 + 16) = FormatDescription;
    if (FormatDescription)
    {
      CFRetain(FormatDescription);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    goto LABEL_24;
  }

LABEL_35:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v90)
  {
    CFRelease(v90);
  }

  return v4;
}

uint64_t FigFairPlayCPELimitedCryptorCopySerializedCryptorRecipe(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = 0;
  if (DerivedStorage)
  {
    v3 = DerivedStorage;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v4)
    {
      return 4294954514;
    }

    result = v4(a1, &v8);
    if (result)
    {
      return result;
    }

    v6 = *(v3 + 24);
    *bytes = v8;
    v10 = v6;
    v11 = 2;
    v7 = CFDataCreate(*MEMORY[0x1E695E480], bytes, 24);
    if (!v7)
    {
      return 4294955145;
    }
  }

  else
  {
    v7 = 0;
  }

  return OUTLINED_FUNCTION_16_45(v7);
}

uint64_t FigFairPlayCPELimitedCryptorIsCompatibleWithSerializedCryptorRecipe(uint64_t a1, const __CFData *a2, BOOL *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  BytePtr = CFDataGetBytePtr(a2);
  if (CFDataGetLength(a2) != 24)
  {
    return 4294949724;
  }

  v8 = *BytePtr;
  v9 = *(BytePtr + 2);
  v10 = *(BytePtr + 4);
  v15 = 0;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v11)
  {
    return 4294954514;
  }

  result = v11(a1, &v15);
  if (!result)
  {
    v14 = 0;
    if (v15 == v8 && *(DerivedStorage + 24) == v9 && v10 == 1)
    {
      v14 = 1;
    }

    result = 0;
    *a3 = v14;
  }

  return result;
}

uint64_t FigFairPlayCPELimitedCryptorGetCryptorType(uint64_t a1, _DWORD *a2)
{
  CMBaseObjectGetDerivedStorage();
  result = OUTLINED_FUNCTION_8_63();
  if (a2)
  {
    if (v4)
    {
      result = 0;
      *a2 = 1;
    }
  }

  return result;
}

void audioSessionMXSession_forwardMXSessionNotification(int a1, int a2, void *key)
{
  if (key)
  {
    if (!FigAudioSessionGetNotificationNameForMXSessionNotificationNameInternal(key))
    {
      FigSimpleMutexLock();
      v4 = OUTLINED_FUNCTION_1_157();
      Value = CFDictionaryGetValue(v4, v5);
      FigSimpleMutexUnlock();
      if (!Value)
      {
        v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigAudioSessionMXSessionNotification_%@", key);
        if (!v7)
        {
          return;
        }

        v8 = v7;
        FigSimpleMutexLock();
        v9 = OUTLINED_FUNCTION_1_157();
        CFDictionarySetValue(v9, v10, v8);
        FigSimpleMutexUnlock();
        CFRelease(v8);
      }
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_150();

    CMNotificationCenterPostNotification();
  }
}

void audioSessionMXSession_forwardCMSessionNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    FigSimpleMutexLock();
    v4 = OUTLINED_FUNCTION_1_157();
    Value = CFDictionaryGetValue(v4, v5);
    FigSimpleMutexUnlock();
    if (!Value)
    {
      v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"FigAudioSessionCMSessionNotification_%@", a3);
      if (!v7)
      {
        return;
      }

      v8 = v7;
      FigSimpleMutexLock();
      v9 = OUTLINED_FUNCTION_1_157();
      CFDictionarySetValue(v9, v10, v8);
      FigSimpleMutexUnlock();
      CFRelease(v8);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    OUTLINED_FUNCTION_2_150();

    CMNotificationCenterPostNotification();
  }
}

uint64_t FigAudioSessionCreateWithCMSession(uint64_t a1, const void *a2, void *a3)
{
  result = MXSessionCreate();
  if (!result)
  {
    return FigAudioSessionCreateWithCMSessionAndMXSession(a1, a2, 0, a3);
  }

  return result;
}

uint64_t audioSessionMXSession_RequestConfigurationForProperty(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  MXSessionPropertyForRequestedFigAudioSessionPropertyInternal = FigAudioSessionGetMXSessionPropertyForRequestedFigAudioSessionPropertyInternal(a2);
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  if (MXSessionPropertyForRequestedFigAudioSessionPropertyInternal)
  {
    v5 = MXSessionSetProperty();
  }

  else
  {
    v5 = 4294948074;
  }

  if (*v4 == 1)
  {
    if (a2)
    {
      CFHash(a2);
    }

    kdebug_trace();
  }

  return v5;
}

BOOL audioSessionMXSession_IsRelatedSessionID()
{
  CMBaseObjectGetDerivedStorage();
  v0 = AudioSessionCopyCMSessionForSessionID();
  v1 = v0 && !MXSessionCopyProperty() && !CMSessionCopyProperty() && CFNumberCompare(0, 0, 0) == kCFCompareEqualTo;
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

uint64_t audioSessionMXSession_SetMXSessionPropertiesAndCopyErrors(uint64_t a1, const __CFDictionary *a2, CFMutableDictionaryRef *a3)
{
  CMBaseObjectGetDerivedStorage();
  Count = FigCFDictionaryGetCount();
  v6 = malloc_type_calloc(Count, 8uLL, 0x6004044C4A2DFuLL);
  CFDictionaryGetKeysAndValues(a2, v6, 0);
  if (Count < 1)
  {
    v10 = 1;
  }

  else
  {
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      if (*v6)
      {
        CFHash(*v6);
      }

      if (Count != 1)
      {
        v8 = v6[1];
        if (v8)
        {
          CFHash(v8);
        }

        if (Count >= 3)
        {
          v9 = v6[2];
          if (v9)
          {
            CFHash(v9);
          }
        }
      }

      kdebug_trace();
    }

    v10 = MXSessionSetProperties() == 0;
    if (*v7 == 1)
    {
      if (Count >= 4)
      {
        v11 = v6[3];
        if (v11)
        {
          CFHash(v11);
        }

        if (Count != 4)
        {
          v12 = v6[4];
          if (v12)
          {
            CFHash(v12);
          }

          if (Count >= 6)
          {
            v13 = v6[5];
            if (v13)
            {
              CFHash(v13);
            }
          }
        }
      }

      kdebug_trace();
    }

    if (a3)
    {
      *a3 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v10 = v10;
    }
  }

  free(v6);
  return v10;
}

uint64_t audioSessionMXSession_CopySpatializationCapabilities(uint64_t a1, const __CFAllocator *a2, uint64_t a3, __CFDictionary **a4)
{
  cf = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  CMBaseObjectGetDerivedStorage();
  if (a4)
  {
    SessionSpatialPreferencesForContentType = CMSessionCopyProperty();
    if (!SessionSpatialPreferencesForContentType)
    {
      FigCFNumberGetSInt32();
      SessionSpatialPreferencesForContentType = AudioGetSessionSpatialPreferencesForContentType();
      if (!SessionSpatialPreferencesForContentType)
      {
        SessionSpatialPreferencesForContentType = FPSupport_CreateFigSpatializationCapabilitiesFromSpatialAudioPreferences(v9, a2, a4);
      }
    }
  }

  else
  {
    fig_log_get_emitter();
    SessionSpatialPreferencesForContentType = FigSignalErrorAtGM();
  }

  v7 = SessionSpatialPreferencesForContentType;
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

uint64_t audioSessionMXSession_copyAudioDeviceIsAvailable(uint64_t a1, CFTypeRef *a2)
{
  CMBaseObjectGetDerivedStorage();
  v13 = 0;
  theArray = 0;
  v11 = 0;
  v12 = 0;
  cf = 0;
  if (!a2)
  {
    fig_log_get_emitter();
    v3 = FigSignalErrorAtGM();
    goto LABEL_28;
  }

  v3 = MXSessionCopyProperty();
  if (v3)
  {
LABEL_28:
    v6 = v3;
    goto LABEL_18;
  }

  if (FigCFNumberGetSInt32() == 12)
  {
    v3 = MXSessionCopyProperty();
    if (!v3)
    {
      v4 = v13;
      v5 = *(*(CMBaseObjectGetVTable() + 16) + 144);
      if (!v5)
      {
        v6 = 4294954514;
        goto LABEL_18;
      }

      v6 = v5(v4, v11, &cf);
      v7 = cf;
      if (v6)
      {
        goto LABEL_15;
      }

      if (!cf)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_28;
  }

  v3 = MXSessionCopyProperty();
  if (v3)
  {
    goto LABEL_28;
  }

  if (!theArray || CFArrayGetCount(theArray) <= 0)
  {
LABEL_13:
    v8 = MEMORY[0x1E695E4C0];
    goto LABEL_14;
  }

LABEL_12:
  v8 = MEMORY[0x1E695E4D0];
LABEL_14:
  v6 = 0;
  *a2 = CFRetain(*v8);
  v7 = cf;
LABEL_15:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_18:
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v6;
}

uint64_t FigAudioSessionCreateWithCMSessionAndMXSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithCMSessionAndMXSession_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithCMSessionAndMXSession_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithCMSessionAndMXSession_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithCMSessionAndMXSession_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateUsingPrimaryCMSessionForAuditToken_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAudioSessionCreateWithMXSessionSiblingForFigAudioSession_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t audioSessionMXSession_copyNeroInformationDictionary_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigRCLCreateConfiguration(const void *a1, CFTypeRef cf1, const __CFDictionary *a3, CFMutableDictionaryRef *a4)
{
  if (qword_1ED4CB6E8 == -1)
  {
    if (!cf1)
    {
      goto LABEL_39;
    }
  }

  else
  {
    dispatch_once(&qword_1ED4CB6E8, &__block_literal_global_84);
    if (!cf1)
    {
      goto LABEL_39;
    }
  }

  if (!a4)
  {
    goto LABEL_39;
  }

  if (qword_1ED4CB6F0 != -1)
  {
    OUTLINED_FUNCTION_1_158(&qword_1ED4CB6F0);
  }

  v8 = qword_1ED4CB6F8;
  if (!qword_1ED4CB6F8)
  {
    goto LABEL_39;
  }

  if (CFEqual(cf1, @"kFigRemoteConfigurationLoaderStoreBagType_Pump"))
  {
    v9 = 0;
    goto LABEL_13;
  }

  if (CFEqual(cf1, @"kFigRemoteConfigurationLoaderStoreBagType_CRABS"))
  {
    v9 = 1;
    goto LABEL_13;
  }

  if (!CFEqual(cf1, @"kFigRemoteConfigurationLoaderStoreBagType_AirPlay"))
  {
LABEL_39:
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  v9 = 2;
LABEL_13:
  v24 = 0;
  memset(context, 0, sizeof(context));
  v10 = &v8[3 * v9];
  v12 = v10[5];
  v11 = v10 + 5;
  if (v12 && v11[1])
  {
    if (a3)
    {
      v13 = CFDictionaryGetValue(a3, @"ServiceIdentifier");
      v14 = CFDictionaryGetValue(a3, @"configurationGroup");
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = a1;
    }

    v24 = 0;
    *(&context[1] + 8) = 0u;
    *&context[0] = v8;
    *(&context[0] + 1) = v15;
    *&context[1] = v14;
    *(&context[2] + 1) = v11;
    dispatch_sync_f(*v8, context, rcl_FigRCLCreateConfiguration_dispatcher);
    if (!*(&context[1] + 1))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(&context[1] + 1) = Mutable;
      if (!Mutable)
      {
        OUTLINED_FUNCTION_239();
        return FigSignalErrorAtGM();
      }

      goto LABEL_38;
    }

    value = 0;
    if (FigCFEqual())
    {
      v16 = 0;
    }

    else if (FigCFEqual())
    {
      v16 = 1;
    }

    else
    {
      if (!FigCFEqual())
      {
LABEL_37:
        Mutable = *(&context[1] + 1);
LABEL_38:
        result = 0;
        *a4 = Mutable;
        return result;
      }

      v16 = 2;
    }

    FigTrialCreate(a1, v16, &value);
    if (value)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (MutableCopy)
      {
        v20 = MutableCopy;
        CFDictionarySetValue(MutableCopy, @"figTrial", value);
        v21 = *(&context[1] + 1);
        *(&context[1] + 1) = v20;
        CFRetain(v20);
        if (v21)
        {
          CFRelease(v21);
        }

        CFRelease(v20);
      }

      if (value)
      {
        CFRelease(value);
      }
    }

    goto LABEL_37;
  }

  return 4294954516;
}

void rcl_FigRCLCreateConfiguration_dispatcher(uint64_t a1)
{
  v89[16] = *MEMORY[0x1E69E9840];
  *(a1 + 24) = 0;
  *(a1 + 33) = 1;
  v2 = *(a1 + 40);
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  valuePtr = 0;
  v6 = *(v2 + 16) + 21600.0;
  *(a1 + 33) = v6 < CFAbsoluteTimeGetCurrent();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v8 = Mutable;
    CFArrayAppendValue(Mutable, @"storeBagVersion");
    CFArrayAppendValue(v8, @"versionConfiguration");
    CFArrayAppendValue(v8, @"configurationGroupMap");
    CFArrayAppendValue(v8, @"expires");
    CFArrayAppendValue(v8, @"OSVersion");
    v9 = CFPreferencesCopyMultiple(v8, *(v2 + 8), *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    if (!v9)
    {
      v12 = 0;
      v10 = v8;
      goto LABEL_48;
    }

    v10 = v9;
    Value = CFDictionaryGetValue(v9, @"storeBagVersion");
    v12 = Value;
    if (Value)
    {
      v13 = CFGetTypeID(Value);
      if (v13 != CFNumberGetTypeID() || (CFNumberGetValue(v12, kCFNumberCFIndexType, &valuePtr), valuePtr != 2) || (v14 = CFDictionaryGetValue(v10, @"versionConfiguration")) == 0 || (v15 = v14, v16 = CFGetTypeID(v14), v16 != CFDictionaryGetTypeID()))
      {
LABEL_46:
        v12 = 0;
        goto LABEL_47;
      }

      v17 = CFDictionaryGetValue(v10, @"configurationGroupMap");
      v12 = v17;
      if (v17)
      {
        v18 = CFGetTypeID(v17);
        if (v18 == CFDictionaryGetTypeID())
        {
          if (v5 && (v19 = CFDictionaryGetValue(v12, v5)) != 0)
          {
            v20 = v19;
LABEL_29:
            v37 = CFGetTypeID(v20);
            if (v37 == CFDictionaryGetTypeID())
            {
              v12 = CFRetain(v20);
              v89[0] = 0;
              v85 = 0;
              v38 = CFDictionaryGetValue(v10, @"expires");
              v45 = 1;
              if (v38)
              {
                v39 = v38;
                v40 = CFGetTypeID(v38);
                if (v40 == CFNumberGetTypeID())
                {
                  CFNumberGetValue(v39, kCFNumberDoubleType, v89);
                  v41 = CFDictionaryGetValue(v10, @"OSVersion");
                  if (v41)
                  {
                    v42 = v41;
                    v43 = CFGetTypeID(v41);
                    if (v43 == CFNumberGetTypeID())
                    {
                      CFNumberGetValue(v42, kCFNumberSInt32Type, &v85);
                      if (_MergedGlobals_107 >= v85)
                      {
                        v44 = *v89;
                        if (v44 > CFAbsoluteTimeGetCurrent())
                        {
                          v45 = 0;
                        }
                      }
                    }
                  }
                }
              }

              *(a1 + 33) = v45;
              goto LABEL_47;
            }
          }

          else if (v3 && (v21 = CFDictionaryGetValue(v15, v3)) != 0 || (v22 = CFDictionaryGetValue(v15, @"defaultBundleID")) != 0 && (v21 = v22, v23 = CFGetTypeID(v22), v23 == CFArrayGetTypeID()))
          {
            v72 = v10;
            v24 = arc4random_uniform(0x64u);
            if (CFArrayGetCount(v21) >= 1)
            {
              v25 = 0;
              HIDWORD(v70) = v24;
              v26 = v24;
              v27 = 0.0;
              do
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v21, v25);
                v84 = 0.0;
                if (!ValueAtIndex || (v29 = ValueAtIndex, v30 = CFGetTypeID(ValueAtIndex), v30 != CFDictionaryGetTypeID()))
                {
                  v51 = OUTLINED_FUNCTION_3_125();
                  v59 = OUTLINED_FUNCTION_10_58(v51, v52, v53, v54, v55, v56, v57, v58, v69, v70, v4, v72, block, v75, v76, v77, v78, valuePtr, v80, v81, v82, *type);
                  if (OUTLINED_FUNCTION_115_1(v59))
                  {
LABEL_55:
                    v85 = 136315138;
                    v86 = "rcl_GetConfigurationGroupNameFromPercentArray";
                    OUTLINED_FUNCTION_62();
                    OUTLINED_FUNCTION_36();
                    _os_log_send_and_compose_impl();
                  }

LABEL_56:
                  v4 = v71;
                  v10 = v73;
                  OUTLINED_FUNCTION_16();
                  goto LABEL_45;
                }

                v31 = CFDictionaryGetValue(v29, @"percentage");
                if (!v31 || (v32 = v31, v33 = CFGetTypeID(v31), v33 != CFNumberGetTypeID()))
                {
                  v60 = OUTLINED_FUNCTION_3_125();
                  v68 = OUTLINED_FUNCTION_10_58(v60, v61, v62, v63, v64, v65, v66, v67, v69, v70, v4, v72, block, v75, v76, v77, v78, valuePtr, v80, v81, v82, *type);
                  if (OUTLINED_FUNCTION_115_1(v68))
                  {
                    goto LABEL_55;
                  }

                  goto LABEL_56;
                }

                CFNumberGetValue(v32, kCFNumberFloat64Type, &v84);
                v27 = v27 + v84;
                v34 = CFDictionaryGetValue(v29, @"configurationGroup");
                if (v27 >= v26)
                {
                  break;
                }

                ++v25;
              }

              while (v25 < CFArrayGetCount(v21));
              v24 = HIDWORD(v70);
              if (v34)
              {
                v35 = CFGetTypeID(v34);
                if (v35 == CFStringGetTypeID())
                {
                  v36 = CFDictionaryGetValue(v12, v34);
                  if (v36)
                  {
                    v20 = v36;
                    v10 = v72;
                    goto LABEL_29;
                  }

                  v12 = 0;
                  v10 = v72;
                  goto LABEL_47;
                }
              }
            }

            LODWORD(v84) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v47 = LODWORD(v84);
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
            {
              v48 = v47;
            }

            else
            {
              v48 = v47 & 0xFFFFFFFE;
            }

            if (v48)
            {
              v85 = 136315394;
              v86 = "rcl_GetConfigurationGroupNameFromPercentArray";
              v87 = 1024;
              v88 = v24;
              OUTLINED_FUNCTION_62();
              OUTLINED_FUNCTION_36();
              _os_log_send_and_compose_impl();
            }

            v10 = v72;
            OUTLINED_FUNCTION_16();
LABEL_45:
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        goto LABEL_46;
      }
    }

LABEL_47:
    CFRelease(v8);
LABEL_48:
    CFRelease(v10);
    goto LABEL_49;
  }

  v12 = 0;
LABEL_49:
  *(a1 + 24) = v12;
  if (*(a1 + 33))
  {
    v49 = *(a1 + 40);
    v50 = *v4;
    block = MEMORY[0x1E69E9820];
    v75 = 3221225472;
    v76 = __rcl_FigRCLCreateConfiguration_dispatcher_block_invoke;
    v77 = &__block_descriptor_40_e5_v8__0l;
    v78 = v49;
    dispatch_async(v50, &block);
  }
}

void rcl_HTTPReadCallback(uint64_t a1, int a2, int a3, CMBlockBufferRef targetBBuf, uint64_t a5, uint64_t a6, char a7, int a8)
{
  v96 = *MEMORY[0x1E69E9840];
  if (qword_1ED4CB6F0 != -1)
  {
    OUTLINED_FUNCTION_1_158(&qword_1ED4CB6F0);
  }

  blockBufferOut = 0;
  if (!qword_1ED4CB6F8)
  {
    return;
  }

  v13 = qword_1ED4CB6F8 + 8;
  v14 = qword_1ED4CB6F8 + 8;
  do
  {
    v14 = *v14;
    if (!v14)
    {
      v17 = 0;
      goto LABEL_97;
    }
  }

  while (*(v14 + 24) != a1);
  if (a8)
  {
    goto LABEL_102;
  }

  if (!targetBBuf)
  {
    appended = 0;
    if ((a7 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v15 = *(v14 + 40);
  if (!v15)
  {
    v18 = CFRetain(targetBBuf);
    appended = 0;
    *(v14 + 40) = v18;
    if ((a7 & 2) == 0)
    {
      goto LABEL_14;
    }

LABEL_16:
    v19 = *(v14 + 16);
    *(v14 + 48) = appended;
    if (!appended)
    {
      *(v19 + 16) = CFAbsoluteTimeGetCurrent();
      v20 = *MEMORY[0x1E695E480];
      if (!CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], *(v14 + 40), *MEMORY[0x1E695E480], 0, 0, 0, 0, &blockBufferOut) && !FigCreateCFDataWithBlockBufferNoCopy())
      {
        v21 = CFPropertyListCreateWithData(v20, 0, 1uLL, 0, 0);
        v17 = v21;
        if (v21)
        {
          v22 = *(v19 + 8);
          v23 = CFDictionaryGetValue(v21, @"signature");
          v87 = 0;
          valuePtr = 21600;
          if (!v23 || (v24 = v23, v25 = CFGetTypeID(v23), v25 != CFStringGetTypeID()) || (v26 = CFDataCreate(v20, FigRCLPublicKey, 270)) == 0)
          {
            OUTLINED_FUNCTION_7_78();
            LOWORD(v38) = FigSignalErrorAtGM();
            goto LABEL_92;
          }

          v27 = v26;
          applicationID = v22;
          v90[0] = 0.0;
          v28 = SecKeyCreateFromPublicData();
          if (v28)
          {
            v29 = v28;
            allocator = v20;
            v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v24 options:1];
            v78 = v29;
            v79 = v27;
            v77 = v30;
            if (v30)
            {
              v31 = CFDictionaryGetValue(v17, @"bag");
              if (v31)
              {
                v32 = v31;
                v33 = CFGetTypeID(v31);
                if (v33 == CFStringGetTypeID())
                {
                  v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v32 options:1];
                  if (v34)
                  {
                    v35 = v34;
                    BytePtr = CFDataGetBytePtr(v34);
                    Length = CFDataGetLength(v35);
                    CC_SHA1(BytePtr, Length, md);
                    v38 = CFDataGetBytePtr(v30);
                    v39 = CFDataGetLength(v30);
                    v80 = v35;
                    if (SecKeyRawVerify(v29, 0x8002u, md, 0x14uLL, v38, v39))
                    {
                      OUTLINED_FUNCTION_0_166();
                      FigSignalErrorAtGM();
                      OUTLINED_FUNCTION_6_90();
                      v76 = 0;
                    }

                    else
                    {
                      v40 = CFPropertyListCreateWithData(v20, v35, 1uLL, 0, 0);
                      v76 = v40;
                      if (v40)
                      {
                        v41 = v40;
                        v38 = CFGetTypeID(v40);
                        if (v38 == CFDictionaryGetTypeID())
                        {
                          v42 = CFDictionaryGetValue(v41, @"refreshCycle");
                          if (v42)
                          {
                            v38 = v42;
                            v43 = CFGetTypeID(v42);
                            if (v43 == CFNumberGetTypeID())
                            {
                              CFNumberGetValue(v38, kCFNumberIntType, &valuePtr);
                            }
                          }

                          v44 = CFDictionaryGetValue(v41, @"storeBagVersion");
                          if (v44)
                          {
                            number = v44;
                            v38 = CFGetTypeID(v44);
                            if (v38 == CFNumberGetTypeID())
                            {
                              CFNumberGetValue(number, kCFNumberSInt32Type, &v87);
                              if (v87 == 2)
                              {
                                v45 = CFDictionaryGetValue(v41, @"configurationGroupMap");
                                if (v45)
                                {
                                  v74 = v45;
                                  v38 = CFGetTypeID(v45);
                                  if (v38 == CFDictionaryGetTypeID())
                                  {
                                    v90[0] = CFAbsoluteTimeGetCurrent() + valuePtr;
                                    value = CFNumberCreate(allocator, kCFNumberDoubleType, v90);
                                    if (value)
                                    {
                                      v46 = CFDictionaryGetValue(v41, @"versionBagArray");
                                      if (!v46)
                                      {
                                        goto LABEL_69;
                                      }

                                      v30 = v46;
                                      v47 = CFGetTypeID(v46);
                                      if (v47 != CFArrayGetTypeID() || CFArrayGetCount(v30) < 1)
                                      {
                                        goto LABEL_69;
                                      }

                                      cf = 0;
                                      v82 = 0;
                                      v48 = 0;
                                      while (1)
                                      {
                                        ValueAtIndex = CFArrayGetValueAtIndex(v30, v48);
                                        if (ValueAtIndex)
                                        {
                                          v50 = ValueAtIndex;
                                          v51 = CFGetTypeID(ValueAtIndex);
                                          if (v51 == CFDictionaryGetTypeID())
                                          {
                                            v52 = CFDictionaryGetValue(v50, @"deviceList");
                                            v53 = CFDictionaryGetValue(v50, @"productType");
                                            if (!qword_1ED4CB708 || (v54 = v53) == 0 || (v55 = CFGetTypeID(v53), v55 != CFArrayGetTypeID()) || CFArrayGetCount(v54) < 1 || (*md = MEMORY[0x1E69E9820], v92 = 3221225472, v93 = __rcl_CopyVersionBag_block_invoke, v94 = &unk_1E7492450, v95 = qword_1ED4CB708, [(__CFArray *)v54 indexOfObjectPassingTest:md]!= 0x7FFFFFFFFFFFFFFFLL))
                                            {
                                              if (!v52)
                                              {
                                                goto LABEL_59;
                                              }

                                              v56 = CFGetTypeID(v52);
                                              if (v56 != CFArrayGetTypeID() || CFArrayGetCount(v52) < 1)
                                              {
                                                goto LABEL_59;
                                              }

                                              if (CFArrayGetCount(v52) >= 1)
                                              {
                                                break;
                                              }
                                            }
                                          }
                                        }

LABEL_63:
                                        if (++v48 >= CFArrayGetCount(v30))
                                        {
                                          v27 = cf;
                                          if (cf)
                                          {
                                            v61 = CFGetTypeID(cf);
                                            v62 = allocator;
                                            if (v61 == CFDictionaryGetTypeID())
                                            {
                                              if (v82)
                                              {
                                                v63 = CFGetTypeID(v82);
                                                if (v63 == CFNumberGetTypeID())
                                                {
                                                  v30 = CFRetain(cf);
                                                  v27 = CFRetain(v82);
LABEL_71:
                                                  v38 = v74;
                                                  Mutable = CFDictionaryCreateMutable(v62, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                                  v65 = Mutable;
                                                  if (Mutable)
                                                  {
                                                    CFDictionarySetValue(Mutable, @"expires", value);
                                                    CFDictionarySetValue(v65, @"storeBagVersion", number);
                                                    CFDictionarySetValue(v65, @"OSVersion", v27);
                                                    CFDictionarySetValue(v65, @"versionConfiguration", v30);
                                                    v66 = CFDictionaryCreateMutable(v62, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                                                    if (v66)
                                                    {
                                                      CFDictionaryApplyFunction(v30, rcl_VersionConfigurationDictApplierFunc, v66);
                                                      CFDictionaryApplyFunction(v74, rcl_ConfigurationGroupMapDictApplierFunc, v66);
                                                      v38 = v66;
                                                    }

                                                    CFDictionarySetValue(v65, @"configurationGroupMap", v38);
                                                    CFPreferencesSetMultiple(v65, 0, applicationID, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
                                                    LOWORD(v38) = 0;
                                                  }

                                                  else
                                                  {
                                                    OUTLINED_FUNCTION_0_166();
                                                    LOWORD(v38) = FigSignalErrorAtGM();
                                                    v66 = 0;
                                                  }

LABEL_75:
                                                  CFRelease(v79);
                                                  CFRelease(v78);
                                                  if (v77)
                                                  {
                                                    CFRelease(v77);
                                                  }

                                                  if (v76)
                                                  {
                                                    CFRelease(v76);
                                                  }

                                                  if (v80)
                                                  {
                                                    CFRelease(v80);
                                                  }

                                                  if (value)
                                                  {
                                                    CFRelease(value);
                                                  }

                                                  if (v27)
                                                  {
                                                    CFRelease(v27);
                                                  }

                                                  if (v30)
                                                  {
                                                    CFRelease(v30);
                                                  }

                                                  if (v66)
                                                  {
                                                    CFRelease(v66);
                                                  }

                                                  if (v65)
                                                  {
                                                    v67 = v65;
                                                    goto LABEL_91;
                                                  }

                                                  goto LABEL_92;
                                                }
                                              }
                                            }
                                          }

LABEL_69:
                                          LOWORD(v38) = v8;
                                          if (!FigSignalErrorAtGM())
                                          {
                                            v27 = 0;
                                            v30 = 0;
                                            v62 = allocator;
                                            goto LABEL_71;
                                          }

                                          FigSignalErrorAtGM();
                                          OUTLINED_FUNCTION_6_90();
LABEL_121:
                                          v66 = 0;
                                          v65 = 0;
                                          goto LABEL_75;
                                        }
                                      }

                                      v57 = 0;
                                      while (1)
                                      {
                                        CFArrayGetValueAtIndex(v52, v57);
                                        if (FigCFEqual())
                                        {
                                          break;
                                        }

                                        if (++v57 >= CFArrayGetCount(v52))
                                        {
                                          goto LABEL_63;
                                        }
                                      }

LABEL_59:
                                      v58 = CFDictionaryGetValue(v50, @"OSVersion");
                                      v89 = 0;
                                      if (v58)
                                      {
                                        v59 = v58;
                                        v60 = CFGetTypeID(v58);
                                        if (v60 == CFNumberGetTypeID())
                                        {
                                          CFNumberGetValue(v59, kCFNumberSInt32Type, &v89);
                                          if (_MergedGlobals_107 >= v89)
                                          {
                                            cf = CFDictionaryGetValue(v50, @"versionConfiguration");
                                            v82 = v59;
                                          }
                                        }
                                      }

                                      goto LABEL_63;
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      OUTLINED_FUNCTION_0_166();
                      FigSignalErrorAtGM();
                      OUTLINED_FUNCTION_6_90();
                    }

LABEL_120:
                    value = 0;
                    goto LABEL_121;
                  }
                }
              }

              OUTLINED_FUNCTION_0_166();
              LOWORD(v38) = FigSignalErrorAtGM();
              v30 = 0;
            }

            else
            {
              OUTLINED_FUNCTION_0_166();
              LOWORD(v38) = FigSignalErrorAtGM();
            }

            v27 = 0;
            v76 = 0;
            v80 = 0;
            goto LABEL_120;
          }

          OUTLINED_FUNCTION_7_78();
          LOWORD(v38) = FigSignalErrorAtGM();
          v67 = v27;
LABEL_91:
          CFRelease(v67);
LABEL_92:
          if (v38)
          {
            v89 = 0;
            LOBYTE(valuePtr) = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v72 = v89;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, valuePtr))
            {
              v73 = v72;
            }

            else
            {
              v73 = v72 & 0xFFFFFFFE;
            }

            if (v73)
            {
              LODWORD(v90[0]) = 136315138;
              *(v90 + 4) = "rcl_HTTPReadCallback";
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_16();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

LABEL_93:
        v68 = *v14;
        v69 = *(v14 + 8);
        if (*v14)
        {
          v70 = *v14;
        }

        else
        {
          v70 = v13;
        }

        *(v70 + 8) = v69;
        *v69 = v68;
        goto LABEL_97;
      }
    }

LABEL_102:
    v17 = 0;
    goto LABEL_93;
  }

  appended = CMBlockBufferAppendBufferReference(v15, targetBBuf, 0, 0, 0);
  if ((a7 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_14:
  v17 = 0;
  v14 = 0;
LABEL_97:
  rcl_ReleaseConnectionData(v14);
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  if (v17)
  {
    CFRelease(v17);
  }
}

void rcl_InitializeLoader_cold_1(uint64_t a1)
{
  if (*(a1 + 32))
  {
    CFRelease(*(a1 + 32));
    a1 = qword_1ED4CB6F8;
    *(qword_1ED4CB6F8 + 32) = 0;
  }

  if (*(a1 + 24))
  {
    CFRelease(*(a1 + 24));
    a1 = qword_1ED4CB6F8;
    *(qword_1ED4CB6F8 + 24) = 0;
  }

  if (*a1)
  {
    dispatch_release(*a1);
    a1 = qword_1ED4CB6F8;
  }

  rcl_ReleaseConnectionDataList((a1 + 8));
  v1 = qword_1ED4CB6F8;

  free(v1);
}

uint64_t FigAlternateCreationContextSetMediaGroupLocatorMapForMediaGroupID(CFMutableDictionaryRef *a1, void *a2, const void *a3, const void *a4)
{
  theDict = 0;
  v6 = faiu_ensureAlternateCreationContextAndCopyMediaGroupCache(a1, a2, &theDict);
  v7 = theDict;
  if (!v6)
  {
    CFDictionarySetValue(theDict, a3, a4);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v6;
}

const void *FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID_cold_1(const __CFDictionary *a1, const void *a2, void *a3)
{
  if (CFDictionaryContainsKey(a1, a2))
  {
    result = CFDictionaryGetValue(a1, a2);
    if (result)
    {
      result = CFRetain(result);
    }
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t FigAlternateCreationContextCopyMediaGroupLocatorMapForMediaGroupID_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faiu_ensureAlternateCreationContextAndCopyMediaGroupCache_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t faiu_ensureAlternateCreationContextAndCopyMediaGroupCache_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDeferredTransactionCommit(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    v3 = *(a1 + 56);
    if (v3 && CFArrayGetCount(v3) >= 1)
    {
      *(a1 + 24) = FigGetUpTimeNanoseconds();
      *(a1 + 76) = a2;
      if (!*(a1 + 72))
      {
        v7 = objc_autoreleasePoolPush();
        LODWORD(v5) = fdt_commitTransactionChanges(a1);
        v8 = fdt_performPostCommitChanges(a1);
        if (v5)
        {
          v5 = v5;
        }

        else
        {
          v5 = v8;
        }

        objc_autoreleasePoolPop(v7);
        goto LABEL_8;
      }

      CFRetain(a1);
      dispatch_async_f(MEMORY[0x1E69E96A0], a1, fdt_commitTransactionOnMainQueue);
    }

    v5 = 0;
LABEL_8:
    *(a1 + 16) = 1;
    return v5;
  }

  return FigSignalErrorAtGM();
}

uint64_t FigDeferredTransactionAppendChangeWithCallback(const void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  cf = 0;
  value = 0;
  v12 = a1;
  if (!a1)
  {
    v13 = FigDeferredTransactionCreate(0, &cf);
    if (v13)
    {
LABEL_6:
      v14 = v13;
      goto LABEL_12;
    }

    v12 = cf;
  }

  if (*(v12 + 16))
  {
    v13 = FigSignalErrorAtGM();
    goto LABEL_6;
  }

  v13 = fdr_createChange(a7, a4, a5, &value);
  if (v13)
  {
    goto LABEL_6;
  }

  CFArrayAppendValue(*(v12 + 7), value);
  if (a2)
  {
    *(v12 + 72) = 1;
  }

  if (!a1)
  {
    v13 = FigDeferredTransactionCommit(v12, 0);
    goto LABEL_6;
  }

  v14 = 0;
LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v14;
}

uint64_t FigDeferredTransactionAppendPostCommitChangeWithCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (*(a1 + 16))
    {
      return FigSignalErrorAtGM();
    }

    else
    {
      v7 = OUTLINED_FUNCTION_1_159(a3, a6, a4, v9);
      if (!v7)
      {
        CFArrayAppendValue(*(a1 + 64), 0);
      }
    }
  }

  else
  {
    v7 = OUTLINED_FUNCTION_1_159(a3, a6, a4, v9);
    if (!v7)
    {
      fdt_performTransactionChange(0);
    }
  }

  return v7;
}

uint64_t FigDeferredTransactionCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDeferredTransactionCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdr_createChange_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdr_createChange_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdt_performTransactionChange_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fdt_performTransactionChange_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigDeferredTransactionSetCommitHostTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVTTStyleBlockCreate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTStyleBlock_GetNodeType_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTStyleBlock_copyChildNodeArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTStyleBlock_copyNodeDocumentSerialization_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figVTTStyleBlock_copyNodeDocumentSerialization_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_1_37();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigMultivariantPlaylistCreateEmpty_cold_1(uint64_t a1, const void *a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_0_167();
  *a3 = FigSignalErrorAtGM();

  CFRelease(a2);
}

uint64_t FigMultivariantPlaylistCreateEmpty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMultivariantPlaylistCreateEmpty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMultivariantPlaylistAddAlternate_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMultivariantPlaylistAddMediaSelection_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMultivariantPlaylistAddSessionDataSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMultivariantPlaylistAddContentKeySpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaPlaylistCreateEmpty_cold_2(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaPlaylistCreateEmpty_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaPlaylistAddRenditionReportSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaPlaylistAddDateRangeSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaPlaylistAddContentKeySpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaPlaylistAddMediaSegmentSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaPlaylistAddMapSegmentSpecifier_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMediaPlaylistAddDateEntryArray_cold_1(_DWORD *a1)
{
  OUTLINED_FUNCTION_0_167();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigVirtualDisplaySinkConduitCreate(uint64_t a1, __int128 *a2, const __CFDictionary *a3, void *a4)
{
  if (!a4)
  {
    return 4294954516;
  }

  FigVirtualDisplaySinkGetClassID();
  v7 = CMDerivedObjectCreate();
  if (!v7)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *(DerivedStorage + 88) = xmmword_196E73240;
    *(DerivedStorage + 112) = 256;
    *(DerivedStorage + 116) = 60;
    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"displayInfo");
      FigCFDictionaryGetInt32IfPresent();
      if (Value && (v10 = CFGetTypeID(Value), v10 == CFDictionaryGetTypeID()) || (Value = CFDictionaryGetValue(a3, @"deviceInfo")) != 0)
      {
        v11 = CFGetTypeID(Value);
        if (v11 == CFDictionaryGetTypeID())
        {
          v12 = CFDictionaryGetValue(Value, @"displaySizeInPixels");
          if (v12)
          {
            v13 = MEMORY[0x1E695F060];
            size = *MEMORY[0x1E695F060];
            CGSizeMakeWithDictionaryRepresentation(v12, &size);
            if (size.width != *v13 || size.height != v13[1])
            {
              *(DerivedStorage + 88) = size;
            }
          }

          v15 = CFDictionaryGetValue(Value, @"displayUUID");
          *(DerivedStorage + 64) = v15;
          if (v15)
          {
            CFRetain(v15);
          }

          v16 = CFDictionaryGetValue(Value, @"displayName");
          *(DerivedStorage + 72) = v16;
          if (v16)
          {
            CFRetain(v16);
          }

          v17 = CFDictionaryGetValue(Value, @"displayEDID");
          *(DerivedStorage + 80) = v17;
          if (v17)
          {
            CFRetain(v17);
          }

          FigCFDictionaryGetBooleanIfPresent();
          FigCFDictionaryGetBooleanIfPresent();
          v18 = CFDictionaryGetValue(Value, @"HDRInfo");
          *(DerivedStorage + 104) = v18;
          if (v18)
          {
            CFRetain(v18);
          }

          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetInt32IfPresent();
        }
      }

      if (!*(DerivedStorage + 104))
      {
        v19 = CFDictionaryGetValue(a3, @"HDRInfo");
        *(DerivedStorage + 104) = v19;
        if (v19)
        {
          CFRetain(v19);
        }
      }
    }

    if (!*(DerivedStorage + 64))
    {
      *(DerivedStorage + 64) = FVDUtilsCreateDisplayUUID();
    }

    global_queue = dispatch_get_global_queue(0, 0);
    *(DerivedStorage + 56) = global_queue;
    dispatch_retain(global_queue);
    if (a2)
    {
      v21 = *a2;
      v22 = a2[1];
      v23 = a2[2];
      *(DerivedStorage + 48) = *(a2 + 6);
      *(DerivedStorage + 16) = v22;
      *(DerivedStorage + 32) = v23;
      *DerivedStorage = v21;
    }

    v7 = 0;
    *a4 = 0;
  }

  return v7;
}

uint64_t CreateSampleGeneratorForClosedCaptions(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  if (!v2)
  {
    return 12;
  }

  v3 = v2;
  result = 0;
  a1[10] = 0;
  a1[11] = v3;
  a1[6] = CCPushForType;
  a1[8] = CCResyncForType;
  a1[7] = CCFlushForType;
  a1[9] = CCDestroyForType;
  return result;
}

uint64_t CCPushForType(CMFormatDescriptionRef *formatDescriptionOut, OpaqueCMBlockBuffer *a2, CMTime *a3, CMTime *a4, uint64_t a5, uint64_t a6)
{
  memset(&sampleTimingArray, 0, 24);
  cf = 0;
  v13 = formatDescriptionOut + 5;
  v12 = formatDescriptionOut[5];
  v14 = v13[6];
  if (v12)
  {
    if (*v14 == 1635017571)
    {
      goto LABEL_7;
    }

    CFRelease(v12);
    *v13 = 0;
  }

  *v14 = 1635017571;
  v15 = CMFormatDescriptionCreate(formatDescriptionOut[1], 0x636C6370u, 0x61746363u, 0, v13);
  if (v15)
  {
    return v15;
  }

  v15 = (formatDescriptionOut[2])(formatDescriptionOut, formatDescriptionOut[4], formatDescriptionOut[5]);
  if (v15)
  {
    return v15;
  }

  if (*v13)
  {
LABEL_7:
    sampleTimingArray.decodeTimeStamp = *a4;
    sampleTimingArray.presentationTimeStamp = *a3;
    CMTimeMake(&sampleTimingArray.duration, 1, 90000);
    sampleSizeArray = CMBlockBufferGetDataLength(a2);
    v15 = CMSampleBufferCreate(formatDescriptionOut[1], a2, 1u, 0, 0, formatDescriptionOut[5], 1, 1, &sampleTimingArray, 1, &sampleSizeArray, &cf);
    if (!v15)
    {
      v16 = (formatDescriptionOut[3])(formatDescriptionOut, formatDescriptionOut[4], cf, a6, a5);
      if (cf)
      {
        CFRelease(cf);
      }

      return v16;
    }

    return v15;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t FigRemoteStreamingAssetDownloaderCreateWithAsset(uint64_t a1, const void *a2, uint64_t a3, const __CFDictionary *a4, void *a5)
{
  xdict = 0;
  v17 = 0;
  v15 = 0;
  v10 = rad_ensureClientEstablished();
  if (v10 || (v10 = FigXPCCreateBasicMessage(), v10) || (v10 = rad_fillInCreationDictionary(v17, a2, a3, 0, 0, a4, 0), v10) || (v10 = OUTLINED_FUNCTION_12_56(), v10) || (v10 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v10))
  {
    v12 = v10;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
    v12 = rad_createInternal(a1, uint64, 0, 0, 0, &v15);
    if (!v12)
    {
      v13 = v15;
      *(CMBaseObjectGetDerivedStorage() + 128) = 0;
      *a5 = v13;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v12;
}

uint64_t rad_createInternal(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, void *a5, void *a6)
{
  FigAssetDownloaderGetClassID();
  v11 = CMDerivedObjectCreate();
  if (v11)
  {
    return v11;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = a2;
  *(DerivedStorage + 128) = 0;
  if (a3)
  {
    if (a4)
    {
      if (a5)
      {
        v13 = DerivedStorage;
        dispatch_retain(a4);
        v13[2] = a4;
        __copy_assignment_8_8_t0w8_pa0_62591_8_pa0_48202_16_pa0_13082_24_pa0_11046_32_pa0_49729_40_pa0_62126_48_pa0_6100_56_pa0_11999_64_pa0_10804_72_pa0_24756_80_pa0_9655_88(v13 + 3, a5);
        v14 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        v13[15] = v14;
        if (!v14)
        {
          fig_log_get_emitter();
          return FigSignalErrorAtGM();
        }
      }
    }
  }

  v11 = FigXPCRemoteClientAssociateObject();
  if (v11)
  {
    return v11;
  }

  FigMetricInstallAllDownloadDeserializationHandlers();
  v15 = 0;
  *a6 = 0;
  return v15;
}

uint64_t FigRemoteStreamingAssetDownloadOrchestratorCreate(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, uint64_t a7, uint64_t a8, NSObject *a9, void *a10, void *a11)
{
  xdict = 0;
  v26 = 0;
  v24 = 0;
  v19 = rad_ensureClientEstablished();
  if (v19 || (v19 = FigXPCCreateBasicMessage(), v19) || (v19 = rad_fillInCreationDictionary(v26, a2, a3, a4, a5, a6, a7), v19) || (v19 = OUTLINED_FUNCTION_12_56(), v19) || (v19 = FigXPCRemoteClientSendSyncMessageCreatingReply(), v19))
  {
    v21 = v19;
  }

  else
  {
    uint64 = xpc_dictionary_get_uint64(xdict, *MEMORY[0x1E69615A0]);
    v21 = rad_createInternal(a1, uint64, a8, a9, a10, &v24);
    if (!v21)
    {
      v22 = v24;
      *(CMBaseObjectGetDerivedStorage() + 128) = 0;
      *a11 = v22;
    }
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v21;
}

uint64_t rad_handleServerMessage()
{
  OpCode = FigXPCMessageGetOpCode();
  if (OpCode)
  {
    return OpCode;
  }

  else
  {
    return 4294951138;
  }
}

uint64_t rad_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    goto LABEL_8;
  }

  v1 = DerivedStorage;
  *DerivedStorage = 1;
  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(v1 + 120);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = FigXPCRemoteClientDisassociateObject();
  if (v4)
  {
    v5 = v4;
    goto LABEL_11;
  }

  if (*(v1 + 1))
  {
LABEL_8:
    v5 = 0;
  }

  else
  {
    v6 = FigXPCCreateBasicMessage();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      v5 = FigXPCRemoteClientSendSyncMessage();
    }
  }

LABEL_11:
  FigXPCRelease();
  return v5;
}

void rad_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  rad_invalidate();
  v1 = *(DerivedStorage + 128);
  if (v1)
  {

    CFRelease(v1);
  }
}

uint64_t rad_copyProperty(uint64_t a1)
{
  v4 = 0;
  ObjectID = rad_getObjectID(a1, &v4);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_9_60();
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  v2 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t rad_setProperty(uint64_t a1)
{
  v4 = 0;
  ObjectID = rad_getObjectID(a1, &v4);
  if (!ObjectID)
  {
    OUTLINED_FUNCTION_9_60();
    ObjectID = FigXPCSendStdSetPropertyMessage();
  }

  v2 = ObjectID;
  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t rad_start(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_44(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_7_79();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_64();
    }
  }

  FigXPCRelease();
  return v8;
}

uint64_t rad_pause(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_44(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_7_79();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_64();
    }
  }

  FigXPCRelease();
  return v8;
}

uint64_t rad_stop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_44(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_7_79();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_64();
    }
  }

  FigXPCRelease();
  return v8;
}

uint64_t rad_loadMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OUTLINED_FUNCTION_13_44(a1, a2, a3, a4, a5, a6, a7, a8, v11, v12))
  {
    OUTLINED_FUNCTION_7_79();
  }

  else
  {
    OUTLINED_FUNCTION_5_44();
    v9 = FigXPCCreateBasicMessage();
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      FigXPCRemoteClientSendSyncMessage();
      OUTLINED_FUNCTION_8_64();
    }
  }

  FigXPCRelease();
  return v8;
}

uint64_t __rad_ensureClientEstablished_block_invoke_cold_1(uint64_t a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t rad_getObjectID_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t rad_getObjectID_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigCPEIsSupportedFormatDescription(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      dispatch_once_f(&qword_1ED4CB738, &_MergedGlobals_108, v10);
    }

    v2 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v11 = OUTLINED_FUNCTION_1_160(v2, &qword_1ED4CB740);
      dispatch_once_f(v11, v12, v13);
    }

    v3 = qword_1ED4CB740;
    Count = CFDictionaryGetCount(qword_1ED4CB740);
    if (Count < 1)
    {
      v6 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_63_12();
      v6 = malloc_type_calloc(Count, 8uLL, v5);
      CFDictionaryGetKeysAndValues(v3, 0, v6);
    }

    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      dispatch_once_f(&qword_1ED4CB738, &_MergedGlobals_108, v14);
    }

    FigSimpleMutexUnlock();
    if (Count < 1)
    {
LABEL_16:
      v1 = 0;
    }

    else
    {
      v7 = 0;
      while (1)
      {
        v8 = *v6[v7];
        if (v8)
        {
          if (v8(v1))
          {
            break;
          }
        }

        if (Count == ++v7)
        {
          goto LABEL_16;
        }
      }

      v1 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  free(v6);
  return v1;
}

uint64_t FigCPEProtectorCreateForScheme(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  result = 4294955146;
  if (a2 && a4)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      dispatch_once_f(&qword_1ED4CB738, &_MergedGlobals_108, v12);
    }

    v9 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v13 = OUTLINED_FUNCTION_1_160(v9, &qword_1ED4CB740);
      dispatch_once_f(v13, v14, v15);
    }

    Value = CFDictionaryGetValue(qword_1ED4CB740, a2);
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      dispatch_once_f(&qword_1ED4CB738, &_MergedGlobals_108, v16);
    }

    FigSimpleMutexUnlock();
    if (Value && (v11 = Value[1]) != 0)
    {

      return v11(a1, a3, a4);
    }

    else
    {
      return 4294955141;
    }
  }

  return result;
}

uint64_t FigCPEProtectorCreateForFormatReader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  cf = 0;
  v41 = 0;
  theArray = 0;
  v5 = 4294955146;
  if (a2 && a4)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_7_80(v27, v28, v29);
    }

    v10 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v30 = OUTLINED_FUNCTION_1_160(v10, &qword_1ED4CB740);
      dispatch_once_f(v30, v31, v32);
    }

    v11 = qword_1ED4CB740;
    Count = CFDictionaryGetCount(qword_1ED4CB740);
    if (Count < 1)
    {
      v4 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_63_12();
      v4 = malloc_type_calloc(Count, 8uLL, v13);
      CFDictionaryGetKeysAndValues(v11, 0, v4);
    }

    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_7_80(v33, v34, v35);
    }

    FigSimpleMutexUnlock();
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v14)
    {
      goto LABEL_47;
    }

    v15 = v14(a2, &v41);
    if (v15)
    {
LABEL_58:
      v5 = v15;
    }

    else
    {
      if (v41 >= 1)
      {
        v16 = 0;
        v37 = *MEMORY[0x1E695E480];
        while (1)
        {
          v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v17)
          {
            break;
          }

          v15 = v17(a2, v16, &cf, 0, 0);
          if (v15)
          {
            goto LABEL_58;
          }

          FigBaseObject = FigTrackReaderGetFigBaseObject(cf);
          v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v19)
          {
            break;
          }

          v15 = v19(FigBaseObject, @"TrackFormatDescriptionArray", v37, &theArray);
          if (v15)
          {
            goto LABEL_58;
          }

          if (theArray)
          {
            v36 = v16;
            v38 = CFArrayGetCount(theArray);
            if (v38 < 1)
            {
              v21 = 0;
              LODWORD(v23) = 0;
            }

            else
            {
              v20 = 0;
              v21 = 0;
              do
              {
                if (Count >= 1)
                {
                  v22 = 0;
                  while (1)
                  {
                    v23 = *v4[v22];
                    if (v23)
                    {
                      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v20);
                      if (v23(ValueAtIndex))
                      {
                        v25 = *(v4[v22] + 3);
                        if (!v25)
                        {
                          v5 = 4294955141;
                          goto LABEL_48;
                        }

                        v21 = v25(a1, a2, a3, a4);
                        LODWORD(v23) = v21 == 0;
                      }

                      else
                      {
                        LODWORD(v23) = 0;
                      }
                    }

                    if (++v22 >= Count || v23)
                    {
                      goto LABEL_34;
                    }
                  }
                }

                LODWORD(v23) = 0;
LABEL_34:
                ++v20;
              }

              while (v20 < v38 && !v23);
            }

            if (theArray)
            {
              CFRelease(theArray);
              theArray = 0;
            }

            v16 = v36;
          }

          else
          {
            v21 = 0;
            LODWORD(v23) = 0;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          if (++v16 >= v41 || v23)
          {
            goto LABEL_54;
          }
        }

LABEL_47:
        v5 = 4294954514;
        goto LABEL_48;
      }

      v21 = 0;
      LOBYTE(v23) = 0;
LABEL_54:
      if ((v21 != 0) | v23 & 1)
      {
        v5 = v21;
      }

      else
      {
        v5 = 4294955131;
      }
    }
  }

LABEL_48:
  free(v4);
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v5;
}

uint64_t FigCPESetSessionRecordStorageURLForAppIdentifierInternal(const void *a1, const void *a2)
{
  if (qword_1ED4CB750 != -1)
  {
    OUTLINED_FUNCTION_4_121(&qword_1ED4CB750);
  }

  result = 4294955146;
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(qword_1ED4CB760, a1);
    if (Value == a2)
    {
LABEL_16:
      FigSimpleMutexUnlock();
      return 0;
    }

    if (!Value)
    {
LABEL_15:
      CFDictionarySetValue(qword_1ED4CB760, a1, a2);
      goto LABEL_16;
    }

    v6 = FigCFURLCreateCacheKey();
    v7 = FigCFURLCreateCacheKey();
    v8 = v7;
    if (v6 && v7)
    {
      v9 = CFStringCompare(v6, v7, 0) != kCFCompareEqualTo;
    }

    else
    {
      v9 = 1;
      if (!v6)
      {
        goto LABEL_12;
      }
    }

    CFRelease(v6);
LABEL_12:
    if (v8)
    {
      CFRelease(v8);
    }

    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t FigCPECopySessionRecordStorageURLForAppIdentifier(const void *a1, void *a2)
{
  if (qword_1ED4CB750 != -1)
  {
    OUTLINED_FUNCTION_4_121(&qword_1ED4CB750);
  }

  result = 4294955146;
  if (a1 && a2)
  {
    FigSimpleMutexLock();
    Value = CFDictionaryGetValue(qword_1ED4CB760, a1);
    if (Value)
    {
      v6 = CFRetain(Value);
    }

    else
    {
      v6 = 0;
    }

    FigSimpleMutexUnlock();
    result = 0;
    *a2 = v6;
  }

  return result;
}

uint64_t FigCPECopySessionRecordsForAppIdentifierInternal(uint64_t a1, uint64_t a2)
{
  v3 = 4294955146;
  if (a1 && a2)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_6_92(v13, v14, v15);
    }

    v6 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v16 = OUTLINED_FUNCTION_1_160(v6, &qword_1ED4CB740);
      dispatch_once_f(v16, v17, v18);
    }

    Count = CFDictionaryGetCount(qword_1ED4CB740);
    if (Count < 1)
    {
      v2 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_63_12();
      v9 = malloc_type_calloc(Count, 8uLL, v8);
      OUTLINED_FUNCTION_5_104(v9);
    }

    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_6_92(v19, v20, v21);
    }

    FigSimpleMutexUnlock();
    if (Count < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v10 = v2;
      do
      {
        v11 = *(*v10 + 48);
        if (v11)
        {
          v3 = v11(a1, a2);
          if (!v3)
          {
            break;
          }
        }

        v10 += 8;
        --Count;
      }

      while (Count);
    }

    free(v2);
  }

  return v3;
}

uint64_t FigCPERemoveSessionRecordsForAppIdentifierInternal(uint64_t a1, uint64_t a2)
{
  v3 = 4294955146;
  if (a1 && a2)
  {
    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_6_92(v13, v14, v15);
    }

    v6 = FigSimpleMutexLock();
    if (qword_1ED4CB748 != -1)
    {
      v16 = OUTLINED_FUNCTION_1_160(v6, &qword_1ED4CB740);
      dispatch_once_f(v16, v17, v18);
    }

    Count = CFDictionaryGetCount(qword_1ED4CB740);
    if (Count < 1)
    {
      v2 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_63_12();
      v9 = malloc_type_calloc(Count, 8uLL, v8);
      OUTLINED_FUNCTION_5_104(v9);
    }

    if (qword_1ED4CB738 != -1)
    {
      OUTLINED_FUNCTION_0_168();
      OUTLINED_FUNCTION_6_92(v19, v20, v21);
    }

    FigSimpleMutexUnlock();
    if (Count < 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = 0;
      v10 = v2;
      do
      {
        v11 = *(*v10 + 56);
        if (v11)
        {
          v3 = v11(a1, a2);
          if (!v3)
          {
            break;
          }
        }

        v10 += 8;
        --Count;
      }

      while (Count);
    }

    free(v2);
  }

  return v3;
}

uint64_t FigExportSettings_CopyEncoderIDForProfile(CMVideoCodecType a1, const void *a2, const void **a3)
{
  cf = 0;
  listOfVideoEncodersOut = 0;
  v5 = VTCopyVideoEncoderList(0, &listOfVideoEncodersOut);
  if (v5)
  {
    Mutable = 0;
  }

  else
  {
    v26 = a3;
    v6 = 0;
    Mutable = 0;
    v8 = *MEMORY[0x1E6984240];
    v9 = *MEMORY[0x1E695E480];
    v10 = *MEMORY[0x1E6984280];
    key = *MEMORY[0x1E69837D0];
    v28 = *MEMORY[0x1E6983FD0];
    while (1)
    {
      Count = listOfVideoEncodersOut;
      if (listOfVideoEncodersOut)
      {
        Count = CFArrayGetCount(listOfVideoEncodersOut);
      }

      if (v6 >= Count)
      {
        break;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(listOfVideoEncodersOut, v6);
      if (FigCFDictionaryGetInt32IfPresent())
      {
        v13 = a1 == 0;
      }

      else
      {
        v13 = 0;
      }

      if (v13)
      {
        v14 = CFDictionaryGetValue(ValueAtIndex, v8);
        if (v14)
        {
          v15 = v14;
          v16 = CFGetTypeID(v14);
          if (v16 == CFStringGetTypeID())
          {
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            Mutable = CFDictionaryCreateMutable(v9, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            CFDictionarySetValue(Mutable, v10, v15);
            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            if (!VTCopySupportedPropertyDictionaryForEncoder(1920, 1080, a1, Mutable, 0, &cf))
            {
              if (cf)
              {
                v17 = CFGetTypeID(cf);
                if (v17 == CFDictionaryGetTypeID())
                {
                  v18 = CFDictionaryGetValue(cf, key);
                  if (v18)
                  {
                    v19 = v18;
                    v29 = v5;
                    v20 = CFGetTypeID(v18);
                    if (v20 == CFDictionaryGetTypeID() && (v21 = CFDictionaryGetValue(v19, v28)) != 0 && (v22 = v21, v23 = CFGetTypeID(v21), v23 == CFArrayGetTypeID()))
                    {
                      v33.length = CFArrayGetCount(v22);
                      v33.location = 0;
                      v5 = v29;
                      if (CFArrayContainsValue(v22, v33, a2))
                      {
                        v24 = *v26;
                        *v26 = v15;
                        CFRetain(v15);
                        if (v24)
                        {
                          CFRelease(v24);
                        }

                        v5 = v29;
                        break;
                      }
                    }

                    else
                    {
                      v5 = v29;
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v6;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (listOfVideoEncodersOut)
  {
    CFRelease(listOfVideoEncodersOut);
  }

  return v5;
}

uint64_t FigMetricItemVariantChangeStartEventDeserializeAndCopy(void *a1, void *a2)
{
  v23 = *MEMORY[0x1E6960C70];
  v24 = *(MEMORY[0x1E6960C70] + 16);
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  cf = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  if (a1 && a2)
  {
    CMTime = FigXPCMessageGetCMTime();
    if (!CMTime)
    {
      CMTime = FigXPCMessageCopyCFDate();
      if (!CMTime)
      {
        CMTime = FigXPCMessageCopyCFString();
        if (!CMTime)
        {
          CMTime = FigXPCMessageCopyCFArray();
          if (!CMTime)
          {
            CMTime = FigXPCMessageCopyCFString();
            if (!CMTime)
            {
              CMTime = FigXPCMessageCopyCFURL();
              if (!CMTime)
              {
                CMTime = FigXPCMessageCopyCFString();
                if (!CMTime)
                {
                  CMTime = FigXPCMessageCopyCFURL();
                  if (!CMTime)
                  {
                    CMTime = FigXPCMessageCopyCFString();
                    if (!CMTime)
                    {
                      CMTime = FigXPCMessageCopyCFURL();
                      if (!CMTime)
                      {
                        value = xpc_dictionary_get_value(a1, "FromVariant");
                        CMTime = FigAlternateCreateWithXPCObject(value, 0, &v20);
                        if (!CMTime)
                        {
                          v6 = xpc_dictionary_get_value(a1, "ToVariant");
                          CMTime = FigAlternateCreateWithXPCObject(v6, 0, &v19);
                          if (!CMTime)
                          {
                            AllocatorForMedia = FigGetAllocatorForMedia();
                            v10 = v23;
                            v11 = v24;
                            CMTime = FigMetricItemVariantChangeStartEventCreateInternal(AllocatorForMedia, &v10, v22, v21, v19, v20, cf, v17, v14, v15, v12, v13, v18, a2);
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
    }
  }

  else
  {
    CMTime = FigSignalErrorAtGM();
  }

  v8 = CMTime;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  return v8;
}

uint64_t meivcs_serialize(uint64_t a1, void *a2)
{
  v24 = 0;
  value = 0;
  if (!a1 || !a2)
  {
    v6 = FigSignalErrorAtGM();
LABEL_46:
    v20 = v6;
    v14 = 0;
    goto LABEL_41;
  }

  v4 = *(*(CMBaseObjectGetVTable() + 80) + 8);
  if (v4)
  {
    v5 = v4(a1);
  }

  else
  {
    v5 = 0;
  }

  v6 = FigAlternateCopyAsXPCObject(v5, &value);
  if (v6)
  {
    goto LABEL_46;
  }

  v7 = *(*(CMBaseObjectGetVTable() + 80) + 16);
  v8 = v7 ? v7(a1) : 0;
  v6 = FigAlternateCopyAsXPCObject(v8, &v24);
  if (v6)
  {
    goto LABEL_46;
  }

  v9 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  v10 = v9 ? v9(a1) : -12782;
  xpc_dictionary_set_int64(a2, "EventID", v10);
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v11)
  {
    v11(&v22, a1);
  }

  else
  {
    v22 = *MEMORY[0x1E6960C70];
    v23 = *(MEMORY[0x1E6960C70] + 16);
  }

  v6 = FigXPCMessageSetCMTime();
  if (v6)
  {
    goto LABEL_46;
  }

  v12 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v12)
  {
    v12(a1);
  }

  v6 = FigXPCMessageSetCFDate();
  if (v6)
  {
    goto LABEL_46;
  }

  v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v13)
  {
    v14 = v13(a1);
  }

  else
  {
    v14 = 0;
  }

  v15 = FigXPCMessageSetCFString();
  if (v15)
  {
    goto LABEL_44;
  }

  v16 = *(*(CMBaseObjectGetVTable() + 80) + 24);
  if (v16)
  {
    v16(a1);
  }

  v15 = FigXPCMessageSetCFArray();
  if (v15)
  {
    goto LABEL_44;
  }

  v17 = *(*(CMBaseObjectGetVTable() + 80) + 32);
  if (v17)
  {
    v17(a1);
  }

  v15 = FigXPCMessageSetCFString();
  if (v15)
  {
    goto LABEL_44;
  }

  v15 = FigXPCMessageSetCFURL();
  if (v15)
  {
    goto LABEL_44;
  }

  v18 = *(*(CMBaseObjectGetVTable() + 80) + 40);
  if (v18)
  {
    v18(a1);
  }

  v15 = FigXPCMessageSetCFString();
  if (v15)
  {
    goto LABEL_44;
  }

  v15 = FigXPCMessageSetCFURL();
  if (v15)
  {
    goto LABEL_44;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 80) + 48);
  if (v19)
  {
    v19(a1);
  }

  v15 = FigXPCMessageSetCFString();
  if (v15)
  {
LABEL_44:
    v20 = v15;
  }

  else
  {
    v20 = FigXPCMessageSetCFURL();
    if (!v20)
    {
      xpc_dictionary_set_value(a2, "ToVariant", value);
      xpc_dictionary_set_value(a2, "FromVariant", v24);
    }
  }

LABEL_41:
  FigXPCRelease();
  FigXPCRelease();
  if (v14)
  {
    CFRelease(v14);
  }

  return v20;
}

uint64_t FigMetricItemVariantChangeStartEventCreateInternal_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t meivcs_setSessionID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t meivcs_setMediaTime_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t manifoldRemote_manifoldCreateGuts(uint64_t a1, unsigned int a2, OpaqueCMBlockBuffer *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, void *a9)
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __mr_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E7492A30;
  block[4] = &v29;
  if (qword_1ED4CB790 != -1)
  {
    dispatch_once(&qword_1ED4CB790, block);
  }

  v16 = *(v30 + 6);
  _Block_object_dispose(&v29, 8);
  if (v16)
  {
    goto LABEL_37;
  }

  ServerPID = FigXPCCreateBasicMessage();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  xpc_dictionary_set_uint64(0, "manifoldType", a2);
  ServerPID = FigXPCRemoteClientCopyMemoryRecipient();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  ServerPID = FigXPCRemoteClientCopyMemoryOrigin();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  if (a3 && CMBlockBufferIsEmpty(a3))
  {
    v18 = FigXPCMessageSetCFBoolean();
  }

  else
  {
    v18 = FigXPCMessageSetBlockBufferUsingMemoryOrigin();
  }

  v16 = v18;
  if (v18)
  {
    goto LABEL_37;
  }

  if (CMGetAttachment(a3, @"FMFD_BufferDecryptor", 0))
  {
    ServerPID = FigXPCRemoteClientGetServerPID();
    if (ServerPID)
    {
      goto LABEL_42;
    }

    ServerPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID();
    if (ServerPID)
    {
      goto LABEL_42;
    }

    xpc_dictionary_set_uint64(0, "cryptorObjectID", 0);
  }

  if (a4)
  {
    xpc_dictionary_set_BOOL(0, "installNewTrackCallback", 1);
  }

  if (a6)
  {
    xpc_dictionary_set_BOOL(0, "installAllNewTracksReadyCallback", 1);
  }

  if (a5)
  {
    xpc_dictionary_set_BOOL(0, "installErrorCallback", 1);
  }

  xpc_dictionary_set_uint64(0, "movieManifoldStreamFlags", a8);
  ServerPID = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (ServerPID)
  {
    goto LABEL_42;
  }

  uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
  if (!uint64)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ServerPID = FigSignalErrorAtGM();
LABEL_42:
    v16 = ServerPID;
LABEL_37:
    v24 = 0;
    goto LABEL_38;
  }

  v20 = uint64;
  block[0] = 0;
  FigManifoldGetClassID();
  v16 = CMDerivedObjectCreate();
  v21 = block[0];
  if (v16)
  {
    goto LABEL_45;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *DerivedStorage = v20;
  DerivedStorage[9] = 0;
  DerivedStorage[11] = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
  DerivedStorage[2] = Mutable;
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    v16 = FigSignalErrorAtGM();
    v21 = block[0];
LABEL_45:
    if (v21)
    {
      CFRelease(v21);
    }

    v24 = 0;
    if (v16)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  v24 = block[0];
LABEL_27:
  v25 = FigXPCRemoteClientAssociateObject();
  if (!v25)
  {
    v26 = CMBaseObjectGetDerivedStorage();
    if (a7)
    {
      v26[6] = a7;
    }

    if (a4)
    {
      v26[3] = a4;
    }

    if (a6)
    {
      v26[4] = a6;
    }

    if (a5)
    {
      v26[5] = a5;
    }

    v16 = 0;
    *a9 = v24;
    goto LABEL_37;
  }

  v16 = v25;
LABEL_38:
  if (v24)
  {
    CFRelease(v24);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

uint64_t manifoldRemote_invalidate()
{
  if (*(CMBaseObjectGetDerivedStorage() + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    v1 = FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v0 = FigXPCCreateBasicMessage();
    if (v0)
    {
      v1 = v0;
    }

    else
    {
      v1 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  return v1;
}

uint64_t manifoldRemote_finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!FigXPCRemoteClientDisassociateObject() && !*(DerivedStorage + 8) && !FigXPCCreateBasicMessage())
  {
    FigXPCRemoteClientSendAsyncMessage();
  }

  v1 = *(DerivedStorage + 16);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 16) = 0;
  }

  v2 = *(DerivedStorage + 56);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 56) = 0;
  }

  v3 = *(DerivedStorage + 64);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 64) = 0;
  }

  v4 = *(DerivedStorage + 72);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 72) = 0;
  }

  v5 = *(DerivedStorage + 80);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 80) = 0;
  }

  v6 = *(DerivedStorage + 88);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 88) = 0;
  }

  v7 = *(DerivedStorage + 96);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 96) = 0;
  }

  v8 = *(DerivedStorage + 104);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 104) = 0;
  }

  v9 = *(DerivedStorage + 112);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 112) = 0;
  }

  v10 = *(DerivedStorage + 120);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 120) = 0;
  }

  v11 = *(DerivedStorage + 128);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 128) = 0;
  }

  return FigXPCRelease();
}

uint64_t manifoldRemote_injectData(const void *a1, int64_t a2, unsigned int a3, void *a4)
{
  v30 = 0;
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  value = 0;
  v28 = 0;
  if (a1)
  {
    CFRetain(a1);
  }

  v26 = 0;
  cf = 0;
  if (*(DerivedStorage + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    ServerPID = FigSignalErrorAtGM();
    goto LABEL_48;
  }

  ServerPID = FigXPCCreateBasicMessage();
  if (ServerPID)
  {
    goto LABEL_48;
  }

  xpc_dictionary_set_int64(xdict, "dataStartReference", a2);
  xpc_dictionary_set_uint64(xdict, "injectFlags", a3);
  v10 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
  v11 = CMGetAttachment(a4, @"FMFD_BufferAudioDecryptor", 0);
  if (!v10)
  {
    goto LABEL_37;
  }

  v12 = v11;
  FigBasicAESCPECryptorGetClassID();
  if (!CMBaseObjectIsMemberOfClass())
  {
    ServerPID = FigXPCRemoteClientGetServerPID();
    if (!ServerPID)
    {
      ServerPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID();
      if (!ServerPID)
      {
        xpc_dictionary_set_uint64(xdict, "cryptorObjectID", value);
        if (!v12)
        {
          goto LABEL_37;
        }

        ServerPID = FigXPCRemoteClientGetServerPID();
        if (!ServerPID)
        {
          ServerPID = FigCPECryptorServerGetIDForCryptorByAssociatingWithClientPID();
          if (!ServerPID)
          {
            xpc_dictionary_set_uint64(xdict, "audioCryptorObjectID", value);
            goto LABEL_37;
          }
        }
      }
    }

    goto LABEL_48;
  }

  xpc_dictionary_set_BOOL(xdict, "UseAESCryptor", 1);
  if (FigCFEqual())
  {
    xpc_dictionary_set_BOOL(xdict, "UseExistingAESCryptor", 1);
  }

  else
  {
    v13 = *(DerivedStorage + 96);
    *(DerivedStorage + 96) = v10;
    CFRetain(v10);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = *(DerivedStorage + 104);
    if (v14)
    {
      CFRelease(v14);
      *(DerivedStorage + 104) = 0;
    }

    v15 = *(DerivedStorage + 112);
    if (v15)
    {
      CFRelease(v15);
      *(DerivedStorage + 112) = 0;
    }
  }

  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v16)
  {
    goto LABEL_49;
  }

  v17 = *MEMORY[0x1E695E480];
  ServerPID = v16(v10, *MEMORY[0x1E69610D8], *MEMORY[0x1E695E480], &cf);
  if (ServerPID)
  {
    goto LABEL_48;
  }

  if (!FigCFEqual())
  {
    ServerPID = FigXPCMessageSetCFData();
    if (ServerPID)
    {
      goto LABEL_48;
    }

    v18 = *(DerivedStorage + 104);
    v19 = cf;
    *(DerivedStorage + 104) = cf;
    if (v19)
    {
      CFRetain(v19);
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v20)
  {
LABEL_49:
    v24 = 4294954514;
    goto LABEL_50;
  }

  ServerPID = v20(v10, *MEMORY[0x1E69610C8], v17, &v26);
  if (ServerPID)
  {
    goto LABEL_48;
  }

  if (FigCFEqual())
  {
    goto LABEL_37;
  }

  ServerPID = FigXPCMessageSetCFData();
  if (ServerPID)
  {
LABEL_48:
    v24 = ServerPID;
    goto LABEL_50;
  }

  v21 = *(DerivedStorage + 112);
  v22 = v26;
  *(DerivedStorage + 112) = v26;
  if (v22)
  {
    CFRetain(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

LABEL_37:
  if (CMGetAttachment(a4, @"FBPAKey_TimedData", 0))
  {
    xpc_dictionary_set_BOOL(xdict, "timedMetadata", 1);
  }

  if (a4 && CMBlockBufferIsEmpty(a4))
  {
    v23 = FigXPCMessageSetCFBoolean();
  }

  else
  {
    v23 = FigXPCMessageSetBlockBufferUsingMemoryOrigin();
  }

  v24 = v23;
  if (!v23)
  {
    ServerPID = FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage();
    if (!ServerPID)
    {
      ServerPID = FigXPCRemoteClientSendSyncMessageCreatingReply();
      if (!ServerPID)
      {
        ServerPID = FigMemoryOriginUpdateRecipientStateFromXPCMessage();
        if (!ServerPID)
        {
          ServerPID = manifoldRemote_processPendingCallbacks(a1, v30);
        }
      }
    }

    goto LABEL_48;
  }

LABEL_50:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (a1)
  {
    CFRelease(a1);
  }

  FigXPCRelease();
  FigXPCRelease();
  return v24;
}

uint64_t manifoldRemote_noteStreamEnd()
{
  if (*(OUTLINED_FUNCTION_8_65() + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v0 = FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v0 = FigXPCCreateBasicMessage();
    if (!v0)
    {
      FigXPCMessageSetOSStatus();
      v0 = OUTLINED_FUNCTION_9_9();
      if (!v0)
      {
        v0 = OUTLINED_FUNCTION_7_81(0, v1, v2, v3, v4, v5, v6, v7, v10);
      }
    }
  }

  v8 = v0;
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t manifoldRemote_copyCurrentFormatDescriptionForTrack()
{
  if (*(OUTLINED_FUNCTION_8_65() + 8))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v0 = FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v0 = FigXPCCreateBasicMessage();
    if (!v0)
    {
      FigXPCMessageSetInt32();
      v0 = OUTLINED_FUNCTION_9_9();
      if (!v0)
      {
        FigGetAllocatorForMedia();
        v0 = FigXPCMessageCopyFormatDescription2();
        if (!v0)
        {
          v0 = OUTLINED_FUNCTION_7_81(0, v1, v2, v3, v4, v5, v6, v7, v10);
        }
      }
    }
  }

  v8 = v0;
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t manifoldRemote_installCallbacksForTrack(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  v22 = 0;
  xdict = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v20 = 0;
  v21 = 0;
  v19 = 0;
  if (*(DerivedStorage + 8))
  {
    fig_log_get_emitter();
    v10 = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  v9 = DerivedStorage;
  v10 = FigXPCCreateBasicMessage();
  if (v10)
  {
LABEL_21:
    v16 = v10;
    goto LABEL_18;
  }

  FigXPCMessageSetInt32();
  if (a3)
  {
    if (*a3)
    {
      xpc_dictionary_set_BOOL(xdict, "installFormatDescriptionOrDecryptorChangedCallback", 1);
      v19 = *a3;
    }

    if (a3[1])
    {
      xpc_dictionary_set_BOOL(xdict, "installPushSampleBufferCallback", 1);
      v20 = a3[1];
    }

    v12 = a3[2];
    v11 = a3 + 2;
    if (v12)
    {
      xpc_dictionary_set_BOOL(xdict, "installTrackEndedCallback", 1);
      v21 = *v11;
    }
  }

  __copy_constructor_8_8_pa0_6124_0_pa0_43336_8_pa0_40812_16(v18, &v19);
  if (qword_1ED4CB798 != -1)
  {
    dispatch_once(&qword_1ED4CB798, &__block_literal_global_86);
  }

  Instance = _CFRuntimeCreateInstance();
  v14 = Instance;
  if (!Instance)
  {
    fig_log_get_emitter();
    v10 = FigSignalErrorAtGM();
    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  __copy_constructor_8_8_pa0_6124_0_pa0_43336_8_pa0_40812_16((Instance + 16), v18);
  v14[5] = a4;
LABEL_14:
  CFDictionarySetValue(*(v9 + 16), a2, v14);
  v15 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (!v15)
  {
    v15 = manifoldRemote_processPendingCallbacks(a1, v22);
  }

  v16 = v15;
  if (v14)
  {
    CFRelease(v14);
  }

LABEL_18:
  FigXPCRelease();
  FigXPCRelease();
  return v16;
}

uint64_t manifoldRemote_flush()
{
  if (*(OUTLINED_FUNCTION_8_65() + 8))
  {
    fig_log_get_emitter();
    v0 = FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v0 = FigXPCCreateBasicMessage();
    if (!v0)
    {
      v0 = OUTLINED_FUNCTION_9_9();
      if (!v0)
      {
        v0 = OUTLINED_FUNCTION_7_81(0, v1, v2, v3, v4, v5, v6, v7, v10);
      }
    }
  }

  v8 = v0;
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t manifoldRemote_copyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (*(CMBaseObjectGetDerivedStorage() + 8) || !a3 || !a5)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    v8 = FigSignalErrorAtGM();
LABEL_12:
    v10 = v8;
    goto LABEL_10;
  }

  v8 = FigXPCCreateBasicMessage();
  if (v8)
  {
    goto LABEL_12;
  }

  FigXPCMessageSetInt32();
  v8 = FigXPCMessageSetCFString();
  if (v8)
  {
    goto LABEL_12;
  }

  v8 = FigXPCRemoteClientSendSyncMessageCreatingReply();
  if (v8)
  {
    goto LABEL_12;
  }

  v9 = FigXPCMessageCopyCFObject();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = manifoldRemote_processPendingCallbacks(a1, 0);
    if (!v10)
    {
      *a5 = 0;
    }
  }

LABEL_10:
  FigXPCRelease();
  FigXPCRelease();
  return v10;
}

uint64_t manifoldRemote_reannounceUnregisteredTracks()
{
  if (*(OUTLINED_FUNCTION_8_65() + 8))
  {
    fig_log_get_emitter();
    v0 = FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_2_29();
    v0 = FigXPCCreateBasicMessage();
    if (!v0)
    {
      v0 = OUTLINED_FUNCTION_9_9();
      if (!v0)
      {
        v0 = OUTLINED_FUNCTION_7_81(0, v1, v2, v3, v4, v5, v6, v7, v10);
      }
    }
  }

  v8 = v0;
  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t manifoldRemote_processPendingCallbacks(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "pendingCallbacks");
  if (!value)
  {
    return 0;
  }

  v4 = value;
  count = xpc_array_get_count(value);
  if (!count)
  {
    return 0;
  }

  v6 = count;
  v7 = 0;
  v58 = *MEMORY[0x1E695E480];
  v57 = *MEMORY[0x1E69610D8];
  v59 = count;
  while (2)
  {
    v8 = xpc_array_get_value(v4, v7);
    if (v8)
    {
      v9 = v8;
      switch(xpc_dictionary_get_uint64(v8, "callbackType"))
      {
        case 0u:
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          v11 = *(DerivedStorage + 32);
          if (v11)
          {
            v11(a1, *(DerivedStorage + 48));
          }

          goto LABEL_35;
        case 1u:
          v34 = CMBaseObjectGetDerivedStorage();
          Int32 = FigXPCMessageGetInt32();
          v36 = OUTLINED_FUNCTION_6_93();
          v37 = *(v34 + 24);
          if (v37)
          {
            v38 = v37(a1, *(v34 + 48), Int32, v36);
            if (v38)
            {
              return v38;
            }
          }

          goto LABEL_35;
        case 2u:
          v22 = CMBaseObjectGetDerivedStorage();
          v62 = 0;
          v23 = OUTLINED_FUNCTION_6_93();
          OSStatus = FigXPCMessageGetOSStatus();
          v25 = FigXPCMessageCopyCFDictionary();
          if (v25)
          {
            goto LABEL_17;
          }

          v26 = *(v22 + 40);
          if (v26)
          {
            v25 = v26(a1, v23, *(v22 + 48), OSStatus, v62);
LABEL_17:
            v20 = v25;
          }

          else
          {
            v20 = 0;
          }

          v21 = v62;
          if (v62)
          {
            goto LABEL_33;
          }

          goto LABEL_34;
        case 3u:
          v27 = CMBaseObjectGetDerivedStorage();
          v61 = 0;
          v62 = 0;
          *bytes = 0;
          v28 = OUTLINED_FUNCTION_6_93();
          v29 = CFDictionaryGetValue(*(v27 + 16), v28);
          if (!v29)
          {
            goto LABEL_61;
          }

          v30 = v29;
          FigGetAllocatorForMedia();
          v31 = FigXPCMessageCopyFormatDescription2();
          if (v31)
          {
            goto LABEL_62;
          }

          uint64 = xpc_dictionary_get_uint64(v9, "cryptorObjectID");
          v33 = xpc_dictionary_get_BOOL(v9, "useDummyAESCryptor");
          if (uint64)
          {
            v31 = FigCPECryptorServerCopyCryptorForID();
            if (v31)
            {
              goto LABEL_62;
            }
          }

          else if (v33)
          {
            v45 = (v27 + 128);
            if (!*(v27 + 128))
            {
              v31 = FigCPEProtectorCreateForScheme(v58, @"com.apple.basicAES", 0, v27 + 128);
              if (v31)
              {
                goto LABEL_62;
              }
            }

            v48 = *(v27 + 120);
            v47 = (v27 + 120);
            v46 = v48;
            if (v48)
            {
              goto LABEL_41;
            }

            v50 = *v45;
            v51 = *(*(CMBaseObjectGetVTable() + 16) + 104);
            if (!v51)
            {
              goto LABEL_59;
            }

            v31 = v51(v50, v58, 1, 0, v47);
            if (v31)
            {
              goto LABEL_62;
            }

            v52 = CFDataCreate(v58, bytes, 1);
            *bytes = v52;
            if (!v52)
            {
LABEL_61:
              fig_log_get_emitter();
              OUTLINED_FUNCTION_6_3();
              v31 = FigSignalErrorAtGM();
LABEL_62:
              v20 = v31;
              goto LABEL_46;
            }

            v53 = v52;
            v54 = *v47;
            v55 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v55)
            {
LABEL_59:
              v20 = 4294954514;
              goto LABEL_46;
            }

            v31 = v55(v54, v57, v53);
            if (v31)
            {
              goto LABEL_62;
            }

            v46 = *v47;
            if (*v47)
            {
LABEL_41:
              v46 = CFRetain(v46);
            }

            v61 = v46;
          }

          v49 = v30[2];
          if (v49)
          {
            v20 = v49(a1, v28, v30[5], v62, v61);
          }

          else
          {
            v20 = 0;
          }

LABEL_46:
          v6 = v59;
          if (*bytes)
          {
            CFRelease(*bytes);
          }

          if (v62)
          {
            CFRelease(v62);
          }

          v21 = v61;
          if (v61)
          {
LABEL_33:
            CFRelease(v21);
          }

LABEL_34:
          if (v20)
          {
            return v20;
          }

LABEL_35:
          if (v6 == ++v7)
          {
            return 0;
          }

          continue;
        case 4u:
          v12 = CMBaseObjectGetDerivedStorage();
          v62 = 0;
          v13 = OUTLINED_FUNCTION_6_93();
          v14 = CFDictionaryGetValue(*(v12 + 16), v13);
          if (!v14)
          {
            goto LABEL_63;
          }

          v15 = v14;
          if (!v14[3])
          {
            goto LABEL_35;
          }

          v16 = xpc_dictionary_get_uint64(v9, "pushSampleFlags");
          int64 = xpc_dictionary_get_int64(v9, "dataStartReference");
          FigGetAllocatorForMedia();
          v18 = FigXPCMessageCopyCMSampleBuffer();
          v19 = v62;
          if (v18)
          {
            v20 = v18;
          }

          else
          {
            v20 = (v15[3])(a1, v13, v15[5], v16, int64, v62);
            v19 = v62;
          }

          v6 = v59;
          if (!v19)
          {
            goto LABEL_34;
          }

          v21 = v19;
          goto LABEL_33;
        case 5u:
          v39 = CMBaseObjectGetDerivedStorage();
          v40 = OUTLINED_FUNCTION_6_93();
          v41 = CFDictionaryGetValue(*(v39 + 16), v40);
          if (v41)
          {
            v42 = v41;
            if (!v41[4])
            {
              goto LABEL_35;
            }

            v43 = FigXPCMessageGetOSStatus();
            v44 = (v42[4])(a1, v40, v42[5], v43);
          }

          else
          {
LABEL_63:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_6_3();
            v44 = FigSignalErrorAtGM();
          }

          v20 = v44;
          goto LABEL_34;
        default:
          return 4294951256;
      }
    }

    break;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_6_3();
  return FigSignalErrorAtGM();
}

uint64_t manifoldRemote_copyProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t manifoldRemote_setProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLRegionConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v15 = 0;
  value = 0;
  cf = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_24;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v15, &cf);
    if (v8)
    {
      goto LABEL_24;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLStyleCreate(v9, a1, a2, &value);
      if (!v8)
      {
        v10 = *(DerivedStorage + 136);
LABEL_12:
        CFArrayAppendValue(v10, value);
        goto LABEL_14;
      }

      goto LABEL_24;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v11 = CFGetAllocator(*a2);
      v8 = FigTTMLSetCreate(v11, a1, a2, &value);
      if (!v8)
      {
        v10 = *(DerivedStorage + 144);
        goto LABEL_12;
      }

LABEL_24:
      v12 = v8;
      goto LABEL_16;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_24;
  }

LABEL_14:
  v12 = 0;
  if (a3)
  {
    *a3 = value;
    value = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v12;
}

uint64_t FigTTMLRegionCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLRegionCreateDefault_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLRegionCopyID_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLRegion_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLCreateWithURL(uint64_t a1, const __CFURL *a2, const void *a3, const void *a4, const void *a5, NSObject *a6, int a7, const void *a8, const void *a9, void *a10)
{
  if (a2 && a10)
  {
    FigByteFlumeGetClassID();
    v17 = CMDerivedObjectCreate();
    if (v17)
    {
      return v17;
    }

    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v19 = FigByteFlumeBaseInitialize(a1, DerivedStorage);
    if (!v19)
    {
      v20 = FigCFHTTPCreateURLString(a2);
      *(DerivedStorage + 88) = v20;
      if (v20)
      {
        *(DerivedStorage + 144) = 0;
        *(DerivedStorage + 216) = 0;
        *(DerivedStorage + 152) = DerivedStorage + 144;
        *(DerivedStorage + 80) = CFRetain(a2);
        if (a5)
        {
          v21 = CFRetain(a5);
        }

        else
        {
          v21 = 0;
        }

        *(DerivedStorage + 96) = v21;
        if (a8)
        {
          v22 = CFRetain(a8);
        }

        else
        {
          v22 = 0;
        }

        *(DerivedStorage + 48) = v22;
        if (a3)
        {
          v23 = CFRetain(a3);
        }

        else
        {
          v23 = 0;
        }

        *(DerivedStorage + 104) = v23;
        if (a4)
        {
          v24 = CFRetain(a4);
        }

        else
        {
          v24 = 0;
        }

        *(DerivedStorage + 112) = v24;
        *(DerivedStorage + 128) = FigHTTPSchedulerRetain(a6);
        if (a9)
        {
          v25 = CFRetain(a9);
        }

        else
        {
          v25 = 0;
        }

        *(DerivedStorage + 240) = v25;
        *(DerivedStorage + 136) = a7;
        *(DerivedStorage + 120) = 0;
        FigCFDictionaryGetBooleanIfPresent();
        if (a9)
        {
          *(DerivedStorage + 201) = CFDictionaryGetValue(a9, @"FBFCreateOption_DisableNativeHTTPReads") == *MEMORY[0x1E695E4D0];
          Value = CFDictionaryGetValue(a9, @"FBFCreateOption_HTTPRequestOptions");
          v27 = Value;
          if (Value)
          {
            v28 = CFDictionaryGetValue(Value, @"FHRP_ClientBundleIdentifier");
            if (v28)
            {
              v28 = CFRetain(v28);
            }

            *(DerivedStorage + 208) = v28;
            v29 = CFDictionaryGetValue(v27, @"FHRP_ClientAuditToken");
            v27 = FigCFHTTPCopyClientProcessName(v29);
          }

          v30 = CFDictionaryGetValue(a9, @"FBFCreateOption_AlternativeConfigurationOptions");
        }

        else
        {
          v30 = 0;
          v27 = 0;
        }

        FigByteFlumeCreateReportingAgent(DerivedStorage, v30, *(DerivedStorage + 96), v27, *(DerivedStorage + 208), *(DerivedStorage + 290), 0);
        v31 = *(DerivedStorage + 32);
        if (v31)
        {
          v32 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v32)
          {
            v32(v31, 0x1F0B645B8, 0x1F0B3F2B8, 1, 0);
          }
        }

        if (v27)
        {
          CFRelease(v27);
        }

        v33 = 0;
        *a10 = 0;
        return v33;
      }

      fig_log_get_emitter();
      v19 = FigSignalErrorAtGM();
    }

    v33 = v19;
    CFRelease(0);
    return v33;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_20_0();

  return FigSignalErrorAtGM();
}

uint64_t FigByteFlumeCustomURLInvalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v1 = DerivedStorage;
    FigRetainProxyLockMutex();
    FigRetainProxyInvalidate();
    *(v1 + 216) = 3;
    v2 = *(v1 + 56);
    if (v2)
    {
      v3 = CFRetain(v2);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(v1 + 272);
    if (v4)
    {
      figByteFlumeCancelCustomURLRequest(v1, v4);
    }

    v5 = *(v1 + 144);
    if (v5)
    {
      do
      {
        v7 = v5[11];
        v6 = v5[12];
        v8 = v7 + 12;
        if (!v7)
        {
          v8 = (v1 + 152);
        }

        *v8 = v6;
        *v6 = v7;
        figByteFlumeCancelCustomURLRequest(v1, v5[8]);
        fbfcu_ReleaseReadRequest(v5);
        v5 = v7;
      }

      while (v7);
    }

    v10 = *(v1 + 248);
    v9 = *(v1 + 256);
    *(v1 + 248) = 0;
    FigByteFlumeBaseInvalidate(v1);
    FigRetainProxyUnlockMutex();
    if (v3)
    {
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v11)
      {
        v11(v3);
      }

      CFRelease(v3);
    }

    if (v10)
    {
      v10(v9, 0, 4294954364);
    }
  }

  return 0;
}

void FigByteFlumeCustomURLFinalize()
{
  FigByteFlumeCustomURLInvalidate();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 48);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 48) = 0;
  }

  v2 = *(DerivedStorage + 80);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 80) = 0;
  }

  v3 = *(DerivedStorage + 88);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 88) = 0;
  }

  v4 = *(DerivedStorage + 104);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 104) = 0;
  }

  v5 = *(DerivedStorage + 112);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 112) = 0;
  }

  v6 = *(DerivedStorage + 120);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 120) = 0;
  }

  FigHTTPSchedulerRelease(*(DerivedStorage + 128));
  v7 = *(DerivedStorage + 56);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 56) = 0;
  }

  v8 = *(DerivedStorage + 160);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 160) = 0;
  }

  v9 = *(DerivedStorage + 168);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 168) = 0;
  }

  v10 = *(DerivedStorage + 96);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 96) = 0;
  }

  v11 = *(DerivedStorage + 240);
  if (v11)
  {
    CFRelease(v11);
    *(DerivedStorage + 240) = 0;
  }

  v12 = *(DerivedStorage + 184);
  if (v12)
  {
    CFRelease(v12);
    *(DerivedStorage + 184) = 0;
  }

  v13 = *(DerivedStorage + 280);
  if (v13)
  {
    CFRelease(v13);
    *(DerivedStorage + 280) = 0;
  }

  v14 = *(DerivedStorage + 208);
  if (v14)
  {
    CFRelease(v14);
    *(DerivedStorage + 208) = 0;
  }

  v15 = *(DerivedStorage + 224);
  if (v15)
  {
    FigByteRateHistoryDispose(v15);
    *(DerivedStorage + 224) = 0;
  }

  v16 = *(DerivedStorage + 64);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(DerivedStorage + 72);
  if (v17)
  {
    CFRelease(v17);
  }

  FigByteFlumeBaseDispose(DerivedStorage);
}

uint64_t FigByteFlumeCustomURLCancel(uint64_t a1, uint64_t a2)
{
  FigByteFlumeGetFigBaseObject(a1);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    fig_log_get_emitter();
    v7 = FigSignalErrorAtGM();
LABEL_20:
    v6 = v7;
    goto LABEL_11;
  }

  v4 = *(DerivedStorage + 144);
  if (!v4)
  {
LABEL_5:
    v5 = 0;
    v6 = 4294954362;
    goto LABEL_14;
  }

  while (*(v4 + 64) != a2)
  {
    v4 = *(v4 + 88);
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  v7 = figByteFlumeCancelCustomURLRequest(DerivedStorage, a2);
  if (v7)
  {
    goto LABEL_20;
  }

  if (!*(v4 + 80))
  {
    OUTLINED_FUNCTION_1_161(*(v4 + 88));
    (*(v4 + 32))(*(v4 + 40), *(v4 + 48), *(v4 + 64), 0, 0, 1, 4294954364);
    fbfcu_ReleaseReadRequest(v4);
    v6 = 0;
LABEL_11:
    v5 = 0;
    v4 = 0;
    goto LABEL_14;
  }

  v8 = *(DerivedStorage + 56);
  if (v8)
  {
    v5 = CFRetain(v8);
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
  v4 = *(v4 + 72);
LABEL_14:
  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  if (v5)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v9)
    {
      v9(v5, v4);
    }

    CFRelease(v5);
  }

  return v6;
}

const void *FigByteFlumeCustomURLMatchesIdentifier(uint64_t a1, const void *a2)
{
  if (!a1 || (FigByteFlumeGetFigBaseObject(a1), (DerivedStorage = CMBaseObjectGetDerivedStorage()) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_20_0();
    FigSignalErrorAtGM();
    return 0;
  }

  v4 = DerivedStorage;
  v5 = *(DerivedStorage + 56);
  if (v5)
  {
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v6)
    {

      return v6(v5, a2);
    }

    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFDictionaryGetTypeID() || !*(v4 + 200))
  {
    return 0;
  }

  v9 = *(v4 + 192);
  v10 = *(v4 + 88);
  v11 = *(v4 + 136);
  v12 = *(v4 + 120);

  return FigCFHTTPMatchCacheHeaders(a2, v9, v10, v11, v12);
}

uint64_t fbfcu_AskForResponse(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  v15 = 0;
  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable)
  {
    goto LABEL_16;
  }

  Mutable = FigCustomURLRequestInfoSetHTTPHeaders();
  if (Mutable)
  {
    goto LABEL_16;
  }

  if (FigCustomURLRequestInfoCopyUserAgent())
  {
    if (!DerivedStorage[13])
    {
      v7 = FigCFHTTPCreateUserAgent();
      DerivedStorage[13] = v7;
      if (!v7)
      {
        fig_log_get_emitter();
        Mutable = FigSignalErrorAtGM();
        goto LABEL_16;
      }
    }

    Mutable = FigCustomURLRequestInfoSetUserAgent();
    if (Mutable)
    {
      goto LABEL_16;
    }
  }

  Mutable = FigCustomURLRequestInfoSetByteRange();
  if (Mutable)
  {
LABEL_16:
    v12 = Mutable;
    goto LABEL_12;
  }

  v8 = DerivedStorage[6];
  v9 = *DerivedStorage;
  v10 = DerivedStorage[16];
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v11)
  {
    v12 = v11(v8, v15, v9, v10, fbfcu_customURLLoaderDataCallback, &v14);
    if (!v12)
    {
      *a4 = v14;
    }
  }

  else
  {
    v12 = 4294954514;
  }

LABEL_12:
  if (v15)
  {
    CFRelease(v15);
  }

  return v12;
}

uint64_t fbfcu_customURLLoaderDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, OpaqueCMBlockBuffer *a4, char a5, __CFError *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    FigByteFlumeGetFigBaseObject(Owner);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    CFRetain(Owner);
    if (*(DerivedStorage + 216) == 3)
    {
LABEL_25:
      CFRelease(Owner);
      goto LABEL_26;
    }

    if (*(DerivedStorage + 272) == a2)
    {
      v12 = *(DerivedStorage + 248);
      v62 = 0;
      v63 = 0;
      blockBufferOut = 0;
      if (a6)
      {
        Code = CFErrorGetCode(a6);
        if (Code)
        {
LABEL_6:
          v14 = 0;
LABEL_102:
          *(DerivedStorage + 248) = 0;
          v12(*(DerivedStorage + 256), 0, Code);
LABEL_103:
          if (v14)
          {
            CFRelease(v14);
          }

LABEL_105:
          if (v62)
          {
            CFRelease(v62);
          }

          v20 = v63;
          if (!v63)
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_9();
        v22 = FigSignalErrorAtGM();
        if (v22)
        {
          goto LABEL_132;
        }
      }

      if (FigCustomURLResponseInfoCopyRedirectLocation())
      {
        if (*(DerivedStorage + 176))
        {
          Code = 0;
LABEL_90:
          if (a4)
          {
            v43 = *(DerivedStorage + 264) + CMBlockBufferGetDataLength(a4);
            *(DerivedStorage + 264) = v43;
            if (v43 >= 3)
            {
              *(DerivedStorage + 200) = 0;
              Code = 4294954357;
            }
          }

          if ((a5 & 3) != 0)
          {
            if (!*(DerivedStorage + 64))
            {
              Value = *(DerivedStorage + 240);
              if (Value)
              {
                Value = CFDictionaryGetValue(Value, @"FBFCreateOption_HTTPRequestOptions");
              }

              OptionsFromHTTPRequestOptions = FigByteFlumeCreateNetworkPathEvaluatorCreateOptionsFromHTTPRequestOptions(Value);
              FigNetworkPathEvaluatorCreate(*MEMORY[0x1E695E480], *(DerivedStorage + 80), OptionsFromHTTPRequestOptions, *(DerivedStorage + 128), *DerivedStorage, fbfcu_networkMonitorCallback, DerivedStorage + 64);
              if (OptionsFromHTTPRequestOptions)
              {
                CFRelease(OptionsFromHTTPRequestOptions);
              }
            }

            *(DerivedStorage + 272) = 0;
            *(DerivedStorage + 216) = 2;
            *(DerivedStorage + 248) = 0;
            v12(*(DerivedStorage + 256), 0, 0);
          }

          v14 = 0;
          goto LABEL_101;
        }

        inUTI = 0;
        statusCode = -1;
        v23 = *(DerivedStorage + 168);
        if (v23)
        {
          CFRelease(v23);
          *(DerivedStorage + 168) = 0;
        }

        if (FigCustomURLResponseInfoGetHTTPStatusCode() == -17360)
        {
          v24 = 206;
          statusCode = 206;
        }

        else
        {
          v24 = statusCode;
        }

        Response = CFHTTPMessageCreateResponse(*MEMORY[0x1E695E480], v24, 0, *MEMORY[0x1E695ADB8]);
        *(DerivedStorage + 168) = Response;
        if (Response)
        {
          cf = 0;
          FigCustomURLResponseInfoCopyHTTPHeaders();
        }

        if (*(DerivedStorage + 201))
        {
          v27 = *(DerivedStorage + 280);
          if (v27)
          {
            CFRelease(v27);
            *(DerivedStorage + 280) = 0;
          }

          v28 = FigCustomURLResponseInfoCopyFinalURL();
          if (v28)
          {
            Code = v28;
            if (v28 != -17360)
            {
              goto LABEL_6;
            }
          }
        }

        if (FigCustomURLResponseInfoCopyUniversalTypeIdentifier())
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          statusCode = 0;
          if (FigCustomURLResponseInfoCopyHTTPHeaders())
          {
            goto LABEL_79;
          }

          v41 = CFDictionaryGetValue(statusCode, @"Content-Type");
          if (v41)
          {
            v41 = CFRetain(v41);
          }

          *(DerivedStorage + 184) = v41;
          v30 = statusCode;
          if (!statusCode)
          {
            goto LABEL_79;
          }
        }

        else
        {
          *(DerivedStorage + 184) = UTTypeCopyPreferredTagWithClass(inUTI, *MEMORY[0x1E6963718]);
          v30 = inUTI;
          if (!inUTI)
          {
            goto LABEL_79;
          }
        }

        CFRelease(v30);
LABEL_79:
        if (!FigCustomURLResponseInfoGetIsCachingDisabled())
        {
          *(DerivedStorage + 288) = 0;
        }

        if (!FigCustomURLResponseInfoGetEntireLengthAvailableOnDemand())
        {
          *(DerivedStorage + 289) = 0;
        }

        Code = FigCustomURLResponseInfoGetResourceSize();
        if (Code == -17360)
        {
          *(DerivedStorage + 200) = 0;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_6_9();
          Code = FigSignalErrorAtGM();
        }

        if (Code)
        {
          goto LABEL_6;
        }

        *(DerivedStorage + 192) = 0;
        *(DerivedStorage + 200) = 1;
        v42 = *(DerivedStorage + 168);
        if (v42)
        {
          Code = FigCFHTTPCreateCacheHeaders(*(DerivedStorage + 88), 0, v42, 0, (DerivedStorage + 120));
        }

        else
        {
          Code = 0;
        }

        *(DerivedStorage + 176) = 1;
        goto LABEL_90;
      }

      if (*(DerivedStorage + 201))
      {
        v14 = 0;
        Code = 4294954361;
        goto LABEL_102;
      }

      if (*(DerivedStorage + 176))
      {
        goto LABEL_105;
      }

      *(DerivedStorage + 176) = 1;
      *(DerivedStorage + 216) = 2;
      v22 = FigByteFlumeCreateWithHTTP(*MEMORY[0x1E695E480], v62, *(DerivedStorage + 104), *(DerivedStorage + 112), *(DerivedStorage + 96), *(DerivedStorage + 128), *(DerivedStorage + 136), *(DerivedStorage + 240), (DerivedStorage + 56));
      if (v22)
      {
LABEL_132:
        Code = v22;
        goto LABEL_6;
      }

      if (FigCustomURLResponseInfoCopyRedirectRequestHeaders())
      {
        v14 = 0;
      }

      else
      {
        v31 = fbfcu_copyAllowedHTTPHeaders(v63, &blockBufferOut);
        v14 = blockBufferOut;
        if (v31)
        {
          goto LABEL_131;
        }
      }

      v31 = FigByteFlumeSetAdditionalOpenRequestHeaders(*(DerivedStorage + 56), v14);
      if (!v31)
      {
        v32 = *(DerivedStorage + 56);
        v33 = *DerivedStorage;
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v34)
        {
          Code = 4294954514;
          goto LABEL_102;
        }

        Code = v34(v32, fbfcu_OpenCallback, v33);
LABEL_101:
        if (!Code)
        {
          goto LABEL_103;
        }

        goto LABEL_102;
      }

LABEL_131:
      Code = v31;
      goto LABEL_102;
    }

    statusCode = 0;
    v63 = 0;
    cf = 0;
    blockBufferOut = 0;
    v62 = 0;
    v15 = *(DerivedStorage + 144);
    if (!v15)
    {
      goto LABEL_19;
    }

    while (*(v15 + 64) != a2)
    {
      v15 = *(v15 + 88);
      if (!v15)
      {
        goto LABEL_19;
      }
    }

    v58 = (a5 & 3) != 0;
    v59 = a5 & 3;
    v16 = *(v15 + 24);
    if (!*(v15 + 24))
    {
      FigCustomURLResponseInfoCopyRedirectLocation();
      *(v15 + 25) = v62 != 0;
      *(v15 + 24) = 1;
    }

    v17 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = a6;
    if (a6)
    {
      CFRetain(a6);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    if (a6)
    {
      CFErrorGetCode(a6);
      FigByteFlumePostHostUnavailableNotification(DerivedStorage);
      OUTLINED_FUNCTION_1_161(*(v15 + 88));
      v18 = OUTLINED_FUNCTION_2_152();
      v19(v18);
      fbfcu_ReleaseReadRequest(v15);
      goto LABEL_19;
    }

    if (!v62)
    {
      if (*(v15 + 25))
      {
        goto LABEL_19;
      }

      if (a4)
      {
        DataLength = CMBlockBufferGetDataLength(a4);
        fbfcu_doByteRateMeasurement(DerivedStorage, DataLength);
        FigByteFlumePostHostAvailableNotification(DerivedStorage);
        v51 = *(v15 + 8);
        v50 = *(v15 + 16);
        if (v50 + DataLength <= v51)
        {
          v54 = 0;
          v55 = v58;
        }

        else
        {
          v52 = *MEMORY[0x1E695E480];
          DataLength = v51 - v50;
          if (v51 == v50)
          {
            v53 = CMBlockBufferCreateEmpty(v52, 0, 0, &blockBufferOut);
          }

          else
          {
            v53 = CMBlockBufferCreateWithBufferReference(v52, a4, 0, v51 - v50, 0, &blockBufferOut);
          }

          v54 = v53;
          v55 = 1;
          a4 = blockBufferOut;
        }

        ++*(v15 + 56);
        v56 = *(v15 + 40);
        if (v56)
        {
          CFRetain(v56);
        }

        if (v55)
        {
          v57 = *(v15 + 16);
          *(v15 + 16) = v57 + DataLength;
          fbfcu_FinishRequest(DerivedStorage, v15, v57, a4, 0, v54);
        }

        else
        {
          (*(v15 + 32))(*(v15 + 40), *(v15 + 48), *(v15 + 64), *(v15 + 16), a4, 0, 0);
          *(v15 + 16) += DataLength;
        }

        fbfcu_ReleaseReadRequest(v15);
        v48 = blockBufferOut;
        if (blockBufferOut)
        {
          goto LABEL_116;
        }
      }

      else if (v59)
      {
        fbfcu_FinishRequest(DerivedStorage, v15, *(v15 + 16), 0, 0, 0);
      }

      goto LABEL_19;
    }

    inUTI = 0;
    if (!v16)
    {
      if (*(DerivedStorage + 56))
      {
        if (!FigCustomURLResponseInfoCopyHTTPHeaders())
        {
          if (FigCustomURLResponseInfoCopyRedirectRequestHeaders())
          {
            v25 = 0;
LABEL_69:
            v35 = *v15;
            v36 = *(v15 + 8);
            v37 = *(v15 + 48);
            v38 = CFRetain(*(DerivedStorage + 56));
            FigRetainProxyUnlockMutex();
            v39 = FigCFHTTPResetURLAndRead(*(DerivedStorage + 56), v62, v25, v35, v36, fbfcu_ReadCallback, *DerivedStorage, v37, &inUTI);
            FigRetainProxyLockMutex();
            if (!FigRetainProxyIsInvalidated())
            {
              v40 = *(DerivedStorage + 144);
              if (v40)
              {
                while (v37 != *(v40 + 48))
                {
                  v40 = *(v40 + 88);
                  if (!v40)
                  {
                    goto LABEL_112;
                  }
                }

                *(v15 + 72) = inUTI;
                if (v39)
                {
                  OUTLINED_FUNCTION_1_161(*(v15 + 88));
                  v46 = OUTLINED_FUNCTION_2_152();
                  v47(v46);
                  fbfcu_ReleaseReadRequest(v15);
                }

                else
                {
                  *(v15 + 80) = 1;
                }
              }
            }

LABEL_112:
            if (statusCode)
            {
              CFRelease(statusCode);
            }

            if (v38)
            {
              v48 = v38;
LABEL_116:
              CFRelease(v48);
            }

LABEL_19:
            if (cf)
            {
              CFRelease(cf);
            }

            if (v63)
            {
              CFRelease(v63);
            }

            v20 = v62;
            if (!v62)
            {
              goto LABEL_25;
            }

LABEL_24:
            CFRelease(v20);
            goto LABEL_25;
          }

          if (!fbfcu_copyAllowedHTTPHeaders(cf, &v63))
          {
            v25 = v63;
            goto LABEL_69;
          }
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_6_9();
        FigSignalErrorAtGM();
      }
    }

    v38 = 0;
    goto LABEL_112;
  }

LABEL_26:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t fbfcu_OpenCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    FigByteFlumeGetFigBaseObject(Owner);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    DerivedStorage[34] = 0;
    v8 = DerivedStorage[31];
    v7 = DerivedStorage[32];
    DerivedStorage[31] = 0;
    v8(v7, a2, a3);
  }

  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

uint64_t fbfcu_networkMonitorCallback(uint64_t a1, const void *a2)
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    FigByteFlumeGetFigBaseObject(Owner);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(DerivedStorage + 24) && FigNetworkPathInformationIsHostReachable(a2, 0))
    {
      FigByteFlumePostHostAvailableNotification(DerivedStorage);
    }

    v5 = *(DerivedStorage + 72);
    *(DerivedStorage + 72) = a2;
    if (a2)
    {
      CFRetain(a2);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fbfcu_ReadCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    Owner = FigRetainProxyGetOwner();
    FigByteFlumeGetFigBaseObject(Owner);
    v14 = *(CMBaseObjectGetDerivedStorage() + 144);
    if (v14)
    {
      while (*(v14 + 72) != a3)
      {
        v14 = *(v14 + 88);
        if (!v14)
        {
          goto LABEL_12;
        }
      }

      if (a6 & 1 | a7)
      {
        OUTLINED_FUNCTION_1_161(*(v14 + 88));
        (*(v14 + 32))(*(v14 + 40), *(v14 + 48), *(v14 + 64), a4, a5, a6 | 1, a7);
      }

      else
      {
        ++*(v14 + 56);
        v15 = *(v14 + 40);
        if (v15)
        {
          CFRetain(v15);
          v15 = *(v14 + 40);
        }

        (*(v14 + 32))(v15, a2, *(v14 + 64), a4, a5, a6, 0);
      }

      fbfcu_ReleaseReadRequest(v14);
    }
  }

LABEL_12:
  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

void fbfcu_doByteRateMeasurement(void *a1, unsigned int a2)
{
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  v6 = (a1 + 28);
  v5 = a1[28];
  if (v5)
  {
LABEL_8:
    v8[0] = UpTimeNanoseconds - a1[29];
    v8[1] = a2;
    FigByteRateHistoryAddToSample(v5, v8);
    if (FigByteRateHistoryGetCurrentSampleDuration(a1[28]) >= 100000000)
    {
      FigByteRateHistoryNextSample(*v6);
    }

    a1[29] = UpTimeNanoseconds;
    return;
  }

  if (!FigByteRateHistoryCreate(a1 + 28))
  {
    v7 = a1[20] ? FigCFNumberGetUInt64() : 64;
    if (!FigByteRateHistoryAllocSampleArray(*v6, v7))
    {
      v5 = *v6;
      goto LABEL_8;
    }
  }
}

uint64_t FigByteFlumeCustomURLSetProperty_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void FigByteFlumeCustomURLSetProperty_cold_2(const void *a1, uint64_t a2, const void *a3, _DWORD *a4)
{
  if (CFEqual(a1, @"FBF_BandwidthSampleCount"))
  {
    v7 = *(a2 + 160);
    *(a2 + 160) = a3;
    if (a3)
    {
      CFRetain(a3);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (*(a2 + 224))
    {
      UInt64 = FigCFNumberGetUInt64();
      FigByteRateHistoryAllocSampleArray(*(a2 + 224), UInt64);
    }
  }

  *a4 = 0;
}

uint64_t FigByteFlumeCustomURLRead_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLCopyIdentifier_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLCopyIdentifier_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLCopyIdentifier_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLCopyIdentifier_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLCopyIdentifier_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLCopyIdentifier_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLOpen_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLOpen_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigByteFlumeCustomURLOpen_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t fbfcu_copyAllowedHTTPHeaders_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArray(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, _BYTE *a8)
{
  v163 = a4;
  v193 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 20) || (v8 = a2) == 0 || (v9 = a3) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_170();

    return FigSignalErrorAtGM();
  }

  if ((*(a1 + 36) & 1) == 0)
  {
    v15 = 48;
    if ((*(a4 + 60) & 1) == 0)
    {
      v15 = 24;
    }

    v16 = (a4 + v15);
    v17 = *v16;
    *(a1 + 40) = *(v16 + 2);
    *(a1 + 24) = v17;
  }

  if (*(a1 + 12) != 1)
  {
    OUTLINED_FUNCTION_6_94();
    if (v8 > v50)
    {
      return 4294950936;
    }

    v52 = *(a1 + 104);
    v120 = *(a1 + 96);
    v53 = *(a1 + 112);
    v54 = OUTLINED_FUNCTION_3_126(9 * v8);
    if (!v54)
    {
      return 4294950936;
    }

    v135 = a5;
    v140 = a8;
    v145 = a6;
    v125 = a7;
    v55 = 0;
    v115 = v52;
    v150 = (v53 + 72 * v52 - 72);
    v155 = v53;
    v168 = *MEMORY[0x1E6960C70];
    v56 = *(MEMORY[0x1E6960C70] + 16);
    v130 = v54;
    v57 = v54;
    while (1)
    {
      memcpy(__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
      *&v181.value = v168;
      v181.epoch = v56;
      *&v179.value = v168;
      v179.epoch = v56;
      *&v177.value = v168;
      v177.epoch = v56;
      *&v175.value = v168;
      v175.epoch = v56;
      v58 = *(a1 + 72);
      v59 = *(a1 + 84);
      v192 = *(a1 + 80);
      v191 = v58;
      v60 = *(a1 + 88);
      SampleTimingAtIndex = getSampleTimingAtIndex(v8, v55, v9, v163, __dst, 0);
      if (SampleTimingAtIndex)
      {
LABEL_47:
        v51 = SampleTimingAtIndex;
        free(v130);
        return v51;
      }

      if (v59)
      {
        break;
      }

      CMTimeMake(&v181, 0, *(a1 + 20));
LABEL_40:
      lhs = v181;
      time1 = **&MEMORY[0x1E6960CC0];
      time2 = __dst[1];
      time = __dst[2];
      if (CMTimeCompare(&time2, &time))
      {
        memset(&time2, 0, sizeof(time2));
        time = __dst[1];
        rhs = *(a1 + 24);
        CMTimeSubtract(&time2, &time, &rhs);
        OUTLINED_FUNCTION_4_123();
        rhs = lhs;
        CMTimeSubtract(&time1, &time, &rhs);
      }

      v106 = *(a1 + 20);
      time2 = time1;
      CMTimeConvertScale(&v175, &time2, v106, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      time1 = v181;
      time2 = v175;
      CMTimeAdd(&v179, &time1, &time2);
      *v57 = v168;
      *(v57 + 2) = v56;
      epoch = v179.epoch;
      *(v57 + 24) = *&v179.value;
      *(v57 + 5) = epoch;
      v108 = v181.epoch;
      *(v57 + 3) = *&v181.value;
      *(v57 + 8) = v108;
      memcpy((a1 + 120), __dst, 0x48uLL);
      *(a1 + 72) = v181;
      ++v55;
      v57 += 72;
      if (v8 == v55)
      {
        *(a1 + 96) = v8;
        *(a1 + 104) = v8;
        v49 = 1;
        a7 = v125;
        *(a1 + 112) = v130;
        a8 = v140;
        a6 = v145;
        a5 = v135;
        v20 = v155;
        v9 = v115;
        v8 = v120;
        goto LABEL_45;
      }
    }

    *&time1.value = v168;
    time1.epoch = v56;
    *&time2.value = v168;
    time2.epoch = v56;
    *&time.value = v168;
    time.epoch = v56;
    rhs = __dst[2];
    v69 = OUTLINED_FUNCTION_2_153(SampleTimingAtIndex, v62, v63, v64, v65, v66, v67, v68, v110, v115, v120, v125, v130, v135, v140, v145, v150, v155, v159, v163, v168, *(&v168 + 1), v175.value, *&v175.timescale, v175.epoch, v176, v177.value, *&v177.timescale, v177.epoch, v178, v179.value, *&v179.timescale, v179.epoch, v180, v181.value, *&v181.timescale, v181.epoch, v182, *(a1 + 24), *(a1 + 32), *(a1 + 40), v184, __dst[2].value);
    v72 = CMTimeSubtract(v71, v69, v70);
    rhs.timescale = v192;
    rhs.flags = v59;
    rhs.epoch = v60;
    v80 = OUTLINED_FUNCTION_2_153(v72, v73, v74, v75, v76, v77, v78, v79, v111, v116, v121, v126, v131, v136, v141, v146, v151, v156, v160, v164, v169, v172, v175.value, *&v175.timescale, v175.epoch, v176, v177.value, *&v177.timescale, v177.epoch, v178, v179.value, *&v179.timescale, v179.epoch, v180, v181.value, *&v181.timescale, v181.epoch, v182, time1.value, *&time1.timescale, time1.epoch, v184, v191);
    v82 = CMTimeCompare(v80, v81);
    if ((v82 & 0x80000000) != 0)
    {
      *&rhs.timescale = *&time1.timescale;
      rhs.epoch = time1.epoch;
      v92 = OUTLINED_FUNCTION_2_153(v82, v83, v84, v85, v86, v87, v88, v89, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v161, v165, v170, v173, v175.value, *&v175.timescale, v175.epoch, v176, v177.value, *&v177.timescale, v177.epoch, v178, v179.value, *&v179.timescale, v179.epoch, v180, v181.value, *&v181.timescale, v181.epoch, v182, v191, __SPAIR64__(v59, v192), v60, v184, time1.value);
      CMTimeSubtract(v94, v92, v93);
      v95 = *(a1 + 20);
      rhs = time2;
      v96 = CMTimeConvertScale(&time, &rhs, v95, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      rhs = **&MEMORY[0x1E6960CC0];
      v104 = OUTLINED_FUNCTION_2_153(v96, v97, v98, v99, v100, v101, v102, v103, v113, v118, v123, v128, v133, v138, v143, v148, v153, v158, v162, v166, v171, v174, v175.value, *&v175.timescale, v175.epoch, v176, v177.value, *&v177.timescale, v177.epoch, v178, v179.value, *&v179.timescale, v179.epoch, v180, v181.value, *&v181.timescale, v181.epoch, v182, time.value, *&time.timescale, time.epoch, v184, rhs.value);
      if (!CMTimeCompare(v104, v105))
      {
        CMTimeMake(&rhs, 1, *(a1 + 20));
        time = rhs;
      }
    }

    else
    {
      rhs = *(a1 + 168);
      v90 = OUTLINED_FUNCTION_2_153(v82, v83, v84, v85, v86, v87, v88, v89, v112, v117, v122, v127, v132, v137, v142, v147, v152, v157, v161, v165, v170, v173, v175.value, *&v175.timescale, v175.epoch, v176, v177.value, *&v177.timescale, v177.epoch, v178, v179.value, *&v179.timescale, v179.epoch, v180, v181.value, *&v181.timescale, v181.epoch, v182, __dst[2].value, *&__dst[2].timescale, __dst[2].epoch, v184, rhs.value);
      if ((CMTimeCompare(v90, v91) & 0x80000000) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_170();
        SampleTimingAtIndex = FigSignalErrorAtGM();
        if (SampleTimingAtIndex)
        {
          goto LABEL_47;
        }

        if (v55)
        {
          goto LABEL_30;
        }

        goto LABEL_35;
      }

      CMTimeMake(&time, 1, *(a1 + 20));
    }

    v177 = time;
    if (v55)
    {
LABEL_30:
      *(v57 - 3) = v177;
LABEL_39:
      time2.value = v191;
      time2.timescale = v192;
      time2.flags = v59;
      time2.epoch = v60;
      time = v177;
      CMTimeAdd(&time1, &time2, &time);
      v181 = time1;
      *(a1 + 192) = v177;
      goto LABEL_40;
    }

LABEL_35:
    if (v155)
    {
      *v150 = v177;
    }

    else
    {
      time1 = *(a1 + 192);
      time2 = v177;
      if (CMTimeCompare(&time1, &time2))
      {
        v177 = *(a1 + 192);
      }
    }

    goto LABEL_39;
  }

  OUTLINED_FUNCTION_6_94();
  if (v9 > v18)
  {
    return 4294950936;
  }

  v19 = OUTLINED_FUNCTION_3_126(9 * v9);
  if (!v19)
  {
    return 4294950936;
  }

  v20 = v19;
  if (v8 < 1)
  {
    v49 = 0;
LABEL_45:
    v51 = 0;
    *a8 = v49;
    *a5 = v8;
    *a6 = v9;
    *a7 = v20;
    *(a1 + 16) = 1;
    return v51;
  }

  v134 = a5;
  v139 = a8;
  v144 = a6;
  v21 = 0;
  v22 = MEMORY[0x1E6960CF0];
  v167 = *MEMORY[0x1E6960C70];
  v23 = *(MEMORY[0x1E6960C70] + 16);
  while (1)
  {
    memcpy(__dst, v22, sizeof(__dst));
    v181.value = 0;
    *&time2.value = v167;
    time2.epoch = v23;
    if ((*(a1 + 60) & 1) == 0)
    {
      v24 = CMTimeMake(&time, 0, *(a1 + 20));
      OUTLINED_FUNCTION_5_105(v24, v25, v26, v27, v28, v29, v30, v31, v110, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v163, v167, *(&v167 + 1), v175.value, *&v175.timescale, v175.epoch, v176, v177.value, *&v177.timescale, v177.epoch, v178, v179.value, *&v179.timescale, v179.epoch, v180, v181.value, *&v181.timescale, v181.epoch, v182, lhs.value, *&lhs.timescale, lhs.epoch, v184, rhs.value, *&rhs.timescale, rhs.epoch, v186, v32, time.value);
    }

    v33 = getSampleTimingAtIndex(v8, v21, v9, v163, __dst, &v181.value);
    if (v33)
    {
      break;
    }

    if ((__dst[0].flags & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_170();
      v33 = FigSignalErrorAtGM();
      break;
    }

    v34 = *(a1 + 20);
    time = __dst[0];
    CMTimeConvertScale(&time2, &time, v34, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    time1 = *(a1 + 48);
    v35 = *&time1.value;
    v36 = time1.epoch;
    v37 = &v20[72 * v21];
    v38 = time2.epoch;
    *v37 = *&time2.value;
    *(v37 + 2) = v38;
    *(v37 + 24) = v35;
    *(v37 + 5) = v36;
    *(v37 + 3) = v35;
    *(v37 + 8) = v36;
    OUTLINED_FUNCTION_4_123();
    CMTimeMultiply(&rhs, &time, v39);
    lhs = *(a1 + 48);
    v40 = CMTimeAdd(&time, &lhs, &rhs);
    OUTLINED_FUNCTION_5_105(v40, v41, v42, v43, v44, v45, v46, v47, v110, v114, v119, v124, v129, v134, v139, v144, v149, v154, v159, v163, v167, *(&v167 + 1), v175.value, *&v175.timescale, v175.epoch, v176, v177.value, *&v177.timescale, v177.epoch, v178, v179.value, *&v179.timescale, v179.epoch, v180, v181.value, *&v181.timescale, v181.epoch, v182, lhs.value, *&lhs.timescale, lhs.epoch, v184, rhs.value, *&rhs.timescale, rhs.epoch, v186, v48, time.value);
    v21 += v181.value;
    if (v21 >= v8)
    {
      v49 = 0;
      a8 = v139;
      a6 = v144;
      a5 = v134;
      goto LABEL_45;
    }
  }

  v51 = v33;
  free(v20);
  a8 = v139;
  a6 = v144;
  a5 = v134;
  if (!v51)
  {
    v49 = 0;
    v9 = 0;
    v20 = 0;
    goto LABEL_45;
  }

  return v51;
}

uint64_t MediaSampleTimingGeneratorCreate(const void *a1, int a2, int a3, void *a4)
{
  if ((a3 - 3) < 0xFFFFFFFE)
  {
    return 4294950935;
  }

  v8 = MEMORY[0x19A8CC720](a1, 216, 0x1060040CAF4618ALL, 0);
  if (!v8)
  {
    return 4294950936;
  }

  v9 = v8;
  bzero(v8, 0xD8uLL);
  if (a1)
  {
    v10 = CFRetain(a1);
  }

  else
  {
    v10 = 0;
  }

  result = 0;
  *v9 = v10;
  v9[2] = a2;
  v9[3] = a3;
  *a4 = v9;
  return result;
}

uint64_t MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArrayWithDefaultLastSampleDuration_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaSampleTimingGeneratorSetMediaTimeScale_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t MediaSampleTimingGeneratorSetMediaTimeScale_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

void setDefaultFontSizeDo(void *a1)
{
  v1 = *(*a1 + 56);
  if (v1)
  {
    valuePtr = a1[1];
    v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
    if (v2)
    {
      v3 = v2;
      v5.length = CFAttributedStringGetLength(v1);
      v5.location = 0;
      CFAttributedStringSetAttribute(v1, v5, *MEMORY[0x1E69631D8], v3);
      CFRelease(v3);
    }
  }
}

uint64_t FigMockRenderPipelineFactoryCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMockRenderPipelineFactoryCreate_cold_3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigMockRenderPipelineFactoryCreate_cold_4(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLStyling_ConsumeChildNode(uint64_t a1, CFTypeRef *a2, void **a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  value = 0;
  cf = 0;
  v7 = FigTTMLGetLibXMLAccess();
  if (!v7)
  {
    v8 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  if ((*(v7 + 72))(a1) == 1)
  {
    v8 = FigTTMLCopyNamespaceAndLocalNameOfCurrentNode(a1, &v13, &cf);
    if (v8)
    {
      goto LABEL_19;
    }

    if (FigCFEqual() && FigCFEqual())
    {
      v9 = CFGetAllocator(*a2);
      v8 = FigTTMLStyleCreate(v9, a1, a2, &value);
      if (!v8)
      {
        CFArrayAppendValue(*(DerivedStorage + 136), value);
        goto LABEL_9;
      }

LABEL_19:
      v10 = v8;
      goto LABEL_11;
    }
  }

  v8 = FigTTMLSkipNode(a1, a2, *(DerivedStorage + 128));
  if (v8)
  {
    goto LABEL_19;
  }

LABEL_9:
  v10 = 0;
  if (a3)
  {
    *a3 = value;
    value = 0;
  }

LABEL_11:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v10;
}

uint64_t FigTTMLStylingCreate_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigTTMLStylingCreate_cold_2(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t figTTMLStyling_GetNodeType_cold_1(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

uint64_t FigAlternateMultipleNSPredicateFilterCreate()
{
  OUTLINED_FUNCTION_349();
  v41 = *MEMORY[0x1E69E9840];
  cf = 0;
  v39 = 0;
  inserted = FigAlternateFilterTreeCreate(v4, &v39);
  if (!inserted)
  {
    v13 = OUTLINED_FUNCTION_2_154(inserted, v6, v7, v8, v9, v10, v11, v12, 0, 0, 0, 0, 0, 0, 0, 0, v36, cf, v39, v40);
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      v16 = 0x7FFFFFFF;
LABEL_4:
      v17 = 0;
      while (1)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v2);
        }

        inserted = FigAlternateNSPredicateFilterCreate(v3, *(v29 + 8 * v17), v1, &cf);
        if (inserted)
        {
          break;
        }

        inserted = FigAlternateFilterTreeInsertLeaf(v39, cf, v16);
        if (inserted)
        {
          break;
        }

        v25 = cf;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        ++v17;
        --v16;
        if (v14 == v17)
        {
          v14 = OUTLINED_FUNCTION_2_154(v25, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31, v32, v33, v34, v35, v37, cf, v39, v40);
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      inserted = FigAlternateFilterTreeCreateFilter(v39, @"MultipleNSPredicateTreeFilter", 872, v0);
    }
  }

  v26 = inserted;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  return v26;
}

uint64_t FigAlternateMultipleAlternateQualifierFilterCreate()
{
  OUTLINED_FUNCTION_349();
  v51 = *MEMORY[0x1E69E9840];
  cf = 0;
  v45 = 0;
  inserted = FigAlternateFilterTreeCreate(v4, &v45);
  if (!inserted)
  {
    v13 = OUTLINED_FUNCTION_1_162(inserted, v6, v7, v8, v9, v10, v11, v12, v31, v0, 0, 0, 0, 0, 0, 0, 0, 0, v42, cf, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
    if (!v13)
    {
      goto LABEL_20;
    }

    v14 = v13;
    v15 = *v36;
    v16 = 0x7FFFFFFF;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v2);
        }

        v18 = *(v35 + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          inserted = FigAlternateNSPredicateFilterCreate(v3, [v18 _predicate], v1, &cf);
          if (inserted)
          {
            goto LABEL_21;
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = [v18 _keyPath];
            v46 = 0uLL;
            v47 = 0;
            v20 = faf_lowestInKeyPathComparatorFn;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_15;
            }

            v19 = [v18 _keyPath];
            v46 = 0uLL;
            v47 = 0;
            v20 = faf_highestInKeyPathComparatorFn;
          }

          v48 = v20;
          v49 = 0;
          inserted = FigSimpleAlternateFilterCreate(v3, @"MinOrMaxInKeyPathFilter", 595, &v46, v19, &cf);
          if (inserted)
          {
            goto LABEL_21;
          }
        }

LABEL_15:
        inserted = FigAlternateFilterTreeInsertLeaf(v45, cf, v16);
        if (inserted)
        {
          goto LABEL_21;
        }

        v28 = cf;
        if (cf)
        {
          CFRelease(cf);
          cf = 0;
        }

        --v16;
      }

      v14 = OUTLINED_FUNCTION_1_162(v28, v21, v22, v23, v24, v25, v26, v27, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v43, cf, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
      if (!v14)
      {
LABEL_20:
        inserted = FigAlternateFilterTreeCreateFilter(v45, @"MultipleAlternateQualifierTreeFilter", 872, v33);
        break;
      }
    }
  }

LABEL_21:
  v29 = inserted;
  if (cf)
  {
    CFRelease(cf);
  }

  if (v45)
  {
    CFRelease(v45);
  }

  return v29;
}