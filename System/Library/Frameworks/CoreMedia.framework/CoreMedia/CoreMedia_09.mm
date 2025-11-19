void perform_fignote_variable_registration(uint64_t a1)
{
  value = 0;
  Mutable = CFDictionaryGetValue(gFigNoteVariableRegistry_1, *a1);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(gFigNoteVariableRegistry_1, *a1, Mutable);
    CFRelease(Mutable);
  }

  if (!CFDictionaryGetValueIfPresent(Mutable, *(a1 + 8), &value))
  {
    value = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    CFDictionarySetValue(Mutable, *(a1 + 8), value);
    CFRelease(value);
  }

  Count = CFArrayGetCount(value);
  if (Count < 1)
  {
LABEL_9:
    v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10300409B68AA8EuLL);
    v8 = v7;
    if (v7)
    {
      v7[1] = *(a1 + 32);
      *(v7 + 4) = *(a1 + 40);
      *v7 = fig_log_get_emitter(*(a1 + 16), *(a1 + 24));
      CFArrayAppendValue(value, v8);
      *(a1 + 56) = 1;
    }
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(value, v5);
      if (ValueAtIndex[1] == *(a1 + 32))
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_9;
      }
    }

    v8 = ValueAtIndex;
  }

  *(a1 + 48) = v8;
}

BOOL fig_note_get_value_for_string_preference(const __CFString *a1, int *a2)
{
  v4 = 1;
  if (CFStringCompare(a1, @"true", 1uLL))
  {
    v5 = 1;
    if (CFStringCompare(a1, @"yes", 1uLL) == kCFCompareEqualTo)
    {
      v4 = 1;
      goto LABEL_13;
    }

    v5 = 1;
    if (CFStringCompare(a1, @"on", 1uLL) == kCFCompareEqualTo)
    {
      v4 = 1;
      goto LABEL_13;
    }

    v5 = 1;
    if (CFStringCompare(a1, @"false", 1uLL) == kCFCompareEqualTo || (v5 = 1, CFStringCompare(a1, @"no", 1uLL) == kCFCompareEqualTo) || (v5 = 1, CFStringCompare(a1, @"off", 1uLL) == kCFCompareEqualTo))
    {
      v4 = 0;
      goto LABEL_13;
    }

    if (!CFEqual(a1, @"0"))
    {
      IntValue = CFStringGetIntValue(a1);
      v5 = IntValue != 0;
      v4 = IntValue & ~(IntValue >> 31);
      goto LABEL_13;
    }

    v4 = 0;
  }

  v5 = 1;
LABEL_13:
  *a2 = v4;
  return v5;
}

void initialize_fignote_variable_registry_once()
{
  gFigNoteVariableRegistry_0 = dispatch_queue_create("fignote_variable_registry_queue", 0);
  gFigNoteVariableRegistry_1 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

  FigInstallSysdiagnoseBlock(@"FigNoteVariableRegistry", &__block_literal_global_68);
}

void __initialize_fignote_variable_registry_once_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  os_log_and_send_and_compose_flags = fig_log_emitter_get_os_log_and_send_and_compose_flags(0, v6);
  v1 = v6[0];
  if (os_log_type_enabled(os_log_and_send_and_compose_flags, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFE;
  }

  if (v4)
  {
    v6[1] = 136315138;
    v7 = "";
    v5 = _os_log_send_and_compose_impl();
    LOBYTE(v1) = v6[0];
  }

  else
  {
    v5 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 0, v5, v5 != block, v1, v2, v3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __DumpVariableRegistry_block_invoke;
  block[3] = &__block_descriptor_tmp_69;
  v9 = 1;
  dispatch_sync(gFigNoteVariableRegistry_0, block);
}

void __DumpVariableRegistry_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = DumpNonDefaultRegisteredVariablesDictionaryApplierFunction;
  }

  else
  {
    v1 = DumpAllRegisteredVariablesDictionaryApplierFunction;
  }

  CFDictionaryApplyFunction(gFigNoteVariableRegistry_1, DumpVariableAppIDDictionaryApplierFunction, v1);
}

void DumpNonDefaultRegisteredVariablesDictionaryApplierFunction(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (*ValueAtIndex[1] != *(ValueAtIndex + 4))
      {
        v10 = ValueAtIndex;
        v19[0] = 0;
        os_log_and_send_and_compose_flags = fig_log_emitter_get_os_log_and_send_and_compose_flags(0, v19);
        v12 = v19[0];
        if (os_log_type_enabled(os_log_and_send_and_compose_flags, OS_LOG_TYPE_DEFAULT))
        {
          v15 = v12;
        }

        else
        {
          v15 = v12 & 0xFFFFFFFE;
        }

        if (v15)
        {
          v16 = *v10[1];
          v17 = *(v10 + 4);
          v19[1] = 136316162;
          v20 = "";
          v21 = 2112;
          v22 = a3;
          v23 = 2112;
          v24 = a1;
          v25 = 1024;
          v26 = v16;
          v27 = 1024;
          v28 = v17;
          v18 = _os_log_send_and_compose_impl();
          LOBYTE(v12) = v19[0];
        }

        else
        {
          v18 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 0, v18, v18 != &v29, v12, v13, v14);
      }
    }
  }
}

void DumpAllRegisteredVariablesDictionaryApplierFunction(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v18[0] = 0;
      os_log_and_send_and_compose_flags = fig_log_emitter_get_os_log_and_send_and_compose_flags(0, v18);
      v11 = v18[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v11;
      }

      else
      {
        v14 = v11 & 0xFFFFFFFE;
      }

      if (v14)
      {
        v15 = *ValueAtIndex[1];
        v16 = *(ValueAtIndex + 4);
        v18[1] = 136316162;
        v19 = "";
        v20 = 2112;
        v21 = a3;
        v22 = 2112;
        v23 = a1;
        v24 = 1024;
        v25 = v15;
        v26 = 1024;
        v27 = v16;
        v17 = _os_log_send_and_compose_impl();
        LOBYTE(v11) = v18[0];
      }

      else
      {
        v17 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1u, 0, v17, v17 != &v28, v11, v12, v13);
    }
  }
}

uint64_t fig_note_configure_external_log_file(const __CFString *a1)
{
  sExternalEchoToOSLog = CFStringCompare(a1, @"external_no_echo_oslog", 1uLL) == kCFCompareEqualTo;
  if (CFStringCompare(a1, @"public", 1uLL))
  {
    sPublicLogFileInUse = 0;
    v2 = CFPreferencesCopyAppValue(@"fig_notes_log", @"com.apple.coremedia");
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFStringGetTypeID())
      {
        CFStringGetCString(v3, sExternalLogfilePath, 1024, 0x8000100u);
      }

      CFRelease(v3);
    }
  }

  else
  {
    sPublicLogFileInUse = 1;
  }

  v5 = CFPreferencesCopyAppValue(@"fig_notes_log_limit", @"com.apple.coremedia");
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      sExternalLogfileSizeLimit = CFStringGetIntValue(v6);
    }

    else
    {
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt64Type, &sExternalLogfileSizeLimit);
      }
    }

    if (sExternalLogfileSizeLimit && sExternalLogfileSizeLimit < 0x10000)
    {
      sExternalLogfileSizeLimit = 0x10000;
    }

    CFRelease(v6);
  }

  return fig_note_open_external_log_file();
}

uint64_t initialize_logRingBuffer()
{
  result = FigDebugIsInternalBuild();
  if (result)
  {
    byte_1ED4CC168 = 1;
    v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    result = dispatch_queue_create("com.apple.coremedia.fig_note.ring", v1);
    qword_1ED4CC188 = result;
  }

  else
  {
    byte_1ED4CC168 = 0;
  }

  return result;
}

size_t FigTimeCodeFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v9 = 0;
  v13 = figTimeCodeFormatDescriptionFinalize;
  v12 = figTimeCodeFormatDescriptionCopyDebugDesc;
  v10 = 32;
  v11 = figTimeCodeFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x746D6364u, &v9, a3, a4, a5, a6, a7, a8);
}

OSStatus CMTimeCodeFormatDescriptionCreate(CFAllocatorRef allocator, CMTimeCodeFormatType timeCodeFormatType, CMTime *frameDuration, uint32_t frameQuanta, uint32_t flags, CFDictionaryRef extensions, CMTimeCodeFormatDescriptionRef *formatDescriptionOut)
{
  cf = 0;
  if (!formatDescriptionOut)
  {
    v17 = v8;
    v18 = 144;
LABEL_17:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", v18, v17, formatDescriptionOut, v7);
  }

  if (timeCodeFormatType > 1952658995)
  {
    if (timeCodeFormatType == 1952658996)
    {
      goto LABEL_9;
    }

    v16 = 1953325924;
  }

  else
  {
    if (timeCodeFormatType == 1668166450)
    {
      goto LABEL_9;
    }

    v16 = 1668167220;
  }

  if (timeCodeFormatType != v16)
  {
    v17 = v8;
    v18 = 152;
    goto LABEL_17;
  }

LABEL_9:
  if ((frameDuration->flags & 1) == 0)
  {
    v17 = v8;
    v18 = 157;
    goto LABEL_17;
  }

  if (!frameQuanta)
  {
    v17 = v8;
    v18 = 162;
    goto LABEL_17;
  }

  FigThreadRunOnce(&sFigTimeCodeFormatDescriptionRegisterOnce, FigTimeCodeFormatDescriptionRegisterOnce);
  v29 = FigDerivedFormatDescriptionCreate(allocator, 0x746D6364, timeCodeFormatType, extensions, &cf, v19, v20, v21);
  if (v29)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(cf, v22, v23, v24, v25, v26, v27, v28);
    epoch = frameDuration->epoch;
    *DerivedStorage = *&frameDuration->value;
    *(DerivedStorage + 16) = epoch;
    *(DerivedStorage + 24) = frameQuanta;
    *(DerivedStorage + 28) = flags;
    *formatDescriptionOut = cf;
  }

  return v29;
}

CMTime *__cdecl CMTimeCodeFormatDescriptionGetFrameDuration(CMTime *__return_ptr retstr, CMTimeCodeFormatDescriptionRef timeCodeFormatDescription)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (timeCodeFormatDescription)
  {
    result = FigDerivedFormatDescriptionGetDerivedStorage(timeCodeFormatDescription, v2, v3, v4, v5, v6, v7, v8);
    *&retstr->value = *&result->value;
    retstr->epoch = result->epoch;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0xC0, v9, v7, v8);
  }

  return result;
}

uint32_t CMTimeCodeFormatDescriptionGetFrameQuanta(CMTimeCodeFormatDescriptionRef timeCodeFormatDescription)
{
  if (timeCodeFormatDescription)
  {
    return *(FigDerivedFormatDescriptionGetDerivedStorage(timeCodeFormatDescription, v1, v2, v3, v4, v5, v6, v7) + 24);
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0xD1, v8, v6, v7);
  return 0;
}

uint32_t CMTimeCodeFormatDescriptionGetTimeCodeFlags(CMTimeCodeFormatDescriptionRef desc)
{
  if (desc)
  {
    return *(FigDerivedFormatDescriptionGetDerivedStorage(desc, v1, v2, v3, v4, v5, v6, v7) + 28);
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0xE2, v8, v6, v7);
  return 0;
}

__CFString *figTimeCodeFormatDescriptionCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v10, 0);
  v12 = CFGetAllocator(a1);
  v13 = *DerivedStorage;
  time.epoch = *(DerivedStorage + 16);
  *&time.value = v13;
  v14 = CMTimeCopyDescription(v12, &time);
  CFStringAppendFormat(Mutable, 0, @"\t\tframeDuration: %@", v14);
  CFRelease(v14);
  CFStringAppendFormat(Mutable, 0, @"\t\tframes/sec: %d", *(DerivedStorage + 24));
  CFStringAppendFormat(Mutable, 0, @"\t\ttcFlags: %d", *(DerivedStorage + 28));
  return Mutable;
}

BOOL figTimeCodeFormatDescriptionEqual(uint64_t a1, const opaqueCMFormatDescription *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  v11 = a1;
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  Extensions = CMFormatDescriptionGetExtensions(v11);
  v21 = FigDerivedFormatDescriptionGetDerivedStorage(a2, v14, v15, v16, v17, v18, v19, v20);
  v22 = CMFormatDescriptionGetExtensions(a2);
  LODWORD(v11) = CMFormatDescriptionGetMediaSubType(v11);
  if (v11 == CMFormatDescriptionGetMediaSubType(a2) && (v23 = *DerivedStorage, time1.epoch = *(DerivedStorage + 16), *&time1.value = v23, v24 = *v21, v26.epoch = *(v21 + 16), *&v26.value = v24, !CMTimeCompare(&time1, &v26)) && *(DerivedStorage + 24) == *(v21 + 24) && *(DerivedStorage + 28) == *(v21 + 28))
  {
    return FigFormatDescriptionExtensionsDictionariesEqualIgnoringKeys(Extensions, v22, a3, a4) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t FigSandboxRegistrationAssociateWithURL(FigSandboxRegistrationObjCWrapper *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    if (a2)
    {
      v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v2 = [[FigSandboxRegistrationObjCWrapper alloc] initWithRegistration:v2];
      if (v2)
      {
        objc_setAssociatedObject(a2, &urlSBRegKey, v2, 0x301);
        v5 = 0;
      }

      else
      {
        FigSandboxRegistrationAssociateWithURL_cold_1(&v7);
        v5 = v7;
      }
    }

    else
    {
      FigSandboxRegistrationAssociateWithURL_cold_2(&v8);
      v4 = 0;
      v2 = 0;
      v5 = v8;
    }
  }

  else
  {
    FigSandboxRegistrationAssociateWithURL_cold_3(&v9);
    v4 = 0;
    v5 = v9;
  }

  [v4 drain];
  return v5;
}

uint64_t FigGetSandboxRegistrationAssociatedWithURL(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = objc_autoreleasePoolPush();
      AssociatedObject = objc_getAssociatedObject(a1, &urlSBRegKey);
      if (AssociatedObject)
      {
        AssociatedObject = [AssociatedObject _sandboxRegistration];
      }

      *a2 = AssociatedObject;
      objc_autoreleasePoolPop(v4);
      return 0;
    }

    else
    {
      FigGetSandboxRegistrationAssociatedWithURL_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigGetSandboxRegistrationAssociatedWithURL_cold_2(&v8);
    return v8;
  }
}

uint64_t FigCreateBase32EncodedStringFromBytes(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, CFStringRef *a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {

        return figNumericsCreateEncodedStringFromBytes(a1, 5uLL, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", a2, a3, a4, a5);
      }

      else
      {
        FigCreateBase32EncodedStringFromBytes_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigCreateBase32EncodedStringFromBytes_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigCreateBase32EncodedStringFromBytes_cold_3(&v8);
    return v8;
  }
}

uint64_t figNumericsCreateEncodedStringFromBytes(const __CFAllocator *a1, unint64_t a2, char *__s, uint64_t a4, uint64_t a5, int a6, CFStringRef *a7)
{
  if (!(strlen(__s) >> a2))
  {
    figNumericsCreateEncodedStringFromBytes_cold_3(&v45);
    v23 = 0;
    v41 = v45;
    goto LABEL_28;
  }

  if (a6)
  {
    v14 = (a2 + 8 * a5 - 1) / a2 + 8;
  }

  else
  {
    v14 = (a2 + 8 * a5 - 1) / a2;
  }

  v15 = MEMORY[0x19A8D7200](a1, v14, 3272708871, 0);
  v23 = v15;
  if (!v15)
  {
    figNumericsCreateEncodedStringFromBytes_cold_2(&v44, v16, v17, v18, v19, v20, v21, v22);
    v41 = v44;
    goto LABEL_28;
  }

  if (a5)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v27 = *(a4 + v24) | (v27 << 8);
      if (v26 + 8 >= a2)
      {
        v28 = &v15[v25];
        v29 = 8 - a2 + v26;
        v26 += 8;
        do
        {
          *v28++ = __s[v27 >> v29];
          v26 -= a2;
          v27 &= ~(-1 << v29);
          ++v25;
          v29 -= a2;
        }

        while (v26 >= a2);
      }

      else
      {
        v26 += 8;
      }

      ++v24;
    }

    while (v24 != a5);
    if (v26)
    {
      v15[v25++] = __s[v27 << (a2 - v26)];
    }

    if (!a6)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v25 = 0;
  if (a6)
  {
LABEL_18:
    if (((v25 * a2) & 7) != 0)
    {
      v30 = a2 + a2 * v25;
      v31 = &v15[v25];
      do
      {
        *v31++ = 61;
        ++v25;
        v32 = (v30 & 7) == 0;
        v30 += a2;
      }

      while (!v32);
    }
  }

LABEL_22:
  v33 = CFStringCreateWithBytesNoCopy(a1, v15, v25, 0x8000100u, 0, a1);
  *a7 = v33;
  if (v33)
  {
    return 0;
  }

  figNumericsCreateEncodedStringFromBytes_cold_1(&v43, v34, v35, v36, v37, v38, v39, v40);
  v41 = v43;
LABEL_28:
  if (v41)
  {
    CFAllocatorDeallocate(a1, v23);
  }

  return v41;
}

uint64_t FigCreateBase64EncodedStringFromBytes(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, CFStringRef *a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {

        return figNumericsCreateEncodedStringFromBytes(a1, 6uLL, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", a2, a3, a4, a5);
      }

      else
      {
        FigCreateBase64EncodedStringFromBytes_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigCreateBase64EncodedStringFromBytes_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigCreateBase64EncodedStringFromBytes_cold_3(&v8);
    return v8;
  }
}

uint64_t FigCreateBase64EncodedStringFromCFData(const __CFAllocator *a1, CFDataRef theData, int a3, CFStringRef *a4)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);

    return FigCreateBase64EncodedStringFromBytes(a1, BytePtr, Length, a3, a4);
  }

  else
  {
    FigCreateBase64EncodedStringFromCFData_cold_1(&v11);
    return v11;
  }
}

uint64_t FigCreateHexStringFromCFData(const __CFAllocator *a1, const __CFData *a2, int a3, CFStringRef *a4)
{
  if (a4)
  {
    Mutable = CFStringCreateMutable(a1, 0);
    if (Mutable)
    {
      v16 = Mutable;
      if (a2)
      {
        if (CFDataGetLength(a2) >= 1)
        {
          BytePtr = CFDataGetBytePtr(a2);
          CFStringAppendFormat(v16, 0, @"0x");
          Length = CFDataGetLength(a2);
          v19 = Length;
          if (a3)
          {
            if (Length >= 1)
            {
              v20 = 0;
              do
              {
                CFStringAppendFormat(v16, 0, @"%02x", BytePtr[v20++]);
              }

              while (v20 < CFDataGetLength(a2));
            }
          }

          else if (Length >= 1)
          {
            v21 = BytePtr - 1;
            do
            {
              CFStringAppendFormat(v16, 0, @"%02x", v21[v19]);
            }

            while (v19-- > 1);
          }
        }

        v23 = 0;
      }

      else
      {
        FigCreateHexStringFromCFData_cold_1(&v25);
        v23 = v25;
      }

      *a4 = CFStringCreateCopy(a1, v16);
      CFRelease(v16);
    }

    else
    {
      FigCreateHexStringFromCFData_cold_2(&v26, v9, v10, v11, v12, v13, v14, v15);
      return v26;
    }
  }

  else
  {
    FigCreateHexStringFromCFData_cold_3(&v27);
    return v27;
  }

  return v23;
}

OSStatus CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(CFAllocatorRef allocator, const uint8_t *timeCodeDescriptionData, size_t size, CMTimeCodeDescriptionFlavor flavor, CMTimeCodeFormatDescriptionRef *formatDescriptionOut)
{
  v74 = *MEMORY[0x1E69E9840];
  memset(&v68, 0, sizeof(v68));
  formatDescriptionOuta = 0;
  if (timeCodeDescriptionData)
  {
    if (size < 0x22)
    {
      v9 = 445;
      goto LABEL_23;
    }

    if (!formatDescriptionOut)
    {
      v9 = 450;
LABEL_23:
      v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", v9, v7, v5, v6);
      v34 = 0;
LABEL_77:
      if (formatDescriptionOuta)
      {
        CFRelease(formatDescriptionOuta);
      }

      goto LABEL_79;
    }

    v63 = *(timeCodeDescriptionData + 7);
    v64 = *(timeCodeDescriptionData + 6);
    v14 = 34;
    v15 = timeCodeDescriptionData[32];
    v65 = *(timeCodeDescriptionData + 5);
    v66 = *(timeCodeDescriptionData + 1);
    do
    {
      if (v14 + 8 > size)
      {
        goto LABEL_14;
      }

      v16 = &timeCodeDescriptionData[v14];
      v17 = bswap32(*&timeCodeDescriptionData[v14]);
      v18 = v17 - 8;
      if (v17 < 8)
      {
        goto LABEL_14;
      }

      v14 += v17;
      if (v14 > size)
      {
        v35 = v7;
        v36 = 4294954582;
        v37 = 314;
        goto LABEL_26;
      }
    }

    while (*(v16 + 1) != 1701667182);
    if (v18 < 4)
    {
LABEL_14:
      v19 = 0;
      v20 = 0;
      v21 = 1;
      goto LABEL_15;
    }

    v41 = *(v16 + 4);
    v19 = v16 + 8;
    v20 = bswap32(v41) >> 16;
    if (v20 + 4 > v18)
    {
      v35 = v7;
      v36 = 4294954582;
      v37 = 333;
LABEL_26:
      v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v36, "(Fig)", v37, v35, v5, v6);
      v34 = 0;
      if (v31)
      {
        goto LABEL_77;
      }

      goto LABEL_65;
    }

    v21 = 2;
LABEL_15:
    v22 = v21;
    v23 = malloc_type_calloc(v21, 8uLL, 0x6004044C4A2DFuLL);
    if (!v23)
    {
      v35 = v7;
      v36 = 4294954583;
      v37 = 347;
      goto LABEL_26;
    }

    v24 = v23;
    v62 = v15;
    v27 = malloc_type_calloc(v22, 8uLL, 0xC0040B8AA526DuLL);
    if (!v27)
    {
      v38 = v7;
      v39 = 4294954583;
      v40 = 353;
LABEL_52:
      v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v39, "(Fig)", v40, v38, v25, v26);
LABEL_53:
      v34 = 0;
LABEL_54:
      v47 = 0;
      v48 = 8 * v22;
      do
      {
        v49 = v24[v47 / 8];
        if (v49)
        {
          CFRelease(v49);
        }

        v47 += 8;
      }

      while (v48 != v47);
      free(v24);
      if (v27)
      {
        v50 = 0;
        do
        {
          v51 = v27[v50 / 8];
          if (v51)
          {
            CFRelease(v51);
          }

          v50 += 8;
        }

        while (v48 != v50);
        free(v27);
      }

      v15 = v62;
      if (v31)
      {
        goto LABEL_77;
      }

LABEL_65:
      CMTimeMake(&v68, bswap32(v63), bswap32(v64));
      v54 = bswap32(v66);
      v55 = bswap32(v65);
      v56 = 1952658996;
      if (v54 == 1952658996)
      {
        v58 = 1668167220;
        v57 = (v55 & 8) == 0;
      }

      else
      {
        v56 = 1953325924;
        if (v54 != 1953325924)
        {
          v61 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", 0xA1, v7, v52, v53);
          if (v61)
          {
            v31 = v61;
            goto LABEL_77;
          }

          v60 = 0;
          v59 = 0;
          goto LABEL_73;
        }

        v57 = (v55 & 8) == 0;
        v58 = 1668166450;
      }

      if (v57)
      {
        v59 = v56;
      }

      else
      {
        v59 = v58;
      }

      v60 = v55 & 0xFFFFFFF7;
LABEL_73:
      keys = v68;
      v31 = CMTimeCodeFormatDescriptionCreate(allocator, v59, &keys, v15, v60, v34, &formatDescriptionOuta);
      if (v31)
      {
        goto LABEL_77;
      }

      *formatDescriptionOut = formatDescriptionOuta;
      formatDescriptionOuta = 0;
LABEL_79:
      if (v34)
      {
        CFRelease(v34);
      }

      return v31;
    }

    v28 = @"VerbatimSampleDescription";
    if (@"VerbatimSampleDescription")
    {
      v28 = CFRetain(@"VerbatimSampleDescription");
    }

    *v24 = v28;
    *v27 = CFDataCreate(allocator, timeCodeDescriptionData, size);
    if (!v19)
    {
      v42 = 1;
LABEL_47:
      if (v22 == v42)
      {
        v34 = CFDictionaryCreate(allocator, v24, v27, v22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v34)
        {
          v31 = 0;
        }

        else
        {
          v31 = -12711;
        }

        goto LABEL_54;
      }

      v38 = v7;
      v39 = 4294954584;
      v40 = 382;
      goto LABEL_52;
    }

    v29 = bswap32(*(v19 + 1));
    valuePtr = HIWORD(v29);
    keys.value = 0;
    *&keys.timescale = 0;
    values = 0;
    v73 = 0;
    cf = 0;
    v30 = FigCFStringCreateWithBytesAndMovieLangCode(allocator, v19 + 4, v20, HIWORD(v29), 0, &cf, v25, v26);
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      v33 = 0;
LABEL_39:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      if (v31)
      {
        goto LABEL_53;
      }

      v46 = @"TimeCode_SourceReferenceName";
      if (@"TimeCode_SourceReferenceName")
      {
        v46 = CFRetain(@"TimeCode_SourceReferenceName");
      }

      v24[1] = v46;
      v27[1] = v32;
      v42 = 2;
      goto LABEL_47;
    }

    keys.value = @"TimeCode_SourceReferenceName_Value";
    values = cf;
    v43 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    v33 = v43;
    if (v43)
    {
      *&keys.timescale = @"TimeCode_SourceReferenceName_LangCode";
      v73 = v43;
      v44 = CFDictionaryCreate(allocator, &keys, &values, 2, 0, MEMORY[0x1E695E9E8]);
      if (v44)
      {
        v32 = v44;
        v31 = 0;
        goto LABEL_39;
      }

      v45 = 263;
    }

    else
    {
      v45 = 249;
    }

    v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE57uLL, "(Fig)", v45, v7, v25, v26);
    v32 = 0;
    goto LABEL_39;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", 0x1B8, v7, v5, v6);
}

OSStatus CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(CFAllocatorRef allocator, CMBlockBufferRef timeCodeDescriptionBlockBuffer, CMTimeCodeDescriptionFlavor flavor, CMTimeCodeFormatDescriptionRef *formatDescriptionOut)
{
  cf = 0;
  if (timeCodeDescriptionBlockBuffer)
  {
    if (formatDescriptionOut)
    {
      dataPointerOut = 0;
      DataLength = CMBlockBufferGetDataLength(timeCodeDescriptionBlockBuffer);
      if (CMBlockBufferIsRangeContiguous(timeCodeDescriptionBlockBuffer, 0, 0))
      {
        v11 = CFRetain(timeCodeDescriptionBlockBuffer);
        cf = v11;
      }

      else
      {
        Contiguous = CMBlockBufferCreateContiguous(allocator, timeCodeDescriptionBlockBuffer, allocator, 0, 0, DataLength, 0, &cf);
        v11 = cf;
        if (Contiguous)
        {
          goto LABEL_12;
        }
      }

      CMBlockBufferGetDataPointer(v11, 0, 0, 0, &dataPointerOut);
      Contiguous = CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(allocator, dataPointerOut, DataLength, v12, formatDescriptionOut);
      v11 = cf;
LABEL_12:
      if (v11)
      {
        CFRelease(v11);
      }

      return Contiguous;
    }

    v14 = v6;
    v15 = 511;
  }

  else
  {
    v14 = v6;
    v15 = 506;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", v15, v14, v4, v5);
}

OSStatus CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(CFAllocatorRef allocator, CMTimeCodeFormatDescriptionRef timeCodeFormatDescription, CMTimeCodeDescriptionFlavor flavor, CMBlockBufferRef *blockBufferOut)
{
  v42 = 0;
  v40 = 0;
  ptr = 0;
  dataPointerOut = 0;
  theBuffer = 0;
  if (!timeCodeFormatDescription)
  {
    v14 = v6;
    v15 = 573;
LABEL_35:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", v15, v14, v4, v5);
    goto LABEL_36;
  }

  TypeID = CMFormatDescriptionGetTypeID();
  if (TypeID != CFGetTypeID(timeCodeFormatDescription))
  {
    v14 = v6;
    v15 = 578;
    goto LABEL_35;
  }

  if (CMFormatDescriptionGetMediaType(timeCodeFormatDescription) != 1953325924)
  {
    v14 = v6;
    v15 = 583;
    goto LABEL_35;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(timeCodeFormatDescription);
  v12 = MediaSubType;
  if (MediaSubType > 1952658995)
  {
    if (MediaSubType == 1952658996)
    {
      goto LABEL_13;
    }

    v13 = 1953325924;
  }

  else
  {
    if (MediaSubType == 1668166450)
    {
      goto LABEL_13;
    }

    v13 = 1668167220;
  }

  if (MediaSubType != v13)
  {
    v14 = v6;
    v15 = 592;
    goto LABEL_35;
  }

LABEL_13:
  if (!blockBufferOut)
  {
    v14 = v6;
    v15 = 597;
    goto LABEL_35;
  }

  CMTimeCodeFormatDescriptionGetFrameDuration(&v37, timeCodeFormatDescription);
  if ((v37.flags & 1) == 0)
  {
    v14 = v6;
    v15 = 603;
    goto LABEL_35;
  }

  value = v37.value;
  timescale = v37.timescale;
  FrameQuanta = CMTimeCodeFormatDescriptionGetFrameQuanta(timeCodeFormatDescription);
  if (!FrameQuanta)
  {
    v14 = v6;
    v15 = 609;
    goto LABEL_35;
  }

  v19 = FrameQuanta;
  TimeCodeFlags = CMTimeCodeFormatDescriptionGetTimeCodeFlags(timeCodeFormatDescription);
  Extension = CMFormatDescriptionGetExtension(timeCodeFormatDescription, @"VerbatimSampleDescription");
  if (!Extension || (v22 = Extension, v23 = CFGetTypeID(Extension), v23 != CFDataGetTypeID()))
  {
    v28 = CMFormatDescriptionGetExtension(timeCodeFormatDescription, @"TimeCode_SourceReferenceName");
    if (v28 && (v29 = v28, v30 = CFGetTypeID(v28), v30 == CFDictionaryGetTypeID()) && !createaSourceReferenceNameStringFromDictionary(allocator, v29, &v42, &ptr, &v40))
    {
      v31 = v40 + 12;
    }

    else
    {
      v31 = 0;
    }

    DataPointer = CMBlockBufferCreateWithMemoryBlock(allocator, 0, v31 + 34, allocator, 0, 0, v31 + 34, 1u, &theBuffer);
    if (DataPointer)
    {
      goto LABEL_36;
    }

    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_36;
    }

    if (v12 > 1952658995)
    {
      if (v12 == 1952658996 || v12 == 1953325924)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v12 == 1668166450)
      {
        TimeCodeFlags |= 8u;
        v12 = 1953325924;
        goto LABEL_47;
      }

      if (v12 == 1668167220)
      {
        TimeCodeFlags |= 8u;
        v12 = 1952658996;
LABEL_47:
        v33 = dataPointerOut;
        *dataPointerOut = bswap32(v31 + 34);
        *(v33 + 1) = bswap32(v12);
        *(v33 + 1) = 0xFFFF000000000000;
        *(v33 + 4) = 0;
        *(v33 + 5) = bswap32(TimeCodeFlags);
        *(v33 + 6) = bswap32(timescale);
        *(v33 + 7) = bswap32(value);
        v33[32] = v19;
        v33[33] = 0;
        if (v31)
        {
          v37.value = 0;
          DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0x22uLL, 0, 0, &v37);
          if (DataPointer)
          {
            goto LABEL_36;
          }

          *v37.value = bswap32(v31);
          *(v37.value + 4) = 1701667182;
          v34 = v37.value;
          v36 = v40;
          v35 = ptr;
          *(v37.value + 8) = bswap32(v40) >> 16;
          *(v34 + 10) = bswap32(v42) >> 16;
          memmove((v34 + 12), v35, v36);
        }

        v27 = 0;
        goto LABEL_51;
      }
    }

    v12 = 0;
    goto LABEL_47;
  }

  Length = CFDataGetLength(v22);
  BytePtr = CFDataGetBytePtr(v22);
  v37.value = 0;
  DataPointer = CMBlockBufferCreateWithMemoryBlock(allocator, 0, Length, allocator, 0, 0, Length, 1u, &theBuffer);
  if (DataPointer)
  {
LABEL_36:
    v27 = DataPointer;
    goto LABEL_37;
  }

  v27 = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v37);
  if (v27)
  {
    goto LABEL_37;
  }

  memcpy(v37.value, BytePtr, Length);
LABEL_51:
  *blockBufferOut = theBuffer;
  theBuffer = 0;
LABEL_37:
  if (ptr)
  {
    CFAllocatorDeallocate(allocator, ptr);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v27;
}

uint64_t createaSourceReferenceNameStringFromDictionary(uint64_t a1, CFDictionaryRef theDict, unsigned __int16 *a3, UInt8 **a4, void *a5)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"TimeCode_SourceReferenceName_Value");
  v11 = CFDictionaryGetValue(theDict, @"TimeCode_SourceReferenceName_LangCode");
  if (Value)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 4294954584;
  }

  v15 = 0;
  CFNumberGetValue(v11, kCFNumberSInt16Type, &valuePtr);
  v13 = FigCreateBytesFromCFStringAndMovieLangCode(a1, Value, valuePtr, 0, &v15);
  result = 0;
  *a3 = valuePtr;
  *a4 = v13;
  *a5 = v15;
  return result;
}

int8x8_t figBridge_FlipTimeCodeDescriptionData(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, CMBlockBufferFlags a7, CMBlockBufferRef *a8)
{
  if (!a1)
  {
    v9 = 775;
    goto LABEL_5;
  }

  if (a2 <= 0x21)
  {
    v9 = 780;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", v9, v8, a7, a8);
    return result;
  }

  result = vrev32_s8(*a1);
  v11 = bswap32(*(a1 + 8));
  v12 = bswap32(*(a1 + 12)) >> 16;
  v13 = bswap32(*(a1 + 14)) >> 16;
  v14 = vrev32q_s8(*(a1 + 16));
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 12) = v12;
  *(a1 + 14) = v13;
  *(a1 + 16) = v14;
  return result;
}

size_t FigBlockBufferHexDumpWithEmitter(OpaqueCMBlockBuffer *a1, size_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6, uint64_t (*a7)(uint64_t a1, const char *a2), uint64_t a8)
{
  v9 = a6;
  v91 = *MEMORY[0x1E69E9840];
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v14 = "%#6zx: ";
  if ((a6 & 2) == 0)
  {
    v14 = "%5zd: ";
  }

  v15 = "/* %#6zx: */ ";
  if ((a6 & 2) == 0)
  {
    v15 = "/* %5zd: */ ";
  }

  if ((a6 & 0x10) != 0)
  {
    v14 = v15;
  }

  v69 = v14;
  if ((a6 & 0x10) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = a6 & 1;
  }

  v72 = v16;
  if ((a6 & 0x10) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = (a6 >> 2) & 1;
  }

  v71 = v17;
  if ((a6 & 0x10) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = (((a6 >> 2) & 1) == 0) & (a6 >> 3);
  }

  result = CMBlockBufferGetDataLength(a1);
  offset = a2;
  v68 = result;
  v20 = result - a2;
  if (result > a2)
  {
    returnedPointerOut = 0;
    if (a7)
    {
      v21 = a7;
    }

    else
    {
      v21 = DefaultBBufHexDumpEmitter;
    }

    v73 = v21;
    v22 = 128;
    if (a5 < 0x80)
    {
      v22 = a5;
    }

    if (a5)
    {
      v23 = v22;
    }

    else
    {
      v23 = 16;
    }

    if (v20 >= a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = result - a2;
    }

    if (a3)
    {
      v20 = v24;
    }

    v25 = v23 * a4;
    if (v20 < v23 * a4)
    {
      v25 = v20;
    }

    if (a4 > 0)
    {
      v20 = v25;
    }

    v67 = v20;
    if (v20)
    {
      v76 = 0;
      v26 = 0;
      v27 = v20;
      v28 = a2;
      do
      {
        if (v27 >= v23)
        {
          v29 = v23;
        }

        else
        {
          v29 = v27;
        }

        if (v71)
        {
          v89 = 0u;
          v88 = 0u;
          v87 = 0u;
          v86 = 0u;
          v85 = 0u;
          v84 = 0u;
          v83 = 0u;
          v82 = 0u;
          if (v23)
          {
            v30 = 0;
            v31 = v29;
            v32 = v28;
            do
            {
              lengthAtOffsetOut = 0;
              CMBlockBufferGetDataPointer(a1, v32, &lengthAtOffsetOut, 0, 0);
              v33 = v31 >= lengthAtOffsetOut;
              v31 -= lengthAtOffsetOut;
              if (!v33)
              {
                break;
              }

              v30 += lengthAtOffsetOut;
              v32 += lengthAtOffsetOut;
              *(&v82 + v30 - 1) = 1;
            }

            while (v31);
          }
        }

        v34 = v27 - v29;
        CMBlockBufferAccessDataBytes(a1, v28, v29, temporaryBlock, &returnedPointerOut);
        if (v72 && v34)
        {
          if (!v23)
          {
LABEL_53:
            ++v26;
            v76 += v29;
            goto LABEL_129;
          }

          v35 = returnedPointerOut;
          if (v29 <= 1)
          {
            v36 = 1;
          }

          else
          {
            v36 = v29;
          }

          while (!*v35++)
          {
            if (!--v36)
            {
              goto LABEL_53;
            }
          }
        }

        v74 = v27 - v29;
        if (v26)
        {
          snprintf(__str, 0x400uLL, "    * %zd zeroes", v76);
          result = v73(a8, __str);
          if (result)
          {
            return result;
          }

          v76 = 0;
        }

        v38 = fmtcheck(v69, "%zd");
        v39 = snprintf(__str, 0x400uLL, v38, v28 - offset);
        v40 = 1024 - v39;
        if (v39 >= 1024)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        v42 = &__str[v41];
        if (v39 >= 1024)
        {
          v40 = 0;
        }

        v77 = v29;
        if (v23)
        {
          v43 = 0;
          if (v29 <= 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = v29;
          }

          do
          {
            v45 = v40;
            if ((v9 & 0x10) != 0)
            {
              v47 = snprintf(v42, v40, "0x%02X, ", returnedPointerOut[v43++]);
            }

            else
            {
              if (!v18 || (v46 = "", ((v43 + 1) & 3) == 0))
              {
                v46 = " ";
                if (*(&v82 + v43))
                {
                  v46 = "|";
                }
              }

              v47 = snprintf(v42, v40, "%02X%s", returnedPointerOut[v43++], v46);
            }

            v40 = v45 - v47;
            if (v45 <= v47)
            {
              v48 = 0;
            }

            else
            {
              v48 = v47;
            }

            v42 += v48;
            if (v45 <= v47)
            {
              v40 = 0;
            }
          }

          while (v43 != v44);
        }

        v49 = v40;
        v50 = v77;
        if (v27 < v23)
        {
          do
          {
            if ((v9 & 0x10) != 0)
            {
              v53 = snprintf(v42, v49, "      ");
              ++v50;
            }

            else
            {
              v51 = (++v50 & 3) == 0 || v18 == 0;
              v52 = "";
              if (v51)
              {
                v52 = " ";
              }

              v53 = snprintf(v42, v49, "  %s", v52);
            }

            if (v49 <= v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = v53;
            }

            v42 += v54;
            if (v49 <= v53)
            {
              v49 = 0;
            }

            else
            {
              v49 -= v53;
            }
          }

          while (v50 != v23);
        }

        v55 = snprintf(v42, v49, "  ");
        if (v49 <= v55)
        {
          v56 = 0;
        }

        else
        {
          v56 = v55;
        }

        v57 = &v42[v56];
        if (v49 <= v55)
        {
          v58 = 0;
        }

        else
        {
          v58 = v49 - v55;
        }

        if ((v9 & 0x10) != 0)
        {
        }

        result = v73(a8, __str);
        v34 = v74;
        if (result)
        {
          return result;
        }

        v26 = 0;
LABEL_129:
        v28 += v29;
        v27 = v34;
      }

      while (v34);
    }

    if (v67 + offset < v68)
    {
      v73(a8, "  ...");
    }

    return v73(a8, 0);
  }

  return result;
}

uint64_t DefaultBBufHexDumpEmitter(uint64_t a1, const char *a2)
{
  if (a2)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s\n", a2);
  }

  return 0;
}

uint64_t cfStringBBufHexDumpEmitter(__CFString *a1, uint64_t a2)
{
  if (a2)
  {
    CFStringAppendFormat(a1, 0, @"%s\n", a2);
  }

  return 0;
}

uint64_t FigBlockBufferCompare(OpaqueCMBlockBuffer *a1, OpaqueCMBlockBuffer *a2)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  v5 = CMBlockBufferGetDataLength(a2);
  if (DataLength == v5)
  {
    v6 = 0;
    while (1)
    {
      v12 = 0;
      lengthAtOffsetOut = 0;
      v10 = 0;
      dataPointerOut = 0;
      CMBlockBufferGetDataPointer(a1, v6, &lengthAtOffsetOut, 0, &dataPointerOut);
      CMBlockBufferGetDataPointer(a2, v6, &v12, 0, &v10);
      v7 = lengthAtOffsetOut >= v12 ? v12 : lengthAtOffsetOut;
      if (!v7)
      {
        break;
      }

      result = memcmp(dataPointerOut, v10, v7);
      v6 += v7;
      if (result)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6 >= DataLength;
      }

      if (v9)
      {
        return result;
      }
    }

    if (lengthAtOffsetOut == v12)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (DataLength > v5)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t FigCreateCFDataWithBlockBufferNoCopy(const __CFAllocator *a1, CMBlockBufferRef theBuffer, size_t offset, unint64_t a4, CFDataRef *a5)
{
  if (!a5)
  {
    FigCreateCFDataWithBlockBufferNoCopy_cold_3(&context);
    return LODWORD(context.version);
  }

  dataPointerOut = 0;
  v13 = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, offset, &v13, 0, &dataPointerOut);
  if (result)
  {
    v10 = 0;
    goto LABEL_9;
  }

  if (!a4)
  {
    a4 = v13;
LABEL_7:
    context.version = 0;
    context.info = theBuffer;
    context.retain = MEMORY[0x1E695D7C8];
    context.release = MEMORY[0x1E695D7C0];
    context.copyDescription = 0;
    context.deallocate = BBufUtilDummyDeallocate;
    context.preferredSize = 0;
    context.allocate = BBufUtilDummyAllocate;
    context.reallocate = 0;
    v11 = CFAllocatorCreate(a1, &context);
    if (v11)
    {
      v12 = v11;
      v10 = CFDataCreateWithBytesNoCopy(a1, dataPointerOut, a4, v11);
      CFRelease(v12);
      result = 0;
    }

    else
    {
      FigCreateCFDataWithBlockBufferNoCopy_cold_2(&v16);
      v10 = 0;
      result = v16;
    }

    goto LABEL_9;
  }

  if (v13 >= a4)
  {
    goto LABEL_7;
  }

  FigCreateCFDataWithBlockBufferNoCopy_cold_1(&context);
  v10 = 0;
  result = LODWORD(context.version);
LABEL_9:
  *a5 = v10;
  return result;
}

uint64_t FigCreateBlockBufferWithCFDataNoCopy(const __CFAllocator *a1, CFDataRef theData, unint64_t a3, size_t a4, CMBlockBufferRef *a5)
{
  blockBufferOut = 0;
  if (!theData)
  {
    v14 = FigCreateBlockBufferWithCFDataNoCopy_cold_6(a5, &customBlockSource);
    version = customBlockSource.version;
    if (v14)
    {
      return version;
    }

    goto LABEL_12;
  }

  if (!a5)
  {
    FigCreateBlockBufferWithCFDataNoCopy_cold_5(&customBlockSource);
    return customBlockSource.version;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr)
  {
    FigCreateBlockBufferWithCFDataNoCopy_cold_4(&customBlockSource);
    goto LABEL_20;
  }

  if (Length <= a3)
  {
    FigCreateBlockBufferWithCFDataNoCopy_cold_1(&customBlockSource);
    goto LABEL_20;
  }

  if (!a4)
  {
    a4 = Length - a3;
    goto LABEL_10;
  }

  if (Length < a4)
  {
    FigCreateBlockBufferWithCFDataNoCopy_cold_3(&customBlockSource);
    goto LABEL_20;
  }

  if (Length - a4 >= a3)
  {
LABEL_10:
    customBlockSource.version = 0;
    customBlockSource.AllocateBlock = 0;
    customBlockSource.FreeBlock = BBufUtilCFDataReleaser;
    customBlockSource.refCon = CFRetain(theData);
    version = CMBlockBufferCreateWithMemoryBlock(a1, &BytePtr[a3], a4, 0, &customBlockSource, 0, a4, 0, &blockBufferOut);
    if (version)
    {
      CFRelease(theData);
    }

    goto LABEL_12;
  }

  FigCreateBlockBufferWithCFDataNoCopy_cold_2(&customBlockSource);
LABEL_20:
  version = customBlockSource.version;
LABEL_12:
  *a5 = blockBufferOut;
  return version;
}

uint64_t FigCreateBlockBufferCopyingMemoryBlock(CFAllocatorRef blockAllocator, const void *a2, size_t dataLength, CMBlockBufferRef *a4)
{
  destinationBuffer = 0;
  v7 = CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, dataLength, blockAllocator, 0, 0, dataLength, 1u, &destinationBuffer);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = CMBlockBufferReplaceDataBytes(a2, destinationBuffer, 0, dataLength);
    if (!v8)
    {
      *a4 = destinationBuffer;
      return v8;
    }
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v8;
}

void CMMemoryPoolInvalidate(CMMemoryPoolRef pool)
{
  v1 = *(pool + 2);
  if (v1)
  {
    FigSimpleMutexLock(*(v1 + 56));
    if (*(v1 + 16))
    {
      *(v1 + 16) = 0;
      poolBlockState_FreeBlocks(v1, 1, 0);
    }

    v2 = *(v1 + 56);

    FigSimpleMutexUnlock(v2);
  }
}

void poolBlockState_FreeBlocks(uint64_t a1, int a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    UpTimeNanoseconds = 0;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (UpTimeNanoseconds < *(a1 + 48))
    {
      return;
    }
  }

  Count = CFArrayGetCount(*(a1 + 72));
  if (Count < 1)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a2)
    {
      goto LABEL_25;
    }

    return;
  }

  v8 = Count + 1;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v8 - 2);
    v11 = ValueAtIndex;
    if (*(ValueAtIndex + 8))
    {
      v12 = ValueAtIndex[3];
LABEL_10:
      if (v9 >= v12)
      {
        v9 = v12;
      }

      if (a2)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    if (a2 != 1)
    {
      v12 = ValueAtIndex[3];
      if (v12 >= UpTimeNanoseconds)
      {
        goto LABEL_10;
      }
    }

    poolBlockState_DeallocateVMMemory(ValueAtIndex);
    CFArrayRemoveValueAtIndex(*(a1 + 72), v8 - 2);
    CFDictionaryRemoveValue(*(a1 + 80), *v11);
    poolBlockState_postForgottenSerialNumber(a1, v11);
    free(v11);
    if (a2)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (((v8 - 2) & 0xF) == 0)
    {
      v13 = FigGetUpTimeNanoseconds() - UpTimeNanoseconds;
      if (a3 && v13 >= 5000001)
      {
        *a3 = 1;
        return;
      }

      if (v13 >= 5000001)
      {
        return;
      }
    }

LABEL_21:
    --v8;
  }

  while (v8 > 1);
  if (a2)
  {
    return;
  }

LABEL_25:
  v14 = UpTimeNanoseconds + 5000000;
  if (v9 > UpTimeNanoseconds + 5000000)
  {
    v14 = v9;
  }

  *(a1 + 48) = v14;
}

uint64_t RegisterFigMemoryPoolType()
{
  result = _CFRuntimeRegisterClass();
  sFigMemoryPoolID = result;
  return result;
}

void *poolingAllocator_Reallocate(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock(*(a4 + 56));
  Value = CFDictionaryGetValue(*(a4 + 64), a1);
  if (Value)
  {
    v8 = Value[1];
    FigSimpleMutexUnlock(*(a4 + 56));
    Internal = poolBlockState_AllocateInternal(a2, a4, 0, 0);
    v10 = Internal;
    if (Internal)
    {
      if (v8 >= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = v8;
      }

      memcpy(Internal, a1, v11);
      poolingAllocator_Deallocate(a1, a4);
    }
  }

  else
  {
    FigSimpleMutexUnlock(*(a4 + 56));
    return 0;
  }

  return v10;
}

uint64_t poolingAllocator_Deallocate(const void *a1, uint64_t a2)
{
  FigSimpleMutexLock(*(a2 + 56));
  Value = CFDictionaryGetValue(*(a2 + 64), a1);
  if (Value)
  {
    poolBlockState_DecrementUseCountInternal(a2, Value);
  }

  poolBlockState_FreeBlocks(a2, 0, 0);
  v5 = *(a2 + 56);

  return FigSimpleMutexUnlock(v5);
}

uint64_t poolBlockState_Create(const __CFAllocator *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, const void *a6, const void *a7, void *a8)
{
  v37 = *MEMORY[0x1E69E9840];
  memset(&valueCallBacks, 0, sizeof(valueCallBacks));
  memset(&callBacks, 0, sizeof(callBacks));
  if (qword_1ED4CCB50 != -1)
  {
    poolBlockState_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    poolBlockState_Create_cold_8(__str);
    return *__str;
  }

  v17 = Instance;
  *(Instance + 16) = a4;
  *(Instance + 24) = a5;
  *(Instance + 32) = a3;
  if (a6)
  {
    v18 = CFRetain(a6);
  }

  else
  {
    v18 = 0;
  }

  v17[5] = v18;
  v19 = FigSimpleMutexCreate();
  v17[7] = v19;
  if (a2)
  {
    v17[12] = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
    v19 = v17[7];
  }

  if (!v19)
  {
    poolBlockState_Create_cold_7(__str);
LABEL_29:
    v24 = *__str;
    goto LABEL_30;
  }

  if (a7)
  {
    Value = FigCFDictionaryGetValue(a7);
    if (Value)
    {
      Value = CFRetain(Value);
    }

    v17[13] = Value;
  }

  valueCallBacks.copyDescription = poolBlockState_copyBlockInfoDescription;
  v21 = CFDictionaryCreateMutable(a1, 0, 0, &valueCallBacks);
  v17[8] = v21;
  if (!v21)
  {
    poolBlockState_Create_cold_6(__str);
    goto LABEL_29;
  }

  callBacks.copyDescription = poolBlockState_copyBlockInfoDescription;
  v22 = CFArrayCreateMutable(a1, 0, &callBacks);
  v17[9] = v22;
  if (!v22)
  {
    poolBlockState_Create_cold_5(__str);
    goto LABEL_29;
  }

  v23 = CFDictionaryCreateMutable(a1, 0, 0, &valueCallBacks);
  v17[10] = v23;
  if (!v23)
  {
    poolBlockState_Create_cold_4(__str);
    goto LABEL_29;
  }

  v17[11] = *MEMORY[0x1E69E9AC8];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *__str = 0u;
  if (v17[14] || v17[15])
  {
    goto LABEL_19;
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.memorypool.ageout.%p", v17);
  v26 = FigDispatchQueueCreateWithPriority(__str, 0, 0);
  v17[14] = v26;
  if (!v26)
  {
    v28 = 1012;
LABEL_33:
    if (poolBlockState_Create_cold_2(v28))
    {
      goto LABEL_19;
    }

    v24 = v31;
LABEL_30:
    CFRelease(v17);
    return v24;
  }

  v27 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v26);
  v17[15] = v27;
  if (!v27)
  {
    v28 = 1015;
    goto LABEL_33;
  }

  poolBlockState_Create_cold_3();
LABEL_19:
  v24 = 0;
  *a8 = v17;
  return v24;
}

BOOL FigMemoryPoolIsPoolAllocator(const __CFAllocator *a1)
{
  memset(&v2, 0, sizeof(v2));
  result = 0;
  if (a1)
  {
    CFAllocatorGetContext(a1, &v2);
    if (v2.allocate == poolingAllocator_Allocate)
    {
      return 1;
    }
  }

  return result;
}

void CMMemoryPoolFlush(CMMemoryPoolRef pool)
{
  v1 = *(pool + 2);
  if (v1)
  {
    FigSimpleMutexLock(*(v1 + 56));
    if (*(v1 + 16))
    {
      poolBlockState_FreeBlocks(v1, 1, 0);
    }

    v2 = *(v1 + 56);

    FigSimpleMutexUnlock(v2);
  }
}

uint64_t FigMemoryPoolCopyStats(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 16);
      FigSimpleMutexLock(*(v3 + 56));
      Count = CFDictionaryGetCount(*(v3 + 64));
      FigSimpleMutexUnlock(*(v3 + 56));
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32(Mutable, @"FigMemoryPool_NumberOfBlocksInUse", Count, v6, v7, v8, v9, v10);
      result = 0;
      *a2 = Mutable;
    }

    else
    {
      FigMemoryPoolCopyStats_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    FigMemoryPoolCopyStats_cold_2(&v13);
    return v13;
  }

  return result;
}

CFNumberRef CMMemoryPoolCreateBlockBufferWithOptions(uint64_t a1, size_t a2, char a3, uint64_t a4, CMBlockBufferRef *a5)
{
  valuePtr = 0;
  theBuffer = 0;
  blockLength = 0;
  if (!a1)
  {
    CMMemoryPoolCreateBlockBufferWithOptions_cold_2(&dataPointerOut);
LABEL_15:
    v13 = dataPointerOut;
    goto LABEL_10;
  }

  v9 = poolBlockState_AllocateInternal(a2, *(a1 + 16), &valuePtr, &blockLength);
  if (!v9)
  {
    CMMemoryPoolCreateBlockBufferWithOptions_cold_1(&dataPointerOut);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *MEMORY[0x1E695E480];
  v12 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v9, blockLength, *(a1 + 24), 0, 0, a2, 0, &theBuffer);
  if (v12)
  {
    v13 = v12;
    CFAllocatorDeallocate(*(a1 + 24), v10);
LABEL_10:
    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

    return v13;
  }

  v13 = CFNumberCreate(v11, kCFNumberSInt64Type, &valuePtr);
  CMSetAttachment(theBuffer, @"MemoryPoolBlockSerialNumber", v13, 0);
  CMSetAttachment(theBuffer, @"OwningPoolBlockState", *(a1 + 16), 0);
  if (a3)
  {
    v14 = (a2 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
    v15 = v14 - a2;
    if (v14 > a2 && v14 <= blockLength)
    {
      dataPointerOut = 0;
      CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
      v19 = v15;
      bzero(&dataPointerOut[a2], v15);
      v16 = CFNumberCreate(v11, kCFNumberSInt32Type, &v19);
      CMSetAttachment(theBuffer, @"NumTrailingPaddingBytes", v16, 0);
      CFRelease(v16);
    }
  }

  *a5 = theBuffer;
  theBuffer = 0;
  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
    goto LABEL_10;
  }

  return v13;
}

void *poolBlockState_AllocateInternal(void *result, uint64_t a2, void *a3, void *a4)
{
  key = 0;
  if (result)
  {
    v7 = result;
    FigSimpleMutexLock(*(a2 + 56));
    v8 = &dword_19716620C;
    v9 = 6;
    while ((*v8 & (v7 >> 4)) == 0)
    {
      v8 += 2;
      if (!--v9)
      {
        goto LABEL_7;
      }
    }

    v10 = (v7 + *(v8 - 1) - 1) & *v8;
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_7:
    v10 = (v7 + 0x3FFF) & 0xFFFFC000;
LABEL_8:
    v11 = v10;
    v12 = *(a2 + 24);
    Count = CFArrayGetCount(*(a2 + 72));
    if (Count < 1)
    {
      v22 = 0;
LABEL_20:
      v25 = *(a2 + 104);
      if (v25)
      {
        Port = FigMachPortHolderGetPort(v25);
      }

      else
      {
        Port = 0;
      }

      if (FigVMPageAllocateWithOwnershipIdentity(&key, v11, Port, 2, v14, v15, v16, v17))
      {
        key = 0;
        if (!v22)
        {
LABEL_29:
          poolBlockState_FreeBlocks(a2, 0, 0);
          FigSimpleMutexUnlock(*(a2 + 56));
          return key;
        }

        if (!a3)
        {
LABEL_27:
          if (a4)
          {
            *a4 = v22[1];
          }

          goto LABEL_29;
        }

LABEL_26:
        *a3 = *v22;
        goto LABEL_27;
      }

      v22 = malloc_type_calloc(1uLL, 0x28uLL, 0x10800407C5467E8uLL);
      v30 = key;
      v22[1] = v11;
      v22[2] = v30;
      v22[3] = 0;
      *(v22 + 8) = 1;
      v31 = poolBlockState_newMemoryBlockSerialNumber();
      *v22 = v31;
      CFDictionarySetValue(*(a2 + 80), v31, v22);
      v28 = *(a2 + 64);
      v29 = key;
    }

    else
    {
      v18 = v11 >> 1;
      if (v11 >> 1 >= v12)
      {
        v18 = v12;
      }

      v19 = v18 + v11;
      v20 = Count + 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 72), v20 - 2);
        v22 = ValueAtIndex;
        v23 = ValueAtIndex[1];
        if (v23 >= v11 && v23 <= v19)
        {
          break;
        }

        if (--v20 < 2)
        {
          goto LABEL_20;
        }
      }

      key = ValueAtIndex[2];
      v27 = key;
      ++*(ValueAtIndex + 8);
      CFArrayRemoveValueAtIndex(*(a2 + 72), v20 - 2);
      v28 = *(a2 + 64);
      v29 = v27;
    }

    CFDictionarySetValue(v28, v29, v22);
    if (!a3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  return result;
}

unint64_t FigMemoryPoolCreateContiguousBlockBuffer(uint64_t a1, CFAllocatorRef structureAllocator, CFAllocatorRef blockAllocator, CMBlockBufferCustomBlockSource *customBlockSource, CMBlockBufferRef theBuffer, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags, CMBlockBufferRef *a9)
{
  v27 = 0;
  blockBufferOut = 0;
  dataPointerOut = 0;
  if (qword_1ED4CCB30 != -1)
  {
    FigMemoryPoolCreateContiguousBlockBuffer_cold_1();
  }

  if (_MergedGlobals_37)
  {
    DataPointer = CMBlockBufferCreateContiguous(structureAllocator, theBuffer, blockAllocator, customBlockSource, offsetToData, dataLength, flags, &blockBufferOut);
    if (DataPointer)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v18 = CMBlockBufferGetDataLength(theBuffer);
  if (v18 <= offsetToData)
  {
    v23 = 1992;
  }

  else
  {
    if (v18 - offsetToData >= dataLength)
    {
      if (!dataLength)
      {
        dataLength = v18 - offsetToData;
      }

      if ((flags & 2) != 0 || (v24 = 0, v25 = 0, FigBlockBufferGetDataPointerAndOrigin(theBuffer, offsetToData, &v25, 0, 0, &v27, &v24, v20)) || v25 < dataLength || !FigIsMemoryPoolBlockBuffer(theBuffer))
      {
        DataPointer = CMMemoryPoolCreateBlockBufferWithOptions(a1, dataLength, flags, v19, &blockBufferOut);
        if (DataPointer)
        {
          goto LABEL_20;
        }

        DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
        if (DataPointer)
        {
          goto LABEL_20;
        }

        DataPointer = CMBlockBufferCopyDataBytes(theBuffer, offsetToData, dataLength, dataPointerOut);
        if (DataPointer)
        {
          goto LABEL_20;
        }
      }

      else
      {
        DataPointer = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], theBuffer, offsetToData, dataLength, flags, &blockBufferOut);
        if (DataPointer)
        {
LABEL_20:
          v21 = DataPointer;
          goto LABEL_24;
        }
      }

LABEL_16:
      v21 = 0;
      *a9 = blockBufferOut;
      return v21;
    }

    v23 = 1993;
  }

  FigMemoryPoolCreateContiguousBlockBuffer_cold_2(v23, &v25);
  v21 = v25;
LABEL_24:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v21;
}

uint64_t fmp_readContiguousBlockBufferDefaultOnce(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault(@"do_not_use_memory_pool_for_creating_contiguous_block_buffers", @"com.apple.coremedia", 0);
  *a1 = result;
  return result;
}

size_t memoryOrigin_unregisterUseOfBlock(uint64_t a1, const void *a2)
{
  if (a2)
  {
    FigReentrantMutexLock(*(a1 + 16));
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      memoryOrigin_unregisterUseOfBlock_cold_1(Value, &v12, &v13);
      v9 = v12;
      v10 = v13;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0x9B5, v2, v7, v8);
      v10 = 0;
    }

    FigReentrantMutexUnlock(*(a1 + 16));
    if (!v9)
    {
      poolBlockState_DecrementBlockUseCount();
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    memoryOrigin_unregisterUseOfBlock_cold_2(&v13);
    return v13;
  }

  return v9;
}

uint64_t FigMemoryOriginUpdateRecipientStateFromXPCMessage(uint64_t a1, void *a2, const char *a3)
{
  cf = 0;
  if (!a1)
  {
    FigMemoryOriginUpdateRecipientStateFromXPCMessage_cold_2(&v9);
    return v9;
  }

  if (!a2)
  {
    FigMemoryOriginUpdateRecipientStateFromXPCMessage_cold_1(&v9);
    return v9;
  }

  v4 = FigXPCMessageCopyCFArray(a2, a3, &cf);
  v5 = cf;
  if (v4)
  {
    v6 = v4;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = memoryOrigin_unregisterUseOfMultipleBlocks(a1, cf);
  v5 = cf;
  if (cf)
  {
LABEL_5:
    CFRelease(v5);
  }

  return v6;
}

uint64_t FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2(void *a1, CFTypeRef *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "OriginObjectID");
  v4 = FigXPCServerRetainNeighborObjectFromID(qword_1ED4CCB38, uint64, a2);
  if (v4)
  {
    if (!a2)
    {
      return v4;
    }
  }

  else
  {
    v5 = CFGetTypeID(*a2);
    if (qword_1ED4CCB80 != -1)
    {
      FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2_cold_1();
    }

    if (v5 == qword_1ED4CCB88)
    {
      return 0;
    }

    FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2_cold_2(&v7);
    v4 = v7;
    if (!a2)
    {
      return v4;
    }
  }

  if (v4 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v4;
}

uint64_t FigMemoryOriginGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 40);
    }

    else
    {
      FigMemoryOriginGetObjectID_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigMemoryOriginGetObjectID_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigMemoryOriginServerCopyMemoryOriginForObjectID(void *a1, CFTypeRef *a2)
{
  cf = 0;
  if (!a2)
  {
    FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_5(&v7);
    return v7;
  }

  *a2 = 0;
  if (!a1)
  {
    FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_4(&v7);
    return v7;
  }

  if (!qword_1ED4CCB38)
  {
    FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_3(&v7);
    return v7;
  }

  v3 = FigXPCServerRetainNeighborObjectFromID(qword_1ED4CCB38, a1, &cf);
  if (!v3)
  {
    v4 = CFGetTypeID(cf);
    if (qword_1ED4CCB80 != -1)
    {
      FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_1();
    }

    if (v4 != qword_1ED4CCB88)
    {
      FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_2(&cf, &v7);
      return v7;
    }
  }

  *a2 = cf;
  return v3;
}

size_t CreateSubBlockBuffer(const void *a1, uint64_t a2, xpc_object_t xdict, size_t *a4, uint64_t a5, OpaqueCMBlockBuffer **a6)
{
  xdicta[16] = *MEMORY[0x1E69E9840];
  if (xdict)
  {
    value = xpc_dictionary_get_value(xdict, "OriginData");
    int64 = xpc_dictionary_get_int64(xdict, "BlockSerialNumber");
    offsetToData = xpc_dictionary_get_int64(xdict, "OffsetInOrigin");
    dataLength = xpc_dictionary_get_int64(xdict, "BlockBufferLength");
    v11 = xpc_dictionary_get_int64(xdict, "RoundTripBlockSerialNumber");
    uint64 = xpc_dictionary_get_uint64(xdict, "RoundTripOriginObjectID");
  }

  else
  {
    value = 0;
    offsetToData = *a4;
    dataLength = a4[1];
    uint64 = a4[3];
    v11 = a4[4];
    int64 = a4[2];
  }

  bufferReference = 0;
  v95 = int64;
  v85 = a2;
  v15 = *(a2 + 32);
  v84 = (a2 + 32);
  cf = 0;
  valuePtr = 0;
  idx = -1;
  FigSimpleMutexLock(*v15);
  ImportedBlockEntryForSerialNumber = receivedMemoryAllocator_findImportedBlockEntryForSerialNumber(v15, int64, &idx);
  if (ImportedBlockEntryForSerialNumber)
  {
    v21 = ImportedBlockEntryForSerialNumber;
    v22 = 0;
    v23 = 0;
    v24 = 0;
LABEL_6:
    valuePtr = v21[1];
    goto LABEL_47;
  }

  if (v11)
  {
    if (uint64)
    {
      FigMemoryOriginServerCopyMemoryOriginForObjectID(uint64, &cf);
      v25 = cf;
      if (cf)
      {
        FigReentrantMutexLock(*(cf + 2));
        v26 = CFDictionaryGetValue(v25[3], v11);
        if (!v26)
        {
          FigReentrantMutexUnlock(v25[2]);
          if (value)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        }

        v22 = CFRetain(*v26);
        FigReentrantMutexUnlock(v25[2]);
        if (v22)
        {
          xdicta[0] = 0;
          *v97 = 0;
          poolBlockState_IncrementBlockUseCountAndAccessMemory(v22, v11, xdicta, v97);
          receivedMemoryAllocator_tellOriginToDecrementUseCountOfBlock(v15, int64, v72, v73, v74, v75, v76, v77);
          v78 = MEMORY[0x19A8D7200](a1, 64, 0x10700402D552879, 0);
          v21 = v78;
          if (v78)
          {
            *v78 = 0u;
            *(v78 + 16) = 0u;
            *(v78 + 32) = 0u;
            *(v78 + 48) = 0u;
            *v78 = 0;
            *(v78 + 8) = v11;
            v79 = *v97;
            *(v78 + 16) = xdicta[0];
            *(v78 + 24) = v79;
            *(v78 + 48) = CFRetain(v22);
            *(v21 + 20) = 256;
            if (a1)
            {
              v80 = CFRetain(a1);
            }

            else
            {
              v80 = 0;
            }

            v23 = 0;
            v24 = 0;
            v21[7] = v80;
            v21[4] = 0;
            goto LABEL_6;
          }

          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          v39 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC355uLL, "<<<< MemoryPool >>>>", 0x104D, v6, v82, v83);
LABEL_109:
          v55 = 0;
          v24 = 0;
          v64 = v39 == 0;
          goto LABEL_110;
        }
      }
    }
  }

  if (value)
  {
LABEL_13:
    v21 = 0;
    goto LABEL_39;
  }

LABEL_15:
  xdicta[0] = 0;
  *v97 = 0;
  if (a5)
  {
    v27 = (a2 + 32);
    if (*(a5 + 12))
    {
      if (*(a5 + 24))
      {
        v28 = *(a5 + 16);
        if (v28)
        {
          count = xpc_array_get_count(v28);
          v30 = xpc_array_get_count(*(a5 + 24));
          v31 = 1;
          if (!count || v30 != count)
          {
            goto LABEL_31;
          }

          v32 = 0;
          while (xpc_array_get_int64(*(a5 + 16), v32) != int64)
          {
            if (count == ++v32)
            {
              goto LABEL_30;
            }
          }

          v33 = xpc_array_get_value(*(a5 + 24), v32);
          v34 = MEMORY[0x19A8DA4F0]();
          if (v33)
          {
            v35 = v34 == MEMORY[0x1E69E9F08];
          }

          else
          {
            v35 = 0;
          }

          if (v35)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_30:
      v31 = 1;
    }

    else
    {
      CreateSubBlockBuffer_cold_1(v84, a5, (a5 + 12), &region);
      v31 = region;
    }
  }

  else
  {
    v31 = 1;
    v27 = (a2 + 32);
  }

LABEL_31:
  FigXPCCreateBasicMessage(0x66746368u, *&(*v27)[4], xdicta);
  xpc_dictionary_set_int64(xdicta[0], "BlockSerialNumber", int64);
  if ((v31 & 1) == 0)
  {
    (*v27)[9].i32[0] += xpc_array_get_count(*(a5 + 16));
    xpc_dictionary_set_value(xdicta[0], "AdditionalBlockSerialNumbers", *(a5 + 16));
  }

  v36 = *v27;
  v36[9] = vadd_s32((*v27)[9], 0x100000001);
  v37 = FigXPCRemoteClientSendSyncMessageCreatingReply(*&v36[3], xdicta[0], v97);
  if (v37)
  {
    v39 = v37;
    v21 = 0;
    goto LABEL_37;
  }

  v33 = xpc_dictionary_get_value(*v97, "OriginData");
  if ((v31 & 1) == 0)
  {
    v38 = xpc_dictionary_get_value(*v97, "AdditionalDataObjects");
    *(a5 + 24) = v38;
    FigXPCRetain(v38);
  }

LABEL_36:
  v21 = FigXPCRetain(v33);
  v39 = 0;
LABEL_37:
  FigXPCRelease(*v97);
  FigXPCRelease(xdicta[0]);
  if (v39)
  {
    v22 = 0;
    goto LABEL_109;
  }

  value = v21;
LABEL_39:
  v42 = *(v15 + 40);
  region = 0;
  v43 = xpc_shmem_map(value, &region);
  if (v43 && region)
  {
    v44 = v43;
    v23 = v21;
    v45 = malloc_type_calloc(1uLL, 0x28uLL, 0x10800407C5467E8uLL);
    v46 = region;
    *(v45 + 1) = v44;
    *(v45 + 2) = v46;
    *(v45 + 3) = 0;
    *(v45 + 8) = 1;
    *v45 = poolBlockState_newMemoryBlockSerialNumber();
    *(v45 + 36) = 1;
    FigSimpleMutexLock(*(v42 + 56));
    CFDictionarySetValue(*(v42 + 80), *v45, v45);
    CFDictionarySetValue(*(v42 + 64), *(v45 + 2), v45);
    FigSimpleMutexUnlock(*(v42 + 56));
    v47 = *(v45 + 1);
    valuePtr = *v45;
    v22 = *(v45 + 2);
  }

  else
  {
    v22 = 0;
    if (!CreateSubBlockBuffer_cold_2())
    {
      v39 = LODWORD(xdicta[0]);
      goto LABEL_109;
    }

    v23 = v21;
    v47 = 0;
  }

  v48 = MEMORY[0x19A8D7200](a1, 64, 0x10700402D552879, 0);
  if (!v48)
  {
    CreateSubBlockBuffer_cold_4(xdicta);
    v22 = 0;
    v39 = LODWORD(xdicta[0]);
    v21 = v23;
    goto LABEL_109;
  }

  v21 = v48;
  *v48 = 0u;
  *(v48 + 16) = 0u;
  *(v48 + 32) = 0u;
  *(v48 + 48) = 0u;
  *(v48 + 16) = v22;
  *(v48 + 24) = v47;
  *v48 = v95;
  *(v48 + 8) = valuePtr;
  *(v48 + 48) = CFRetain(*(v15 + 40));
  *(v21 + 40) = 0;
  if (a1)
  {
    v49 = CFRetain(a1);
  }

  else
  {
    v49 = 0;
  }

  v21[7] = v49;
  v21[4] = 0;
  *(v21 + 41) = 0;
  CFArrayInsertValueAtIndex(*(v15 + 8), idx, v21);
  v22 = 0;
  v24 = 1;
LABEL_47:
  v50 = 1;
  if (!*(v21 + 40))
  {
    *(v21 + 40) = 1;
    v51 = CFDictionaryGetValue(*(v15 + 16), v21[2]);
    if (!v51)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      if (!Mutable)
      {
        CreateSubBlockBuffer_cold_3(xdicta);
        v55 = 0;
        v50 = 0;
        v39 = LODWORD(xdicta[0]);
        goto LABEL_107;
      }

      v51 = Mutable;
      CFDictionarySetValue(*(v15 + 16), v21[2], Mutable);
      CFRelease(v51);
    }

    CFArrayAppendValue(v51, v21);
    v50 = 0;
  }

  v53 = v21[4];
  if (v53)
  {
    v54 = FigCFWeakReferenceHolderCopyReferencedObject(v53);
    bufferReference = v54;
  }

  else
  {
    v54 = bufferReference;
  }

  v40 = offsetToData;
  if (!v54)
  {
    v56 = CMBlockBufferCreateWithMemoryBlock(a1, v21[2], v21[3], *(v85 + 24), 0, 0, v21[3], 0, &bufferReference);
    if (!v56)
    {
      v57 = *MEMORY[0x1E695E480];
      v58 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      CMSetAttachment(bufferReference, @"MemoryPoolBlockSerialNumber", v58, 0);
      if (v58)
      {
        CFRelease(v58);
      }

      CMSetAttachment(bufferReference, @"OwningPoolBlockState", v21[6], 0);
      if (*v21)
      {
        v59 = CFNumberCreate(v57, kCFNumberSInt64Type, &v95);
        CMSetAttachment(bufferReference, @"ImportedBlockSerialNumber", v59, 0);
        CFRelease(v59);
        v60 = CFNumberCreate(v57, kCFNumberSInt64Type, (v85 + 16));
        CMSetAttachment(bufferReference, @"RecipientObjectID", v60, 0);
        CFRelease(v60);
      }

      v61 = v21[4];
      if (v61)
      {
        CFRelease(v61);
      }

      v21[4] = FigCFWeakReferenceHolderCreateWithReferencedObject(bufferReference);
      v40 = offsetToData;
      if (offsetToData)
      {
        goto LABEL_57;
      }

LABEL_66:
      v62 = v21[3];
      v55 = bufferReference;
      v41 = dataLength;
      v21 = v23;
      if (v62 == dataLength)
      {
LABEL_69:
        v39 = 0;
        bufferReference = 0;
        goto LABEL_70;
      }

      goto LABEL_67;
    }

    v39 = v56;
    v55 = 0;
LABEL_107:
    v21 = v23;
    goto LABEL_70;
  }

  if (!offsetToData)
  {
    goto LABEL_66;
  }

LABEL_57:
  v55 = bufferReference;
  v41 = dataLength;
  v21 = v23;
LABEL_67:
  xdicta[0] = 0;
  v63 = CMBlockBufferCreateWithBufferReference(a1, v55, v40, v41, 0, xdicta);
  if (!v63)
  {
    CFRelease(bufferReference);
    v55 = xdicta[0];
    goto LABEL_69;
  }

  v39 = v63;
  v55 = 0;
LABEL_70:
  v64 = v39 == 0;
  if (bufferReference)
  {
    v65 = 1;
  }

  else
  {
    v65 = v39 == 0;
  }

  if (v50 || !v65)
  {
LABEL_110:
    receivedMemoryAllocator_tellOriginToDecrementUseCountOfBlock(*v84, v95, v40, v41, v17, v18, v19, v20);
    FigSimpleMutexUnlock(*v15);
    if (v64)
    {
      goto LABEL_84;
    }

    goto LABEL_76;
  }

  FigSimpleMutexUnlock(*v15);
  if (!v39)
  {
    goto LABEL_84;
  }

LABEL_76:
  v90 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v90, &type);
  v67 = v90;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v69 = v67;
  }

  else
  {
    v69 = v67 & 0xFFFFFFFE;
  }

  if (v69)
  {
    *v97 = 136315394;
    *&v97[4] = "memoryRecipient_createRecipientBlockBuffer";
    v98 = 1024;
    v99 = v39;
    v70 = _os_log_send_and_compose_impl();
    LOBYTE(v67) = v90;
  }

  else
  {
    v70 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v70, v70 != xdicta, v67, 0, v68);
  if (v24)
  {
    poolBlockState_DecrementBlockUseCount();
  }

LABEL_84:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (bufferReference)
  {
    CFRelease(bufferReference);
  }

  FigXPCRelease(v21);
  if (v39)
  {
    if (v55)
    {
      CFRelease(v55);
    }
  }

  else
  {
    *a6 = v55;
  }

  return v39;
}

size_t FigMemoryRecipientCopyBlockBufferFromXPCMessage(const __CFAllocator *a1, uint64_t a2, xpc_object_t xdict, char *key, CMBlockBufferRef *a5)
{
  targetBBuf = 0;
  blockBufferOut = 0;
  if (!a2)
  {
    FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_4(&v22);
LABEL_28:
    v18 = v22;
    goto LABEL_16;
  }

  if (!xdict)
  {
    FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_3(&v22);
    goto LABEL_28;
  }

  if (!key)
  {
    FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_2(&v22);
    goto LABEL_28;
  }

  if (!a5)
  {
    FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_1(&v22);
    return v22;
  }

  value = xpc_dictionary_get_value(xdict, key);
  if (!value)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v9 = value;
  v10 = xpc_dictionary_get_value(value, "SubBlockArray");
  if (v10)
  {
    v11 = v10;
    count = xpc_array_get_count(v10);
    v13 = CMBlockBufferCreateEmpty(a1, count, 0, &blockBufferOut);
    if (!v13)
    {
      if (count)
      {
        v14 = 0;
        while (1)
        {
          v15 = xpc_array_get_value(v11, v14);
          appended = CreateSubBlockBuffer(a1, a2, v15, 0, 0, &targetBBuf);
          v17 = targetBBuf;
          if (appended)
          {
            break;
          }

          appended = CMBlockBufferAppendBufferReference(blockBufferOut, targetBBuf, 0, 0, 0);
          if (appended)
          {
            break;
          }

          if (v17)
          {
            CFRelease(v17);
            targetBBuf = 0;
          }

          if (count == ++v14)
          {
            v18 = 0;
            goto LABEL_16;
          }
        }

        v18 = appended;
        if (v17)
        {
          CFRelease(v17);
        }

LABEL_16:
        if (!a5)
        {
          return v18;
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v13 = CreateSubBlockBuffer(a1, a2, v9, 0, 0, &blockBufferOut);
  }

  v18 = v13;
LABEL_21:
  *a5 = blockBufferOut;
  return v18;
}

uint64_t FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage(uint64_t a1, void *a2, const char *a3)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock(**(a1 + 32));
      if (CFArrayGetCount(*(*(a1 + 32) + 64)) < 1)
      {
        v6 = 0;
      }

      else
      {
        dispatch_source_set_timer(*(*(a1 + 32) + 56), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        v6 = FigXPCMessageSetCFArray(a2, a3, *(*(a1 + 32) + 64));
        if (!v6)
        {
          CFArrayRemoveAllValues(*(*(a1 + 32) + 64));
        }
      }

      FigSimpleMutexUnlock(**(a1 + 32));
    }

    else
    {
      FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage_cold_2(&v9);
    return v9;
  }

  return v6;
}

uint64_t FigMemoryRecipientAppendRecipientStateUpdateToIPCMessageData(uint64_t a1, _DWORD *a2, unint64_t a3, unint64_t *a4)
{
  if (!a1)
  {
    FigMemoryRecipientAppendRecipientStateUpdateToIPCMessageData_cold_1(&v23);
    v8 = 0;
    result = v23;
    if (!a4)
    {
      return result;
    }

    goto LABEL_15;
  }

  result = 0;
  v8 = 0;
  if (a2 && a3 >= 0xC)
  {
    v22 = 0;
    FigSimpleMutexLock(**(a1 + 32));
    Count = CFArrayGetCount(*(*(a1 + 32) + 64));
    if (Count < 1)
    {
      v8 = 0;
    }

    else
    {
      v16 = Count;
      v17 = 0;
      v18 = a3 - 8;
      v19 = 12;
      do
      {
        FigCFArrayGetInt64AtIndex(*(*(a1 + 32) + 64), 0, &v22, v11, v12, v13, v14, v15);
        CFArrayRemoveValueAtIndex(*(*(a1 + 32) + 64), 0);
        *&a2[2 * v17++ + 1] = v22;
        v20 = v19 + 8;
        if (!--v16)
        {
          break;
        }

        v21 = v19 > v18;
        v19 += 8;
      }

      while (!v21);
      v8 = v20 - 8;
      if (!v16)
      {
        dispatch_source_set_timer(*(*(a1 + 32) + 56), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      *a2 = v17;
    }

    FigSimpleMutexUnlock(**(a1 + 32));
    result = 0;
  }

  if (a4)
  {
LABEL_15:
    *a4 = v8;
  }

  return result;
}

size_t FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2(xpc_object_t xdict, void *a2, const char *a3, uint64_t **a4)
{
  v58 = *MEMORY[0x1E69E9840];
  if (FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_sRecipientRemoteClients != -1)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_1();
  }

  value = xpc_dictionary_get_value(xdict, "MemoryOriginEndpoint");
  if (!value)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_10(&context);
    return LODWORD(context.version);
  }

  v9 = value;
  if (MEMORY[0x19A8DA4F0]() != MEMORY[0x1E69E9E90])
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_2(&context);
    return LODWORD(context.version);
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "MemoryOriginServerToken");
  if (!uint64)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_9(&context);
    return LODWORD(context.version);
  }

  v11 = uint64;
  FigSimpleMutexLock(qword_1ED4CCB00);
  v12 = FigCFWeakReferenceTableCopyValue(qword_1ED4CCB08, v11);
  v13 = v12;
  if (v12)
  {
    Instance = CFRetain(v12);
    v15 = 0;
    v16 = 0;
    goto LABEL_39;
  }

  v46 = a2;
  v17 = FigCFWeakReferenceTableCopyValue(qword_1ED4CCB10, v11);
  v16 = v17;
  if (v17)
  {
    v15 = CFRetain(v17);
    v18 = *MEMORY[0x1E695E480];
    goto LABEL_15;
  }

  v47 = 0;
  v18 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"MemoryRecipient_ServerDied");
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DoNotMonitorConnection", *MEMORY[0x1E695E4D0]);
  v20 = FigXPCRemoteClientCreateWithXPCEndpoint("FigMemoryRecipient", v9, &MemoryRecipientCreateRemoteClientWithXPCEndpoint_sMemoryRecipientRemoteClientCallbacks, Mutable, &v47);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v20)
  {
    v15 = 0;
    if (!FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_3())
    {
      version_low = LODWORD(context.version);
      Instance = 0;
      goto LABEL_76;
    }
  }

  else
  {
    v15 = v47;
  }

  v21 = FigCFWeakReferenceTableAddValueAssociatedWithKey(qword_1ED4CCB10, v15, v11);
  if (v21)
  {
    version_low = v21;
    Instance = 0;
LABEL_76:
    FigSimpleMutexUnlock(qword_1ED4CCB00);
    if (!v15)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_15:
  v48 = 0;
  xdicta = 0;
  if (memoryRecipient_GetTypeID_sRegisterMemoryRecipientTypeOnce != -1)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_4();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_8(&context);
    version_low = LODWORD(context.version);
    a2 = v46;
    goto LABEL_37;
  }

  v22 = FigXPCCreateBasicMessage(0x63726538u, 0, &xdicta);
  if (v22 || (xpc_dictionary_set_string(xdicta, ".DebugName", a3), memset(buffer, 0, sizeof(buffer)), v23 = getpid(), proc_name(v23, buffer, 0x20u), xpc_dictionary_set_string(xdicta, ".ProcessName", buffer), v22 = FigXPCRemoteClientSendSyncMessageCreatingReply(v15, xdicta, &v48), v22))
  {
    version_low = v22;
    a2 = v46;
    goto LABEL_72;
  }

  v45 = a4;
  v24 = xpc_dictionary_get_uint64(v48, ".objectID");
  Instance[2] = v24;
  memset(&context, 0, sizeof(context));
  v25 = malloc_type_calloc(1uLL, 0x50uLL, 0x102004088C0405BuLL);
  if (!v25)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_7(&v54);
    version_low = v54;
    a2 = v46;
    goto LABEL_71;
  }

  v26 = v25;
  v27 = FigSimpleMutexCreate();
  *v26 = v27;
  if (!v27)
  {
    v43 = 3771;
LABEL_61:
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_5(v43, &v54);
    version_low = v54;
    goto LABEL_62;
  }

  v28 = CFArrayCreateMutable(v18, 0, 0);
  v26[1] = v28;
  if (!v28)
  {
    v43 = 3774;
    goto LABEL_61;
  }

  v29 = CFDictionaryCreateMutable(v18, 0, 0, MEMORY[0x1E695E9E8]);
  v26[2] = v29;
  if (!v29)
  {
    v43 = 3777;
    goto LABEL_61;
  }

  v30 = poolBlockState_Create(v18, 0, 0, 0, 0, @"ReceivedMemoryAllocatorPBS", 0, v26 + 5);
  if (v30)
  {
    version_low = v30;
LABEL_62:
    a2 = v46;
    receivedMemoryAllocator_ReleaseInfo(v26);
    a4 = v45;
    goto LABEL_71;
  }

  v26[3] = CFRetain(v15);
  v26[4] = v24;
  context.info = v26;
  context.release = receivedMemoryAllocator_ReleaseInfo;
  context.deallocate = receivedMemoryAllocator_Deallocate;
  v31 = CFAllocatorCreate(0, &context);
  if (!v31)
  {
    v43 = 3791;
    goto LABEL_61;
  }

  v32 = v31;
  label = 0;
  v54 = 0;
  cf = 0;
  v51 = 0;
  ServerPID = FigXPCRemoteClientGetServerPID(v15, &v51);
  if (!ServerPID)
  {
    FigServer_CopyProcessName(v51, &cf);
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(cf, 0x8000100u, &v54);
    v35 = "()";
    if (CStringPtrAndBufferToFree)
    {
      v35 = CStringPtrAndBufferToFree;
    }

    asprintf(&label, "com.apple.coremedia.memoryrecipient.use-count-batching.%s-%d", v35, v51);
    free(v54);
    if (cf)
    {
      CFRelease(cf);
    }

    v26[6] = dispatch_queue_create(label, 0);
    free(label);
    if (v26[6])
    {
      v36 = CFArrayCreateMutable(v18, 0, MEMORY[0x1E695E9C0]);
      v26[8] = v36;
      if (v36)
      {
        v37 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v26[6]);
        v26[7] = v37;
        a2 = v46;
        if (v37)
        {
          v38 = FigCFWeakReferenceHolderCreateWithReferencedObject(v32);
          dispatch_set_context(v26[7], v38);
          dispatch_set_finalizer_f(v26[7], receivedMemoryAllocator_finalizeUseCountUpdateTimer);
          v39 = v26[7];
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 0x40000000;
          handler[2] = __CreateReceivedMemoryAllocator_block_invoke;
          handler[3] = &__block_descriptor_tmp_127;
          handler[4] = v38;
          dispatch_source_set_event_handler(v39, handler);
          dispatch_source_set_timer(v26[7], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
          dispatch_resume(v26[7]);
          if (v38)
          {
            Instance[3] = v32;
            Instance[4] = v26;
            a4 = v45;
            goto LABEL_36;
          }

          v44 = 3848;
        }

        else
        {
          v44 = 3822;
        }

        goto LABEL_69;
      }

      v44 = 3819;
    }

    else
    {
      v44 = 3816;
    }

    a2 = v46;
LABEL_69:
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_5(v44, &v56);
    version_low = v56;
    a4 = v45;
    goto LABEL_70;
  }

  version_low = ServerPID;
  a4 = v45;
  a2 = v46;
LABEL_70:
  CFRelease(v32);
LABEL_71:
  if (!version_low)
  {
LABEL_36:
    version_low = FigXPCRemoteClientAssociateObject(v15, Instance, v24);
    if (!version_low)
    {
      goto LABEL_37;
    }
  }

LABEL_72:
  CFRelease(Instance);
  Instance = 0;
LABEL_37:
  FigXPCRelease(xdicta);
  FigXPCRelease(v48);
  if (version_low)
  {
    goto LABEL_76;
  }

  v41 = FigCFWeakReferenceTableAddValueAssociatedWithKey(qword_1ED4CCB08, Instance, v11);
  if (v41)
  {
    version_low = v41;
    goto LABEL_76;
  }

LABEL_39:
  xpc_dictionary_set_uint64(a2, "OriginObjectID", Instance[2]);
  *a4 = Instance;
  FigSimpleMutexUnlock(qword_1ED4CCB00);
  if (v13)
  {
    CFRelease(v13);
  }

  Instance = 0;
  version_low = 0;
  if (!v15)
  {
    goto LABEL_43;
  }

LABEL_42:
  CFRelease(v15);
LABEL_43:
  if (v16)
  {
    CFRelease(v16);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  return version_low;
}

uint64_t __FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_block_invoke()
{
  qword_1ED4CCB00 = FigSimpleMutexCreate();
  v0 = *MEMORY[0x1E695E480];
  FigCFWeakReferenceTableCreate(*MEMORY[0x1E695E480], 1, &qword_1ED4CCB08);

  return FigCFWeakReferenceTableCreate(v0, 1, &qword_1ED4CCB10);
}

void transactionThreadDestructor(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1)
    {
      v10[0] = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, v10, &type);
      v3 = v10[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v5 = v3;
      }

      else
      {
        v5 = v3 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v10[1] = 136315394;
        v11 = "transactionThreadDestructor";
        v12 = 2048;
        v13 = a1;
        v6 = _os_log_send_and_compose_impl();
        LOBYTE(v3) = v10[0];
      }

      else
      {
        v6 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v6, v6 != &v14, v3, 0, v4);
    }

    v7 = a1[1];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[2];
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t FigMemoryOriginCompleteTransaction(char a1)
{
  Value = FigThreadGetValue(qword_1ED4CCB48);
  v3 = Value;
  if (Value && *Value)
  {
    FigMemoryOriginCompleteTransaction_cold_2(Value, a1, &v8);
    v4 = v8;
  }

  else
  {
    v6 = FigMemoryOriginCompleteTransaction_cold_1(Value == 0, &v7);
    v4 = v7;
    if (v6)
    {
      return v4;
    }
  }

  FigCFArrayRemoveAllValues(v3[1]);
  FigCFArrayRemoveAllValues(v3[2]);
  *v3 = 0;
  return v4;
}

uint64_t FigMemoryRecipientCopyStats(uint64_t a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigSimpleMutexLock(**(a1 + 32));
  Count = CFDictionaryGetCount(*(*(a1 + 32) + 16));
  FigCFDictionarySetCFIndex(Mutable, @"FigMemoryRecipient_NumberOfBlocksInUse", Count, v6, v7, v8, v9, v10);
  FigCFDictionarySetInt32(Mutable, @"FigMemoryRecipient_NumberOfMessagesSentToFetchSharedMemoryBlocks", *(*(a1 + 32) + 76), v11, v12, v13, v14, v15);
  FigCFDictionarySetInt32(Mutable, @"FigMemoryRecipient_NumberOfSharedMemoryBlocksFetched", *(*(a1 + 32) + 72), v16, v17, v18, v19, v20);
  FigSimpleMutexUnlock(**(a1 + 32));
  *a2 = Mutable;
  return 0;
}

uint64_t poolBlockState_DeallocateVMMemory(uint64_t result)
{
  if (!*(result + 36))
  {
    JUMPOUT(0x19A8DA090);
  }

  if (*(result + 16))
  {
    return munmap(*(result + 16), *(result + 8));
  }

  return result;
}

void poolBlockState_postForgottenSerialNumber(uint64_t a1, uint64_t *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64(Mutable, @"pool_BlockSerialNumber", *a2, v5, v6, v7, v8, v9);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification(DefaultLocalCenter, @"pool_ForgetBlock", a1, Mutable);

  CFRelease(Mutable);
}

uint64_t figMemoryPoolInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void figMemoryPoolFinalize(OpaqueCMMemoryPool *a1)
{
  CMMemoryPoolInvalidate(a1);
  v2 = *(a1 + 3);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 3) = 0;
  }

  v3 = *(a1 + 2);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 2) = 0;
  }
}

__CFString *figMemoryPoolCopyDebugDesc(void *a1)
{
  v2 = a1[2];
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFCopyDescription(v2);
  v6 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"FigMemoryPool %p RC: %d poolingAllocator: %p %@", a1, v6, a1[3], v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

__CFString *poolBlockState_copyBlockInfoDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"info %p ptr %p size %zd, expiryNanos %lld BlockSN %016llx useCount %d", a1, *(a1 + 16), *(a1 + 8), *(a1 + 24), *a1, *(a1 + 32));
  return Mutable;
}

uint64_t poolBlockState_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double poolBlockState_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

pthread_mutex_t *poolBlockState_Finalize(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = a1[15];
    if (v3)
    {
      dispatch_release(v3);
      a1[15] = 0;
    }
  }

  v4 = a1[14];
  if (v4)
  {
    dispatch_release(v4);
    a1[14] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
    a1[5] = 0;
  }

  v9 = a1[12];
  if (v9)
  {
    CFRelease(v9);
    a1[12] = 0;
  }

  v10 = a1[13];
  if (v10)
  {
    CFRelease(v10);
    a1[13] = 0;
  }

  result = a1[7];
  if (result)
  {
    result = FigSimpleMutexDestroy(result);
    a1[7] = 0;
  }

  return result;
}

__CFString *poolBlockState_CopyFormattingDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  FigSimpleMutexLock(*(a1 + 56));
  v4 = CFGetRetainCount(a1);
  v5 = *(a1 + 40);
  Count = FigCFDictionaryGetCount(*(a1 + 64));
  v7 = *(a1 + 72);
  if (v7)
  {
    v7 = CFArrayGetCount(v7);
  }

  v8 = &stru_1F0B78830;
  if (v5)
  {
    v8 = v5;
  }

  CFStringAppendFormat(Mutable, 0, @"<PoolBlockState %p RC: %d %@ blocksInUse: %ld blocksForReuse: %ld>", a1, v4, v8, Count, v7);
  FigSimpleMutexUnlock(*(a1 + 56));
  return Mutable;
}

__CFString *poolBlockState_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  FigSimpleMutexLock(*(a1 + 56));
  v4 = CFGetRetainCount(a1);
  v5 = &stru_1F0B78830;
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  if (*(a1 + 16))
  {
    v6 = "recyclingEnabled";
  }

  else
  {
    v6 = "recyclingDisabled";
  }

  CFStringAppendFormat(Mutable, 0, @"PoolBlockState %p RC: %d %@ %s blocksInUse: %p %@ blocksForReuse: %p %@", a1, v4, v5, v6, *(a1 + 64), *(a1 + 64), *(a1 + 72), *(a1 + 72));
  FigSimpleMutexUnlock(*(a1 + 56));
  return Mutable;
}

void poolBlockState_finalizeAgeOutTimer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

unint64_t poolBlockState_newMemoryBlockSerialNumber()
{
  if (qword_1ED4CCB60 != -1)
  {
    poolBlockState_newMemoryBlockSerialNumber_cold_1();
  }

  return FigAtomicIncrement64(&qword_1ED4CCB68);
}

uint64_t poolBlockState_InitBlockSerialNumber(void *a1)
{
  result = getpid();
  *a1 = result << 47;
  return result;
}

uint64_t poolBlockState_IncrementBlockUseCountAndAccessMemory(uint64_t a1, const void *a2, void *a3, void *a4)
{
  FigSimpleMutexLock(*(a1 + 56));
  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  ++Value[8];
  v9 = *(Value + 1);
  *a3 = *(Value + 2);
  *a4 = v9;
  v10 = *(a1 + 56);

  return FigSimpleMutexUnlock(v10);
}

void memoryOrigin_disposeOriginEntry(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void __EnsureMemoryOriginServerStarted_block_invoke()
{
  v0 = getpid();
  qword_1ED4CCB70 = FigGetUpTimeNanoseconds() & 0x1FFFFFFFFFFLL | (v0 << 47);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v2 = Mutable;
    FigCFDictionarySetValue(Mutable, @"xpcServerOption_OptOutOfPurge", *MEMORY[0x1E695E4D0]);
    v3 = FigXPCServerStartWithNewXPCEndpoint("MemoryOriginServer", MemoryOriginServerStart_callbacks, v2, &qword_1ED4CCB38);
    CFRelease(v2);
  }

  else
  {
    __EnsureMemoryOriginServerStarted_block_invoke_cold_1(&v4);
    v3 = v4;
  }

  dword_1ED4CCB2C = v3;
}

double memoryOrigin_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t memoryOrigin_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, memoryOrigin_disposeEachOriginEntry, 0);
    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 24) = 0;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  free(*(a1 + 48));
  *(a1 + 48) = 0;
  free(*(a1 + 64));
  *(a1 + 64) = 0;
  v5 = *(a1 + 72);
  if (v5)
  {
    os_release(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 16);

  return FigReentrantMutexDestroy(v6);
}

void memoryOrigin_disposeEachOriginEntry(int a1, int *a2)
{
  if (a2[4] >= 1)
  {
    memoryOrigin_disposeEachOriginEntry_cold_1();
  }

  memoryOrigin_disposeOriginEntry(a2);
}

uint64_t receivedMemoryAllocator_compareBlockEntryWithSerialNumber(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (a1 != a3)
  {
    a2 = a1;
  }

  v5 = -1;
  if (a1 != a3)
  {
    v5 = 1;
  }

  v6 = 1;
  if (a1 != a3)
  {
    v6 = -1;
  }

  v7 = *a2;
  v8 = v3 < v7;
  if (v3 <= v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    return v5;
  }

  else
  {
    return v9;
  }
}

uint64_t memoryRecipient_NotificationFilter(int a1, CFTypeRef cf1, uint64_t a3, int a4)
{
  if (CFEqual(cf1, @"ForgetBlock"))
  {
    memoryRecipient_NotificationFilter_cold_1(a1, a4);
  }

  return 1;
}

void receivedMemoryAllocator_originDidForgetImportedBlockAtIndex(uint64_t a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), a2);
  ValueAtIndex[41] = 1;
  CFArrayRemoveValueAtIndex(*(a1 + 8), a2);
  if (!ValueAtIndex[40])
  {

    receivedMemoryAllocator_disposeReceivedMemoryEntry(ValueAtIndex);
  }
}

void receivedMemoryAllocator_disposeReceivedMemoryEntry(void *a1)
{
  if (a1)
  {
    receivedMemoryAllocator_disposeReceivedMemoryEntry_cold_1(a1);
  }
}

void *memoryRecipient_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void memoryRecipient_Finalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    FigSimpleMutexLock(**(a1 + 32));
    Count = CFArrayGetCount(*(*(a1 + 32) + 8));
    if (Count >= 1)
    {
      v3 = Count;
      do
      {
        receivedMemoryAllocator_originDidForgetImportedBlockAtIndex(*(a1 + 32), 0);
        --v3;
      }

      while (v3);
    }

    FigSimpleMutexUnlock(**(a1 + 32));
    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 24) = 0;
    }
  }
}

__CFString *memoryRecipient_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  FigSimpleMutexLock(**(a1 + 32));
  Count = CFArrayGetCount(*(*(a1 + 32) + 8));
  v4 = CFDictionaryGetCount(*(*(a1 + 32) + 16));
  CFStringAppendFormat(Mutable, 0, @"FigMemoryRecipient %p ObjectID %016llx receivedMemoryAllocator %p %ld memory blocks (%ld in use)", a1, *(a1 + 16), *(a1 + 24), Count, v4);
  FigSimpleMutexUnlock(**(a1 + 32));
  return Mutable;
}

void receivedMemoryAllocator_ReleaseInfo(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v10 = *(a1 + 56);
      if (v10)
      {
        dispatch_release(v10);
        *(a1 + 56) = 0;
      }

      receivedMemoryAllocator_sendPendingBatchOfBlockSNtoDecrementUseCount(a1);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 48) = 0;
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 64) = 0;
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      FigCFArrayApplyBlock(v5, &__block_literal_global_131);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 40) = 0;
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 8) = 0;
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 16) = 0;
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 24) = 0;
    }

    FigSimpleMutexDestroy(*a1);

    free(a1);
  }
}

void receivedMemoryAllocator_Deallocate(const void *a1, uint64_t a2)
{
  FigSimpleMutexLock(*a2);
  Value = CFDictionaryGetValue(*(a2 + 16), a1);
  if (Value && (v5 = Value, Count = CFArrayGetCount(Value), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    Mutable = 0;
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      v13 = FigCFWeakReferenceHolderCopyReferencedObject(ValueAtIndex[4]);
      if (!v13)
      {
        *(ValueAtIndex + 40) = 0;
        CFArrayRemoveValueAtIndex(v5, v8);
        if (v7 == 1)
        {
          CFDictionaryRemoveValue(*(a2 + 16), a1);
        }

        if (*(ValueAtIndex + 41))
        {
          receivedMemoryAllocator_disposeReceivedMemoryEntry(ValueAtIndex);
        }

        else
        {
          receivedMemoryAllocator_tellOriginToDecrementUseCountOfBlock(a2, *ValueAtIndex, v15, v16, v17, v18, v19, v20);
        }

        goto LABEL_11;
      }

      v14 = v13;
      if (*ValueAtIndex)
      {
        break;
      }

      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v10, 0, v11);
      }

      CFArrayAppendValue(Mutable, v14);
      CFRelease(v14);
      if (v7 == ++v8)
      {
        goto LABEL_11;
      }
    }

    FigSimpleMutexUnlock(*a2);
    CFRelease(v14);
    if (Mutable)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Mutable = 0;
LABEL_11:
    FigSimpleMutexUnlock(*a2);
    if (Mutable)
    {
LABEL_12:

      CFRelease(Mutable);
    }
  }
}

void receivedMemoryAllocator_finalizeUseCountUpdateTimer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void __CreateReceivedMemoryAllocator_block_invoke(uint64_t a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 32)))
  {
    __CreateReceivedMemoryAllocator_block_invoke_cold_1();
  }
}

CFTypeRef OUTLINED_FUNCTION_14_8(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

uint64_t FigTransportStreamGetClassID()
{
  if (_MergedGlobals_38 != -1)
  {
    FigTransportStreamGetClassID_cold_1();
  }

  return qword_1ED4CCB98;
}

size_t stream_getClassID(void *a1)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&stream_getClassID_sClassDesc, ClassID, 1, a1, v3, v4, v5, v6);
}

uint64_t FigTransportStreamGetTypeID()
{
  if (_MergedGlobals_38 != -1)
  {
    FigTransportStreamGetClassID_cold_1();
  }

  v1 = qword_1ED4CCB98;

  return CMBaseClassGetCFTypeID(v1);
}

size_t FigEndpointPlaybackSessionStartServer()
{
  v8[0] = 1;
  v8[1] = HandleEndpointPlaybackSessionRemoteMessage;
  v9 = 0u;
  v10 = 0u;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32(Mutable, @"xpcServerOption_SelfTerminationTimeout", 30, v1, v2, v3, v4, v5);
  v6 = FigXPCServerStart("com.apple.coremedia.endpointplaybacksession.xpc", v8, Mutable, &gEndpointPlaybackSessionServer);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

uint64_t FigXPCEndpointPlaybackSessionServerAssociateCopiedNeighborFigEndpointPlaybackSession(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200404161829EuLL);
  if (v6)
  {
    FigXPCEndpointPlaybackSessionServerAssociateCopiedNeighborFigEndpointPlaybackSession_cold_2(a2, v6);
  }

  else if (!FigXPCEndpointPlaybackSessionServerAssociateCopiedNeighborFigEndpointPlaybackSession_cold_1(&v9))
  {
    v7 = v9;
    goto LABEL_4;
  }

  v7 = FigXPCServerAssociateCopiedObjectWithNeighborProcess(gEndpointPlaybackSessionServer, a1, a2, v6, DisposeSessionEventHandlerState, 0, a3);
  if (v7)
  {
LABEL_4:
    DisposeSessionEventHandlerState(v6);
  }

  return v7;
}

void DisposeSessionEventHandlerState(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(*(CMBaseObjectGetVTable(*a1) + 16) + 120);
      if (v3)
      {
        v3(v2, 0, 0, 0);
      }
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          v15 = 0;
          FigCFArrayGetInt64AtIndex(*(a1 + 3), i, &v15, v6, v7, v8, v9, v10);
          sandbox_extension_release();
        }
      }

      v13 = *(a1 + 3);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 3) = 0;
      }
    }

    v14 = *(a1 + 2);
    if (v14)
    {
      *(a1 + 2) = 0;
      xpc_release(v14);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

void *CreateCompletionCallbackParametersFromMessageAndConnection_0(void *a1, void *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "CompletionID");
  if (!uint64)
  {
    return 0;
  }

  v5 = uint64;
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
  v7 = v6;
  if (v6)
  {
    *v6 = v5;
    v6[1] = xpc_dictionary_get_uint64(a1, ".objectID");
    v7[2] = FigXPCRetain(a2);
  }

  else
  {
    CreateCompletionCallbackParametersFromMessageAndConnection_cold_1_0();
  }

  return v7;
}

size_t checkRequestAgainstSandboxRules(_xpc_connection_s *a1, uint64_t a2, void *a3, CFDictionaryRef theDict)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!CFDictionaryGetValue(theDict, @"path"))
  {
    xpc_connection_get_pid(a1);
    bzero(v15, 0x400uLL);
    if (!sandbox_container_path_for_pid())
    {
      result = CFDictionaryGetValue(theDict, @"Content-Location");
      if (!result)
      {
        return result;
      }

      if (!FigXPCConnectionHasEntitlement(a1, "com.apple.security.network.client"))
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBE96uLL, "<< FigEndpointPlaybackSessionXPCServer >>", 0x1DD, v4, v13, v14);
      }
    }

    return 0;
  }

  if (xpc_dictionary_get_string(a3, "SExtToken"))
  {
    v9 = sandbox_extension_consume();
    if (v9 != -1)
    {
      SInt64 = FigCFNumberCreateSInt64(*MEMORY[0x1E695E480], v9);
      CFArrayAppendValue(*(a2 + 24), SInt64);
      if (SInt64)
      {
        CFRelease(SInt64);
      }

      return 0;
    }

    __error();
    return 4294950551;
  }

  else
  {
    checkRequestAgainstSandboxRules_cold_1(v15);
    return v15[0];
  }
}

uint64_t OUTLINED_FUNCTION_4_18(uint64_t a1, ...)
{
  va_start(va, a1);
  v3 = *(v1 + 8);

  return FigXPCCreateBasicMessage(0x63616C62u, v3, va);
}

void *OUTLINED_FUNCTION_11_10()
{

  return CreateCompletionCallbackParametersFromMessageAndConnection_0(v0, v1);
}

void OUTLINED_FUNCTION_14_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t message)
{
  v12 = *(v10 + 16);

  xpc_connection_send_message(v12, message);
}

size_t OUTLINED_FUNCTION_15_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CFDictionaryRef theDict)
{

  return checkRequestAgainstSandboxRules(v20, v21, v19, theDict);
}

uint64_t FigH264Bridge_GetWidthAndHeightFromParsedSPS(uint64_t result, void *a2, void *a3)
{
  *a2 = 16 * *(result + 324) + 16;
  v3 = 2 - *(result + 332);
  *a3 = 16 * (v3 + v3 * *(result + 328));
  if (*(result + 344))
  {
    v4 = *(result + 40);
    if (v4 > 3)
    {
      v5 = -2;
      v6 = -2;
    }

    else
    {
      v5 = qword_197166288[v4];
      v6 = qword_1971662A8[v4];
    }

    v7 = *(result + 360) + *(result + 356);
    *a2 += v5 * (*(result + 352) + *(result + 348));
    *a3 += v6 * v3 * v7;
  }

  return result;
}

uint64_t FigH264Bridge_GetSPSAndPPSCountFromAVCC(const __CFData *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFDataGetTypeID()))
  {
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length <= 5)
    {
      FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_5(&v16);
    }

    else if (*BytePtr == 1)
    {
      v9 = 0;
      v10 = 1;
      v11 = 5;
      while (1)
      {
        if (Length <= v11)
        {
          FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_2(&v16);
          return v16;
        }

        v12 = v10;
        v13 = BytePtr[v11++];
        v14 = (v12 & 1) != 0 ? v13 & 0x1F : v13;
        if (v14)
        {
          break;
        }

LABEL_14:
        if (a2 == 0 || (v12 & 1) == 0)
        {
          if (a3 != 0 && (v9 & 1) != 0)
          {
            result = 0;
            *a3 = v13;
            return result;
          }
        }

        else
        {
          *a2 = v13 & 0x1F;
        }

        v10 = 0;
        v9 = 1;
        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      while (1)
      {
        if (Length <= v11 + 1)
        {
          FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_3(&v16);
          return v16;
        }

        v11 += (BytePtr[v11 + 1] | (BytePtr[v11] << 8)) + 2;
        if (Length < v11)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_14;
        }
      }

      FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_4(&v16);
    }

    else
    {
      FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_1(&v16);
    }
  }

  else
  {
    FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_6(&v16);
  }

  return v16;
}

size_t FigH264Bridge_CreateAVCCFromH264ParameterSets(int a1, size_t count, uint64_t a3, uint64_t a4, unsigned int a5, void *a6, void *a7, __CFData **a8)
{
  v12 = a5;
  v13 = a4;
  v199 = *MEMORY[0x1E69E9840];
  v164 = 0u;
  v165 = 0u;
  theData = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (!a3)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_28(bytes);
LABEL_227:
    v129 = 0;
    goto LABEL_228;
  }

  if (!a4)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_27(bytes);
    goto LABEL_227;
  }

  if (count <= 1)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_26(bytes);
    goto LABEL_227;
  }

  if (a5 > 4 || ((1 << a5) & 0x16) == 0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v134 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< H264Bridge >>>>", 0xC8C, v8, v136, v137);
    v129 = 0;
    goto LABEL_198;
  }

  if (!a8)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_25(bytes);
    goto LABEL_227;
  }

  *a8 = 0;
  v14 = malloc_type_calloc(count, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v14)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_24(bytes);
    goto LABEL_227;
  }

  v143 = a6;
  v146 = a7;
  v144 = v12;
  v145 = a8;
  v15 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v152 = 0;
  v153 = 0;
  __base = v14;
  v16 = v14 + 2;
  v154 = -1;
  v17 = 7;
  v150 = -1;
  v151 = -1;
  v148 = 1;
  v149 = -1;
  v18 = count;
  while (1)
  {
    v19 = *(v13 + 8 * v15);
    if (v19 >= 0x10000)
    {
      FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_23(bytes);
      goto LABEL_214;
    }

    if (!v19)
    {
      FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_22(bytes);
      goto LABEL_214;
    }

    v20 = *(a3 + 8 * v15);
    if (!v20)
    {
      FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_21(bytes);
      goto LABEL_214;
    }

    v21 = *v20;
    if (v21 <= 31)
    {
      v122 = fig_log_get_emitter("com.apple.coremedia", "");
      v125 = 4294954584;
      v126 = 3235;
      goto LABEL_195;
    }

    v22 = v21 & 0x1F;
    v23 = (1 << (v21 & 0x1F)) & 0x2180;
    if (v22 > 0xD || v23 == 0)
    {
      v122 = fig_log_get_emitter("com.apple.coremedia", "");
      v125 = 4294954584;
      v126 = 3243;
LABEL_195:
      v43 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v122, v125, "<<<< H264Bridge >>>>", v126, v8, v123, v124);
LABEL_196:
      v134 = v43;
      goto LABEL_197;
    }

    *(v16 - 1) = v15;
    v16[1] = v22;
    *&v164 = v20;
    v25 = *(v13 + 8 * v15);
    DWORD2(v164) = v25;
    if (v22 == 7)
    {
      *&v165 = v20 + 4;
      if (v25 < 8uLL)
      {
        if (v25 >= 5uLL)
        {
          DWORD2(v165) = 0;
          __memcpy_chk();
          v18 = count;
        }
      }

      else
      {
        DWORD2(v165) = *(v20 + 1);
      }

      v26 = 4;
    }

    else
    {
      *&v165 = v20 + 1;
      if (v25 < 5uLL)
      {
        if (v25 >= 2uLL)
        {
          DWORD2(v165) = 0;
          __memcpy_chk();
          v18 = count;
        }
      }

      else
      {
        DWORD2(v165) = *(v20 + 1);
      }

      v26 = 1;
    }

    v27 = bswap32(DWORD2(v165));
    DWORD2(v165) = v27;
    BYTE12(v165) = 0;
    if (!(v27 >> 19))
    {
      goto LABEL_213;
    }

    v28 = &v20[v26];
    v29 = __clz(v27);
    v30 = v29 + 1;
    v31 = v27 << (v29 + 1) >> -v29;
    if (!v29)
    {
      v31 = 0;
    }

    *v16 = v31 + ~(-1 << v29);
    v32 = v30 + v29;
    v33 = &v28[(v30 + v29) >> 3];
    v34 = v20 + v25 - v33;
    if (v34 <= 3)
    {
      v35 = v32 & 7;
      if (v34 <= 0)
      {
        v36 = v33;
      }

      else
      {
        v36 = v33 + 1;
      }

      v37 = v34 - (v34 > 0);
      if (v37 > 0)
      {
        ++v36;
      }

      v38 = v37 - (v37 > 0);
      v39 = v38 <= 0;
      v40 = v38 & (v38 >> 31);
      v41 = v39 ? v36 : v36 + 1;
      if (v40 | v35 && v41 == v33)
      {
LABEL_213:
        FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_1(bytes);
        goto LABEL_214;
      }
    }

    if (v22 == 13)
    {
      ++v158;
      goto LABEL_165;
    }

    if (v22 == 8)
    {
      ++v157;
      goto LABEL_165;
    }

    if (v22 == 7)
    {
      break;
    }

LABEL_165:
    v17 += v19 + 2;
    ++v15;
    v16 += 4;
    if (v18 == v15)
    {
      v127 = v158;
      v128 = v155;
      if (v148)
      {
        if (v143)
        {
          *v143 = v152;
        }

        if (v146)
        {
          *v146 = v153;
        }
      }

      if (v155)
      {
        v129 = __base;
        if (v157)
        {
          v130 = HIDWORD(v156) - 100;
          if ((HIDWORD(v156) - 100) > 0x2C || ((1 << v130) & 0x100000400401) == 0)
          {
            v128 = v155 + v158;
            v127 = 0;
          }

          if (v128 >= 0x20)
          {
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_17(bytes);
          }

          else if (v157 >= 0x100)
          {
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_16(bytes);
          }

          else if (v127 >= 0x100)
          {
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_15(bytes);
          }

          else
          {
            qsort(__base, v18, 0x10uLL, FigH264Bridge_sortParameterSets);
            if (v130 <= 0x2C && ((1 << v130) & 0x100000400401) != 0)
            {
              v17 += 4;
            }

            Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v17);
            if (Mutable)
            {
              v132 = Mutable;
              bytes[0] = 1;
              bytes[1] = BYTE4(v156);
              bytes[2] = v154;
              bytes[3] = v156;
              bytes[4] = (v144 - 1) | 0xFC;
              bytes[5] = v128 | 0xE0;
              CFDataAppendBytes(Mutable, bytes, 6);
              if (v127)
              {
                v133 = 0;
              }

              else
              {
                v133 = 13;
              }

              FigH264Bridge_addSortedParameterSetsToData(v132, count, __base, a3, v13, 7, v133);
              bytes[0] = v157;
              CFDataAppendBytes(v132, bytes, 1);
              FigH264Bridge_addSortedParameterSetsToData(v132, count, __base, a3, v13, 8, 0);
              if (v130 <= 0x2C && ((1 << v130) & 0x100000400401) != 0)
              {
                bytes[0] = v151 | 0xFC;
                bytes[1] = v150 | 0xF8;
                bytes[2] = v149 | 0xF8;
                bytes[3] = v127;
                CFDataAppendBytes(v132, bytes, 4);
                FigH264Bridge_addSortedParameterSetsToData(v132, count, __base, a3, v13, 13, 0);
              }

              v134 = 0;
              *v145 = v132;
              goto LABEL_198;
            }

            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_14(bytes);
          }
        }

        else
        {
          FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_18(bytes);
        }

LABEL_228:
        v134 = *bytes;
        goto LABEL_198;
      }

      FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_19(bytes);
LABEL_214:
      v134 = *bytes;
      goto LABEL_197;
    }
  }

  v161 = 0;
  v162 = 0;
  v197 = 0u;
  v198 = 0u;
  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  v187 = 0u;
  v188 = 0u;
  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v171 = 0u;
  v172 = 0u;
  v169 = 0u;
  v170 = 0u;
  *bytes = 0u;
  v168 = 0u;
  v43 = RemoveEmulation3Byte(v20, v25, &theData);
  if (v43)
  {
    goto LABEL_196;
  }

  v44 = theData;
  if (theData)
  {
    *&v164 = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(v44);
    v45 = v164;
  }

  else
  {
    v45 = *(a3 + 8 * v15);
    *&v164 = v45;
    Length = *(v13 + 8 * v15);
  }

  DWORD2(v164) = Length;
  *&v165 = v45;
  if (Length < 4uLL)
  {
    if (Length)
    {
      DWORD2(v165) = 0;
      __memcpy_chk();
    }
  }

  else
  {
    DWORD2(v165) = *v45;
  }

  DWORD2(v165) = bswap32(DWORD2(v165));
  BYTE12(v165) = 0;
  if (PullParamSetSPS(&v164, bytes))
  {
    v47 = 0;
    v48 = 0;
    v161 = 0;
    v162 = 0;
  }

  else
  {
    FigH264Bridge_GetWidthAndHeightFromParsedSPS(bytes, &v162, &v161);
    v47 = v161;
    v48 = v162;
  }

  if (v152 && v152 != v48 || v153 && v153 != v47)
  {
    v148 = 0;
  }

  v49 = v164;
  *&v165 = v164;
  v50 = DWORD2(v164);
  if (DWORD2(v164) < 4)
  {
    if (DWORD2(v164))
    {
      DWORD2(v165) = 0;
      v51 = v47;
      v52 = v13;
      v53 = v44;
      v54 = v48;
      __memcpy_chk();
      v48 = v54;
      v44 = v53;
      v13 = v52;
      v47 = v51;
    }
  }

  else
  {
    DWORD2(v165) = *v164;
  }

  DWORD2(v165) = bswap32(DWORD2(v165));
  BYTE12(v165) = 0;
  if (v50 - 1 >= 4)
  {
    v55 = (v49 + 4);
    if ((v50 - 6) >= 0xFFFFFFFC)
    {
      v56 = v49[2];
      v57 = v49[3];
      v59 = v49[4] << 24;
    }

    else
    {
      v56 = v49[2];
      if ((v50 - 7) >= 0xFFFFFFFC)
      {
        v57 = v49[3];
        v58 = (v49[4] << 16) | (v49[5] << 8);
LABEL_80:
        v59 = v58 << 8;
      }

      else
      {
        v57 = v49[3];
        if ((v50 & 0xFFFFFFFC) == 4)
        {
          v58 = (v49[4] << 16) | (v49[5] << 8) | v49[6];
          goto LABEL_80;
        }

        v59 = bswap32(*v55);
      }
    }

    if (!(v59 >> 19))
    {
      goto LABEL_215;
    }

    v60 = v49 + v50;
    v61 = v49[1];
    v62 = __clz(v59);
    v63 = v55 + (v62 >> 2);
    v64 = v49 + v50 - v63;
    if (v64 < 4)
    {
      v67 = v64 - 1;
      v66 = v64 == 1;
      if (v64 < 1)
      {
        goto LABEL_215;
      }

      v68 = *v63;
      if (v66)
      {
        v65 = v68 << 24;
      }

      else
      {
        v69 = (v68 << 16) | (v63[1] << 8);
        if (v67 != 1)
        {
          v69 |= v63[2];
        }

        v65 = v69 << 8;
      }
    }

    else
    {
      v65 = bswap32(*v63);
    }

    if (v61 <= SHIDWORD(v156))
    {
      v70 = HIDWORD(v156);
    }

    else
    {
      v70 = v49[1];
    }

    v71 = v156;
    if (v57 > v156)
    {
      v71 = v57;
    }

    v156 = __PAIR64__(v70, v71);
    if ((v61 - 100) <= 0x2C && ((1 << (v61 - 100)) & 0x100000400401) != 0)
    {
      v72 = (2 * (v62 & 3)) | 1;
      v73 = v65 << ((2 * (v62 & 3)) | 1);
      if (!(v73 >> 19))
      {
        goto LABEL_108;
      }

      v74 = __clz(v73);
      v75 = v73 << (v74 + 1) >> -v74;
      if (v74)
      {
        v76 = v75;
      }

      else
      {
        v76 = 0;
      }

      v77 = v74 + v72 + v74 + 1;
      v78 = v77 >> 3;
      v79 = v77 & 7;
      v80 = &v63[v78];
      v81 = v60 - v80;
      if (v60 - v80 < 4)
      {
        if (v81 < 1)
        {
          v82 = v79 | v81;
          if (v82)
          {
LABEL_108:
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_2(&v166);
            goto LABEL_236;
          }
        }

        else
        {
          v83 = *v80;
          if (v81 == 1)
          {
            v82 = v83 << 24;
          }

          else
          {
            v84 = (v83 << 16) | (v80[1] << 8);
            if (v81 != 2)
            {
              v84 |= v80[2];
            }

            v82 = v84 << 8;
          }
        }
      }

      else
      {
        v82 = bswap32(*v80);
      }

      v85 = v76 + ~(-1 << v74);
      if (v85 == 3)
      {
        v86 = v79 + 1;
        v87 = v86 >> 3;
        v79 = v86 & 7;
        v80 += v87;
        v88 = v60 - v80;
        if (v60 - v80 < 4)
        {
          if (v88 < 1)
          {
            v89 = v79 | v88;
            if (v89)
            {
              FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_3(&v166);
              goto LABEL_236;
            }
          }

          else
          {
            v91 = *v80;
            if (v88 == 1)
            {
              v89 = v91 << 24;
            }

            else
            {
              v92 = (v91 << 16) | (v80[1] << 8);
              if (v88 != 2)
              {
                v92 |= v80[2];
              }

              v89 = v92 << 8;
            }
          }
        }

        else
        {
          v89 = bswap32(*v80);
        }

        v90 = v89 << v79;
      }

      else
      {
        v90 = v82 << v79;
      }

      if (!(v90 >> 19))
      {
        goto LABEL_134;
      }

      v93 = __clz(v90);
      v94 = v90 << (v93 + 1) >> -v93;
      if (!v93)
      {
        v94 = 0;
      }

      v95 = v93 + v79 + v93 + 1;
      v96 = v95 >> 3;
      v97 = v95 & 7;
      v98 = &v80[v96];
      v99 = v60 - v98;
      if (v60 - v98 < 4)
      {
        if (v99 < 1)
        {
          v100 = v97 | v99;
          if (v100)
          {
LABEL_134:
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_4(&v166);
            goto LABEL_236;
          }
        }

        else
        {
          v101 = *v98;
          if (v99 == 1)
          {
            v100 = v101 << 24;
          }

          else
          {
            v102 = (v101 << 16) | (v98[1] << 8);
            if (v99 != 2)
            {
              v102 |= v98[2];
            }

            v100 = v102 << 8;
          }
        }
      }

      else
      {
        v100 = bswap32(*v98);
      }

      v103 = v100 << v97;
      if (!((v100 << v97) >> 19))
      {
        goto LABEL_220;
      }

      v104 = __clz(v103);
      v105 = v103 << (v104 + 1) >> -v104;
      if (!v104)
      {
        v105 = 0;
      }

      v106 = v104 + v97 + v104 + 1;
      v107 = &v98[v106 >> 3];
      v108 = v60 - v107;
      if (v108 <= 3)
      {
        v109 = v106 & 7;
        if (v108 <= 0)
        {
          v110 = v107;
        }

        else
        {
          v110 = v107 + 1;
        }

        v111 = v108 - (v108 > 0);
        if (v111 > 0)
        {
          ++v110;
        }

        v112 = v111 - (v111 > 0);
        v113 = v112 & (v112 >> 31);
        v114 = v112 <= 0 ? v110 : v110 + 1;
        if (v113 | v109 && v114 == v107)
        {
LABEL_220:
          FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_5(&v166);
          goto LABEL_236;
        }
      }

      v115 = v151;
      if (v151 == -1)
      {
        v115 = v85;
      }

      else if (v151 != v85)
      {
        FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_6(&v166);
        goto LABEL_236;
      }

      v151 = v115;
      v116 = v150;
      if (v150 == -1)
      {
        v116 = v94 + ~(-1 << v93);
        v117 = v149;
      }

      else
      {
        v117 = v149;
        if (v150 != v94 + ~(-1 << v93))
        {
          FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_7(&v166);
          goto LABEL_236;
        }
      }

      v150 = v116;
      if (v117 != -1)
      {
        if (v117 != v105 + ~(-1 << v104))
        {
          FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_8(&v166);
          goto LABEL_236;
        }

        goto LABEL_162;
      }

      v149 = v105 + ~(-1 << v104);
      if (!v44)
      {
LABEL_164:
        ++v155;
        v154 &= v56;
        v152 = v48;
        v153 = v47;
        v18 = count;
        goto LABEL_165;
      }
    }

    else
    {
LABEL_162:
      if (!v44)
      {
        goto LABEL_164;
      }
    }

    v118 = v44;
    v119 = v47;
    v120 = v48;
    v121 = v56;
    CFRelease(v118);
    v56 = v121;
    v48 = v120;
    v47 = v119;
    theData = 0;
    goto LABEL_164;
  }

  if (v50 - 1 >= 1)
  {
    if (v50 == 2)
    {
      v122 = fig_log_get_emitter("com.apple.coremedia", "");
      v125 = 4294954582;
      v126 = 3317;
      goto LABEL_195;
    }

    if (v50 == 3)
    {
      v122 = fig_log_get_emitter("com.apple.coremedia", "");
      v125 = 4294954582;
      v126 = 3318;
      goto LABEL_195;
    }

LABEL_215:
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_12(&v166);
LABEL_236:
    v134 = v166;
LABEL_197:
    v129 = __base;
    goto LABEL_198;
  }

  v139 = fig_log_get_emitter("com.apple.coremedia", "");
  v129 = __base;
  if (v50 == 1)
  {
    v142 = 3316;
  }

  else
  {
    v142 = 3315;
  }

  v134 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v139, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v142, v8, v140, v141);
LABEL_198:
  if (theData)
  {
    CFRelease(theData);
  }

  free(v129);
  return v134;
}

uint64_t FigH264Bridge_sortParameterSets(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *(a1 + 12);
  v6 = *(a2 + 12);
  v7 = v5 >= v6;
  v8 = v5 > v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void FigH264Bridge_addSortedParameterSetsToData(CFMutableDataRef theData, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (a2)
  {
    v12 = a2;
    do
    {
      v14 = *(a3 + 3);
      if (v14 == a6 || v14 == a7)
      {
        v16 = *a3;
        *bytes = bswap32(*(a5 + 8 * *a3)) >> 16;
        CFDataAppendBytes(theData, bytes, 2);
        CFDataAppendBytes(theData, *(a4 + 8 * v16), *(a5 + 8 * v16));
      }

      a3 += 2;
      --v12;
    }

    while (v12);
  }
}

size_t FigH264Bridge_CreateAVCCFromSPSAndPPS(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, __CFData **a7)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v9[1] = a4;
  v8[0] = a3;
  v8[1] = a5;
  return FigH264Bridge_CreateAVCCFromH264ParameterSets(a1, 2uLL, v9, v8, a6, 0, 0, a7);
}

size_t PullParamSetPPS(uint64_t *a1, uint64_t a2)
{
  v5 = a1[2];
  v6 = *(a1 + 6);
  v7 = *(a1 + 28);
  v8 = *(a1 + 2);
  v9 = *a1;
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v10 = v7 + 1;
  v11 = (v7 + 1) & 7;
  v12 = (v5 + (v10 >> 3));
  v13 = v9 + v8;
  v14 = v9 + v8 - v12;
  if (v14 < 4)
  {
    if (v14 < 1)
    {
      v17 = 0;
      if (v11 | v14)
      {
        v33 = 1579;
        LOBYTE(v24) = v11;
        goto LABEL_403;
      }

      v15 = 0;
    }

    else
    {
      v16 = *v12;
      if (v14 == 1)
      {
        v15 = v16 << 24;
      }

      else
      {
        v18 = (v16 << 16) | (v12[1] << 8);
        if (v14 != 2)
        {
          v18 |= v12[2];
        }

        v15 = v18 << 8;
      }
    }
  }

  else
  {
    v15 = bswap32(*v12);
  }

  v19 = (v11 + 2) & 7;
  v12 += (v11 + 2) >> 3;
  v20 = v13 - v12;
  if (v13 - v12 < 4)
  {
    if (v20 < 1)
    {
      v17 = 0;
      if (v19 | v20)
      {
        v33 = 1580;
        LOBYTE(v24) = (v11 + 2) & 7;
        goto LABEL_403;
      }

      v21 = 0;
    }

    else
    {
      v22 = *v12;
      if (v20 == 1)
      {
        v21 = v22 << 24;
      }

      else
      {
        v23 = (v22 << 16) | (v12[1] << 8);
        if (v20 != 2)
        {
          v23 |= v12[2];
        }

        v21 = v23 << 8;
      }
    }
  }

  else
  {
    v21 = bswap32(*v12);
  }

  v24 = (v19 + 5) & 7;
  v12 += (v19 + 5) >> 3;
  v25 = v13 - v12;
  if (v13 - v12 < 4)
  {
    if (v25 < 1)
    {
      v17 = 0;
      if (v24 | v25)
      {
        v33 = 1581;
        goto LABEL_403;
      }

      if (v6 < 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v26 = *v12;
      if (v25 == 1)
      {
        v17 = v26 << 24;
        if (v6 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v34 = (v26 << 16) | (v12[1] << 8);
        if (v25 != 2)
        {
          v34 |= v12[2];
        }

        v17 = v34 << 8;
        if (v6 < 0)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v17 = bswap32(*v12);
    if (v6 < 0)
    {
LABEL_23:
      PullParamSetPPS_cold_11();
      return 4294954582;
    }
  }

  if (!(v15 << v11 >> 30))
  {
    PullParamSetPPS_cold_10();
    return 4294954582;
  }

  if (v21 << v19 >> 27 != 8)
  {
    PullParamSetPPS_cold_1();
    return 4294954582;
  }

  v17 <<= v24;
  if (v17 < 0x80000)
  {
    goto LABEL_41;
  }

  v27 = __clz(v17);
  v28 = v17 << (v27 + 1) >> -v27;
  if (!v27)
  {
    v28 = 0;
  }

  v29 = v28 + ~(-1 << v27);
  *a2 = v29;
  v30 = v27 + v24 + v27 + 1;
  v24 = v30 & 7;
  v12 += v30 >> 3;
  v31 = v13 - v12;
  if (v13 - v12 >= 4)
  {
    v17 = bswap32(*v12);
    goto LABEL_49;
  }

  if (v31 < 1)
  {
    v17 = 0;
    if (!(v24 | v31))
    {
      goto LABEL_49;
    }

LABEL_41:
    v33 = 1587;
    goto LABEL_403;
  }

  v32 = *v12;
  if (v31 == 1)
  {
    v17 = v32 << 24;
  }

  else
  {
    v35 = (v32 << 16) | (v12[1] << 8);
    if (v31 != 2)
    {
      v35 |= v12[2];
    }

    v17 = v35 << 8;
  }

LABEL_49:
  if (v29 >= 0x100)
  {
    PullParamSetPPS_cold_9();
    return 4294954582;
  }

  v17 <<= v24;
  if (v17 < 0x80000)
  {
    goto LABEL_59;
  }

  v36 = __clz(v17);
  v37 = v17 << (v36 + 1) >> -v36;
  if (!v36)
  {
    v37 = 0;
  }

  v38 = v37 + ~(-1 << v36);
  *(a2 + 4) = v38;
  v39 = v36 + v24 + v36 + 1;
  v24 = v39 & 7;
  v12 += v39 >> 3;
  v40 = v13 - v12;
  if (v13 - v12 >= 4)
  {
    v17 = bswap32(*v12);
    goto LABEL_63;
  }

  if (v40 < 1)
  {
    v17 = 0;
    if (!(v24 | v40))
    {
      goto LABEL_63;
    }

LABEL_59:
    v33 = 1589;
    goto LABEL_403;
  }

  v41 = *v12;
  if (v40 == 1)
  {
    v17 = v41 << 24;
  }

  else
  {
    v42 = (v41 << 16) | (v12[1] << 8);
    if (v40 != 2)
    {
      v42 |= v12[2];
    }

    v17 = v42 << 8;
  }

LABEL_63:
  if (v38 >= 0x20)
  {
    PullParamSetPPS_cold_8();
    return 4294954582;
  }

  *(a2 + 8) = ((v17 << v24) & 0x80000000) != 0;
  v43 = (v24 + 1) >> 3;
  v24 = (v24 + 1) & 7;
  v12 += v43;
  v44 = v13 - v12;
  if (v13 - v12 < 4)
  {
    if (v44 < 1)
    {
      v17 = 0;
      if (v24 | v44)
      {
        v33 = 1595;
        goto LABEL_403;
      }
    }

    else
    {
      v45 = *v12;
      if (v44 == 1)
      {
        v17 = v45 << 24;
      }

      else
      {
        v46 = (v45 << 16) | (v12[1] << 8);
        if (v44 != 2)
        {
          v46 |= v12[2];
        }

        v17 = v46 << 8;
      }
    }
  }

  else
  {
    v17 = bswap32(*v12);
  }

  *(a2 + 9) = ((v17 << v24) & 0x80000000) != 0;
  v47 = (v24 + 1) >> 3;
  v24 = (v24 + 1) & 7;
  v12 += v47;
  v48 = v13 - v12;
  if (v13 - v12 < 4)
  {
    if (v48 < 1)
    {
      v17 = 0;
      if (v24 | v48)
      {
        v33 = 1596;
        goto LABEL_403;
      }
    }

    else
    {
      v49 = *v12;
      if (v48 == 1)
      {
        v17 = v49 << 24;
      }

      else
      {
        v50 = (v49 << 16) | (v12[1] << 8);
        if (v48 != 2)
        {
          v50 |= v12[2];
        }

        v17 = v50 << 8;
      }
    }
  }

  else
  {
    v17 = bswap32(*v12);
  }

  v51 = v17 << v24;
  if (v17 << v24 >= 0x80000)
  {
    v52 = __clz(v51);
    v53 = v51 << (v52 + 1) >> -v52;
    if (!v52)
    {
      v53 = 0;
    }

    v54 = v53 + ~(-1 << v52);
    *(a2 + 12) = v54;
    v55 = v52 + v24 + v52 + 1;
    v24 = v55 & 7;
    v12 += v55 >> 3;
    v56 = v13 - v12;
    if (v13 - v12 >= 4)
    {
      v17 = bswap32(*v12);
      goto LABEL_104;
    }

    if (v56 >= 1)
    {
      v59 = *v12;
      if (v56 == 1)
      {
        v17 = v59 << 24;
      }

      else
      {
        v61 = (v59 << 16) | (v12[1] << 8);
        if (v56 != 2)
        {
          v61 |= v12[2];
        }

        v17 = v61 << 8;
      }

LABEL_104:
      v17 <<= v24;
      if (!v54)
      {
        goto LABEL_263;
      }

      goto LABEL_156;
    }

    v17 = 0;
    if (!(v24 | v56))
    {
      goto LABEL_104;
    }

LABEL_388:
    v33 = 1597;
    goto LABEL_403;
  }

  v57 = (v24 + 1) >> 3;
  v24 = (v24 + 1) & 7;
  v12 += v57;
  v58 = v13 - v12;
  if (v13 - v12 < 4)
  {
    if (v58 < 1)
    {
      v17 = 0;
      if (v24 | v58)
      {
        goto LABEL_388;
      }
    }

    else
    {
      v60 = *v12;
      if (v58 == 1)
      {
        v17 = v60 << 24;
      }

      else
      {
        v62 = (v60 << 16) | (v12[1] << 8);
        if (v58 != 2)
        {
          v62 |= v12[2];
        }

        v17 = v62 << 8;
      }
    }
  }

  else
  {
    v17 = bswap32(*v12);
  }

  v63 = 0;
  v17 <<= v24;
  v33 = 1597;
  do
  {
    v64 = v24;
    v65 = v17;
    v66 = (v24 + 1) >> 3;
    v24 = (v24 + 1) & 7;
    v12 += v66;
    v67 = v13 - v12;
    if (v13 - v12 < 4)
    {
      if (v67 < 1)
      {
        v17 = 0;
        if (v24 | v67)
        {
          goto LABEL_403;
        }
      }

      else
      {
        v68 = *v12;
        if (v67 == 1)
        {
          v17 = v68 << 24;
        }

        else
        {
          v69 = (v68 << 16) | (v12[1] << 8);
          if (v67 != 2)
          {
            v69 |= v12[2];
          }

          v17 = v69 << 8;
        }
      }
    }

    else
    {
      v17 = bswap32(*v12);
    }

    v17 <<= v24;
    ++v63;
  }

  while ((v65 & 0x80000000) == 0);
  if (v63 - 1 > 0x1E)
  {
    goto LABEL_388;
  }

  v70 = ((v64 + 1) & 7) + v63;
  if (v63 <= 0x18)
  {
    v24 = v70 & 7;
    v12 += v70 >> 3;
    v71 = v13 - v12;
    if (v13 - v12 >= 4)
    {
      v72 = bswap32(*v12);
      goto LABEL_140;
    }

    if (v71 >= 1)
    {
      v77 = *v12;
      if (v71 == 1)
      {
        v72 = v77 << 24;
      }

      else
      {
        v79 = (v77 << 16) | (v12[1] << 8);
        if (v71 != 2)
        {
          v79 |= v12[2];
        }

        v72 = v79 << 8;
      }

      goto LABEL_140;
    }

    v72 = 0;
    if (!(v24 | v71))
    {
LABEL_140:
      v80 = v17 >> -v63;
      v17 = v72 << v24;
      goto LABEL_155;
    }

LABEL_150:
    v33 = 1597;
    v17 = 0;
    goto LABEL_403;
  }

  v73 = (v70 - 16) >> 3;
  v24 = v70 & 7;
  v74 = &v12[v73];
  v75 = v13 - (v12 + v73);
  if (v75 < 4)
  {
    if (v75 < 1)
    {
      v76 = 0;
      if (v24 | v75)
      {
        v33 = 1597;
        v17 = 0;
        v12 = v74;
        goto LABEL_403;
      }
    }

    else
    {
      v78 = *v74;
      if (v75 == 1)
      {
        v76 = v78 << 24;
      }

      else
      {
        v81 = (v78 << 16) | (v74[1] << 8);
        if (v75 != 2)
        {
          v81 |= v74[2];
        }

        v76 = v81 << 8;
      }
    }
  }

  else
  {
    v76 = bswap32(*v74);
  }

  v12 = v74 + 2;
  v82 = v13 - (v74 + 2);
  if (v82 < 4)
  {
    if (v82 < 1)
    {
      v83 = 0;
      if (v24 | v82)
      {
        goto LABEL_150;
      }
    }

    else
    {
      v84 = *v12;
      if (v82 == 1)
      {
        v83 = v84 << 24;
      }

      else
      {
        v85 = (v84 << 16) | (v74[3] << 8);
        if (v82 != 2)
        {
          v85 |= v74[4];
        }

        v83 = v85 << 8;
      }
    }
  }

  else
  {
    v83 = bswap32(*v12);
  }

  v86 = v17 >> (48 - v63);
  v17 = v83 << v24;
  HIDWORD(v87) = v86;
  LODWORD(v87) = v76 << v24;
  v80 = v87 >> 16;
LABEL_155:
  v54 = v80 + ~(-1 << v63);
  *(a2 + 12) = v54;
  if (!v54)
  {
    goto LABEL_263;
  }

LABEL_156:
  if (v17 < 0x80000)
  {
    goto LABEL_165;
  }

  v88 = __clz(v17);
  v89 = v17 << (v88 + 1) >> -v88;
  if (!v88)
  {
    v89 = 0;
  }

  v90 = v89 + ~(-1 << v88);
  *(a2 + 16) = v90;
  v91 = v88 + v24 + v88 + 1;
  v24 = v91 & 7;
  v12 += v91 >> 3;
  v92 = v13 - v12;
  if (v13 - v12 >= 4)
  {
    v17 = bswap32(*v12);
    goto LABEL_169;
  }

  if (v92 < 1)
  {
    v17 = 0;
    if (!(v24 | v92))
    {
      goto LABEL_169;
    }

LABEL_165:
    v33 = 1604;
    goto LABEL_403;
  }

  v93 = *v12;
  if (v92 == 1)
  {
    v17 = v93 << 24;
  }

  else
  {
    v94 = (v93 << 16) | (v12[1] << 8);
    if (v92 != 2)
    {
      v94 |= v12[2];
    }

    v17 = v94 << 8;
  }

LABEL_169:
  v17 <<= v24;
  if (v90 <= 2)
  {
    if (!v90)
    {
      v33 = 1609;
      while (v17 >= 0x80000)
      {
        v112 = v24 + 2 * __clz(v17) + 1;
        v24 = v112 & 7;
        v12 += v112 >> 3;
        v113 = v13 - v12;
        if (v13 - v12 < 4)
        {
          if (v113 < 1)
          {
            v17 = 0;
            if (v24 | v113)
            {
              goto LABEL_403;
            }
          }

          else
          {
            v114 = *v12;
            if (v113 == 1)
            {
              v17 = v114 << 24;
            }

            else
            {
              v115 = (v114 << 16) | (v12[1] << 8);
              if (v113 != 2)
              {
                v115 |= v12[2];
              }

              v17 = v115 << 8;
            }
          }
        }

        else
        {
          v17 = bswap32(*v12);
        }

        v17 <<= v24;
        if (++v90 > v54)
        {
          goto LABEL_263;
        }
      }

      goto LABEL_403;
    }

    if (v90 == 2)
    {
      v97 = 0;
      v33 = 1615;
      while (v17 >= 0x80000)
      {
        v98 = v24 + 2 * __clz(v17) + 1;
        v24 = v98 & 7;
        v12 += v98 >> 3;
        v99 = v13 - v12;
        if (v13 - v12 < 4)
        {
          if (v99 < 1)
          {
            v17 = 0;
            if (v24 | v99)
            {
              goto LABEL_403;
            }
          }

          else
          {
            v100 = *v12;
            if (v99 == 1)
            {
              v17 = v100 << 24;
            }

            else
            {
              v101 = (v100 << 16) | (v12[1] << 8);
              if (v99 != 2)
              {
                v101 |= v12[2];
              }

              v17 = v101 << 8;
            }
          }
        }

        else
        {
          v17 = bswap32(*v12);
        }

        v17 <<= v24;
        if (v17 < 0x80000)
        {
LABEL_387:
          v33 = 1616;
          goto LABEL_403;
        }

        v102 = v24 + 2 * __clz(v17) + 1;
        v24 = v102 & 7;
        v12 += v102 >> 3;
        v103 = v13 - v12;
        if (v13 - v12 < 4)
        {
          if (v103 < 1)
          {
            v17 = 0;
            if (v24 | v103)
            {
              goto LABEL_387;
            }
          }

          else
          {
            v104 = *v12;
            if (v103 == 1)
            {
              v17 = v104 << 24;
            }

            else
            {
              v105 = (v104 << 16) | (v12[1] << 8);
              if (v103 != 2)
              {
                v105 |= v12[2];
              }

              v17 = v105 << 8;
            }
          }
        }

        else
        {
          v17 = bswap32(*v12);
        }

        v17 <<= v24;
        if (++v97 > v54)
        {
          goto LABEL_263;
        }
      }

      goto LABEL_403;
    }

    goto LABEL_263;
  }

  if ((v90 - 3) < 3)
  {
    v95 = (v24 + 1) >> 3;
    v24 = (v24 + 1) & 7;
    v12 += v95;
    v96 = v13 - v12;
    if (v13 - v12 < 4)
    {
      if (v96 < 1)
      {
        v17 = 0;
        if (v24 | v96)
        {
          v33 = 1622;
          goto LABEL_403;
        }
      }

      else
      {
        v111 = *v12;
        if (v96 == 1)
        {
          v17 = v111 << 24;
        }

        else
        {
          v117 = (v111 << 16) | (v12[1] << 8);
          if (v96 != 2)
          {
            v117 |= v12[2];
          }

          v17 = v117 << 8;
        }
      }
    }

    else
    {
      v17 = bswap32(*v12);
    }

    v17 <<= v24;
    if (v17 >= 0x80000)
    {
      v118 = v24 + 2 * __clz(v17) + 1;
      v24 = v118 & 7;
      v12 += v118 >> 3;
      v119 = v13 - v12;
      if (v13 - v12 >= 4)
      {
        v17 = bswap32(*v12);
        goto LABEL_243;
      }

      if (v119 >= 1)
      {
        v120 = *v12;
        if (v119 == 1)
        {
          v17 = v120 << 24;
        }

        else
        {
          v121 = (v120 << 16) | (v12[1] << 8);
          if (v119 != 2)
          {
            v121 |= v12[2];
          }

          v17 = v121 << 8;
        }

        goto LABEL_243;
      }

      v17 = 0;
      if (!(v24 | v119))
      {
LABEL_243:
        v17 <<= v24;
        goto LABEL_263;
      }
    }

    v33 = 1623;
    goto LABEL_403;
  }

  if (v90 == 6)
  {
    v106 = log2((v54 + 1));
    if (v17 >= 0x80000)
    {
      v107 = __clz(v17);
      if (v107)
      {
        v108 = v17 << (v107 + 1) >> -v107;
      }

      else
      {
        v108 = 0;
      }

      v109 = v107 + v24 + v107 + 1;
      v24 = v109 & 7;
      v12 += v109 >> 3;
      v110 = v13 - v12;
      if (v13 - v12 >= 4)
      {
        v17 = bswap32(*v12);
        goto LABEL_249;
      }

      if (v110 >= 1)
      {
        v116 = *v12;
        if (v110 == 1)
        {
          v17 = v116 << 24;
        }

        else
        {
          v122 = (v116 << 16) | (v12[1] << 8);
          if (v110 != 2)
          {
            v122 |= v12[2];
          }

          v17 = v122 << 8;
        }

LABEL_249:
        v123 = 0;
        v124 = vcvtpd_s64_f64(v106);
        v125 = v108 + ~(-1 << v107);
        v17 <<= v24;
        v33 = 1632;
        v126 = v12;
        v127 = v24;
        while (v124 - 26 >= 0xFFFFFFE7)
        {
          v128 = v127 + v124;
          v129 = v128 >> 3;
          v127 = v128 & 7;
          v126 += v129;
          v130 = v13 - v126;
          if (v13 - v126 < 4)
          {
            if (v130 < 1)
            {
              v131 = 0;
              if (v127 | v130)
              {
                LOBYTE(v24) = v127;
                v17 = 0;
                v12 = v126;
                goto LABEL_403;
              }
            }

            else
            {
              v132 = *v126;
              if (v130 == 1)
              {
                v131 = v132 << 24;
              }

              else
              {
                v133 = (v132 << 16) | (v126[1] << 8);
                if (v130 != 2)
                {
                  v133 |= v126[2];
                }

                v131 = v133 << 8;
              }
            }
          }

          else
          {
            v131 = bswap32(*v126);
          }

          if (++v123 > v125)
          {
            v17 = v131 << v127;
            v24 = v127;
            v12 = v126;
            goto LABEL_263;
          }
        }

        goto LABEL_403;
      }

      v17 = 0;
      if (!(v24 | v110))
      {
        goto LABEL_249;
      }
    }

    v33 = 1630;
    goto LABEL_403;
  }

LABEL_263:
  if (v17 < 0x80000)
  {
    goto LABEL_272;
  }

  v134 = __clz(v17);
  v135 = v17 << (v134 + 1) >> -v134;
  if (!v134)
  {
    v135 = 0;
  }

  v136 = v135 + ~(-1 << v134);
  *(a2 + 56) = v136;
  v137 = v134 + v24 + v134 + 1;
  v24 = v137 & 7;
  v12 += v137 >> 3;
  v138 = v13 - v12;
  if (v13 - v12 >= 4)
  {
    v17 = bswap32(*v12);
    goto LABEL_276;
  }

  if (v138 >= 1)
  {
    v139 = *v12;
    if (v138 == 1)
    {
      v17 = v139 << 24;
    }

    else
    {
      v140 = (v139 << 16) | (v12[1] << 8);
      if (v138 != 2)
      {
        v140 |= v12[2];
      }

      v17 = v140 << 8;
    }

    goto LABEL_276;
  }

  v17 = 0;
  if (v24 | v138)
  {
LABEL_272:
    v33 = 1637;
    goto LABEL_403;
  }

LABEL_276:
  if (v136 >= 0x20)
  {
    PullParamSetPPS_cold_7();
    return 4294954582;
  }

  v17 <<= v24;
  if (v17 < 0x80000)
  {
    goto LABEL_286;
  }

  v141 = __clz(v17);
  v142 = v17 << (v141 + 1) >> -v141;
  if (!v141)
  {
    v142 = 0;
  }

  v143 = v142 + ~(-1 << v141);
  *(a2 + 60) = v143;
  v144 = v141 + v24 + v141 + 1;
  v24 = v144 & 7;
  v12 += v144 >> 3;
  v145 = v13 - v12;
  if (v13 - v12 >= 4)
  {
    v17 = bswap32(*v12);
    goto LABEL_290;
  }

  if (v145 >= 1)
  {
    v146 = *v12;
    if (v145 == 1)
    {
      v17 = v146 << 24;
    }

    else
    {
      v147 = (v146 << 16) | (v12[1] << 8);
      if (v145 != 2)
      {
        v147 |= v12[2];
      }

      v17 = v147 << 8;
    }

    goto LABEL_290;
  }

  v17 = 0;
  if (v24 | v145)
  {
LABEL_286:
    v33 = 1639;
    goto LABEL_403;
  }

LABEL_290:
  if (v143 >= 0x20)
  {
    PullParamSetPPS_cold_6();
    return 4294954582;
  }

  *(a2 + 64) = ((v17 << v24) & 0x80000000) != 0;
  v148 = (v24 + 1) >> 3;
  v24 = (v24 + 1) & 7;
  v12 += v148;
  v149 = v13 - v12;
  if (v13 - v12 < 4)
  {
    if (v149 < 1)
    {
      v17 = 0;
      if (v24 | v149)
      {
        v33 = 1642;
        goto LABEL_403;
      }
    }

    else
    {
      v150 = *v12;
      if (v149 == 1)
      {
        v17 = v150 << 24;
      }

      else
      {
        v151 = (v150 << 16) | (v12[1] << 8);
        if (v149 != 2)
        {
          v151 |= v12[2];
        }

        v17 = v151 << 8;
      }
    }
  }

  else
  {
    v17 = bswap32(*v12);
  }

  v152 = v17 << v24 >> 30;
  *(a2 + 68) = v152;
  v153 = (v24 + 2) >> 3;
  v24 = (v24 + 2) & 7;
  v12 += v153;
  v154 = v13 - v12;
  if (v13 - v12 < 4)
  {
    if (v154 < 1)
    {
      v17 = 0;
      if (v24 | v154)
      {
        v33 = 1643;
        goto LABEL_403;
      }
    }

    else
    {
      v155 = *v12;
      if (v154 == 1)
      {
        v17 = v155 << 24;
      }

      else
      {
        v156 = (v155 << 16) | (v12[1] << 8);
        if (v154 != 2)
        {
          v156 |= v12[2];
        }

        v17 = v156 << 8;
      }
    }
  }

  else
  {
    v17 = bswap32(*v12);
  }

  if (v152 == 3)
  {
    PullParamSetPPS_cold_5();
    return 4294954582;
  }

  v17 <<= v24;
  if (v17 < 0x80000)
  {
    goto LABEL_321;
  }

  v157 = __clz(v17);
  v158 = v17 << (v157 + 1) >> -v157;
  if (!v157)
  {
    v158 = 0;
  }

  v159 = v157 + v24 + v157 + 1;
  v24 = v159 & 7;
  v12 += v159 >> 3;
  v160 = v13 - v12;
  if (v13 - v12 >= 4)
  {
    v17 = bswap32(*v12);
    goto LABEL_325;
  }

  if (v160 >= 1)
  {
    v161 = *v12;
    if (v160 == 1)
    {
      v17 = v161 << 24;
    }

    else
    {
      v162 = (v161 << 16) | (v12[1] << 8);
      if (v160 != 2)
      {
        v162 |= v12[2];
      }

      v17 = v162 << 8;
    }

    goto LABEL_325;
  }

  v17 = 0;
  if (v24 | v160)
  {
LABEL_321:
    v33 = 1645;
    goto LABEL_403;
  }

LABEL_325:
  v163 = ((v158 + (1 << v157)) >> 1) - ((v158 + (1 << v157)) >> 1) * 2 * ((v158 + (1 << v157)) & 1);
  *(a2 + 72) = v163;
  if (v163 - 26 <= 0xFFFFFFA7)
  {
    PullParamSetPPS_cold_4();
    return 4294954582;
  }

  v17 <<= v24;
  if (v17 < 0x80000)
  {
    goto LABEL_335;
  }

  v164 = __clz(v17);
  v165 = v17 << (v164 + 1) >> -v164;
  if (!v164)
  {
    v165 = 0;
  }

  v166 = v164 + v24 + v164 + 1;
  v24 = v166 & 7;
  v12 += v166 >> 3;
  v167 = v13 - v12;
  if (v13 - v12 >= 4)
  {
    v17 = bswap32(*v12);
    goto LABEL_339;
  }

  if (v167 >= 1)
  {
    v168 = *v12;
    if (v167 == 1)
    {
      v17 = v168 << 24;
    }

    else
    {
      v169 = (v168 << 16) | (v12[1] << 8);
      if (v167 != 2)
      {
        v169 |= v12[2];
      }

      v17 = v169 << 8;
    }

    goto LABEL_339;
  }

  v17 = 0;
  if (v24 | v167)
  {
LABEL_335:
    v33 = 1647;
    goto LABEL_403;
  }

LABEL_339:
  v170 = ((v165 + (1 << v164)) >> 1) - ((v165 + (1 << v164)) >> 1) * 2 * ((v165 + (1 << v164)) & 1);
  *(a2 + 76) = v170;
  if (v170 - 26 <= 0xFFFFFFCB)
  {
    PullParamSetPPS_cold_3();
    return 4294954582;
  }

  v17 <<= v24;
  if (v17 < 0x80000)
  {
    goto LABEL_349;
  }

  v171 = __clz(v17);
  v172 = v17 << (v171 + 1) >> -v171;
  if (!v171)
  {
    v172 = 0;
  }

  v173 = v171 + v24 + v171 + 1;
  v24 = v173 & 7;
  v12 += v173 >> 3;
  v174 = v13 - v12;
  if (v13 - v12 >= 4)
  {
    v17 = bswap32(*v12);
    goto LABEL_353;
  }

  if (v174 >= 1)
  {
    v175 = *v12;
    if (v174 == 1)
    {
      v17 = v175 << 24;
    }

    else
    {
      v176 = (v175 << 16) | (v12[1] << 8);
      if (v174 != 2)
      {
        v176 |= v12[2];
      }

      v17 = v176 << 8;
    }

    goto LABEL_353;
  }

  v17 = 0;
  if (v24 | v174)
  {
LABEL_349:
    v33 = 1649;
    goto LABEL_403;
  }

LABEL_353:
  v177 = ((v172 + (1 << v171)) >> 1) - ((v172 + (1 << v171)) >> 1) * 2 * ((v172 + (1 << v171)) & 1);
  *(a2 + 80) = v177;
  if (v177 - 13 <= 0xFFFFFFE6)
  {
    PullParamSetPPS_cold_2();
    return 4294954582;
  }

  *(a2 + 84) = ((v17 << v24) & 0x80000000) != 0;
  v178 = (v24 + 1) >> 3;
  v24 = (v24 + 1) & 7;
  v12 += v178;
  v179 = v13 - v12;
  if (v13 - v12 < 4)
  {
    if (v179 < 1)
    {
      v17 = 0;
      if (v24 | v179)
      {
        v33 = 1652;
        goto LABEL_403;
      }
    }

    else
    {
      v180 = *v12;
      if (v179 == 1)
      {
        v17 = v180 << 24;
      }

      else
      {
        v181 = (v180 << 16) | (v12[1] << 8);
        if (v179 != 2)
        {
          v181 |= v12[2];
        }

        v17 = v181 << 8;
      }
    }
  }

  else
  {
    v17 = bswap32(*v12);
  }

  *(a2 + 85) = ((v17 << v24) & 0x80000000) != 0;
  v182 = (v24 + 1) >> 3;
  v24 = (v24 + 1) & 7;
  v12 += v182;
  v183 = v13 - v12;
  if (v13 - v12 < 4)
  {
    if (v183 < 1)
    {
      v17 = 0;
      if (v24 | v183)
      {
        v33 = 1653;
        goto LABEL_403;
      }
    }

    else
    {
      v184 = *v12;
      if (v183 == 1)
      {
        v17 = v184 << 24;
      }

      else
      {
        v185 = (v184 << 16) | (v12[1] << 8);
        if (v183 != 2)
        {
          v185 |= v12[2];
        }

        v17 = v185 << 8;
      }
    }
  }

  else
  {
    v17 = bswap32(*v12);
  }

  *(a2 + 86) = ((v17 << v24) & 0x80000000) != 0;
  v186 = (v24 + 1) >> 3;
  v24 = (v24 + 1) & 7;
  v12 += v186;
  v187 = v13 - v12;
  if (v13 - v12 >= 4)
  {
    v17 = bswap32(*v12);
    goto LABEL_384;
  }

  if (v187 >= 1)
  {
    v188 = *v12;
    if (v187 == 1)
    {
      v17 = v188 << 24;
    }

    else
    {
      v189 = (v188 << 16) | (v12[1] << 8);
      if (v187 != 2)
      {
        v189 |= v12[2];
      }

      v17 = v189 << 8;
    }

    goto LABEL_384;
  }

  v17 = 0;
  if (!(v24 | v187))
  {
LABEL_384:
    v17 <<= v24;
LABEL_385:
    result = 0;
    a1[2] = v12;
    *(a1 + 6) = v17;
    *(a1 + 28) = v24;
    return result;
  }

  v33 = 1654;
LABEL_403:
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v33, v2, v192, v193);
  if (!result)
  {
    goto LABEL_385;
  }

  return result;
}

uint64_t FigH264Bridge_CopyDataWithEmulationPreventionBytesRemoved(const __CFData *a1, __CFData **a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);

  return RemoveEmulation3Byte(BytePtr, Length, a2);
}

void FigH264Bridge_HLSfMP4ParsingInfoDestroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

size_t PullVUIParamSet(uint64_t *a1, unsigned int *a2)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = *(a1 + 28);
  v7 = *(a1 + 6);
  v8 = a1[2];
  *a2 = v7 >> 31;
  v9 = ++v6 & 7;
  v10 = (v8 + (v6 >> 3));
  v11 = v4 + v5;
  v12 = v4 + v5 - v10;
  if (v12 < 4)
  {
    if (v12 < 1)
    {
      v13 = 0;
      if (v9 | v12)
      {
        v15 = 1147;
        goto LABEL_758;
      }
    }

    else
    {
      v14 = *v10;
      if (v12 == 1)
      {
        v13 = v14 << 24;
      }

      else
      {
        v16 = (v14 << 16) | (*(v10 + 1) << 8);
        if (v12 != 2)
        {
          v16 |= *(v10 + 2);
        }

        v13 = v16 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  v17 = v13 << v9;
  if ((v7 & 0x80000000) != 0)
  {
    v19 = HIBYTE(v17);
    a2[1] = HIBYTE(v17);
    v18 = (v10 + 1);
    v20 = v11 - (v10 + 1);
    if (v20 < 4)
    {
      if (v20 < 1)
      {
        v13 = 0;
        if (v9 | v20)
        {
          v15 = 1153;
          goto LABEL_41;
        }
      }

      else
      {
        v21 = *v18;
        if (v20 == 1)
        {
          v13 = v21 << 24;
        }

        else
        {
          v22 = (v21 << 16) | (*(v10 + 2) << 8);
          if (v20 != 2)
          {
            v22 |= *(v10 + 3);
          }

          v13 = v22 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v18);
    }

    v17 = v13 << v9;
    if (v19 != 255)
    {
      goto LABEL_46;
    }

    a2[2] = HIWORD(v17);
    v18 = (v10 + 3);
    v23 = v11 - (v10 + 3);
    if (v23 < 4)
    {
      if (v23 < 1)
      {
        v13 = 0;
        if (v9 | v23)
        {
          v15 = 1156;
          goto LABEL_41;
        }
      }

      else
      {
        v24 = *v18;
        if (v23 == 1)
        {
          v13 = v24 << 24;
        }

        else
        {
          v25 = (v24 << 16) | (*(v10 + 4) << 8);
          if (v23 != 2)
          {
            v25 |= *(v10 + 5);
          }

          v13 = v25 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v18);
    }

    a2[3] = v13 << v9 >> 16;
    v18 = (v10 + 5);
    v26 = v11 - (v10 + 5);
    if (v26 >= 4)
    {
      v13 = bswap32(*v18);
      goto LABEL_45;
    }

    if (v26 >= 1)
    {
      v27 = *v18;
      if (v26 == 1)
      {
        v13 = v27 << 24;
      }

      else
      {
        v28 = (v27 << 16) | (*(v10 + 6) << 8);
        if (v26 != 2)
        {
          v28 |= *(v10 + 7);
        }

        v13 = v28 << 8;
      }

      goto LABEL_45;
    }

    v13 = 0;
    if (!(v9 | v26))
    {
LABEL_45:
      v17 = v13 << v9;
      goto LABEL_46;
    }

    v15 = 1157;
LABEL_41:
    v10 = v18;
    goto LABEL_758;
  }

  v18 = v10;
LABEL_46:
  v29 = v8 - v4;
  if (v5 < v29)
  {
    PullVUIParamSet_cold_5();
    return 4294954582;
  }

  a2[4] = v17 >> 31;
  v30 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v18 + v30);
  v31 = v11 - (v18 + v30);
  if (v31 < 4)
  {
    if (v31 < 1)
    {
      v13 = 0;
      if (v9 | v31)
      {
        v15 = 1162;
        goto LABEL_758;
      }
    }

    else
    {
      v32 = *v10;
      if (v31 == 1)
      {
        v13 = v32 << 24;
      }

      else
      {
        v33 = (v32 << 16) | (*(v10 + 1) << 8);
        if (v31 != 2)
        {
          v33 |= *(v10 + 2);
        }

        v13 = v33 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  v34 = v13 << v9;
  if ((v17 & 0x80000000) != 0)
  {
    a2[5] = v34 >> 31;
    v35 = (v9 + 1) >> 3;
    v9 = (v9 + 1) & 7;
    v10 = (v10 + v35);
    v36 = v11 - v10;
    if (v11 - v10 < 4)
    {
      if (v36 < 1)
      {
        v13 = 0;
        if (v9 | v36)
        {
          v15 = 1168;
          goto LABEL_758;
        }
      }

      else
      {
        v37 = *v10;
        if (v36 == 1)
        {
          v13 = v37 << 24;
        }

        else
        {
          v38 = (v37 << 16) | (*(v10 + 1) << 8);
          if (v36 != 2)
          {
            v38 |= *(v10 + 2);
          }

          v13 = v38 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v10);
    }

    v34 = v13 << v9;
  }

  a2[6] = v34 >> 31;
  v39 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v10 + v39);
  v40 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v40 < 1)
    {
      v13 = 0;
      if (v9 | v40)
      {
        v15 = 1171;
        goto LABEL_758;
      }
    }

    else
    {
      v41 = *v10;
      if (v40 == 1)
      {
        v13 = v41 << 24;
      }

      else
      {
        v42 = (v41 << 16) | (*(v10 + 1) << 8);
        if (v40 != 2)
        {
          v42 |= *(v10 + 2);
        }

        v13 = v42 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  v43 = v13 << v9;
  if ((v34 & 0x80000000) != 0)
  {
    a2[7] = v43 >> 29;
    v44 = (v9 + 3) >> 3;
    v9 = (v9 + 3) & 7;
    v10 = (v10 + v44);
    v45 = v11 - v10;
    if (v11 - v10 < 4)
    {
      if (v45 < 1)
      {
        v13 = 0;
        if (v9 | v45)
        {
          v15 = 1177;
          goto LABEL_758;
        }
      }

      else
      {
        v46 = *v10;
        if (v45 == 1)
        {
          v13 = v46 << 24;
        }

        else
        {
          v47 = (v46 << 16) | (*(v10 + 1) << 8);
          if (v45 != 2)
          {
            v47 |= *(v10 + 2);
          }

          v13 = v47 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v10);
    }

    a2[8] = v13 << v9 >> 31;
    v48 = (v9 + 1) >> 3;
    v9 = (v9 + 1) & 7;
    v10 = (v10 + v48);
    v49 = v11 - v10;
    if (v11 - v10 < 4)
    {
      if (v49 < 1)
      {
        v13 = 0;
        if (v9 | v49)
        {
          v15 = 1178;
          goto LABEL_758;
        }
      }

      else
      {
        v50 = *v10;
        if (v49 == 1)
        {
          v13 = v50 << 24;
        }

        else
        {
          v51 = (v50 << 16) | (*(v10 + 1) << 8);
          if (v49 != 2)
          {
            v51 |= *(v10 + 2);
          }

          v13 = v51 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v10);
    }

    v52 = v13 << v9;
    a2[9] = v13 << v9 >> 31;
    v53 = (v9 + 1) >> 3;
    v9 = (v9 + 1) & 7;
    v54 = v10 + v53;
    v55 = v11 - (v10 + v53);
    if (v55 < 4)
    {
      if (v55 < 1)
      {
        v13 = 0;
        if (v9 | v55)
        {
          v15 = 1179;
LABEL_761:
          v10 = v54;
          goto LABEL_758;
        }
      }

      else
      {
        v56 = *v54;
        if (v55 == 1)
        {
          v13 = v56 << 24;
        }

        else
        {
          v57 = (v56 << 16) | (v54[1] << 8);
          if (v55 != 2)
          {
            v57 |= v54[2];
          }

          v13 = v57 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v54);
    }

    v43 = v13 << v9;
    if ((v52 & 0x80000000) != 0)
    {
      a2[10] = HIBYTE(v43);
      v10 = (v54 + 1);
      v58 = v11 - (v54 + 1);
      if (v58 < 4)
      {
        if (v58 < 1)
        {
          v13 = 0;
          if (v9 | v58)
          {
            v15 = 1183;
            goto LABEL_758;
          }
        }

        else
        {
          v59 = *v10;
          if (v58 == 1)
          {
            v13 = v59 << 24;
          }

          else
          {
            v60 = (v59 << 16) | (v54[2] << 8);
            if (v58 != 2)
            {
              v60 |= v54[3];
            }

            v13 = v60 << 8;
          }
        }
      }

      else
      {
        v13 = bswap32(*v10);
      }

      a2[11] = v13 << v9 >> 24;
      v10 = (v54 + 2);
      v61 = v11 - (v54 + 2);
      if (v61 < 4)
      {
        if (v61 < 1)
        {
          v13 = 0;
          if (v9 | v61)
          {
            v15 = 1184;
            goto LABEL_758;
          }
        }

        else
        {
          v62 = *v10;
          if (v61 == 1)
          {
            v13 = v62 << 24;
          }

          else
          {
            v63 = (v62 << 16) | (v54[3] << 8);
            if (v61 != 2)
            {
              v63 |= v54[4];
            }

            v13 = v63 << 8;
          }
        }
      }

      else
      {
        v13 = bswap32(*v10);
      }

      a2[12] = v13 << v9 >> 24;
      v10 = (v54 + 3);
      v64 = v11 - (v54 + 3);
      if (v64 < 4)
      {
        if (v64 < 1)
        {
          v13 = 0;
          if (v9 | v64)
          {
            v15 = 1185;
            goto LABEL_758;
          }
        }

        else
        {
          v65 = *v10;
          if (v64 == 1)
          {
            v13 = v65 << 24;
          }

          else
          {
            v66 = (v65 << 16) | (v54[4] << 8);
            if (v64 != 2)
            {
              v66 |= v54[5];
            }

            v13 = v66 << 8;
          }
        }
      }

      else
      {
        v13 = bswap32(*v10);
      }

      v43 = v13 << v9;
    }

    else
    {
      v10 = v54;
    }
  }

  a2[13] = v43 >> 31;
  v67 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v10 + v67);
  v68 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v68 < 1)
    {
      v13 = 0;
      if (v9 | v68)
      {
        v15 = 1190;
        goto LABEL_758;
      }
    }

    else
    {
      v69 = *v10;
      if (v68 == 1)
      {
        v13 = v69 << 24;
      }

      else
      {
        v70 = (v69 << 16) | (*(v10 + 1) << 8);
        if (v68 != 2)
        {
          v70 |= *(v10 + 2);
        }

        v13 = v70 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  v13 <<= v9;
  if ((v43 & 0x80000000) == 0)
  {
    v71 = v13;
    goto LABEL_182;
  }

  if (v13 < 0x80000)
  {
    goto LABEL_164;
  }

  v72 = __clz(v13);
  v73 = v13 << (v72 + 1) >> -v72;
  if (!v72)
  {
    v73 = 0;
  }

  a2[14] = v73 + ~(-1 << v72);
  v74 = v72 + v9 + v72 + 1;
  v9 = v74 & 7;
  v10 = (v10 + (v74 >> 3));
  v75 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_168;
  }

  if (v75 >= 1)
  {
    v76 = *v10;
    if (v75 == 1)
    {
      v13 = v76 << 24;
    }

    else
    {
      v77 = (v76 << 16) | (*(v10 + 1) << 8);
      if (v75 != 2)
      {
        v77 |= *(v10 + 2);
      }

      v13 = v77 << 8;
    }

    goto LABEL_168;
  }

  v13 = 0;
  if (v9 | v75)
  {
LABEL_164:
    v15 = 1193;
    goto LABEL_758;
  }

LABEL_168:
  v13 <<= v9;
  if (v13 < 0x80000)
  {
    goto LABEL_177;
  }

  v78 = __clz(v13);
  v79 = v13 << (v78 + 1) >> -v78;
  if (!v78)
  {
    v79 = 0;
  }

  a2[15] = v79 + ~(-1 << v78);
  v80 = v78 + v9 + v78 + 1;
  v9 = v80 & 7;
  v10 = (v10 + (v80 >> 3));
  v81 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_181;
  }

  if (v81 >= 1)
  {
    v82 = *v10;
    if (v81 == 1)
    {
      v13 = v82 << 24;
    }

    else
    {
      v83 = (v82 << 16) | (*(v10 + 1) << 8);
      if (v81 != 2)
      {
        v83 |= *(v10 + 2);
      }

      v13 = v83 << 8;
    }

    goto LABEL_181;
  }

  v13 = 0;
  if (v9 | v81)
  {
LABEL_177:
    v15 = 1194;
    goto LABEL_758;
  }

LABEL_181:
  v71 = v13 << v9;
  v5 = *(a1 + 2);
  v29 = *(a1 + 4) - *a1;
LABEL_182:
  if (v5 < v29)
  {
    PullVUIParamSet_cold_4();
    return 4294954582;
  }

  a2[16] = v71 >> 31;
  v84 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v10 + v84);
  v85 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v85 < 1)
    {
      v13 = 0;
      if (v9 | v85)
      {
        v15 = 1201;
        goto LABEL_758;
      }
    }

    else
    {
      v86 = *v10;
      if (v85 == 1)
      {
        v13 = v86 << 24;
      }

      else
      {
        v87 = (v86 << 16) | (*(v10 + 1) << 8);
        if (v85 != 2)
        {
          v87 |= *(v10 + 2);
        }

        v13 = v87 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  v88 = v13 << v9;
  if ((v71 & 0x80000000) == 0)
  {
    goto LABEL_245;
  }

  v89 = (v10 + 2);
  v90 = v11 - (v10 + 2);
  if (v90 < 4)
  {
    if (v90 < 1)
    {
      v13 = 0;
      if (v9 | v90)
      {
        goto LABEL_768;
      }

      v91 = 0;
    }

    else
    {
      v92 = *v89;
      if (v90 == 1)
      {
        v91 = v92 << 24;
      }

      else
      {
        v93 = (v92 << 16) | (*(v10 + 3) << 8);
        if (v90 != 2)
        {
          v93 |= *(v10 + 4);
        }

        v91 = v93 << 8;
      }
    }
  }

  else
  {
    v91 = bswap32(*v89);
  }

  v89 = v10 + 1;
  v94 = v11 - (v10 + 4);
  if (v94 >= 4)
  {
    v95 = bswap32(*v89);
    goto LABEL_214;
  }

  if (v94 < 1)
  {
    v13 = 0;
    if (!(v9 | v94))
    {
      v95 = 0;
      goto LABEL_214;
    }

LABEL_768:
    v15 = 1204;
    v10 = v89;
    goto LABEL_758;
  }

  v96 = *v89;
  if (v94 == 1)
  {
    v95 = v96 << 24;
  }

  else
  {
    v97 = (v96 << 16) | (*(v10 + 5) << 8);
    if (v94 != 2)
    {
      v97 |= *(v10 + 6);
    }

    v95 = v97 << 8;
  }

LABEL_214:
  a2[17] = (v91 << v9 >> 16) | v88 & 0xFFFF0000;
  v98 = (v10 + 6);
  v99 = v11 - (v10 + 6);
  if (v99 < 4)
  {
    if (v99 < 1)
    {
      v13 = 0;
      if (v9 | v99)
      {
        goto LABEL_230;
      }

      v100 = 0;
    }

    else
    {
      v101 = *v98;
      if (v99 == 1)
      {
        v100 = v101 << 24;
      }

      else
      {
        v102 = (v101 << 16) | (*(v10 + 7) << 8);
        if (v99 != 2)
        {
          v102 |= *(v10 + 8);
        }

        v100 = v102 << 8;
      }
    }
  }

  else
  {
    v100 = bswap32(*v98);
  }

  v98 = v10 + 2;
  v103 = v11 - (v10 + 8);
  if (v103 >= 4)
  {
    v13 = bswap32(*v98);
    goto LABEL_234;
  }

  if (v103 >= 1)
  {
    v104 = *v98;
    if (v103 == 1)
    {
      v13 = v104 << 24;
    }

    else
    {
      v105 = (v104 << 16) | (*(v10 + 9) << 8);
      if (v103 != 2)
      {
        v105 |= *(v10 + 10);
      }

      v13 = v105 << 8;
    }

    goto LABEL_234;
  }

  v13 = 0;
  if (v9 | v103)
  {
LABEL_230:
    v15 = 1205;
    v10 = v98;
    goto LABEL_758;
  }

LABEL_234:
  a2[18] = (v100 << v9 >> 16) | (v95 << v9) & 0xFFFF0000;
  a2[19] = v13 << v9 >> 31;
  v106 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v98 + v106);
  v107 = v11 - (v98 + v106);
  if (v107 < 4)
  {
    if (v107 < 1)
    {
      v13 = 0;
      if (v9 | v107)
      {
        v15 = 1206;
        goto LABEL_758;
      }
    }

    else
    {
      v108 = *v10;
      if (v107 == 1)
      {
        v13 = v108 << 24;
      }

      else
      {
        v109 = (v108 << 16) | (*(v10 + 1) << 8);
        if (v107 != 2)
        {
          v109 |= *(v10 + 2);
        }

        v13 = v109 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  v88 = v13 << v9;
LABEL_245:
  if (*(a1 + 2) < *(a1 + 4) - *a1)
  {
    PullVUIParamSet_cold_3();
    return 4294954582;
  }

  a2[20] = v88 >> 31;
  v110 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v10 + v110);
  v111 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v111 < 1)
    {
      v13 = 0;
      if (v9 | v111)
      {
        v15 = 1214;
        goto LABEL_758;
      }
    }

    else
    {
      v112 = *v10;
      if (v111 == 1)
      {
        v13 = v112 << 24;
      }

      else
      {
        v113 = (v112 << 16) | (*(v10 + 1) << 8);
        if (v111 != 2)
        {
          v113 |= *(v10 + 2);
        }

        v13 = v113 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  v13 <<= v9;
  if ((v88 & 0x80000000) == 0)
  {
    v114 = v13;
    goto LABEL_436;
  }

  if (v13 < 0x80000)
  {
    goto LABEL_268;
  }

  v115 = __clz(v13);
  if (v115)
  {
    v116 = v13 << (v115 + 1) >> -v115;
  }

  else
  {
    v116 = 0;
  }

  v117 = -1 << v115;
  v118 = v116 + ~(-1 << v115);
  a2[32] = v118;
  v119 = v115 + v9 + v115 + 1;
  v9 = v119 & 7;
  v10 = (v10 + (v119 >> 3));
  v120 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_272;
  }

  if (v120 >= 1)
  {
    v121 = *v10;
    if (v120 == 1)
    {
      v13 = v121 << 24;
    }

    else
    {
      v122 = (v121 << 16) | (*(v10 + 1) << 8);
      if (v120 != 2)
      {
        v122 |= *(v10 + 2);
      }

      v13 = v122 << 8;
    }

    goto LABEL_272;
  }

  v13 = 0;
  if (v9 | v120)
  {
LABEL_268:
    v15 = 1222;
    goto LABEL_758;
  }

LABEL_272:
  v13 <<= v9;
  if (v118 > 0x1F)
  {
    v15 = 1223;
    goto LABEL_758;
  }

  a2[33] = v13 >> 28;
  v123 = (v9 + 4) >> 3;
  v9 = (v9 + 4) & 7;
  v10 = (v10 + v123);
  v124 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v124 < 1)
    {
      v13 = 0;
      if (v9 | v124)
      {
        v15 = 1224;
        goto LABEL_758;
      }
    }

    else
    {
      v125 = *v10;
      if (v124 == 1)
      {
        v13 = v125 << 24;
      }

      else
      {
        v126 = (v125 << 16) | (*(v10 + 1) << 8);
        if (v124 != 2)
        {
          v126 |= *(v10 + 2);
        }

        v13 = v126 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  a2[34] = v13 << v9 >> 28;
  v127 = (v9 + 4) >> 3;
  v9 = (v9 + 4) & 7;
  v10 = (v10 + v127);
  v128 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v128 < 1)
    {
      v13 = 0;
      if (v9 | v128)
      {
        v15 = 1225;
        goto LABEL_758;
      }
    }

    else
    {
      v129 = *v10;
      if (v128 == 1)
      {
        v13 = v129 << 24;
      }

      else
      {
        v130 = (v129 << 16) | (*(v10 + 1) << 8);
        if (v128 != 2)
        {
          v130 |= *(v10 + 2);
        }

        v13 = v130 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  v131 = 0;
  v132 = v13 << v9;
  v133 = v116 - v117;
  v15 = 1228;
  do
  {
    if (v132 >= 0x80000)
    {
      v134 = v9 + 2 * __clz(v132) + 1;
      v9 = v134 & 7;
      v10 = (v10 + (v134 >> 3));
LABEL_321:
      v147 = v11 - v10;
      if (v11 - v10 >= 4)
      {
        goto LABEL_329;
      }

      if (v147 < 1)
      {
        v13 = 0;
        if (v9 | v147)
        {
          goto LABEL_758;
        }
      }

      else
      {
        v148 = *v10;
        if (v147 == 1)
        {
          v13 = v148 << 24;
        }

        else
        {
          v152 = (v148 << 16) | (*(v10 + 1) << 8);
          if (v147 != 2)
          {
            v152 |= *(v10 + 2);
          }

          v13 = v152 << 8;
        }
      }

      goto LABEL_343;
    }

    v135 = (v9 + 1) >> 3;
    v9 = (v9 + 1) & 7;
    v10 = (v10 + v135);
    v136 = v11 - v10;
    if (v11 - v10 < 4)
    {
      if (v136 < 1)
      {
        v13 = 0;
        if (v9 | v136)
        {
          goto LABEL_758;
        }
      }

      else
      {
        v137 = *v10;
        if (v136 == 1)
        {
          v13 = v137 << 24;
        }

        else
        {
          v138 = (v137 << 16) | (*(v10 + 1) << 8);
          if (v136 != 2)
          {
            v138 |= *(v10 + 2);
          }

          v13 = v138 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v10);
    }

    v139 = 0;
    v13 <<= v9;
    do
    {
      v140 = v9;
      v141 = v13;
      v142 = (v9 + 1) >> 3;
      v9 = (v9 + 1) & 7;
      v10 = (v10 + v142);
      v143 = v11 - v10;
      if (v11 - v10 < 4)
      {
        if (v143 < 1)
        {
          v13 = 0;
          if (v9 | v143)
          {
            goto LABEL_758;
          }
        }

        else
        {
          v144 = *v10;
          if (v143 == 1)
          {
            v13 = v144 << 24;
          }

          else
          {
            v145 = (v144 << 16) | (*(v10 + 1) << 8);
            if (v143 != 2)
            {
              v145 |= *(v10 + 2);
            }

            v13 = v145 << 8;
          }
        }
      }

      else
      {
        v13 = bswap32(*v10);
      }

      v13 <<= v9;
      ++v139;
    }

    while ((v141 & 0x80000000) == 0);
    if (v139 - 1 > 0x1E)
    {
      goto LABEL_758;
    }

    v146 = ((v140 + 1) & 7) + v139;
    if (v139 <= 0x18)
    {
      v9 = v146 & 7;
      v10 = (v10 + (v146 >> 3));
      goto LABEL_321;
    }

    v9 = v146 & 7;
    v54 = v10 + ((v146 - 16) >> 3);
    v149 = v11 - v54;
    if (v11 - v54 <= 3 && v149 <= 0 && v9 | v149)
    {
LABEL_760:
      v13 = 0;
      goto LABEL_761;
    }

    v10 = (v54 + 2);
    v150 = v11 - (v54 + 2);
    if (v150 >= 4)
    {
LABEL_329:
      v13 = bswap32(*v10);
      goto LABEL_343;
    }

    if (v150 < 1)
    {
      v13 = 0;
      if (v9 | v150)
      {
        goto LABEL_758;
      }
    }

    else
    {
      v151 = *v10;
      if (v150 == 1)
      {
        v13 = v151 << 24;
      }

      else
      {
        v153 = (v151 << 16) | (v54[3] << 8);
        if (v150 != 2)
        {
          v153 |= v54[4];
        }

        v13 = v153 << 8;
      }
    }

LABEL_343:
    if (v13 << v9 < 0x80000)
    {
      v157 = (v9 + 1) >> 3;
      v9 = (v9 + 1) & 7;
      v10 = (v10 + v157);
      v158 = v11 - v10;
      if (v11 - v10 < 4)
      {
        if (v158 < 1)
        {
          v13 = 0;
          if (v9 | v158)
          {
            goto LABEL_755;
          }
        }

        else
        {
          v159 = *v10;
          if (v158 == 1)
          {
            v13 = v159 << 24;
          }

          else
          {
            v160 = (v159 << 16) | (*(v10 + 1) << 8);
            if (v158 != 2)
            {
              v160 |= *(v10 + 2);
            }

            v13 = v160 << 8;
          }
        }
      }

      else
      {
        v13 = bswap32(*v10);
      }

      v161 = 0;
      v13 <<= v9;
      do
      {
        v162 = v9;
        v163 = v13;
        v164 = (v9 + 1) >> 3;
        v9 = (v9 + 1) & 7;
        v10 = (v10 + v164);
        v165 = v11 - v10;
        if (v11 - v10 < 4)
        {
          if (v165 < 1)
          {
            v13 = 0;
            if (v9 | v165)
            {
              goto LABEL_755;
            }
          }

          else
          {
            v166 = *v10;
            if (v165 == 1)
            {
              v13 = v166 << 24;
            }

            else
            {
              v167 = (v166 << 16) | (*(v10 + 1) << 8);
              if (v165 != 2)
              {
                v167 |= *(v10 + 2);
              }

              v13 = v167 << 8;
            }
          }
        }

        else
        {
          v13 = bswap32(*v10);
        }

        v13 <<= v9;
        ++v161;
      }

      while ((v163 & 0x80000000) == 0);
      if (v161 - 1 > 0x1E)
      {
        goto LABEL_755;
      }

      v168 = ((v162 + 1) & 7) + v161;
      if (v161 > 0x18)
      {
        v9 = v168 & 7;
        v10 = (v10 + ((v168 - 16) >> 3));
        v169 = v11 - v10;
        if (v11 - v10 <= 3 && v169 <= 0 && v9 | v169)
        {
          goto LABEL_754;
        }

        v10 = (v10 + 2);
      }

      else
      {
        v9 = v168 & 7;
        v10 = (v10 + (v168 >> 3));
      }

      v170 = v11 - v10;
      if (v11 - v10 <= 3 && v170 <= 0 && v9 | v170)
      {
        goto LABEL_754;
      }
    }

    else
    {
      v154 = v9 + 2 * __clz(v13 << v9) + 1;
      v9 = v154 & 7;
      v10 = (v10 + (v154 >> 3));
      if (v11 - v10 <= 3 && v11 - v10 <= 0 && (v9 | (v11 - v10)) != 0)
      {
LABEL_754:
        v13 = 0;
LABEL_755:
        v15 = 1229;
        goto LABEL_758;
      }
    }

    v171 = (v9 + 1) >> 3;
    v9 = (v9 + 1) & 7;
    v10 = (v10 + v171);
    v172 = v11 - v10;
    if (v11 - v10 < 4)
    {
      if (v172 < 1)
      {
        v13 = 0;
        if (v9 | v172)
        {
          v15 = 1230;
          goto LABEL_758;
        }
      }

      else
      {
        v173 = *v10;
        if (v172 == 1)
        {
          v13 = v173 << 24;
        }

        else
        {
          v174 = (v173 << 16) | (*(v10 + 1) << 8);
          if (v172 != 2)
          {
            v174 |= *(v10 + 2);
          }

          v13 = v174 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v10);
    }

    v132 = v13 << v9;
    ++v131;
  }

  while (v131 != v133);
  a2[35] = v132 >> 27;
  v175 = (v9 + 5) >> 3;
  v9 = (v9 + 5) & 7;
  v10 = (v10 + v175);
  v176 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_405;
  }

  if (v176 < 1)
  {
    v13 = 0;
    if (!(v9 | v176))
    {
      goto LABEL_405;
    }

    v15 = 1233;
    goto LABEL_758;
  }

  v177 = *v10;
  if (v176 == 1)
  {
    v13 = v177 << 24;
  }

  else
  {
    v178 = (v177 << 16) | (*(v10 + 1) << 8);
    if (v176 != 2)
    {
      v178 |= *(v10 + 2);
    }

    v13 = v178 << 8;
  }

LABEL_405:
  a2[36] = v13 << v9 >> 27;
  v179 = (v9 + 5) >> 3;
  v9 = (v9 + 5) & 7;
  v10 = (v10 + v179);
  v180 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_415;
  }

  if (v180 < 1)
  {
    v13 = 0;
    if (!(v9 | v180))
    {
      goto LABEL_415;
    }

    v15 = 1234;
    goto LABEL_758;
  }

  v181 = *v10;
  if (v180 == 1)
  {
    v13 = v181 << 24;
  }

  else
  {
    v182 = (v181 << 16) | (*(v10 + 1) << 8);
    if (v180 != 2)
    {
      v182 |= *(v10 + 2);
    }

    v13 = v182 << 8;
  }

LABEL_415:
  a2[37] = v13 << v9 >> 27;
  v183 = (v9 + 5) >> 3;
  v9 = (v9 + 5) & 7;
  v10 = (v10 + v183);
  v184 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_425;
  }

  if (v184 < 1)
  {
    v13 = 0;
    if (!(v9 | v184))
    {
      goto LABEL_425;
    }

    v15 = 1235;
    goto LABEL_758;
  }

  v185 = *v10;
  if (v184 == 1)
  {
    v13 = v185 << 24;
  }

  else
  {
    v186 = (v185 << 16) | (*(v10 + 1) << 8);
    if (v184 != 2)
    {
      v186 |= *(v10 + 2);
    }

    v13 = v186 << 8;
  }

LABEL_425:
  a2[38] = v13 << v9 >> 27;
  v187 = (v9 + 5) >> 3;
  v9 = (v9 + 5) & 7;
  v10 = (v10 + v187);
  v188 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_435;
  }

  if (v188 < 1)
  {
    v13 = 0;
    if (!(v9 | v188))
    {
      goto LABEL_435;
    }

    v15 = 1236;
    goto LABEL_758;
  }

  v189 = *v10;
  if (v188 == 1)
  {
    v13 = v189 << 24;
  }

  else
  {
    v190 = (v189 << 16) | (*(v10 + 1) << 8);
    if (v188 != 2)
    {
      v190 |= *(v10 + 2);
    }

    v13 = v190 << 8;
  }

LABEL_435:
  v114 = v13 << v9;
LABEL_436:
  a2[21] = v114 >> 31;
  v191 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v10 + v191);
  v192 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_446;
  }

  if (v192 < 1)
  {
    v13 = 0;
    if (!(v9 | v192))
    {
      goto LABEL_446;
    }

    v15 = 1239;
    goto LABEL_758;
  }

  v193 = *v10;
  if (v192 == 1)
  {
    v13 = v193 << 24;
  }

  else
  {
    v194 = (v193 << 16) | (*(v10 + 1) << 8);
    if (v192 != 2)
    {
      v194 |= *(v10 + 2);
    }

    v13 = v194 << 8;
  }

LABEL_446:
  v13 <<= v9;
  if ((v114 & 0x80000000) == 0)
  {
    goto LABEL_626;
  }

  if (v13 < 0x80000)
  {
LABEL_457:
    v15 = 1247;
    goto LABEL_758;
  }

  v195 = __clz(v13);
  if (v195)
  {
    v196 = v13 << (v195 + 1) >> -v195;
  }

  else
  {
    v196 = 0;
  }

  v197 = -1 << v195;
  v198 = v196 + ~(-1 << v195);
  a2[32] = v198;
  v199 = v195 + v9 + v195 + 1;
  v9 = v199 & 7;
  v10 = (v10 + (v199 >> 3));
  v200 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_461;
  }

  if (v200 < 1)
  {
    v13 = 0;
    if (!(v9 | v200))
    {
      goto LABEL_461;
    }

    goto LABEL_457;
  }

  v201 = *v10;
  if (v200 == 1)
  {
    v13 = v201 << 24;
  }

  else
  {
    v202 = (v201 << 16) | (*(v10 + 1) << 8);
    if (v200 != 2)
    {
      v202 |= *(v10 + 2);
    }

    v13 = v202 << 8;
  }

LABEL_461:
  v13 <<= v9;
  if (v198 > 0x1F)
  {
    v15 = 1248;
    goto LABEL_758;
  }

  a2[33] = v13 >> 28;
  v203 = (v9 + 4) >> 3;
  v9 = (v9 + 4) & 7;
  v10 = (v10 + v203);
  v204 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_472;
  }

  if (v204 < 1)
  {
    v13 = 0;
    if (!(v9 | v204))
    {
      goto LABEL_472;
    }

    v15 = 1249;
    goto LABEL_758;
  }

  v205 = *v10;
  if (v204 == 1)
  {
    v13 = v205 << 24;
  }

  else
  {
    v206 = (v205 << 16) | (*(v10 + 1) << 8);
    if (v204 != 2)
    {
      v206 |= *(v10 + 2);
    }

    v13 = v206 << 8;
  }

LABEL_472:
  a2[34] = v13 << v9 >> 28;
  v207 = (v9 + 4) >> 3;
  v9 = (v9 + 4) & 7;
  v10 = (v10 + v207);
  v208 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_482;
  }

  if (v208 < 1)
  {
    v13 = 0;
    if (!(v9 | v208))
    {
      goto LABEL_482;
    }

    v15 = 1250;
LABEL_758:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v15, v2, v326, v327);
    if (!result)
    {
      goto LABEL_750;
    }

    return result;
  }

  v209 = *v10;
  if (v208 == 1)
  {
    v13 = v209 << 24;
  }

  else
  {
    v210 = (v209 << 16) | (*(v10 + 1) << 8);
    if (v208 != 2)
    {
      v210 |= *(v10 + 2);
    }

    v13 = v210 << 8;
  }

LABEL_482:
  v211 = 0;
  v212 = v13 << v9;
  v213 = v196 - v197;
  v15 = 1253;
  while (2)
  {
    if (v212 >= 0x80000)
    {
      v214 = v9 + 2 * __clz(v212) + 1;
      v9 = v214 & 7;
      v10 = (v10 + (v214 >> 3));
      goto LABEL_510;
    }

    v215 = (v9 + 1) >> 3;
    v9 = (v9 + 1) & 7;
    v10 = (v10 + v215);
    v216 = v11 - v10;
    if (v11 - v10 < 4)
    {
      if (v216 < 1)
      {
        v13 = 0;
        if (v9 | v216)
        {
          goto LABEL_758;
        }
      }

      else
      {
        v217 = *v10;
        if (v216 == 1)
        {
          v13 = v217 << 24;
        }

        else
        {
          v218 = (v217 << 16) | (*(v10 + 1) << 8);
          if (v216 != 2)
          {
            v218 |= *(v10 + 2);
          }

          v13 = v218 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v10);
    }

    v219 = 0;
    v13 <<= v9;
    do
    {
      v220 = v9;
      v221 = v13;
      v222 = (v9 + 1) >> 3;
      v9 = (v9 + 1) & 7;
      v10 = (v10 + v222);
      v223 = v11 - v10;
      if (v11 - v10 < 4)
      {
        if (v223 < 1)
        {
          v13 = 0;
          if (v9 | v223)
          {
            goto LABEL_758;
          }
        }

        else
        {
          v224 = *v10;
          if (v223 == 1)
          {
            v13 = v224 << 24;
          }

          else
          {
            v225 = (v224 << 16) | (*(v10 + 1) << 8);
            if (v223 != 2)
            {
              v225 |= *(v10 + 2);
            }

            v13 = v225 << 8;
          }
        }
      }

      else
      {
        v13 = bswap32(*v10);
      }

      v13 <<= v9;
      ++v219;
    }

    while ((v221 & 0x80000000) == 0);
    if (v219 - 1 > 0x1E)
    {
      goto LABEL_758;
    }

    v226 = ((v220 + 1) & 7) + v219;
    if (v219 <= 0x18)
    {
      v9 = v226 & 7;
      v10 = (v10 + (v226 >> 3));
LABEL_510:
      v227 = v11 - v10;
      if (v11 - v10 < 4)
      {
        if (v227 < 1)
        {
          v13 = 0;
          if (v9 | v227)
          {
            goto LABEL_758;
          }
        }

        else
        {
          v228 = *v10;
          if (v227 == 1)
          {
            v13 = v228 << 24;
          }

          else
          {
            v232 = (v228 << 16) | (*(v10 + 1) << 8);
            if (v227 != 2)
            {
              v232 |= *(v10 + 2);
            }

            v13 = v232 << 8;
          }
        }

        goto LABEL_532;
      }

LABEL_518:
      v13 = bswap32(*v10);
      goto LABEL_532;
    }

    v9 = v226 & 7;
    v54 = v10 + ((v226 - 16) >> 3);
    v229 = v11 - v54;
    if (v11 - v54 <= 3 && v229 <= 0 && v9 | v229)
    {
      goto LABEL_760;
    }

    v10 = (v54 + 2);
    v230 = v11 - (v54 + 2);
    if (v230 >= 4)
    {
      goto LABEL_518;
    }

    if (v230 < 1)
    {
      v13 = 0;
      if (v9 | v230)
      {
        goto LABEL_758;
      }
    }

    else
    {
      v231 = *v10;
      if (v230 == 1)
      {
        v13 = v231 << 24;
      }

      else
      {
        v233 = (v231 << 16) | (v54[3] << 8);
        if (v230 != 2)
        {
          v233 |= v54[4];
        }

        v13 = v233 << 8;
      }
    }

LABEL_532:
    if (v13 << v9 < 0x80000)
    {
      v237 = (v9 + 1) >> 3;
      v9 = (v9 + 1) & 7;
      v10 = (v10 + v237);
      v238 = v11 - v10;
      if (v11 - v10 < 4)
      {
        if (v238 < 1)
        {
          v13 = 0;
          if (v9 | v238)
          {
            goto LABEL_757;
          }
        }

        else
        {
          v239 = *v10;
          if (v238 == 1)
          {
            v13 = v239 << 24;
          }

          else
          {
            v240 = (v239 << 16) | (*(v10 + 1) << 8);
            if (v238 != 2)
            {
              v240 |= *(v10 + 2);
            }

            v13 = v240 << 8;
          }
        }
      }

      else
      {
        v13 = bswap32(*v10);
      }

      v241 = 0;
      v13 <<= v9;
      do
      {
        v242 = v9;
        v243 = v13;
        v244 = (v9 + 1) >> 3;
        v9 = (v9 + 1) & 7;
        v10 = (v10 + v244);
        v245 = v11 - v10;
        if (v11 - v10 < 4)
        {
          if (v245 < 1)
          {
            v13 = 0;
            if (v9 | v245)
            {
              goto LABEL_757;
            }
          }

          else
          {
            v246 = *v10;
            if (v245 == 1)
            {
              v13 = v246 << 24;
            }

            else
            {
              v247 = (v246 << 16) | (*(v10 + 1) << 8);
              if (v245 != 2)
              {
                v247 |= *(v10 + 2);
              }

              v13 = v247 << 8;
            }
          }
        }

        else
        {
          v13 = bswap32(*v10);
        }

        v13 <<= v9;
        ++v241;
      }

      while ((v243 & 0x80000000) == 0);
      if (v241 - 1 > 0x1E)
      {
        goto LABEL_757;
      }

      v248 = ((v242 + 1) & 7) + v241;
      if (v241 > 0x18)
      {
        v9 = v248 & 7;
        v10 = (v10 + ((v248 - 16) >> 3));
        v249 = v11 - v10;
        if (v11 - v10 <= 3 && v249 <= 0 && v9 | v249)
        {
          goto LABEL_756;
        }

        v10 = (v10 + 2);
      }

      else
      {
        v9 = v248 & 7;
        v10 = (v10 + (v248 >> 3));
      }

      v250 = v11 - v10;
      if (v11 - v10 <= 3 && v250 <= 0 && v9 | v250)
      {
        goto LABEL_756;
      }
    }

    else
    {
      v234 = v9 + 2 * __clz(v13 << v9) + 1;
      v9 = v234 & 7;
      v10 = (v10 + (v234 >> 3));
      if (v11 - v10 <= 3 && v11 - v10 <= 0 && (v9 | (v11 - v10)) != 0)
      {
LABEL_756:
        v13 = 0;
LABEL_757:
        v15 = 1254;
        goto LABEL_758;
      }
    }

    v251 = (v9 + 1) >> 3;
    v9 = (v9 + 1) & 7;
    v10 = (v10 + v251);
    v252 = v11 - v10;
    if (v11 - v10 < 4)
    {
      if (v252 < 1)
      {
        v13 = 0;
        if (v9 | v252)
        {
          v15 = 1255;
          goto LABEL_758;
        }
      }

      else
      {
        v253 = *v10;
        if (v252 == 1)
        {
          v13 = v253 << 24;
        }

        else
        {
          v254 = (v253 << 16) | (*(v10 + 1) << 8);
          if (v252 != 2)
          {
            v254 |= *(v10 + 2);
          }

          v13 = v254 << 8;
        }
      }
    }

    else
    {
      v13 = bswap32(*v10);
    }

    if (*(a1 + 2) < *(a1 + 4) - *a1)
    {
      PullVUIParamSet_cold_1();
      return 4294954582;
    }

    v212 = v13 << v9;
    if (++v211 != v213)
    {
      continue;
    }

    break;
  }

  a2[35] = v212 >> 27;
  v255 = (v9 + 5) >> 3;
  v9 = (v9 + 5) & 7;
  v10 = (v10 + v255);
  v256 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v256 < 1)
    {
      v13 = 0;
      if (v9 | v256)
      {
        v15 = 1258;
        goto LABEL_758;
      }
    }

    else
    {
      v257 = *v10;
      if (v256 == 1)
      {
        v13 = v257 << 24;
      }

      else
      {
        v258 = (v257 << 16) | (*(v10 + 1) << 8);
        if (v256 != 2)
        {
          v258 |= *(v10 + 2);
        }

        v13 = v258 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  a2[36] = v13 << v9 >> 27;
  v259 = (v9 + 5) >> 3;
  v9 = (v9 + 5) & 7;
  v10 = (v10 + v259);
  v260 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v260 < 1)
    {
      v13 = 0;
      if (v9 | v260)
      {
        v15 = 1259;
        goto LABEL_758;
      }
    }

    else
    {
      v261 = *v10;
      if (v260 == 1)
      {
        v13 = v261 << 24;
      }

      else
      {
        v262 = (v261 << 16) | (*(v10 + 1) << 8);
        if (v260 != 2)
        {
          v262 |= *(v10 + 2);
        }

        v13 = v262 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  a2[37] = v13 << v9 >> 27;
  v263 = (v9 + 5) >> 3;
  v9 = (v9 + 5) & 7;
  v10 = (v10 + v263);
  v264 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v264 < 1)
    {
      v13 = 0;
      if (v9 | v264)
      {
        v15 = 1260;
        goto LABEL_758;
      }
    }

    else
    {
      v265 = *v10;
      if (v264 == 1)
      {
        v13 = v265 << 24;
      }

      else
      {
        v266 = (v265 << 16) | (*(v10 + 1) << 8);
        if (v264 != 2)
        {
          v266 |= *(v10 + 2);
        }

        v13 = v266 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  a2[38] = v13 << v9 >> 27;
  v267 = (v9 + 5) >> 3;
  v9 = (v9 + 5) & 7;
  v10 = (v10 + v267);
  v268 = v11 - v10;
  if (v11 - v10 < 4)
  {
    if (v268 < 1)
    {
      v13 = 0;
      if (v9 | v268)
      {
        v15 = 1261;
        goto LABEL_758;
      }
    }

    else
    {
      v269 = *v10;
      if (v268 == 1)
      {
        v13 = v269 << 24;
      }

      else
      {
        v270 = (v269 << 16) | (*(v10 + 1) << 8);
        if (v268 != 2)
        {
          v270 |= *(v10 + 2);
        }

        v13 = v270 << 8;
      }
    }
  }

  else
  {
    v13 = bswap32(*v10);
  }

  v13 <<= v9;
LABEL_626:
  if (*(a1 + 2) < *(a1 + 4) - *a1)
  {
    PullVUIParamSet_cold_2();
    return 4294954582;
  }

  if (!a2[20] && !a2[21])
  {
    goto LABEL_640;
  }

  a2[22] = v13 >> 31;
  v271 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v10 + v271);
  v272 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_639;
  }

  if (v272 < 1)
  {
    v13 = 0;
    if (!(v9 | v272))
    {
      goto LABEL_639;
    }

    v15 = 1267;
    goto LABEL_758;
  }

  v273 = *v10;
  if (v272 == 1)
  {
    v13 = v273 << 24;
  }

  else
  {
    v274 = (v273 << 16) | (*(v10 + 1) << 8);
    if (v272 != 2)
    {
      v274 |= *(v10 + 2);
    }

    v13 = v274 << 8;
  }

LABEL_639:
  v13 <<= v9;
LABEL_640:
  a2[23] = v13 >> 31;
  v275 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v10 + v275);
  v276 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_650;
  }

  if (v276 < 1)
  {
    v13 = 0;
    if (!(v9 | v276))
    {
      goto LABEL_650;
    }

    v15 = 1270;
    goto LABEL_758;
  }

  v277 = *v10;
  if (v276 == 1)
  {
    v13 = v277 << 24;
  }

  else
  {
    v278 = (v277 << 16) | (*(v10 + 1) << 8);
    if (v276 != 2)
    {
      v278 |= *(v10 + 2);
    }

    v13 = v278 << 8;
  }

LABEL_650:
  v279 = v13 << v9;
  a2[24] = v13 << v9 >> 31;
  v280 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v10 + v280);
  v281 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_660;
  }

  if (v281 < 1)
  {
    v13 = 0;
    if (!(v9 | v281))
    {
      goto LABEL_660;
    }

    v15 = 1272;
    goto LABEL_758;
  }

  v282 = *v10;
  if (v281 == 1)
  {
    v13 = v282 << 24;
  }

  else
  {
    v283 = (v282 << 16) | (*(v10 + 1) << 8);
    if (v281 != 2)
    {
      v283 |= *(v10 + 2);
    }

    v13 = v283 << 8;
  }

LABEL_660:
  v13 <<= v9;
  if ((v279 & 0x80000000) == 0)
  {
    goto LABEL_750;
  }

  a2[25] = v13 >> 31;
  v284 = (v9 + 1) >> 3;
  v9 = (v9 + 1) & 7;
  v10 = (v10 + v284);
  v285 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_671;
  }

  if (v285 < 1)
  {
    v13 = 0;
    if (!(v9 | v285))
    {
      goto LABEL_671;
    }

    v15 = 1279;
    goto LABEL_758;
  }

  v286 = *v10;
  if (v285 == 1)
  {
    v13 = v286 << 24;
  }

  else
  {
    v287 = (v286 << 16) | (*(v10 + 1) << 8);
    if (v285 != 2)
    {
      v287 |= *(v10 + 2);
    }

    v13 = v287 << 8;
  }

LABEL_671:
  v13 <<= v9;
  if (v13 < 0x80000)
  {
LABEL_680:
    v15 = 1280;
    goto LABEL_758;
  }

  v288 = __clz(v13);
  v289 = v13 << (v288 + 1) >> -v288;
  if (!v288)
  {
    v289 = 0;
  }

  a2[26] = v289 + ~(-1 << v288);
  v290 = v288 + v9 + v288 + 1;
  v9 = v290 & 7;
  v10 = (v10 + (v290 >> 3));
  v291 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_684;
  }

  if (v291 < 1)
  {
    v13 = 0;
    if (!(v9 | v291))
    {
      goto LABEL_684;
    }

    goto LABEL_680;
  }

  v292 = *v10;
  if (v291 == 1)
  {
    v13 = v292 << 24;
  }

  else
  {
    v293 = (v292 << 16) | (*(v10 + 1) << 8);
    if (v291 != 2)
    {
      v293 |= *(v10 + 2);
    }

    v13 = v293 << 8;
  }

LABEL_684:
  v13 <<= v9;
  if (v13 < 0x80000)
  {
LABEL_693:
    v15 = 1281;
    goto LABEL_758;
  }

  v294 = __clz(v13);
  v295 = v13 << (v294 + 1) >> -v294;
  if (!v294)
  {
    v295 = 0;
  }

  a2[27] = v295 + ~(-1 << v294);
  v296 = v294 + v9 + v294 + 1;
  v9 = v296 & 7;
  v10 = (v10 + (v296 >> 3));
  v297 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_697;
  }

  if (v297 < 1)
  {
    v13 = 0;
    if (!(v9 | v297))
    {
      goto LABEL_697;
    }

    goto LABEL_693;
  }

  v298 = *v10;
  if (v297 == 1)
  {
    v13 = v298 << 24;
  }

  else
  {
    v299 = (v298 << 16) | (*(v10 + 1) << 8);
    if (v297 != 2)
    {
      v299 |= *(v10 + 2);
    }

    v13 = v299 << 8;
  }

LABEL_697:
  v13 <<= v9;
  if (v13 < 0x80000)
  {
LABEL_706:
    v15 = 1282;
    goto LABEL_758;
  }

  v300 = __clz(v13);
  v301 = v13 << (v300 + 1) >> -v300;
  if (!v300)
  {
    v301 = 0;
  }

  a2[28] = v301 + ~(-1 << v300);
  v302 = v300 + v9 + v300 + 1;
  v9 = v302 & 7;
  v10 = (v10 + (v302 >> 3));
  v303 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_710;
  }

  if (v303 < 1)
  {
    v13 = 0;
    if (!(v9 | v303))
    {
      goto LABEL_710;
    }

    goto LABEL_706;
  }

  v304 = *v10;
  if (v303 == 1)
  {
    v13 = v304 << 24;
  }

  else
  {
    v305 = (v304 << 16) | (*(v10 + 1) << 8);
    if (v303 != 2)
    {
      v305 |= *(v10 + 2);
    }

    v13 = v305 << 8;
  }

LABEL_710:
  v13 <<= v9;
  if (v13 < 0x80000)
  {
LABEL_719:
    v15 = 1283;
    goto LABEL_758;
  }

  v306 = __clz(v13);
  v307 = v13 << (v306 + 1) >> -v306;
  if (!v306)
  {
    v307 = 0;
  }

  a2[29] = v307 + ~(-1 << v306);
  v308 = v306 + v9 + v306 + 1;
  v9 = v308 & 7;
  v10 = (v10 + (v308 >> 3));
  v309 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_723;
  }

  if (v309 < 1)
  {
    v13 = 0;
    if (!(v9 | v309))
    {
      goto LABEL_723;
    }

    goto LABEL_719;
  }

  v310 = *v10;
  if (v309 == 1)
  {
    v13 = v310 << 24;
  }

  else
  {
    v311 = (v310 << 16) | (*(v10 + 1) << 8);
    if (v309 != 2)
    {
      v311 |= *(v10 + 2);
    }

    v13 = v311 << 8;
  }

LABEL_723:
  v13 <<= v9;
  if (v13 < 0x80000)
  {
LABEL_732:
    v15 = 1284;
    goto LABEL_758;
  }

  v312 = __clz(v13);
  v313 = v13 << (v312 + 1) >> -v312;
  if (!v312)
  {
    v313 = 0;
  }

  a2[30] = v313 + ~(-1 << v312);
  v314 = v312 + v9 + v312 + 1;
  v9 = v314 & 7;
  v10 = (v10 + (v314 >> 3));
  v315 = v11 - v10;
  if (v11 - v10 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_736;
  }

  if (v315 < 1)
  {
    v13 = 0;
    if (!(v9 | v315))
    {
      goto LABEL_736;
    }

    goto LABEL_732;
  }

  v316 = *v10;
  if (v315 == 1)
  {
    v13 = v316 << 24;
  }

  else
  {
    v317 = (v316 << 16) | (*(v10 + 1) << 8);
    if (v315 != 2)
    {
      v317 |= *(v10 + 2);
    }

    v13 = v317 << 8;
  }

LABEL_736:
  v13 <<= v9;
  if (v13 < 0x80000)
  {
LABEL_745:
    v15 = 1285;
    goto LABEL_758;
  }

  v318 = __clz(v13);
  v319 = v13 << (v318 + 1) >> -v318;
  if (!v318)
  {
    v319 = 0;
  }

  a2[31] = v319 + ~(-1 << v318);
  v320 = v318 + v9 + v318 + 1;
  v9 = v320 & 7;
  v10 = (v10 + (v320 >> 3));
  v321 = v11 - v10;
  if (v321 >= 4)
  {
    v13 = bswap32(*v10);
    goto LABEL_749;
  }

  if (v321 < 1)
  {
    v13 = 0;
    if (!(v9 | v321))
    {
      goto LABEL_749;
    }

    goto LABEL_745;
  }

  v322 = *v10;
  if (v321 == 1)
  {
    v13 = v322 << 24;
  }

  else
  {
    v323 = (v322 << 16) | (*(v10 + 1) << 8);
    if (v321 != 2)
    {
      v323 |= *(v10 + 2);
    }

    v13 = v323 << 8;
  }

LABEL_749:
  v13 <<= v9;
LABEL_750:
  result = 0;
  a1[2] = v10;
  *(a1 + 6) = v13;
  *(a1 + 28) = v9;
  return result;
}