CFMutableDictionaryRef OSKextCopyInfoDictionary(void *cf)
{
  if (!cf[7] && !__OSKextReadInfoDictionary(cf, 0))
  {
    return 0;
  }

  v2 = CFGetAllocator(cf);
  v3 = cf[7];

  return CFDictionaryCreateMutableCopy(v2, 0, v3);
}

void OSKextFlushInfoDictionary(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (a1)
  {
    if ((OSKextFlushInfoDictionary_flushingAll & 1) == 0)
    {
      if (*(a1 + 16))
      {
        __OSKextGetFileSystemPath(a1, 0, 0, buffer, v3, v4, v5, v6);
      }

      OSKextLog(0, 262150, "Flushing info dictionary for %s.", v2, v3, v4, v5, v6, buffer);
    }

    if ((*(a1 + 88) & 8) == 0)
    {
      v7 = *(a1 + 56);
      if (v7)
      {
        CFRelease(v7);
      }

      *(a1 + 56) = 0;
      v8 = *(a1 + 92);
      if ((~v8 & 0x4900) != 0)
      {
        *(a1 + 92) = v8 & 0xFFFD81FF;
      }
    }
  }

  else if (__sOSKextsByURL)
  {
    OSKextFlushInfoDictionary_flushingAll = 1;
    OSKextLog(0, 262150, "Flushing info dictionaries for all kexts.", v2, v3, v4, v5, v6, v10);
    CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextFlushInfoDictionaryApplierFunction, 0);
    OSKextFlushInfoDictionary_flushingAll = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __OSKextUUIDCallback(_DWORD *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != 27)
  {
    return 2;
  }

  if (a1 + a1[1] > a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a4 = 16;
  *(a4 + 8) = a1 + 2;
  return result;
}

CFDataRef OSKextCopyUUIDForArchitecture(const void *a1, char **a2)
{
  if (!a2)
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    a2 = __sOSKextArchInfo;
  }

  v3 = OSKextCopyExecutableForArchitecture(a1, a2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v14 = 0;
  bytes = 0;
  BytePtr = CFDataGetBytePtr(v3);
  Length = CFDataGetLength(v4);
  v7 = *BytePtr;
  commands = macho_scan_load_commands(BytePtr, BytePtr + Length, __OSKextUUIDCallback, &v14);
  if (commands)
  {
    v9 = 0;
    if (commands == -1)
    {
      __OSKextSetDiagnostic(a1, 1, @"Executable file doesn't contain kernel extension code (no kmod_info symbol or bad Mach-O layout).");
      v9 = 0;
    }
  }

  else
  {
    v10 = CFGetAllocator(a1);
    v11 = bswap32(v14);
    if (((v7 + 822415874) & 0xFEFFFFFF) != 0)
    {
      v12 = v14;
    }

    else
    {
      v12 = v11;
    }

    v9 = CFDataCreate(v10, bytes, v12);
  }

  CFRelease(v4);
  return v9;
}

CFDataRef OSKextCopyExecutableForArchitecture(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  if (!__OSKextReadExecutable(a1))
  {
    goto LABEL_22;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    v6 = *(a1 + 80);
    if (!v6)
    {
      goto LABEL_22;
    }

    v5 = *(v6 + 16);
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v4 = *(a1 + 72);
    if (!v4)
    {
      goto LABEL_22;
    }

    v5 = *(v4 + 128);
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v7 = CFRetain(v5);
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = v7;
  if (a2)
  {
    BytePtr = CFDataGetBytePtr(v7);
    v34 = 0;
    Length = CFDataGetLength(v8);
    v11 = fat_iterator_for_data(BytePtr, BytePtr + Length, 1);
    if (v11)
    {
      v12 = v11;
      if ((*(a1 + 88) & 8) != 0)
      {
        goto LABEL_17;
      }

      *buffer = 0;
      v36 = 0;
      v37 = 0;
      if (!fat_iterator_find_fat_arch(v11, *(a2 + 8), *(a2 + 12), buffer))
      {
        goto LABEL_26;
      }

      if (*MEMORY[0x1E69E9AC8] != 1 << v37)
      {
LABEL_17:
        arch = fat_iterator_find_arch(v12, *(a2 + 8), *(a2 + 12), &v34);
        if (!arch)
        {
          goto LABEL_26;
        }

        v20 = arch;
        v21 = CFGetAllocator(a1);
        v17 = CFDataCreate(v21, v20, v34 - v20);
      }

      else
      {
        v17 = __OSKextMapExecutable(a1, v36, HIDWORD(v36));
      }

      v22 = v17;
      if (v17)
      {
LABEL_29:
        CFRelease(v8);
        fat_iterator_close(v12);
        goto LABEL_23;
      }

LABEL_26:
      __OSKextGetFileSystemPath(a1, 0, 0, buffer, v13, v14, v15, v16);
      v28 = CFGetAllocator(a1);
      v29 = CFStringCreateWithCString(v28, *a2, 0x8000100u);
      if (v29)
      {
        v33 = v29;
        __OSKextAddDiagnostic(a1, 8, @"Executable does not contain code for architecture", v29, 0, v30, v31, v32, v34);
        CFRelease(v33);
      }

      v22 = 0;
      goto LABEL_29;
    }

    __OSKextSetDiagnostic(a1, 1, @"Executable file doesn't contain kernel extension code (no kmod_info symbol or bad Mach-O layout).");
    CFRelease(v8);
LABEL_22:
    v22 = 0;
    goto LABEL_23;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    v25 = CFGetAllocator(v7);
    v26 = CFDataGetBytePtr(v8);
    v27 = CFDataGetLength(v8);
    v18 = CFDataCreate(v25, v26, v27);
  }

  else
  {
    v18 = __OSKextMapExecutable(a1, 0, 0);
  }

  v22 = v18;
  CFRelease(v8);
LABEL_23:
  v23 = *MEMORY[0x1E69E9840];
  return v22;
}

void __OSKextSetDiagnostic(uint64_t a1, int a2, const void *a3)
{
  if ((__sOSKextRecordsDiagnositcs & a2) != 0)
  {
    Diagnostics = __OSKextGetDiagnostics(a1, a2);
    if (Diagnostics)
    {
      v5 = *MEMORY[0x1E695E4D0];

      CFDictionarySetValue(Diagnostics, a3, v5);
    }
  }
}

void OSKextSetLoggingEnabled(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 92);
  *(a1 + 92) = v8 & 0xFFFFFFEF | (16 * (a2 != 0));
  if (((v8 >> 4) & 1) != (a2 != 0))
  {
    __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
    if ((*(a1 + 92) & 0x10) != 0)
    {
      v15 = "en";
    }

    else
    {
      v15 = "dis";
    }

    OSKextLog(a1, 262151, "Kext logging %sabled for %s.", v10, v11, v12, v13, v14, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

uint64_t OSKextDependenciesAreLoadableInSafeBoot(const void *a1)
{
  v2 = __OSKextCopyDependenciesList(a1, 1, 1);
  if (v2)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    if (Count < 1)
    {
      v7 = 1;
    }

    else
    {
      v5 = Count;
      v6 = 0;
      v7 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v6);
        if (OSKextGetActualSafeBoot() | __sOSKextSimulatedSafeBoot && (*(ValueAtIndex + 92) & 0x80) == 0)
        {
          __OSKextAddDiagnostic(a1, 16, @"Dependencies aren't loadable during safe boot", ValueAtIndex[3], 0, v9, v10, v11, v13);
          v7 = 0;
        }

        ++v6;
      }

      while (v5 != v6);
    }

    CFRelease(v3);
  }

  else
  {
    return 0;
  }

  return v7;
}

void *OSKextCopyArchitectures(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 92) & 4) == 0 || !__OSKextReadExecutable(a1))
  {
LABEL_19:
    v15 = 0;
    goto LABEL_20;
  }

  BytePtr = CFDataGetBytePtr(*(*(a1 + 72) + 128));
  Length = CFDataGetLength(*(*(a1 + 72) + 128));
  v4 = fat_iterator_for_data(BytePtr, BytePtr + Length, 1);
  if (!v4)
  {
    if ((*(a1 + 92) & 8) != 0)
    {
      ExecutableURL = 0;
    }

    else
    {
      ExecutableURL = OSKextGetExecutableURL(a1, v5, v6, v7, v8, v9, v10, v11);
    }

    __OSKextGetFileSystemPath(a1, ExecutableURL, 0, buffer, v8, v9, v10, v11);
    OSKextLog(a1, 131073, "Can't read mach-o file %s.", v21, v22, v23, v24, v25, buffer);
    goto LABEL_19;
  }

  v12 = v4;
  v13 = (8 * fat_iterator_num_arches(v4) + 8);
  v14 = malloc_type_malloc(v13, 0x6004044C4A2DFuLL);
  v15 = v14;
  if (v14)
  {
    bzero(v14, v13);
    arch = fat_iterator_next_arch(v12, 0);
    if (arch)
    {
      v17 = 0;
      do
      {
        if ((*arch | 0x1000000) == 0xCFFAEDFE)
        {
          v18 = bswap32(arch[1]);
        }

        else
        {
          v18 = arch[1];
        }

        if ((*arch | 0x1000000) == 0xCFFAEDFE)
        {
          v19 = bswap32(arch[2]);
        }

        else
        {
          v19 = arch[2];
        }

        v15[v17++] = NXGetArchInfoFromCpuType(v18, v19);
        arch = fat_iterator_next_arch(v12, 0);
      }

      while (arch);
    }
  }

  fat_iterator_close(v12);
LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __OSKextReadExecutable(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 92) & 4) == 0)
  {
    result = 0;
    goto LABEL_20;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    v5 = *(a1 + 80);
    if (v5 && *(v5 + 16))
    {
      goto LABEL_19;
    }

    result = __OSKextCreateMkextInfo(a1);
    if (!result)
    {
      goto LABEL_20;
    }

    Value = CFDictionaryGetValue(*(a1 + 56), @"_MKEXTExecutable");
    if (!Value)
    {
LABEL_19:
      result = 1;
      goto LABEL_20;
    }

    v7 = Value;
    BytePtr = CFDataGetBytePtr(*(*(a1 + 80) + 8));
    valuePtr = 0;
    bzero(buffer, 0x400uLL);
    v14 = **(a1 + 80);
    if (v14)
    {
      __OSKextGetFileSystemPath(0, v14, 0, buffer, v10, v11, v12, v13);
    }

    OSKextLog(a1, 134, "Extracting %s%s from %s.", v9, v10, v11, v12, v13, "executable");
    if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
    {
      v18 = &BytePtr[valuePtr];
      v19 = bswap32(*(v18 + 1));
      if (!*v18)
      {
        v28 = CFGetAllocator(a1);
        v29 = CFDataCreate(v28, v18 + 8, v19);
        *(*(a1 + 80) + 16) = v29;
        if (v29)
        {
          goto LABEL_19;
        }

LABEL_23:
        __OSKextAddDiagnostic(a1, 1, @"Kext has a CFBundleExecutable property but the executable can't be found", @"(executable from mkext)", 0, v15, v16, v17, v31);
        result = 0;
        *(a1 + 92) = *(a1 + 92) & 0xFFFFF3FF | 0x400;
        goto LABEL_20;
      }

      v20 = bswap32(*v18);
      v21 = CFGetAllocator(a1);
      UncompressMkext2FileData = __OSKextCreateUncompressMkext2FileData(v21, v18 + 8, v20, v19);
      if (UncompressMkext2FileData)
      {
        *(*(a1 + 80) + 16) = UncompressMkext2FileData;
        goto LABEL_19;
      }

      OSKextLog(a1, 129, "Failed to uncompress %s%s from %s.", v23, v24, v25, v26, v27, "executable");
    }

    *(*(a1 + 80) + 16) = 0;
    goto LABEL_23;
  }

  v3 = *(a1 + 72);
  if (v3 && *(v3 + 128))
  {
    goto LABEL_19;
  }

  result = __OSKextCreateLoadInfo(a1);
  if (result)
  {
    v4 = __OSKextMapExecutable(a1, 0, 0);
    *(*(a1 + 72) + 128) = v4;
    result = v4 != 0;
  }

LABEL_20:
  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OSKextSupportsArchitecture(uint64_t a1, char **a2)
{
  if ((*(a1 + 92) & 4) == 0)
  {
    return 1;
  }

  v3 = a2;
  if (!a2)
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v3 = __sOSKextArchInfo;
  }

  if (!__OSKextReadExecutable(a1))
  {
    return 0;
  }

  if ((*(a1 + 88) & 8) != 0)
  {
    v7 = *(a1 + 80);
    if (!v7)
    {
      return 0;
    }

    v6 = *(v7 + 16);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a1 + 72);
    if (!v5)
    {
      return 0;
    }

    v6 = *(v5 + 128);
    if (!v6)
    {
      return 0;
    }
  }

  v8 = CFRetain(v6);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  BytePtr = CFDataGetBytePtr(v8);
  Length = CFDataGetLength(v9);
  v12 = fat_iterator_for_data(BytePtr, BytePtr + Length, 1);
  if (!v12)
  {
    CFRelease(v9);
    return 0;
  }

  v13 = v12;
  v17 = 0;
  arch = fat_iterator_find_arch(v12, *(v3 + 2), *(v3 + 3), &v17);
  if (arch)
  {
    v15 = arch == v17;
  }

  else
  {
    v15 = 1;
  }

  v2 = !v15;
  CFRelease(v9);
  fat_iterator_close(v13);
  return v2;
}

__CFBundle *OSKextCopyPlugins(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (OSKextIsPlugin(a1, a2, a3, a4, a5, a6, a7, a8) || (*(a1 + 92) & 8) != 0)
  {
    v16 = CFGetAllocator(a1);
    v17 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v16, 0, 0, v17);
  }

  else
  {
    v9 = *MEMORY[0x1E695E480];
    result = CFBundleCreate(*MEMORY[0x1E695E480], *(a1 + 16));
    if (result)
    {
      v11 = result;
      v12 = CFBundleCopyBuiltInPlugInsURL(result);
      if (v12)
      {
        v13 = v12;
        KextsFromURL = __OSKextCreateKextsFromURL(v9, v12, a1, 0);
        CFRelease(v11);
        v15 = v13;
      }

      else
      {
        KextsFromURL = CFArrayCreateMutable(v9, 0, MEMORY[0x1E695E9C0]);
        v15 = v11;
      }

      CFRelease(v15);
      return KextsFromURL;
    }
  }

  return result;
}

BOOL OSKextIsPlugin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 88);
  if (v8)
  {
    return (v8 >> 1) & 1;
  }

  v10 = *(a1 + 16);
  if (!v10)
  {
    v28 = "Bundle URL unexpectedly NULL!";
    v11 = a1;
    v29 = 262161;
LABEL_12:
    OSKextLog(v11, v29, v28, a4, a5, a6, a7, a8, v31);
    return 0;
  }

  v11 = CFURLCopyAbsoluteURL(v10);
  if (!v11)
  {
    v28 = "Memory allocation failure.";
    v29 = 17;
    goto LABEL_12;
  }

  v12 = v11;
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], v11);
  if (!PathComponent)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v14, v15, v16, v17, v18, v31);
    CFRelease(v12);
    return 0;
  }

  v19 = PathComponent;
  v25 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
  if (!v25)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v20, v21, v22, v23, v24, v31);
  }

  location = CFStringFind(v25, @".kext/", 0).location;
  *(a1 + 88) = *(a1 + 88) & 0xFC | (2 * (location != -1)) | 1;
  v27 = location != -1;
  CFRelease(v12);
  CFRelease(v19);
  if (v25)
  {
    CFRelease(v25);
  }

  return v27;
}

CFTypeRef OSKextCopyContainerForPluginKext(uint64_t a1)
{
  v75 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 88) & 3) == 1)
  {
    goto LABEL_18;
  }

  v2 = CFURLCopyAbsoluteURL(*(a1 + 16));
  if (!v2)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v3, v4, v5, v6, v7, v68);
LABEL_18:
    v59 = 0;
    goto LABEL_19;
  }

  v8 = v2;
  v9 = *MEMORY[0x1E695E480];
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(*MEMORY[0x1E695E480], v2);
  if (!PathComponent)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v11, v12, v13, v14, v15, v68);
    CFRelease(v8);
    goto LABEL_18;
  }

  v16 = PathComponent;
  v17 = CFURLCopyFileSystemPath(PathComponent, kCFURLPOSIXPathStyle);
  v23 = v17;
  if (!v17)
  {
    goto LABEL_20;
  }

  v24 = CFStringFind(v17, @".kext/", 4uLL);
  *(a1 + 88) = *(a1 + 88) & 0xFC | (2 * (v24.location != -1)) | 1;
  if (v24.location == -1)
  {
LABEL_21:
    cf = 0;
LABEL_22:
    v70 = 0;
    v37 = 0;
    goto LABEL_23;
  }

  v76.length = v24.location + v24.length;
  v76.location = 0;
  v17 = CFStringCreateWithSubstring(v9, v23, v76);
  if (!v17)
  {
LABEL_20:
    OSKextLog(v17, 17, "Memory allocation failure.", v18, v19, v20, v21, v22, v68);
    goto LABEL_21;
  }

  cf = v17;
  if (!CFStringGetCString(v17, buffer, 1024, 0x8000100u))
  {
    v67 = "String/URL conversion failure.";
    v31 = a1;
LABEL_44:
    OSKextLog(v31, 17, v67, v25, v26, v27, v28, v29, v68);
    goto LABEL_22;
  }

  v30 = strlen(buffer);
  v31 = CFURLCreateFromFileSystemRepresentation(v9, buffer, v30, 1u);
  if (!v31)
  {
    v67 = "Memory allocation failure.";
    goto LABEL_44;
  }

  v70 = v31;
  v32 = OSKextCreate(v9, v31);
  v37 = v32;
  if (!v32)
  {
LABEL_23:
    v48 = 0;
LABEL_24:
    v50 = 0;
    v57 = 0;
    v49 = 0;
    goto LABEL_25;
  }

  __OSKextGetFileSystemPath(v32, 0, 0, v74, v33, v34, v35, v36);
  OSKextLog(a1, 131079, "Opening CFBundle for %s.", v38, v39, v40, v41, v42, v74);
  v48 = CFBundleCreate(v9, v37[2]);
  if (!v48)
  {
    OSKextLog(a1, 131073, "Failed to open CFBundle for %s.", v43, v44, v45, v46, v47, v74);
    goto LABEL_24;
  }

  v49 = CFURLCopyLastPathComponent(*(a1 + 16));
  v50 = CFBundleCopyBuiltInPlugInsURL(v48);
  v51 = CFURLCreateCopyAppendingPathComponent(v9, v50, v49, 1u);
  v57 = v51;
  if (!v51)
  {
    goto LABEL_46;
  }

  if (!__OSKextGetFileSystemPath(0, v51, 1u, __s, v53, v54, v55, v56))
  {
LABEL_25:
    v59 = 0;
    goto LABEL_26;
  }

  CFRelease(v57);
  v58 = strlen(__s);
  v51 = CFURLCreateFromFileSystemRepresentation(v9, __s, v58, 1u);
  v57 = v51;
  if (!v51)
  {
LABEL_46:
    OSKextLog(v51, 17, "Memory allocation failure.", v52, v53, v54, v55, v56, v69);
    goto LABEL_25;
  }

  if (!CFEqual(v8, v51))
  {
    goto LABEL_25;
  }

  v59 = CFRetain(v37);
LABEL_26:
  CFRelease(v8);
  CFRelease(v16);
  if (v23)
  {
    CFRelease(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v70)
  {
    CFRelease(v70);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v48)
  {
    OSKextLog(a1, 131079, "Releasing CFBundle for %s.", v62, v63, v64, v65, v66, v74);
    CFRelease(v48);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v57)
  {
    CFRelease(v57);
  }

  if (v49)
  {
    CFRelease(v49);
  }

LABEL_19:
  v60 = *MEMORY[0x1E69E9840];
  return v59;
}

CFMutableArrayRef OSKextCopyPersonalitiesArray(CFURLRef *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v12 = "Memory allocation failure.";
    v13 = 17;
LABEL_8:
    OSKextLog(0, v13, v12, v3, v4, v5, v6, v7, CStringPtr);
    return Mutable;
  }

  ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"IOKitPersonalities");
  if (!ValueForInfoDictionaryKey)
  {
    return Mutable;
  }

  v10 = ValueForInfoDictionaryKey;
  v11 = CFGetTypeID(ValueForInfoDictionaryKey);
  if (v11 != CFDictionaryGetTypeID())
  {
    v14 = CFURLGetString(a1[2]);
    CStringPtr = CFStringGetCStringPtr(v14, 0x8000100u);
    v12 = "Kext personality for kext %s is not a dictionary";
    v13 = 262145;
    goto LABEL_8;
  }

  if (CFDictionaryGetCount(v10))
  {
    context[0] = a1;
    context[1] = Mutable;
    context[3] = 0;
    context[2] = 0;
    context[4] = 1;
    CFDictionaryApplyFunction(v10, __OSKextPersonalityPatcherApplierFunction, context);
  }

  return Mutable;
}

void __OSKextPersonalityPatcherApplierFunction(const __CFString *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v52 = *MEMORY[0x1E69E9840];
  v12 = *a3;
  v11 = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = *(a3 + 32);
  v16 = CFGetTypeID(cf);
  if (v16 != CFDictionaryGetTypeID())
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    OSKextLog(0, 262145, "Kext personality %s subentry is not a dictionary", v32, v33, v34, v35, v36, CStringPtr);
LABEL_33:
    v50 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v14)
  {
    v17 = CFGetTypeID(v14);
    if (v17 == CFArrayGetTypeID())
    {
      v54.length = CFArrayGetCount(v14);
      v54.location = 0;
      if (!CFArrayContainsValue(v14, v54, a1))
      {
        goto LABEL_33;
      }
    }
  }

  v18 = v12[3];
  if (!v18)
  {
    goto LABEL_33;
  }

  v19 = CFGetAllocator(v12);
  MutableCopy = CFDictionaryCreateMutableCopy(v19, 0, cf);
  if (MutableCopy)
  {
    v26 = MutableCopy;
    if (!v15)
    {
      goto LABEL_21;
    }

    v27 = *MEMORY[0x1E695E4F0];
    Value = CFDictionaryGetValue(cf, *MEMORY[0x1E695E4F0]);
    if (Value)
    {
      if (CFEqual(v18, Value))
      {
        goto LABEL_17;
      }

      v29 = @"IOPersonalityPublisher";
      v30 = v26;
    }

    else
    {
      v30 = v26;
      v29 = v27;
    }

    CFDictionarySetValue(v30, v29, v18);
LABEL_17:
    if (__OSKextShouldLog(v12, 38))
    {
      __OSKextGetFileSystemPath(v12, 0, 0, buffer, v38, v39, v40, v41);
      UTF8CStringForCFString = createUTF8CStringForCFString(v18);
      v48 = createUTF8CStringForCFString(a1);
      if (Value)
      {
        if (CFEqual(v18, Value))
        {
          goto LABEL_22;
        }

        v49 = "Adding IOBundlePublisher %s to %s personality %s.";
      }

      else
      {
        v49 = "Adding CFBundleIdentifier %s to %s personality %s.";
      }

      OSKextLog(v12, 38, v49, v43, v44, v45, v46, v47, UTF8CStringForCFString);
LABEL_22:
      if (!__sOSKextPersonalityPatcherFunction || __sOSKextPersonalityPatcherFunction(v12, v26))
      {
        if (v11)
        {
          CFArrayAppendValue(v11, v26);
        }

        if (v13)
        {
          CFDictionarySetValue(v13, a1, v26);
        }
      }

      if (UTF8CStringForCFString)
      {
        free(UTF8CStringForCFString);
      }

      if (v48)
      {
        free(v48);
      }

      CFRelease(v26);
      goto LABEL_33;
    }

LABEL_21:
    UTF8CStringForCFString = 0;
    v48 = 0;
    goto LABEL_22;
  }

  v37 = *MEMORY[0x1E69E9840];

  OSKextLog(0, 17, "Memory allocation failure.", v21, v22, v23, v24, v25, a9);
}

CFMutableArrayRef OSKextCopyPersonalitiesOfKexts(CFTypeRef cf)
{
  AllKexts = cf;
  if (!cf)
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    AllKexts = OSKextGetAllKexts();
  }

  v2 = CFGetAllocator(AllKexts);
  Mutable = CFArrayCreateMutable(v2, 0, MEMORY[0x1E695E9C0]);
  v9 = Mutable;
  if (Mutable)
  {
    context = 0;
    v28 = 0u;
    v29 = 0;
    context_8 = Mutable;
    Count = CFArrayGetCount(AllKexts);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(AllKexts, i);
        ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(ValueAtIndex, @"IOKitPersonalities");
        if (ValueForInfoDictionaryKey)
        {
          v15 = ValueForInfoDictionaryKey;
          v16 = CFGetTypeID(ValueForInfoDictionaryKey);
          if (v16 == CFDictionaryGetTypeID())
          {
            if (CFDictionaryGetCount(v15))
            {
              context = ValueAtIndex;
              context_8 = v9;
              v28 = 0uLL;
              LOBYTE(v29) = 1;
              CFDictionaryApplyFunction(v15, __OSKextPersonalityPatcherApplierFunction, &context);
            }
          }

          else
          {
            v17 = CFURLGetString(ValueAtIndex[2]);
            CStringPtr = CFStringGetCStringPtr(v17, 0x8000100u);
            OSKextLog(0, 262145, "Kext personality for kext %s is not a dictionary", v19, v20, v21, v22, v23, CStringPtr);
          }
        }
      }
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v4, v5, v6, v7, v8, v25);
  }

  return v9;
}

void __OSKextDeallocateMmapBuffer(void *a1, size_t *a2)
{
  munmap(a1, *a2);

  free(a2);
}

CFDataRef __OSKextMapExecutable(uint64_t a1, off_t a2, off_t st_size)
{
  v95 = *MEMORY[0x1E69E9840];
  if (!__OSKextCreateLoadInfo(a1))
  {
    goto LABEL_24;
  }

  if ((*(a1 + 92) & 8) != 0)
  {
    goto LABEL_24;
  }

  ExecutableURL = OSKextGetExecutableURL(a1, v6, v7, v8, v9, v10, v11, v12);
  if (!ExecutableURL)
  {
    goto LABEL_24;
  }

  memset(&v93, 0, sizeof(v93));
  memset(&context, 0, sizeof(context));
  if (!__OSKextGetFileSystemPath(0, ExecutableURL, 1u, buffer, v14, v15, v16, v17))
  {
    goto LABEL_24;
  }

  OSKextLog(a1, 131079, "Statting %s for map.", v18, v19, v20, v21, v22, buffer);
  if (stat(buffer, &v93) == -1)
  {
    v31 = *__error();
    if (v31 == 2)
    {
      v32 = @"File not found";
    }

    else
    {
      v32 = @"Failed to get file info (stat failed)";
    }

    __OSKextAddDiagnostic(a1, 1, v32, *(a1 + 32), 0, v28, v29, v30, v89);
    strerror(v31);
    OSKextLog(a1, 131073, "Stat failed for %s - %s.", v33, v34, v35, v36, v37, buffer);
    goto LABEL_24;
  }

  if (st_size)
  {
    if (st_size + a2 > v93.st_size)
    {
      OSKextLog(a1, 131073, "Internal error; overrun mapping executable file %s.", v23, v24, v25, v26, v27, buffer);
LABEL_24:
      v62 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    st_size = v93.st_size;
  }

  OSKextLog(a1, 131079, "Opening %s for map.", v23, v24, v25, v26, v27, buffer);
  v38 = open(buffer, 0);
  if (v38 == -1)
  {
    v66 = *__error();
    if (v66 == 2)
    {
      v67 = @"File not found";
    }

    else
    {
      v67 = @"File access failure; can't open, or I/O error";
    }

    __OSKextAddDiagnostic(a1, 1, v67, *(a1 + 32), 0, v63, v64, v65, v90);
    strerror(v66);
    OSKextLog(a1, 131073, "Open failed for %s - %s.", v68, v69, v70, v71, v72, buffer);
    goto LABEL_24;
  }

  v39 = v38;
  v45 = mmap(0, st_size, 3, 2, v38, a2);
  if (v45 == -1)
  {
    v78 = *__error();
    if (!st_size)
    {
      __OSKextAddDiagnostic(a1, 1, @"File access failure; can't open, or I/O error", *(a1 + 32), 0, v75, v76, v77, v90);
      *(a1 + 92) = *(a1 + 92) & 0xFFFFF3FF | 0x400;
    }

    strerror(v78);
    OSKextLog(a1, 131073, "Failed to map executable file %s (offset %lu, %lu bytes) - %s.", v79, v80, v81, v82, v83, buffer);
    goto LABEL_30;
  }

  OSKextLog(a1, 131078, "Mapped executable file %s (offset %lu, %lu bytes).", v40, v41, v42, v43, v44, buffer);
  v46 = *MEMORY[0x1E695E480];
  CFAllocatorGetContext(*MEMORY[0x1E695E480], &context);
  v47 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
  if (!v47)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v48, v49, v50, v51, v52, v91);
LABEL_30:
    close(v39);
    goto LABEL_33;
  }

  v53 = v47;
  *v47 = st_size;
  context.info = v47;
  context.deallocate = __OSKextDeallocateMmapBuffer;
  v54 = CFAllocatorCreate(v46, &context);
  if (!v54)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v55, v56, v57, v58, v59, v91);
    close(v39);
LABEL_32:
    free(v53);
LABEL_33:
    if (v45)
    {
      OSKextLog(a1, 131073, "Error encountered, unmapping executable file %s (offset %lu, %lu bytes).", v84, v85, v86, v87, v88, buffer);
      munmap(v45, st_size);
    }

    goto LABEL_24;
  }

  v60 = v54;
  v61 = CFGetAllocator(a1);
  v62 = CFDataCreateWithBytesNoCopy(v61, v45, st_size, v60);
  CFRelease(v60);
  close(v39);
  if (!v62)
  {
    goto LABEL_32;
  }

LABEL_25:
  v73 = *MEMORY[0x1E69E9840];
  return v62;
}

uint64_t __OSKextCreateLoadInfo(uint64_t a1)
{
  if (*(a1 + 72))
  {
    return 1;
  }

  v4 = malloc_type_malloc(0xB0uLL, 0x107004062F0A6EBuLL);
  *(a1 + 72) = v4;
  if (v4)
  {
    v4[9] = 0u;
    v4[10] = 0u;
    v4[7] = 0u;
    v4[8] = 0u;
    v4[5] = 0u;
    v4[6] = 0u;
    v4[3] = 0u;
    v4[4] = 0u;
    v4[1] = 0u;
    v4[2] = 0u;
    v2 = 1;
    *v4 = 0u;
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v5, v6, v7, v8, v9, v1);
    return 0;
  }

  return v2;
}

CFDataRef OSKextCopyResource(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  v60 = *MEMORY[0x1E69E9840];
  resourceData = 0;
  if ((*(a1 + 88) & 8) == 0)
  {
    errorCode = 0;
    __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
    OSKextLog(a1, 131078, "Opening CFBundle for %s.", v12, v13, v14, v15, v16, buffer);
    v17 = CFGetAllocator(a1);
    v18 = CFBundleCreate(v17, *(a1 + 16));
    if (v18)
    {
      v24 = v18;
      v25 = CFBundleCopyResourceURL(v18, a2, a3, 0);
      if (v25)
      {
        v30 = v25;
        __OSKextGetFileSystemPath(0, v25, 0, v58, v26, v27, v28, v29);
        OSKextLog(a1, 131078, "Reading resource %s.", v31, v32, v33, v34, v35, v58);
        v36 = CFGetAllocator(a1);
        if (CFURLCreateDataAndPropertiesFromResource(v36, v30, &resourceData, 0, 0, &errorCode))
        {
          v8 = resourceData;
        }

        else
        {
          OSKextLog(a1, 131076, "Couldn't read resource file %s.", v37, v38, v39, v40, v41, v58);
          v8 = 0;
        }

        if (v8)
        {
          v53 = 131079;
        }

        else
        {
          v53 = 131076;
        }

        OSKextLog(a1, v53, "Reading resource file %s%s.", v37, v38, v39, v40, v41, v58);
        CFRelease(v30);
      }

      else
      {
        UTF8CStringForCFString = createUTF8CStringForCFString(a2);
        OSKextLog(a1, 131076, "Couldn't read resource URL in %s for resource %s.", v43, v44, v45, v46, v47, buffer);
        if (UTF8CStringForCFString)
        {
          free(UTF8CStringForCFString);
        }

        v8 = 0;
      }

      OSKextLog(a1, 131079, "Releasing CFBundle for %s.", v48, v49, v50, v51, v52, buffer);
      CFRelease(v24);
    }

    else
    {
      OSKextLog(a1, 131076, "Couldn't open CFBundle for %s.", v19, v20, v21, v22, v23, buffer);
      v8 = 0;
    }
  }

  v54 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t OSKextResolveDependencies(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v2 = CFGetAllocator(a1);
  Mutable = CFSetCreateMutable(v2, 0, MEMORY[0x1E695E9F8]);
  v4 = CFGetAllocator(a1);
  v5 = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  v11 = v5;
  if (Mutable)
  {
    v12 = v5 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (a1)
    {
      if ((*(a1 + 92) & 1) != 0 || (v17 = *(a1 + 72)) != 0 && (*(v17 + 168) & 0x10) != 0)
      {
        __OSKextGetFileSystemPath(a1, 0, 0, context, v7, v8, v9, v10);
        OSKextLog(a1, 16391, "%s - dependencies already resolved.", v21, v22, v23, v24, v25, context);
        v13 = 0;
        v14 = 1;
        goto LABEL_29;
      }

      v18 = __OSKextResolveDependencies(a1, a1, Mutable, v5, v7, v8, v9, v10);
      v14 = v18;
      if (v18)
      {
        v13 = __OSKextCopyDependenciesList(a1, 1, 0);
        if (!v13)
        {
          v14 = 0;
          goto LABEL_29;
        }

        ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleRequired");
        if (ValueForInfoDictionaryKey)
        {
          v20 = ValueForInfoDictionaryKey;
          if (!CFEqual(ValueForInfoDictionaryKey, @"Root") && !CFEqual(v20, @"Console") && !CFEqual(v20, @"DriverKit"))
          {
            if (CFEqual(v20, @"Local-Root"))
            {
              v48 = 0;
              v49 = 1;
              v47 = 1;
            }

            else
            {
              v49 = 1;
              v47 = CFEqual(v20, @"Network-Root") == 0;
              v48 = 1;
            }

LABEL_34:
            Count = CFArrayGetCount(v13);
            if (Count >= 1)
            {
              v27 = Count;
              v28 = 0;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v13, v28);
                v30 = OSKextGetValueForInfoDictionaryKey(ValueAtIndex, @"OSBundleRequired");
                v34 = v30;
                v35 = *(ValueAtIndex + 3);
                if (v49)
                {
                  goto LABEL_42;
                }

                if (!v30)
                {
                  break;
                }

                v36 = CFEqual(@"Safe Boot", v30);
                v37 = v34;
                if (v36)
                {
                  goto LABEL_41;
                }

LABEL_42:
                if (v48)
                {
                  goto LABEL_51;
                }

                if (!v34)
                {
                  v39 = @"OSBundleRequired not set";
LABEL_50:
                  __OSKextAddDiagnostic(a1, 8, @"Dependency lacks appropriate value for OSBundleRequired and may not be available during early boot", v35, v39, v31, v32, v33, v46);
                  goto LABEL_51;
                }

                if (!CFEqual(@"Root", v34) && !CFEqual(@"Local-Root", v34))
                {
                  v38 = CFEqual(@"Console", v34);
                  v39 = v34;
                  if (!v38)
                  {
                    goto LABEL_50;
                  }
                }

                v40 = CFEqual(@"DriverKit", v34);
                v39 = v34;
                if (v40)
                {
                  goto LABEL_50;
                }

LABEL_51:
                if (!v47)
                {
                  if (v34)
                  {
                    if ((CFEqual(@"Root", v34) || CFEqual(@"Network-Root", v34) || CFEqual(@"Console", v34)) && !CFEqual(@"DriverKit", v34))
                    {
                      goto LABEL_60;
                    }
                  }

                  else
                  {
                    v34 = @"OSBundleRequired not set";
                  }

                  __OSKextAddDiagnostic(a1, 8, @"Dependency lacks appropriate value for OSBundleRequired and may not be available during early boot", v35, v34, v31, v32, v33, v46);
                }

LABEL_60:
                if (++v28 < v27)
                {
                  v41 = v28;
                  do
                  {
                    v42 = CFArrayGetValueAtIndex(v13, v41);
                    if (CFEqual(v35, v42[3]))
                    {
                      __OSKextAddDiagnostic(a1, 4, @"Multiple kexts for these libraries occur in the dependency graph", v35, 0, v43, v44, v45, v46);
                      v14 = 0;
                    }

                    ++v41;
                  }

                  while (v27 != v41);
                }

                if (v28 == v27)
                {
                  goto LABEL_7;
                }
              }

              v37 = @"OSBundleRequired not set";
LABEL_41:
              __OSKextAddDiagnostic(a1, 8, @"Dependency lacks appropriate value for OSBundleRequired and may not be available during early boot", v35, v37, v31, v32, v33, v46);
              goto LABEL_42;
            }

            goto LABEL_29;
          }

          v49 = 0;
        }

        else
        {
          v49 = 1;
        }

        v47 = 1;
        v48 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      if (__sOSKextsByURL)
      {
        context[0] = 1;
        CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextResolveDependenciesApplierFunction, context);
      }

      v14 = 0;
    }

    v13 = 0;
    goto LABEL_29;
  }

  OSKextLog(0, 17, "Memory allocation failure.", v6, v7, v8, v9, v10, v46);
  v13 = 0;
  v14 = 0;
LABEL_7:
  if (!Mutable)
  {
    if (!v11)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_29:
  CFRelease(Mutable);
  if (v11)
  {
LABEL_9:
    CFRelease(v11);
  }

LABEL_10:
  if (v13)
  {
    CFRelease(v13);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

BOOL __OSKextResolveDependencies(uint64_t a1, uint64_t a2, __CFSet *a3, const __CFArray *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v189 = *MEMORY[0x1E69E9840];
  __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
  if (!__OSKextReadInfoDictionary(a1, 0) || !*(a1 + 56))
  {
    OSKextLog(a1, 16385, "%s has no info dictionary; can't resolve dependencies.", v14, v15, v16, v17, v18, buffer);
LABEL_10:
    CFSetAddValue(a3, a1);
    v31 = 0;
    goto LABEL_11;
  }

  if (!__OSKextIsValid(a1, v12, v13, v14, v15, v16, v17, v18))
  {
    OSKextLog(a1, 16385, "%s is invalid; can't resolve dependencies.", v19, v20, v21, v22, v23, buffer);
    goto LABEL_10;
  }

  v29 = CFSetContainsValue(a3, a1);
  if (v29)
  {
    OSKextLog(a1, 16391, "%s already has dependencies resolved.", v24, v25, v26, v27, v28, buffer);
    v30 = *(a1 + 72);
    if (!v30)
    {
      CFSetAddValue(a3, a1);
      v31 = 1;
      goto LABEL_11;
    }

    v31 = 1;
    goto LABEL_7;
  }

  if ((*(a1 + 92) & 1) == 0)
  {
    OSKextLog(a1, 16389, "Resolving dependencies for %s.", v24, v25, v26, v27, v28, buffer);
  }

  v190.length = CFArrayGetCount(a4);
  v190.location = 0;
  if (CFArrayGetCountOfValue(a4, v190, a1))
  {
    __OSKextAddDiagnostic(a2, 4, @"Some dependencies are causing circular references", *(a1 + 24), 0, v34, v35, v36, v175);
    __OSKextAddDiagnostic(a1, 4, @"Some dependencies are causing circular references", *(a1 + 24), 0, v37, v38, v39, v176);
    goto LABEL_10;
  }

  CFArrayAppendValue(a4, a1);
  OSKextFlushDependencies(a1);
  if (!__OSKextCreateLoadInfo(a1))
  {
    goto LABEL_68;
  }

  v40 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v40, 0, MEMORY[0x1E695E9C0]);
  **(a1 + 72) = Mutable;
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v42, v43, v44, v45, v46, v175);
LABEL_68:
    v31 = 0;
LABEL_69:
    CFSetAddValue(a3, a1);
LABEL_70:
    Count = CFArrayGetCount(a4);
    CFArrayRemoveValueAtIndex(a4, Count - 1);
    goto LABEL_11;
  }

  ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleLibraries");
  if (*(a1 + 92))
  {
    if (a1 == a2)
    {
      OSKextLog(a1, 0x4000, "%s is a kernel component with no dependencies.", v48, v49, v50, v51, v52, buffer);
    }

    v31 = 1;
    goto LABEL_117;
  }

  v53 = ValueForInfoDictionaryKey;
  if (ValueForInfoDictionaryKey && (v54 = CFDictionaryGetCount(ValueForInfoDictionaryKey)) != 0)
  {
    v55 = v54;
    v56 = 8 * v54;
    v57 = malloc_type_malloc(8 * v54, 0x6004044C4A2DFuLL);
    v58 = malloc_type_malloc(v56, 0x6004044C4A2DFuLL);
    keys = v57;
    v184 = v58;
    if (!v57 || !v58)
    {
      OSKextLog(0, 17, "Memory allocation failure.", v59, v60, v61, v62, v63, v175);
      v31 = 0;
      v173 = 1;
      goto LABEL_112;
    }

    CFDictionaryGetKeysAndValues(v53, v57, v58);
    if (v55 >= 1)
    {
      v180 = 0;
      v64 = 0;
      v65 = 0;
      cf2 = *MEMORY[0x1E695E4D0];
      v66 = keys;
      v181 = v55;
      while (1)
      {
        v67 = v66;
        v68 = v66[v65];
        v69 = OSKextParseVersionCFString(v184[v65]);
        if (v64)
        {
          free(v64);
        }

        UTF8CStringForCFString = createUTF8CStringForCFString(v68);
        LoadedKextWithIdentifier = OSKextGetLoadedKextWithIdentifier(v68);
        v72 = LoadedKextWithIdentifier;
        if (LoadedKextWithIdentifier)
        {
          v73 = LoadedKextWithIdentifier[6];
          v74 = v73 >= 1 && v73 <= v69;
          if (!v74 || LoadedKextWithIdentifier[5] < v69)
          {
            OSKextVersionGetString(v69, v186, 0x14u);
            OSKextVersionGetString(v72[5], v185, 0x14u);
            if (v72[6] < 1)
            {
              v64 = UTF8CStringForCFString;
              OSKextLog(a1, 16385, "%s - loaded dependency %s lacks valid OSBundleCompatibleVersion.", v75, v76, v77, v78, v79, buffer);
              v83 = @"Kexts already loaded for these libraries have no OSBundleCompatibleVersion";
            }

            else
            {
              v64 = UTF8CStringForCFString;
              OSKextLog(a1, 16385, "%s - loaded dependency %s, v%s is not compatible with requested version %s.", v75, v76, v77, v78, v79, buffer);
              v83 = @"Kexts already loaded for these libraries are not compatible with the requested version";
            }

            v66 = v67;
            v85 = a1;
            goto LABEL_41;
          }

          CompatibleKextWithIdentifier = LoadedKextWithIdentifier;
        }

        else
        {
          CompatibleKextWithIdentifier = OSKextGetCompatibleKextWithIdentifier(v68, v69);
        }

        if (CFEqual(v68, @"com.apple.kernel"))
        {
          v86 = 1;
        }

        else if (CFStringHasPrefix(v68, @"com.apple.kernel."))
        {
          v86 = 2;
        }

        else
        {
          if (!CFStringHasPrefix(v68, @"com.apple.kpi."))
          {
            goto LABEL_48;
          }

          *(*(a1 + 72) + 168) |= 4u;
          if (!CFEqual(v68, @"com.apple.kpi.private"))
          {
            goto LABEL_48;
          }

          v86 = 8;
        }

        *(*(a1 + 72) + 168) |= v86;
LABEL_48:
        if (CompatibleKextWithIdentifier)
        {
          v87 = *(CompatibleKextWithIdentifier + 92);
          v88 = OSKextGetValueForInfoDictionaryKey(CompatibleKextWithIdentifier, @"OSBundleRequiredPromotion");
          if (v88)
          {
            v93 = CFEqual(v88, cf2);
            __OSKextGetFileSystemPath(CompatibleKextWithIdentifier, 0, 0, v187, v94, v95, v96, v97);
            v64 = UTF8CStringForCFString;
            OSKextLog(a1, 16390, "%s found %s%s%sdependency %s for %s%s.", v98, v99, v100, v101, v102, buffer);
            CFArrayAppendValue(**(a1 + 72), CompatibleKextWithIdentifier);
            if (v93)
            {
              v103 = OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleRequired");
              v104 = v181;
              v66 = keys;
              if (!v103 || CFStringCompare(v103, @"Safe Boot", 0) == kCFCompareEqualTo)
              {
                CFDictionarySetValue(*(a1 + 56), @"OSBundleRequired", @"Console");
              }

              goto LABEL_64;
            }
          }

          else
          {
            __OSKextGetFileSystemPath(CompatibleKextWithIdentifier, 0, 0, v187, v89, v90, v91, v92);
            v64 = UTF8CStringForCFString;
            OSKextLog(a1, 16390, "%s found %s%s%sdependency %s for %s%s.", v111, v112, v113, v114, v115, buffer);
            CFArrayAppendValue(**(a1 + 72), CompatibleKextWithIdentifier);
          }

          goto LABEL_62;
        }

        KextWithIdentifier = OSKextGetKextWithIdentifier(v68);
        if (!KextWithIdentifier)
        {
          v64 = UTF8CStringForCFString;
          OSKextLog(a1, 16385, "%s - dependency '%s' not found.", v106, v107, v108, v109, v110, buffer);
          __OSKextAddDiagnostic(a1, 4, @"No kexts found for these libraries", v68, 0, v116, v117, v118, v178);
          v180 = 1;
LABEL_62:
          v66 = keys;
          goto LABEL_63;
        }

        v66 = keys;
        v64 = UTF8CStringForCFString;
        if (KextWithIdentifier[6] < 1)
        {
          OSKextLog(a1, 16385, "%s - dependency for %s lacks valid OSBundleCompatibleVersion.", v106, v107, v108, v109, v110, buffer);
          v85 = a1;
          v83 = @"Kexts found for these libraries lack valid OSBundleCompatibleVersion";
        }

        else
        {
          OSKextLog(a1, 16385, "%s - no compatible dependency found for %s.", v106, v107, v108, v109, v110, buffer);
          v85 = a1;
          v83 = @"Only incompatible kexts found for these libraries";
        }

LABEL_41:
        __OSKextAddDiagnostic(v85, 4, v83, v68, 0, v80, v81, v82, v177);
        v180 = 1;
LABEL_63:
        v104 = v181;
LABEL_64:
        if (v104 == ++v65)
        {
          v174 = v180;
          goto LABEL_76;
        }
      }
    }
  }

  else
  {
    keys = 0;
    v184 = 0;
  }

  v64 = 0;
  v174 = 0;
LABEL_76:
  if (*(*(a1 + 72) + 168))
  {
    __OSKextSetDiagnostic(a1, 4, @"Kexts may not link against com.apple.kernel; use either com.apple.kpi.* libraries (recommended), or com.apple.kernel.* (for compatiblity with older releases).");
    v174 = 1;
  }

  if ((*(a1 + 92) & 2) != 0 && CFArrayGetCount(**(a1 + 72)) != 1)
  {
    OSKextLog(a1, 16385, "%s - Interface kext must have exactly one dependency.", v120, v121, v122, v123, v124, buffer);
    __OSKextSetDiagnostic(a1, 4, @"Interface kext must have exactly one dependency.");
    v174 = 1;
  }

  v182 = v64;
  v125 = CFArrayGetCount(**(a1 + 72));
  if (v125 >= 1)
  {
    v133 = v125;
    for (i = 0; i != v133; ++i)
    {
      v135 = *(CFArrayGetValueAtIndex(**(a1 + 72), i) + 3);
      if (!__OSKextResolveDependencies())
      {
        v136 = CFArrayGetCount(a4);
        if (v136 >= 1)
        {
          v137 = v136;
          for (j = 0; j != v137; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a4, j);
            __OSKextAddDiagnostic(ValueAtIndex, 4, @"Indirect dependencies can't be resolved", v135, 0, v140, v141, v142, v175);
          }
        }

        v174 = 1;
      }
    }
  }

  v143 = v174;
  v29 = 0;
  if ((*(a1 + 92) & 4) != 0 && __OSKextHasSuffix(a1, v126, v127, v128, v129, v130, v131, v132))
  {
    v144 = OSKextGetKextWithIdentifier(@"com.apple.kpi.kasan");
    if (v144)
    {
      v150 = v144;
      OSKextLog(a1, 16390, "%s adding implicit KASan dependency", v145, v146, v147, v148, v149, buffer);
      CFArrayAppendValue(**(a1 + 72), v150);
    }

    v151 = OSKextGetKextWithIdentifier(@"com.apple.kpi.kcov");
    if (v151)
    {
      v157 = v151;
      OSKextLog(a1, 16390, "%s adding implicit Kcov dependency", v152, v153, v154, v155, v156, buffer);
      CFArrayAppendValue(**(a1 + 72), v157);
    }
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v163 = *(a1 + 92);
  if (*(__sOSKextArchInfo + 11))
  {
    if ((v163 & 4) == 0)
    {
      goto LABEL_108;
    }

    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    if (!OSKextSupportsArchitecture(a1, __sOSKextArchInfo))
    {
      goto LABEL_108;
    }

    v172 = *(*(a1 + 72) + 168);
    if ((v172 & 2) == 0)
    {
      if ((v172 & 4) != 0)
      {
        goto LABEL_108;
      }

      v171 = @"Kext declares no com.apple.kpi.* libraries; if it references any kernel symbols, it may fail to link.";
      goto LABEL_102;
    }

    __OSKextSetDiagnostic(a1, 4, @"64-bit kexts must use com.apple.kpi.* libraries, not com.apple.kernel* libraries.");
  }

  else
  {
    v164 = *(a1 + 72);
    if ((v163 & 4) == 0 || (*(v164 + 168) & 6) != 0)
    {
      goto LABEL_100;
    }

    OSKextLog(a1, 16386, "%s does not declare a kernel dependency; using %s.", v158, v159, v160, v161, v162, buffer);
    v165 = OSKextGetKextWithIdentifier(@"com.apple.kernel.6.0");
    if (v165)
    {
      CFArrayAppendValue(**(a1 + 72), v165);
      __OSKextSetDiagnostic(a1, 8, @"Kext declares no kernel/KPI libraries; if it references any kernel symbols, it may fail to link.");
      v164 = *(a1 + 72);
LABEL_100:
      if ((~*(v164 + 168) & 6) != 0)
      {
LABEL_108:
        v173 = v143 != 0;
        v31 = v143 == 0;
        goto LABEL_109;
      }

      v171 = @"Kexts should declare dependencies on either com.apple.kernel* or com.apple.kpi.* libraries, not both.";
LABEL_102:
      __OSKextSetDiagnostic(a1, 8, v171);
      goto LABEL_108;
    }

    OSKextLog(a1, 16385, "%s - dependency '%s' not found.", v166, v167, v168, v169, v170, buffer);
  }

  v31 = 0;
  v173 = 1;
LABEL_109:
  if (v182)
  {
    free(v182);
  }

LABEL_112:
  if (keys)
  {
    free(keys);
  }

  if (v184)
  {
    free(v184);
  }

  if (v173)
  {
    goto LABEL_69;
  }

LABEL_117:
  v30 = *(a1 + 72);
  if (!v30)
  {
    goto LABEL_69;
  }

LABEL_7:
  *(v30 + 168) |= 0x10u;
  CFSetAddValue(a3, a1);
  if (!v29)
  {
    goto LABEL_70;
  }

LABEL_11:
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t __OSKextResolveDependenciesApplierFunction(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = OSKextResolveDependencies(a2);
  if (!result)
  {
    *a3 = 0;
  }

  return result;
}

uint64_t __OSKextClearHasAllDependenciesOnKext(const void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  result = CFArrayGetCount(__sOSAllKexts);
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      result = CFArrayGetValueAtIndex(__sOSAllKexts, i);
      v5 = *(result + 72);
      if (v5)
      {
        v6 = *v5;
        if (*v5)
        {
          v7 = result;
          if ((*(result + 92) & 1) != 0 || (*(v5 + 168) & 0x10) != 0)
          {
            v20.length = CFArrayGetCount(v6);
            v20.location = 0;
            result = CFArrayContainsValue(v6, v20, a1);
            if (result)
            {
              __OSKextGetFileSystemPath(v7, 0, 0, buffer, v8, v9, v10, v11);
              OSKextLog(a1, 262151, "Clearing has all dependencies for %s.", v12, v13, v14, v15, v16, buffer);
              *(*(v7 + 72) + 168) &= ~0x10u;
              result = __OSKextClearHasAllDependenciesOnKext(v7);
            }
          }
        }
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void OSKextFlushDependencies(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (a1)
  {
    if ((OSKextFlushDependencies_flushingAll & 1) == 0)
    {
      if (a1[2])
      {
        __OSKextGetFileSystemPath(a1, 0, 0, buffer, v3, v4, v5, v6);
      }

      OSKextLog(a1, 262150, "Flushing dependencies for %s.", v2, v3, v4, v5, v6, buffer);
    }

    v7 = a1[9];
    if (v7)
    {
      *(v7 + 168) &= ~1u;
      *(a1[9] + 168) &= ~2u;
      *(a1[9] + 168) &= ~4u;
      v8 = *a1[9];
      if (v8)
      {
        CFRelease(v8);
        v9 = a1[9];
        *v9 = 0;
        *(v9 + 168) &= ~0x10u;
        *(a1[9] + 168) &= ~0x20u;
        *(a1[9] + 168) &= ~0x40u;
        __OSKextClearHasAllDependenciesOnKext(a1);
      }

      OSKextFlushDiagnostics(a1, 4);
    }
  }

  else if (__sOSKextsByURL)
  {
    OSKextFlushDependencies_flushingAll = 1;
    OSKextLog(0, 262150, "Flushing dependencies for all kexts.", v2, v3, v4, v5, v6, v11);
    CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextFlushDependenciesApplierFunction, 0);
    OSKextFlushDependencies_flushingAll = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

void OSKextFlushDiagnostics(uint64_t a1, int a2)
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (a1)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      return;
    }

    if (a2)
    {
      if (*v4)
      {
        CFRelease(*v4);
        v4 = *(a1 + 64);
      }

      *v4 = 0;
      if ((a2 & 2) == 0)
      {
LABEL_5:
        if ((a2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    else if ((a2 & 2) == 0)
    {
      goto LABEL_5;
    }

    if (v4[1])
    {
      CFRelease(v4[1]);
      v4 = *(a1 + 64);
    }

    v4[1] = 0;
    if ((a2 & 4) == 0)
    {
LABEL_6:
      if ((a2 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_17:
    if (v4[2])
    {
      CFRelease(v4[2]);
      v4 = *(a1 + 64);
    }

    v4[2] = 0;
    if ((a2 & 8) == 0)
    {
LABEL_7:
      if ((a2 & 0x10) == 0)
      {
LABEL_26:
        if ((~a2 & 0x1F) == 0)
        {
          free(v4);
          *(a1 + 64) = 0;
        }

        return;
      }

LABEL_23:
      if (v4[4])
      {
        CFRelease(v4[4]);
        v4 = *(a1 + 64);
      }

      v4[4] = 0;
      goto LABEL_26;
    }

LABEL_20:
    if (v4[3])
    {
      CFRelease(v4[3]);
      v4 = *(a1 + 64);
    }

    v4[3] = 0;
    if ((a2 & 0x10) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (__sOSKextsByURL)
  {
    context = a2;
    CFDictionaryApplyFunction(__sOSKextsByURL, __OSKextFlushDiagnosticsApplierFunction, &context);
  }
}

uint64_t OSKextValidateDependencies(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 && (*(v2 + 168) & 0x20) != 0)
  {
    return 1;
  }

  v3 = __OSKextCopyDependenciesList(a1, 1, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  v6 = Count - 1;
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (__OSKextIsValid(ValueAtIndex, v11, v12, v13, v14, v15, v16, v17))
        {
          break;
        }

        __OSKextAddDiagnostic(a1, 4, @"Dependencies have validation problems", ValueAtIndex[3], 0, v18, v19, v20, v24);
        v8 = 1;
        if (v6 == i++)
        {
          goto LABEL_17;
        }
      }
    }

    if (v8)
    {
      goto LABEL_17;
    }
  }

  if (!__OSKextCreateLoadInfo(a1))
  {
LABEL_17:
    v22 = 0;
  }

  else
  {
    *(*(a1 + 72) + 168) |= 0x20u;
    v22 = 1;
  }

  CFRelease(v4);
  return v22;
}

uint64_t OSKextAuthenticateDependencies(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 && (*(v2 + 168) & 0x40) != 0)
  {
    return 1;
  }

  v3 = __OSKextCopyDependenciesList(a1, 1, 1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  Count = CFArrayGetCount(v3);
  v6 = Count - 1;
  if (Count < 1)
  {
LABEL_15:
    if (__OSKextCreateLoadInfo(a1))
    {
      *(*(a1 + 72) + 168) |= 0x40u;
    }

    else
    {
      OSKextLog(0, 17, "Memory allocation failure.", v23, v24, v25, v26, v27, v29);
    }

    v22 = 1;
  }

  else
  {
    v7 = Count;
    v8 = 0;
    for (i = 0; i != v7; ++i)
    {
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        if (OSKextIsAuthentic(ValueAtIndex, v11, v12, v13, v14, v15, v16, v17))
        {
          break;
        }

        __OSKextAddDiagnostic(a1, 4, @"Dependencies have incorrect owner/permissions", ValueAtIndex[3], 0, v18, v19, v20, v29);
        v8 = 1;
        if (v6 == i++)
        {
          goto LABEL_14;
        }
      }
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_14:
    v22 = 0;
  }

  CFRelease(v4);
  return v22;
}

CFArrayRef OSKextCopyDeclaredDependencies(void *a1, int a2)
{
  v4 = OSKextResolveDependencies(a1);
  if (a2 && !v4)
  {
    return 0;
  }

  v6 = a1[9];
  if (v6 && *v6)
  {
    v7 = CFGetAllocator(a1);
    v8 = *a1[9];

    return CFArrayCreateCopy(v7, v8);
  }

  else
  {
    v9 = CFGetAllocator(a1);
    v10 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(v9, 0, 0, v10);
  }
}

CFMutableArrayRef OSKextCopyLinkDependencies(const void *a1, uint64_t a2)
{
  v4 = OSKextResolveDependencies(a1);
  if (a2 && !v4)
  {
    return 0;
  }

  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v7, v8, v9, v10, v11, v13);
    return Mutable;
  }

  if (!__OSKextAddLinkDependencies(a1, Mutable, a2, 0))
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t __OSKextAddLinkDependencies(uint64_t a1, const __CFArray *a2, uint64_t a3, int a4)
{
  if (*(a1 + 92))
  {
    return 1;
  }

  v6 = *(a1 + 72);
  if (!v6)
  {
    return a3 == 0;
  }

  v7 = *v6;
  if (!*v6)
  {
    return a3 == 0;
  }

  if (a4)
  {
    BleedthroughFlag = 1;
  }

  else
  {
    BleedthroughFlag = __OSKextGetBleedthroughFlag(a1);
    v7 = **(a1 + 72);
  }

  Count = CFArrayGetCount(v7);
  if (Count >= 1)
  {
    v12 = Count;
    for (i = 0; i != v12; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(**(a1 + 72), i);
      v15 = ValueAtIndex;
      if (!BleedthroughFlag && (ValueAtIndex[92] & 4) != 0)
      {
        goto LABEL_15;
      }

      result = __OSKextAddLinkDependencies(ValueAtIndex, a2, a3, BleedthroughFlag);
      if (!result)
      {
        return result;
      }

      if ((v15[92] & 4) != 0)
      {
LABEL_15:
        v16.length = CFArrayGetCount(a2);
        v16.location = 0;
        if (CFArrayGetFirstIndexOfValue(a2, v16, v15) == -1)
        {
          CFArrayAppendValue(a2, v15);
        }
      }
    }
  }

  return 1;
}

__CFArray *OSKextCopySymbolReferences(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = Mutable;
    if (__OSKextReadSymbolReferences(a1, Mutable, v4, v5, v6, v7, v8, v9))
    {
      v11 = CFGetAllocator(v10);
      v17 = CFArrayCreateMutable(v11, 0, MEMORY[0x1E695E9C0]);
      if (!v17)
      {
        OSKextLog(0, 17, "Memory allocation failure.", v12, v13, v14, v15, v16, v29);
        goto LABEL_11;
      }

      Count = CFDictionaryGetCount(v10);
      if (!Count)
      {
LABEL_11:
        CFRelease(v10);
        return v17;
      }

      v19 = Count;
      v20 = 8 * Count;
      v21 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      if (v21)
      {
        v27 = v21;
        bzero(v21, v20);
        CFDictionaryGetKeysAndValues(v10, v27, 0);
        v30.location = 0;
        v30.length = 0;
        CFArrayReplaceValues(v17, v30, v27, v19);
        free(v27);
        goto LABEL_11;
      }

      OSKextLog(0, 17, "Memory allocation failure.", v22, v23, v24, v25, v26, v29);
      CFRelease(v17);
    }

    v17 = 0;
    goto LABEL_11;
  }

  OSKextLog(0, 17, "Memory allocation failure.", v5, v6, v7, v8, v9, v29);
  return 0;
}

uint64_t __OSKextReadSymbolReferences(uint64_t a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v60 = *MEMORY[0x1E69E9840];
  v58 = 0;
  __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
  if ((*(a1 + 92) & 5) != 4)
  {
    v16 = 1;
    goto LABEL_21;
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v10 = OSKextCopyExecutableForArchitecture(a1, __sOSKextArchInfo);
  if (!v10)
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v50 = *__sOSKextArchInfo;
    OSKextLog(a1, 1048577, "%s has no executable for architecture %s.", v17, v18, v19, v20, v21, buffer);
    v16 = 0;
    goto LABEL_21;
  }

  v11 = v10;
  BytePtr = CFDataGetBytePtr(v10);
  v13 = BytePtr + CFDataGetLength(v11);
  v14 = *BytePtr;
  if (*BytePtr == -17958193 || v14 == -805638658)
  {
    v23 = 0;
    v22 = 16;
  }

  else
  {
    v22 = 12;
    v23 = 1;
  }

  if (macho_find_symtab(BytePtr, v13, &v58))
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v49 = buffer;
    v51 = *__sOSKextArchInfo;
    v31 = "%s has no symtab in its executable (%s)";
LABEL_18:
    v38 = a1;
    v39 = 1048577;
    goto LABEL_19;
  }

  theDict = a2;
  v24.i32[0] = 0;
  v32 = (v14 + 822415874) & 0xFEFFFFFF;
  v25.i32[0] = v32;
  v33 = vbsl_s8(vdup_lane_s32(vceq_s32(v25, v24), 0), vrev32_s8(*(v58 + 12)), *(v58 + 12));
  LODWORD(v34) = *(v58 + 8);
  v35 = bswap32(v34);
  if (v32)
  {
    v34 = v34;
  }

  else
  {
    v34 = v35;
  }

  v36 = BytePtr + v34;
  v37 = v33.u32[0];
  if (BytePtr + v34 + (v33.i32[0] * v22) > v13)
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v49 = buffer;
    v52 = *__sOSKextArchInfo;
    v31 = "%s: internal overrun in executable file (%s).";
    goto LABEL_18;
  }

  if (!v33.i32[0])
  {
LABEL_39:
    v16 = 1;
    goto LABEL_20;
  }

  v56 = BytePtr + v33.u32[1];
  alloc = *MEMORY[0x1E695E480];
  value = *MEMORY[0x1E695E4D0];
  v42 = BytePtr + v34;
  while (1)
  {
    if (v23)
    {
      v43 = v42;
    }

    else
    {
      v43 = v36;
    }

    v44 = bswap32(*v43);
    if (v32)
    {
      v45 = *v43;
    }

    else
    {
      v45 = v44;
    }

    if (!v45 || (v43[4] & 0xEE) != 0)
    {
      goto LABEL_38;
    }

    v46 = &v56[v45];
    if (v46 >= v13)
    {
      v47 = 0;
    }

    else
    {
      v47 = strnlen(&v56[v45], v13 - v46);
    }

    if (&v46[v47] >= v13)
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      v53 = *__sOSKextArchInfo;
      v49 = buffer;
      v31 = "%s: internal overrun (%p, string_index: %d, file_end: %p) in executable file (%s).";
      goto LABEL_18;
    }

    v38 = CFStringCreateWithCString(alloc, v46, 0x600u);
    if (!v38)
    {
      break;
    }

    v48 = v38;
    CFDictionarySetValue(theDict, v38, value);
    CFRelease(v48);
LABEL_38:
    v42 += 12;
    v36 += 16;
    if (!--v37)
    {
      goto LABEL_39;
    }
  }

  v31 = "Memory allocation failure.";
  v39 = 17;
LABEL_19:
  OSKextLog(v38, v39, v31, v26, v27, v28, v29, v30, v49);
  v16 = 0;
LABEL_20:
  CFRelease(v11);
LABEL_21:
  v40 = *MEMORY[0x1E69E9840];
  return v16;
}

CFTypeRef OSKextFindLinkDependencies(const void *a1, int a2, int a3, CFTypeRef *a4, CFTypeRef *a5, CFTypeRef *a6, CFTypeRef *a7)
{
  v150 = *MEMORY[0x1E69E9840];
  AllKexts = OSKextGetAllKexts();
  if (!AllKexts)
  {
    v111 = 0;
    goto LABEL_91;
  }

  v17 = AllKexts;
  v142 = a4;
  v143 = a7;
  __OSKextGetFileSystemPath(a1, 0, 0, buffer, v13, v14, v15, v16);
  OSKextLog(a1, 1064965, "Searching for link dependencies of %s.", v18, v19, v20, v21, v22, buffer);
  v23 = CFGetAllocator(a1);
  v24 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(v23, 0, MEMORY[0x1E695E9C0]);
  v26 = CFGetAllocator(a1);
  v27 = MEMORY[0x1E695E9D8];
  v28 = MEMORY[0x1E695E9E8];
  v29 = CFDictionaryCreateMutable(v26, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v30 = CFGetAllocator(a1);
  v31 = CFDictionaryCreateMutable(v30, 0, v27, v28);
  v32 = CFGetAllocator(a1);
  v33 = CFDictionaryCreateMutable(v32, 0, v27, v28);
  v34 = CFGetAllocator(a1);
  v35 = CFArrayCreateMutable(v34, 0, v24);
  v42 = v35;
  if (!Mutable || !v29 || !v31 || !v33 || !v35)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v37, v38, v39, v40, v41, v124);
    v111 = 0;
    goto LABEL_82;
  }

  if (!__OSKextReadSymbolReferences(a1, v29, v36, v37, v38, v39, v40, v41))
  {
    v111 = 0;
    goto LABEL_106;
  }

  theArray = v42;
  v140 = v29;
  v141 = v31;
  Count = CFArrayGetCount(v17);
  if (Count < 1)
  {
    goto LABEL_92;
  }

  v44 = Count;
  v45 = 0;
  alloc = *MEMORY[0x1E695E480];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v17, v45);
    if (ValueAtIndex == a1)
    {
      goto LABEL_38;
    }

    v47 = ValueAtIndex;
    if (*(ValueAtIndex + 6) < 1)
    {
      goto LABEL_38;
    }

    if ((*(ValueAtIndex + 92) & 4) == 0)
    {
      goto LABEL_38;
    }

    v48 = *(ValueAtIndex + 3);
    if (!a3 && (CFEqual(v48, @"com.apple.kernel.unsupported") || CFEqual(v48, @"com.apple.kpi.unsupported") || CFEqual(v48, @"com.apple.kpi.private") || CFEqual(v48, @"com.apple.kpi.dsep")))
    {
      goto LABEL_38;
    }

    v49 = a2 ? @"com.apple.kpi." : @"com.apple.kernel.";
    if (CFStringHasPrefix(v48, v49))
    {
      goto LABEL_38;
    }

    v146 = 0;
    __OSKextGetFileSystemPath(v47, 0, 0, v149, v50, v51, v52, v53);
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v54 = OSKextCopyExecutableForArchitecture(v47, __sOSKextArchInfo);
    if (!v54)
    {
      goto LABEL_38;
    }

    v135 = a5;
    v136 = Mutable;
    v137 = a6;
    v55 = v54;
    BytePtr = CFDataGetBytePtr(v54);
    cf = v55;
    Length = CFDataGetLength(v55);
    v58 = *BytePtr;
    theDict = v33;
    if (*BytePtr == -17958193 || v58 == -805638658)
    {
      v132 = 0;
      v59 = 16;
    }

    else
    {
      v59 = 12;
      v132 = 1;
    }

    v60 = BytePtr + Length;
    if (macho_find_symtab(BytePtr, BytePtr + Length, &v146))
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      v125 = *__sOSKextArchInfo;
      OSKextLog(v47, 1048577, "%s has no symtab in its executable (%s)", v63, v64, v65, v66, v67, v149);
LABEL_36:
      Mutable = v136;
      a6 = v137;
LABEL_37:
      CFRelease(cf);
      a5 = v135;
      v33 = theDict;
      goto LABEL_38;
    }

    v61.i32[0] = 0;
    v68 = (v58 + 822415874) & 0xFEFFFFFF;
    v62.i32[0] = v68;
    v69 = vbsl_s8(vdup_lane_s32(vceq_s32(v62, v61), 0), vrev32_s8(*(v146 + 12)), *(v146 + 12));
    LODWORD(v70) = *(v146 + 8);
    v71 = bswap32(v70);
    if (v68)
    {
      v70 = v70;
    }

    else
    {
      v70 = v71;
    }

    v72 = BytePtr + v70;
    v73 = v69.u32[0];
    if (BytePtr + v70 + (v69.i32[0] * v59) > v60)
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      v124 = v149;
      v126 = *__sOSKextArchInfo;
      v79 = v47;
      v80 = 1048577;
      v81 = "%s - internal overrun in executable file (%s).";
LABEL_35:
      OSKextLog(v79, v80, v81, v74, v75, v76, v77, v78, v124);
      goto LABEL_36;
    }

    Mutable = v136;
    a6 = v137;
    if (!v69.i32[0])
    {
      goto LABEL_37;
    }

    v131 = 0;
    v82 = 0;
    v128 = 0;
    v129 = v68;
    v130 = BytePtr + v69.u32[1];
    v83 = BytePtr + v70;
    v84 = v132;
    do
    {
      if (v84)
      {
        v85 = v83;
      }

      else
      {
        v85 = v72;
      }

      v86 = bswap32(*v85);
      if (v68)
      {
        v87 = *v85;
      }

      else
      {
        v87 = v86;
      }

      if (!v87)
      {
        goto LABEL_69;
      }

      v88 = v85[4];
      if (v88 > 0x1F)
      {
        goto LABEL_69;
      }

      v89 = v88 & 0xE;
      if (!v89)
      {
        goto LABEL_53;
      }

      if (v89 != 14)
      {
        if (v89 != 10)
        {
          goto LABEL_69;
        }

LABEL_53:
        if ((v47[2].length & 0x100000000) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_56;
      }

      if ((v47[2].length & 0x100000000) != 0)
      {
        goto LABEL_69;
      }

LABEL_56:
      if (v82)
      {
        CFRelease(v82);
      }

      v79 = CFStringCreateWithCString(alloc, &v130[v87], 0x600u);
      if (!v79)
      {
        v80 = 17;
        v81 = "Memory allocation failure.";
        goto LABEL_35;
      }

      v90 = v79;
      Value = CFDictionaryGetValue(theDict, v79);
      if (Value)
      {
        CFArrayAppendValue(Value, v47);
        goto LABEL_61;
      }

      v92 = CFDictionaryGetValue(v141, v90);
      if (!v92)
      {
        v84 = v132;
        if (CFDictionaryGetValue(v140, v90))
        {
          CFDictionarySetValue(v141, v90, v47);
          CFDictionaryRemoveValue(v140, v90);
LABEL_61:
          v131 = 1;
        }

        v68 = v129;
        v82 = v90;
        goto LABEL_69;
      }

      v93 = v92;
      key = v90;
      v94 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      if (!v94)
      {
        OSKextLog(0, 17, "Memory allocation failure.", v95, v96, v97, v98, v99, v124);
        v101 = 1;
        v33 = theDict;
        v82 = key;
        goto LABEL_74;
      }

      v100 = v94;
      CFArrayAppendValue(v94, v93);
      CFArrayAppendValue(v100, v47);
      CFDictionarySetValue(theDict, key, v100);
      CFRelease(v100);
      if (!v128)
      {
        v151.length = CFArrayGetCount(theArray);
        v151.location = 0;
        if (CFArrayGetFirstIndexOfValue(theArray, v151, v47) == -1)
        {
          CFArrayAppendValue(theArray, v47);
        }
      }

      CFDictionaryRemoveValue(v141, key);
      v82 = key;
      v128 = 1;
      v131 = 1;
      v84 = v132;
      v68 = v129;
LABEL_69:
      v83 += 12;
      v72 += 16;
      --v73;
    }

    while (v73);
    v33 = theDict;
    v101 = v131;
    if (!v82)
    {
      goto LABEL_75;
    }

LABEL_74:
    CFRelease(v82);
LABEL_75:
    CFRelease(cf);
    Mutable = v136;
    a6 = v137;
    a5 = v135;
    if (v101)
    {
      __OSKextGetFileSystemPath(v47, 0, 0, v147, v102, v103, v104, v105);
      OSKextLog(a1, 1064966, "%s found link dependency %s.", v106, v107, v108, v109, v110, buffer);
      v152.length = CFArrayGetCount(v136);
      v152.location = 0;
      if (CFArrayGetFirstIndexOfValue(v136, v152, v47) == -1)
      {
        CFArrayAppendValue(v136, v47);
      }
    }

LABEL_38:
    ++v45;
  }

  while (v45 != v44);
LABEL_92:
  v153.length = CFArrayGetCount(Mutable);
  v153.location = 0;
  CFArraySortValues(Mutable, v153, __OSKextCompareIdentifiers, 0);
  v42 = theArray;
  v154.length = CFArrayGetCount(theArray);
  v154.location = 0;
  CFArraySortValues(theArray, v154, __OSKextCompareIdentifiers, 0);
  v111 = CFRetain(Mutable);
  if (v111)
  {
    v29 = v140;
    if (CFDictionaryGetCount(v140))
    {
      OSKextLog(a1, 1064966, "%s has %d remaining undefined symbol%s", v114, v115, v116, v117, v118, buffer);
    }

    if (CFDictionaryGetCount(v33))
    {
      OSKextLog(a1, 1064966, "%s has multiply defined %ld symbol%s", v119, v120, v121, v122, v123, buffer);
    }

    if (v142)
    {
      *v142 = CFRetain(v140);
    }

    v31 = v141;
    if (a5)
    {
      *a5 = CFRetain(v141);
    }

    if (a6)
    {
      *a6 = CFRetain(v33);
    }

    if (v143)
    {
      *v143 = CFRetain(theArray);
    }
  }

  else
  {
    v29 = v140;
    v31 = v141;
  }

LABEL_82:
  if (!Mutable)
  {
    if (v29)
    {
      goto LABEL_84;
    }

    goto LABEL_85;
  }

LABEL_106:
  CFRelease(Mutable);
  if (v29)
  {
LABEL_84:
    CFRelease(v29);
  }

LABEL_85:
  if (v31)
  {
    CFRelease(v31);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v42)
  {
    CFRelease(v42);
  }

LABEL_91:
  v112 = *MEMORY[0x1E69E9840];
  return v111;
}

CFMutableArrayRef __OSKextCopyDependenciesList(const void *a1, int a2, int a3)
{
  v6 = OSKextResolveDependencies(a1);
  if (a2 && !v6)
  {
    return 0;
  }

  v7 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v7, 0, MEMORY[0x1E695E9C0]);
  v15 = Mutable;
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v10, v11, v12, v13, v14, v17);
    return v15;
  }

  v18 = Mutable;
  v19 = a3;
  v20 = 0;
  v21 = 0;
  __OSKextAddDependenciesApplierFunction(a1, &v18, v9, v10, v11, v12, v13, v14);
  if (v21)
  {
    CFRelease(v15);
    return 0;
  }

  return v15;
}

const __CFArray *OSKextDependsOnKext(uint64_t a1, const void *a2, int a3)
{
  OSKextResolveDependencies(a1);
  v6 = *(a1 + 72);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (!*v6)
  {
    return result;
  }

  Count = CFArrayGetCount(result);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (CFArrayGetValueAtIndex(**(a1 + 72), v10) != a2 && (a3 || !OSKextDependsOnKext()))
  {
    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return 1;
}

__CFArray *OSKextCopyDependents(const void *a1, int a2)
{
  AllKexts = OSKextGetAllKexts();
  if (!AllKexts)
  {
    return 0;
  }

  v5 = AllKexts;
  OSKextResolveDependencies(0);
  v6 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v6, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        if (OSKextDependsOnKext(ValueAtIndex, a1, a2))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v7, v8, v9, v10, v11, v18);
  }

  return Mutable;
}

void __OSKextLogDependencyGraphApplierFunction(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = *a2;
  context = *a2;
  if (!OSKextResolveDependencies(a1))
  {
LABEL_37:
    v32 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!v10)
  {
    v17 = 0;
LABEL_6:
    if ((v10 & 0xFF00000000) != 0)
    {
      PathComponent = *(a1 + 24);
      CFRetain(PathComponent);
    }

    else
    {
      PathComponent = CFURLCopyLastPathComponent(*(a1 + 16));
    }

    UTF8CStringForCFString = createUTF8CStringForCFString(PathComponent);
    if (UTF8CStringForCFString)
    {
      OSKextVersionGetString(*(a1 + 40), v34, 0x14u);
      v25 = *(a1 + 72);
      if (v25)
      {
        v26 = *(a1 + 92);
        if (*v25)
        {
          if ((v26 & 1) == 0)
          {
            *(v25 + 168);
          }
        }

        else if ((v26 & 1) == 0)
        {
          *(v25 + 168);
        }
      }

      else
      {
        *(a1 + 92);
      }

      v28 = "";
      if (v17)
      {
        LOBYTE(v28) = v17;
      }

      OSKextLog(0, 0x4000, "%s%s (%s)%s", v20, v21, v22, v23, v24, v28);
      LODWORD(context) = v10 + 4;
      if ((v10 & 0xFF0000000000) != 0)
      {
        v29 = OSKextCopyLinkDependencies(a1, 0);
        v30 = v29;
        if (!v29)
        {
LABEL_29:
          if (!v17)
          {
LABEL_31:
            if (UTF8CStringForCFString)
            {
              free(UTF8CStringForCFString);
            }

            if (PathComponent)
            {
              CFRelease(PathComponent);
            }

            if (v29)
            {
              CFRelease(v29);
            }

            goto LABEL_37;
          }

LABEL_30:
          free(v17);
          goto LABEL_31;
        }

LABEL_28:
        v37.length = CFArrayGetCount(v30);
        v37.location = 0;
        CFArrayApplyFunction(v30, v37, __OSKextLogDependencyGraphApplierFunction, &context);
        goto LABEL_29;
      }

      v31 = *(a1 + 72);
      if (v31)
      {
        v29 = 0;
        v30 = *v31;
        if (!*v31)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    v29 = 0;
    if (!v17)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  v11 = malloc_type_malloc((v10 + 1), 0x100004077774924uLL);
  if (v11)
  {
    v17 = v11;
    memset(v11, 32, v10);
    *(v17 + v10) = 0;
    goto LABEL_6;
  }

  v27 = *MEMORY[0x1E69E9840];

  OSKextLog(0, 17, "Memory allocation failure.", v12, v13, v14, v15, v16, a9);
}

void OSKextLogDependencyGraph(uint64_t a1, char a2, char a3)
{
  v11 = 0;
  BYTE4(v11) = a2;
  BYTE5(v11) = a3;
  OSKextResolveDependencies(a1);
  __OSKextLogDependencyGraphApplierFunction(a1, &v11, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t OSKextLoadWithOptions(uint64_t a1, char a2, char a3, const void *a4, int a5)
{
  v170 = *MEMORY[0x1E69E9840];
  LoadedKextInfo = 3690987521;
  valuePtr = a2;
  v163 = a3;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v10, v11, v12, v13, v14, op_result);
    goto LABEL_56;
  }

  v15 = Mutable;
  CFDictionarySetValue(Mutable, @"CFBundleIdentifier", *(a1 + 24));
  v16 = CFGetAllocator(a1);
  v17 = CFNumberCreate(v16, kCFNumberSInt8Type, &valuePtr);
  if (!v17)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v18, v19, v20, v21, v22, op_result);
    v63 = v15;
LABEL_55:
    CFRelease(v63);
    goto LABEL_56;
  }

  v23 = v17;
  CFDictionarySetValue(v15, @"Start Exclude Level", v17);
  v24 = CFGetAllocator(a1);
  v25 = CFNumberCreate(v24, kCFNumberSInt8Type, &v163);
  v31 = v25;
  if (!v25)
  {
    v64 = "Memory allocation failure.";
    v65 = 17;
    goto LABEL_52;
  }

  CFDictionarySetValue(v15, @"Start Matching Exclude Level", v25);
  if (a4)
  {
    CFDictionarySetValue(v15, @"Personality Names", a4);
  }

  if (a5)
  {
    CFDictionarySetValue(v15, @"Delay Autounload", *MEMORY[0x1E695E4D0]);
  }

  v168 = -603979775;
  *&size[1] = 0;
  size[0] = 0;
  *&address[1] = 0;
  address[0] = 0;
  v32 = MEMORY[0x19A8DBAE0]();
  if (!v32)
  {
    OSKextLog(a1, 33, "Process must be running as root to load kexts.", v33, v34, v35, v36, v37, op_result);
    LoadedKextInfo = 3691020292;
    goto LABEL_45;
  }

  v38 = v32;
  __OSKextGetFileSystemPath(a1, 0, 0, buffer, v34, v35, v36, v37);
  if (!__OSKextIsValid(a1, v39, v40, v41, v42, v43, v44, v45))
  {
    OSKextLog(a1, 33, "Can't load %s - validation problems.", v46, v47, v48, v49, v50, buffer);
    LoadedKextInfo = 3691020300;
    goto LABEL_45;
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (!OSKextSupportsArchitecture(a1, __sOSKextArchInfo))
  {
    OSKextLog(a1, 33, "Can't load %s - no code for running kernel's architecture.", v51, v52, v53, v54, v55, buffer);
    LoadedKextInfo = 3691020303;
    goto LABEL_45;
  }

  if (!(OSKextGetActualSafeBoot() | __sOSKextSimulatedSafeBoot) || (*(a1 + 92) & 0x80) != 0)
  {
    if (!OSKextIsAuthentic(a1, v56, v57, v58, v59, v60, v61, v62))
    {
      LoadedKextInfo = 3691020301;
      OSKextLog(a1, 33, "Can't load %s - authentication problems.", v66, v67, v68, v69, v70, buffer);
      goto LABEL_45;
    }

    if (!__sOSKextLoadAuditFunction)
    {
      OSKextLog(a1, 33, "No load audit function set, cannot load %s", v66, v67, v68, v69, v70, buffer);
      goto LABEL_45;
    }

    OSKextFlushLoadInfo(0, 1);
    v71 = __OSKextCopyDependenciesList(a1, 1, 0);
    if (!v71)
    {
      OSKextLog(a1, 33, "Can't load %s - failed to resolve dependencies.", v72, v73, v74, v75, v76, buffer);
      LoadedKextInfo = 3691020302;
      goto LABEL_45;
    }

    v77 = v71;
    if (OSKextAuthenticateDependencies(a1))
    {
      if (OSKextDependenciesAreLoadableInSafeBoot(a1))
      {
        Count = CFArrayGetCount(v77);
        v84 = CFGetAllocator(a1);
        v85 = CFArrayCreateMutable(v84, Count, MEMORY[0x1E695E9C0]);
        if (v85)
        {
          v91 = v85;
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v77, i);
              CFArrayAppendValue(v91, ValueAtIndex[3]);
            }
          }

          CFRelease(v77);
          LoadedKextInfo = OSKextReadLoadedKextInfo(v91, 1);
          if (!LoadedKextInfo)
          {
            if (!OSKextIsLoaded(a1, v94, v95, v96, v97, v98, v99, v100) && ((v165 = 0, IsLoaded = OSKextOtherVersionIsLoaded(a1, &v165, v115, v116, v117, v118, v119, v120), v165) || IsLoaded))
            {
              OSKextLog(a1, 33, "Can't load %s - a different %s is already loaded.", v157, v158, v159, v160, v161, buffer);
              LoadedKextInfo = 3691020308;
            }

            else
            {
              v121 = __OSKextCopyDependenciesList(a1, 1, 0);
              if (v121)
              {
                v127 = v121;
                if (OSKextAuthenticateDependencies(a1))
                {
                  v133 = CFGetAllocator(a1);
                  Mkext = __OSKextCreateMkext(v133, v127, 0, 0, 0, 1, v15);
                  v140 = Mkext;
                  if (Mkext)
                  {
                    BytePtr = CFDataGetBytePtr(Mkext);
                    Length = CFDataGetLength(v140);
                    OSKextLog(a1, 36, "Loading %s.", v143, v144, v145, v146, v147, buffer);
                    if (__sOSKextLogOutputFunction)
                    {
                      v148 = __sKernelLogFilter;
                    }

                    else
                    {
                      v148 = 0;
                    }

                    v149 = kext_request(v38, v148, BytePtr, Length, &size[1], size, &address[1], address, &v168);
                    v150 = __OSKextProcessKextRequestResults(a1, v149, v168, *&address[1], address[0]);
                    LoadedKextInfo = v150;
                    if (v150)
                    {
                      mach_error_string(v150);
                      OSKextLog(a1, 33, "Failed to load %s - %s.", v151, v152, v153, v154, v155, buffer);
                    }
                  }

                  else
                  {
                    OSKextLog(a1, 33, "Can't create kernel load request for %s.", v135, v136, v137, v138, v139, buffer);
                    LoadedKextInfo = 0;
                  }
                }

                else
                {
                  LoadedKextInfo = 3691020301;
                  OSKextLog(a1, 33, "Can't load %s - dependency authentication problems.", v128, v129, v130, v131, v132, buffer);
                  v140 = 0;
                }

                CFRelease(v91);
                CFRelease(v127);
                if (!v140)
                {
                  goto LABEL_45;
                }

                v101 = v140;
                goto LABEL_44;
              }

              OSKextLog(a1, 33, "Can't load %s - failed to resolve dependencies based on loaded kexts.", v122, v123, v124, v125, v126, buffer);
              LoadedKextInfo = 3691020302;
            }
          }

          v101 = v91;
LABEL_44:
          CFRelease(v101);
          goto LABEL_45;
        }

        OSKextLog(0, 17, "Memory allocation failure.", v86, v87, v88, v89, v90, op_result);
      }

      else
      {
        Diagnostics = __OSKextGetDiagnostics(a1, 16);
        if (Diagnostics && (Value = CFDictionaryGetValue(Diagnostics, @"Dependencies aren't loadable during safe boot")) != 0 && (v109 = Value, CFArrayGetCount(Value)) && (CFStringForPlist_new = createCFStringForPlist_new(v109, 2)) != 0)
        {
          v111 = CFStringForPlist_new;
          OSKextLogCFString(a1, 33, @"Can't load %s - dependencies ineligible during safe boot:\n%@", v103, v104, v105, v106, v107, buffer);
          CFRelease(v111);
        }

        else
        {
          OSKextLogCFString(a1, 33, @"Can't load %s - dependencies ineligible during safe boot.", v103, v104, v105, v106, v107, buffer);
        }

        LoadedKextInfo = 3691020306;
      }
    }

    else
    {
      LoadedKextInfo = 3691020301;
      OSKextLog(a1, 33, "Can't load %s - dependency authentication problems.", v78, v79, v80, v81, v82, buffer);
    }

    v101 = v77;
    goto LABEL_44;
  }

  OSKextLog(a1, 33, "Can't load %s - ineligible during safe boot.", v58, v59, v60, v61, v62, buffer);
  LoadedKextInfo = 3691020306;
LABEL_45:
  v112 = MEMORY[0x1E69E9A60];
  if (*&size[1])
  {
    mach_vm_deallocate(*MEMORY[0x1E69E9A60], *&size[1], size[0]);
  }

  if (*&address[1])
  {
    mach_vm_deallocate(*v112, *&address[1], address[0]);
  }

  if (LoadedKextInfo)
  {
    __OSKextRemovePersonalities(a1, *(a1 + 24));
    goto LABEL_53;
  }

  op_result = buffer;
  v64 = "Successfully loaded %s.";
  v25 = a1;
  v65 = 36;
LABEL_52:
  OSKextLog(v25, v65, v64, v26, v27, v28, v29, v30, op_result);
LABEL_53:
  CFRelease(v15);
  CFRelease(v23);
  if (v31)
  {
    v63 = v31;
    goto LABEL_55;
  }

LABEL_56:
  v113 = *MEMORY[0x1E69E9840];
  return LoadedKextInfo;
}

uint64_t __OSKextUnload(uint64_t a1, const __CFString *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  theDict = 0;
  if (a1)
  {
    v10 = *(a1 + 24);
    UTF8CStringForCFString = buffer;
    __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
    v17 = 0;
  }

  else
  {
    v10 = a2;
    UTF8CStringForCFString = createUTF8CStringForCFString(a2);
    v17 = UTF8CStringForCFString;
  }

  OSKextLog(a1, 100, "Requesting unload of %s%s.", v12, v13, v14, v15, v16, UTF8CStringForCFString);
  v18 = __OSKextCreateKextRequest(@"Unload", v10, &theDict);
  v19 = 3690987521;
  if (v18 && theDict)
  {
    if (a3)
    {
      CFDictionarySetValue(theDict, @"Terminate IOServices", *MEMORY[0x1E695E4D0]);
    }

    v20 = __OSKextSendKextRequest(a1, v18, 0, 0, 0);
    v19 = v20;
    if (v20)
    {
      mach_error_string(v20);
      OSKextLog(a1, 65, "Failed to unload %s - %s.", v26, v27, v28, v29, v30, UTF8CStringForCFString);
    }

    else
    {
      OSKextLog(a1, 100, "Successfully unloaded %s.", v21, v22, v23, v24, v25, UTF8CStringForCFString);
    }
  }

  if (v17)
  {
    free(v17);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t OSKextIsStarted(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[9];
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 8))
  {
    __OSKextCheckLoaded(a1, a2, a3, a4, a5, a6, a7, a8);
    v8 = a1[9];
  }

  return *(v8 + 169) & 1;
}

void __OSKextCheckLoaded(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = *MEMORY[0x1E69E9840];
  memset(v44, 0, 37);
  memset(out, 0, 37);
  v8 = a1[9];
  if (!v8)
  {
    goto LABEL_17;
  }

  if (*(v8 + 8))
  {
    __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
    Value = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleUUID");
    RunningKernelArchitecture = OSKextGetRunningKernelArchitecture(Value, v11, v12, v13, v14, v15, v16, v17);
    v19 = OSKextCopyUUIDForArchitecture(a1, RunningKernelArchitecture);
    v20 = v19;
    if (Value)
    {
      BytePtr = CFDataGetBytePtr(Value);
      uuid_unparse(BytePtr, out);
      if (!v20)
      {
        OSKextVersionGetString(a1[5], v41, 0x14u);
LABEL_10:
        *(a1[9] + 168) |= 0x400u;
        OSKextLog(a1, 103, "%s (version %s%s%s): same version, different UUID (%s) is loaded.", v22, v23, v24, v25, v26, buffer);
        goto LABEL_11;
      }
    }

    else if (!v19)
    {
      OSKextVersionGetString(a1[5], v41, 0x14u);
      goto LABEL_19;
    }

    v27 = CFDataGetBytePtr(v20);
    uuid_unparse(v27, v44);
    OSKextVersionGetString(a1[5], v41, 0x14u);
    if (!Value || !CFEqual(Value, v20))
    {
      goto LABEL_10;
    }

LABEL_19:
    *(a1[9] + 168) |= 0x80u;
    OSKextLog(a1, 103, "%s (version %s%s%s) is loaded.", v22, v23, v24, v25, v26, buffer);
    v31 = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleStarted");
    if (v31 && CFBooleanGetValue(v31))
    {
      *(a1[9] + 168) |= 0x100u;
      *(a1[9] + 168);
      OSKextLog(a1, 103, "%s (version %s): is%s started.", v32, v33, v34, v35, v36, buffer);
    }

    v37 = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleLoadTag");
    if (v37)
    {
      LODWORD(valuePtr) = 0;
      if (CFNumberGetValue(v37, kCFNumberSInt32Type, &valuePtr))
      {
        *(a1[9] + 16) = valuePtr;
      }
    }

    v38 = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleLoadAddress");
    if (v38)
    {
      valuePtr = 0;
      if (CFNumberGetValue(v38, kCFNumberSInt64Type, &valuePtr))
      {
        __OSKextSetLoadAddress(a1, valuePtr);
      }
    }

    v39 = CFDictionaryGetValue(*(a1[9] + 8), @"OSBundleLoadSize");
    if (v39)
    {
      LODWORD(valuePtr) = 0;
      if (CFNumberGetValue(v39, kCFNumberSInt32Type, &valuePtr))
      {
        *(a1[9] + 48) = valuePtr;
      }
    }

    goto LABEL_11;
  }

  v20 = 0;
LABEL_11:
  v28 = a1[9];
  if (v28)
  {
    v29 = *(v28 + 8);
    if (v29)
    {
      CFRelease(v29);
      v28 = a1[9];
    }

    *(v28 + 8) = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

LABEL_17:
  v30 = *MEMORY[0x1E69E9840];
}

uint64_t OSKextStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
  OSKextLog(a1, 100, "Requesting start of %s.", v9, v10, v11, v12, v13, buffer);
  v14 = __OSKextSimpleKextRequest(a1, @"Start");
  v20 = v14;
  if (v14)
  {
    mach_error_string(v14);
    OSKextLog(a1, 33, "Failed to start %s - %s.", v21, v22, v23, v24, v25, buffer);
  }

  else
  {
    OSKextLog(a1, 100, "Started %s.", v15, v16, v17, v18, v19, buffer);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t __OSKextSimpleKextRequest(uint64_t a1, const void *a2)
{
  if (a1)
  {
    v4 = *(a1 + 24);
  }

  else
  {
    v4 = 0;
  }

  KextRequest = __OSKextCreateKextRequest(a2, v4, 0);
  if (!KextRequest)
  {
    return 3691020289;
  }

  v6 = KextRequest;
  v7 = __OSKextSendKextRequest(a1, KextRequest, 0, 0, 0);
  CFRelease(v6);
  return v7;
}

uint64_t OSKextStop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = *MEMORY[0x1E69E9840];
  __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
  OSKextLog(a1, 100, "Requesting stop of %s.", v9, v10, v11, v12, v13, buffer);
  v14 = __OSKextSimpleKextRequest(a1, @"Stop");
  v20 = v14;
  if (v14)
  {
    mach_error_string(v14);
    OSKextLog(a1, 33, "Failed to stop %s - %s.", v21, v22, v23, v24, v25, buffer);
  }

  else
  {
    OSKextLog(a1, 100, "Successfully stopped %s.", v15, v16, v17, v18, v19, buffer);
  }

  v26 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t OSKextSendPersonalitiesToKernel(const __CFArray *a1, int a2)
{
  v2 = 3691020293;
  if (a2)
  {
    v3 = 9;
  }

  else
  {
    v3 = 1;
  }

  if (a1)
  {
    if (CFArrayGetCount(a1))
    {
      Count = CFArrayGetCount(a1);
      CFArrayGetCount(a1);
      OSKextLog(0, 101, "Sending %d personalit%s to the kernel.", v6, v7, v8, v9, v10, Count);
      v11 = IOCFSerialize(a1, 0);
      if (v11)
      {
        v17 = v11;
        BytePtr = CFDataGetBytePtr(v11);
        Length = CFDataGetLength(v17);
        v2 = IOCatalogueSendData(0, v3, BytePtr, Length);
        if (v2)
        {
          OSKextLog(0, 97, "Failed to send personalities to the kernel.", v20, v21, v22, v23, v24, v26);
        }

        CFRelease(v17);
      }

      else
      {
        OSKextLog(0, 33, "Can't serialize personalities.", v12, v13, v14, v15, v16, v26);
        return 3691020296;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t OSKextSendKextPersonalitiesToKernel(CFURLRef *a1, const __CFArray *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v46 = *MEMORY[0x1E69E9840];
  __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
  if (!a2 || !CFArrayGetCount(a2))
  {
    v28 = OSKextCopyPersonalitiesArray(a1);
    v27 = v28;
    if (v28 && CFArrayGetCount(v28))
    {
      OSKextLog(a1, 37, "Sending all personalties for %s to the kernel.", v29, v30, v31, v32, v33, buffer);
      goto LABEL_16;
    }

    OSKextLog(a1, 37, "%s has no personalities to send to kernel.", v29, v30, v31, v32, v33, buffer);
    if (v27)
    {
      goto LABEL_16;
    }

LABEL_24:
    v34 = 0;
    goto LABEL_25;
  }

  v44 = 0;
  ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"IOKitPersonalities");
  if (!ValueForInfoDictionaryKey && !CFDictionaryGetCount(0))
  {
    v39 = buffer;
    v35 = "%s has no personalities to send to kernel.";
    Mutable = a1;
    v36 = 37;
    goto LABEL_23;
  }

  if (CFArrayGetCount(a2) >= 1)
  {
    v16 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v16);
      v18 = ValueAtIndex;
      if (!CFDictionaryContainsKey(ValueForInfoDictionaryKey, ValueAtIndex))
      {
        break;
      }

      if (++v16 >= CFArrayGetCount(a2))
      {
        goto LABEL_9;
      }
    }

    OSKextLogCFString(a1, 33, @"Personality %@ not found in %s.", v19, v20, v21, v22, v23, v18);
    goto LABEL_24;
  }

LABEL_9:
  v24 = CFGetAllocator(a1);
  Count = CFArrayGetCount(a2);
  Mutable = CFArrayCreateMutable(v24, Count, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v35 = "Memory allocation failure.";
    v36 = 17;
LABEL_23:
    OSKextLog(Mutable, v36, v35, v11, v12, v13, v14, v15, v39);
    goto LABEL_24;
  }

  OSKextLog(a1, 102, "Sending named personalities of %s to the kernel:", v11, v12, v13, v14, v15, buffer);
  context = a1;
  theArray = 0;
  v42 = 0;
  v43 = a2;
  LOBYTE(v44) = 0;
  CFDictionaryApplyFunction(ValueForInfoDictionaryKey, __OSKextPersonalityPatcherApplierFunction, &context);
  v27 = theArray;
  if (!theArray)
  {
    goto LABEL_24;
  }

LABEL_16:
  if (CFArrayGetCount(v27))
  {
    v34 = OSKextSendPersonalitiesToKernel(v27, 0);
  }

  else
  {
    v34 = 0;
  }

  CFRelease(v27);
LABEL_25:
  v37 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t OSKextSendPersonalitiesOfKextsToKernel(const __CFArray *a1, int a2)
{
  if (!CFArrayGetCount(a1))
  {
    return 0;
  }

  v4 = OSKextCopyPersonalitiesOfKexts(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFArrayGetCount(v4))
  {
    v6 = OSKextSendPersonalitiesToKernel(v5, a2);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v5);
  return v6;
}

uint64_t __OSKextRemovePersonalities(const void *a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  values = a2;
  v3 = CFGetAllocator(a1);
  v4 = CFDictionaryCreate(v3, MEMORY[0x1E695E4F0], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v4)
  {
    v10 = v4;
    __OSKextGetFileSystemPath(a1, 0, 0, buffer, v6, v7, v8, v9);
    v11 = IOCFSerialize(v10, 0);
    if (v11)
    {
      v17 = v11;
      BytePtr = CFDataGetBytePtr(v11);
      Length = CFDataGetLength(v17);
      v20 = IOCatalogueSendData(0, 3u, BytePtr, Length);
      if (v20)
      {
        v21 = 3690987521;
        mach_error_string(v20);
        OSKextLog(a1, 65, "Failed to remove personalities of %s from IOCatalogue - %s.", v22, v23, v24, v25, v26, buffer);
      }

      else
      {
        v21 = 0;
      }

      CFRelease(v17);
    }

    else
    {
      v21 = 3690987521;
      OSKextLog(a1, 65, "Can't serialize personalities for %s.", v12, v13, v14, v15, v16, buffer);
    }

    CFRelease(v10);
  }

  else
  {
    v21 = 3690987521;
    OSKextLog(0, 17, "Memory allocation failure.", v5, v6, v7, v8, v9, v29);
  }

  v27 = *MEMORY[0x1E69E9840];
  return v21;
}

uint64_t OSKextReadLoadedKextInfo(const __CFArray *a1, int a2)
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v4 = pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v5 = __sOSKextArchInfo;
  RunningKernelArchitecture = OSKextGetRunningKernelArchitecture(v4, v6, v7, v8, v9, v10, v11, v12);
  if (v5 != RunningKernelArchitecture)
  {
    v47 = *RunningKernelArchitecture;
    OSKextLog(0, 97, "Can't read loaded kext info - current architecture %s != kernel's architecture %s.", v14, v15, v16, v17, v18, *v5);
    return 3691020303;
  }

  v19 = 3690987521;
  if (!a1)
  {
    OSKextFlushLoadInfo(0, a2);
    v21 = 0;
LABEL_11:
    OSKextLog(0, 100, "Reading load info for all kexts.", v26, v27, v28, v29, v30, v46);
    goto LABEL_12;
  }

  v20 = OSKextCopyKextsWithIdentifiers(a1);
  if (!v20)
  {
    return v19;
  }

  v21 = v20;
  Count = CFArrayGetCount(v20);
  if (Count >= 1)
  {
    v23 = Count;
    for (i = 0; i != v23; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
      OSKextFlushLoadInfo(ValueAtIndex, a2);
    }
  }

  if (!CFArrayGetCount(a1))
  {
    goto LABEL_11;
  }

  v31 = CFArrayGetCount(a1);
  OSKextLog(0, 100, "Reading load info for %u kext%s.", v32, v33, v34, v35, v36, v31);
LABEL_12:
  v43 = OSKextCopyLoadedKextInfo(a1, __sOSKextInfoEssentialKeys, v37, v38, v39, v40, v41, v42);
  v44 = v43;
  if (v43)
  {
    CFDictionaryApplyFunction(v43, __OSKextProcessLoadInfo, 0);
    v19 = 0;
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  return v19;
}

uint64_t OSKextGetLoadAddress(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[9];
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 8))
  {
    __OSKextCheckLoaded(a1, a2, a3, a4, a5, a6, a7, a8);
    v8 = a1[9];
  }

  return *(v8 + 56);
}

uint64_t __OSKextSetLoadAddress(uint64_t a1, unint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  result = __OSKextCreateLoadInfo(a1);
  if (result)
  {
    __OSKextGetFileSystemPath(a1, 0, 1u, buffer, v5, v6, v7, v8);
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    if (!HIDWORD(a2) || (__sOSKextArchInfo[1] & 0x1000000) != 0)
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      if (*(__sOSKextArchInfo + 11))
      {
        OSKextLog(a1, 1048615, "setting load address of %s to 0x%0llx", v14, v15, v16, v17, v18, buffer);
      }

      else
      {
        OSKextLog(a1, 1048615, "setting load address of %s to 0x%0x", v14, v15, v16, v17, v18, buffer);
      }

      *(*(a1 + 72) + 56) = a2;
      result = 1;
    }

    else
    {
      OSKextLog(a1, 33, "Attempt to set 64-bit load address - %s.", v9, v10, v11, v12, v13, buffer);
      result = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OSKextSetLoadAddress(unint64_t *a1, unint64_t a2)
{
  result = __OSKextCreateLoadInfo(a1);
  if (result)
  {
    if (*(a1[9] + 8))
    {
      __OSKextCheckLoaded(a1, v5, v6, v7, v8, v9, v10, v11);
    }

    return __OSKextSetLoadAddress(a1, a2);
  }

  return result;
}

BOOL OSKextOtherVersionIsLoaded(unint64_t *a1, BOOL *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[9];
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 8))
  {
    __OSKextCheckLoaded(a1, a2, a3, a4, a5, a6, a7, a8);
    v8 = a1[9];
  }

  v11 = *(v8 + 168);
  result = (v11 & 0x600) != 0;
  if (a2)
  {
    *a2 = (v11 & 0x400) != 0;
  }

  return result;
}

uint64_t OSKextGetLoadTag(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1[9];
  if (!v8)
  {
    return 0;
  }

  if (*(v8 + 8))
  {
    __OSKextCheckLoaded(a1, a2, a3, a4, a5, a6, a7, a8);
    v8 = a1[9];
  }

  return *(v8 + 16);
}

CFTypeRef _OSKextCopyKernelRequests(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  OSKextLog(0, 71, "Reading requests from kernel.", a4, a5, a6, a7, a8, v24);
  KextRequest = __OSKextCreateKextRequest(@"Get Kernel Requests", 0, 0);
  v9 = __OSKextSendKextRequest(0, KextRequest, &cf, 0, 0);
  if (v9)
  {
    v15 = mach_error_string(v9);
    v21 = "(unknown)";
    if (v15)
    {
      LOBYTE(v21) = v15;
    }

    OSKextLog(0, 65, "Failed to read requests from kernel - %s.", v16, v17, v18, v19, v20, v21);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = 0;
  }

  else
  {
    if (cf)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        goto LABEL_12;
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }

    cf = 0;
    OSKextLog(0, 65, "Requests from kernel missing or of wrong type.", v10, v11, v12, v13, v14, v25);
  }

LABEL_12:
  if (KextRequest)
  {
    CFRelease(KextRequest);
  }

  return cf;
}

uint64_t _OSKextSendResource(const __CFDictionary *a1, int a2, const void *a3)
{
  valuePtr = a2;
  Value = CFDictionaryGetValue(a1, @"Kext Request Arguments");
  if (!Value)
  {
    return 3691020293;
  }

  v6 = Value;
  v7 = *MEMORY[0x1E695E480];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
  if (MutableCopy)
  {
    v14 = MutableCopy;
    v15 = CFDictionaryCreateMutableCopy(v7, 0, v6);
    if (v15)
    {
      v21 = v15;
      CFDictionarySetValue(v14, @"Kext Request Predicate", @"Send Resource");
      CFDictionarySetValue(v14, @"Kext Request Arguments", v21);
      if (a3)
      {
        CFDictionarySetValue(v21, @"Value", a3);
      }

      v22 = CFNumberCreate(v7, kCFNumberSInt32Type, &valuePtr);
      if (v22)
      {
        v23 = v22;
        CFDictionarySetValue(v21, @"Kext Request Result Code", v22);
        v24 = __OSKextSendKextRequest(0, v14, 0, 0, 0);
        CFRelease(v23);
      }

      else
      {
        v24 = __OSKextSendKextRequest(0, v14, 0, 0, 0);
      }

      CFRelease(v21);
    }

    else
    {
      v24 = 3690987521;
      OSKextLog(0, 17, "Memory allocation failure.", v16, v17, v18, v19, v20, v26);
    }

    CFRelease(v14);
  }

  else
  {
    v24 = 3690987521;
    OSKextLog(0, 17, "Memory allocation failure.", v9, v10, v11, v12, v13, v26);
  }

  return v24;
}

CFArrayRef OSKextCreateLoadedKextInfo(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OSKextCopyLoadedKextInfo(a1, 0, a3, a4, a5, a6, a7, a8);
  if (v8)
  {
    v9 = v8;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v9))
    {
      Count = CFDictionaryGetCount(v9);
      v12 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
      if (v12)
      {
        v18 = v12;
        CFDictionaryGetKeysAndValues(v9, 0, v12);
        v19 = CFArrayCreate(*MEMORY[0x1E695E480], v18, Count, MEMORY[0x1E695E9C0]);
LABEL_8:
        CFRelease(v9);
        return v19;
      }

      OSKextLog(0, 17, "Memory allocation failure.", v13, v14, v15, v16, v17, v21);
    }

    v19 = 0;
    goto LABEL_8;
  }

  return 0;
}

uint64_t OSKextValidate(uint64_t a1)
{
  theDict = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v9 = Mutable;
    v10 = __OSKextValidate(a1, Mutable, v3, v4, v5, v6, v7, v8);
    CFArrayAppendValue(v9, @"IOKitPersonalities");
    v11 = *(a1 + 56);
    TypeID = CFDictionaryGetTypeID();
    v13 = __OSKextCheckProperty(a1, v11, @"IOKitPersonalities", v9, TypeID, 0, 0, 1, 0, &theDict, 0);
    if (v10)
    {
      v14 = v13 == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    if (v13)
    {
      v16 = theDict == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      context[0] = a1;
      context[1] = theDict;
      context[2] = v9;
      v22 = 1;
      CFDictionaryApplyFunction(theDict, __OSKextValidateIOKitPersonalityTargetApplierFunction, context);
      if (v22)
      {
        v17 = v10 == 0;
      }

      else
      {
        v17 = 1;
      }

      v15 = !v17;
    }

    Count = CFArrayGetCount(v9);
    CFArrayRemoveValueAtIndex(v9, Count - 1);
    CFRelease(v9);
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v4, v5, v6, v7, v8, v20);
    return 1;
  }

  return v15;
}

uint64_t __OSKextValidate(uint64_t a1, __CFArray *Mutable, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v74 = *MEMORY[0x1E69E9840];
  theDict = 0;
  v70 = 0;
  __OSKextGetFileSystemPath(a1, 0, 0, buffer, a5, a6, a7, a8);
  OSKextLog(a1, 4101, "Validating %s.", v10, v11, v12, v13, v14, buffer);
  v21 = 0;
  *(a1 + 92) &= 0xFFFFF1FF;
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v21 = Mutable;
    if (!Mutable)
    {
      OSKextLog(0, 17, "Memory allocation failure.", v16, v17, v18, v19, v20, v63);
      v47 = *(a1 + 92);
      goto LABEL_49;
    }
  }

  v22 = __OSKextProcessInfoDictionary(a1, 0, v15, v16, v17, v18, v19, v20);
  v23 = v22 != 0;
  if (!*(a1 + 56))
  {
LABEL_44:
    if (!v21)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v24 = v22;
  CFArrayAppendValue(Mutable, @"OSBundleAllowUserLoad");
  v25 = *(a1 + 56);
  TypeID = CFBooleanGetTypeID();
  LOBYTE(v25) = __OSKextCheckProperty(a1, v25, @"OSBundleAllowUserLoad", Mutable, TypeID, 0, 0, 1, 0, 0, 0);
  Count = CFArrayGetCount(Mutable);
  CFArrayRemoveValueAtIndex(Mutable, Count - 1);
  CFArrayAppendValue(Mutable, @"OSBundleLibraries");
  v28 = *(a1 + 56);
  v29 = CFDictionaryGetTypeID();
  v30 = __OSKextCheckProperty(a1, v28, @"OSBundleLibraries", Mutable, v29, 0, (*(a1 + 92) >> 2) & ~*(a1 + 92) & 1, 1, (*(a1 + 92) & 5) == 4, &theDict, 0);
  v34 = v30;
  if (v25)
  {
    v35 = v24 == 0;
  }

  else
  {
    v35 = 1;
  }

  v37 = !v35 && v30 != 0;
  if (theDict && CFDictionaryGetCount(theDict))
  {
    if (*(a1 + 92))
    {
      __OSKextAddDiagnostic(a1, 1, @"A system kext has a property set that it shouldn't", @"OSBundleLibraries", 0, v31, v32, v33, v64);
      v37 = 0;
      if (!v34)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }

    if ((*(a1 + 92) & 4) == 0 && *(a1 + 48) <= 0)
    {
      __OSKextSetDiagnostic(a1, 8, @"Kext has no executable or compatible version, so it should not declare any OSBundleLibraries.");
      if (!v34)
      {
        goto LABEL_29;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a1 + 92) & 5) == 4)
  {
    __OSKextAddDiagnostic(a1, 1, @"Info dictionary missing required property/value", Mutable, 0, v31, v32, v33, v64);
  }

  if (!v34)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (theDict)
  {
    context = a1;
    v67 = theDict;
    v68 = Mutable;
    v69 = 1;
    CFDictionaryApplyFunction(theDict, __OSKextValidateOSBundleLibraryApplierFunction, &context);
    if (!v69)
    {
      v37 = 0;
    }

    if (BYTE1(v69) && BYTE2(v69))
    {
      __OSKextSetDiagnostic(a1, 8, @"Kexts should declare dependencies on either com.apple.kernel* or com.apple.kpi.* libraries, not both.");
    }
  }

LABEL_29:
  theDict = 0;
  v38 = CFArrayGetCount(Mutable);
  CFArrayRemoveValueAtIndex(Mutable, v38 - 1);
  CFArrayAppendValue(Mutable, @"IOKitPersonalities");
  v39 = *(a1 + 56);
  v40 = CFDictionaryGetTypeID();
  v41 = __OSKextCheckProperty(a1, v39, @"IOKitPersonalities", Mutable, v40, 0, 0, 1, 0, &theDict, &v70);
  if (v41)
  {
    v23 = v37;
  }

  else
  {
    v23 = 0;
  }

  if (v41 && theDict)
  {
    context = a1;
    v67 = theDict;
    v68 = Mutable;
    v69 = 1;
    CFDictionaryApplyFunction(theDict, __OSKextValidateIOKitPersonalityApplierFunction, &context);
    if (v69)
    {
      v23 = v37;
    }

    else
    {
      v23 = 0;
    }
  }

  v42 = CFArrayGetCount(Mutable);
  CFArrayRemoveValueAtIndex(Mutable, v42 - 1);
  context = 0;
  if ((*(a1 + 92) & 6) != 4)
  {
    goto LABEL_44;
  }

  if (__OSKextReadExecutable(a1))
  {
    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v43 = OSKextCopyExecutableForArchitecture(a1, __sOSKextArchInfo);
    if (!v43)
    {
      goto LABEL_44;
    }

    v44 = v43;
    v72 = 0;
    BytePtr = CFDataGetBytePtr(v43);
    Length = CFDataGetLength(v44);
    if (macho_find_symbol(BytePtr, BytePtr + Length, "_kmod_info", &v72, &context) || (~v72 & 0xE) != 0 || !context)
    {
      __OSKextSetDiagnostic(a1, 1, @"Executable file doesn't contain kernel extension code (no kmod_info symbol or bad Mach-O layout).");
    }

    else
    {
      if ((*(a1 + 94) & 1) == 0)
      {
        goto LABEL_43;
      }

      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      v51 = context;
      v52 = 16;
      if ((__sOSKextArchInfo[1] & 0x1000000) != 0)
      {
        v53 = 80;
      }

      else
      {
        v52 = 12;
        v53 = 76;
      }

      v54 = *(a1 + 24);
      v55 = CFStringCreateWithCString(*MEMORY[0x1E695E480], (context + v52), 0x8000100u);
      if (v55)
      {
        v61 = v55;
        if (!CFEqual(v54, v55))
        {
          __OSKextSetDiagnostic(a1, 8, @"Kexts with a kernel library < v6.0 must set MODULE_NAME the same as CFBundleIdentifier to load on kernel < v6.0.");
        }

        v62 = OSKextParseVersionString((v51 + v53));
        if (v62 < 0 || *(a1 + 40) != v62)
        {
          __OSKextSetDiagnostic(a1, 8, @"Kexts with a kernel library < v6.0 must set MODULE_VERSION the same as CFBundleVersion to load on kernel < v6.0.");
        }

        CFRelease(v44);
        v44 = v61;
        goto LABEL_43;
      }

      OSKextLog(0, 17, "Memory allocation failure.", v56, v57, v58, v59, v60, v65);
    }

    v23 = 0;
LABEL_43:
    CFRelease(v44);
    goto LABEL_44;
  }

  v23 = 0;
  if (v21)
  {
LABEL_45:
    CFRelease(v21);
  }

LABEL_46:
  v47 = *(a1 + 92);
  if (v23)
  {
LABEL_49:
    v49 = v47 | 0xA00;
    result = 1;
    goto LABEL_50;
  }

  result = 0;
  v49 = v47 | 0x400;
LABEL_50:
  *(a1 + 92) = v49;
  v50 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __OSKextCheckProperty(uint64_t a1, CFDictionaryRef theDict, const __CFString *key, const __CFString *a4, const __CFString *a5, const __CFArray *a6, int a7, int a8, char a9, const __CFString **a10, _BYTE *a11)
{
  if (a11)
  {
    *a11 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (*(a1 + 56) == theDict)
  {
    ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, key);
  }

  else
  {
    ValueForInfoDictionaryKey = CFDictionaryGetValue(theDict, key);
  }

  v21 = ValueForInfoDictionaryKey;
  if (!ValueForInfoDictionaryKey)
  {
    if (!a7)
    {
      return 1;
    }

    __OSKextAddDiagnostic(a1, 1, @"Info dictionary missing required property/value", a4, 0, v18, v19, v20, v51);
    return 0;
  }

  if (a10)
  {
    *a10 = ValueForInfoDictionaryKey;
  }

  TypeID = CFNumberGetTypeID();
  v23 = TypeID == CFGetTypeID(v21) && CFNumberIsFloatType(v21) != 0;
  if (CFGetTypeID(v21) != a5 || v23)
  {
    if (CFStringGetTypeID() == a5)
    {
      v39 = "<string>";
    }

    else if (CFNumberGetTypeID() == a5 && v23)
    {
      v39 = "<integer> (kexts may not use <real>)";
    }

    else if (CFNumberGetTypeID() == a5)
    {
      v39 = "<integer>";
    }

    else if (CFDataGetTypeID() == a5)
    {
      v39 = "<data>";
    }

    else if (CFBooleanGetTypeID() == a5)
    {
      v39 = "BOOLean, <true/> or <false/>";
    }

    else if (CFArrayGetTypeID() == a5)
    {
      v39 = "<array>";
    }

    else
    {
      v47 = CFDictionaryGetTypeID();
      v39 = "<dict>";
      if (v47 != a5)
      {
        LOBYTE(v39) = 0;
      }
    }

    if (a5)
    {
      v51 = v39;
      a5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"should be %s");
    }

    if (a8)
    {
      v48 = 1;
    }

    else
    {
      v48 = 8;
    }

    if (a8)
    {
      v49 = @"Info dictionary property value is of illegal type";
    }

    else
    {
      v49 = @"Info dictionary property value is of incorrect type";
    }

    __OSKextAddDiagnostic(a1, v48, v49, a4, a5, v36, v37, v38, v51);
    if (a5)
    {
      CFRelease(a5);
    }

    return 0;
  }

  if (a6)
  {
    Count = CFArrayGetCount(a6);
    if (Count < 1)
    {
LABEL_23:
      __OSKextAddDiagnostic(a1, 1, @"Info dictionary property value is illegal", a4, 0, v25, v26, v27, v51);
    }

    else
    {
      v28 = Count;
      v29 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a6, v29);
        if (CFEqual(ValueAtIndex, v21))
        {
          break;
        }

        if (v28 == ++v29)
        {
          goto LABEL_23;
        }
      }
    }
  }

  if (CFBooleanGetTypeID() != a5)
  {
    if (CFStringGetTypeID() == a5)
    {
      Length = CFStringGetLength(v21);
    }

    else if (CFDataGetTypeID() == a5)
    {
      Length = CFDataGetLength(v21);
    }

    else if (CFArrayGetTypeID() == a5)
    {
      Length = CFArrayGetCount(v21);
    }

    else
    {
      if (CFDictionaryGetTypeID() != a5)
      {
        if (CFNumberGetTypeID() != a5)
        {
          Value = 0;
          goto LABEL_26;
        }

        valuePtr = 0;
        v35 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
        if (!v35)
        {
          OSKextLog(0, 17, "Memory allocation failure.", v42, v43, v44, v45, v46, v51);
        }

        Length = CFNumberCompare(v21, v35, 0);
LABEL_47:
        Value = Length != 0;
        goto LABEL_48;
      }

      Length = CFDictionaryGetCount(v21);
    }

    v35 = 0;
    goto LABEL_47;
  }

  Value = CFBooleanGetValue(v21);
LABEL_26:
  v35 = 0;
LABEL_48:
  if (a11)
  {
    *a11 = Value;
  }

  v41 = 1;
  if (a9 && !Value)
  {
    __OSKextAddDiagnostic(a1, 1, @"Info dictionary property value is illegal", a4, 0, v32, v33, v34, v51);
    v41 = 0;
  }

  if (v35)
  {
    CFRelease(v35);
  }

  return v41;
}

void __OSKextValidateIOKitPersonalityTargetApplierFunction(const __CFString *value, const __CFDictionary *a2, uint64_t a3)
{
  v36 = 0;
  v35 = 0;
  CFArrayAppendValue(*(a3 + 16), value);
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  TypeID = CFDictionaryGetTypeID();
  if (__OSKextCheckProperty(v6, v7, value, v8, TypeID, 0, 0, 1, 0, 0, 0))
  {
    v10 = *MEMORY[0x1E695E4F0];
    CFArrayAppendValue(*(a3 + 16), *MEMORY[0x1E695E4F0]);
    v11 = *a3;
    v12 = *(a3 + 16);
    v13 = CFStringGetTypeID();
    if (__OSKextCheckProperty(v11, a2, v10, v12, v13, 0, 0, 1, 1, &v35, &v36))
    {
      v14 = *(a3 + 24) == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = !v14;
    *(a3 + 24) = v15;
    if (v35)
    {
      KextWithIdentifier = OSKextGetKextWithIdentifier(v35);
      if (KextWithIdentifier)
      {
        v24 = KextWithIdentifier;
        if (KextWithIdentifier != *a3 && !OSKextIsLoadable(KextWithIdentifier, v17, v18, v19, v20, v21, v22, v23))
        {
          v33 = v35;
          v34 = v24[2];
          v25 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"'%@' -> '%@'");
          __OSKextAddDiagnostic(*a3, 8, @"Personality CFBundleIdentifier names a kext that is not loadable (run kextutil(8) on it with -nt for more information)", v25, 0, v26, v27, v28, v33);
          if (v25)
          {
            CFRelease(v25);
          }
        }
      }
    }

    v29 = *(a3 + 16);
    Count = CFArrayGetCount(v29);
    CFArrayRemoveValueAtIndex(v29, Count - 1);
  }

  else
  {
    *(a3 + 24) = 0;
  }

  v31 = *(a3 + 16);
  v32 = CFArrayGetCount(v31);
  CFArrayRemoveValueAtIndex(v31, v32 - 1);
}

uint64_t _OSKextBasicFilesystemAuthentication(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 88) & 8) == 0)
  {
    v9 = CFBundleCreate(*MEMORY[0x1E695E480], *(a1 + 16));
    if (v9)
    {
      v10 = v9;
      v11 = CFBundleCopyBuiltInPlugInsURL(v9);
      v17 = v11;
      if (v11)
      {
        v18 = CFURLCopyAbsoluteURL(v11);
        if (!v18)
        {
          OSKextLog(0, 17, "Memory allocation failure.", v12, v13, v14, v15, v16, v22);
          CFRelease(v10);
          v19 = 0;
LABEL_14:
          CFRelease(v17);
LABEL_15:
          if (v18)
          {
            CFRelease(v18);
          }

          return v19;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = __OSKextBasicFilesystemAuthenticationRecursive(a1, *(a1 + 16), v18, v12, v13, v14, v15, v16);
      CFRelease(v10);
      if (!v17)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    return 0;
  }

  v20 = **(a1 + 80);
  if (!v20)
  {
    __OSKextSetDiagnostic(a1, 2, @"Kext was not created from an URL and can't be authenticated");
    return 0;
  }

  return __OSKextBasicFilesystemAuthenticationRecursive(a1, v20, 0, a4, a5, a6, a7, a8);
}

uint64_t __OSKextBasicFilesystemAuthenticationRecursive(const void *a1, const __CFURL *a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v81 = *MEMORY[0x1E69E9840];
  memset(&v78, 0, sizeof(v78));
  memset(&v77, 0, sizeof(v77));
  errorCode = 0;
  __OSKextGetFileSystemPath(a1, 0, 0, __s, a5, a6, a7, a8);
  PathComponent = CFURLCopyLastPathComponent(a2);
  v12 = PathComponent;
  if (!PathComponent || !CFEqual(PathComponent, @".DS_Store"))
  {
    v15 = CFURLCopyAbsoluteURL(a2);
    if (v15)
    {
      if (!__OSKextGetFileSystemPath(0, a2, 1u, buffer, v18, v19, v20, v21))
      {
        v30 = @"Internal error converting URL";
        v31 = a1;
        v32 = 1;
        goto LABEL_12;
      }

      OSKextLog(a1, 139269, "Authenticating %s file/directory %s.", v22, v23, v24, v25, v26, __s);
      if (!stat(buffer, &v78) && !lstat(buffer, &v77))
      {
        if (*&v78.st_uid || (v78.st_mode & 0x12) != 0)
        {
          __OSKextAddDiagnostic(a1, 2, @"File owner/permissions are incorrect (must be root:wheel, nonwritable by group/other)", a2, 0, v27, v28, v29, v74);
          LOBYTE(v38) = 0;
          v16 = 0;
        }

        else
        {
          LOBYTE(v38) = 1;
          v16 = 1;
        }

        if ((v77.st_mode & 0xF000) == 0xA000)
        {
          v14 = realpath_DARWIN_EXTSN(buffer, 0);
          if (!v14)
          {
            v64 = __error();
            v65 = strerror(*v64);
            __OSKextAddDiagnostic(a1, 2, @"The kext contains a symlink which is either not readable or points outside of its bundle; please remove", a2, v65, v66, v67, v68, v74);
            OSKextLog(a1, 131073, "Can't determine real path for %s (%s)", v69, v70, v71, v72, v73, buffer);
            goto LABEL_16;
          }

          OSKextLog(a1, 131077, "Realpath for %s is %s", v39, v40, v41, v42, v43, buffer);
          v44 = strlen(__s);
          if (strncmp(__s, v14, v44))
          {
            __OSKextAddDiagnostic(a1, 2, @"The kext contains a symlink which is either not readable or points outside of its bundle; please remove", a2, "Symlink points outside of bundle.", v45, v46, v47, v75);
            OSKextLog(a1, 131073, "Kext contains symlink at %s which points outside of its bundle at %s; rejecting.", v48, v49, v50, v51, v52, buffer);
            goto LABEL_16;
          }

          __OSKextAddDiagnostic(a1, 8, @"The booter does not recognize symbolic links; confirm these files/directories aren't needed for startup", a2, 0, v45, v46, v47, v75);
        }

        else
        {
          v14 = 0;
        }

        if (!CFURLHasDirectoryPath(a2) || a3 && CFEqual(v15, a3))
        {
          v13 = 0;
        }

        else
        {
          v53 = CFGetAllocator(a1);
          v54 = CFURLCreatePropertyFromResource(v53, a2, *MEMORY[0x1E695EA78], &errorCode);
          v13 = v54;
          if (!v54 || errorCode)
          {
            OSKextLog(a1, 139265, "Can't read file %s.", v55, v56, v57, v58, v59, buffer);
          }

          else
          {
            Count = CFArrayGetCount(v54);
            if (Count >= 1)
            {
              v61 = Count;
              for (i = 0; i != v61; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
                v38 = (__OSKextBasicFilesystemAuthenticationRecursive(a1, ValueAtIndex, a3) != 0) & v38;
              }

              v16 = v38;
            }
          }
        }

LABEL_17:
        if (!v12)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      if (*__error() == 2)
      {
        v30 = @"File not found";
        v31 = a1;
        v32 = 2;
LABEL_12:
        __OSKextAddDiagnostic(v31, v32, v30, a2, 0, v24, v25, v26, v74);
LABEL_15:
        v14 = 0;
LABEL_16:
        v13 = 0;
        v16 = 0;
        goto LABEL_17;
      }

      v35 = __error();
      v74 = buffer;
      strerror(*v35);
      v33 = "Can't stat %s - %s.";
      v34 = 131073;
    }

    else
    {
      v33 = "Memory allocation failure.";
      v34 = 17;
    }

    OSKextLog(0, v34, v33, v17, v18, v19, v20, v21, v74);
    goto LABEL_15;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 1;
LABEL_18:
  CFRelease(v12);
LABEL_19:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    free(v14);
  }

  v36 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t OSKextAuthenticate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = *MEMORY[0x1E69E9840];
  *(a1 + 92) &= 0xFFFF8EFF;
  if (!__sOSKextAuthenticationFunction)
  {
    v12 = "Trying to authenticate kext with no authentication function, failing.";
    v13 = 0;
    v14 = 4097;
LABEL_9:
    OSKextLog(v13, v14, v12, a4, a5, a6, a7, a8, v16);
    v10 = *(a1 + 92);
LABEL_10:
    LOBYTE(result) = 0;
    v11 = v10 | 0x3000;
    goto LABEL_11;
  }

  if (!__OSKextGetFileSystemPath(a1, 0, 1u, buffer, a5, a6, a7, a8))
  {
    v12 = "Could not get absolute path of kext!";
    v13 = a1;
    v14 = 262161;
    goto LABEL_9;
  }

  if (!rootless_check_trusted())
  {
    *(a1 + 92) |= 0x100u;
  }

  LOBYTE(result) = __sOSKextAuthenticationFunction(a1, __sOSKextAuthenticationContext);
  v10 = *(a1 + 92);
  if (!result)
  {
    goto LABEL_10;
  }

  v11 = v10 | 0x5000;
LABEL_11:
  *(a1 + 92) = v11;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t OSKextIsLoadable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!__OSKextIsValid(a1, a2, a3, a4, a5, a6, a7, a8) || !OSKextIsAuthentic(a1, v9, v10, v11, v12, v13, v14, v15) || !OSKextResolveDependencies(a1) || !OSKextValidateDependencies(a1))
  {
    return 0;
  }

  return OSKextAuthenticateDependencies(a1);
}

CFDictionaryRef OSKextCopyDiagnostics(void *a1, char a2)
{
  v4 = a1[8];
  v5 = CFGetAllocator(a1);
  if (v4)
  {
    Mutable = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      if (a2)
      {
        v12 = __OSKextCopyDiagnosticsDict(a1, 1);
        if (v12)
        {
          v13 = v12;
          if (CFDictionaryGetCount(v12))
          {
            CFDictionarySetValue(Mutable, @"Validation Failures", v13);
          }

          CFRelease(v13);
        }
      }

      if ((a2 & 2) != 0)
      {
        v14 = __OSKextCopyDiagnosticsDict(a1, 2);
        if (v14)
        {
          v15 = v14;
          if (CFDictionaryGetCount(v14))
          {
            CFDictionarySetValue(Mutable, @"Authentication Failures", v15);
          }

          CFRelease(v15);
        }
      }

      if ((a2 & 4) != 0)
      {
        v16 = __OSKextCopyDiagnosticsDict(a1, 4);
        if (v16)
        {
          v17 = v16;
          if (CFDictionaryGetCount(v16))
          {
            CFDictionarySetValue(Mutable, @"Dependency Resolution Failures", v17);
          }

          CFRelease(v17);
        }
      }

      if ((a2 & 8) != 0)
      {
        v18 = __OSKextCopyDiagnosticsDict(a1, 8);
        if (v18)
        {
          v19 = v18;
          if (CFDictionaryGetCount(v18))
          {
            CFDictionarySetValue(Mutable, @"Warnings", v19);
          }

          CFRelease(v19);
        }
      }

      if ((a2 & 0x10) != 0)
      {
        v20 = __OSKextCopyDiagnosticsDict(a1, 16);
        if (v20)
        {
          v21 = v20;
          if (CFDictionaryGetCount(v20))
          {
            CFDictionarySetValue(Mutable, @"Boot Level Restrictions", v21);
          }

          CFRelease(v21);
        }
      }
    }

    else
    {
      OSKextLog(0, 17, "Memory allocation failure.", v6, v7, v8, v9, v10, v25);
    }

    return Mutable;
  }

  else
  {
    v22 = MEMORY[0x1E695E9D8];
    v23 = MEMORY[0x1E695E9E8];

    return CFDictionaryCreate(v5, 0, 0, 0, v22, v23);
  }
}

CFDictionaryRef __OSKextCopyDiagnosticsDict(void *cf, int a2)
{
  v3 = cf[8];
  if (v3)
  {
    if (a2 <= 3)
    {
      if (a2 == 1)
      {
        goto LABEL_12;
      }

      if (a2 == 2)
      {
        ++v3;
        goto LABEL_12;
      }
    }

    else
    {
      switch(a2)
      {
        case 4:
          v3 += 2;
          goto LABEL_12;
        case 8:
          v3 += 3;
          goto LABEL_12;
        case 16:
          v3 += 4;
LABEL_12:
          v4 = *v3;
          if (*v3)
          {
            v5 = CFGetAllocator(cf);
            result = CFDictionaryCreateCopy(v5, v4);
            if (result)
            {
              return result;
            }
          }

          break;
      }
    }
  }

  v7 = CFGetAllocator(cf);
  v8 = MEMORY[0x1E695E9D8];
  v9 = MEMORY[0x1E695E9E8];

  return CFDictionaryCreate(v7, 0, 0, 0, v8, v9);
}

void OSKextLogDiagnostics(void *a1, char a2)
{
  v2 = OSKextCopyDiagnostics(a1, a2);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  if (CFDictionaryGetCount(v2) && (CFStringForPlist_new = createCFStringForPlist_new(v3, 2)) != 0)
  {
    v5 = CFStringForPlist_new;
    UTF8CStringForCFString = createUTF8CStringForCFString(CFStringForPlist_new);
    if (UTF8CStringForCFString)
    {
      v12 = UTF8CStringForCFString;
      OSKextLog(0, 16, "%s", v7, v8, v9, v10, v11, UTF8CStringForCFString);
      CFRelease(v3);
      CFRelease(v5);

      free(v12);
      return;
    }

    CFRelease(v3);
    v13 = v5;
  }

  else
  {
    v13 = v3;
  }

  CFRelease(v13);
}

BOOL OSKextMatchesRequiredFlags(uint64_t a1, int a2)
{
  ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(a1, @"OSBundleRequired");
  v4 = ValueForInfoDictionaryKey;
  return (a2 & 1) != 0 && ValueForInfoDictionaryKey && CFEqual(ValueForInfoDictionaryKey, @"Root") || (a2 & 2) != 0 && v4 && CFEqual(v4, @"Local-Root") || (a2 & 4) != 0 && v4 && CFEqual(v4, @"Network-Root") || (a2 & 0x10) != 0 && v4 && CFEqual(v4, @"Console") || (a2 & 0x20) != 0 && v4 && CFEqual(v4, @"DriverKit") || (a2 & 8) != 0 && v4 && CFEqual(v4, @"Safe Boot") || a2 == 0;
}

__CFArray *OSKextFilterRequiredKexts(const __CFArray *a1, int a2)
{
  AllKexts = a1;
  v4 = CFGetAllocator(a1);
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (!AllKexts)
    {
      AllKexts = OSKextGetAllKexts();
    }

    Count = CFArrayGetCount(AllKexts);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(AllKexts, i);
        if (OSKextMatchesRequiredFlags(ValueAtIndex, a2))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v5, v6, v7, v8, v9, v16);
  }

  return Mutable;
}

uint64_t mkext_adler32(unsigned __int8 *a1, int a2)
{
  if (a2 < 1)
  {
    return 1;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 1;
  v6 = a2;
  do
  {
    v7 = v3 + 5000 * (v2 / 0x1388);
    v8 = v7 == 0;
    if (!v7)
    {
      v5 %= 0xFFF1u;
    }

    v10 = *a1++;
    v9 = v10;
    if (v8)
    {
      v4 %= 0xFFF1u;
    }

    v5 += v9;
    v4 += v5;
    --v3;
    ++v2;
    --v6;
  }

  while (v6);
  return (v5 % 0xFFF1) | ((v4 % 0xFFF1) << 16);
}

__CFData *__OSKextCreateMkext(const __CFAllocator *a1, const __CFArray *AllKexts, const __CFURL *a3, int a4, int a5, int a6, const void *a7)
{
  v186 = *MEMORY[0x1E69E9840];
  v177 = 0;
  bzero(buffer, 0x400uLL);
  if (!AllKexts)
  {
    AllKexts = OSKextGetAllKexts();
  }

  Count = CFArrayGetCount(AllKexts);
  if (!Count)
  {
    goto LABEL_72;
  }

  v15 = Count;
  Mutable = CFDataCreateMutable(a1, 0);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v17, v18, v19, v20, v21, v163);
LABEL_72:
    v138 = 0;
    goto LABEL_73;
  }

  v22 = Mutable;
  *bytes = 0u;
  memset(v179, 0, sizeof(v179));
  v23 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v23)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v24, v25, v26, v27, v28, v163);
    CFRelease(v22);
    goto LABEL_72;
  }

  v29 = v23;
  value = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!value)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v30, v31, v32, v33, v34, v163);
    v138 = 0;
    v141 = 0;
    goto LABEL_99;
  }

  if (a3 && !CFURLGetFileSystemRepresentation(a3, 1u, buffer, 1024))
  {
    OSKextLog(0, 17, "String/URL conversion failure.", v35, v36, v37, v38, v39, v163);
    v141 = 0;
    v138 = 0;
    goto LABEL_98;
  }

  CFDictionarySetValue(v29, @"_MKEXTInfoDictionaries", value);
  if (a7)
  {
    CFDictionarySetValue(v29, @"Kext Request Predicate", @"Load");
    CFDictionarySetValue(v29, @"Kext Request Arguments", a7);
  }

  CFDataAppendBytes(v22, bytes, 44);
  theData = v22;
  if (v15 < 1)
  {
    v142 = 0;
LABEL_76:
    v141 = IOCFSerialize(v29, 0);
    if (v141)
    {
      v177 = 0;
      if (!a5)
      {
        goto LABEL_80;
      }

      if (__OSKextAddCompressedFileToMkext(0, theData, v141, 1, &v177))
      {
        if (v177)
        {
LABEL_81:
          MutableBytePtr = CFDataGetMutableBytePtr(theData);
          *MutableBytePtr = 0x58534F4D54584B4DLL;
          *(MutableBytePtr + 2) = bswap32(CFDataGetLength(theData));
          *(MutableBytePtr + 4) = 18874370;
          v147 = MutableBytePtr + 16;
          *(MutableBytePtr + 5) = bswap32(v142);
          pthread_once(&__sOSKextInitialized, __OSKextInitialize);
          *(MutableBytePtr + 6) = bswap32(*(__sOSKextArchInfo + 2));
          pthread_once(&__sOSKextInitialized, __OSKextInitialize);
          *(MutableBytePtr + 7) = bswap32(*(__sOSKextArchInfo + 3));
          v148 = CFDataGetLength(theData) - 16;
          if (v148 < 1)
          {
            v157 = 1;
          }

          else
          {
            v149 = 0;
            v150 = 0;
            v151 = 0;
            v152 = 1;
            do
            {
              v153 = v150 + 5000 * (v149 / 0x1388);
              v154 = v153 == 0;
              if (!v153)
              {
                v152 %= 0xFFF1u;
              }

              v156 = *v147++;
              v155 = v156;
              if (v154)
              {
                v151 %= 0xFFF1u;
              }

              v152 += v155;
              v151 += v152;
              --v150;
              ++v149;
              --v148;
            }

            while (v148);
            v157 = (v152 % 0xFFF1) | ((v151 % 0xFFF1) << 16);
          }

          *(MutableBytePtr + 3) = bswap32(v157);
          v138 = theData;
          CFRetain(theData);
          v22 = theData;
          OSKextLog(0, 132, "Created mkext for architecture %s containing %u kexts.", v158, v159, v160, v161, v162, *__sOSKextArchInfo);
          goto LABEL_98;
        }

LABEL_80:
        v143 = CFDataGetMutableBytePtr(theData);
        *(v143 + 4) = bswap32(CFDataGetLength(theData));
        *(v143 + 10) = bswap32(CFDataGetLength(v141));
        BytePtr = CFDataGetBytePtr(v141);
        Length = CFDataGetLength(v141);
        CFDataAppendBytes(theData, BytePtr, Length);
        goto LABEL_81;
      }
    }

    v138 = 0;
    v22 = theData;
    goto LABEL_98;
  }

  object = v29;
  v40 = 0;
  v41 = 0;
  v169 = *MEMORY[0x1E695E4D0];
  v172 = a6;
  v173 = a5;
  v171 = a4;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(AllKexts, v41);
    __OSKextGetFileSystemPath(ValueAtIndex, 0, 0, v184, v43, v44, v45, v46);
    if (!__OSKextIsValid(ValueAtIndex, v47, v48, v49, v50, v51, v52, v53))
    {
      OSKextLog(ValueAtIndex, 133, "%s is not valid; omitting from mkext.", v56, v57, v58, v59, v60, v184);
      goto LABEL_38;
    }

    if (a6 && OSKextIsLoaded(ValueAtIndex, v54, v55, v56, v57, v58, v59, v60))
    {
      OSKextLog(ValueAtIndex, 135, "Omitting loaded kext %s from mkext for kernel load.", v61, v62, v63, v64, v65, v184);
      goto LABEL_38;
    }

    if (!OSKextMatchesRequiredFlags(ValueAtIndex, a4))
    {
      goto LABEL_38;
    }

    if (!OSKextSupportsArchitecture(ValueAtIndex, 0))
    {
      pthread_once(&__sOSKextInitialized, __OSKextInitialize);
      v165 = *__sOSKextArchInfo;
      OSKextLog(ValueAtIndex, 133, "%s does not contain code for architecture %s.", v106, v107, v108, v109, v110, v184);
      goto LABEL_38;
    }

    v66 = CFDataGetLength(v22);
    valuePtr = 0;
    *v181 = 0;
    v180 = 0;
    __OSKextGetFileSystemPath(ValueAtIndex, 0, 1u, v185, v67, v68, v69, v70);
    if (!__sOSKextLoadAuditFunction(ValueAtIndex))
    {
      OSKextLog(ValueAtIndex, 33, "Load audit function returned false, bailing on adding %s to mkext.", v71, v72, v73, v74, v75, v185);
      goto LABEL_96;
    }

    OSKextLog(ValueAtIndex, 133, "Adding %s to mkext.", v71, v72, v73, v74, v75, v185);
    v76 = OSKextCopyInfoDictionary(ValueAtIndex);
    if (!v76)
    {
      break;
    }

    v84 = v76;
    v175 = v40;
    if ((*(ValueAtIndex + 92) & 4) != 0 && __OSKextHasSuffix(ValueAtIndex, v77, v78, v79, v80, v81, v82, v83) && (*(ValueAtIndex + 92) & 1) == 0)
    {
      ValueForInfoDictionaryKey = OSKextGetValueForInfoDictionaryKey(ValueAtIndex, @"OSBundleLibraries");
      v91 = ValueForInfoDictionaryKey;
      if (!ValueForInfoDictionaryKey)
      {
        OSKextLog(ValueAtIndex, 129, "Executable kext %s with no dependencies?!", v86, v87, v88, v89, v90, v185);
        v96 = 0;
        v104 = 0;
        goto LABEL_57;
      }

      if (!CFDictionaryGetValue(ValueForInfoDictionaryKey, @"com.apple.kpi.kasan"))
      {
        CFDictionarySetValue(v91, @"com.apple.kpi.kasan", @"8.0.0b1");
      }

      if (!CFDictionaryGetValue(v91, @"com.apple.kpi.kcov"))
      {
        CFDictionarySetValue(v91, @"com.apple.kpi.kcov", @"8.0.0b1");
      }
    }

    if ((*(ValueAtIndex + 92) & 0x10) != 0)
    {
      CFDictionarySetValue(v84, @"OSBundleEnableKextLogging", v169);
    }

    pthread_once(&__sOSKextInitialized, __OSKextInitialize);
    v96 = OSKextCopyExecutableForArchitecture(ValueAtIndex, __sOSKextArchInfo);
    if (v96)
    {
      valuePtr = v66;
      v97 = CFGetAllocator(ValueAtIndex);
      v98 = CFNumberCreate(v97, kCFNumberSInt32Type, &valuePtr);
      v104 = v98;
      if (!v98)
      {
        v111 = 17;
        v112 = "Memory allocation failure.";
LABEL_55:
        OSKextLog(v98, v111, v112, v99, v100, v101, v102, v103, v164);
        goto LABEL_56;
      }

      CFDictionarySetValue(v84, @"_MKEXTExecutable", v98);
      v105 = CFDataGetLength(v96);
      *&v181[4] = bswap32(v105);
      if (!v173)
      {
        goto LABEL_44;
      }

      if (!__OSKextAddCompressedFileToMkext(ValueAtIndex, v22, v96, 0, &v180))
      {
        v164 = v185;
        v98 = ValueAtIndex;
        v111 = 129;
        v112 = "%s failed to compress executable.";
        goto LABEL_55;
      }

      if (v180)
      {
        v170 = 0;
      }

      else
      {
LABEL_44:
        v167 = v66;
        v113 = CFDataGetBytePtr(v96);
        *v181 = 0;
        CFDataAppendBytes(v22, v181, 8);
        v170 = v113;
        v114 = v113;
        v66 = v167;
        CFDataAppendBytes(v22, v114, v105);
      }

      OSKextLog(ValueAtIndex, 134, "%s added %u-byte %scompressed executable to mkext.", v99, v100, v101, v102, v103, v185);
    }

    else
    {
      if ((*(ValueAtIndex + 92) & 4) != 0)
      {
        pthread_once(&__sOSKextInitialized, __OSKextInitialize);
        v166 = *__sOSKextArchInfo;
        OSKextLog(ValueAtIndex, 129, "Can't get executable for %s (architecture %s).", v133, v134, v135, v136, v137, v185);
        v96 = 0;
        v104 = 0;
LABEL_56:
        v91 = 0;
        goto LABEL_57;
      }

      v104 = 0;
      v170 = 0;
    }

    if (__OSKextGetFileSystemPath(ValueAtIndex, 0, 1u, v185, v92, v93, v94, v95))
    {
      v120 = __absPathOnVolume(v185, buffer);
      v121 = CFGetAllocator(ValueAtIndex);
      v122 = strlen(v120);
      v123 = CFStringCreateWithBytes(v121, v120, v122, 0x8000100u, 0);
      if (v123)
      {
        v129 = v123;
        CFDictionarySetValue(v84, @"_MKEXTBundlePath", v123);
        v130 = __OSKextCopyExecutableRelativePath(ValueAtIndex);
        v22 = theData;
        if (v130)
        {
          v131 = v130;
          CFDictionarySetValue(v84, @"_MKEXTExecutableRelativePath", v130);
          CFArrayAppendValue(value, v84);
          CFRelease(v84);
          CFRelease(v129);
          v132 = 0;
          v84 = v131;
        }

        else
        {
          CFArrayAppendValue(value, v84);
          CFRelease(v84);
          v132 = 0;
          v84 = v129;
        }

        v91 = v170;
        goto LABEL_58;
      }

      OSKextLog(0, 17, "Memory allocation failure.", v124, v125, v126, v127, v128, v164);
      v22 = theData;
    }

    else
    {
      OSKextLog(ValueAtIndex, 17, "String/URL conversion failure.", v115, v116, v117, v118, v119, v164);
    }

    v91 = v170;
LABEL_57:
    CFDataSetLength(v22, v66);
    v132 = 1;
LABEL_58:
    CFRelease(v84);
    if (v96)
    {
      CFRelease(v96);
    }

    a4 = v171;
    if (v104)
    {
      CFRelease(v104);
    }

    if (v180 && v91)
    {
      free(v91);
    }

    a6 = v172;
    a5 = v173;
    if (v132)
    {
      goto LABEL_97;
    }

    v40 = v175 + 1;
LABEL_38:
    if (v15 == ++v41)
    {
      v142 = v40;
      v29 = object;
      goto LABEL_76;
    }
  }

  OSKextLog(ValueAtIndex, 129, "Can't get info dictionary for %s.", v79, v80, v81, v82, v83, v185);
LABEL_96:
  CFDataSetLength(v22, v66);
LABEL_97:
  v141 = 0;
  v138 = 0;
  v29 = object;
LABEL_98:
  CFRelease(value);
LABEL_99:
  CFRelease(v29);
  CFRelease(v22);
  if (v141)
  {
    CFRelease(v141);
  }

LABEL_73:
  v139 = *MEMORY[0x1E69E9840];
  return v138;
}

CFMutableArrayRef OSKextCreateKextsFromMkextFile(const __CFAllocator *a1, const void *a2)
{
  resourceData = 0;
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  if (CFURLCreateDataAndPropertiesFromResource(a1, a2, &resourceData, 0, 0, 0))
  {
    KextsFromMkext = __OSKextCreateKextsFromMkext(a1, resourceData, a2);
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v4, v5, v6, v7, v8, v11);
    KextsFromMkext = 0;
  }

  if (resourceData)
  {
    CFRelease(resourceData);
  }

  return KextsFromMkext;
}

CFMutableArrayRef __OSKextCreateKextsFromMkext(const __CFAllocator *a1, const __CFData *a2, const void *a3)
{
  cf = 0;
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  Mutable = CFArrayCreateMutable(a1, 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v7, v8, v9, v10, v11, v83);
    return 0;
  }

  v12 = Mutable;
  v88 = 0;
  v13 = *CFDataGetBytePtr(a2);
  BytePtr = CFDataGetBytePtr(a2);
  if (v13 != -1095041334)
  {
    v22 = 0;
    v88 = BytePtr + CFDataGetLength(a2);
    goto LABEL_9;
  }

  v15 = CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v22 = fat_iterator_for_data(BytePtr, &v15[Length], 1);
  if (!v22)
  {
    v46 = "Can't read mkext fat header.";
    goto LABEL_24;
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  v23 = *(__sOSKextArchInfo + 2);
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  BytePtr = fat_iterator_find_arch(v22, v23, *(__sOSKextArchInfo + 3), &v88);
  if (BytePtr)
  {
LABEL_9:
    if (*BytePtr == 1415072589 && BytePtr[1] == 1481854797)
    {
      v32 = bswap32(BytePtr[2]);
      if (v88 - BytePtr == v32)
      {
        v34 = (BytePtr + 4);
        v33 = BytePtr[4];
        if (v33 == 18874370)
        {
          v35 = CFDataGetLength(a2);
          v88 = BytePtr + v35;
          v36 = (v35 - 16);
          if (v36 < 1)
          {
            v45 = 1;
          }

          else
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 1;
            do
            {
              v41 = v38 + 5000 * (v37 / 0x1388);
              v42 = v41 == 0;
              if (!v41)
              {
                v40 %= 0xFFF1u;
              }

              v44 = *v34++;
              v43 = v44;
              if (v42)
              {
                v39 %= 0xFFF1u;
              }

              v40 += v43;
              v39 += v40;
              --v38;
              ++v37;
              --v36;
            }

            while (v36);
            v45 = (v40 % 0xFFF1) | ((v39 % 0xFFF1) << 16);
          }

          if (bswap32(BytePtr[3]) == v45)
          {
            v48 = BytePtr[9];
            v49 = bswap32(BytePtr[8]);
            v50 = bswap32(v48);
            OSKextLog(0, 131079, "Mkext plist compressed size is %u.", v17, v18, v19, v20, v21, v50);
            v51 = bswap32(BytePtr[10]);
            OSKextLog(0, 131079, "Mkext plist full size is %u.", v52, v53, v54, v55, v56, v51);
            if (!v48)
            {
              v30 = 0;
              v59 = BytePtr + v49;
LABEL_46:
              v60 = IOCFUnserialize(v59, a1, 0, &cf);
              BytePtr = v60;
              if (!v60 || (v61 = CFGetTypeID(v60), v61 != CFDictionaryGetTypeID()))
              {
                UTF8CStringForCFString = createUTF8CStringForCFString(cf);
                v31 = UTF8CStringForCFString;
                v80 = "(unknown error)";
                if (UTF8CStringForCFString)
                {
                  LOBYTE(v80) = UTF8CStringForCFString;
                }

                OSKextLog(0, 129, "Failed to read XML from mkext: %s.", v75, v76, v77, v78, v79, v80);
                v29 = 0;
                goto LABEL_26;
              }

              Value = CFDictionaryGetValue(BytePtr, @"_MKEXTInfoDictionaries");
              if (Value && (v68 = Value, v69 = CFGetTypeID(Value), v69 == CFArrayGetTypeID()))
              {
                Count = CFArrayGetCount(v68);
                if (Count < 1)
                {
LABEL_55:
                  CFRetain(v12);
                  v31 = 0;
                  v29 = v12;
                  goto LABEL_26;
                }

                v70 = 0;
                v85 = v68;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v68, v70);
                  v72 = __OSKextAlloc();
                  if (!v72)
                  {
                    v81 = "Memory allocation failure.";
                    v82 = 17;
                    goto LABEL_61;
                  }

                  v73 = v72;
                  if (!__OSKextInitFromMkext(v72, ValueAtIndex, a3, a2))
                  {
                    break;
                  }

                  CFArrayAppendValue(v12, v73);
                  CFRelease(v73);
                  ++v70;
                  v68 = v85;
                  if (Count == v70)
                  {
                    goto LABEL_55;
                  }
                }

                CFRelease(v73);
              }

              else
              {
                v81 = "Mkext plist has no kexts.";
                v82 = 129;
LABEL_61:
                OSKextLog(0, v82, v81, v63, v64, v65, v66, v67, v84);
              }

              v29 = 0;
              goto LABEL_6;
            }

            v57 = CFGetAllocator(a2);
            UncompressMkext2FileData = __OSKextCreateUncompressMkext2FileData(v57, BytePtr + v49, v50, v51);
            v30 = UncompressMkext2FileData;
            if (UncompressMkext2FileData)
            {
              v59 = CFDataGetBytePtr(UncompressMkext2FileData);
              goto LABEL_46;
            }

            v29 = 0;
LABEL_25:
            v31 = 0;
            BytePtr = 0;
            goto LABEL_26;
          }

          v46 = "Mkext checksum error.";
        }

        else
        {
          v83 = bswap32(v33);
          v46 = "Unsupported mkext version 0x%x.";
        }
      }

      else
      {
        v83 = v32;
        v46 = "Mkext length field %d does not match mkext actual size %d.";
      }
    }

    else
    {
      v46 = "Bad mkext magic/signature.";
    }

LABEL_24:
    OSKextLog(0, 129, v46, v17, v18, v19, v20, v21, v83);
    v29 = 0;
    v30 = 0;
    goto LABEL_25;
  }

  pthread_once(&__sOSKextInitialized, __OSKextInitialize);
  OSKextLog(0, 129, "Architecture %s not found in mkext.", v24, v25, v26, v27, v28, *__sOSKextArchInfo);
  v29 = 0;
  v30 = 0;
LABEL_6:
  v31 = 0;
LABEL_26:
  CFRelease(v12);
  if (cf)
  {
    CFRelease(cf);
  }

  if (BytePtr)
  {
    CFRelease(BytePtr);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    free(v31);
  }

  if (v22)
  {
    fat_iterator_close(v22);
  }

  return v29;
}

CFMutableArrayRef OSKextCreateKextsFromMkextData(const __CFAllocator *a1, const __CFData *a2)
{
  pthread_once(&__sOSKextInitialized, __OSKextInitialize);

  return __OSKextCreateKextsFromMkext(a1, a2, 0);
}

const char *__absPathOnVolume(const char *a1, char *__s)
{
  if (__s)
  {
    if (*__s)
    {
      v4 = strlen(__s);
      v5 = __s[v4 - 1] == 47;
      v6 = v4 - v5;
      if (v4 != v5)
      {
        if (!strncmp(a1, __s, v6))
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        a1 += v7;
      }
    }
  }

  return a1;
}

CFStringRef __OSKextCopyExecutableRelativePath(uint64_t a1)
{
  v2 = CFURLCopyAbsoluteURL(*(a1 + 16));
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
  if (!v4)
  {
    v18 = 0;
    v16 = v3;
LABEL_15:
    CFRelease(v16);
    return v18;
  }

  v12 = v4;
  ExecutableURL = OSKextGetExecutableURL(a1, v5, v6, v7, v8, v9, v10, v11);
  if (!ExecutableURL)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v14 = CFURLCopyAbsoluteURL(ExecutableURL);
  v15 = v14;
  if (!v14)
  {
LABEL_10:
    v16 = 0;
    goto LABEL_11;
  }

  v16 = CFURLCopyFileSystemPath(v14, kCFURLPOSIXPathStyle);
  if (v16)
  {
    v17 = CFStringGetLength(v12) + 1;
    v20.length = CFStringGetLength(v16) - v17;
    v20.location = v17;
    v18 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], v16, v20);
    goto LABEL_12;
  }

LABEL_11:
  v18 = 0;
LABEL_12:
  CFRelease(v3);
  CFRelease(v12);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {
    goto LABEL_15;
  }

  return v18;
}

CFStringRef OSKextCopyExecutableName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 92) & 8) != 0)
  {
    return 0;
  }

  ExecutableURL = OSKextGetExecutableURL(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!ExecutableURL)
  {
    return 0;
  }

  return CFURLCopyLastPathComponent(ExecutableURL);
}

void OSKextVLogCFString(uint64_t a1, int a2, const __CFString *a3, va_list a4)
{
  if (__sOSKextLogOutputFunction)
  {
    v6 = a1;
    if (__OSKextShouldLog(a1, a2))
    {
      v7 = CFStringCreateWithFormatAndArguments(*MEMORY[0x1E695E480], 0, a3, a4);
      if (v7)
      {
        v8 = v7;
        Length = CFStringGetLength(v7);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v11 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
        if (v11)
        {
          v12 = v11;
          if (CFStringGetCString(v8, v11, MaximumSizeForEncoding, 0x8000100u))
          {
            __sOSKextLogOutputFunction(v6, a2, "%s", v12);
          }

          CFRelease(v8);
          free(v12);
        }

        else
        {
          CFRelease(v8);
        }
      }
    }
  }
}

const void *_isDictionary(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFDictionaryGetTypeID());
  }

  return result;
}

const void *_isArray(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFArrayGetTypeID());
  }

  return result;
}

const void *_isString(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    return (v1 == CFStringGetTypeID());
  }

  return result;
}

void __OSKextReleaseContents(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  memcpy(__dst, "(unknown)", sizeof(__dst));
  Count = CFArrayGetCount(__sOSAllKexts);
  if (Count >= 1)
  {
    v9 = Count + 1;
    do
    {
      if (CFArrayGetValueAtIndex(__sOSAllKexts, v9 - 2) == a1)
      {
        CFArrayRemoveValueAtIndex(__sOSAllKexts, v9 - 2);
      }

      --v9;
    }

    while (v9 > 1);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    UTF8CStringForCFString = createUTF8CStringForCFString(v10);
  }

  else
  {
    UTF8CStringForCFString = 0;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = CFURLCopyAbsoluteURL(v12);
    if (v13)
    {
      __OSKextGetFileSystemPath(0, v13, 1u, __dst, v5, v6, v7, v8);
      if ((*(a1 + 88) & 8) == 0 && CFDictionaryGetValue(__sOSKextsByURL, v13) == a1)
      {
        CFDictionaryRemoveValue(__sOSKextsByURL, v13);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  __OSKextRemoveKextFromIdentifierDict(a1, __sOSKextsByIdentifier, v3, v4, v5, v6, v7, v8, v25);
  OSKextVersionGetString(*(a1 + 40), v26, 0x14u);
  *(a1 + 88);
  OSKextLog(a1, 262149, "Removed %s, id %s%s, version %s.", v14, v15, v16, v17, v18, __dst);
  if (v13)
  {
    CFRelease(v13);
  }

  if (UTF8CStringForCFString)
  {
    free(UTF8CStringForCFString);
  }

  OSKextFlushDiagnostics(a1, -1);
  OSKextFlushLoadInfo(a1, 1);
  v19 = *(a1 + 80);
  if (v19)
  {
    if (*v19)
    {
      CFRelease(*v19);
      v19 = *(a1 + 80);
    }

    *v19 = 0;
    if (v19[1])
    {
      CFRelease(v19[1]);
      v19 = *(a1 + 80);
    }

    v19[1] = 0;
    if (v19[2])
    {
      CFRelease(v19[2]);
      v19 = *(a1 + 80);
    }

    v19[2] = 0;
    if (v19[3])
    {
      CFRelease(v19[3]);
      v19 = *(a1 + 80);
    }

    free(v19);
    *(a1 + 80) = 0;
  }

  v20 = *(a1 + 16);
  if (v20)
  {
    CFRelease(v20);
  }

  *(a1 + 16) = 0;
  v21 = *(a1 + 24);
  if (v21)
  {
    CFRelease(v21);
  }

  *(a1 + 24) = 0;
  v22 = *(a1 + 32);
  if (v22)
  {
    CFRelease(v22);
  }

  *(a1 + 32) = 0;
  v23 = *(a1 + 56);
  if (v23)
  {
    CFRelease(v23);
  }

  *(a1 + 56) = 0;
  v24 = *MEMORY[0x1E69E9840];
}

__CFString *__OSKextCopyDebugDescription(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  v3 = *(a1 + 24);
  Mutable = CFStringCreateMutable(v2, 0);
  v10 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"<OSKext %p [%p]> { ", a1, v2);
    if ((*(a1 + 88) & 8) != 0)
    {
      v11 = **(a1 + 80);
      if (!v11)
      {
        v11 = @"(unknown)";
      }

      CFStringAppendFormat(v10, 0, @"mkext URL = %@, ", v11);
      if (*(a1 + 16))
      {
        CFStringAppendFormat(v10, 0, @"original URL = %@, ", *(a1 + 16));
      }
    }

    else if (*(a1 + 16))
    {
      CFStringAppendFormat(v10, 0, @"URL = %@, ", *(a1 + 16));
    }

    if (v3)
    {
      v12 = v3;
    }

    else
    {
      v12 = @"(unknown)";
    }

    CFStringAppendFormat(v10, 0, @"ID = %@", v12);
    CFStringAppendFormat(v10, 0, @" }");
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v5, v6, v7, v8, v9, v14);
  }

  return v10;
}

uint64_t __OSKextRecordKextInIdentifierDict(CFMutableArrayRef a1, CFDictionaryRef theDict, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 3);
  if (v9)
  {
    Value = CFDictionaryGetValue(theDict, v9);
    v12 = Value;
    if (!Value)
    {
      CFDictionarySetValue(theDict, v9, v8);
      UTF8CStringForCFString = createUTF8CStringForCFString(v9);
      if (UTF8CStringForCFString)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }

    if (Value == v8)
    {
      UTF8CStringForCFString = createUTF8CStringForCFString(v9);
      v12 = v8;
      if (UTF8CStringForCFString)
      {
        goto LABEL_32;
      }

      goto LABEL_36;
    }

    v13 = __kOSKextTypeID;
    if (v13 != CFGetTypeID(Value))
    {
LABEL_7:
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v12))
      {
        if (__sOSKextStrictRecordingByLastOpened)
        {
          v43.length = CFArrayGetCount(v12);
          v43.location = 0;
          if (CFArrayGetFirstIndexOfValue(v12, v43, v8) == -1)
          {
            CFArrayInsertValueAtIndex(v12, 0, v8);
          }

          goto LABEL_36;
        }

        v21 = v8[5];
        v44.length = CFArrayGetCount(v12);
        v44.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v12, v44, v8);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(v12, FirstIndexOfValue);
        }

        v23 = __sOSAllKexts;
        v45.length = CFArrayGetCount(__sOSAllKexts);
        v45.location = 0;
        v24 = CFArrayGetFirstIndexOfValue(v23, v45, v8);
        Count = CFArrayGetCount(v12);
        if (Count < 1)
        {
          v27 = 0;
        }

        else
        {
          v26 = Count;
          v27 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v12, v27);
            v29 = ValueAtIndex[5];
            v30 = __sOSAllKexts;
            v46.length = CFArrayGetCount(__sOSAllKexts);
            v46.location = 0;
            v31 = CFArrayGetFirstIndexOfValue(v30, v46, ValueAtIndex);
            v32 = v21 != v29;
            if (v24 <= v31)
            {
              v32 = 1;
            }

            if (v21 > v29 || !v32)
            {
              break;
            }

            if (v26 == ++v27)
            {
              v27 = v26;
              break;
            }
          }
        }

        CFArrayInsertValueAtIndex(v12, v27, v8);
        UTF8CStringForCFString = createUTF8CStringForCFString(v9);
        if (!UTF8CStringForCFString)
        {
          goto LABEL_36;
        }

LABEL_32:
        OSKextVersionGetString(v8[5], &callBacks, 0x14u);
        if (v12 == v8)
        {
          OSKextLog(v8, 262149, "%s, version %s is already in the identifier lookup dictionary at index %d.", v34, v35, v36, v37, v38, UTF8CStringForCFString);
        }

        else
        {
          OSKextLog(v8, 262151, "%s, version %s recorded at index %d in the identifier lookup dictionary.", v34, v35, v36, v37, v38, UTF8CStringForCFString);
        }

        free(UTF8CStringForCFString);
      }

LABEL_36:
      result = 1;
      goto LABEL_37;
    }

    v14 = *(MEMORY[0x1E695E9C0] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9C0];
    *&callBacks.release = v14;
    callBacks.equal = *(MEMORY[0x1E695E9C0] + 32);
    callBacks.retain = 0;
    callBacks.release = 0;
    a1 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, &callBacks);
    if (a1)
    {
      v15 = a1;
      CFArrayAppendValue(a1, v12);
      CFDictionarySetValue(theDict, v9, v15);
      v12 = v15;
      goto LABEL_7;
    }

    v17 = "Memory allocation failure.";
    v18 = 17;
  }

  else
  {
    v17 = "Can't record kext in identifier lookup dictionary; no identifier.";
    v18 = 262145;
  }

  OSKextLog(a1, v18, v17, a4, a5, a6, a7, a8, v40);
  result = 0;
LABEL_37:
  v39 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __OSKextCreateMkextInfo(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return 1;
  }

  v4 = malloc_type_malloc(0x20uLL, 0x60040FAD0F902uLL);
  *(a1 + 80) = v4;
  if (v4)
  {
    *v4 = 0u;
    v4[1] = 0u;
    return 1;
  }

  else
  {
    OSKextLog(0, 17, "Memory allocation failure.", v5, v6, v7, v8, v9, v1);
    return 0;
  }
}

CFDataRef __OSKextCreateUncompressMkext2FileData(const __CFAllocator *a1, Bytef *a2, uInt a3, size_t size)
{
  v4 = size;
  v8 = size;
  v9 = malloc_type_malloc(size, 0x8637701uLL);
  if (!v9)
  {
    OSKextLog(0, 17, "Memory allocation failure.", v10, v11, v12, v13, v14, v33);
    return 0;
  }

  v15 = v9;
  memset(&strm.avail_out + 1, 0, 76);
  *&strm.avail_in = 0u;
  strm.next_in = a2;
  strm.next_out = v9;
  strm.avail_in = a3;
  strm.avail_out = v4;
  if (inflateInit_(&strm, "1.2.12", 112))
  {
    OSKextLog(0, 131073, "zlib inflateInit failed.", v16, v17, v18, v19, v20, v33);
LABEL_16:
    free(v15);
    return 0;
  }

  v21 = inflate(&strm, 4);
  if (!v21)
  {
    goto LABEL_10;
  }

  if (v21 != 1)
  {
    LOBYTE(v30) = strm.msg;
    if (!strm.msg)
    {
      v30 = "unknown";
    }

    v33 = v30;
    v29 = "zlib inflate failed: %s.";
    goto LABEL_14;
  }

  if (LODWORD(strm.total_out) != v4)
  {
LABEL_10:
    v29 = "zlib inflate discrepancy, uncompressed size != original size.";
LABEL_14:
    v31 = 131073;
LABEL_15:
    OSKextLog(0, v31, v29, v22, v23, v24, v25, v26, v33);
    inflateEnd(&strm);
    goto LABEL_16;
  }

  v27 = CFDataCreateWithBytesNoCopy(a1, v15, v8, *MEMORY[0x1E695E488]);
  if (!v27)
  {
    v29 = "Memory allocation failure.";
    v31 = 17;
    goto LABEL_15;
  }

  v28 = v27;
  inflateEnd(&strm);
  return v28;
}

uint64_t __OSKextHasSuffix(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 92) & 8) != 0)
  {
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  result = OSKextGetExecutableURL(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    result = __OSKextGetFileSystemPath(0, result, 1u, __s, v9, v10, v11, v12);
    if (result)
    {
      v13 = strlen(__s);
      if (v13 >= 7 && !strncmp("_kasan", &__s[v13 - 6], 6uLL))
      {
        result = 1;
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

LABEL_7:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void __OSKextAddDependenciesApplierFunction(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 92) & 1) == 0)
  {
    v10 = *(a1 + 72);
    if (v10 && (v11 = *v10) != 0)
    {
      ++*(a2 + 3);
      v21.length = CFArrayGetCount(v11);
      v21.location = 0;
      CFArrayApplyFunction(v11, v21, __OSKextAddDependenciesApplierFunction, a2);
      --*(a2 + 3);
    }

    else
    {
      __OSKextGetFileSystemPath(a1, 0, 1u, buffer, a5, a6, a7, a8);
      OSKextLog(a1, 16385, "%s - missing load info or dependencies array in applier function.", v12, v13, v14, v15, v16, buffer);
      *(a2 + 16) = 1;
    }
  }

  if (!*(a2 + 16) && *(a2 + 3) >= *(a2 + 2))
  {
    v17 = *a2;
    v22.length = CFArrayGetCount(*a2);
    v22.location = 0;
    if (CFArrayGetFirstIndexOfValue(v17, v22, a1) == -1)
    {
      CFArrayAppendValue(*a2, a1);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

CFMutableDictionaryRef __OSKextGetDiagnostics(uint64_t a1, int a2)
{
  if (!*(a1 + 64))
  {
    v4 = malloc_type_malloc(0x28uLL, 0x20040769AC3DAuLL);
    *(a1 + 64) = v4;
    if (!v4)
    {
LABEL_24:
      OSKextLog(0, 17, "Memory allocation failure.", v5, v6, v7, v8, v9, v11);
      return 0;
    }

    v4[4] = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
  }

  result = 0;
  if (a2 <= 3)
  {
    if (a2 == 1)
    {
      result = **(a1 + 64);
      if (!result)
      {
        result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        **(a1 + 64) = result;
        if (!result)
        {
          goto LABEL_24;
        }
      }
    }

    else if (a2 == 2)
    {
      result = *(*(a1 + 64) + 8);
      if (!result)
      {
        result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(*(a1 + 64) + 8) = result;
        if (!result)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 4:
        result = *(*(a1 + 64) + 16);
        if (!result)
        {
          result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(*(a1 + 64) + 16) = result;
          if (!result)
          {
            goto LABEL_24;
          }
        }

        break;
      case 8:
        result = *(*(a1 + 64) + 24);
        if (!result)
        {
          result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(*(a1 + 64) + 24) = result;
          if (!result)
          {
            goto LABEL_24;
          }
        }

        break;
      case 16:
        result = *(*(a1 + 64) + 32);
        if (!result)
        {
          result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          *(*(a1 + 64) + 32) = result;
          if (!result)
          {
            goto LABEL_24;
          }
        }

        break;
    }
  }

  return result;
}

void __OSKextValidateOSBundleLibraryApplierFunction(const __CFString *value, const __CFString *a2, uint64_t a3)
{
  CFArrayAppendValue(*(a3 + 16), value);
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  TypeID = CFStringGetTypeID();
  if (!__OSKextCheckProperty(v6, v7, value, v8, TypeID, 0, 0, 1, 1, 0, 0))
  {
    *(a3 + 24) = 0;
    goto LABEL_11;
  }

  v13 = OSKextParseVersionCFString(a2);
  if (v13 == -1)
  {
    __OSKextAddDiagnostic(*a3, 1, @"Info dictionary property value is illegal", *(a3 + 16), 0, v10, v11, v12, v16);
    *(a3 + 24) = 0;
  }

  if (CFStringHasPrefix(value, @"com.apple.kernel"))
  {
    *(a3 + 25) = 1;
  }

  else
  {
    if (!CFStringHasPrefix(value, @"com.apple.kpi."))
    {
      goto LABEL_11;
    }

    *(a3 + 26) = 1;
  }

  if (v13 < __sOSNewKmodInfoKernelVersion)
  {
    *(*a3 + 92) |= 0x10000u;
  }

LABEL_11:
  v14 = *(a3 + 16);
  v15 = CFArrayGetCount(v14) - 1;

  CFArrayRemoveValueAtIndex(v14, v15);
}

void __OSKextValidateIOKitPersonalityApplierFunction(const __CFString *value, const __CFDictionary *a2, uint64_t a3)
{
  v86 = 0;
  cf1 = 0;
  v85 = 0;
  CFArrayAppendValue(*(a3 + 16), value);
  v6 = *a3;
  v7 = *(a3 + 8);
  v8 = *(a3 + 16);
  TypeID = CFDictionaryGetTypeID();
  if (!__OSKextCheckProperty(v6, v7, value, v8, TypeID, 0, 0, 1, 0, 0, 0))
  {
    *(a3 + 24) = 0;
    goto LABEL_61;
  }

  CFArrayAppendValue(*(a3 + 16), @"IOKitDebug");
  v10 = *a3;
  v11 = *(a3 + 16);
  v12 = CFNumberGetTypeID();
  v13 = __OSKextCheckProperty(v10, a2, @"IOKitDebug", v11, v12, 0, 0, 1, 0, 0, &v86);
  if (v13)
  {
    v14 = *(a3 + 24) == 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  *(a3 + 24) = v15;
  if (v13 && v86)
  {
    *(*a3 + 92) |= 0x40u;
  }

  v16 = *(a3 + 16);
  Count = CFArrayGetCount(v16);
  CFArrayRemoveValueAtIndex(v16, Count - 1);
  if (!*(a3 + 25))
  {
    v18 = *MEMORY[0x1E695E4F0];
    CFArrayAppendValue(*(a3 + 16), *MEMORY[0x1E695E4F0]);
    v19 = *a3;
    v20 = *(a3 + 16);
    v21 = CFStringGetTypeID();
    if (__OSKextCheckProperty(v19, a2, v18, v20, v21, 0, 0, 1, 1, &cf1, &v86))
    {
      v25 = *(a3 + 24) == 0;
    }

    else
    {
      v25 = 1;
    }

    v26 = !v25;
    *(a3 + 24) = v26;
    v27 = *a3;
    if (cf1)
    {
      if (!CFEqual(cf1, *(v27 + 24)))
      {
        v83 = *a3;
        v28 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ -> %@ (kext is %@)");
        __OSKextAddDiagnostic(*a3, 8, @"Personality CFBundleIdentifier differs from containing kext's (not necessarily a mistake, but rarely done)", value, 0, v29, v30, v31, value);
        if (v28)
        {
          CFRelease(v28);
        }
      }
    }

    else
    {
      __OSKextAddDiagnostic(v27, 8, @"Personality has no CFBundleIdentifier; the kext's identifier will be inserted when sending to the IOCatalogue", value, 0, v22, v23, v24, v80);
    }

    if (cf1)
    {
      KextWithIdentifier = OSKextGetKextWithIdentifier(cf1);
      if (KextWithIdentifier)
      {
        if ((KextWithIdentifier[92] & 4) != 0)
        {
          goto LABEL_31;
        }

        v81 = value;
        v36 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"'%@' -> '%@'");
        v37 = *a3;
        v38 = @"Personality CFBundleIdentifier names a kext that doesn't declare an executable";
      }

      else
      {
        v81 = value;
        v36 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"'%@' -> '%@'");
        v37 = *a3;
        v38 = @"Personality CFBundleIdentifier names a kext that can't be found";
      }

      __OSKextAddDiagnostic(v37, 8, v38, v36, 0, v33, v34, v35, v81);
      if (v36)
      {
        CFRelease(v36);
      }
    }

LABEL_31:
    v39 = *(a3 + 16);
    v40 = CFArrayGetCount(v39);
    CFArrayRemoveValueAtIndex(v39, v40 - 1);
    CFArrayAppendValue(*(a3 + 16), @"IOClass");
    v41 = *a3;
    v42 = *(a3 + 16);
    v43 = CFStringGetTypeID();
    if (__OSKextCheckProperty(v41, a2, @"IOClass", v42, v43, 0, 1, 1, 1, &v85, 0))
    {
      v44 = *(a3 + 24) == 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = !v44;
    *(a3 + 24) = v45;
    v46 = *(a3 + 16);
    v47 = CFArrayGetCount(v46);
    CFArrayRemoveValueAtIndex(v46, v47 - 1);
    CFArrayAppendValue(*(a3 + 16), @"IOProviderClass");
    v48 = *a3;
    v49 = *(a3 + 16);
    v50 = CFStringGetTypeID();
    v51 = __OSKextCheckProperty(v48, a2, @"IOProviderClass", v49, v50, 0, 1, 1, 1, &cf1, 0);
    if (v51)
    {
      v52 = *(a3 + 24) == 0;
    }

    else
    {
      v52 = 1;
    }

    v53 = !v52;
    *(a3 + 24) = v53;
    if (v51)
    {
      v54 = CFEqual(cf1, @"IOResources");
      v55 = *(a3 + 16);
      v56 = CFArrayGetCount(v55);
      CFArrayRemoveValueAtIndex(v55, v56 - 1);
      if (!v54)
      {
        goto LABEL_57;
      }

      CFArrayAppendValue(*(a3 + 16), @"IOMatchCategory");
      v57 = *a3;
      v58 = *(a3 + 16);
      v59 = CFStringGetTypeID();
      v60 = __OSKextCheckProperty(v57, a2, @"IOMatchCategory", v58, v59, 0, 0, 1, 0, &cf1, 0);
      if (v60)
      {
        v61 = *(a3 + 24) == 0;
      }

      else
      {
        v61 = 1;
      }

      v62 = !v61;
      *(a3 + 24) = v62;
      if (v60 && cf1 && v85 && !CFEqual(v85, cf1))
      {
        __OSKextAddDiagnostic(*a3, 8, @"Personality matches on IOResources but IOMatchCategory is missing or not equal to its IOClass; driver may be blocked from matching or may block others", value, 0, v63, v64, v65, v82);
      }
    }

    v66 = *(a3 + 16);
    v67 = CFArrayGetCount(v66);
    CFArrayRemoveValueAtIndex(v66, v67 - 1);
LABEL_57:
    CFArrayAppendValue(*(a3 + 16), @"IOProbeScore");
    v68 = *a3;
    v69 = *(a3 + 16);
    v70 = CFNumberGetTypeID();
    __OSKextCheckProperty(v68, a2, @"IOProbeScore", v69, v70, 0, 0, 0, 0, 0, 0);
    v71 = *(a3 + 16);
    v72 = CFArrayGetCount(v71);
    CFArrayRemoveValueAtIndex(v71, v72 - 1);
    if ((*(*a3 + 92) & 8) != 0)
    {
      CFArrayAppendValue(*(a3 + 16), @"CFBundleIdentifierKernel");
      v73 = *a3;
      v74 = *(a3 + 16);
      v75 = CFStringGetTypeID();
      if (!__OSKextCheckProperty(v73, a2, @"CFBundleIdentifierKernel", v74, v75, 0, 1, 1, 1, &cf1, &v86))
      {
        __OSKextSetDiagnostic(*a3, 1, @"The 'CFBundleIdentifierKernel' key is required in your personality to specify the base kext to load when your kext is instantiated.");
      }

      v76 = *(a3 + 16);
      v77 = CFArrayGetCount(v76);
      CFArrayRemoveValueAtIndex(v76, v77 - 1);
    }
  }

LABEL_61:
  v78 = *(a3 + 16);
  v79 = CFArrayGetCount(v78);
  CFArrayRemoveValueAtIndex(v78, v79 - 1);
}

uint64_t __OSKextAddCompressedFileToMkext(uint64_t a1, const __CFData *a2, CFDataRef theData, int a4, _BYTE *a5)
{
  v9 = a4 == 0;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(a2);
  v12 = CFDataGetLength(theData);
  memset(&strm.avail_in, 0, 104);
  *a5 = 0;
  v32 = Length + 8 * v9;
  CFDataSetLength(a2, v32 + v12 + (v12 + 1000) / 0x3E8 + 12);
  MutableBytePtr = CFDataGetMutableBytePtr(a2);
  v14 = MutableBytePtr;
  v15 = &MutableBytePtr[Length];
  if (a4)
  {
    v16 = 0;
  }

  else
  {
    *(v15 + 1) = bswap32(v12);
    v16 = &MutableBytePtr[Length];
    v15 += 8;
  }

  strm.next_in = BytePtr;
  strm.next_out = v15;
  strm.avail_in = v12;
  strm.avail_out = v12 + (v12 + 1000) / 0x3E8 + 12;
  memset(&strm.zalloc, 0, 24);
  if (deflateInit2_(&strm, -1, 8, 15, 8, 0, "1.2.12", 112))
  {
    OSKextLog(0, 131073, "zlib deflateInit failed.", v17, v18, v19, v20, v21, v31);
LABEL_11:
    CFDataSetLength(a2, Length);
    return 0;
  }

  if (deflate(&strm, 4) > 1)
  {
    OSKextLog(0, 131073, "zlib deflate failed.", v22, v23, v24, v25, v26, v31);
    deflateEnd(&strm);
    goto LABEL_11;
  }

  total_out = strm.total_out;
  if (LODWORD(strm.total_out) >= v12)
  {
    *a5 = 0;
  }

  else
  {
    *a5 = 1;
    if (a4)
    {
      *(v14 + 8) = bswap32(Length);
      v28 = CFDataGetLength(theData);
      *(v14 + 9) = bswap32(total_out);
      *(v14 + 10) = bswap32(v28);
      v29 = "Compressed info dict from %u to %u bytes (%.2f%%).";
    }

    else
    {
      *v16 = bswap32(total_out);
      v29 = "Compressed executable from %u to %u bytes (%.2f%%).";
    }

    OSKextLog(a1, 134, v29, v22, v23, v24, v25, v26, v12);
    CFDataSetLength(a2, total_out + v32);
  }

  deflateEnd(&strm);
  return 1;
}

uint64_t __OSKextInitFromMkext(uint64_t a1, CFDictionaryRef theDict, const void *a3, const void *a4)
{
  *(a1 + 88) |= 8u;
  Value = CFDictionaryGetValue(theDict, @"_MKEXTBundlePath");
  if (Value)
  {
    v9 = Value;
    v10 = CFGetAllocator(a1);
    v11 = CFURLCreateWithFileSystemPath(v10, v9, kCFURLPOSIXPathStyle, 1u);
    *(a1 + 16) = v11;
    if (!v11)
    {
      OSKextLog(0, 17, "Memory allocation failure.", v12, v13, v14, v15, v16, v37);
    }
  }

  v17 = CFGetAllocator(theDict);
  *(a1 + 56) = CFDictionaryCreateMutableCopy(v17, 0, theDict);
  if (!__OSKextCreateMkextInfo(a1))
  {
    OSKextLog(0, 17, "Memory allocation failure.", v18, v19, v20, v21, v22, v37);
    return 0;
  }

  if (a3)
  {
    **(a1 + 80) = CFRetain(a3);
  }

  *(*(a1 + 80) + 8) = CFRetain(a4);
  if (!__OSKextProcessInfoDictionary(a1, 0, v23, v24, v25, v26, v27, v28))
  {
    return 0;
  }

  return __OSKextRecordKext(a1, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t hid_pthread_attr_init(pthread_attr_t *a1, int a2, int a3)
{
  v9 = 0;
  v6 = pthread_attr_init(a1);
  if (v6 || (pthread_attr_setschedpolicy(a1, a3), v6 = pthread_attr_getschedparam(a1, &v9), v6) || (v9.sched_priority = a2, v6 = pthread_attr_setschedparam(a1, &v9), v6))
  {
    v7 = v6;
    goto LABEL_5;
  }

  v7 = pthread_attr_setdetachstate(a1, 1);
  if (v7)
  {
LABEL_5:
    pthread_attr_destroy(a1);
  }

  return v7;
}

NSObject *hid_workloop_create(const char *a1, int a2, uint64_t a3, OS_os_workgroup **a4)
{
  v10 = *MEMORY[0x1E69E9840];
  inactive = dispatch_workloop_create_inactive(a1);
  if (a2)
  {
    dispatch_workloop_set_scheduler_priority();
  }

  dispatch_set_qos_class_fallback();
  dispatch_workloop_set_scheduler_priority();
  _dispatch_workloop_set_observer_hooks_4IOHID();
  if (a4)
  {
    os_workgroup_attr_set_interval_type();
    v7 = os_workgroup_interval_create_with_workload_id();
    *a4 = v7;
    dispatch_workloop_set_os_workgroup(inactive, v7);
  }

  dispatch_activate(inactive);
  v8 = *MEMORY[0x1E69E9840];
  return inactive;
}

void __IOHIDServiceFilterCreateWithClass_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 72) |= 2u;
  v3 = *(v2 + 56);
  if (v3)
  {
    (*(v3 + 16))(*(v2 + 56));
    v2 = *(a1 + 32);
  }

  CFRelease(v2);
}

uint64_t IOHIDServiceFilterGetTypeID()
{
  result = __kIOHIDServiceFilterTypeID;
  if (!__kIOHIDServiceFilterTypeID)
  {
    pthread_once(&__systemFilterClientTypeInit_0, __IOHIDServiceFilterRegister);
    return __kIOHIDServiceFilterTypeID;
  }

  return result;
}

uint64_t __IOHIDServiceFilterRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDServiceFilterTypeID = result;
  return result;
}

uint64_t IOHIDServiceFilterCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  v4 = v2 == v3;
  v5 = v2 <= v3;
  v6 = -1;
  if (v5)
  {
    v6 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

id IOHIDServiceFilterFilterCopyMatchingEvent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 96);
  v7 = a2;
  if (v6)
  {
    v7 = [v6 *(a1 + 128)];
  }

  if (!v7)
  {
    v8 = _IOHIDEventDebugInfo(a2);
    v9 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      Type = IOHIDEventGetType(a2);
      SenderID = _IOHIDServiceGetSenderID(*(a1 + 48));
      v14 = *(a1 + 88);
      v15[0] = 67109890;
      v15[1] = Type;
      v16 = 2048;
      v17 = SenderID;
      v18 = 2112;
      v19 = v8;
      v20 = 2112;
      v21 = v14;
      _os_log_debug_impl(&dword_197195000, v9, OS_LOG_TYPE_DEBUG, "Copy Event filtered type:%d sender:0x%llx eventInfo:(%@) service filter:%@", v15, 0x26u);
    }

    CFRelease(v8);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t IOHIDServiceFilterSetOutputEvent(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v2 = *(*result + 104);
    if (v2)
    {
      return v2();
    }
  }

  return result;
}

void __IOHIDServiceClientCopyProperties_block_invoke(IOHIDServiceClientRef *a1, const __CFString *a2)
{
  v4 = a1[4];
  os_unfair_recursive_lock_lock_with_options();
  Value = CFDictionaryGetValue(*(a1[4] + 12), a2);
  v6 = a1[4];
  os_unfair_recursive_lock_unlock();
  if (Value)
  {
    if (!CFEqual(Value, *MEMORY[0x1E695E738]))
    {
      v9 = a1[5];

      CFDictionarySetValue(v9, a2, Value);
    }
  }

  else if ((CFEqual(a2, @"PrimaryUsagePage") || CFEqual(a2, @"PrimaryUsage") || CFEqual(a2, @"DeviceUsagePairs")) && (v7 = IOHIDServiceClientCopyProperty(a1[4], a2)) != 0)
  {
    v8 = v7;
    CFDictionarySetValue(a1[5], a2, v7);

    CFRelease(v8);
  }

  else
  {
    v10 = a1[6];

    CFArrayAppendValue(v10, a2);
  }
}

uint64_t __IOHIDServiceClientCopyProperties_block_invoke_3(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  result = CFSetContainsValue(__serviceKeysSet, a2);
  if (result)
  {
    v6 = *(a1 + 40);
    os_unfair_recursive_lock_lock_with_options();
    v7 = *MEMORY[0x1E695E738];
    if (Value)
    {
      v8 = Value;
    }

    else
    {
      v8 = *MEMORY[0x1E695E738];
    }

    CFDictionarySetValue(*(*(a1 + 40) + 96), a2, v8);
    v9 = *(a1 + 40) + 88;

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

uint64_t IOHIDServiceClientRegisterRemovalCallback(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  a1[4] = a2;
  a1[6] = a3;
  a1[7] = a4;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDServiceClientRegisterRemovalBlock(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_recursive_lock_lock_with_options();
  a1[5] = _Block_copy(a2);
  a1[6] = a3;
  a1[7] = a4;

  return os_unfair_recursive_lock_unlock();
}

uint64_t IOHIDServiceClientFastPathCopyEvent(uint64_t a1)
{
  v3 = 0;
  result = *(a1 + 104);
  if (result)
  {
    v2 = *(*result + 64);
    if (v2)
    {
      v2();
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t IOHIDServiceClientFastPathCopyEventWithStatus(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 && (v2 = *(*v1 + 64)) != 0)
  {
    return v2();
  }

  else
  {
    return 3758097095;
  }
}

uint64_t IOHIDServiceClientFastPathCopyProperty(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 && (v2 = *(*v1 + 48)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t IOHIDServiceClientFastPathSetProperty(uint64_t a1)
{
  result = *(a1 + 104);
  if (result)
  {
    v2 = *(*result + 56);
    if (v2)
    {
      LOBYTE(result) = v2();
    }

    else
    {
      LOBYTE(result) = 0;
    }
  }

  return result;
}

uint64_t _IOHIDVirtualServiceClientSetOputputEvent(void *a1, uint64_t a2)
{
  v2 = a1[8];
  if (v2 && (v3 = *(v2 + 40)) != 0)
  {
    return v3(a1[9], a1[10], a1, a2);
  }

  else
  {
    return 3758097095;
  }
}

uint64_t _IOHIDVirtualServiceClientCopyMatchingEvent(void *a1, uint64_t a2)
{
  v2 = a1[8];
  if (v2 && (v3 = *(v2 + 48)) != 0)
  {
    return v3(a1[9], a1[10], a1, a2);
  }

  else
  {
    return 0;
  }
}

__n128 IOHIDEventSystemConnectionGetAuditToken(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    result = *(a1 + 196);
    v3 = *(a1 + 212);
    *a2 = result;
    *(a2 + 16) = v3;
  }

  return result;
}

void _IOHIDEventSystemConnectionRegisterEventFilter(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  *(a1 + 260) = a2;
  if (v3)
  {
    _IOHIDEventSystemRegisterEventFilter(v3, a1);
  }
}

void _IOHIDEventSystemConnectionUnregisterEventFilter(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _IOHIDEventSystemUnregisterEventFilter(v2, a1);
  }
}

uint64_t _IOHIDEventSystemConnectionEventFilterCompare(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 260);
  v3 = *(a2 + 260);
  v4 = v2 == v3;
  v5 = v2 <= v3;
  v6 = -1;
  if (v5)
  {
    v6 = 1;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t _IOHIDEventSystemConnectionRegisterPropertyChangedNotification(void *a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  Mutable = a1[17];
  if (Mutable || (v5 = CFGetAllocator(a1), Mutable = CFSetCreateMutable(v5, 0, MEMORY[0x1E695E9F8]), (a1[17] = Mutable) != 0))
  {
    CFSetAddValue(Mutable, a2);
  }

  return os_unfair_recursive_lock_unlock();
}

uint64_t _IOHIDEventSystemConnectionUnregisterPropertyChangedNotification(uint64_t a1, const void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v4 = *(a1 + 136);
  if (v4)
  {
    CFSetRemoveValue(v4, a2);
  }

  return os_unfair_recursive_lock_unlock();
}

const char *IOHIDEventSystemConnectionGetTypeString(unsigned int a1)
{
  if (a1 > 4)
  {
    return "Invalid";
  }

  else
  {
    return off_1E74A9440[a1];
  }
}

uint64_t _IOHIDEventSystemConnectionRecordServiceChanged(uint64_t result)
{
  if (!*(result + 456))
  {
    v2 = result;
    os_unfair_recursive_lock_lock_with_options();
    iohideventsystem_client_dispatch_service_records_changed(*(v2 + 40));

    return os_unfair_recursive_lock_unlock();
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionRegisterRecordServiceChanged(void *a1)
{
  result = a1[1];
  if (result)
  {
    return _IOHIDEventSystemRegisterRecordServiceChanged(result, a1);
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionUnregisterRecordServiceChanged(void *a1)
{
  result = a1[1];
  if (result)
  {
    return _IOHIDEventSystemUnregisterRecordServiceChanged(result, a1);
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionRecordClientChanged(uint64_t result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(result + 456))
  {
    v1 = result;
    os_unfair_recursive_lock_lock_with_options();
    v2 = iohideventsystem_client_dispatch_client_records_changed(*(v1 + 40));
    v3 = v2;
    if ((v2 - 268435459) < 2)
    {
      goto LABEL_5;
    }

    if (!v2)
    {
LABEL_10:
      result = os_unfair_recursive_lock_unlock();
      goto LABEL_11;
    }

    if (v2 == 268451843)
    {
LABEL_5:
      v4 = _IOHIDLogCategory(9u);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(v1 + 168);
        v8 = 136315394;
        v9 = v5;
        v10 = 1024;
        v11 = v3;
        _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_INFO, "%s: iohideventsystem_client_dispatch_client_records_changed:0x%x", &v8, 0x12u);
      }
    }

    else
    {
      v6 = _IOHIDLogCategory(9u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        _IOHIDEventSystemConnectionRecordClientChanged_cold_1(v1);
      }
    }

    __IOHIDEventSystemConnectionCheckServerStatus(v3, v1);
    goto LABEL_10;
  }

LABEL_11:
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _IOHIDEventSystemConnectionRegisterRecordClientChanged(void *a1)
{
  result = a1[1];
  if (result)
  {
    return _IOHIDEventSystemRegisterRecordClientChanged(result, a1);
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionUnregisterRecordClientChanged(void *a1)
{
  result = a1[1];
  if (result)
  {
    return _IOHIDEventSystemUnregisterRecordClientChanged(result, a1);
  }

  return result;
}

uint64_t _IOHIDEventSystemConnectionLogEvent(void *a1, uint64_t a2)
{
  v7.tv_sec = 0;
  *&v7.tv_usec = 0;
  Type = IOHIDEventGetType(a2);
  gettimeofday(&v7, 0);
  os_unfair_recursive_lock_lock_with_options();
  v3 = a1[49];
  if (v3 || (v4 = CFGetAllocator(a1), v3 = _IOHIDSimpleQueueCreate(v4, 24, 10), (a1[49] = v3) != 0))
  {
    _IOHIDSimpleQueueEnqueue(v3, &Type, 1);
  }

  ++*(a1[50] + 4 * Type);
  return os_unfair_recursive_lock_unlock();
}

void _IOHIDEventSystemConnectionRemoveVirtualService(uint64_t a1, const void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = _IOHIDLogCategory(9u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 168);
    *buf = 136315394;
    v12 = v5;
    v13 = 2048;
    v14 = a2;
    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_DEFAULT, "%s: HIDVS ID:%llx destroy", buf, 0x16u);
  }

  if (a2)
  {
    Value = CFDictionaryGetValue(*(a1 + 280), a2);
    if (Value)
    {
      v7 = Value;
      CFRetain(Value);
      EnumerationQueue = _IOHIDEventSystemGetEnumerationQueue(*(a1 + 8));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___IOHIDEventSystemConnectionRemoveVirtualService_block_invoke;
      block[3] = &__block_descriptor_tmp_135;
      block[4] = v7;
      dispatch_async(EnumerationQueue, block);
      CFDictionaryRemoveValue(*(a1 + 280), a2);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void *__IOHIDServiceVirtualCopyMatchingEventCallback(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  SenderID = _IOHIDServiceGetSenderID(a1);
  v24 = 0;
  v23 = 0;
  if (a3)
  {
    v6 = CFGetAllocator(a2);
    v7 = _IOHIDCreateBinaryData(v6, a3);
    if (!v7)
    {
      v20 = _IOHIDLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __IOHIDServiceVirtualCopyMatchingEventCallback_cold_1(v20);
      }

      v14 = 0;
      goto LABEL_18;
    }

    a3 = v7;
    BytePtr = CFDataGetBytePtr(v7);
    Length = CFDataGetLength(a3);
  }

  else
  {
    Length = 0;
    BytePtr = 0;
  }

  if (*(a2 + 456))
  {
    goto LABEL_10;
  }

  v10 = iohideventsystem_copy_matching_event_from_virtual_service(*(a2 + 40), SenderID, BytePtr, Length, &v24, &v23, 0x20u);
  if (v10)
  {
    v11 = v10;
    v12 = _IOHIDLogCategory(9u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(a2 + 168);
      *buf = 136315650;
      v26 = v13;
      v27 = 2048;
      v28 = SenderID;
      v29 = 1024;
      v30 = v11;
      _os_log_impl(&dword_197195000, v12, OS_LOG_TYPE_INFO, "%s: HIDVS ID:%llx iohideventsystem_copy_matching_event_from_virtual_service:%x", buf, 0x1Cu);
    }

    __IOHIDEventSystemConnectionCheckServerStatus(v11, a2);
LABEL_10:
    v14 = 0;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v15 = v24;
  v16 = v23;
  TypeID = CFDataGetTypeID();
  v18 = _IOHIDUnserializeAndVMDeallocWithTypeID(v15, v16, TypeID);
  if (!v18)
  {
    goto LABEL_10;
  }

  v19 = v18;
  v14 = IOHIDEventCreateWithDataInternal(*MEMORY[0x1E695E480], v18);
  CFRelease(v19);
  if (a3)
  {
LABEL_14:
    CFRelease(a3);
  }

LABEL_18:
  v21 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t IOHIDEventServerGetTypeID()
{
  result = __kIOHIDEventServerTypeID;
  if (!__kIOHIDEventServerTypeID)
  {
    pthread_once(&__serviceTypeInit, __IOHIDEventServerRegister);
    return __kIOHIDEventServerTypeID;
  }

  return result;
}

uint64_t __IOHIDEventServerRegister()
{
  notify_register_check("com.apple.iohideventsystem.available", &__hidSystemToken);
  result = _CFRuntimeRegisterClass();
  __kIOHIDEventServerTypeID = result;
  return result;
}

void *IOHIDEventServerCreate(uint64_t a1, uint64_t a2)
{
  if (!__kIOHIDEventServerTypeID)
  {
    pthread_once(&__serviceTypeInit, __IOHIDEventServerRegister);
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    Instance[3] = 0;
    Instance[4] = 0;
    Instance[2] = a2;
    __whiteListSet = CFSetCreate(0, __whiteList, 30, MEMORY[0x1E695E9F8]);
  }

  return v4;
}

void IOHIDEventServerUnscheduleFromDispatchQueue(uint64_t a1, uint64_t a2)
{
  if (a2 && *(a1 + 32) == a2)
  {
    v3 = _IOHIDLog();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventServerUnschedule", &unk_19724ED59, buf, 2u);
    }

    dispatch_assert_queue_not_V2(*(a1 + 32));
    v4 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __IOHIDEventServerUnscheduleFromDispatchQueue_block_invoke;
    block[3] = &__block_descriptor_tmp_26;
    block[4] = a1;
    dispatch_async_and_wait(v4, block);
    for (i = 0; i != 5; ++i)
    {
      v6 = IOHIDEventSystemCopyConnections(*(a1 + 16), i);
      if (v6)
      {
        v7 = v6;
        v12.length = CFArrayGetCount(v6);
        v12.location = 0;
        CFArrayApplyFunction(v7, v12, __IOHIDEventServerKillClientFunction, a1);
        CFRelease(v7);
      }
    }

    v8 = *(a1 + 24);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 24) = 0;
    }

    *(a1 + 32) = 0;
    v9 = _IOHIDLog();
    if (os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_197195000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "IOHIDEventServerUnschedule", &unk_19724ED59, buf, 2u);
    }
  }
}

void __IOHIDEventServerUnscheduleFromDispatchQueue_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  if (v2)
  {
    IOMIGMachPortUnscheduleFromDispatchQueue(v2, *(v1 + 32));
  }
}

void __IOHIDEventServerKillClientFunction(const void *a1, uint64_t a2)
{
  CFRetain(*(a2 + 16));
  CFRetain(a1);
  DispatchQueue = _IOHIDEventSystemConnectionGetDispatchQueue(a1);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ____IOHIDEventServerKillClientFunction_block_invoke;
  v5[3] = &__block_descriptor_tmp_98_0;
  v5[4] = a2;
  v5[5] = a1;
  dispatch_async_and_wait(DispatchQueue, v5);
}

uint64_t _io_hideventsystem_copy_properties_for_service(unsigned int a1, UInt8 *bytes, CFIndex length, UInt8 *a4, unsigned int a5, vm_offset_t *a6, _DWORD *a7, int *a8)
{
  *a7 = 0;
  v14 = -536870206;
  v15 = _IOHIDUnserializeAndVMDealloc(bytes, length);
  TypeID = CFArrayGetTypeID();
  v17 = _IOHIDUnserializeAndVMDeallocWithTypeID(a4, a5, TypeID);
  v18 = v17;
  if (v17 && v15)
  {
    v19 = IOMIGMachPortCacheCopy(a1);
    v20 = v19;
    if (v19)
    {
      v21 = CFGetTypeID(v19);
      v22 = IOHIDEventSystemConnectionGetTypeID();
      if (a6)
      {
        if (v21 == v22)
        {
          System = _IOHIDEventSystemConnectionGetSystem(v20);
          if (System)
          {
            v24 = IOHIDEventSystemCopyService(System, v15);
            if (v24)
            {
              v25 = v24;
              v26 = _IOHIDServiceCopyPropertiesForClient(v24, v18, v20);
              *a7 = _IOHIDSerialize(v26, a6);
              if (v26)
              {
                CFRelease(v26);
              }

              CFRelease(v18);
              CFRelease(v25);
              v14 = 0;
              goto LABEL_11;
            }

            v14 = -536870160;
          }

          else
          {
            v14 = -536870185;
          }
        }
      }
    }

    goto LABEL_19;
  }

  v20 = 0;
  if (v17)
  {
LABEL_19:
    CFRelease(v18);
  }

  if (v15)
  {
LABEL_11:
    CFRelease(v15);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  *a8 = v14;
  return 0;
}

void checkFeatureEnabled()
{
  if (checkFeatureEnabled_onceToken != -1)
  {
    checkFeatureEnabled_cold_1();
  }
}

void setupLogging()
{
  if (setupLogging_onceToken != -1)
  {
    setupLogging_cold_1();
  }
}

void __initialSetup_block_invoke(uint64_t a1, int token)
{
  notify_get_state(token, (*(*(a1 + 32) + 8) + 24));
  v3 = *(*(*(a1 + 32) + 8) + 24);

  handleAsyncAssertionDisableOverride(v3);
}

void __initialSetup_block_invoke_25()
{
  v0 = assertions_log;
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 0;
      v1 = &v4;
      v2 = v0;
LABEL_6:
      _os_log_impl(&dword_197195000, v2, OS_LOG_TYPE_DEFAULT, "Re-syncing assertions", v1, 2u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 0;
    v2 = MEMORY[0x1E69E9C10];
    v1 = &v3;
    goto LABEL_6;
  }

  offloadAssertions(1);
}

uint64_t getPolicyTimeout(const __CFNumber *a1, const __CFNumber *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = convertCFNumberToCFStringRef(a1);
  v4 = convertCFNumberToCFStringRef(a2);
  Value = CFDictionaryGetValue(gAssertionCategoryPolicies, v3);
  if (!Value)
  {
    goto LABEL_15;
  }

  v6 = Value;
  v7 = assertions_log;
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v3;
      v15 = 2112;
      v16 = v6;
      v8 = v7;
LABEL_7:
      _os_log_impl(&dword_197195000, v8, OS_LOG_TYPE_DEFAULT, "Category %@ has a policy %@", &v13, 0x16u);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v6;
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_7;
  }

  if (!CFDictionaryGetValue(v6, v4))
  {
    goto LABEL_15;
  }

  v9 = assertions_log;
  if (assertions_log)
  {
    if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v10 = v9;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v13 = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v4;
    v10 = MEMORY[0x1E69E9C10];
  }

  _os_log_impl(&dword_197195000, v10, OS_LOG_TYPE_DEFAULT, "there is a timeout for category %@ and policy %@", &v13, 0x16u);
LABEL_15:
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

void undoCategoryPolicyTimers()
{
  v0 = 0;
  v1 = 0;
  v17 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E9C10];
  do
  {
    value = 0;
    if (!CFDictionaryGetValueIfPresent(gActiveAssertionsDict, v1, &value))
    {
      goto LABEL_25;
    }

    v3 = value;
    TypeID = CFDictionaryGetTypeID();
    if (v3 && CFGetTypeID(v3) == TypeID)
    {
      if (!CFDictionaryContainsKey(value, @"PolicyTimeoutTimeStamp"))
      {
        goto LABEL_25;
      }

      v5 = value;
      v6 = assertions_log;
      if (assertions_log)
      {
        if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *buf = 138412290;
        v14 = v5;
        v7 = v6;
      }

      else
      {
        if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *buf = 138412290;
        v14 = v5;
        v7 = v2;
      }

      _os_log_impl(&dword_197195000, v7, OS_LOG_TYPE_DEFAULT, "Assertion has a policy category timestamp %@", buf, 0xCu);
LABEL_17:
      CFDictionaryRemoveValue(v5, @"PolicyTimeoutTimeStamp");
      if (CFDictionaryContainsKey(value, @"TimeoutTimeStamp"))
      {
        goto LABEL_25;
      }

      v9 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v10 = v9;
LABEL_23:
          _os_log_impl(&dword_197195000, v10, OS_LOG_TYPE_DEFAULT, "No timeout ts. Remove from timed list", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = v2;
        goto LABEL_23;
      }

      removeFromTimedList(v0 | 0x80000000);
      goto LABEL_25;
    }

    v8 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v14) = v1;
        _os_log_error_impl(&dword_197195000, v8, OS_LOG_TYPE_ERROR, "Not a dictinary for 0x%x", buf, 8u);
      }
    }

    else if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      offloadAssertions_cold_8(&v15, v1, &v16);
    }

LABEL_25:
    ++v1;
    v0 += 0x10000;
  }

  while (v1 != 128);
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t setAsyncAssertionProperties(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  PMQueue = getPMQueue();
  if (PMQueue)
  {
    v7 = PMQueue;
    v8 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        v19 = a3;
        v20 = 2112;
        v21 = a1;
        v22 = 2112;
        v23 = a2;
        _os_log_debug_impl(&dword_197195000, v8, OS_LOG_TYPE_DEBUG, "setAsyncAssertionProperties for 0x%x %@:%@", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      setAsyncAssertionProperties_cold_1();
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __setAsyncAssertionProperties_block_invoke;
    v12[3] = &unk_1E74A9808;
    v13 = a3;
    v12[4] = &v14;
    v12[5] = a1;
    v12[6] = a2;
    dispatch_sync(v7, v12);
    v9 = *(v15 + 6);
  }

  else
  {
    v9 = 3758097097;
    *(v15 + 6) = -536870199;
  }

  _Block_object_dispose(&v14, 8);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __setAsyncAssertionProperties_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 58);
  value = 0;
  v12 = 0;
  if (!CFDictionaryGetValueIfPresent(gAssertionsDict, (v2 & 0x7FFF), &value))
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        __setAsyncAssertionProperties_block_invoke_cold_7((a1 + 56));
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __setAsyncAssertionProperties_block_invoke_cold_8((a1 + 56));
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = -536870911;
    goto LABEL_20;
  }

  v3 = value;
  TypeID = CFDictionaryGetTypeID();
  if (!v3 || CFGetTypeID(v3) != TypeID)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        __setAsyncAssertionProperties_block_invoke_cold_5((a1 + 56));
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __setAsyncAssertionProperties_block_invoke_cold_6((a1 + 56));
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = -536870199;
LABEL_20:
    *(v6 + 24) = v7;
    return;
  }

  v5 = value;
  CFDictionarySetValue(value, *(a1 + 40), *(a1 + 48));
  if (CFStringCompare(*(a1 + 40), @"TimeoutSeconds", 0) == kCFCompareEqualTo)
  {
    if (CFDictionaryContainsKey(gActiveAssertionsDict, (v2 & 0x7FFF)))
    {
      removeFromTimedList(*(a1 + 56));
      insertIntoTimedList(v5);
      goto LABEL_24;
    }

    if (!CFDictionaryContainsKey(gInactiveAssertionsDict, (v2 & 0x7FFF)))
    {
      goto LABEL_24;
    }

    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        __setAsyncAssertionProperties_block_invoke_cold_3();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __setAsyncAssertionProperties_block_invoke_cold_4();
    }

    v11 = 255;
    v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v11);
LABEL_40:
    Mutable = v10;
    *(*(*(a1 + 32) + 8) + 24) = handleAssertionLevel(v10, *(a1 + 56), 0);
    CFDictionaryContainsKey(v5, @"AsyncRemoteAssertionId");
    if (Mutable)
    {
      goto LABEL_41;
    }

    return;
  }

  if (CFStringCompare(*(a1 + 40), @"AssertLevel", 0) == kCFCompareEqualTo)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        __setAsyncAssertionProperties_block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      __setAsyncAssertionProperties_block_invoke_cold_2();
    }

    v10 = CFRetain(*(a1 + 48));
    goto LABEL_40;
  }

  if (CFStringCompare(*(a1 + 40), @"AssertName", 0) == kCFCompareEqualTo)
  {
    logAsyncAssertionActivity(6u, *(a1 + 56));
  }

LABEL_24:
  if (CFDictionaryContainsKey(v5, @"AsyncRemoteAssertionId"))
  {
    v8 = CFDictionaryGetValue(v5, @"AsyncRemoteAssertionId");
    v11 = 0;
    CFNumberGetValue(v8, kCFNumberIntType, &v11);
    if (v11 == gCurrentRemoteAssertion)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, *(a1 + 40), *(a1 + 48));
      CFDictionarySetValue(Mutable, @"AsyncRemoteAssertionId", v8);
      sendAsyncAssertionMsg(0, Mutable, &v12, 0);
LABEL_41:
      CFRelease(Mutable);
    }
  }
}

uint64_t handleAssertionLevel(const __CFNumber *a1, uint64_t a2, char a3)
{
  v26 = *MEMORY[0x1E69E9840];
  valuePtr = 0;
  CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
  Value = CFDictionaryGetValue(gAssertionsDict, (WORD1(a2) & 0x7FFF));
  if (Value)
  {
    v6 = Value;
    v7 = CFDictionaryContainsKey(gActiveAssertionsDict, (WORD1(a2) & 0x7FFF));
    v8 = CFDictionaryContainsKey(gInactiveAssertionsDict, (WORD1(a2) & 0x7FFF));
    if (v7 | v8)
    {
      if (valuePtr)
      {
        if (valuePtr == 255 && v8)
        {
          Current = CFAbsoluteTimeGetCurrent();
          v10 = CFDateCreate(0, Current);
          if (v10)
          {
            v11 = v10;
            CFDictionarySetValue(v6, @"AssertStartWhen", v10);
            CFRelease(v11);
          }

          if (CFDictionaryContainsKey(v6, @"AssertReleaseWhen"))
          {
            CFDictionaryRemoveValue(v6, @"AssertReleaseWhen");
          }

          CFDictionaryRemoveValue(gInactiveAssertionsDict, (WORD1(a2) & 0x7FFF));
          activateAsyncAssertion(a2, 5);
        }
      }

      else if (v7)
      {
        v13 = CFAbsoluteTimeGetCurrent();
        v14 = CFDateCreate(0, v13);
        if (v14)
        {
          v15 = v14;
          CFDictionarySetValue(v6, @"AssertReleaseWhen", v14);
          CFRelease(v15);
        }

        CFArrayAppendValue(gReleasedAssertionsList, v6);
        CFDictionarySetValue(gInactiveAssertionsDict, (WORD1(a2) & 0x7FFF), v6);
        CFDictionaryRemoveValue(gActiveAssertionsDict, (WORD1(a2) & 0x7FFF));
        if ((a3 & 1) == 0)
        {
          logAsyncAssertionActivity(4u, a2);
        }

        if (CFDictionaryGetCount(gActiveAssertionsDict) <= 0 && gCurrentAssertion)
        {
          if (assertions_log)
          {
            if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
            {
              handleAssertionLevel_cold_3();
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            handleAssertionLevel_cold_4();
          }

          sendAsyncReleaseMsg(gCurrentRemoteAssertion, 1, gCurrentRemoteAssertionIsCoalesced);
          gCurrentAssertion = 0;
          gCurrentRemoteAssertion = 0;
          gCurrentRemoteAssertionIsCoalesced = 0;
        }
      }

      v16 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109634;
          v21 = a2;
          v22 = 1024;
          v23 = valuePtr;
          v24 = 2112;
          v25 = v6;
          _os_log_debug_impl(&dword_197195000, v16, OS_LOG_TYPE_DEBUG, "handleAssertionLevel for 0x%x to %d: %@", buf, 0x18u);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        handleAssertionLevel_cold_5(&valuePtr);
      }

      v12 = 0;
    }

    else
    {
      v12 = 3758097084;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
        {
          handleAssertionLevel_cold_1();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        handleAssertionLevel_cold_2();
      }
    }
  }

  else if (assertions_log)
  {
    v12 = 3758097090;
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      handleAssertionLevel_cold_6();
    }
  }

  else
  {
    v12 = 3758097090;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      handleAssertionLevel_cold_7();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

void clearAssertionLogBuffer()
{
  gAsyncAssertionActivityLog_2 = 0;
  gAsyncAssertionActivityLog_0 = 0;
  if (gAsyncAssertionActivityLog_1)
  {
    CFArrayRemoveAllValues(gAsyncAssertionActivityLog_1);
  }
}

void processCheckAssertionsMsg(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (CFDictionaryGetCount(gActiveAssertionsDict) < 1)
  {
    v3 = 0;
  }

  else
  {
    PMQueue = getPMQueue();
    dispatch_async(PMQueue, &__block_literal_global_114);
    v3 = 1;
  }

  reply = xpc_dictionary_create_reply(a1);
  if (reply)
  {
    v5 = reply;
    uint64 = xpc_dictionary_get_uint64(a1, "assertionCheckToken");
    xpc_dictionary_set_uint64(v5, "assertionCheckToken", uint64);
    xpc_dictionary_set_uint64(v5, "assertionCheckCount", v3);
    v7 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 67109376;
        v20 = v3;
        v21 = 2048;
        v22 = uint64;
        v8 = v7;
LABEL_13:
        _os_log_impl(&dword_197195000, v8, OS_LOG_TYPE_DEFAULT, "Replying to assertion check message with count %d token:%llu\n", &v19, 0x12u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109376;
      v20 = v3;
      v21 = 2048;
      v22 = uint64;
      v8 = MEMORY[0x1E69E9C10];
      goto LABEL_13;
    }

    remote_connection = xpc_dictionary_get_remote_connection(a1);
    xpc_connection_send_message(remote_connection, v5);
    xpc_release(v5);
    goto LABEL_15;
  }

  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      processCheckAssertionsMsg_cold_1();
    }
  }

  else
  {
    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      processCheckAssertionsMsg_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

LABEL_15:
  v10 = *MEMORY[0x1E69E9840];
}

void __processCheckAssertionsMsg_block_invoke()
{
  if (gCurrentRemoteAssertion)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        __processCheckAssertionsMsg_block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __processCheckAssertionsMsg_block_invoke_cold_2();
    }
  }

  offloadAssertions(1);
}

void processCurrentActiveAssertions(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = assertions_log;
  if (assertions_log)
  {
    if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = v2;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v3 = MEMORY[0x1E69E9C10];
  }

  _os_log_impl(&dword_197195000, v3, OS_LOG_TYPE_DEFAULT, "Powerd has requested active assertions update", buf, 2u);
LABEL_7:
  if (gAssertionConnection)
  {
    reply = xpc_dictionary_create_reply(a1);
    if (reply)
    {
      v5 = reply;
      uint64 = xpc_dictionary_get_uint64(a1, "assertionCheckToken");
      xpc_dictionary_set_uint64(v5, "assertionCheckToken", uint64);
      if (gActiveAssertionsDict && CFDictionaryGetCount(gActiveAssertionsDict) >= 1)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v8 = 0;
        v9 = MEMORY[0x1E69E9C10];
        do
        {
          *buf = 0;
          if (CFDictionaryGetValueIfPresent(gActiveAssertionsDict, v8, buf))
          {
            v10 = *buf;
            TypeID = CFDictionaryGetTypeID();
            if (v10 && CFGetTypeID(v10) == TypeID)
            {
              CFArrayAppendValue(Mutable, *buf);
            }

            else
            {
              v12 = assertions_log;
              if (assertions_log)
              {
                if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
                {
                  *v34 = 67109120;
                  v35 = v8;
                  _os_log_error_impl(&dword_197195000, v12, OS_LOG_TYPE_ERROR, "Not a dictianary for 0x%x", v34, 8u);
                }
              }

              else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
              {
                processCurrentActiveAssertions_cold_1(&v32, v8, v33);
              }
            }
          }

          ++v8;
        }

        while (v8 != 128);
        v13 = _CFXPCCreateXPCObjectFromCFObject();
        xpc_dictionary_set_value(v5, "assertionUpdateActives", v13);
        xpc_connection_send_message(gAssertionConnection, v5);
        if (v13)
        {
          xpc_release(v13);
        }

        xpc_release(v5);
        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }

      else
      {
        xpc_connection_send_message(gAssertionConnection, v5);
        xpc_release(v5);
      }
    }

    else if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        processAssertionUpdateActivity_cold_3();
      }
    }

    else
    {
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        processAssertionUpdateActivity_cold_4(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }
  }

  else if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
    {
      processCurrentActiveAssertions_cold_4();
    }
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v14)
    {
      processCurrentActiveAssertions_cold_5(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

void handleAssertionTimeout()
{
  v42 = *MEMORY[0x1E69E9840];
  MonotonicTime = getMonotonicTime();
  if (assertions_log)
  {
    if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
    {
      handleAssertionTimeout_cold_1();
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    handleAssertionTimeout_cold_2();
  }

  v32 = 0;
  valuePtr = 0;
  if (CFArrayGetCount(gTimedAssertionsList) < 1)
  {
    goto LABEL_61;
  }

  v1 = 0;
  v2 = 0;
  allocator = *MEMORY[0x1E695E480];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(gTimedAssertionsList, v1);
    Value = CFDictionaryGetValue(ValueAtIndex, @"TimeoutTimeStamp");
    v5 = Value;
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
    }

    if (gAssertionPolicyActive)
    {
      v6 = CFDictionaryGetValue(ValueAtIndex, @"PolicyTimeoutTimeStamp");
      v2 = v6;
      if (v6)
      {
        CFNumberGetValue(v6, kCFNumberSInt64Type, &v32);
      }
    }

    v7 = CFDictionaryGetValue(ValueAtIndex, @"AsyncClientAssertionId");
    v31 = 0;
    CFNumberGetValue(v7, kCFNumberSInt32Type, &v31);
    if (!MonotonicTime)
    {
      v8 = !v5 || valuePtr == 0;
      if (!v8 && (!v2 || v32))
      {
        break;
      }
    }

    if (!CFDictionaryContainsKey(ValueAtIndex, @"AsyncRemoteAssertionId") || (v9 = CFDictionaryGetValue(ValueAtIndex, @"AsyncRemoteAssertionId"), v30 = 0, CFNumberGetValue(v9, kCFNumberIntType, &v30), v10 = v30, v30 != gCurrentRemoteAssertion))
    {
      v13 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109632;
          v37 = v31;
          v38 = 2048;
          v39 = valuePtr;
          v40 = 2048;
          v41 = v32;
          v14 = v13;
          goto LABEL_56;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109632;
        v37 = v31;
        v38 = 2048;
        v39 = valuePtr;
        v40 = 2048;
        v41 = v32;
        v14 = MEMORY[0x1E69E9C10];
LABEL_56:
        _os_log_debug_impl(&dword_197195000, v14, OS_LOG_TYPE_DEBUG, "Timeout: assertion id 0x%x with time %llu, policy timeout %llu", buf, 0x1Cu);
      }

      if (v32 > MonotonicTime || v2 == 0)
      {
        v16 = 2;
      }

      else
      {
        v16 = 3;
      }

      logAsyncAssertionActivity(v16, v31);
      if (CFDictionaryContainsValue(ValueAtIndex, @"TimeoutAction"))
      {
        v17 = CFDictionaryGetValue(ValueAtIndex, @"TimeoutAction");
      }

      else
      {
        v17 = @"TimeoutActionTurnOff";
      }

      if (CFStringCompare(v17, @"TimeoutActionRelease", 0) == kCFCompareEqualTo)
      {
        if (_releaseAsycnAssertion(v31, 0, 0))
        {
          v20 = assertions_log;
          if (assertions_log)
          {
            if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v37 = v31;
              _os_log_error_impl(&dword_197195000, v20, OS_LOG_TYPE_ERROR, "Failed to release assertion 0x%x on timeout", buf, 8u);
            }
          }

          else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            handleAssertionTimeout_cold_3(v34, &v31, v35);
          }
        }

        goto LABEL_53;
      }

      v18 = assertions_log;
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109378;
          v37 = v31;
          v38 = 2112;
          v39 = ValueAtIndex;
          v19 = v18;
          goto LABEL_58;
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109378;
        v37 = v31;
        v38 = 2112;
        v39 = ValueAtIndex;
        v19 = MEMORY[0x1E69E9C10];
LABEL_58:
        _os_log_debug_impl(&dword_197195000, v19, OS_LOG_TYPE_DEBUG, "Turning off assertion 0x%x: %@", buf, 0x12u);
      }

      *buf = 0;
      v21 = CFNumberCreate(allocator, kCFNumberSInt32Type, buf);
      handleAssertionLevel(v21, v31, 1);
      CFRelease(v21);
      goto LABEL_53;
    }

    v11 = assertions_log;
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v37 = v10;
        v12 = v11;
LABEL_50:
        _os_log_impl(&dword_197195000, v12, OS_LOG_TYPE_DEFAULT, "Powerd knows about this assertion 0x%0x. let powerd time it out", buf, 8u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v37 = v10;
      v12 = MEMORY[0x1E69E9C10];
      goto LABEL_50;
    }

LABEL_53:
    if (CFArrayGetCount(gTimedAssertionsList) <= ++v1)
    {
      goto LABEL_60;
    }
  }

  if (!v1)
  {
    goto LABEL_61;
  }

  do
  {
LABEL_60:
    CFArrayRemoveValueAtIndex(gTimedAssertionsList, 0);
    LODWORD(v1) = v1 - 1;
  }

  while (v1);
LABEL_61:
  if ((assertion_timer_suspended & 1) == 0)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        insertIntoTimedList_cold_1();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      insertIntoTimedList_cold_2();
    }

    dispatch_suspend(gAssertionTimer);
    assertion_timer_suspended = 1;
  }

  if (CFArrayGetCount(gTimedAssertionsList))
  {
    v22 = CFArrayGetValueAtIndex(gTimedAssertionsList, 0);
    v23 = CFDictionaryGetValue(v22, @"TimeoutTimeStamp");
    v24 = CFDictionaryGetValue(v22, @"PolicyTimeoutTimeStamp");
    if (v23)
    {
      v25 = v24;
      if (v24)
      {
        if (CFNumberCompare(v23, v24, 0) > kCFCompareEqualTo)
        {
          v23 = v25;
        }
      }
    }

    CFNumberGetValue(v23, kCFNumberSInt64Type, &valuePtr);
    v26 = gAssertionTimer;
    v27 = dispatch_time(0, 1000000 * (valuePtr - MonotonicTime));
    dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, 0);
    if (assertion_timer_suspended == 1)
    {
      if (assertions_log)
      {
        if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
        {
          handleAssertionTimeout_cold_6();
        }
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        handleAssertionTimeout_cold_7();
      }

      dispatch_resume(gAssertionTimer);
      assertion_timer_suspended = 0;
    }

    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEBUG))
      {
        handleAssertionTimeout_cold_8();
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      handleAssertionTimeout_cold_9();
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t IOPMGetCurrentAsyncActiveAssertions()
{
  if (!gAssertionsDict)
  {
    return 0;
  }

  if (CFDictionaryGetCount(gActiveAssertionsDict) <= 0)
  {
    return 0;
  }

  return gActiveAssertionsDict;
}

uint64_t IOPMGetCurrentAsyncReleasedAssertions()
{
  result = gReleasedAssertionsList;
  if (gReleasedAssertionsList)
  {
    if (CFArrayGetCount(gReleasedAssertionsList) <= 0)
    {
      return 0;
    }

    else
    {
      return gReleasedAssertionsList;
    }
  }

  return result;
}

uint64_t IOPMGetCurrentAsyncInactiveAssertions()
{
  result = gInactiveAssertionsDict;
  if (gInactiveAssertionsDict)
  {
    if (CFDictionaryGetCount(gInactiveAssertionsDict) <= 0)
    {
      return 0;
    }

    else
    {
      return gInactiveAssertionsDict;
    }
  }

  return result;
}

uint64_t IOPMGetCurrentAsyncTimedAssertions()
{
  result = gTimedAssertionsList;
  if (gTimedAssertionsList)
  {
    if (CFArrayGetCount(gTimedAssertionsList) <= 0)
    {
      return 0;
    }

    else
    {
      return gTimedAssertionsList;
    }
  }

  return result;
}

const void *IOPMGetCurrentAsycnRemoteAssertion()
{
  if (!gCurrentAssertion)
  {
    return 0;
  }

  result = CFDictionaryGetValue(gAssertionsDict, ((gCurrentAssertion >> 16) & 0x7FFF));
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t IOPMCopyActiveAsyncAssertionsByProcess()
{
  v45 = *MEMORY[0x1E69E9840];
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", MEMORY[0x1E69E96A0], 0);
  if (!mach_service)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        IOPMCopyActiveAsyncAssertionsByProcess_cold_7();
      }
    }

    else
    {
      v9 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v9)
      {
        IOPSGaugingMitigationGetState_cold_2(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }

    goto LABEL_23;
  }

  v1 = mach_service;
  PMQueue = getPMQueue();
  xpc_connection_set_target_queue(v1, PMQueue);
  xpc_connection_set_event_handler(v1, &__block_literal_global_190);
  xpc_connection_resume(v1);
  v3 = xpc_dictionary_create(0, 0, 0);
  if (!v3)
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        IOPMCopyActiveAsyncAssertionsByProcess_cold_5();
      }
    }

    else
    {
      v25 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v25)
      {
        IOPMCopyActiveAsyncAssertionsByProcess_cold_6(v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

LABEL_23:
    v6 = 0;
    goto LABEL_35;
  }

  v4 = v3;
  xpc_dictionary_set_BOOL(v3, "assertionActiveAsyncByProcess", 1);
  v5 = xpc_connection_send_message_with_reply_sync(v1, v4);
  if (MEMORY[0x19A8DC620]() != MEMORY[0x1E69E9E80])
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        IOPMCopyActiveAsyncAssertionsByProcess_cold_1();
      }
    }

    else
    {
      v17 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v17)
      {
        IOPMCopyActiveAsyncAssertionsByProcess_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
      }
    }

LABEL_32:
    v6 = 0;
    goto LABEL_33;
  }

  if (!xpc_dictionary_get_value(v5, "assertionActiveAsyncByProcess"))
  {
    if (assertions_log)
    {
      if (os_log_type_enabled(assertions_log, OS_LOG_TYPE_ERROR))
      {
        IOPMCopyActiveAsyncAssertionsByProcess_cold_3();
      }
    }

    else
    {
      v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v33)
      {
        IOPMCopyActiveAsyncAssertionsByProcess_cold_4(v33, v34, v35, v36, v37, v38, v39, v40);
      }
    }

    goto LABEL_32;
  }

  v6 = _CFXPCCreateCFObjectFromXPCObject();
  v7 = assertions_log;
  if (assertions_log)
  {
    if (!os_log_type_enabled(assertions_log, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v43 = 138412290;
    v44 = v6;
    v8 = v7;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    v43 = 138412290;
    v44 = v6;
    v8 = MEMORY[0x1E69E9C10];
  }

  _os_log_impl(&dword_197195000, v8, OS_LOG_TYPE_DEFAULT, "Received active assertions from powerd %@", &v43, 0xCu);
LABEL_33:
  xpc_release(v4);
  if (v5)
  {
    xpc_release(v5);
  }

LABEL_35:
  v41 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t IOPMAssertionCreateWithAutoTimeout(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, IOPMAssertionID *a7, double a8)
{
  result = 3758097090;
  if (a1 && a2 && a7)
  {
    AssertionDescription = createAssertionDescription(a1, a2, a3, a4, a5, a6, a8);
    if (AssertionDescription)
    {
      v12 = AssertionDescription;
      CFDictionarySetValue(AssertionDescription, @"AutoTimesout", *MEMORY[0x1E695E4D0]);
      v13 = IOPMAssertionCreateWithProperties(v12, a7);
      CFRelease(v12);
      return v13;
    }

    else
    {
      return 3758097084;
    }
  }

  return result;
}

uint64_t IOPMAssertionCreateWithResourceList(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, const void *a6, const void *a7, IOPMAssertionID *a8, double a9)
{
  v9 = 3758097090;
  if (a1)
  {
    if (a2)
    {
      if (a8)
      {
        TypeID = CFArrayGetTypeID();
        if (a7)
        {
          if (CFGetTypeID(a7) == TypeID)
          {
            AssertionDescription = createAssertionDescription(a1, a2, a3, a4, a5, a6, a9);
            if (AssertionDescription)
            {
              v21 = AssertionDescription;
              CFDictionarySetValue(AssertionDescription, @"ResourcesUsed", a7);
              v22 = IOPMAssertionCreateWithProperties(v21, a8);
              CFRelease(v21);
              return v22;
            }

            return 3758097084;
          }
        }
      }
    }
  }

  return v9;
}