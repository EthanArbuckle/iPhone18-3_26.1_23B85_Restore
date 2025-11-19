CFTypeRef _CFBundleCreateFilteredInfoPlistWithData(const __CFData *a1, void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v24[5] = *MEMORY[0x1E69E9840];
  CFSetApply(a2, &__block_literal_global_165);
  Count = CFSetGetCount(a2);
  Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeSetCallBacks);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 0x40000000;
  v24[2] = ___CFBundleCreateFilteredInfoPlistWithData_block_invoke_2;
  v24[3] = &__block_descriptor_tmp_185;
  v24[4] = Mutable;
  CFSetApply(a2, v24);
  if (a4)
  {
    v11 = CFSetGetCount(Mutable);
    v12 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, v11, &kCFTypeSetCallBacks);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 0x40000000;
    v23[2] = ___CFBundleCreateFilteredInfoPlistWithData_block_invoke_3;
    v23[3] = &__block_descriptor_tmp_189;
    v23[4] = a4;
    v23[5] = v12;
    CFSetApply(Mutable, v23);
    CFRelease(Mutable);
    Mutable = v12;
  }

  cf = 0;
  if (_CFPropertyListCreateFiltered(&__kCFAllocatorSystemDefault, a1, 1, Mutable, &cf, 0))
  {
    v13 = cf == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_14;
  }

  TypeID = CFDictionaryGetTypeID();
  v15 = CFGetTypeID(cf);
  v16 = cf;
  if (TypeID != v15)
  {
    CFRelease(cf);
    v19 = _CFBundleResourceLogger();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _CFBundleCreateFilteredInfoPlistWithData_cold_1(a5, a2, v19);
    }

LABEL_14:
    cf = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_18;
  }

  if (a4)
  {
    Value = CFDictionaryGetValue(cf, a4);
    if (Value && (v16 = Value, v18 = CFDictionaryGetTypeID(), v18 == CFGetTypeID(v16)))
    {
      CFRetain(v16);
      CFRelease(cf);
    }

    else
    {
      CFRelease(cf);
      v16 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    cf = v16;
  }

  _CFBundleInfoPlistProcessInfoDictionary(v16);
LABEL_18:
  CFRelease(Mutable);
  result = cf;
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef CFBundleCreateBundlesFromDirectory(CFAllocatorRef allocator, CFURLRef directoryURL, CFStringRef bundleType)
{
  Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
  v5 = _CFCreateContentsOfDirectory(allocator, 0);
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        v11 = CFBundleCreate(allocator, ValueAtIndex);
        if (v11)
        {
          CFArrayAppendValue(Mutable, v11);
        }
      }
    }

    CFRelease(v6);
  }

  return Mutable;
}

__CFArray *_CFCreateContentsOfDirectory(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = v2;
  *&v54[1025] = *MEMORY[0x1E69E9840];
  if (v3)
  {
    bufLen = strlen(v3);
    if (!v5)
    {
LABEL_15:
      v11 = 0;
      v17 = 0;
      usedBufLen = 0;
      v18 = 1;
      if (!v8)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  else
  {
    bufLen = 0;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  v10 = CFRetain(v5);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  Length = CFStringGetLength(v10);
  usedBufLen = Length;
  if (Length < 1)
  {
    goto LABEL_17;
  }

  v13 = Length;
  v14 = CFStringFileSystemEncoding();
  v55.location = 0;
  v55.length = v13;
  CFStringGetBytes(v11, v55, v14, 0, 0, &buffer, 1024, &usedBufLen);
  v54[usedBufLen - 1] = 0;
  v15 = buffer == 46 ? v54 : &buffer;
  v16 = strchr(v15, 46);
  if (v16)
  {
    v17 = 0;
    do
    {
      ++v17;
      v16 = strchr(v16 + 1, 46);
    }

    while (v16);
    v18 = 0;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
LABEL_17:
    v18 = 0;
    v17 = 0;
    if (!v8)
    {
LABEL_18:
      if (!CFURLGetFileSystemRepresentation(v7, 1u, v52, 1024))
      {
        if (v18)
        {
          goto LABEL_90;
        }

        goto LABEL_89;
      }

      v8 = v52;
      bufLen = strlen(v52);
    }
  }

LABEL_20:
  memset(&v51, 0, 512);
  v47 = 0;
  if (__CFProphylacticAutofsAccess)
  {
    v45 = open("/dev/autofs_nowait", 0);
  }

  else
  {
    v45 = -1;
  }

  v19 = opendir(v8);
  if (!v19)
  {
    if ((v18 & 1) == 0)
    {
      CFRelease(v11);
    }

    if (v45 != -1)
    {
      close(v45);
    }

LABEL_90:
    Mutable = 0;
    goto LABEL_91;
  }

  v20 = v19;
  v44 = v18;
  Mutable = CFArrayCreateMutable(v9, 0, &kCFTypeArrayCallBacks);
  v22 = 1;
  if (readdir_r(v20, &v51, &v47))
  {
    goto LABEL_73;
  }

  v42 = v11;
  v23 = v47;
  if (!v47)
  {
    goto LABEL_72;
  }

  v43 = 0;
  do
  {
    v24 = strlen(v23->d_name);
    if (v23->d_name[0] != 46 || v24 != 1 && (v24 != 2 || v23->d_name[1] != 46))
    {
      v25 = usedBufLen;
      if (usedBufLen <= v24)
      {
        if (usedBufLen < 1)
        {
          goto LABEL_52;
        }

        if (v23->d_name[v24 - 1] != 46)
        {
          d_name = v23->d_name;
          if (v17)
          {
            v27 = strchr(d_name, 46);
            if (!v27)
            {
              goto LABEL_69;
            }

            do
            {
              v28 = 0;
              v29 = v27;
              while (1)
              {
                v29 = strchr(v29, 46);
                if (!v29)
                {
                  break;
                }

                if (v17 == ++v28)
                {
                  v28 = v17;
                  break;
                }
              }

              if (v28 == v17)
              {
                v30 = v27;
              }

              else
              {
                v30 = 0;
              }

              v31 = strchr(v27, 46);
              if (!v31)
              {
                break;
              }

              v27 = v31;
            }

            while (!v30);
          }

          else
          {
            v30 = strrchr(d_name, 46);
          }

          if (v30)
          {
            if (buffer != 46)
            {
              ++v30;
            }

            if (strlen(v30) == v25 && !strncmp(v30, &buffer, v25))
            {
LABEL_52:
              if (!v7)
              {
                v43 = 1;
                v7 = CFURLCreateFromFileSystemRepresentation(v9, v8, bufLen, 1u);
                v23 = v47;
              }

              v32 = ((v23->d_type >> 1) | (v23->d_type << 7));
              v33 = v32 > 7;
              v34 = (1 << v32) & 0xA5;
              if (v33 || v34 == 0)
              {
                v36 = 0;
              }

              else if (v23->d_type == 4)
              {
                v36 = 1;
              }

              else
              {
                memset(&v49, 0, sizeof(v49));
                __strlcpy_chk();
                __strlcat_chk();
                __strlcat_chk();
                if (stat(v50, &v49))
                {
                  v37 = 0;
                }

                else
                {
                  v37 = (v49.st_mode & 0xF000) == 0x4000;
                }

                v36 = v37;
                v23 = v47;
              }

              v38 = CFURLCreateFromFileSystemRepresentationRelativeToBase(v9, v23->d_name, v23->d_namlen, v36, v7);
              CFArrayAppendValue(Mutable, v38);
              CFRelease(v38);
            }
          }
        }
      }
    }

LABEL_69:
    if (readdir_r(v20, &v51, &v47))
    {
      break;
    }

    v23 = v47;
  }

  while (v47);
  v22 = v43 == 0;
LABEL_72:
  v11 = v42;
LABEL_73:
  v39 = closedir(v20);
  if (v45 != -1)
  {
    close(v45);
  }

  if (v39)
  {
    CFRelease(Mutable);
    if (!v22)
    {
      CFRelease(v7);
    }

    if (v44)
    {
      goto LABEL_90;
    }

LABEL_89:
    CFRelease(v11);
    goto LABEL_90;
  }

  if ((v44 & 1) == 0)
  {
    CFRelease(v11);
  }

  if (!v22)
  {
    CFRelease(v7);
  }

LABEL_91:
  v40 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFAbsoluteTime CFRunLoopTimerGetNextFireDate(CFRunLoopTimerRef timer)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (CF_IS_OBJC(0x2FuLL, timer))
  {

    [(__CFRunLoopTimer *)timer _cffireTime];
  }

  else
  {
    pthread_mutex_lock((timer + 24));
    v3 = atomic_load(timer + 1);
    v4 = 0.0;
    if ((v3 & 8) != 0)
    {
      v4 = *(timer + 13);
    }

    pthread_mutex_unlock((timer + 24));
    return v4;
  }

  return result;
}

void CFSocketInvalidate(CFSocketRef s)
{
  v34 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketInvalidate_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  CFRetain(s);
  os_unfair_lock_lock(&__CFAllSocketsLock);
  pthread_mutex_lock((s + 24));
  v3 = atomic_load(s + 1);
  if ((v3 & 0x10) != 0)
  {
    v4 = atomic_load(s + 1);
    v5 = v4;
    do
    {
      atomic_compare_exchange_strong(s + 1, &v5, v4 & 0xFFFFFFFFFFFFFFEFLL);
      v6 = v5 == v4;
      v4 = v5;
    }

    while (!v6);
    v7 = atomic_load(s + 1);
    v8 = v7;
    do
    {
      atomic_compare_exchange_strong(s + 1, &v8, v7 & 0xFFFFFFFFFFFFFFBFLL);
      v6 = v8 == v7;
      v7 = v8;
    }

    while (!v6);
    v9 = atomic_load(s + 1);
    v10 = v9;
    do
    {
      atomic_compare_exchange_strong(s + 1, &v10, v9 & 0xFFFFFFFFFFFFFFDFLL);
      v6 = v10 == v9;
      v9 = v10;
    }

    while (!v6);
    os_unfair_lock_lock(&__CFActiveSocketsLock);
    v11 = __CFWriteSockets;
    v35.length = CFArrayGetCount(__CFWriteSockets);
    v35.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11, v35, s);
    if ((FirstIndexOfValue & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(__CFWriteSockets, FirstIndexOfValue & 0x7FFFFFFF);
      v13 = *(s + 38);
      if ((v13 & 0x80000000) == 0)
      {
        v14 = __CFWriteSocketsFds;
        if (v13 < 8 * CFDataGetLength(__CFWriteSocketsFds))
        {
          MutableBytePtr = CFDataGetMutableBytePtr(v14);
          if (__darwin_check_fd_set_overflow(v13, MutableBytePtr, 1))
          {
            if ((*&MutableBytePtr[4 * (v13 >> 5)] & (1 << v13)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v13, MutableBytePtr, 1))
              {
                *&MutableBytePtr[4 * (v13 >> 5)] &= ~(1 << v13);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v32 = 120;
                send(__CFWakeupSocketPair, &v32, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    v16 = __CFReadSockets;
    v36.length = CFArrayGetCount(__CFReadSockets);
    v36.location = 0;
    v17 = CFArrayGetFirstIndexOfValue(v16, v36, s);
    if ((v17 & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(__CFReadSockets, v17 & 0x7FFFFFFF);
      __CFReadSocketsTimeoutInvalid = 0;
      v18 = *(s + 38);
      if ((v18 & 0x80000000) == 0)
      {
        v19 = __CFReadSocketsFds;
        if (v18 < 8 * CFDataGetLength(__CFReadSocketsFds))
        {
          v20 = CFDataGetMutableBytePtr(v19);
          if (__darwin_check_fd_set_overflow(v18, v20, 1))
          {
            if ((*&v20[4 * (v18 >> 5)] & (1 << v18)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v18, v20, 1))
              {
                *&v20[4 * (v18 >> 5)] &= ~(1 << v18);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v33 = 115;
                send(__CFWakeupSocketPair, &v33, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    os_unfair_lock_unlock(&__CFActiveSocketsLock);
    CFDictionaryRemoveValue(__CFAllSockets, *(s + 38));
    if ((*(s + 16) & 0x80) != 0)
    {
      close(*(s + 38));
    }

    *(s + 38) = -1;
    v21 = *(s + 22);
    if (v21)
    {
      CFRelease(v21);
      *(s + 22) = 0;
    }

    v22 = *(s + 32);
    if (v22)
    {
      CFRelease(v22);
      *(s + 32) = 0;
    }

    v23 = *(s + 33);
    if (v23)
    {
      CFRelease(v23);
      *(s + 33) = 0;
    }

    *(s + 46) = 0;
    v24 = CFRetain(*(s + 25));
    CFRelease(*(s + 25));
    v25 = *(s + 24);
    *(s + 24) = 0;
    *(s + 25) = 0;
    v26 = *(s + 28);
    v27 = *(s + 30);
    *(s + 14) = 0u;
    *(s + 15) = 0u;
    pthread_mutex_unlock((s + 24));
    Count = CFArrayGetCount(v24);
    if (Count)
    {
      v29 = Count - 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v24, v29);
        CFRunLoopWakeUp(ValueAtIndex);
        --v29;
      }

      while (v29 != -1);
    }

    CFRelease(v24);
    if (v27)
    {
      v27(v26);
    }

    if (v25)
    {
      CFRunLoopSourceInvalidate(v25);
      CFRelease(v25);
    }
  }

  else
  {
    pthread_mutex_unlock((s + 24));
  }

  os_unfair_lock_unlock(&__CFAllSocketsLock);
  CFRelease(s);
  v31 = *MEMORY[0x1E69E9840];
}

void __CFSocketDeallocate(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 168) = 0;
  }

  v3 = *(a1 + 288);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 288) = 0;
  }

  v4 = *(a1 + 328);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 328) = 0;
  }

  *(a1 + 280) = 0;
  *(a1 + 272) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 296) = 0;
  *(a1 + 320) = 1;
  *(a1 + 324) = 0;
}

void deletionStreamCallback(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4, uint64_t a5)
{
  v25[5] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(fseventsQueue);
  os_unfair_lock_lock(&dirWatcherLock);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    v10 = &unk_1EA849000;
    do
    {
      if ((~*(a5 + 4 * v8) & 0x20200) == 0)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a4, v8);
        Value = CFDictionaryGetValue(dirWatcherTargets, ValueAtIndex);
        if (Value)
        {
          v13 = Value;
          v14 = v10;
          Count = CFArrayGetCount(Value);
          if (Count >= 1)
          {
            for (i = 0; i != Count; ++i)
            {
              *(CFArrayGetValueAtIndex(v13, i) + 141) = 0;
            }

            v9 = 1;
          }

          v27.location = 0;
          v27.length = Count;
          CFArrayAppendArray(Mutable, v13, v27);
          v10 = v14;
        }

        CFDictionaryRemoveValue(dirWatcherTargets, ValueAtIndex);
        v17 = v10[366];
        v26.length = CFArrayGetCount(v17);
        v26.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v17, v26, ValueAtIndex);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(v10[366], FirstIndexOfValue);
        }
      }

      ++v8;
    }

    while (v8 != a3);
    if (v9)
    {
      _onqueue_locked_CFPrefsRecreateFileWatcher();
    }
  }

  os_unfair_lock_unlock(&dirWatcherLock);
  v19 = CFArrayGetCount(Mutable);
  if (v19 >= 1)
  {
    v20 = v19;
    for (j = 0; j != v20; ++j)
    {
      v22 = CFArrayGetValueAtIndex(Mutable, j);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __deletionStreamCallback_block_invoke;
      v25[3] = &unk_1E6D81EC0;
      v25[4] = v22;
      [v22 lockedSync:v25];
    }
  }

  CFRelease(Mutable);
  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __CFAllocatorGetAllocator(uint64_t result)
{
  if (*(result + 128) != 939)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t __CFCharacterSetEqual(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v4 = v3;
  v5 = v2;
  v154 = *MEMORY[0x1E69E9840];
  v6 = atomic_load((v2 + 8));
  v7 = atomic_load((v3 + 8));
  v8 = atomic_load((v2 + 8));
  if ((v8 & 4) != 0)
  {
    v9 = atomic_load((v3 + 8));
    if ((v9 & 4) != 0 && *(v2 + 16) != *(v3 + 16))
    {
      goto LABEL_295;
    }
  }

  v10 = v7 ^ v6;
  v11 = *(v2 + 40);
  if (!v11 || !*(v11 + 8) && !*(v11 + 13))
  {
    v12 = atomic_load((v2 + 8));
    v13 = (v12 >> 4) & 7;
    if (v13 > 2)
    {
      if (v13 != 3 && v13 != 4 || *(v2 + 24))
      {
        goto LABEL_27;
      }
    }

    else if (v13 != 1 && v13 != 2 || *(v2 + 32))
    {
      goto LABEL_27;
    }

    v14 = *(v3 + 40);
    if (v14 && (*(v14 + 8) || *(v14 + 13)))
    {
      goto LABEL_27;
    }

    v15 = atomic_load((v3 + 8));
    v16 = (v15 >> 4) & 7;
    if (v16 > 2)
    {
      if (v16 != 3 && v16 != 4 || *(v3 + 24))
      {
        goto LABEL_27;
      }
    }

    else if (v16 != 1 && v16 != 2 || *(v3 + 32))
    {
      goto LABEL_27;
    }

    if ((v10 & 8) != 0)
    {
      goto LABEL_295;
    }
  }

LABEL_27:
  v17 = atomic_load((v2 + 8));
  v18 = atomic_load((v3 + 8));
  if (((v18 ^ v17) & 0x70) != 0 || (v19 = atomic_load((v2 + 8)), (v19 & 0x70) == 0x40))
  {
    v20 = *(v2 + 40);
    if (!v20 || !*(v20 + 8) && !*(v20 + 13))
    {
      v21 = atomic_load((v2 + 8));
      v22 = (v21 >> 4) & 7;
      if (v22 > 2)
      {
        if ((v22 == 3 || v22 == 4) && !*(v2 + 24))
        {
LABEL_123:
          v63 = *(v2 + 40);
          if (!v63 || !*(v63 + 8) && !*(v63 + 13))
          {
            v64 = atomic_load((v2 + 8));
            v65 = (v64 >> 4) & 7;
            if (v65 > 2)
            {
              if ((v65 == 3 || v65 == 4) && !*(v2 + 24))
              {
                goto LABEL_211;
              }
            }

            else if ((v65 == 1 || v65 == 2) && !*(v2 + 32))
            {
LABEL_211:
              v5 = v3;
            }
          }

          v108 = atomic_load(v5 + 1);
          if ((v108 & 0x70) != 0)
          {
            v109 = atomic_load(v5 + 1);
            if ((v109 & 0x70) == 0x10)
            {
              v110 = v5[4];
              if ((v10 & 8) != 0)
              {
                v111 = v110 == 1114112;
              }

              else
              {
                v111 = v110 == 0;
              }

LABEL_258:
              result = v111;
              goto LABEL_296;
            }

            v112 = v5[5];
            if (v112)
            {
              v113 = *(v112 + 13);
              v114 = *(v112 + 8);
              if (v113)
              {
                if (v114 != 131070)
                {
                  goto LABEL_295;
                }
              }

              else if (v114)
              {
                goto LABEL_295;
              }
            }

            v129 = atomic_load(v5 + 1);
            if ((v129 & 0x70) == 0x30)
            {
              v130 = v5[3];
              if (!v130)
              {
                goto LABEL_269;
              }
            }

            else
            {
              v130 = v153;
              __CFCSetGetBitmap(v5, v153);
            }

            if (v130 != -1)
            {
              v140 = 0;
              while (v140 != 2048)
              {
                if (v130->i32[v140++])
                {
                  goto LABEL_295;
                }
              }

LABEL_269:
              v131 = v5[5];
              if (v131 && *(v131 + 13))
              {
                v132 = 1;
                while (1)
                {
                  v133 = atomic_load(v5 + 1);
                  if ((v133 & 0x70) == 0x30)
                  {
                    v134 = v5[5];
                    if (v134 && *(v134 + 13))
                    {
                      v135 = 0;
                    }

                    else
                    {
                      v135 = -1;
                    }

                    result = __CFCSetIsEqualBitmap(v135, v153);
                    if (!result)
                    {
                      goto LABEL_296;
                    }
                  }

                  else
                  {
                    v136 = v5[5];
                    if (v136 && ((*(v136 + 8) >> v132) & 1) != 0 && *(v136 + 12) >= v132)
                    {
                      v137 = *(*v136 + 8 * v132 - 8);
                    }

                    else
                    {
                      v137 = 0;
                    }

                    __CFCSetGetBitmap(v137, v153);
                    if (v153 != -1)
                    {
                      v138 = 0;
                      while (v138 != 2048)
                      {
                        result = 0;
                        v139 = v153[0].i32[v138++];
                        if (v139 != -1)
                        {
                          goto LABEL_296;
                        }
                      }
                    }
                  }

                  ++v132;
                  result = 1;
                  if (v132 == 16)
                  {
                    goto LABEL_296;
                  }
                }
              }

LABEL_256:
              result = 1;
              goto LABEL_296;
            }
          }

LABEL_295:
          result = 0;
LABEL_296:
          v142 = *MEMORY[0x1E69E9840];
          return result;
        }
      }

      else if ((v22 == 1 || v22 == 2) && !*(v2 + 32))
      {
        goto LABEL_123;
      }
    }

    v23 = *(v3 + 40);
    if (!v23 || !*(v23 + 8) && !*(v23 + 13))
    {
      v24 = atomic_load((v3 + 8));
      v25 = (v24 >> 4) & 7;
      if (v25 > 2)
      {
        if ((v25 == 3 || v25 == 4) && !*(v3 + 24))
        {
          goto LABEL_123;
        }
      }

      else if ((v25 == 1 || v25 == 2) && !*(v3 + 32))
      {
        goto LABEL_123;
      }
    }

    v30 = atomic_load((v2 + 8));
    if ((v30 & 0x70) != 0)
    {
      v31 = atomic_load((v3 + 8));
      if ((v31 & 0x70) != 0)
      {
        v32 = atomic_load((v2 + 8));
        if ((v32 & 0x70) == 0x10 || (v33 = atomic_load((v3 + 8)), (v33 & 0x70) == 0x10))
        {
          v34 = atomic_load((v2 + 8));
          if ((v34 & 0x70) == 0x10)
          {
            v35 = v2;
          }

          else
          {
            v35 = v3;
          }

          if (v35 == v2)
          {
            v5 = v3;
          }

          v36 = *(v35 + 24);
          v37 = v36 + *(v35 + 32);
          v38 = atomic_load((v35 + 8));
          v39 = atomic_load(v5 + 1);
          if ((v39 & 0x70) == 0x30)
          {
            v40 = v5[3];
          }

          else
          {
            v40 = v153;
            __CFCSetGetBitmap(v5, v153);
          }

          v75 = (v38 >> 3) & 1;
          v76 = v37 - 1;
          if ((v36 & 0xFF0000) != 0)
          {
            if (v75)
            {
              v77 = -1;
            }

            else
            {
              v77 = 0;
            }

            result = __CFCSetIsEqualBitmap(v40, v77);
            if (!result)
            {
              goto LABEL_296;
            }

            v78 = v36;
            v79 = BYTE2(v36);
          }

          else
          {
            if ((v76 & 0xFF0000) != 0)
            {
              v80 = -1;
            }

            else
            {
              v80 = v37 - 1;
            }

            result = __CFCSetIsBitmapEqualToRange(v40, v36, v80, v75);
            if (!result)
            {
              goto LABEL_296;
            }

            v78 = 0;
            v79 = 1;
          }

          v81 = (v37 - 1);
          v82 = v5[5];
          if (v82)
          {
            LODWORD(v82) = *(v82 + 13) != 0;
          }

          v83 = 0;
          v84 = v82 ^ ((v38 & 0xF8) >> 3);
          v85 = v84 & 1;
          v86 = v84 ^ 1;
          v145 = v78;
          v87 = v78 != 0;
          if (v79 == BYTE2(v76))
          {
            v88 = v37 - 1;
          }

          else
          {
            v88 = -1;
          }

          v144 = v88;
          v146 = v86 << 63 >> 63;
          v147 = v84 << 63 >> 63;
          v151 = v84 & (v81 == 0xFFFF);
          v89 = v81 != 0xFFFF && v79 == BYTE2(v76);
          v149 = v86 | v87 | v89;
          v90 = v79 - 1;
          v91 = BYTE2(v76) - 1;
          while (1)
          {
            v92 = v83 + 1;
            v93 = v5[5];
            if (!v93 || ((*(v93 + 8) >> (v83 + 1)) & 1) == 0 || *(v93 + 12) < v92 || (v94 = *(*v93 + 8 * v83)) == 0)
            {
              if (v92 < v79 || v92 > BYTE2(v76))
              {
                if (v85)
                {
                  goto LABEL_295;
                }
              }

              else if (v92 <= v79 || v92 >= BYTE2(v76))
              {
                if (v90 == v83)
                {
                  if (v149)
                  {
                    goto LABEL_295;
                  }
                }

                else if (!((v91 != v83) | v151 & 1))
                {
                  goto LABEL_295;
                }
              }

              else if ((v85 & 1) == 0)
              {
                goto LABEL_295;
              }

              goto LABEL_179;
            }

            v95 = atomic_load((v94 + 8));
            if ((v95 & 0x70) == 0x30)
            {
              v96 = *(v94 + 24);
            }

            else
            {
              v96 = v153;
              __CFCSetGetBitmap(v94, v153);
            }

            if (v92 < v79 || v92 > BYTE2(v76))
            {
              break;
            }

            if (v92 > v79 && v92 < BYTE2(v76))
            {
              v97 = v96;
              v98 = v146;
              goto LABEL_193;
            }

            if (v90 == v83)
            {
              v99 = v145;
              v100 = v144;
              v101 = v96;
            }

            else
            {
              if (v91 != v83)
              {
                goto LABEL_179;
              }

              v100 = v76;
              v101 = v96;
              v99 = 0;
            }

            result = __CFCSetIsBitmapEqualToRange(v101, v99, v100, v85);
            if (!result)
            {
              goto LABEL_296;
            }

LABEL_179:
            if (++v83 == 15)
            {
              goto LABEL_256;
            }
          }

          v97 = v96;
          v98 = v147;
LABEL_193:
          result = __CFCSetIsEqualBitmap(v97, v98);
          if (!result)
          {
            goto LABEL_296;
          }

          goto LABEL_179;
        }

        v102 = atomic_load((v2 + 8));
        v103 = v102 & 0x70;
        v104 = atomic_load((v3 + 8));
        v105 = v104 & 0x70;
        if (v103 == 48 && v105 == 48)
        {
          v106 = *(v2 + 24);
          v107 = *(v3 + 24);
        }

        else
        {
          if (v103 == 48 || v105 == 48)
          {
            if (v105 == 48)
            {
              v143 = v2;
            }

            else
            {
              v143 = v3;
            }

            if (v105 == 48)
            {
              v5 = v3;
            }

            __CFCSetGetBitmap(v143, v153);
            result = __CFCSetIsEqualBitmap(v5[3], v153);
            if (!result)
            {
              goto LABEL_296;
            }

            v4 = v143;
LABEL_304:
            result = __CFCSetIsEqualAnnex(v5, v4);
            goto LABEL_296;
          }

          __CFCSetGetBitmap(v2, v153);
          __CFCSetGetBitmap(v4, __b);
          v106 = v153;
          v107 = __b;
        }

        result = __CFCSetIsEqualBitmap(v106, v107);
        if (!result)
        {
          goto LABEL_296;
        }

        goto LABEL_304;
      }
    }

    v41 = atomic_load((v2 + 8));
    if ((v41 & 0x70) != 0)
    {
      v42 = v3;
    }

    else
    {
      v42 = v2;
    }

    if (v42 == v2)
    {
      v5 = v3;
    }

    v43 = atomic_load(v5 + 1);
    if ((v43 & 0x70) == 0x10)
    {
      v44 = 0;
      v45 = *(v5 + 6);
      v46 = v45 + *(v5 + 8);
      v47 = -v46;
      v48 = v46 - 1;
      v49 = (BYTE2(v45) ^ ((v46 - 1) >> 16)) == 0;
      if (v49)
      {
        v50 = v45;
      }

      else
      {
        v50 = 0;
      }

      v150 = v50;
      if (v49)
      {
        v51 = v48;
      }

      else
      {
        v51 = -1;
      }

      v148 = v51;
      v28 = v47 == 0;
      v52 = v47 != 0;
      v53 = !v28 || v49 && v45 != 0;
      v54 = v49 && v52;
      if (v45)
      {
        v55 = 1;
      }

      else
      {
        v55 = v54;
      }

      while (1)
      {
        BitmapForPlane = CFUniCharGetBitmapForPlane(*(v42 + 24), v44, v153, (v10 & 8) == 0);
        if (v44 < BYTE2(v45) || v44 > BYTE2(v48))
        {
          if (BitmapForPlane)
          {
            if (BitmapForPlane == 1)
            {
              goto LABEL_295;
            }
          }

          else
          {
            if (v153 == -1)
            {
              goto LABEL_295;
            }

            v59 = 0;
            while (v59 != 2048)
            {
              if (v153[0].i32[v59++])
              {
                goto LABEL_295;
              }
            }
          }
        }

        else if (v44 <= BYTE2(v45) || v44 >= BYTE2(v48))
        {
          if (BitmapForPlane == 1)
          {
            if (v44 == BYTE2(v45))
            {
              if (v55)
              {
                goto LABEL_295;
              }
            }

            else if (v53)
            {
              goto LABEL_295;
            }
          }

          else
          {
            if (BitmapForPlane == 255)
            {
              goto LABEL_295;
            }

            if (v44 == BYTE2(v45))
            {
              v57 = v45;
              v58 = v148;
            }

            else
            {
              v57 = v150;
              v58 = v48;
            }

            result = __CFCSetIsBitmapEqualToRange(v153, v57, v58, 0);
            if (!result)
            {
              goto LABEL_296;
            }
          }
        }

        else if (BitmapForPlane)
        {
          if (BitmapForPlane == 255)
          {
            goto LABEL_295;
          }
        }

        else if (v153 != -1)
        {
          v61 = 0;
          while (v61 != 2048)
          {
            result = 0;
            v62 = v153[0].i32[v61++];
            if (v62 != -1)
            {
              goto LABEL_296;
            }
          }
        }

        ++v44;
        result = 1;
        if (v44 == 16)
        {
          goto LABEL_296;
        }
      }
    }

    v66 = *(v42 + 24);
    v67 = atomic_load((v42 + 8));
    v68 = CFUniCharGetBitmapForPlane(v66, 0, v153, (v67 >> 3) & 1);
    v69 = atomic_load(v5 + 1);
    v70 = v69 & 0x70;
    if (v68)
    {
      v71 = v68;
      if (v70 == 48)
      {
        if (v68 == 1)
        {
          v72 = -1;
        }

        else
        {
          v72 = 0;
        }

        v73 = v5[3];
      }

      else
      {
        __CFCSetGetBitmap(v5, v153);
        if (v71 == 1)
        {
          v72 = -1;
        }

        else
        {
          v72 = 0;
        }

        v73 = v153;
      }
    }

    else if (v70 == 48)
    {
      v73 = v5[3];
      v72 = v153;
    }

    else
    {
      __CFCSetGetBitmap(v5, __b);
      v72 = v153;
      v73 = __b;
    }

    result = __CFCSetIsEqualBitmap(v72, v73);
    if (!result)
    {
      goto LABEL_296;
    }

    v116 = atomic_load((v42 + 8));
    v117 = v5[5];
    if (v117)
    {
      v118 = *(v117 + 13) != 0;
    }

    else
    {
      v118 = 0;
    }

    v119 = 0;
    v120 = (v116 >> 3) & 1;
    while (1)
    {
      v121 = v119 + 1;
      v122 = CFUniCharGetBitmapForPlane(*(v42 + 24), v119 + 1, v153, v120 ^ v118);
      v123 = v5[5];
      if (v123 && ((*(v123 + 8) >> v121) & 1) != 0 && *(v123 + 12) >= v121)
      {
        result = *(*v123 + 8 * v119);
        if (!v122)
        {
LABEL_246:
          if (!result)
          {
            goto LABEL_296;
          }

          v128 = atomic_load((result + 8));
          if ((v128 & 0x70) == 0x30)
          {
            v126 = *(result + 24);
            v127 = v153;
          }

          else
          {
            __CFCSetGetBitmap(result, __b);
            v127 = v153;
            v126 = __b;
          }

LABEL_254:
          result = __CFCSetIsEqualBitmap(v127, v126);
          if (!result)
          {
            goto LABEL_296;
          }

          goto LABEL_255;
        }
      }

      else
      {
        result = 0;
        if (!v122)
        {
          goto LABEL_246;
        }
      }

      if (result)
      {
        v124 = atomic_load((result + 8));
        if ((v124 & 0x70) == 0x30)
        {
          if (v122 == 1)
          {
            v125 = -1;
          }

          else
          {
            v125 = 0;
          }

          v126 = *(result + 24);
          v127 = v125;
        }

        else
        {
          __CFCSetGetBitmap(result, v153);
          if (v122 == 1)
          {
            v127 = -1;
          }

          else
          {
            v127 = 0;
          }

          v126 = v153;
        }

        goto LABEL_254;
      }

      if (v122 == 1)
      {
        goto LABEL_295;
      }

LABEL_255:
      if (++v119 == 15)
      {
        goto LABEL_256;
      }
    }
  }

  v26 = atomic_load((v2 + 8));
  v27 = (v26 >> 4) & 7;
  if (v27 <= 1)
  {
    if (!v27)
    {
      v111 = (v10 & 8) == 0 && *(v2 + 24) == *(v3 + 24);
      goto LABEL_258;
    }

    if (*(v2 + 24) == *(v3 + 24) && *(v2 + 32))
    {
      v28 = (v10 & 8) != 0 || *(v3 + 32) == 0;
      result = !v28;
      goto LABEL_296;
    }

    goto LABEL_295;
  }

  if (v27 == 2)
  {
    if ((v10 & 8) != 0)
    {
      goto LABEL_295;
    }

    v115 = *(v2 + 32);
    if (*(v3 + 32) != v115 || memcmp(*(v2 + 24), *(v3 + 24), 2 * v115))
    {
      goto LABEL_295;
    }
  }

  else if (v27 == 3)
  {
    result = __CFCSetIsEqualBitmap(*(v2 + 24), *(v3 + 24));
    if (!result)
    {
      goto LABEL_296;
    }
  }

  v74 = *MEMORY[0x1E69E9840];

  return __CFCSetIsEqualAnnex(v5, v4);
}

uint64_t __CFCSetIsEqualBitmap(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (a1 && a2)
    {
      if (a1 == -1)
      {
        for (i = 0; i != 0x2000; i += 4)
        {
          v9 = *(a2 + i);
          if (v9 != -1)
          {
            return 0;
          }
        }
      }

      else if (a2 == -1)
      {
        for (j = 0; j != 0x2000; j += 4)
        {
          v11 = *(a1 + j);
          if (v11 != -1)
          {
            return 0;
          }
        }
      }

      else
      {
        for (k = 0; k != 0x2000; k += 4)
        {
          v3 = *(a1 + k);
          v4 = *(a2 + k);
          if (v3 != v4)
          {
            return 0;
          }
        }
      }
    }

    else if (a1 | a2)
    {
      if (a2)
      {
        v5 = a2;
      }

      else
      {
        v5 = a1;
      }

      if (v5 == -1)
      {
        return 0;
      }

      for (m = 0; m != 0x2000; m += 4)
      {
        if (*(v5 + m))
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

void __CFBinaryHeapDeallocate(unint64_t *a1)
{
  v2 = CFGetAllocator(a1);
  CFBinaryHeapRemoveAllValues(a1);
  v3 = atomic_load(a1 + 1);
  if ((v3 & 0xC) == 4)
  {
    v4 = a1[14];

    CFAllocatorDeallocate(v2, v4);
  }
}

void CFBinaryHeapRemoveAllValues(CFBinaryHeapRef heap)
{
  v2 = *(heap + 2);
  if (*(heap + 6))
  {
    v3 = v2 < 1;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = 0;
    do
    {
      v5 = *(heap + 6);
      v6 = CFGetAllocator(heap);
      v5(v6, *(*(heap + 14) + 8 * v4++));
    }

    while (v2 != v4);
  }

  *(heap + 2) = 0;
}

uint64_t __CFMessagePortCreateRemote(__objc2_class **a1, const __CFString *a2, int a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  memset(&context, 0, sizeof(context));
  *special_port = 0;
  ptr = 0;
  SanitizedStringName = __CFMessagePortCreateSanitizedStringName(a2, &ptr);
  if (!SanitizedStringName)
  {
    goto LABEL_19;
  }

  v8 = SanitizedStringName;
  os_unfair_lock_lock(&__CFAllMessagePortsLock);
  if (!a3 && (value = 0, __CFAllRemoteMessagePorts) && CFDictionaryGetValueIfPresent(__CFAllRemoteMessagePorts, v8, &value))
  {
    CFRetain(value);
    os_unfair_lock_unlock(&__CFAllMessagePortsLock);
    CFRelease(v8);
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
    IsValid = CFMessagePortIsValid(value);
    v14 = value;
    if (IsValid)
    {
      goto LABEL_25;
    }
  }

  else
  {
    os_unfair_lock_unlock(&__CFAllMessagePortsLock);
    Instance = _CFRuntimeCreateInstance(a1, 0x23uLL, 104, 0, v9, v10, v11, v12);
    v14 = Instance;
    if (!Instance)
    {
      CFRelease(v8);
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
      goto LABEL_25;
    }

    v15 = atomic_load((Instance + 8));
    v16 = v15;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v16, v15 & 0xFFFFFFFFFFFFFFFELL);
      v17 = v16 == v15;
      v15 = v16;
    }

    while (!v17);
    v18 = atomic_load((Instance + 8));
    v19 = v18;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v19, v18 & 0xFFFFFFFFFFFFFFFDLL);
      v17 = v19 == v18;
      v18 = v19;
    }

    while (!v17);
    v20 = atomic_load((Instance + 8));
    v21 = v20;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v21, v20 | 4);
      v17 = v21 == v20;
      v20 = v21;
    }

    while (!v17);
    *(Instance + 112) = 0;
    *(Instance + 16) = v8;
    *(Instance + 32) = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    if (a3)
    {
      *(v14 + 44) = a4;
    }

    context.version = 0;
    context.info = v14;
    memset(&context.retain, 0, 24);
    task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port[1]);
    if (bootstrap_look_up2())
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
    }

    else
    {
      v26 = CFMachPortCreateWithPort(a1, special_port[0], __CFMessagePortDummyCallback, &context, 0);
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, ptr);
      if (v26)
      {
        *(v14 + 24) = v26;
        v27 = atomic_load((v14 + 8));
        v28 = v27;
        do
        {
          atomic_compare_exchange_strong((v14 + 8), &v28, v27 | 1);
          v17 = v28 == v27;
          v27 = v28;
        }

        while (!v17);
        os_unfair_lock_lock(&__CFAllMessagePortsLock);
        if (!a3)
        {
          value = 0;
          if (!__CFAllRemoteMessagePorts)
          {
            goto LABEL_35;
          }

          if (CFDictionaryGetValueIfPresent(__CFAllRemoteMessagePorts, v8, &value))
          {
            CFRetain(value);
            os_unfair_lock_unlock(&__CFAllMessagePortsLock);
            CFRelease(v14);
            v14 = value;
            goto LABEL_25;
          }

          Mutable = __CFAllRemoteMessagePorts;
          if (!__CFAllRemoteMessagePorts)
          {
LABEL_35:
            Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, 0);
            __CFAllRemoteMessagePorts = Mutable;
          }

          CFDictionaryAddValue(Mutable, v8, v14);
        }

        CFRetain(v26);
        os_unfair_lock_unlock(&__CFAllMessagePortsLock);
        CFMachPortSetInvalidationCallBack(v26, __CFMessagePortInvalidationCallBack);
        if (CFMachPortIsValid(v26))
        {
          CFRelease(v26);
          goto LABEL_25;
        }

        CFRelease(v14);
        v22 = v26;
        goto LABEL_18;
      }
    }
  }

  v22 = v14;
LABEL_18:
  CFRelease(v22);
LABEL_19:
  v14 = 0;
LABEL_25:
  v24 = *MEMORY[0x1E69E9840];
  return v14;
}

void _CFXPreferencesReplaceValuesInSourceWithBundleIDWithContainer()
{
  if ((_CFPrefsCurrentProcessIsCFPrefsD() & 1) == 0)
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    [qword_1ED40BE18 copyPrefs];
  }

  OUTLINED_FUNCTION_10_1();
  [_CFXPreferences replaceValuesInSourceForIdentifier:v0 user:? host:? container:? withValues:?];
}

CFStringRef __CFMessagePortCreateSanitizedStringName(const __CFString *a1, UInt8 **a2)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  usedBufLen[0] = 0;
  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 129, 3408282873, 0);
  v10.length = CFStringGetLength(a1);
  v10.location = 0;
  CFStringGetBytes(a1, v10, 0x8000100u, 0, 0, Typed, 128, usedBufLen);
  v5 = usedBufLen[0];
  Typed[usedBufLen[0]] = 0;
  if (strlen(Typed) != v5)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    Typed = 0;
    v6 = 0;
    if (!a2)
    {
      goto LABEL_6;
    }

LABEL_5:
    *a2 = Typed;
    goto LABEL_6;
  }

  v6 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, Typed, v5, 0x8000100u, 0);
  if (a2)
  {
    goto LABEL_5;
  }

  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
LABEL_6:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void __CFMessagePortDeallocate(CFMessagePortRef ms)
{
  v2 = atomic_load(ms + 1);
  v3 = v2;
  do
  {
    atomic_compare_exchange_strong(ms + 1, &v3, v2 | 8);
    v4 = v3 == v2;
    v2 = v3;
  }

  while (!v4);
  CFMessagePortInvalidate(ms);
  v5 = *(ms + 4);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(ms + 2);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(ms + 3);
  if (v7)
  {
    Port = CFMachPortGetPort(v7);
    v9 = atomic_load(ms + 1);
    _cfmp_record_deallocation(1u, Port, (v9 & 2) != 0, (v9 & 2) != 0);
    CFMachPortInvalidate(*(ms + 3));
    CFRelease(*(ms + 3));
  }

  os_unfair_lock_lock(&__CFAllMessagePortsLock);
  if (__CFAllRemoteMessagePorts)
  {
    Count = CFDictionaryGetCount(__CFAllRemoteMessagePorts);
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0x2004093837F09, 0);
    CFDictionaryGetKeysAndValues(__CFAllRemoteMessagePorts, 0, Typed);
    if (Count < 1)
    {
      os_unfair_lock_unlock(&__CFAllMessagePortsLock);
      if (!Typed)
      {
        return;
      }
    }

    else
    {
      v12 = Typed;
      v13 = Count;
      do
      {
        v14 = *v12++;
        CFRetain(v14);
        --v13;
      }

      while (v13);
      os_unfair_lock_unlock(&__CFAllMessagePortsLock);
      v15 = Typed;
      do
      {
        CFMessagePortIsValid(*v15);
        v16 = *v15++;
        CFRelease(v16);
        --Count;
      }

      while (Count);
    }

    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }

  else
  {

    os_unfair_lock_unlock(&__CFAllMessagePortsLock);
  }
}

void CFMessagePortInvalidate(CFMessagePortRef ms)
{
  if (ms)
  {
    __CFCheckCFInfoPACSignature(ms);
    v2 = _CFGetNonObjCTypeID(ms);
    if (v2 != 35)
    {
      _CFAssertMismatchedTypeID(0x23uLL, v2);
    }

    v3 = atomic_load(ms + 1);
    if ((v3 & 8) == 0)
    {
      CFRetain(ms);
    }

    os_unfair_lock_lock(ms + 28);
    v4 = atomic_load(ms + 1);
    if (v4)
    {
      v5 = *(ms + 8);
      if (v5)
      {
        dispatch_source_cancel(*(ms + 8));
        *(ms + 8) = 0;
        *(ms + 9) = 0;
      }

      v6 = *(ms + 6);
      v7 = *(ms + 7);
      v8 = *(ms + 10);
      v9 = *(ms + 11);
      v11 = *(ms + 2);
      v10 = *(ms + 3);
      v12 = atomic_load(ms + 1);
      v13 = v12;
      do
      {
        atomic_compare_exchange_strong(ms + 1, &v13, v12 & 0xFFFFFFFFFFFFFFFELL);
        v14 = v13 == v12;
        v12 = v13;
      }

      while (!v14);
      v15 = atomic_load(ms + 1);
      if ((v15 & 4) != 0)
      {
        v16 = 0;
      }

      else
      {
        v16 = *(ms + 16);
        *(ms + 16) = 0;
      }

      *(ms + 3) = 0;
      *(ms + 10) = 0;
      *(ms + 6) = 0;
      *(ms + 7) = 0;
      os_unfair_lock_unlock(ms + 28);
      os_unfair_lock_lock(&__CFAllMessagePortsLock);
      if (!*(ms + 11) && v11)
      {
        v17 = atomic_load(ms + 1);
        v18 = (v17 & 4) != 0 ? &__CFAllRemoteMessagePorts : &__CFAllLocalMessagePorts;
        if (*v18)
        {
          v19 = atomic_load(ms + 1);
          if ((v19 & 4) != 0)
          {
            v20 = &__CFAllRemoteMessagePorts;
          }

          else
          {
            v20 = &__CFAllLocalMessagePorts;
          }

          CFDictionaryRemoveValue(*v20, v11);
        }
      }

      os_unfair_lock_unlock(&__CFAllMessagePortsLock);
      if (v9)
      {
        v9(ms, v16);
      }

      v21 = atomic_load(ms + 1);
      if ((v21 & 4) == 0)
      {
        v22 = *(ms + 18);
        if (v22)
        {
          v22(v16);
        }
      }

      if (v7)
      {
        CFRunLoopSourceInvalidate(v7);
        CFRelease(v7);
      }

      if (v6)
      {
        CFMachPortInvalidate(v6);
        CFRelease(v6);
      }

      if (v10)
      {
        Port = CFMachPortGetPort(v10);
        v24 = atomic_load(ms + 1);
        if ((v24 & 4) != 0)
        {
          _cfmp_record_deallocation(1u, Port, 1, 0);
        }

        CFMachPortSetInvalidationCallBack(v10, 0);
        v25 = atomic_load(ms + 1);
        _cfmp_record_deallocation(1u, Port, (v25 & 2) != 0, (v25 & 2) != 0);
        CFMachPortInvalidate(v10);
        CFRelease(v10);
      }

      if (v8)
      {
        if (v5)
        {
          dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
        }

        dispatch_release(v8);
      }
    }

    else
    {
      os_unfair_lock_unlock(ms + 28);
    }

    v26 = atomic_load(ms + 1);
    if ((v26 & 8) == 0)
    {

      CFRelease(ms);
    }
  }
}

id *__exceptionPreprocess(id *a1)
{
  if (objectIsKindOfClass(a1, NSException))
  {
    v2 = a1[4];
    if (v2)
    {
      if ([a1[4] objectForKey:@"callStackReturnAddresses"] || objc_msgSend(v2, "objectForKey:", @"callStackSymbols"))
      {
        return a1;
      }
    }

    else
    {
      __CFLookUpClass("NSMutableDictionary");
      v2 = objc_opt_new();
      a1[4] = v2;
    }

    if (([objc_msgSend(objc_msgSend(a1 "userInfo")] & 1) == 0)
    {
      v3 = __CFLookUpClass("NSThread");
      v4 = [(objc_class *)v3 callStackReturnAddresses];
      v5 = [(objc_class *)v3 callStackSymbols];
      if (v4)
      {
        [v2 setObject:v4 forKey:@"callStackReturnAddresses"];
      }

      if (v5)
      {
        [v2 setObject:v5 forKey:@"callStackSymbols"];
      }
    }
  }

  return a1;
}

uint64_t objectIsKindOfClass(void *a1, objc_class *a2)
{
  if (a1)
  {
    v3 = a1;
    Class = object_getClass(a1);
    if (class_respondsToSelector(Class, sel_isKindOfClass_))
    {
      LOBYTE(a1) = objc_opt_isKindOfClass();
    }

    else
    {
      Superclass = object_getClass(v3);
      for (LOBYTE(a1) = Superclass != 0; Superclass != a2 && Superclass; LOBYTE(a1) = Superclass != 0)
      {
        Superclass = class_getSuperclass(Superclass);
      }
    }
  }

  return a1 & 1;
}

CFRunLoopSourceRef CFSocketCreateRunLoopSource(CFAllocatorRef allocator, CFSocketRef s, CFIndex order)
{
  v15 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketCreateRunLoopSource_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v6 = _CFGetNonObjCTypeID(s);
  if (v6 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v6);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));
  v7 = atomic_load(s + 1);
  if ((v7 & 0x10) != 0)
  {
    v9 = *(s + 24);
    if (v9)
    {
      IsValid = CFRunLoopSourceIsValid(v9);
      v11 = *(s + 24);
      if (IsValid)
      {
        if (v11)
        {
LABEL_16:
          CFRetain(v11);
          v8 = *(s + 24);
          goto LABEL_17;
        }
      }

      else
      {
        CFRelease(v11);
        *(s + 24) = 0;
      }
    }

    context.version = 0;
    context.info = s;
    context.retain = CFRetain;
    context.release = CFRelease;
    context.copyDescription = CFCopyDescription;
    context.equal = CFEqual;
    context.hash = CFHash;
    context.schedule = __CFSocketSchedule;
    context.cancel = __CFSocketCancel;
    context.perform = __CFSocketPerformV0;
    v11 = CFRunLoopSourceCreate(allocator, order, &context);
    *(s + 24) = v11;
    goto LABEL_16;
  }

  v8 = 0;
LABEL_17:
  pthread_mutex_unlock((s + 24));
  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

Boolean CFRunLoopSourceIsValid(CFRunLoopSourceRef source)
{
  __CFCheckCFInfoPACSignature(source);
  v2 = _CFGetNonObjCTypeID(source);
  if (v2 != 46)
  {
    _CFAssertMismatchedTypeID(0x2EuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v3 = atomic_load(source + 1);
  return (v3 >> 3) & 1;
}

uint64_t __CFSocketCancel(uint64_t a1, const void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 24));
  v4 = *(a1 + 184) - 1;
  *(a1 + 184) = v4;
  if (!v4)
  {
    os_unfair_lock_lock(&__CFActiveSocketsLock);
    v5 = __CFWriteSockets;
    v23.length = CFArrayGetCount(__CFWriteSockets);
    v23.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v5, v23, a1);
    if ((FirstIndexOfValue & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(__CFWriteSockets, FirstIndexOfValue & 0x7FFFFFFF);
      v7 = *(a1 + 152);
      if ((v7 & 0x80000000) == 0)
      {
        v8 = __CFWriteSocketsFds;
        if (v7 < 8 * CFDataGetLength(__CFWriteSocketsFds))
        {
          MutableBytePtr = CFDataGetMutableBytePtr(v8);
          if (__darwin_check_fd_set_overflow(v7, MutableBytePtr, 1))
          {
            if ((*&MutableBytePtr[4 * (v7 >> 5)] & (1 << v7)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v7, MutableBytePtr, 1))
              {
                *&MutableBytePtr[4 * (v7 >> 5)] &= ~(1 << v7);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v20 = 120;
                send(__CFWakeupSocketPair, &v20, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    v10 = __CFReadSockets;
    v24.length = CFArrayGetCount(__CFReadSockets);
    v24.location = 0;
    v11 = CFArrayGetFirstIndexOfValue(v10, v24, a1);
    if ((v11 & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(__CFReadSockets, v11 & 0x7FFFFFFF);
      __CFReadSocketsTimeoutInvalid = 0;
      v12 = *(a1 + 152);
      if ((v12 & 0x80000000) == 0)
      {
        v13 = __CFReadSocketsFds;
        if (v12 < 8 * CFDataGetLength(__CFReadSocketsFds))
        {
          v14 = CFDataGetMutableBytePtr(v13);
          if (__darwin_check_fd_set_overflow(v12, v14, 1))
          {
            if ((*&v14[4 * (v12 >> 5)] & (1 << v12)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v12, v14, 1))
              {
                *&v14[4 * (v12 >> 5)] &= ~(1 << v12);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v21 = 115;
                send(__CFWakeupSocketPair, &v21, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    os_unfair_lock_unlock(&__CFActiveSocketsLock);
  }

  v15 = *(a1 + 200);
  if (v15)
  {
    MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, *(a1 + 200));
    v25.length = CFArrayGetCount(MutableCopy);
    v25.location = 0;
    v17 = CFArrayGetFirstIndexOfValue(MutableCopy, v25, a2);
    if ((v17 & 0x80000000) == 0)
    {
      CFArrayRemoveValueAtIndex(MutableCopy, v17 & 0x7FFFFFFF);
    }

    *(a1 + 200) = MutableCopy;
    CFRelease(v15);
  }

  result = pthread_mutex_unlock((a1 + 24));
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStorageFindByte(char *cf, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6, int a7)
{
  v9 = a2;
  v10 = cf;
  if ((*(a2 + 13) & 1) == 0)
  {
    while (1)
    {
      v12 = a3;
      v14 = v9 + 16;
      v13 = *(v9 + 16);
      v15 = a3 < *v13;
      a3 -= *v13;
      if (v15)
      {
        break;
      }

      v13 = *(v9 + 24);
      if (a3 < *v13)
      {
        v16 = 1;
LABEL_7:
        v9 = v13;
        if (a7)
        {
          goto LABEL_10;
        }

        goto LABEL_48;
      }

      v9 = *(v9 + 32);
      v16 = 2;
      a3 -= *v13;
      if (a7)
      {
LABEL_10:
        if (*(v9 + 12) == 1)
        {
          if (*(v9 + 8) == 1)
          {
            *(v9 + 12) = 0;
          }

          else
          {
            v17 = CFGetAllocator(v10);
            Node = __CFStorageCreateNode(v17, v10, *(v9 + 13), *v9);
            v19 = Node;
            if (*(v9 + 13) == 1)
            {
              v20 = *(v9 + 24);
              if (v20)
              {
                v21 = *Node;
                if (*Node <= *MEMORY[0x1E69E9AC8] / 2)
                {
                  v29 = v21 + 63;
                  if (v21 < -63)
                  {
                    v29 = v21 + 126;
                  }

                  v23 = v29 & 0xFFFFFFFFFFFFFFC0;
                }

                else
                {
                  v22 = (v21 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
                  if (*(v10 + 17) >= v22)
                  {
                    v23 = v22;
                  }

                  else
                  {
                    v23 = *(v10 + 17);
                  }
                }

                if (v23 > Node[2])
                {
                  pthread_mutex_lock((cf + 32));
                  if (v23 > v19[2])
                  {
                    v19[3] = __CFSafelyReallocateWithAllocatorTyped(v17, v19[3], v23, 864523722, 0, 0);
                    if (__CFOASafe == 1)
                    {
                      __CFSetLastAllocationEventName();
                    }

                    v19[2] = v23;
                  }

                  pthread_mutex_unlock((cf + 32));
                  v20 = *(v9 + 24);
                  v21 = *v19;
                }

                memmove(v19[3], v20, v21);
                v10 = cf;
              }
            }

            else
            {
              v24 = *(v9 + 16);
              if (*(v24 + 8))
              {
                atomic_fetch_add_explicit((v24 + 8), 1u, memory_order_relaxed);
              }

              Node[2] = v24;
              v25 = *(v9 + 24);
              if (v25)
              {
                if (*(v25 + 8))
                {
                  atomic_fetch_add_explicit((v25 + 8), 1u, memory_order_relaxed);
                }

                Node[3] = v25;
              }

              v26 = *(v9 + 32);
              if (v26)
              {
                if (*(v26 + 8))
                {
                  atomic_fetch_add_explicit((v26 + 8), 1u, memory_order_relaxed);
                }

                Node[4] = v26;
              }

              if (*(v9 + 12) == 1)
              {
                *(Node[2] + 12) = 1;
                v27 = Node[3];
                if (v27)
                {
                  *(v27 + 12) = 1;
                }

                v28 = Node[4];
                if (v28)
                {
                  *(v28 + 12) = 1;
                }
              }
            }

            *(v14 + 8 * v16) = v19;
            if (*(v9 + 8) && atomic_fetch_add_explicit((v9 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
            {
              __CFStorageDeallocateNode(v10, v9);
            }

            v9 = v19;
          }
        }
      }

LABEL_48:
      a4 = a4 + v12 - a3;
      if (*(v9 + 13))
      {
        goto LABEL_49;
      }
    }

    v16 = 0;
    a3 = v12;
    goto LABEL_7;
  }

LABEL_49:
  v30 = *v9;
  *a6 = a4;
  a6[1] = v30;
  *a5 = v9;
  v31 = CFGetAllocator(v10);
  v32 = *v9;
  if (*v9 <= *MEMORY[0x1E69E9AC8] / 2)
  {
    v35 = v32 + 63;
    v15 = v32 < -63;
    v36 = v32 + 126;
    if (!v15)
    {
      v36 = v35;
    }

    v34 = v36 & 0xFFFFFFFFFFFFFFC0;
  }

  else
  {
    v33 = (v32 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    if (*(v10 + 17) >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = *(v10 + 17);
    }
  }

  if (v34 > *(v9 + 16))
  {
    pthread_mutex_lock((v10 + 32));
    if (v34 > *(v9 + 16))
    {
      *(v9 + 24) = __CFSafelyReallocateWithAllocatorTyped(v31, *(v9 + 24), v34, 864523722, 0, 0);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      *(v9 + 16) = v34;
    }

    pthread_mutex_unlock((v10 + 32));
  }

  return *(v9 + 24) + a3;
}

uint64_t createPair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  pthread_mutex_lock(&CFNetworkSupport);
  if ((dword_1EA846F70 & 1) == 0)
  {
    initializeCFNetworkSupport();
  }

  pthread_mutex_unlock(&CFNetworkSupport);
  v14 = off_1EA846F78;

  return (v14)(a1, a2, a3, a4, a5, a6, a7);
}

Boolean CFReadStreamSetProperty(CFReadStreamRef stream, CFStreamPropertyKey propertyName, CFTypeRef propertyValue)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    return [(__CFReadStream *)stream setProperty:propertyValue forKey:propertyName];
  }

  v7 = *(*(stream + 6) + 104);
  if (!v7)
  {
    return 0;
  }

  *(stream + 2) |= 0x40uLL;
  result = v7(stream, propertyName, propertyValue, *(stream + 5));
  *(stream + 2) &= ~0x40uLL;
  return result;
}

void __CFSocketManager(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  pthread_setname_np("com.apple.CFSocket.private");
  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 4, 0x100004052888210, 0);
  v3 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 4, 0x100004052888210, 0);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  v5 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  v163 = 0;
  v6 = 0;
  v169 = 0uLL;
  v168.tv_sec = 0;
  *&v168.tv_usec = 0;
  v7 = &unk_1EA849000;
  v158 = 1;
  theArray = v5;
  while (1)
  {
    while (1)
    {
      os_unfair_lock_lock(&__CFActiveSocketsLock);
      ++__CFSocketManagerIteration;
      v8 = 8 * CFDataGetLength(__CFReadSocketsFds);
      v9 = 8 * CFDataGetLength(__CFWriteSocketsFds);
      if (v8 <= v9)
      {
        v10 = v9;
      }

      else
      {
        v10 = v8;
      }

      v11 = v158;
      if (v10 > 32 * v158)
      {
        v12 = (v10 + 31) >> 5;
        Typed = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, Typed, 4 * v12, 0x100004052888210, 0, 0);
        v13 = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, v3, 4 * v12, 0x100004052888210, 0, 0);
        v11 = v12;
        v3 = v13;
      }

      v158 = v11;
      v14 = 4 * v11;
      bzero(Typed, v14);
      bzero(v3, v14);
      v15 = __CFWriteSocketsFds;
      v176.length = CFDataGetLength(__CFWriteSocketsFds);
      v176.location = 0;
      CFDataGetBytes(v15, v176, Typed);
      v16 = __CFReadSocketsFds;
      v177.length = CFDataGetLength(__CFReadSocketsFds);
      v177.location = 0;
      CFDataGetBytes(v16, v177, v3);
      if ((__CFReadSocketsTimeoutInvalid & 1) == 0)
      {
        *&context[0].sa_len = 0;
        __CFReadSocketsTimeoutInvalid = 1;
        v17 = *(v7 + 483);
        v178.length = CFArrayGetCount(v17);
        v178.location = 0;
        CFArrayApplyFunction(v17, v178, _calcMinTimeout_locked, context);
        if (*&context[0].sa_len)
        {
          v169 = **&context[0].sa_len;
          v163 = &v169;
        }

        else
        {
          v163 = 0;
        }
      }

      if (v163)
      {
        gettimeofday(&v168, 0);
      }

      os_unfair_lock_unlock(&__CFActiveSocketsLock);
      v162 = Typed;
      v164 = select_DARWIN_EXTSN();
      if (!v164)
      {
        *&context[0].sa_data[6] = 0;
        *&context[0].sa_len = 0;
        gettimeofday(context, 0);
        os_unfair_lock_lock(&__CFActiveSocketsLock);
        Count = CFArrayGetCount(*(v7 + 483));
        if (Count >= 1)
        {
          v19 = 0;
          MutableBytePtr = 0;
          v21 = Count & 0x7FFFFFFF;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 483), v19);
            if (*(ValueAtIndex + 34) || ValueAtIndex[70] || *(ValueAtIndex + 41))
            {
              v23 = ValueAtIndex[38];
              if ((v23 & 0x80000000) == 0 && v23 < v10)
              {
                CFArraySetValueAtIndex(v5, v6, ValueAtIndex);
                if (!MutableBytePtr)
                {
                  MutableBytePtr = CFDataGetMutableBytePtr(__CFReadSocketsFds);
                }

                ++v6;
                if (__darwin_check_fd_set_overflow(v23, MutableBytePtr, 1))
                {
                  *&MutableBytePtr[(v23 >> 3) & 0x1FFFFFFC] &= ~(1 << v23);
                }
              }
            }

            ++v19;
          }

          while (v21 != v19);
        }

        os_unfair_lock_unlock(&__CFActiveSocketsLock);
        Typed = v162;
      }

      if (v164 < 0)
      {
        break;
      }

      v24 = HIDWORD(__CFWakeupSocketPair);
      if (__darwin_check_fd_set_overflow(SHIDWORD(__CFWakeupSocketPair), v3, 1) && ((*&v3[(v24 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v24) & 1) != 0)
      {
        recv(SHIDWORD(__CFWakeupSocketPair), v170, 0x100uLL, 0);
      }

      v165 = v10;
      os_unfair_lock_lock(&__CFActiveSocketsLock);
      v25 = CFArrayGetCount(__CFWriteSockets);
      if (v25 < 1)
      {
        idx = 0;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        idx = 0;
        v28 = v25 & 0x7FFFFFFF;
        v159 = v28;
        do
        {
          v29 = CFArrayGetValueAtIndex(__CFWriteSockets, v26);
          v30 = v29[38];
          if ((v30 & 0x80000000) == 0 && v30 < v165)
          {
            v31 = v29;
            if (__darwin_check_fd_set_overflow(v29[38], v162, 1))
            {
              if ((*(v162 + (v30 >> 5)) & (1 << v30)) != 0)
              {
                CFArraySetValueAtIndex(Mutable, idx, v31);
                if (!v27)
                {
                  v27 = CFDataGetMutableBytePtr(__CFWriteSocketsFds);
                }

                ++idx;
                if (__darwin_check_fd_set_overflow(v30, v27, 1))
                {
                  *&v27[4 * (v30 >> 5)] &= ~(1 << v30);
                }

                v7 = &unk_1EA849000;
                v28 = v159;
              }

              else
              {
                v7 = &unk_1EA849000;
              }
            }
          }

          ++v26;
        }

        while (v28 != v26);
      }

      v45 = CFArrayGetCount(*(v7 + 483));
      v167.tv_sec = 0;
      *&v167.tv_usec = 0;
      if (v163)
      {
        gettimeofday(&v167, 0);
      }

      if (v45 >= 1)
      {
        v46 = 0;
        v47 = 0;
        v48 = v45 & 0x7FFFFFFF;
        do
        {
          v49 = v6;
          v50 = CFArrayGetValueAtIndex(*(v7 + 483), v46);
          v51 = v50;
          v52 = *(v50 + 38);
          v54 = (v52 & 0x80000000) == 0 && v52 < v165;
          v50[352] = 0;
          if (v164 && v163 && v54 && (!__darwin_check_fd_set_overflow(v52, v3, 1) || ((*&v3[(v52 >> 3) & 0x1FFFFFFC] >> v52) & 1) == 0))
          {
            v55 = *(v51 + 42);
            if (v55 || *(v51 + 86))
            {
              v56 = v167.tv_sec <= v55;
              if (v167.tv_sec == v55)
              {
                v56 = v167.tv_usec <= *(v51 + 86);
              }

              if (!v56)
              {
                v51[352] = 1;
              }
            }
          }

          if (v54 && (__darwin_check_fd_set_overflow(v52, v3, 1) && ((*&v3[(v52 >> 3) & 0x1FFFFFFC] >> v52) & 1) != 0 || v51[352]))
          {
            CFArraySetValueAtIndex(theArray, v49, v51);
            if (!v47)
            {
              v47 = CFDataGetMutableBytePtr(__CFReadSocketsFds);
            }

            v6 = v49 + 1;
            if (__darwin_check_fd_set_overflow(v52, v47, 1))
            {
              *&v47[4 * (v52 >> 5)] &= ~(1 << v52);
            }
          }

          else
          {
            v6 = v49;
          }

          ++v46;
        }

        while (v48 != v46);
      }

      os_unfair_lock_unlock(&__CFActiveSocketsLock);
      v57 = idx;
      v166 = v6;
      if (idx >= 1)
      {
        v58 = 0;
        while (1)
        {
          v59 = CFArrayGetValueAtIndex(Mutable, v58);
          if (&__kCFNull != v59)
          {
            break;
          }

LABEL_107:
          if (++v58 == v57)
          {
            goto LABEL_125;
          }
        }

        v60 = v59;
        *&context[0].sa_len = 0;
        *&v175[0].sa_len = 4;
        if (!CFSocketIsValid(v59))
        {
LABEL_106:
          CFArraySetValueAtIndex(Mutable, v58, &__kCFNull);
          goto LABEL_107;
        }

        if ((v60[2] & 0x40) != 0 || getsockopt(*(v60 + 38), 0xFFFF, 4103, context, &v175[0].sa_len))
        {
          *&context[0].sa_len = 0;
        }

        pthread_mutex_lock((v60 + 3));
        v61 = atomic_load(v60 + 1);
        v62 = atomic_load(v60 + 1);
        if ((v62 & 0x10) == 0)
        {
          goto LABEL_105;
        }

        v63 = 8;
        if ((v60[2] & 4) == 0)
        {
          v63 = 12;
        }

        if ((~(*(v60 + 4) >> 8) & v63 & v61) == 0)
        {
LABEL_105:
          pthread_mutex_unlock((v60 + 3));
          goto LABEL_106;
        }

        *(v60 + 40) = *&context[0].sa_len;
        v64 = atomic_load(v60 + 1);
        v65 = v64;
        do
        {
          atomic_compare_exchange_strong(v60 + 1, &v65, v64 | 0x40);
          v66 = v65 == v64;
          v64 = v65;
        }

        while (!v66);
        CFRunLoopSourceSignal(v60[24]);
        v67 = CFRetain(v60[25]);
        MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v60[25]);
        v69 = v60[24];
        if (v69)
        {
          if (CFRunLoopSourceIsValid(v60[24]))
          {
            CFRetain(v69);
            v70 = 0;
LABEL_117:
            pthread_mutex_unlock((v60 + 3));
            v71 = __CFSocketCopyRunLoopToWakeUp(v69, MutableCopy);
            if ((v70 & 1) == 0)
            {
              CFRelease(v69);
            }

            if (v71)
            {
              CFRunLoopWakeUp(v71);
              CFRelease(v71);
            }

            pthread_mutex_lock((v60 + 3));
            v6 = v166;
            v57 = idx;
            if (v67 == v60[25])
            {
              v60[25] = MutableCopy;
              CFRelease(v67);
              MutableCopy = 0;
            }

            pthread_mutex_unlock((v60 + 3));
            CFRelease(v67);
            if (MutableCopy)
            {
              CFRelease(MutableCopy);
            }

            goto LABEL_106;
          }

          v69 = 0;
        }

        v70 = 1;
        goto LABEL_117;
      }

LABEL_125:
      v5 = theArray;
      if (v6 >= 1)
      {
        v72 = 0;
        while (1)
        {
          v73 = CFArrayGetValueAtIndex(v5, v72);
          if (&__kCFNull != v73)
          {
            break;
          }

LABEL_241:
          if (++v72 == v6)
          {
            goto LABEL_276;
          }
        }

        v74 = v73;
        if (v164)
        {
          v75 = *(v73 + 352) == 0;
        }

        else
        {
          v75 = 0;
        }

        if (!CFSocketIsValid(v73))
        {
          goto LABEL_240;
        }

        v76 = atomic_load(v74 + 1);
        if ((~v76 & 3) == 0)
        {
          v171 = 256;
          if (*(v74 + 39) == 1)
          {
            v77 = *(v74 + 38);
            v78 = context;
            v79 = context;
            v80 = 0x8000;
            goto LABEL_141;
          }

          v78 = malloc_type_malloc(0xFFFFuLL, 0x100004077774924uLL);
          if (!v78)
          {
            goto LABEL_154;
          }

          v77 = *(v74 + 38);
          v79 = v78;
          v80 = 0xFFFFLL;
LABEL_141:
          v88 = recvfrom(v77, v79, v80, 0, &v172, &v171);
          if (v88 > 0)
          {
            v89 = CFGetAllocator(v74);
            v90 = CFDataCreate(v89, &v78->sa_len, v88 & 0x7FFFFFFF);
            v91 = 1;
          }

          else
          {
LABEL_154:
            v98 = CFGetAllocator(v74);
            v90 = CFDataCreate(v98, 0, 0);
            v91 = 0;
          }

          if (v78 && v78 != context)
          {
            free(v78);
          }

          pthread_mutex_lock((v74 + 3));
          v99 = atomic_load(v74 + 1);
          if ((v99 & 0x10) == 0)
          {
            CFRelease(v90);
            pthread_mutex_unlock((v74 + 3));
            v5 = theArray;
            goto LABEL_160;
          }

          v100 = atomic_load(v74 + 1);
          v101 = v100;
          do
          {
            atomic_compare_exchange_strong(v74 + 1, &v101, v100 | 0x20);
            v66 = v101 == v100;
            v100 = v101;
          }

          while (!v66);
          if (v171 >= 1)
          {
            v102 = CFGetAllocator(v74);
            v103 = CFDataCreate(v102, &v172.sa_len, v171);
            goto LABEL_170;
          }

          if (*(v74 + 39) == 1)
          {
            v104 = v74[22];
            if (v104)
            {
LABEL_169:
              v103 = CFRetain(v104);
LABEL_170:
              v105 = v103;
              if (!v103)
              {
                goto LABEL_171;
              }

LABEL_172:
              v107 = v74[32];
              if (!v107)
              {
                v108 = CFGetAllocator(v74);
                v107 = CFArrayCreateMutable(v108, 0, &kCFTypeArrayCallBacks);
                v74[32] = v107;
              }

              if (!v74[33])
              {
                v109 = CFGetAllocator(v74);
                v74[33] = CFArrayCreateMutable(v109, 0, &kCFTypeArrayCallBacks);
                v107 = v74[32];
              }

              CFArrayAppendValue(v107, v90);
              CFRelease(v90);
              CFArrayAppendValue(v74[33], v105);
              CFRelease(v105);
              v5 = theArray;
              if (v91)
              {
                v110 = *(v74 + 4);
                if ((v110 & 3) != 0 && (v110 & 0x300) == 0 && *(v74 + 46) >= 1)
                {
                  os_unfair_lock_lock(&__CFActiveSocketsLock);
                  __CFReadSocketsTimeoutInvalid = 0;
                  v111 = *(v74 + 38);
                  if ((v111 & 0x80000000) == 0)
                  {
                    v112 = __CFReadSocketsFds;
                    v113 = 8 * CFDataGetLength(__CFReadSocketsFds);
                    if (v113 <= v111)
                    {
                      v129 = v113 >> 5;
                      v130 = 4 * (((v111 + 32) >> 5) - (v113 >> 5));
                      CFDataIncreaseLength(v112, v130);
                      v114 = CFDataGetMutableBytePtr(v112);
                      bzero(&v114[4 * v129], v130);
                    }

                    else
                    {
                      v114 = CFDataGetMutableBytePtr(v112);
                    }

                    if (!__darwin_check_fd_set_overflow(v111, v114, 1) || ((*&v114[(v111 >> 3) & 0x1FFFFFFC] >> v111) & 1) == 0)
                    {
                      if (__darwin_check_fd_set_overflow(v111, v114, 1))
                      {
                        *&v114[4 * (v111 >> 5)] |= 1 << v111;
                      }

                      v131 = __CFWakeupSocketPair;
                      if (__CFWakeupSocketPair != -1)
                      {
                        v175[0].sa_len = 114;
                        v132 = v175;
                        goto LABEL_225;
                      }
                    }
                  }

                  goto LABEL_226;
                }
              }

              goto LABEL_227;
            }

            v174 = 256;
            v128 = atomic_load(v74 + 1);
            v104 = v74[22];
            if ((v128 & 0x10) != 0)
            {
              if (v104)
              {
                goto LABEL_169;
              }

              v144 = *(v74 + 38);
              if (v144 != -1)
              {
                if (getpeername(v144, v175, &v174) || v174 <= 0)
                {
                  v104 = v74[22];
                }

                else
                {
                  v145 = CFGetAllocator(v74);
                  v104 = CFDataCreate(v145, &v175[0].sa_len, v174);
                  v74[22] = v104;
                }

                goto LABEL_207;
              }
            }

            else
            {
LABEL_207:
              if (v104)
              {
                goto LABEL_169;
              }
            }
          }

LABEL_171:
          v106 = CFGetAllocator(v74);
          v105 = CFDataCreate(v106, 0, 0);
          goto LABEL_172;
        }

        v81 = atomic_load(v74 + 1);
        if ((v81 & 3) == 2)
        {
          *&v175[0].sa_len = 256;
          v82 = accept(*(v74 + 38), context, &v175[0].sa_len);
          if (v82 != -1)
          {
            v83 = v82;
            v84 = *&v175[0].sa_len;
            v85 = CFGetAllocator(v74);
            if (v84 < 1)
            {
              v87 = 0;
              v86 = 0;
            }

            else
            {
              v86 = *&v175[0].sa_len;
              v87 = context;
            }

            v115 = CFDataCreate(v85, &v87->sa_len, v86);
            pthread_mutex_lock((v74 + 3));
            v116 = atomic_load(v74 + 1);
            if ((v116 & 0x10) == 0)
            {
              close(v83);
              CFRelease(v115);
              goto LABEL_186;
            }

            v117 = atomic_load(v74 + 1);
            v118 = v117;
            do
            {
              atomic_compare_exchange_strong(v74 + 1, &v118, v117 | 0x20);
              v66 = v118 == v117;
              v117 = v118;
            }

            while (!v66);
            v119 = v74[32];
            if (!v119)
            {
              v120 = CFGetAllocator(v74);
              v119 = CFArrayCreateMutable(v120, 0, 0);
              v74[32] = v119;
            }

            if (!v74[33])
            {
              v121 = CFGetAllocator(v74);
              v74[33] = CFArrayCreateMutable(v121, 0, &kCFTypeArrayCallBacks);
              v119 = v74[32];
            }

            CFArrayAppendValue(v119, v83);
            CFArrayAppendValue(v74[33], v115);
            CFRelease(v115);
            if ((v74[2] & 0x202) == 2 && *(v74 + 46) >= 1)
            {
              os_unfair_lock_lock(&__CFActiveSocketsLock);
              __CFReadSocketsTimeoutInvalid = 0;
              v122 = *(v74 + 38);
              if ((v122 & 0x80000000) == 0)
              {
                v123 = __CFReadSocketsFds;
                v124 = 8 * CFDataGetLength(__CFReadSocketsFds);
                if (v124 <= v122)
                {
                  v133 = v124 >> 5;
                  v134 = 4 * (((v122 + 32) >> 5) - (v124 >> 5));
                  CFDataIncreaseLength(v123, v134);
                  v125 = CFDataGetMutableBytePtr(v123);
                  bzero(&v125[4 * v133], v134);
                }

                else
                {
                  v125 = CFDataGetMutableBytePtr(v123);
                }

                if (!__darwin_check_fd_set_overflow(v122, v125, 1) || ((*&v125[(v122 >> 3) & 0x1FFFFFFC] >> v122) & 1) == 0)
                {
                  if (__darwin_check_fd_set_overflow(v122, v125, 1))
                  {
                    *&v125[4 * (v122 >> 5)] |= 1 << v122;
                  }

                  v131 = __CFWakeupSocketPair;
                  if (__CFWakeupSocketPair != -1)
                  {
                    v172.sa_len = 114;
                    v132 = &v172;
LABEL_225:
                    send(v131, v132, 1uLL, 0);
                  }
                }
              }

LABEL_226:
              os_unfair_lock_unlock(&__CFActiveSocketsLock);
            }

LABEL_227:
            CFRunLoopSourceSignal(v74[24]);
            v135 = CFRetain(v74[25]);
            v136 = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v74[25]);
            v137 = v74[24];
            if (v137)
            {
              if (CFRunLoopSourceIsValid(v74[24]))
              {
                CFRetain(v137);
                v138 = 0;
                goto LABEL_232;
              }

              v137 = 0;
            }

            v138 = 1;
LABEL_232:
            pthread_mutex_unlock((v74 + 3));
            v139 = __CFSocketCopyRunLoopToWakeUp(v137, v136);
            if ((v138 & 1) == 0)
            {
              CFRelease(v137);
            }

            if (v139)
            {
              CFRunLoopWakeUp(v139);
              CFRelease(v139);
            }

            pthread_mutex_lock((v74 + 3));
            v6 = v166;
            if (v135 == v74[25])
            {
              v74[25] = v136;
              CFRelease(v135);
              v136 = 0;
            }

            pthread_mutex_unlock((v74 + 3));
            CFRelease(v135);
            if (v136)
            {
              CFRelease(v136);
            }
          }

LABEL_240:
          CFArraySetValueAtIndex(v5, v72, &__kCFNull);
          goto LABEL_241;
        }

        pthread_mutex_lock((v74 + 3));
        v92 = atomic_load(v74 + 1);
        if (v92 & 0x10) == 0 || (*(v74 + 17))
        {
          pthread_mutex_unlock((v74 + 3));
          goto LABEL_240;
        }

        if (v75)
        {
          v93 = v74[37];
          if (!v93)
          {
            goto LABEL_202;
          }

          if (*(v74 + 320))
          {
            goto LABEL_202;
          }

          v94 = v93 - v74[38];
          if (v94 < 1)
          {
            goto LABEL_202;
          }

          v95 = CFDataGetMutableBytePtr(v74[36]);
          Native = CFSocketGetNative(v74);
          v97 = read(Native, v74[38] + v95, v94);
          if (!v97)
          {
            goto LABEL_153;
          }

          if (v97 != -1)
          {
            v148 = v74[37];
            v149 = v74[38] + v97;
            v74[38] = v149;
            if (v148 != v149)
            {
              *&context[0].sa_data[6] = 0;
              *&context[0].sa_len = 0;
              gettimeofday(context, 0);
              v150 = v74[34] + *&context[0].sa_len;
              v74[42] = v150;
              v151 = *(v74 + 70) + *&context[0].sa_data[6];
              *(v74 + 86) = v151;
              if (v151 >= 1000000)
              {
                v74[42] = (v150 + 1);
                *(v74 + 86) = v151 - 1000000;
              }

              os_unfair_lock_lock(&__CFActiveSocketsLock);
              __CFReadSocketsTimeoutInvalid = 0;
              v152 = *(v74 + 38);
              if ((v152 & 0x80000000) == 0)
              {
                v153 = __CFReadSocketsFds;
                v154 = 8 * CFDataGetLength(__CFReadSocketsFds);
                if (v154 <= v152)
                {
                  v156 = v154 >> 5;
                  v157 = 4 * (((v152 + 32) >> 5) - (v154 >> 5));
                  CFDataIncreaseLength(v153, v157);
                  v155 = CFDataGetMutableBytePtr(v153);
                  bzero(&v155[4 * v156], v157);
                }

                else
                {
                  v155 = CFDataGetMutableBytePtr(v153);
                }

                if (!__darwin_check_fd_set_overflow(v152, v155, 1) || ((*&v155[(v152 >> 3) & 0x1FFFFFFC] >> v152) & 1) == 0)
                {
                  if (__darwin_check_fd_set_overflow(v152, v155, 1))
                  {
                    *&v155[4 * (v152 >> 5)] |= 1 << v152;
                  }

                  if (__CFWakeupSocketPair != -1)
                  {
                    v175[0].sa_len = 114;
                    send(__CFWakeupSocketPair, v175, 1uLL, 0);
                  }
                }
              }

              os_unfair_lock_unlock(&__CFActiveSocketsLock);
              pthread_mutex_unlock((v74 + 3));
LABEL_160:
              v6 = v166;
              goto LABEL_240;
            }

            *(v74 + 86) = 0;
            v74[42] = 0;
            goto LABEL_202;
          }

          if (*__error() != 35)
          {
            *(v74 + 81) = *__error();
LABEL_153:
            *(v74 + 320) = 1;
LABEL_202:
            v126 = atomic_load(v74 + 1);
            v127 = v126;
            do
            {
              atomic_compare_exchange_strong(v74 + 1, &v127, v126 | 0x20);
              v66 = v127 == v126;
              v126 = v127;
            }

            while (!v66);
            goto LABEL_227;
          }
        }

        else
        {
          if (v74[38] || v74[41])
          {
            goto LABEL_202;
          }

          *(v74 + 86) = 0;
          v74[42] = 0;
        }

        os_unfair_lock_lock(&__CFActiveSocketsLock);
        __CFReadSocketsTimeoutInvalid = 0;
        v140 = *(v74 + 38);
        v6 = v166;
        if ((v140 & 0x80000000) == 0)
        {
          v141 = __CFReadSocketsFds;
          v142 = 8 * CFDataGetLength(__CFReadSocketsFds);
          if (v142 <= v140)
          {
            v146 = v142 >> 5;
            v147 = 4 * (((v140 + 32) >> 5) - (v142 >> 5));
            CFDataIncreaseLength(v141, v147);
            v143 = CFDataGetMutableBytePtr(v141);
            bzero(&v143[4 * v146], v147);
          }

          else
          {
            v143 = CFDataGetMutableBytePtr(v141);
          }

          if (!__darwin_check_fd_set_overflow(v140, v143, 1) || ((*&v143[(v140 >> 3) & 0x1FFFFFFC] >> v140) & 1) == 0)
          {
            if (__darwin_check_fd_set_overflow(v140, v143, 1))
            {
              *&v143[4 * (v140 >> 5)] |= 1 << v140;
            }

            if (__CFWakeupSocketPair != -1)
            {
              context[0].sa_len = 114;
              send(__CFWakeupSocketPair, context, 1uLL, 0);
            }
          }
        }

        os_unfair_lock_unlock(&__CFActiveSocketsLock);
LABEL_186:
        pthread_mutex_unlock((v74 + 3));
        goto LABEL_240;
      }

LABEL_276:
      v6 = 0;
      Typed = v162;
LABEL_279:
      v7 = &unk_1EA849000;
    }

    if (*__error() == 9)
    {
      v32 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      os_unfair_lock_lock(&__CFActiveSocketsLock);
      v33 = CFArrayGetCount(__CFWriteSockets);
      if (v33 >= 1)
      {
        v34 = v33;
        for (i = 0; i != v34; ++i)
        {
          v36 = CFArrayGetValueAtIndex(__CFWriteSockets, i);
          if (!__CFNativeSocketIsValid(v36[38]))
          {
            CFArrayAppendValue(v32, v36);
          }
        }
      }

      v37 = CFArrayGetCount(__CFReadSockets);
      if (v37 >= 1)
      {
        v38 = v37;
        for (j = 0; j != v38; ++j)
        {
          v40 = CFArrayGetValueAtIndex(__CFReadSockets, j);
          if (!__CFNativeSocketIsValid(v40[38]))
          {
            CFArrayAppendValue(v32, v40);
          }
        }
      }

      v41 = CFArrayGetCount(v32);
      if (v41)
      {
        v42 = v41;
        os_unfair_lock_unlock(&__CFActiveSocketsLock);
        Typed = v162;
        if (v42 >= 1)
        {
          for (k = 0; k != v42; ++k)
          {
            v44 = CFArrayGetValueAtIndex(v32, k);
            CFSocketInvalidate(v44);
          }
        }
      }

      else
      {
        clearInvalidFileDescriptors(__CFReadSocketsFds);
        clearInvalidFileDescriptors(__CFWriteSocketsFds);
        os_unfair_lock_unlock(&__CFActiveSocketsLock);
        Typed = v162;
      }

      CFRelease(v32);
      goto LABEL_279;
    }
  }
}

Boolean CFSocketIsValid(CFSocketRef s)
{
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketIsValid_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v3 = atomic_load(s + 1);
  return (v3 >> 4) & 1;
}

char *__CFSocketCopyRunLoopToWakeUp(__CFRunLoopSource *a1, CFArrayRef theArray)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (ValueAtIndex && Count != 1)
  {
    v6 = 1;
    do
    {
      v7 = CFArrayGetValueAtIndex(theArray, v6);
      if (v7 != ValueAtIndex)
      {
        break;
      }

      ++v6;
    }

    while (v6 < (Count & 0x7FFFFFFFu));
    if (v7 != ValueAtIndex)
    {
      ValueAtIndex = 0;
    }
  }

  if (ValueAtIndex)
  {
    CFRetain(ValueAtIndex);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = Count & 0x7FFFFFFF;
    do
    {
      v12 = CFArrayGetValueAtIndex(theArray, ValueAtIndex);
      v13 = CFRunLoopCopyCurrentMode(v12);
      if (v13)
      {
        v14 = v13;
        if (CFRunLoopContainsSource(v12, a1, v13))
        {
          IsWaiting = CFRunLoopIsWaiting(v12);
          v16 = v10 ? v9 : ValueAtIndex;
          v17 = IsWaiting == 0;
          if (IsWaiting)
          {
            v9 = ValueAtIndex;
          }

          else
          {
            v10 = 1;
            v9 = v16;
          }
        }

        else
        {
          v17 = 1;
        }

        CFRelease(v14);
        if (!v17)
        {
          break;
        }
      }

      ++ValueAtIndex;
    }

    while (ValueAtIndex < v11);
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
    CFRetain(ValueAtIndex);
    CFArrayRemoveValueAtIndex(theArray, v9);
    CFArrayAppendValue(theArray, ValueAtIndex);
  }

  return ValueAtIndex;
}

void __CFSocketPerformV0(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((a1 + 24));
  v2 = (a1 + 8);
  v3 = atomic_load((a1 + 8));
  if ((v3 & 0x10) == 0)
  {
    v4 = *MEMORY[0x1E69E9840];

    pthread_mutex_unlock((a1 + 24));
    return;
  }

  atomic_load(v2);
  v5 = atomic_load(v2);
  v6 = atomic_load(v2);
  v7 = v5 & (v6 << 26 >> 31);
  v8 = atomic_load(v2);
  if ((v5 & 3) == 2)
  {
    v12 = *(a1 + 256);
    if (v12 && CFArrayGetCount(v12) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 256), 0);
      v10 = 0;
      goto LABEL_13;
    }
  }

  else if ((v5 & 3) == 3)
  {
    v9 = *(a1 + 256);
    if (v9)
    {
      if (CFArrayGetCount(v9) >= 1)
      {
        v10 = CFArrayGetValueAtIndex(*(a1 + 256), 0);
        CFRetain(v10);
        ValueAtIndex = -1;
LABEL_13:
        CFArrayRemoveValueAtIndex(*(a1 + 256), 0);
        v13 = CFArrayGetValueAtIndex(*(a1 + 264), 0);
        CFRetain(v13);
        CFArrayRemoveValueAtIndex(*(a1 + 264), 0);
        goto LABEL_15;
      }
    }
  }

  v13 = 0;
  v10 = 0;
  ValueAtIndex = -1;
LABEL_15:
  v14 = *(a1 + 232);
  theData = v10;
  if (v14)
  {
    v48 = *(a1 + 240);
    v46 = *(a1 + 224);
    v14();
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v15 = v13;
  v16 = 0;
  v17 = v5;
  v18 = v7 & 3;
  v51 = 0;
  v52 = ValueAtIndex;
  v19 = atomic_load((a1 + 8));
  v20 = atomic_load((a1 + 8));
  v21 = atomic_load((a1 + 8));
  v22 = atomic_load((a1 + 8));
  if ((v22 & 0x40) != 0)
  {
    v16 = (*(a1 + 18) & 1) == 0;
  }

  v50 = v18 | (8 * ((v8 >> 6) & 1));
  v23 = v20 & 3;
  v24 = atomic_load((a1 + 8));
  v25 = v24;
  do
  {
    atomic_compare_exchange_strong((a1 + 8), &v25, v24 & 0xFFFFFFFFFFFFFFDFLL);
    v26 = v25 == v24;
    v24 = v25;
  }

  while (!v26);
  v27 = atomic_load((a1 + 8));
  v28 = v27;
  do
  {
    atomic_compare_exchange_strong((a1 + 8), &v28, v27 & 0xFFFFFFFFFFFFFFBFLL);
    v26 = v28 == v27;
    v27 = v28;
  }

  while (!v26);
  v29 = *(a1 + 208);
  v47 = *(a1 + 224);
  if ((v22 & 0x40) != 0)
  {
    v51 = *(a1 + 160);
    *(a1 + 16) |= 0x10000u;
  }

  pthread_mutex_unlock((a1 + 24));
  v30 = *&v16 & ((v19 & 4) >> 2);
  if (v30 != 1)
  {
    v33 = 0;
    goto LABEL_37;
  }

  if (v51)
  {
    if (v29)
    {
      v31 = &v51;
      v32 = a1;
LABEL_35:
      v29(v32, 4, 0, v31, v47);
    }
  }

  else if (v29)
  {
    v32 = a1;
    v31 = 0;
    goto LABEL_35;
  }

  v33 = 1;
LABEL_37:
  if (v23 == 2)
  {
    v34 = v15;
    v35 = theData;
    if (v52 == -1)
    {
      goto LABEL_64;
    }

    if (v30)
    {
      v33 = 1;
      if (!CFSocketIsValid(a1) || !v29)
      {
        goto LABEL_64;
      }
    }

    else if (!v29)
    {
      goto LABEL_63;
    }

    v29(a1, 2, v34, &v52, v47);
    goto LABEL_63;
  }

  if (v23 == 3)
  {
    v34 = v15;
    v35 = theData;
    if (!theData)
    {
      goto LABEL_64;
    }

    if (!v30 || CFSocketIsValid(a1))
    {
      Length = CFDataGetLength(theData);
      if (v29)
      {
        v29(a1, 3, v34, theData, v47);
      }

      if (!Length && *(a1 + 156) == 1)
      {
        CFSocketInvalidate(a1);
      }
    }

    goto LABEL_63;
  }

  if (v23 != 1)
  {
    v34 = v15;
    v35 = theData;
    goto LABEL_64;
  }

  v34 = v15;
  v35 = theData;
  if ((v21 & 0x20) == 0)
  {
    goto LABEL_64;
  }

  if (v30)
  {
    v33 = 1;
    if (!CFSocketIsValid(a1) || !v29)
    {
      goto LABEL_64;
    }

    goto LABEL_62;
  }

  if (v29)
  {
LABEL_62:
    v33 = 1;
    v29(a1, 1, 0, 0, v47);
    goto LABEL_64;
  }

LABEL_63:
  v33 = 1;
LABEL_64:
  if ((v19 & 8) != 0 && (v22 & 0x40) != 0 && !v51 && (!v33 || CFSocketIsValid(a1)) && v29)
  {
    v29(a1, 8, 0, 0, v47);
  }

  if (v48)
  {
    v48(v46);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  pthread_mutex_lock((a1 + 24));
  v37 = 0;
  v38 = atomic_load((a1 + 8));
  if ((v17 & 2) == 0 || (v38 & 0x10) == 0)
  {
    goto LABEL_94;
  }

  v39 = *(a1 + 256);
  if (!v39 || CFArrayGetCount(v39) < 1)
  {
    v37 = 0;
    goto LABEL_94;
  }

  CFRunLoopSourceSignal(*(a1 + 192));
  v40 = CFRetain(*(a1 + 200));
  MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, *(a1 + 200));
  v42 = *(a1 + 192);
  if (!v42)
  {
    goto LABEL_86;
  }

  if (!CFRunLoopSourceIsValid(*(a1 + 192)))
  {
    v42 = 0;
LABEL_86:
    v43 = 1;
    goto LABEL_87;
  }

  CFRetain(v42);
  v43 = 0;
LABEL_87:
  pthread_mutex_unlock((a1 + 24));
  v37 = __CFSocketCopyRunLoopToWakeUp(v42, MutableCopy);
  if ((v43 & 1) == 0)
  {
    CFRelease(v42);
  }

  pthread_mutex_lock((a1 + 24));
  if (v40 == *(a1 + 200))
  {
    *(a1 + 200) = MutableCopy;
    CFRelease(v40);
    v44 = v40;
    goto LABEL_93;
  }

  CFRelease(v40);
  if (MutableCopy)
  {
    v44 = MutableCopy;
LABEL_93:
    CFRelease(v44);
  }

LABEL_94:
  __CFSocketEnableCallBacks(a1, *(a1 + 16) & v50, 0);
  if (v37)
  {
    CFRunLoopWakeUp(v37);
    CFRelease(v37);
  }

  v45 = *MEMORY[0x1E69E9840];
}

CFSocketNativeHandle CFSocketGetNative(CFSocketRef s)
{
  if (CFSocketGetTypeID_initOnce == -1)
  {
    if (!s)
    {
      goto LABEL_4;
    }
  }

  else
  {
    CFSocketGetNative_cold_1();
    if (!s)
    {
      goto LABEL_4;
    }
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

LABEL_4:
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (s)
  {
    return *(s + 38);
  }

  else
  {
    return -1;
  }
}

uint64_t __CFSocketEnableCallBacks(uint64_t a1, uint64_t a2, int a3)
{
  v42 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (a2)
  {
    v6 = atomic_load((a1 + 8));
    if ((v6 & 0x10) == 0 || *(a1 + 184) < 1)
    {
LABEL_64:
      result = pthread_mutex_unlock((a1 + 24));
      v39 = *MEMORY[0x1E69E9840];
      return result;
    }

    v7 = atomic_load((a1 + 8));
    v8 = v7 & 3;
    v9 = atomic_load((a1 + 8));
    v10 = a2 & v9 & 0xF;
    if (a3)
    {
      *(a1 + 16) &= (~v10 << 8) | 0xFFFF00FF;
    }

    if (v8 == 2 || *(a1 + 156) != 1)
    {
      v11 = *(a1 + 16) | 0x10000;
      *(a1 + 16) = v11;
      if ((v11 & 0x10000) != 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = *(a1 + 16);
      if ((v11 & 0x10000) != 0)
      {
        goto LABEL_20;
      }
    }

    if ((v10 & 4) != 0)
    {
      v14 = 0;
      v15 = (v11 & 0x400) == 0;
      goto LABEL_23;
    }

LABEL_20:
    v15 = 0;
    v14 = v10 >= 8 && (v11 & 0x800) == 0;
LABEL_23:
    v16 = v7 & v10 & 3;
    v17 = v11 & 0x100;
    v18 = v17 == 0;
    v19 = v17 >> 8;
    v20 = v16 == 0;
    if (v16)
    {
      v21 = v18;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      LOBYTE(v19) = 1;
    }

    v22 = v8 == 0;
    if (v8)
    {
      v23 = v21;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = 1;
    }

    else
    {
      v24 = v19;
    }

    if (v15 || v14 || v23)
    {
      os_unfair_lock_lock(&__CFActiveSocketsLock);
      if (v15 || v14)
      {
        if (a3)
        {
          v25 = __CFWriteSockets;
          v44.length = CFArrayGetCount(__CFWriteSockets);
          v44.location = 0;
          if (CFArrayGetFirstIndexOfValue(v25, v44, a1) == -1)
          {
            CFArrayAppendValue(__CFWriteSockets, a1);
          }
        }

        v26 = *(a1 + 152);
        if ((v26 & 0x80000000) == 0)
        {
          v27 = __CFWriteSocketsFds;
          v28 = 8 * CFDataGetLength(__CFWriteSocketsFds);
          if (v28 <= v26)
          {
            v30 = v28 >> 5;
            v31 = 4 * (((v26 + 32) >> 5) - (v28 >> 5));
            CFDataIncreaseLength(v27, v31);
            MutableBytePtr = CFDataGetMutableBytePtr(v27);
            bzero(&MutableBytePtr[4 * v30], v31);
          }

          else
          {
            MutableBytePtr = CFDataGetMutableBytePtr(v27);
          }

          if (!__darwin_check_fd_set_overflow(v26, MutableBytePtr, 1) || ((*&MutableBytePtr[(v26 >> 3) & 0x1FFFFFFC] >> v26) & 1) == 0)
          {
            if (__darwin_check_fd_set_overflow(v26, MutableBytePtr, 1))
            {
              *&MutableBytePtr[4 * (v26 >> 5)] |= 1 << v26;
            }

            if (__CFWakeupSocketPair != -1)
            {
              v40 = 119;
              send(__CFWakeupSocketPair, &v40, 1uLL, 0);
            }
          }
        }
      }

      if ((v24 & 1) == 0)
      {
        if (a3)
        {
          v32 = __CFReadSockets;
          v45.length = CFArrayGetCount(__CFReadSockets);
          v45.location = 0;
          if (CFArrayGetFirstIndexOfValue(v32, v45, a1) == -1)
          {
            CFArrayAppendValue(__CFReadSockets, a1);
          }
        }

        __CFReadSocketsTimeoutInvalid = 0;
        v33 = *(a1 + 152);
        if ((v33 & 0x80000000) == 0)
        {
          v34 = __CFReadSocketsFds;
          v35 = 8 * CFDataGetLength(__CFReadSocketsFds);
          if (v35 <= v33)
          {
            v37 = v35 >> 5;
            v38 = 4 * (((v33 + 32) >> 5) - (v35 >> 5));
            CFDataIncreaseLength(v34, v38);
            v36 = CFDataGetMutableBytePtr(v34);
            bzero(&v36[4 * v37], v38);
          }

          else
          {
            v36 = CFDataGetMutableBytePtr(v34);
          }

          if (!__darwin_check_fd_set_overflow(v33, v36, 1) || ((*&v36[(v33 >> 3) & 0x1FFFFFFC] >> v33) & 1) == 0)
          {
            if (__darwin_check_fd_set_overflow(v33, v36, 1))
            {
              *&v36[4 * (v33 >> 5)] |= 1 << v33;
            }

            if (__CFWakeupSocketPair != -1)
            {
              v41 = 114;
              send(__CFWakeupSocketPair, &v41, 1uLL, 0);
            }
          }
        }
      }

      os_unfair_lock_unlock(&__CFActiveSocketsLock);
    }

    goto LABEL_64;
  }

  v12 = *MEMORY[0x1E69E9840];

  return pthread_mutex_unlock((a1 + 24));
}

uint64_t _calcMinTimeout_locked(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 272);
  if (!v2 && !*(result + 280))
  {
    goto LABEL_7;
  }

  v3 = (result + 272);
  v4 = *a2;
  if (*a2)
  {
    v5 = v2 < *v4;
    if (v2 == *v4)
    {
      v5 = *(result + 280) < *(v4 + 8);
    }

    if (!v5)
    {
LABEL_7:
      if (!*(result + 328))
      {
        return result;
      }

      v3 = &_calcMinTimeout_locked_sKickerTime;
    }
  }

  *a2 = v3;
  return result;
}

CFSocketRef CFSocketCreateWithNative(CFAllocatorRef allocator, CFSocketNativeHandle sock, CFOptionFlags callBackTypes, CFSocketCallBack callout, const CFSocketContext *context)
{
  v7 = callBackTypes;
  v54 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  value = 0;
  v51 = 4;
  os_unfair_lock_lock(&__CFActiveSocketsLock);
  if (!__CFReadSockets)
  {
    __CFWriteSockets = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
    __CFReadSockets = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
    __CFWriteSocketsFds = CFDataCreateMutable(&__kCFAllocatorSystemDefault, 0);
    __CFReadSocketsFds = CFDataCreateMutable(&__kCFAllocatorSystemDefault, 0);
    if (socketpair(1, 2, 0, &__CFWakeupSocketPair) < 0 || (v49 = 1, fcntl(__CFWakeupSocketPair, 2) < 0) || (v49 = 1, fcntl(SHIDWORD(__CFWakeupSocketPair), 2) < 0))
    {
      close(__CFWakeupSocketPair);
      close(SHIDWORD(__CFWakeupSocketPair));
      __CFWakeupSocketPair = -1;
      CFLog(4, @"*** Could not create wakeup socket pair for CFSocket!!!", v14, v15, v16, v17, v18, v19, v49);
    }

    else
    {
      LODWORD(callBacks.__sig) = 1;
      ioctl(__CFWakeupSocketPair, 0x8004667EuLL, &callBacks);
      ioctl(SHIDWORD(__CFWakeupSocketPair), 0x8004667EuLL, &callBacks);
      v10 = HIDWORD(__CFWakeupSocketPair);
      if ((__CFWakeupSocketPair & 0x8000000000000000) == 0)
      {
        v11 = __CFReadSocketsFds;
        v12 = 8 * CFDataGetLength(__CFReadSocketsFds);
        if (v12 <= v10)
        {
          v47 = v12 >> 5;
          v48 = 4 * (((v10 + 32) >> 5) - (v12 >> 5));
          CFDataIncreaseLength(v11, v48);
          MutableBytePtr = CFDataGetMutableBytePtr(v11);
          bzero(&MutableBytePtr[4 * v47], v48);
        }

        else
        {
          MutableBytePtr = CFDataGetMutableBytePtr(v11);
        }

        if ((!__darwin_check_fd_set_overflow(v10, MutableBytePtr, 1) || ((*&MutableBytePtr[(v10 >> 3) & 0x1FFFFFFC] >> v10) & 1) == 0) && __darwin_check_fd_set_overflow(v10, MutableBytePtr, 1))
        {
          *&MutableBytePtr[4 * (v10 >> 5)] |= 1 << v10;
        }
      }
    }
  }

  os_unfair_lock_unlock(&__CFActiveSocketsLock);
  os_unfair_lock_lock(&__CFAllSocketsLock);
  Mutable = __CFAllSockets;
  if (!__CFAllSockets)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    __CFAllSockets = Mutable;
  }

  if (sock != -1 && CFDictionaryGetValueIfPresent(Mutable, sock, &value))
  {
    os_unfair_lock_unlock(&__CFAllSocketsLock);
    CFRetain(value);
LABEL_46:
    result = value;
    goto LABEL_47;
  }

  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketCreateWithNative_cold_1();
  }

  Instance = _CFRuntimeCreateInstance(allocator, 0x3DuLL, 344, 0, v20, v21, v22, v23);
  value = Instance;
  if (Instance)
  {
    v26 = atomic_load(Instance + 1);
    v27 = v26;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v27, v26 & 0xFFFFFFFFFFFFFFF0 | v7 & 0xF);
      v28 = v27 == v26;
      v26 = v27;
    }

    while (!v28);
    if (sock != -1)
    {
      v29 = (value + 8);
      v30 = atomic_load(value + 1);
      v31 = v30;
      do
      {
        atomic_compare_exchange_strong(v29, &v31, v30 | 0x10);
        v28 = v31 == v30;
        v30 = v31;
      }

      while (!v28);
    }

    v32 = (value + 8);
    v33 = atomic_load(value + 1);
    v34 = v33;
    do
    {
      atomic_compare_exchange_strong(v32, &v34, v33 & 0xFFFFFFFFFFFFFFBFLL);
      v28 = v34 == v33;
      v33 = v34;
    }

    while (!v28);
    v35 = (value + 8);
    v36 = atomic_load(value + 1);
    v37 = v36;
    do
    {
      atomic_compare_exchange_strong(v35, &v37, v36 & 0xFFFFFFFFFFFFFFDFLL);
      v28 = v37 == v36;
      v36 = v37;
    }

    while (!v28);
    v38 = value;
    *(value + 4) = v7 & 0x73 | *(value + 4) & 0xFFFFFF00 | 0x80;
    v38[3] = 850045857;
    *(v38 + 2) = 0u;
    *(v38 + 3) = 0u;
    *(v38 + 4) = 0u;
    v38[10] = 0;
    v38[11] = 850045857;
    *(v38 + 6) = 0u;
    *(v38 + 7) = 0u;
    *(v38 + 8) = 0u;
    v38[18] = 0;
    *(v38 + 38) = sock;
    if (sock == -1)
    {
      *(v38 + 39) = 0;
      v38[26] = callout;
      *(v38 + 70) = 0;
      v38[34] = 0;
      *(v38 + 86) = 0;
      v38[42] = 0;
    }

    else
    {
      if (getsockopt(sock, 0xFFFF, 4104, v38 + 156, &v51))
      {
        *(value + 39) = 0;
      }

      *&callBacks.__sig = *&kCFTypeArrayCallBacks.version;
      *&callBacks.__opaque[8] = kCFTypeArrayCallBacks.release;
      *&callBacks.__opaque[16] = 0;
      *&callBacks.__opaque[24] = CFEqual;
      v39 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &callBacks);
      v40 = value;
      *(value + 25) = v39;
      v40[26] = callout;
      *(v40 + 70) = 0;
      v40[34] = 0;
      *(v40 + 86) = 0;
      v40[42] = 0;
      CFDictionaryAddValue(__CFAllSockets, sock, v40);
    }

    if (!__CFSocketManagerThread)
    {
      v50 = 0;
      memset(&callBacks, 0, sizeof(callBacks));
      pthread_attr_init(&callBacks);
      pthread_attr_setscope(&callBacks, 1);
      pthread_attr_setdetachstate(&callBacks, 2);
      v42 = qos_class_main();
      pthread_attr_set_qos_class_np(&callBacks, v42, 0);
      pthread_create(&v50, &callBacks, __CFSocketManager, 0);
      pthread_attr_destroy(&callBacks);
      __CFSocketManagerThread = v50;
    }

    os_unfair_lock_unlock(&__CFAllSocketsLock);
    if (context)
    {
      info = context->info;
      retain = context->retain;
      if (retain)
      {
        info = (retain)(context->info);
      }

      pthread_mutex_lock((value + 24));
      v45 = value;
      *(value + 232) = *&context->retain;
      *(v45 + 31) = context->copyDescription;
      *(v45 + 28) = info;
      pthread_mutex_unlock((v45 + 24));
    }

    goto LABEL_46;
  }

  os_unfair_lock_unlock(&__CFAllSocketsLock);
  result = 0;
LABEL_47:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

CFOptionFlags CFSocketGetSocketFlags(CFSocketRef s)
{
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketGetSocketFlags_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v2 = _CFGetNonObjCTypeID(s);
  if (v2 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  return *(s + 16);
}

void CFSocketSetSocketFlags(CFSocketRef s, CFOptionFlags flags)
{
  v2 = flags;
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketSetSocketFlags_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v4 = _CFGetNonObjCTypeID(s);
  if (v4 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));
  *(s + 16) = v2;

  pthread_mutex_unlock((s + 24));
}

void CFSocketEnableCallBacks(CFSocketRef s, CFOptionFlags callBackTypes)
{
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketEnableCallBacks_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v4 = _CFGetNonObjCTypeID(s);
  if (v4 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));

  __CFSocketEnableCallBacks(s, callBackTypes, 1);
}

uint64_t __CFSocketSchedule(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 24));
  v4 = atomic_load((a1 + 8));
  if ((v4 & 0x10) != 0 && (v5 = *(a1 + 200), MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v5), CFArrayAppendValue(MutableCopy, a2), *(a1 + 200) = MutableCopy, CFRelease(v5), v7 = *(a1 + 184), *(a1 + 184) = v7 + 1, !v7))
  {
    v9 = atomic_load((a1 + 8));

    return __CFSocketEnableCallBacks(a1, v9 & 0xF, 1);
  }

  else
  {

    return pthread_mutex_unlock((a1 + 24));
  }
}

int64_t __CFSocketRead(uint64_t a1, void *a2, int64_t a3, int *a4)
{
  pthread_mutex_lock((a1 + 24));
  *a4 = 0;
  v8 = *(a1 + 328);
  if (v8)
  {
    Length = CFDataGetLength(v8);
    if (Length < a3)
    {
      a3 = Length;
    }

    BytePtr = CFDataGetBytePtr(*(a1 + 328));
    memcpy(a2, BytePtr, a3);
    v11 = CFDataGetLength(*(a1 + 328));
    v12 = *(a1 + 328);
    if (a3 >= v11)
    {
      CFRelease(v12);
      *(a1 + 328) = 0;
    }

    else
    {
      v24.location = 0;
      v24.length = a3;
      CFDataReplaceBytes(v12, v24, 0, 0);
    }
  }

  else if (*(a1 + 296) && (v13 = *(a1 + 312), v14 = *(a1 + 304) - v13, v14 >= 1))
  {
    if (v14 < a3)
    {
      a3 = *(a1 + 304) - v13;
    }

    v15 = CFDataGetBytePtr(*(a1 + 288));
    memcpy(a2, &v15[*(a1 + 312)], a3);
    v16 = *(a1 + 304);
    v17 = *(a1 + 312) + a3;
    *(a1 + 312) = v17;
    if (v17 == v16)
    {
      *(a1 + 304) = 0;
      *(a1 + 312) = 0;
    }
  }

  else
  {
    v18 = *(a1 + 324);
    if (v18)
    {
      *a4 = v18;
      a3 = -1;
    }

    else if (*(a1 + 320))
    {
      a3 = 0;
    }

    else
    {
      Native = CFSocketGetNative(a1);
      v21 = read(Native, a2, a3);
      a3 = v21;
      if (v21)
      {
        if (v21 < 0)
        {
          v22 = __error();
          v23 = *v22;
          *a4 = *v22;
          if (v23 != 35)
          {
            *(a1 + 324) = v23;
          }
        }
      }

      else
      {
        *(a1 + 320) = 1;
      }
    }
  }

  pthread_mutex_unlock((a1 + 24));
  return a3;
}

void CFSocketDisableCallBacks(CFSocketRef s, CFOptionFlags callBackTypes)
{
  v2 = callBackTypes;
  v18 = *MEMORY[0x1E69E9840];
  if (CFSocketGetTypeID_initOnce != -1)
  {
    CFSocketDisableCallBacks_cold_1();
  }

  __CFCheckCFInfoPACSignature(s);
  v4 = _CFGetNonObjCTypeID(s);
  if (v4 != 61)
  {
    _CFAssertMismatchedTypeID(0x3DuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((s + 24));
  v5 = atomic_load(s + 1);
  if ((v5 & 0x10) != 0 && *(s + 46) >= 1)
  {
    v6 = atomic_load(s + 1);
    v7 = v2 & v6 & 0xF;
    v8 = atomic_load(s + 1);
    *(s + 4) |= v7 << 8;
    os_unfair_lock_lock(&__CFActiveSocketsLock);
    if ((v8 & 3) == 2 || *(s + 39) != 1)
    {
      *(s + 4) |= 0x10000u;
    }

    if (v7 > 7 || v7 >= 4 && (*(s + 18) & 1) == 0)
    {
      v9 = *(s + 38);
      if ((v9 & 0x80000000) == 0)
      {
        v10 = __CFWriteSocketsFds;
        if (v9 < 8 * CFDataGetLength(__CFWriteSocketsFds))
        {
          MutableBytePtr = CFDataGetMutableBytePtr(v10);
          if (__darwin_check_fd_set_overflow(v9, MutableBytePtr, 1))
          {
            if ((*&MutableBytePtr[4 * (v9 >> 5)] & (1 << v9)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v9, MutableBytePtr, 1))
              {
                *&MutableBytePtr[4 * (v9 >> 5)] &= ~(1 << v9);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v16 = 120;
                send(__CFWakeupSocketPair, &v16, 1uLL, 0);
              }

              atomic_load(s + 1);
            }
          }
        }
      }
    }

    if ((v8 & 3) != 0 && (v8 & v7 & 3) != 0)
    {
      __CFReadSocketsTimeoutInvalid = 0;
      v12 = *(s + 38);
      if ((v12 & 0x80000000) == 0)
      {
        v13 = __CFReadSocketsFds;
        if (v12 < 8 * CFDataGetLength(__CFReadSocketsFds))
        {
          v14 = CFDataGetMutableBytePtr(v13);
          if (__darwin_check_fd_set_overflow(v12, v14, 1))
          {
            if ((*&v14[4 * (v12 >> 5)] & (1 << v12)) != 0)
            {
              if (__darwin_check_fd_set_overflow(v12, v14, 1))
              {
                *&v14[4 * (v12 >> 5)] &= ~(1 << v12);
              }

              if (__CFWakeupSocketPair != -1)
              {
                v17 = 115;
                send(__CFWakeupSocketPair, &v17, 1uLL, 0);
              }
            }
          }
        }
      }
    }

    os_unfair_lock_unlock(&__CFActiveSocketsLock);
  }

  pthread_mutex_unlock((s + 24));
  v15 = *MEMORY[0x1E69E9840];
}

CFTypeRef CFReadStreamCopyProperty(CFReadStreamRef stream, CFStreamPropertyKey propertyName)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    v4 = [(__CFReadStream *)stream propertyForKey:propertyName];

    return v4;
  }

  else
  {
    v6 = *(*(stream + 6) + 96);
    if (v6)
    {
      *(stream + 2) |= 0x40uLL;
      result = v6(stream, propertyName, *(stream + 5));
      *(stream + 2) &= ~0x40uLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const void *boundPairReadCopyProperty(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  v3 = 0;
  if (a2 && a3)
  {
    if (*(a3 + 40) && CFStringCompare(@"_kCFStreamPropertyHTTPTrailer", a2, 1uLL) == kCFCompareEqualTo)
    {
      Value = CFDictionaryGetValue(*(a3 + 40), a2);
      v3 = Value;
      if (Value)
      {
        CFRetain(Value);
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t __CFBasicHashGetCountOfValue_block_invoke(void *a1, uint64_t a2)
{
  if (a1[5] == *(a2 + 16) || (v4 = *(CFBasicHashCallBackPtrs[(*(a1[6] + 32) >> 39) & 0x1FLL] + 8 * ((*(a1[6] + 32) >> 34) & 0x1FLL))) != 0 && v4())
  {
    *(*(a1[4] + 8) + 24) += *(a2 + 24);
  }

  return 1;
}

void CFStringTrim(CFMutableStringRef theString, CFStringRef trimString)
{
  v46 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(7uLL, theString))
  {
    v4 = *MEMORY[0x1E69E9840];

    [(__CFString *)theString _cfTrim:trimString];
  }

  else
  {
    result.location = 0;
    result.length = 0;
    p_info = &theString->info;
    v6 = atomic_load(&theString->info);
    if (v6)
    {
      v15 = atomic_load(p_info);
      v16 = v15 & 5;
      v17 = atomic_load(p_info);
      v18 = v17 & 0x60;
      if (v16 == 4)
      {
        p_data = &theString->data;
        if (v18)
        {
          v20 = *p_data;
        }

        else
        {
          v22 = atomic_load(&theString->info);
          v20 = &p_data[(v22 & 5) != 4];
        }

        length = *v20;
      }

      else if ((v17 & 0x60) != 0)
      {
        length = theString->length;
      }

      else
      {
        length = theString->data;
      }

      v48.location = 0;
      v48.length = length;
      if (CFStringFindWithOptionsAndLocale(theString, trimString, v48, 8uLL, 0, &result))
      {
        do
        {
          v23 = result.length + result.location;
          v24 = length - (result.length + result.location);
          v49.location = result.length + result.location;
          v49.length = v24;
        }

        while (CFStringFindWithOptionsAndLocale(theString, trimString, v49, 8uLL, 0, &result));
        v25 = v23;
      }

      else
      {
        v23 = 0;
        v25 = 0;
        v24 = length;
      }

      if (v23 >= length)
      {
        v44 = 0;
        v45 = length;
      }

      else
      {
        v26 = atomic_load(&theString->info);
        v27 = atomic_load(&theString->info);
        v28 = &theString->data;
        if ((v27 & 0x60) != 0)
        {
          v29 = *v28;
        }

        else
        {
          v30 = atomic_load(&theString->info);
          v29 = &v28[(v30 & 5) != 4];
        }

        v31 = (v26 >> 4) & 1;
        v32 = &theString->info;
        v33 = atomic_load(&theString->info);
        v34 = &v29[(v33 >> 2) & 1];
        if (CFStringGetLength(trimString) < v24)
        {
          while (1)
          {
            v50.location = v25;
            v50.length = v24;
            if (!CFStringFindWithOptionsAndLocale(theString, trimString, v50, 0xCuLL, 0, &result))
            {
              break;
            }

            v24 = result.location - v23;
          }
        }

        memmove(v34, &v34[v23 << v31], v24 << v31);
        v35 = atomic_load(v32);
        v36 = v35 & 5;
        v37 = atomic_load(v32);
        v38 = v37 & 0x60;
        if (v36 == 4)
        {
          if (v38)
          {
            v39 = *v28;
          }

          else
          {
            v41 = atomic_load(&theString->info);
            v39 = &v28[(v41 & 5) != 4];
          }

          v40 = *v39;
        }

        else if (v38)
        {
          v40 = theString->length;
        }

        else
        {
          v40 = *v28;
        }

        v44 = v24;
        v45 = v40 - v24;
      }

      __CFStringChangeSizeMultiple(theString, &v44, 1, 0, 0);
    }

    else
    {
      v7 = _CFOSLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        CFStringTrim_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    v42 = *MEMORY[0x1E69E9840];
  }
}

uint64_t __extendLocationForward(int64_t a1, UniChar *buffer, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  while (1)
  {
    if (a1 < 0 || (v12 = *(buffer + 20), v12 <= a1))
    {
      v14 = 0;
      goto LABEL_6;
    }

    v13 = *(buffer + 17);
    if (v13)
    {
      v14 = *(v13 + 2 * *(buffer + 19) + 2 * a1);
    }

    else
    {
      v15 = *(buffer + 18);
      if (v15)
      {
        v14 = *(v15 + *(buffer + 19) + a1);
      }

      else
      {
        if (*(buffer + 22) <= a1 || (v16 = *(buffer + 21), v16 > a1))
        {
          v17 = a1 - 4;
          if (a1 < 4)
          {
            v17 = 0;
          }

          if (v17 + 64 < v12)
          {
            v12 = v17 + 64;
          }

          *(buffer + 21) = v17;
          *(buffer + 22) = v12;
          v31.length = v12 - v17;
          v31.location = *(buffer + 19) + v17;
          CFStringGetCharacters(*(buffer + 16), v31, buffer);
          v16 = *(buffer + 21);
        }

        v14 = buffer[a1 - v16];
      }
    }

    if (v14 >> 10 == 54)
    {
      v18 = a1 + 1;
      v19 = *(buffer + 20);
      if (v19 > a1 + 1)
      {
        v20 = *(buffer + 17);
        if (v20)
        {
          v21 = *(v20 + 2 * *(buffer + 19) + 2 * v18);
        }

        else
        {
          v22 = *(buffer + 18);
          if (v22)
          {
            v21 = *(v22 + *(buffer + 19) + v18);
          }

          else
          {
            if (*(buffer + 22) <= v18 || (v23 = *(buffer + 21), v23 > v18))
            {
              v24 = a1 - 3;
              if (a1 < 3)
              {
                v24 = 0;
              }

              if (v24 + 64 < v19)
              {
                v19 = v24 + 64;
              }

              *(buffer + 21) = v24;
              *(buffer + 22) = v19;
              v32.length = v19 - v24;
              v32.location = *(buffer + 19) + v24;
              CFStringGetCharacters(*(buffer + 16), v32, buffer);
              v23 = *(buffer + 21);
            }

            v21 = buffer[v18 - v23];
          }
        }

        if (v21 >> 10 == 55)
        {
          break;
        }
      }
    }

LABEL_6:
    ++a1;
    if (a3 && ((*(a3 + (v14 >> 3)) >> (v14 & 7)) & 1) != 0 || a4 && ((*(a4 + (v14 >> 3)) >> (v14 & 7)) & 1) != 0)
    {
      if (((v14 - 11904) >> 7) < 0xFBu)
      {
        return a1;
      }
    }

    else if (!a5 || ((v14 - 11904) >> 7) < 0xFBu || ((1 << (v14 & 7)) & *(a5 + (v14 >> 3))) == 0)
    {
      return a1;
    }

LABEL_15:
    if (a1 >= a6)
    {
      return a1;
    }
  }

  v25 = v21;
  v26 = (v14 << 10) + v21 - 56613888;
  a1 += 2;
  BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0xAu, HIWORD(v26));
  if (BitmapPtrForPlane && ((*(BitmapPtrForPlane + (v26 >> 3)) >> (v25 & 7)) & 1) != 0)
  {
    goto LABEL_15;
  }

  v28 = CFUniCharGetBitmapPtrForPlane(0xBu, HIWORD(v26));
  if (v28)
  {
    if ((*(v28 + (v26 >> 3)) >> (v25 & 7)))
    {
      goto LABEL_15;
    }
  }

  v29 = CFUniCharGetBitmapPtrForPlane(0x6Cu, HIWORD(v26));
  if (v29)
  {
    if ((*(v29 + (v26 >> 3)) >> (v25 & 7)))
    {
      goto LABEL_15;
    }
  }

  return a1;
}

void __NSCacheApplicationDidEnterBackgroundCallBack(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (*(a2 + 24) != 255)
  {
    v4 = *(a2 + 16);
    cache_remove_with_block();
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1831AFC58(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x1831AFC1CLL);
  }

  _Unwind_Resume(exception_object);
}

void __CFNotificationCenterDeallocate(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    xpc_connection_cancel(v2);
    v3 = *(a1 + 24);

    xpc_release(v3);
  }
}

void _CFBundleSetupXPCBootstrapWithLanguages(void *a1, const __CFArray *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = xpc_array_create(0, 0);
  if (CFArrayGetCount(a2) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v5);
      if (CFStringGetCString(ValueAtIndex, buffer, 128, 0x8000100u))
      {
        v7 = xpc_string_create(buffer);
        if (v7)
        {
          v8 = v7;
          xpc_array_append_value(v4, v7);
          xpc_release(v8);
        }
      }

      ++v5;
    }

    while (v5 < CFArrayGetCount(a2));
  }

  if (xpc_array_get_count(v4))
  {
    v9 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v9, "MainBundleLanguages", v4);
    xpc_dictionary_set_value(a1, "_NSBundleEntry", v9);
    xpc_release(v9);
  }

  xpc_release(v4);
  v10 = *MEMORY[0x1E69E9840];
}

__CFDictionary *parsePlistDictContent(uint64_t a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(*(a1 + 32), 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (!Mutable)
  {
    v13 = lineNumberStrings(a1);
    Error = __CFPropertyListCreateError(3840, @"Unable to allocate dictionary while parsing plist at line %d", v13);
    v15 = *(a1 + 24);
    if (v15)
    {
      CFRelease(v15);
    }

    v5 = 0;
    *(a1 + 24) = Error;
    return v5;
  }

  v5 = Mutable;
  v6 = parsePlistString(a1);
  if (!v6)
  {
LABEL_14:
    v12 = *(a1 + 24);
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 24) = 0;
    }

    return v5;
  }

  v7 = v6;
  while (1)
  {
    if (!advanceToNonSpace(a1))
    {
      v23 = lineNumberStrings(a1);
      v19 = __CFPropertyListCreateError(3840, @"Missing ';' on line %d", v23);
      goto LABEL_24;
    }

    v8 = *(a1 + 8);
    v9 = *v8;
    if (v9 != 61)
    {
      if (v9 == 59)
      {
        v10 = CFRetain(v7);
        goto LABEL_9;
      }

      v24 = lineNumberStrings(a1);
      v19 = __CFPropertyListCreateError(3840, @"Expected ';' or '=' after key at line %d", v24);
LABEL_24:
      v20 = v19;
      v21 = *(a1 + 24);
      if (v21)
      {
        CFRelease(v21);
      }

      *(a1 + 24) = v20;
LABEL_27:
      CFRelease(v7);
      goto LABEL_28;
    }

    *(a1 + 8) = v8 + 1;
    v10 = parsePlistObject(a1, 1, (a2 + 1));
    if (!v10)
    {
      goto LABEL_27;
    }

LABEL_9:
    CFDictionarySetValue(v5, v7, v10);
    CFRelease(v7);
    if (v10)
    {
      CFRelease(v10);
    }

    if (!advanceToNonSpace(a1))
    {
      break;
    }

    v11 = *(a1 + 8);
    if (*v11 != 59)
    {
      break;
    }

    *(a1 + 8) = v11 + 1;
    v7 = parsePlistString(a1);
    if (!v7)
    {
      goto LABEL_14;
    }
  }

  v16 = lineNumberStrings(a1);
  v17 = __CFPropertyListCreateError(3840, @"Missing ';' on line %d", v16);
  v18 = *(a1 + 24);
  if (v18)
  {
    CFRelease(v18);
  }

  *(a1 + 24) = v17;
LABEL_28:
  CFRelease(v5);
  return 0;
}

__CFString *parsePlistString(uint64_t a1)
{
  if (!advanceToNonSpace(a1))
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *v2;
  if (v3 == 39 || v3 == 34)
  {
    *(a1 + 8) = v2 + 1;

    return parseQuotedPlistString(a1, v3);
  }

  if ((v3 - 48) >= 0xA && ((v3 & 0xFFDF) - 65) >= 0x1Au && ((v3 - 36) > 0x3B || ((1 << (v3 - 36)) & 0x800000000400E01) == 0))
  {
    return 0;
  }

  return parseUnquotedPlistString(a1);
}

__CFString *parseQuotedPlistString(uint64_t a1, int a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
LABEL_70:
    *(a1 + 8) = v4;
    v36 = lineNumberStrings(a1);
    Error = __CFPropertyListCreateError(3840, @"Unterminated quoted string starting on line %d", v36);
    goto LABEL_71;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E9830];
  v8 = *(a1 + 8);
  v9 = v8;
  do
  {
    chars = *v8;
    if (chars == a2)
    {
      break;
    }

    if (chars == 92)
    {
      if (!v6)
      {
        Mutable = CFStringCreateMutable(*(a1 + 32), 0);
        if (!Mutable)
        {
          Error = __CFPropertyListCreateError(3840, @"Unable to allocate quoted string while parsing plist");
          goto LABEL_71;
        }

        v6 = Mutable;
        v8 = *(a1 + 8);
      }

      CFStringAppendCharacters(v6, v9, v8 - v9);
      v12 = *(a1 + 8);
      v11 = *(a1 + 16);
      *(a1 + 8) = v12 + 2;
      if (v12 + 2 == v11)
      {
        CFRelease(v6);
        v37 = lineNumberStrings(a1);
        Error = __CFPropertyListCreateError(3840, @"Unterminated backslash sequence on line %d", v37);
        goto LABEL_71;
      }

      v13 = *(v12 + 2);
      v14 = (v12 + 4);
      *(a1 + 8) = v14;
      if (v13 > 84)
      {
        if (v13 > 109)
        {
          if (v13 > 115)
          {
            if (v13 == 116)
            {
              LOWORD(v13) = 9;
            }

            else if (v13 == 118)
            {
              LOWORD(v13) = 11;
            }
          }

          else if (v13 == 110)
          {
            LOWORD(v13) = 10;
          }

          else if (v13 == 114)
          {
            LOWORD(v13) = 13;
          }
        }

        else if (v13 > 97)
        {
          if (v13 == 98)
          {
            LOWORD(v13) = 8;
          }

          else if (v13 == 102)
          {
            LOWORD(v13) = 12;
          }
        }

        else if (v13 == 85)
        {
          if (v14 >= v11)
          {
            LOWORD(v13) = 0;
          }

          else
          {
            LOWORD(v13) = 0;
            v20 = -5;
            do
            {
              if (__CFADD__(v20++, 1))
              {
                break;
              }

              v22 = *v14;
              if (v22 <= 0x7F && (*(v7 + 4 * v22 + 60) & 0x10000) != 0)
              {
                *(a1 + 8) = ++v14;
                if (v22 >= 0x47)
                {
                  v23 = -87;
                }

                else
                {
                  v23 = -55;
                }

                if (v22 < 0x3A)
                {
                  v23 = -48;
                }

                LOWORD(v13) = v22 + 16 * v13 + v23;
              }
            }

            while (v14 < v11);
          }
        }

        else if (v13 == 97)
        {
          LOWORD(v13) = 7;
        }
      }

      else
      {
        v15 = v13 - 48;
        if ((v13 - 48) < 8)
        {
          v40 = 0;
          v39 = 0;
          v16 = 1;
          do
          {
            if (v14 >= v11)
            {
              break;
            }

            v17 = v16;
            if ((*v14 & 0xFFF8) != 0x30)
            {
              break;
            }

            v16 = 0;
            v15 = *v14++ + 8 * v15 - 48;
            *(a1 + 8) = v14;
          }

          while ((v17 & 1) != 0);
          v41 = v15;
          if (CFStringEncodingBytesToUnicode(2817, 0, &v41, 1, 0, &v40, 1, &v39))
          {
            v18 = __CFPropertyListCreateError(3840, @"Unable to convert octet-stream while parsing plist");
            v19 = *(a1 + 24);
            if (v19)
            {
              CFRelease(v19);
            }

            LOWORD(v13) = 0;
            *(a1 + 24) = v18;
          }

          else if (v39 == 1)
          {
            LOWORD(v13) = v40;
          }

          else
          {
            LOWORD(v13) = 0;
          }
        }
      }

      chars = v13;
      CFStringAppendCharacters(v6, &chars, 1);
      v8 = *(a1 + 8);
      v3 = *(a1 + 16);
      v9 = v8;
    }

    else
    {
      *(a1 + 8) = ++v8;
    }
  }

  while (v8 < v3);
  if (v3 <= v8)
  {
    if (v6)
    {
      CFRelease(v6);
    }

    goto LABEL_70;
  }

  if (v6)
  {
    if (v9 != v8)
    {
      CFStringAppendCharacters(v6, v9, v8 - v9);
    }

    if (*(a1 + 40) == 2)
    {
      goto LABEL_81;
    }

    Value = CFSetGetValue(*(a1 + 48), v6);
    if (!Value)
    {
      v25 = __CFStringCollectionCopy(*(a1 + 32), v6);
      if (!v25)
      {
        v34 = __CFPropertyListCreateError(3840, @"Unable to copy string while parsing plist");
        v35 = *(a1 + 24);
        if (v35)
        {
          CFRelease(v35);
        }

        Value = 0;
        *(a1 + 24) = v34;
        goto LABEL_67;
      }

      Value = v25;
      CFSetAddValue(*(a1 + 48), v25);
      __CFTypeCollectionRelease(*(a1 + 32), Value);
    }

    CFRetain(Value);
LABEL_67:
    CFRelease(v6);
    v6 = Value;
    goto LABEL_81;
  }

  if (*(a1 + 40) != 2)
  {
    v6 = _uniqueStringForCharacters(a1, v9, v8 - v9);
LABEL_81:
    *(a1 + 8) += 2;
    v33 = *(a1 + 24);
    if (v33)
    {
      CFRelease(v33);
      *(a1 + 24) = 0;
    }

    goto LABEL_74;
  }

  v31 = CFStringCreateMutable(*(a1 + 32), 0);
  if (v31)
  {
    v6 = v31;
    v32 = *(a1 + 8);
    if (v9 != v32)
    {
      CFStringAppendCharacters(v31, v9, v32 - v9);
    }

    goto LABEL_81;
  }

  Error = __CFPropertyListCreateError(3840, @"Unable to allocate mutable string while parsing plist");
LABEL_71:
  v27 = Error;
  v28 = *(a1 + 24);
  if (v28)
  {
    CFRelease(v28);
  }

  v6 = 0;
  *(a1 + 24) = v27;
LABEL_74:
  v29 = *MEMORY[0x1E69E9840];
  return v6;
}

CFTypeRef _uniqueStringForCharacters(uint64_t a1, const UniChar *a2, CFIndex a3)
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    v7 = v21 - v6;
    if (v8 >= 2048)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, a3 + 1, 0x100004077774924, 0);
      if (!Typed)
      {
        Error = __CFPropertyListCreateError(3840, @"Unable to allocate string while parsing plist");
        goto LABEL_22;
      }
    }

    else
    {
      Typed = v21 - v6;
      if (a3 < 1)
      {
LABEL_12:
        Typed[a3] = 0;
        v14 = CFStringCreateWithBytes(*(a1 + 32), Typed, a3, 0x600u, 0);
        if (!v14)
        {
          Error = __CFPropertyListCreateError(3840, @"Unable to allocate ascii string while parsing plist");
LABEL_22:
          v18 = Error;
          v19 = *(a1 + 24);
          if (v19)
          {
            CFRelease(v19);
          }

          Value = 0;
          *(a1 + 24) = v18;
LABEL_25:
          v20 = *MEMORY[0x1E69E9840];
          return Value;
        }

LABEL_15:
        v16 = v14;
        if (Typed != v7)
        {
          CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
        }

        Value = CFSetGetValue(*(a1 + 48), v16);
        if (!Value)
        {
          CFSetAddValue(*(a1 + 48), v16);
          Value = v16;
        }

        CFRelease(v16);
        CFRetain(Value);
        goto LABEL_25;
      }
    }

    v12 = 0;
    while (1)
    {
      v13 = a2[v12];
      if (v13 >= 0x80)
      {
        break;
      }

      Typed[v12++] = v13;
      if (a3 == v12)
      {
        goto LABEL_12;
      }
    }

    v14 = CFStringCreateWithCharacters(*(a1 + 32), a2, a3);
    if (!v14)
    {
      Error = __CFPropertyListCreateError(3840, @"Unable to allocate pre-unique string while parsing plist");
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v10 = *MEMORY[0x1E69E9840];

  return CFRetain(&stru_1EF068AA8);
}

uint64_t _CFDataFindBytes(const __CFData *a1, const __CFData *a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  BytePtr = CFDataGetBytePtr(a1);
  v11 = CFDataGetBytePtr(a2);
  if (CF_IS_OBJC(0x14uLL, a1))
  {
    v12 = [(__CFData *)a1 length];
  }

  else
  {
    v12 = *(a1 + 2);
  }

  if (CF_IS_OBJC(0x14uLL, a2))
  {
    v13 = [(__CFData *)a2 length];
  }

  else
  {
    v13 = *(a2 + 2);
  }

  v14 = ((a5 << 63 >> 63) & (a4 - v13)) + a3;
  if (a4 > v13)
  {
    v15 = v13;
  }

  else
  {
    v14 = a3;
    v15 = a4;
  }

  if ((a5 & 2) != 0)
  {
    a3 = v14;
    v16 = v15;
  }

  else
  {
    v16 = a4;
  }

  if (v16 >= v12 - a3)
  {
    v16 = v12 - a3;
  }

  result = -1;
  if (v13 - 1 < v16 && v12)
  {
    v18 = &BytePtr[a3];
    v19 = __CFDataSearchBoyerMoore(v18, v16, v11, v13, a5 & 1);
    if (v19)
    {
      return &v19[a3 - v18];
    }

    else
    {
      return -1;
    }
  }

  return result;
}

void _extractCFPDBits(void *a1, void *a2, void *a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    length = 0;
    buffer = 0u;
    *pid = 0u;
    data = xpc_dictionary_get_data(a1, "CFPreferencesAuditToken", &length);
    if (data && length == 32)
    {
      v8 = data[1];
      buffer = *data;
      *pid = v8;
    }

    else
    {
      if (!xpc_dictionary_get_remote_connection(a1))
      {
        value = xpc_dictionary_get_value(a1, "connection");
        if (!value || object_getClass(value) != MEMORY[0x1E69E9E68])
        {
          _extractCFPDBits_cold_1();
        }
      }

      xpc_connection_get_audit_token();
    }

    v10 = pid[1];
    v37 = 0u;
    v38 = 0u;
    buffer = 0u;
    *pid = 0u;
    v9 = v10 != -1 && proc_name(v10, &buffer, 0x40u) >= 0;
  }

  else
  {
    v9 = 0;
    v37 = 0u;
    v38 = 0u;
    buffer = 0u;
    *pid = 0u;
    v10 = 0xFFFFFFFFLL;
  }

  v34 = 0;
  v33 = 0;
  v12 = toCString([a3 domain], &v34 + 1, "no domain");
  v13 = toCString([a3 user], &v34, "no user");
  if (!a2)
  {
    goto LABEL_16;
  }

  Class = object_getClass(a2);
  if (Class == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(a2);
    v15 = 0;
  }

  else
  {
    if (Class != MEMORY[0x1E69E9E80])
    {
LABEL_16:
      v15 = 0;
      string_ptr = "no key";
      goto LABEL_19;
    }

    length = 0;
    p_length = &length;
    v31 = 0x2020000000;
    v32 = 0;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = ___extractCFPDBits_block_invoke;
    applier[3] = &unk_1E6D7DAB0;
    applier[4] = &length;
    xpc_dictionary_apply(a2, applier);
    string_ptr = malloc_type_calloc(1uLL, p_length[3] + 3, 0x4EB1C7E3uLL);
    *string_ptr = 91;
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___extractCFPDBits_block_invoke_2;
    v23[3] = &unk_1E6DD1DC0;
    v23[4] = &v24;
    v23[5] = string_ptr;
    xpc_dictionary_apply(a2, v23);
    string_ptr[*(v25 + 6)] = 93;
    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(&length, 8);
    v15 = 1;
  }

LABEL_19:
  if ([a3 byHost])
  {
    v17 = "kCFPreferencesCurrentHost";
  }

  else
  {
    v17 = "kCFPreferencesAnyHost";
  }

  v18 = [a3 copyUncanonicalizedPath];
  v19 = toCString(v18, &v33, "no uncanonicalized path");
  if (v9)
  {
    p_buffer = &buffer;
  }

  else
  {
    p_buffer = "unknown process name";
  }

  (*(a4 + 16))(a4, v10, p_buffer, v12, string_ptr, v13, v17, v19, [a3 managed]);
  if (v18)
  {
    CFRelease(v18);
  }

  if (HIBYTE(v34) == 1)
  {
    free(v12);
  }

  if (v34 == 1)
  {
    free(v13);
  }

  if (v33 == 1)
  {
    free(v19);
  }

  if (v15)
  {
    free(string_ptr);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void sub_1831B0EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

unsigned __int8 *__CFDataSearchBoyerMoore(unint64_t a1, uint64_t a2, unsigned __int8 *a3, unint64_t a4, int a5)
{
  v49 = *MEMORY[0x1E69E9840];
  bzero(v48, 0x800uLL);
  if (a4 >> 60)
  {
    goto LABEL_62;
  }

  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v15 = &v46[-v14];
  if (a4 <= 0x100)
  {
    MEMORY[0x1EEE9AC00](v12, v13);
    v16 = &v46[-((8 * a4 + 15) & 0xFFFFFFFFFFFFFFF0)];
    goto LABEL_7;
  }

  v17 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
  if (!v17 || (v15 = v17, (v18 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL)) == 0))
  {
LABEL_62:
    __CFDataHandleOutOfMemory(8 * a4);
  }

  v16 = v18;
LABEL_7:
  v19 = vdupq_n_s64(a4);
  v20 = 0;
  if (a5)
  {
    do
    {
      *&v48[v20] = v19;
      v20 += 16;
    }

    while (v20 != 2048);
    v47 = a5;
    v21 = (a4 - 1);
    if (a4 - 1 >= 0)
    {
      do
      {
        *&v48[8 * a3[v21]] = v21;
        --v21;
      }

      while (v21 != -1);
    }

    v22 = malloc_type_malloc(a4, 0x100004077774924uLL);
    if (!v22)
    {
      __CFDataHandleOutOfMemory(a4);
    }

    v23 = v22;
    memmove(v22, a3, a4);
    if (a4 >= 2)
    {
      v31 = 0;
      v32 = a4 >> 1;
      v33 = a4 - 1;
      do
      {
        v34 = v23[v31];
        v23[v31] = v23[v33];
        v23[v33] = v34;
        ++v31;
        --v33;
      }

      while (v32 != v31);
      _computeGoodSubstringShift(v23, a4, v15, v16);
      v35 = &v15[a4 - 1];
      v36 = v15;
      do
      {
        v37 = *v36;
        *v36++ = *v35;
        *v35-- = v37;
        --v32;
      }

      while (v32);
    }

    else
    {
      _computeGoodSubstringShift(v23, a4, v15, v16);
    }

    free(v23);
    if (v47)
    {
      v38 = &a3[a4];
      v39 = (a1 + a2 - a4);
      if (v39 >= a1 && a4)
      {
        v40 = a3;
        do
        {
          if (*v39 == *v40)
          {
            ++v39;
            ++v40;
          }

          else
          {
            v41 = v15[v40 - a3];
            if (*&v48[8 * *v39] > v41)
            {
              v41 = *&v48[8 * *v39];
            }

            v39 -= v41;
            v40 = a3;
          }
        }

        while (v39 >= a1 && v40 < v38);
      }

      else
      {
        v40 = a3;
      }

      if (v40 == v38)
      {
        v43 = &v39[-a4];
      }

      else
      {
        v43 = 0;
      }

      goto LABEL_59;
    }
  }

  else
  {
    do
    {
      *&v48[v20] = v19;
      v20 += 16;
    }

    while (v20 != 2048);
    if (a4)
    {
      v24 = a4 - 1;
      v25 = a3;
      do
      {
        v26 = *v25++;
        *&v48[8 * v26] = v24--;
      }

      while (v24 != -1);
    }

    _computeGoodSubstringShift(a3, a4, v15, v16);
  }

  v27 = (a1 + a4 - 1);
  if (v27 >= a1 + a2 || &a3[a4 - 1] < a3)
  {
    v28 = &a3[a4 - 1];
  }

  else
  {
    v28 = &a3[a4 - 1];
    do
    {
      if (*v27 == *v28)
      {
        --v27;
        --v28;
      }

      else
      {
        v29 = v15[v28 - a3];
        if (*&v48[8 * *v27] > v29)
        {
          v29 = *&v48[8 * *v27];
        }

        v27 += v29;
        v28 = &a3[a4 - 1];
      }
    }

    while (v27 < a1 + a2 && v28 >= a3);
  }

  if (v28 < a3)
  {
    v43 = v27 + 1;
  }

  else
  {
    v43 = 0;
  }

LABEL_59:
  if (a4 >= 0x101)
  {
    free(v15);
    free(v16);
  }

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

void *toCString(const __CFString *a1, char *a2, void *a3)
{
  if (!a1)
  {
    goto LABEL_10;
  }

  v5 = a1;
  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID())
  {
    v7 = CFCopyDescription(v5);
    if (!v7)
    {
      goto LABEL_10;
    }

    v5 = v7;
    CFAutorelease(v7);
  }

  SystemEncoding = CFStringGetSystemEncoding();
  CStringPtr = CFStringGetCStringPtr(v5, SystemEncoding);
  if (!CStringPtr)
  {
    Length = CFStringGetLength(v5);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, SystemEncoding);
    v10 = 1;
    v13 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0x100004077774924uLL);
    if (CFStringGetCString(v5, v13, MaximumSizeForEncoding + 1, SystemEncoding))
    {
      a3 = v13;
      goto LABEL_11;
    }

    free(v13);
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v10 = 0;
  a3 = CStringPtr;
LABEL_11:
  *a2 = v10;
  return a3;
}

uint64_t _computeGoodSubstringShift(uint64_t result, int a2, void *a3, uint64_t *a4)
{
  v4 = (a2 - 1);
  a4[v4] = a2;
  if (a2 > 1)
  {
    v5 = (a2 - 2);
    LODWORD(v6) = a2 - 1;
    v7 = a2 - 1;
    do
    {
      if (v5 <= v6 || (v8 = a4[~v7 + a2 + v5], v8 >= v5 - v6))
      {
        if (v5 >= v6)
        {
          v9 = v6;
        }

        else
        {
          v9 = v5;
        }

        if (v9 < 0)
        {
          LODWORD(v6) = v9;
        }

        else
        {
          v6 = v6;
          if (v5 < v6)
          {
            v6 = v5;
          }

          while (*(result + v6) == *(result + a2 - 1 - v5 + v6))
          {
            v10 = v6-- <= 0;
            if (v10)
            {
              LODWORD(v6) = -1;
              break;
            }
          }
        }

        v8 = v5 - v6;
        v7 = v5;
      }

      a4[v5] = v8;
      v10 = v5-- <= 0;
    }

    while (!v10);
  }

  if (a2 >= 1)
  {
    v11 = v4;
    v12 = (a2 + 1) & 0xFFFFFFFE;
    v13 = vdupq_n_s64(a2 - 1);
    v14 = xmmword_183306C30;
    v15 = a3 + 1;
    v16 = vdupq_n_s64(2uLL);
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v13, v14));
      if (v17.i8[0])
      {
        *(v15 - 1) = a2;
      }

      if (v17.i8[4])
      {
        *v15 = a2;
      }

      v14 = vaddq_s64(v14, v16);
      v15 += 2;
      v12 -= 2;
    }

    while (v12);
    LODWORD(v18) = 0;
    v19 = a2;
    do
    {
      v20 = v19--;
      if (a4[v19] == v20 && v4 - v19 > v18)
      {
        v18 = v18;
        do
        {
          if (a3[v18] == a2)
          {
            a3[v18] = v4 - v19;
          }

          ++v18;
        }

        while (v12 != v18);
        LODWORD(v18) = v12;
      }

      ++v12;
    }

    while (v12 != a2);
    if (a2 != 1)
    {
      v21 = (a2 - 1);
      v22 = v4;
      do
      {
        v23 = *a4++;
        a3[v4 - v23] = v22--;
        --v21;
      }

      while (v21);
      do
      {
        *a3++ += v11--;
        --v4;
      }

      while (v4);
    }
  }

  return result;
}

uint64_t CFStringHashCharacters(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 >= 97)
  {
    v5 = 0;
    v4 = a2;
    do
    {
      v4 = a1[v5 + 3] + 67503105 * v4 + 257 * (257 * (257 * a1[v5] + a1[v5 + 1]) + a1[v5 + 2]);
      v6 = v5 >= 28;
      v5 += 4;
    }

    while (!v6);
    v7 = 0;
    do
    {
      v8 = a1 + (a2 & 0xFFFFFFFFFFFFFFFELL) - 32;
      v4 = *(v8 + v7 + 6) + 67503105 * v4 + 257 * (257 * (257 * *(v8 + v7) + *(v8 + v7 + 2)) + *(v8 + v7 + 4));
      v9 = v7 - 32;
      v7 += 8;
    }

    while (v9 < 24);
    v10 = &a1[a2];
    v11 = v10 - 32;
    do
    {
      v4 = v11[3] + 67503105 * v4 + 257 * (257 * (257 * *v11 + v11[1]) + v11[2]);
      v11 += 4;
    }

    while (v11 < v10);
  }

  else
  {
    v2 = &a1[a2];
    if ((a2 & 0xFFFFFFFFFFFFFFFCLL) < 1)
    {
      v4 = a2;
    }

    else
    {
      v3 = &a1[a2 & 0xFFFFFFFFFFFFFFFCLL];
      v4 = a2;
      do
      {
        v4 = a1[3] + 67503105 * v4 + 257 * (257 * (257 * *a1 + a1[1]) + a1[2]);
        a1 += 4;
      }

      while (a1 < v3);
    }

    while (a1 < v2)
    {
      v12 = *a1++;
      v4 = 257 * v4 + v12;
    }
  }

  return (v4 << (a2 & 0x1F)) + v4;
}

CFIndex _CFPreferencesGetUserIdentifierForUID(uid_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  key = a1;
  os_unfair_lock_lock(&_cfprefsUsernameLock);
  Mutable = _CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername;
  if (!_CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    _CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername = Mutable;
  }

  if (!_cfprefsUsernameToUid)
  {
    memset(&keyCallBacks, 0, 24);
    keyCallBacks.copyDescription = kCFCopyStringDictionaryKeyCallBacks.copyDescription;
    *&keyCallBacks.equal = *&kCFCopyStringDictionaryKeyCallBacks.equal;
    _cfprefsUsernameToUid = CFDictionaryCreateMutable(0, 0, &keyCallBacks, 0);
    Mutable = _CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername;
  }

  keyCallBacks.version = 0;
  if (CFDictionaryGetValueIfPresent(Mutable, &key, &keyCallBacks))
  {
    version = CFRetain(keyCallBacks.version);
  }

  else
  {
    *__error() = 0;
    v3 = getpwuid(key);
    if (v3)
    {
      keyCallBacks.version = CFStringCreateWithFormat(0, 0, @"%s", v3->pw_name);
      CFDictionarySetValue(_CFPreferencesGetUserIdentifierForUID__cfprefsUidToUsername, key, keyCallBacks.version);
      CFDictionarySetValue(_cfprefsUsernameToUid, keyCallBacks.version, key);
      version = keyCallBacks.version;
    }

    else
    {
      v4 = *__error();
      v5 = _CFPrefsClientLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        _CFPreferencesGetUserIdentifierForUID_cold_1(&key, v4, v5);
      }

      version = 0;
    }
  }

  os_unfair_lock_unlock(&_cfprefsUsernameLock);
  v6 = *MEMORY[0x1E69E9840];
  return version;
}

uint64_t _CFPropertyListCreateSingleValue(__objc2_class **a1, const __CFData *a2, uint64_t a3, CFStringRef theString, CFDateRef *a5, CFErrorRef *a6)
{
  v44 = *MEMORY[0x1E69E9840];
  if (theString && CFStringGetLength(theString))
  {
    v41 = 0;
    memset(v43, 0, sizeof(v43));
    v40 = 0;
    BytePtr = CFDataGetBytePtr(a2);
    Length = CFDataGetLength(a2);
    if (Length >= 8)
    {
      v14 = Length;
      if (__CFDataGetBinaryPlistTopLevelInfo(a2, &v41, &v40, v43))
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(&__kCFAllocatorSystemDefault, theString, @":");
        v42 = 0;
        *v39 = v40;
        Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
        Count = CFArrayGetCount(ArrayBySeparatingStrings);
        _CFDictionarySetCapacity(Mutable, Count + 1);
        ObjectFiltered = Count > 0;
        if (Count < 1)
        {
LABEL_39:
          ObjectFiltered = 0;
        }

        else
        {
          v36 = a3;
          v37 = a5;
          v19 = 0;
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, i);
            if (__CFBinaryPlistIsDictionary(BytePtr, v14, *v39, v43))
            {
              if ((__CFBinaryPlistGetOffsetForValueFromDictionary3(BytePtr, v14, *v39, v43, ValueAtIndex, &v42, v39) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else if (__CFBinaryPlistIsArray(BytePtr, v14, *v39, v43) && (IntValue = CFStringGetIntValue(ValueAtIndex), IntValue <= 0x7FFFFFFE))
            {
              if ((__CFBinaryPlistGetOffsetForValueFromArray2(BytePtr, v14, *v39, v43, IntValue, v39) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else if ((v19 & 1) == 0)
            {
              goto LABEL_39;
            }

            v19 = 1;
          }

          if (v37)
          {
            v38 = 0;
            ObjectFiltered = __CFBinaryPlistCreateObjectFiltered(BytePtr, v14, *v39, v43, a1, v36, 0, Mutable, 0, 0, 0, &v38, 0);
            if (ObjectFiltered)
            {
              *v37 = v38;
            }
          }
        }

        CFRelease(ArrayBySeparatingStrings);
        v33 = Mutable;
LABEL_45:
        CFRelease(v33);
        goto LABEL_46;
      }
    }

    v42 = 0;
    _CFPropertyListCreateWithData(a1, a2, a3, a6, 1, 0, 0, &v42);
    v23 = v42;
    if (v42)
    {
      v24 = CFStringCreateArrayBySeparatingStrings(&__kCFAllocatorSystemDefault, theString, @":");
      v25 = v23;
      if (CFArrayGetCount(v24) < 1)
      {
LABEL_35:
        v31 = v25 != 0;
        v32 = 1;
        if (a5 && v25)
        {
          *a5 = v25;
          CFRetain(v25);
          ObjectFiltered = 1;
        }

        else
        {
LABEL_43:
          ObjectFiltered = v32 & v31;
        }

        CFRelease(v24);
        v33 = v23;
        goto LABEL_45;
      }

      v26 = 0;
      v25 = v23;
      while (1)
      {
        v27 = CFArrayGetValueAtIndex(v24, v26);
        v28 = CFStringGetIntValue(v27);
        v29 = v28;
        if (v28 == 0x7FFFFFFF)
        {
          goto LABEL_25;
        }

        if (!v28)
        {
          break;
        }

        if (v28 != 0x80000000 || !v25)
        {
LABEL_31:
          if (!v25)
          {
LABEL_41:
            v32 = 0;
            v31 = 0;
            goto LABEL_43;
          }

          goto LABEL_32;
        }

LABEL_29:
        if (CFGetTypeID(v25) == 18)
        {
          Value = CFDictionaryGetValue(v25, v27);
          goto LABEL_34;
        }

LABEL_32:
        if (CFGetTypeID(v25) != 19)
        {
          v32 = 0;
          v31 = 1;
          goto LABEL_43;
        }

        Value = CFArrayGetValueAtIndex(v25, v29);
LABEL_34:
        v25 = Value;
        if (++v26 >= CFArrayGetCount(v24))
        {
          goto LABEL_35;
        }
      }

      if (CFStringCompare(@"0", v27, 0) == kCFCompareEqualTo)
      {
        goto LABEL_31;
      }

LABEL_25:
      if (!v25)
      {
        goto LABEL_41;
      }

      goto LABEL_29;
    }
  }

  ObjectFiltered = 0;
LABEL_46:
  v34 = *MEMORY[0x1E69E9840];
  return ObjectFiltered;
}

unint64_t __CFBinaryPlistIsDictionary(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = 0;
  if (a3 < 8)
  {
    return v4;
  }

  v5 = *(a4 + 24) - 1;
  if (v5 < a3)
  {
    return v4;
  }

  v4 = 0;
  v6 = (a1 + a3);
  if (a1 + a3 == -1)
  {
    return v4;
  }

  v7 = *v6;
  if ((*v6 & 0xF0) != 0xD0)
  {
    return v4;
  }

  v8 = v6 + 1;
  v4 = v7 & 0xF;
  if ((v7 & 0xF) != 0xF)
  {
    goto LABEL_25;
  }

  if (a1 + v5 < v8)
  {
    return 0;
  }

  v9 = v6 + 2;
  v10 = *v8;
  if ((*v8 & 0xF0) != 0x10)
  {
    return 0;
  }

  v4 = 0;
  v11 = v10 & 0xF;
  v12 = 1 << (v10 & 0xF);
  if (__CFADD__(v12, v9) || &v8[v12] > a1 + v5)
  {
    return v4;
  }

  if (v12 > 3u)
  {
    if (v12 == 4)
    {
      v4 = bswap32(*(v8 + 1));
      goto LABEL_24;
    }

    if (v12 == 8)
    {
      v4 = bswap64(*(v8 + 1));
      goto LABEL_23;
    }

LABEL_17:
    if (v11 > 7)
    {
      v4 = 0;
      goto LABEL_24;
    }

    v4 = 0;
    v13 = v12;
    v14 = v9;
    do
    {
      v15 = *v14++;
      v4 = v15 | (v4 << 8);
      --v13;
    }

    while (v13);
LABEL_23:
    if ((v4 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (v12 == 1)
  {
    v4 = *v9;
    goto LABEL_24;
  }

  if (v12 != 2)
  {
    goto LABEL_17;
  }

  v4 = __rev16(*(v8 + 1));
LABEL_24:
  v8 = &v9[v12];
LABEL_25:
  if (v4)
  {
    v16 = 2 * v4;
    if (!is_mul_ok(v16, *(a4 + 7)))
    {
      return 0;
    }

    v4 = v16 * *(a4 + 7);
  }

  v17 = __CFADD__(v4, v8);
  LODWORD(v4) = a1 + v5 >= &v8[v4 - 1];
  if (v17)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t _CFBigNumInitWithInt32(uint64_t result, unsigned int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if ((a2 & 0x80000000) != 0)
  {
    *(result + 20) |= 0xFFu;
    a2 = -a2;
  }

  *result = a2 % 0x3B9ACA00;
  *(result + 4) = a2 / 0x3B9ACA00;
  return result;
}

const __CFArray *_CFBundleCopyLanguageSearchListInDirectory(CFURLRef url, unsigned __int8 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v4 = _CFBundleCopyInfoDictionaryInDirectory(&__kCFAllocatorSystemDefault, url, &v19);
  v5 = v4;
  if (!v4)
  {
    v7 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  Value = CFDictionaryGetValue(v4, @"CFBundleDevelopmentRegion");
  v7 = Value;
  if (Value)
  {
    v8 = CFGetTypeID(Value);
    if (v8 != CFStringGetTypeID() || !CFStringGetLength(v7))
    {
      v7 = 0;
    }
  }

  v9 = CFDictionaryGetValue(v5, @"CFBundleLocalizations");
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  CFRetain(v9);
  v11 = CFGetTypeID(v10);
  if (v11 != CFArrayGetTypeID())
  {
    CFRelease(v10);
LABEL_9:
    v10 = _copyAppleLocalizations(v5);
  }

LABEL_11:
  v12 = _CFBundleCopyResourcesDirectoryURLInDirectory(url, v19);
  v13 = _CFBundleCopyLProjDirectoriesForURL(&__kCFAllocatorSystemDefault, v12);
  CFRelease(v12);
  if (v10 && v13)
  {
    MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v10);
    v22.length = CFArrayGetCount(v13);
    v22.location = 0;
    CFArrayAppendArray(MutableCopy, v13, v22);
    CFRelease(v13);
    v13 = MutableCopy;
LABEL_16:
    CFRelease(v10);
    goto LABEL_17;
  }

  if (v10)
  {
    v13 = CFRetain(v10);
    goto LABEL_16;
  }

  if (!v13)
  {
    v13 = CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
  }

LABEL_17:
  v15 = _CFBundleCopyUserLanguages();
  v16 = _CFBundleCopyPreferredLanguagesInList(v13, v7, v15);
  if (v15)
  {
    CFRelease(v15);
  }

  CFRelease(v13);
  if (v7)
  {
    v21.length = CFArrayGetCount(v16);
    v21.location = 0;
    if (CFArrayGetFirstIndexOfValue(v16, v21, v7) < 0)
    {
      CFArrayAppendValue(v16, v7);
    }
  }

  if (!CFArrayGetCount(v16))
  {
    CFArrayAppendValue(v16, @"en");
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (a2)
  {
    *a2 = v19;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

CFURLRef CFBundleCopyResourceURLInDirectory(CFURLRef bundleURL, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName)
{
  v15 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(bundleURL, 1u, buffer, 1026))
  {
    v8 = strlen(buffer);
    v9 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer, v8, 1u);
    if (!v9)
    {
      v9 = CFRetain(bundleURL);
    }

    if (_CFBundleCouldBeBundle(v9))
    {
      Resources = _CFBundleCopyFindResources(0, bundleURL, v10, resourceName, resourceType, subDirName, 0, 0, 0, 0);
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    Resources = 0;
    if (v9)
    {
LABEL_9:
      CFRelease(v9);
    }
  }

  else
  {
    Resources = 0;
  }

LABEL_10:
  v12 = *MEMORY[0x1E69E9840];
  return Resources;
}

uint64_t _CFGetTypeIDDescription(unint64_t a1)
{
  if (a1 > 0x47)
  {
    v2 = a1 - 72;
    if (a1 - 72 >= dword_1ED40C410)
    {
      return 0;
    }

    v3 = __CFRuntimeClassTables[v2 >> 6];
    if (!v3)
    {
      return 0;
    }

    v1 = (v3 + 8 * (v2 & 0x3F));
  }

  else
  {
    v1 = (&__CFRuntimeBuiltinClassTable + a1);
  }

  v4 = 0;
  if (a1 != 1)
  {
    v5 = *v1;
    if (v5)
    {
      return *(v5 + 8);
    }
  }

  return v4;
}

void _CFAssertMismatchedTypeID(unint64_t a1, unint64_t a2)
{
  v4 = _CFGetTypeIDDescription(a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = "<unknown>";
  }

  v6 = _CFGetTypeIDDescription(a2);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = "<unknown>";
  }

  snprintf(__str, 0xFFuLL, "Expected typeID %lu (%s) does not match actual typeID %lu (%s)", a1, v5, a2, v7);
  qword_1EA849A30 = __str;
  __break(1u);
}

double CFGetSystemUptime()
{
  if (CFDateGetTypeID_initOnce != -1)
  {
    CFGetSystemUptime_cold_1();
  }

  return *&__CF1_TSRRate * mach_absolute_time();
}

__CFString *_CFDateComponentsCopyDescriptionInner(void *a1)
{
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  CFStringAppend(Mutable, @"{");
  if (a1[2])
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Calendar: %@", a1[2]);
  }

  if (a1[3])
  {
    CFStringAppendFormat(Mutable, 0, @"\n    TimeZone: %@", a1[3]);
  }

  if (a1[4] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Era: %ld", a1[4]);
  }

  if (a1[5] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Calendar Year: %ld", a1[5]);
  }

  if (a1[21] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Day of Year: %ld", a1[21]);
  }

  if (a1[6] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Month: %ld", a1[6]);
  }

  if (a1[7] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Leap Month: %ld", a1[7]);
  }

  if (a1[9] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Day: %ld", a1[9]);
  }

  if (a1[8] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Repeated Day: %ld", a1[8]);
  }

  if (a1[10] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Hour: %ld", a1[10]);
  }

  if (a1[11] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Minute: %ld", a1[11]);
  }

  if (a1[12] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Second: %ld", a1[12]);
  }

  if (a1[20] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Nanosecond: %ld", a1[20]);
  }

  if (a1[16] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Quarter: %ld", a1[16]);
  }

  if (a1[19] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Year for Week of Year: %ld", a1[19]);
  }

  if (a1[18] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Week of Year: %ld", a1[18]);
  }

  if (a1[17] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Week of Month: %ld", a1[17]);
  }

  if (a1[13] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Week (obsolete): %ld", a1[13]);
  }

  if (a1[14] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Weekday: %ld", a1[14]);
  }

  if (a1[15] != 0x7FFFFFFFFFFFFFFFLL)
  {
    CFStringAppendFormat(Mutable, 0, @"\n    Weekday Ordinal: %ld", a1[15]);
  }

  return Mutable;
}

uint64_t _CFListFormatterCreate(__objc2_class **a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    _CFListFormatterCreate_cold_2();
  }

  if (!a2)
  {
    _CFListFormatterCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance(a1, 0x44uLL, 8, 0, a5, a6, a7, a8);
  if (Instance)
  {
    *(Instance + 16) = CFRetain(a2);
  }

  return Instance;
}

CFStringRef _CFListFormatterCreateStringByJoiningStrings(const __CFAllocator *a1, unint64_t *a2, const __CFArray *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(a2);
  v6 = _CFGetNonObjCTypeID(a2);
  if (v6 != 68)
  {
    _CFAssertMismatchedTypeID(0x44uLL, v6);
  }

  if (a3)
  {
    Count = CFArrayGetCount(a3);
    if (Count)
    {
      v8 = Count;
      alloc = a1;
      locale = a2[2];
      v9 = malloc_type_malloc(8 * Count, 0x10040436913F5uLL);
      v10 = malloc_type_malloc(4 * v8, 0x100004052888210uLL);
      v11 = malloc_type_calloc(v8, 1uLL, 0x100004077774924uLL);
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
          Length = CFStringGetLength(ValueAtIndex);
          CharactersPtr = CFStringGetCharactersPtr(ValueAtIndex);
          if (!CharactersPtr)
          {
            CharactersPtr = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
            v29.location = 0;
            v29.length = Length;
            CFStringGetCharacters(ValueAtIndex, v29, CharactersPtr);
            v11[i] = 1;
          }

          v10[i] = Length;
          v9[i] = CharactersPtr;
        }
      }

      v25 = 0;
      Identifier = CFLocaleGetIdentifier(locale);
      if (!CFStringGetCStringPtr(Identifier, 0x600u))
      {
        CFStringGetCString(Identifier, buffer, 256, 0x600u);
      }

      v17 = __cficu_ulistfmt_open();
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 0x40000000;
      v24[2] = ___CFListFormatterCreateStringByJoiningStrings_block_invoke;
      v24[3] = &__block_descriptor_tmp_21;
      v24[4] = v17;
      v24[5] = v8;
      v24[6] = v9;
      v24[7] = v11;
      v24[8] = v10;
      v25 = 0;
      v18 = __cficu_ulistfmt_format();
      v19 = CFStringCreateWithCharacters(alloc, chars, v18);
      ___CFListFormatterCreateStringByJoiningStrings_block_invoke(v24);
    }

    else
    {
      v19 = &stru_1EF068AA8;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

void __CFListFormatterDeallocate(uint64_t a1)
{
  if (!a1)
  {
    __CFListFormatterDeallocate_cold_1();
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    CFRelease(v2);
  }
}

__CFString *__CFArrayCopyDescription(unint64_t a1)
{
  v2 = *(a1 + 16);
  if ((a1 & 0x8000000000000000) != 0)
  {
    v3 = &kCFAllocatorSystemDefault;
  }

  else
  {
    v4 = atomic_load((a1 + 8));
    if (v4 < 0)
    {
      v3 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v3 = (a1 - 16);
    }
  }

  v5 = *v3;
  Mutable = CFStringCreateMutable(*v3, 0);
  v7 = Mutable;
  v8 = atomic_load((a1 + 8));
  v9 = v8 & 3;
  if (v9)
  {
    if (v9 != 2)
    {
      goto LABEL_13;
    }

    v10 = CFSTR("<CFArray %p [%p]>{type = mutable-small, count = %lu, values = (%s");
  }

  else
  {
    v10 = CFSTR("<CFArray %p [%p]>{type = immutable, count = %lu, values = (%s");
  }

  v11 = "\n";
  if (!v2)
  {
    v11 = "";
  }

  CFStringAppendFormat(Mutable, 0, v10, a1, v5, v2, v11);
LABEL_13:
  v12 = atomic_load((a1 + 8));
  v13 = (v12 >> 2) & 3;
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = &kCFTypeArrayCallBacks;
    }

    else
    {
      v15 = atomic_load((a1 + 8));
      v16 = v15 & 3;
      if (v16 != 2 && v16)
      {
        v14 = 0;
      }

      else
      {
        v14 = (a1 + 48);
      }
    }
  }

  else
  {
    v14 = &__kCFNullArrayCallBacks;
  }

  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      atomic_load((a1 + 8));
      v18 = atomic_load((a1 + 8));
      if ((v18 & 3) != 0)
      {
        v19 = *(a1 + 40) + 8 * **(a1 + 40) + 16;
      }

      else
      {
        v20 = atomic_load((a1 + 8));
        v21 = (~v20 & 0xC) == 0;
        v22 = 48;
        if (v21)
        {
          v22 = 88;
        }

        v19 = a1 + v22;
      }

      v23 = *(v19 + 8 * i);
      copyDescription = v14->copyDescription;
      if (copyDescription && (v25 = copyDescription(v23)) != 0)
      {
        v26 = v25;
        CFStringAppendFormat(v7, 0, @"\t%lu : %@\n", i, v25);
        CFRelease(v26);
      }

      else
      {
        CFStringAppendFormat(v7, 0, @"\t%lu : <%p>\n", i, v23);
      }
    }
  }

  CFStringAppend(v7, @"}"));
  return v7;
}

CFIndex CFArrayGetCountOfValue(CFArrayRef theArray, CFRange range, const void *value)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_2;
  }

  v11 = atomic_load(theArray + 1);
  v12 = (v11 >> 2) & 3;
  if (v12)
  {
    if (v12 == 1)
    {
LABEL_2:
      v7 = &kCFTypeArrayCallBacks;
      goto LABEL_3;
    }

    v13 = atomic_load(theArray + 1);
    v14 = v13 & 3;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = (theArray + 48);
    }

    if (v14 == 2)
    {
      v7 = (theArray + 48);
    }

    else
    {
      v7 = v15;
    }
  }

  else
  {
    v7 = &__kCFNullArrayCallBacks;
  }

LABEL_3:
  if (length < 1)
  {
    return 0;
  }

  v8 = 0;
  do
  {
    v9 = [(__CFArray *)theArray objectAtIndex:location];
    if (v9 == value || (equal = v7->equal) != 0 && equal(value, v9))
    {
      ++v8;
    }

    ++location;
    --length;
  }

  while (length);
  return v8;
}

void CFArrayExchangeValuesAtIndices(CFMutableArrayRef theArray, CFIndex idx1, CFIndex idx2)
{
  if (CF_IS_OBJC(0x13uLL, theArray))
  {

    [(__CFArray *)theArray exchangeObjectAtIndex:idx1 withObjectAtIndex:idx2];
  }

  else
  {
    v6 = (theArray + 8);
    v7 = atomic_load(theArray + 1);
    if ((v7 & 1 | 2) == 2)
    {
      v8 = atomic_load(v6);
      v9 = v8 & 3;
      if (v9 == 2)
      {
        v13 = (*(theArray + 5) + 8 * **(theArray + 5) + 16);
      }

      else if (v9)
      {
        v13 = 0;
      }

      else
      {
        v10 = atomic_load(theArray + 1);
        v11 = (~v10 & 0xC) == 0;
        v12 = 48;
        if (v11)
        {
          v12 = 88;
        }

        v13 = theArray + v12;
      }

      v14 = &v13[8 * idx1];
    }

    else
    {
      v14 = 0;
    }

    atomic_load(v6);
    v15 = atomic_load(v6);
    if ((v15 & 3) != 0)
    {
      v16 = (*(theArray + 5) + 8 * **(theArray + 5) + 16);
    }

    else
    {
      v17 = atomic_load(theArray + 1);
      v11 = (~v17 & 0xC) == 0;
      v18 = 48;
      if (v11)
      {
        v18 = 88;
      }

      v16 = theArray + v18;
    }

    v19 = *v14;
    *v14 = *&v16[8 * idx2];
    *&v16[8 * idx2] = v19;
    ++*(theArray + 3);
  }
}

void _CFArraySortValues(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x13uLL, a1))
  {
    v6 = [a1 count];
  }

  else
  {
    v6 = a1[2];
  }

  if (v6 >= 2)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    Typed = values;
    *values = 0u;
    v14 = 0u;
    if (v6 >= 0x101)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v6, 0x80040B8603338, 0);
    }

    v46.location = 0;
    v46.length = v6;
    CFArrayGetValues(a1, v46, Typed);
    v12[0] = a2;
    v12[1] = a3;
    CFQSortArray(Typed, v6, 8, __CFArrayCompareValues, v12, v8, v9, v10);
    v47.location = 0;
    v47.length = v6;
    CFArrayReplaceValues(a1, v47, Typed, v6);
    if (Typed != values)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __CFAttributedStringEqual(CFStringRef *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  if (CF_IS_OBJC(0x3EuLL, a2))
  {
    v5 = [a2 string];
  }

  else
  {
    v5 = a2[2];
  }

  result = CFEqual(v4, v5);
  if (result)
  {
    Length = CFStringGetLength(a1[2]);
    effectiveRange.location = 0;
    effectiveRange.length = 0;
    v17.location = 0;
    v17.length = 0;
    if (Length < 1)
    {
LABEL_16:
      result = 1;
    }

    else
    {
      v8 = Length;
      location = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      Attributes = 0;
      v15 = 0;
      while (1)
      {
        if (v15 >= v11 + v12)
        {
          Attributes = CFAttributedStringGetAttributes(a1, v15, &effectiveRange);
          location = v17.location;
          v10 = v17.length;
        }

        if (v15 >= location + v10)
        {
          v13 = CFAttributedStringGetAttributes(a2, v15, &v17);
        }

        result = CFEqual(Attributes, v13);
        if (!result)
        {
          break;
        }

        location = v17.location;
        v10 = v17.length;
        v11 = effectiveRange.location;
        v12 = effectiveRange.length;
        if (effectiveRange.location + effectiveRange.length >= v17.location + v17.length)
        {
          v15 = v17.location + v17.length;
        }

        else
        {
          v15 = effectiveRange.location + effectiveRange.length;
        }

        if (v15 >= v8)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *__CFAttributedStringCopyDescription(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v82 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  Length = CFStringGetLength(v2[2]);
  effectiveRange.location = 0;
  effectiveRange.length = 0;
  v16 = Length;
  if (Length >= 1)
  {
    location = 0;
    while (1)
    {
      Attributes = CFAttributedStringGetAttributes(v2, location, &effectiveRange);
      v7 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v2[2], effectiveRange);
      CFStringAppend(Mutable, v7);
      CFRelease(v7);
      CFStringAppendFormat(Mutable, 0, @" %p {", Attributes);
      Count = CFDictionaryGetCount(Attributes);
      v81 = 0u;
      v80 = 0u;
      v79 = 0u;
      v78 = 0u;
      v77 = 0u;
      v76 = 0u;
      v75 = 0u;
      v74 = 0u;
      v73 = 0u;
      v72 = 0u;
      v71 = 0u;
      v70 = 0u;
      v69 = 0u;
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v64 = 0u;
      v63 = 0u;
      v62 = 0u;
      v61 = 0u;
      v60 = 0u;
      v59 = 0u;
      v58 = 0u;
      v57 = 0u;
      v56 = 0u;
      v55 = 0u;
      v54 = 0u;
      v53 = 0u;
      v52 = 0u;
      v51 = 0u;
      *keys = 0u;
      if (Count >= 0xFFFFFFFFFFFFFFFLL)
      {
        __CFAttributedStringCopyDescription_cold_1();
      }

      v9 = Count;
      if (Count >= 0x101)
      {
        break;
      }

      v48 = 0uLL;
      v49 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
      v44 = 0uLL;
      v45 = 0uLL;
      v42 = 0uLL;
      v43 = 0uLL;
      v40 = 0uLL;
      v41 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v34 = 0uLL;
      v35 = 0uLL;
      v32 = 0uLL;
      v33 = 0uLL;
      v30 = 0uLL;
      v31 = 0uLL;
      v28 = 0uLL;
      v29 = 0uLL;
      v26 = 0uLL;
      v27 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      v22 = 0uLL;
      v23 = 0uLL;
      v20 = 0uLL;
      v21 = 0uLL;
      *values = 0uLL;
      v19 = 0uLL;
      v10 = keys;
      v11 = values;
      CFDictionaryGetKeysAndValues(Attributes, keys, values);
      if (v9)
      {
        goto LABEL_8;
      }

LABEL_13:
      CFStringAppendFormat(Mutable, 0, @"} Len %ld\n", effectiveRange.length);
      effectiveRange.location += effectiveRange.length;
      if (v10 != keys)
      {
        free(v10);
      }

      if (v11 != values)
      {
        free(v11);
      }

      location = effectiveRange.location;
      if (effectiveRange.location >= v16)
      {
        goto LABEL_18;
      }
    }

    v10 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    *values = 0u;
    v19 = 0u;
    v11 = malloc_type_malloc(8 * v9, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(Attributes, v10, v11);
LABEL_8:
    v12 = v9 - 1;
    do
    {
      if (v12)
      {
        v13 = ", ";
      }

      else
      {
        v13 = "";
      }

      CFStringAppendFormat(Mutable, 0, @"%@=%@%s", v10[v12], v11[v12], v13);
      --v12;
    }

    while (v12 != -1);
    goto LABEL_13;
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t _CFAttributedStringCreateWithRuns(__objc2_class **a1, const __CFString *a2, const __CFDictionary **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  Instance = _CFRuntimeCreateInstance(a1, 0x3EuLL, 16, 0, a5, a6, a7, a8);
  if (Instance)
  {
    *(Instance + 16) = CFStringCreateCopy(a1, a2);
    *(Instance + 24) = CFRunArrayCreate(a1, v14, v15, v16, v17, v18, v19, v20);
    Length = CFStringGetLength(*(Instance + 16));
    if (Length)
    {
      v22 = Length;
      Mutable = CFDictionaryCreateMutable(a1, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFRunArrayInsert(*(Instance + 24), 0, v22, Mutable);
      CFRelease(Mutable);
    }

    if (v8 >= 1)
    {
      v24 = (a4 + 8);
      do
      {
        v25 = *a3++;
        AttributesDictionary = __CFAttributedStringCreateAttributesDictionary(a1, v25);
        CFRunArrayReplace(*(Instance + 24), *(v24 - 1), *v24, AttributesDictionary, *v24);
        CFRelease(AttributesDictionary);
        v24 += 2;
        --v8;
      }

      while (v8);
    }

    v27 = atomic_load((Instance + 8));
    v28 = v27;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v28, v27 | 1);
      v29 = v28 == v27;
      v27 = v28;
    }

    while (!v29);
  }

  return Instance;
}

uint64_t _CFAttributedStringGetNumberOfRuns(const __CFAttributedString *a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  Length = CFAttributedStringGetLength(a1);
  if (Length < 1)
  {
    v6 = 0;
  }

  else
  {
    v5 = Length;
    v6 = 0;
    v7 = 0;
    do
    {
      longestEffectiveRange.location = 0;
      longestEffectiveRange.length = 0;
      v14.location = v7;
      v14.length = v5;
      AttributesAndLongestEffectiveRange = CFAttributedStringGetAttributesAndLongestEffectiveRange(a1, v7, v14, &longestEffectiveRange);
      if (a2 || CFDictionaryGetCount(AttributesAndLongestEffectiveRange) >= 1)
      {
        ++v6;
      }

      v7 += longestEffectiveRange.length;
      v9 = v5 <= longestEffectiveRange.length;
      v5 -= longestEffectiveRange.length;
    }

    while (!v9);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t _CFAttributedStringGetRuns(const __CFAttributedString *a1, int a2, uint64_t *a3, CFRange *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  result = CFAttributedStringGetLength(a1);
  if (result >= 1)
  {
    v9 = result;
    v10 = 0;
    do
    {
      longestEffectiveRange.location = 0;
      longestEffectiveRange.length = 0;
      v16.location = v10;
      v16.length = v9;
      result = CFAttributedStringGetAttributesAndLongestEffectiveRange(a1, v10, v16, &longestEffectiveRange);
      v11 = result;
      if (a2 || (result = CFDictionaryGetCount(result), result >= 1))
      {
        if (a3)
        {
          *a3++ = v11;
        }

        if (a4)
        {
          *a4++ = longestEffectiveRange;
        }
      }

      v10 += longestEffectiveRange.length;
      v12 = v9 <= longestEffectiveRange.length;
      v9 -= longestEffectiveRange.length;
    }

    while (!v12);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableStringRef CFAttributedStringGetMutableString(CFMutableAttributedStringRef aStr)
{
  if (!CF_IS_OBJC(0x3EuLL, aStr))
  {
    return 0;
  }

  return [(__CFAttributedString *)aStr mutableString];
}

void CFAttributedStringRemoveAttribute(CFMutableAttributedStringRef aStr, CFRange range, CFStringRef attrName)
{
  length = range.length;
  location = range.location;
  v19 = *MEMORY[0x1E69E9840];
  if (!CF_IS_OBJC(0x3EuLL, aStr))
  {
    if (!length)
    {
LABEL_22:
      v16 = *MEMORY[0x1E69E9840];
      return;
    }

    while (1)
    {
      v17 = 0;
      v18 = 0;
      ValueAtIndex = CFRunArrayGetValueAtIndex(*(aStr + 3), location, &v17, 0);
      v9 = ValueAtIndex;
      v11 = v17;
      v10 = v18;
      v12 = v17 == location && v18 <= length;
      if (!v12)
      {
        goto LABEL_14;
      }

      if (CFGetRetainCount(ValueAtIndex) != 1)
      {
        break;
      }

      CFDictionaryRemoveValue(v9, attrName);
LABEL_21:
      location += v18;
      length -= v18;
      if (!length)
      {
        goto LABEL_22;
      }
    }

    v11 = v17;
    v10 = v18;
LABEL_14:
    v12 = v11 < location;
    v13 = v11 - location;
    if (v12)
    {
      v10 += v13;
      v17 = location;
      v18 = v10;
    }

    if (v10 > length)
    {
      v18 = length;
    }

    if (CFDictionaryContainsKey(v9, attrName))
    {
      v14 = CFGetAllocator(aStr);
      AttributesDictionary = __CFAttributedStringCreateAttributesDictionary(v14, v9);
      CFDictionaryRemoveValue(AttributesDictionary, attrName);
      CFRunArrayReplace(*(aStr + 3), v17, v18, AttributesDictionary, v18);
      CFRelease(AttributesDictionary);
    }

    goto LABEL_21;
  }

  v7 = *MEMORY[0x1E69E9840];

  [(__CFAttributedString *)aStr removeAttribute:attrName range:location, length];
}

void CFAttributedStringBeginEditing(CFMutableAttributedStringRef aStr)
{
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    [(__CFAttributedString *)aStr beginEditing];
  }
}

void CFAttributedStringEndEditing(CFMutableAttributedStringRef aStr)
{
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    [(__CFAttributedString *)aStr endEditing];
  }
}

uint64_t _CFAttributedStringCheckAndReplace(uint64_t a1, CFIndex a2, CFIndex a3, const __CFString *a4)
{
  Length = CFStringGetLength(*(a1 + 16));
  if (a2 > Length || a2 + a3 > Length)
  {
    return 3;
  }

  v11 = atomic_load((a1 + 8));
  if (v11)
  {
    return 1;
  }

  v12.location = a2;
  v12.length = a3;
  CFAttributedStringReplaceString(a1, v12, a4);
  return 0;
}

uint64_t _CFAttributedStringCheckAndSetAttribute(uint64_t a1, CFIndex a2, CFIndex a3, const __CFString *a4, const void *a5)
{
  Length = CFStringGetLength(*(a1 + 16));
  if (a2 > Length || a2 + a3 > Length)
  {
    return 3;
  }

  v13 = atomic_load((a1 + 8));
  if (v13)
  {
    return 1;
  }

  if (!a4)
  {
    return 2;
  }

  v14.location = a2;
  v14.length = a3;
  if (a5)
  {
    CFAttributedStringSetAttribute(a1, v14, a4, a5);
  }

  else
  {
    CFAttributedStringRemoveAttribute(a1, v14, a4);
  }

  return 0;
}

void *__CFBagCreateTransfer(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v12[10] = *MEMORY[0x1E69E9840];
  v12[0] = __CFTypeCollectionRetain;
  v12[1] = __CFTypeCollectionRetain;
  v12[2] = __CFTypeCollectionRelease;
  v12[3] = __CFTypeCollectionRelease;
  v12[4] = CFEqual;
  v12[5] = CFEqual;
  v12[6] = CFHash;
  v12[7] = 0;
  v12[8] = CFCopyDescription;
  v12[9] = CFCopyDescription;
  v5 = CFBasicHashCreate(a1, 0x2002u, v12);
  CFBasicHashSuppressRC(v5);
  if (a3 >= 1)
  {
    CFBasicHashSetCapacity(v5, a3);
    do
    {
      v6 = *a2++;
      CFBasicHashAddValue(v5, v6, v6);
      --a3;
    }

    while (a3);
  }

  CFBasicHashUnsuppressRC(v5);
  v7 = atomic_load(v5 + 1);
  v8 = v7;
  do
  {
    atomic_compare_exchange_strong(v5 + 1, &v8, v7 | 0x40);
    v9 = v8 == v7;
    v7 = v8;
  }

  while (!v9);
  _CFRuntimeSetInstanceTypeIDAndIsa(v5, 4uLL);
  if (__CFOASafe)
  {
    __CFSetLastAllocationEventName();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

CFBagRef CFBagCreate(CFAllocatorRef allocator, const void **values, CFIndex numValues, const CFBagCallBacks *callBacks)
{
  Generic = __CFBagCreateGeneric(allocator, callBacks);
  v7 = Generic;
  if (Generic)
  {
    if (numValues >= 1)
    {
      CFBasicHashSetCapacity(Generic, numValues);
      do
      {
        v8 = *values++;
        CFBasicHashAddValue(v7, v8, v8);
        --numValues;
      }

      while (numValues);
    }

    v9 = atomic_load(v7 + 1);
    v10 = v9;
    do
    {
      atomic_compare_exchange_strong(v7 + 1, &v10, v9 | 0x40);
      v11 = v10 == v9;
      v9 = v10;
    }

    while (!v11);
    _CFRuntimeSetInstanceTypeIDAndIsa(v7, 4uLL);
    if (__CFOASafe)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v7;
}

void CFBagGetValues(CFBagRef theBag, const void **values)
{
  Count = CFBasicHashGetCount(theBag);

  CFBasicHashGetElements(theBag, Count, 0, values);
}

CFMutableBagRef CFBagCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFBagRef theBag)
{
  v20 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(4uLL, theBag))
  {
    Count = CFBasicHashGetCount(theBag);
    memset(v19, 0, 512);
    if (Count >= 257)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0xC0040B8AA526DLL, 0);
    }

    else
    {
      Typed = v19;
    }

    v14 = CFBasicHashGetCount(theBag);
    CFBasicHashGetElements(theBag, v14, 0, Typed);
    Generic = __CFBagCreateGeneric(allocator, &kCFTypeBagCallBacks);
    Copy = Generic;
    if (Count >= 1 && Generic)
    {
      CFBasicHashSetCapacity(Generic, Count);
      for (i = 0; i < Count; ++i)
      {
        CFBasicHashAddValue(Copy, *(Typed + i), *(Typed + i));
      }
    }

    if (Count >= 257)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }
  }

  else
  {
    Copy = CFBasicHashCreateCopy(allocator, theBag, v5, v6, v7, v8, v9, v10);
  }

  if (Copy)
  {
    _CFRuntimeSetInstanceTypeIDAndIsa(Copy, 4uLL);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return Copy;
}

Boolean CFBagGetValueIfPresent(CFBagRef theBag, const void *candidate, const void **value)
{
  v8 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  CFBasicHashFindBucket(theBag, candidate, &v6);
  if (*(&v7 + 1))
  {
    if (value)
    {
      *value = v7;
    }

    result = 1;
  }

  else
  {
    result = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _CFBagIsMutable(unint64_t a1)
{
  if (CF_IS_OBJC(4uLL, a1))
  {
    return 0;
  }

  v3 = atomic_load((a1 + 8));
  return ((v3 >> 6) & 1) == 0;
}

void _CFBagSetCapacity(unint64_t a1, uint64_t a2)
{
  if (!CF_IS_OBJC(4uLL, a1))
  {

    CFBasicHashSetCapacity(a1, a2);
  }
}

void CFBagReplaceValue(CFMutableBagRef theBag, const void *value)
{
  v10 = atomic_load(theBag + 1);
  if ((v10 & 0x40) != 0)
  {
    CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFBagReplaceValue(CFMutableBagRef, const void *)");
  }

  CFBasicHashReplaceValue(theBag, value, value);
}

void CFBagSetValue(CFMutableBagRef theBag, const void *value)
{
  v10 = atomic_load(theBag + 1);
  if ((v10 & 0x40) != 0)
  {
    CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFBagSetValue(CFMutableBagRef, const void *)");
  }

  CFBasicHashSetValue(theBag, value, value);
}

CFStringRef __CFAllocatorCopyDescription(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1 == 939)
  {
    v1 = a1;
  }

  return CFStringCreateWithFormat(v1, 0, @"<CFAllocator %p [%p]>{info = %p}", a1, v1, *(a1 + 144));
}

void CFAllocatorSetDefault(CFAllocatorRef allocator)
{
  v2 = _CFGetTSD(1u);
  if (!v2)
  {
    v2 = &__kCFAllocatorSystemDefault;
  }

  if (allocator)
  {
    v3 = *allocator & ~MEMORY[0x1E69E58F0];
    if ((*allocator & MEMORY[0x1E69E58F0]) != 0)
    {
      v3 |= *allocator & MEMORY[0x1E69E58F0];
    }

    if (v3 == qword_1ED40C0D0 && v2 != allocator)
    {
      CFRelease(v2);
      CFRetain(allocator);
      CFRetain(allocator);

      _CFSetTSD(1u, allocator, 0);
    }
  }
}

CFAllocatorRef CFAllocatorCreateWithZone(const __CFAllocator *a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v4.version = 0;
  v4.info = a2;
  memset(&v4.retain, 0, 24);
  v4.allocate = __CFAllocatorSystemAllocate;
  v4.reallocate = __CFAllocatorSystemReallocate;
  v4.deallocate = __CFAllocatorSystemDeallocate;
  v4.preferredSize = 0;
  result = CFAllocatorCreate(a1, &v4);
  if (result)
  {
    *(result + 26) = __CFAllocatorSystemAllocateTyped;
    *(result + 27) = __CFAllocatorSystemReallocateTyped;
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *__CFAllocatorCustomCalloc(malloc_zone_t *a1, int a2, size_t size)
{
  Impl = _CFAllocatorAllocateImpl(a1, size, 0x83C93EDDuLL, 0);
  v5 = Impl;
  if (Impl)
  {
    bzero(Impl, size);
  }

  return v5;
}

unint64_t __CFAllocatorCustomValloc(malloc_zone_t *a1, unint64_t a2)
{
  v2 = MEMORY[0x1E69E9AC8];
  if (~(2 * *MEMORY[0x1E69E9AC8]) <= a2)
  {
    return 0;
  }

  else
  {
    return (_CFAllocatorAllocateImpl(a1, *MEMORY[0x1E69E9AC8] + a2, 0x3EB7D1D2uLL, 0) + *v2 - 1) & -*v2;
  }
}

double __os_log_helper_1_2_3_8_32_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 136315650;
  *a1 = 136315650;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

double __os_log_helper_1_2_4_8_32_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&result = 136315906;
  *a1 = 136315906;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  *(a1 + 32) = 2048;
  *(a1 + 34) = a5;
  return result;
}

uint64_t (**__CFStringEncodingGetArabicConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingPrecomposeLatinCharacter)
  {
    __CFStringEncodingPrecomposeLatinCharacter = a2(4);
    __CFStringEncodingIsValidCombiningCharacterForLatin1 = a2(3);
  }

  if (a1 > 517)
  {
    if (a1 != 518)
    {
      if (a1 == 1286)
      {
        return __CFConverterWindowsArabic;
      }

      return 0;
    }

    return __CFConverterISOLatinArabic;
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 == 140)
      {
        return __CFConverterMacFarsi;
      }

      return 0;
    }

    return __CFConverterMacArabic;
  }
}

uint64_t __CFToMacArabic(uint64_t IsValidCombiningCharacterForLatin1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (a3 < 1)
  {
    v12 = 0;
    goto LABEL_25;
  }

  v11 = IsValidCombiningCharacterForLatin1;
  v12 = 0;
  while (1)
  {
    if (a5 < 0)
    {
      if ((v11 & 0x10) == 0)
      {
        goto LABEL_25;
      }

      IsValidCombiningCharacterForLatin1 = *(a2 + 2 * v12);
      if ((IsValidCombiningCharacterForLatin1 - 1619) >= 3)
      {
        IsValidCombiningCharacterForLatin1 = __CFStringEncodingIsValidCombiningCharacterForLatin1();
        if (!IsValidCombiningCharacterForLatin1)
        {
          goto LABEL_25;
        }
      }
    }

    v13 = *(a2 + 2 * v12);
    if (v13 <= 0x7F)
    {
      v20 = *(a2 + 2 * v12);
      if (!a5)
      {
        goto LABEL_20;
      }

LABEL_19:
      *(a4 + v12) = v20;
      goto LABEL_20;
    }

    if ((v13 - 10059) < 0xD955u)
    {
      break;
    }

    v14 = &unk_1832BB284;
    v15 = &macarabic_from_uni;
    while (1)
    {
      v16 = &v15[2 * ((v14 - v15) >> 3)];
      v17 = *v16;
      if (v17 <= v13)
      {
        break;
      }

      v14 = v16 - 2;
LABEL_16:
      if (v15 > v14)
      {
        goto LABEL_17;
      }
    }

    if (v17 < v13)
    {
      v15 = v16 + 2;
      goto LABEL_16;
    }

    v20 = *(v16 + 2);
    if (a5)
    {
      goto LABEL_19;
    }

LABEL_20:
    if (++v12 == a3)
    {
      v12 = a3;
      goto LABEL_25;
    }
  }

LABEL_17:
  IsValidCombiningCharacterForLatin1 = __CFToISOArabic(IsValidCombiningCharacterForLatin1, v13, &v20);
  if (IsValidCombiningCharacterForLatin1)
  {
    if (!a5)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  *a6 = 0;
  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __CFFromMacArabic(uint64_t a1, char *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  if (a5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  if (a5)
  {
    result = v6;
  }

  else
  {
    result = a3;
  }

  if (result >= 1)
  {
    v8 = result;
    while (1)
    {
      v10 = *a2++;
      v9 = v10;
      if (v10 < 0)
      {
        break;
      }

      if (a5)
      {
        goto LABEL_11;
      }

LABEL_12:
      ++a4;
      if (!--v8)
      {
        goto LABEL_17;
      }
    }

    v9 = macarabic_to_uni[v9 & 0x7F];
    if (!a5)
    {
      goto LABEL_12;
    }

LABEL_11:
    *a4 = v9;
    goto LABEL_12;
  }

  result = 0;
LABEL_17:
  *a6 = result;
  return result;
}

uint64_t __CFIsValidCombiningCharacterForArabic(int a1)
{
  if ((a1 - 1619) >= 3)
  {
    return __CFStringEncodingIsValidCombiningCharacterForLatin1();
  }

  else
  {
    return 1;
  }
}

uint64_t __CFToISOArabic(uint64_t a1, int a2, _BYTE *a3)
{
  if (a2 < 0xA1)
  {
    goto LABEL_2;
  }

  if ((a2 - 1569) <= 0x31)
  {
    if ((a2 - 59) < 5u)
    {
      return 0;
    }

    LOBYTE(a2) = a2 - 96;
    goto LABEL_2;
  }

  result = 0;
  if (a2 <= 1547)
  {
    if (a2 == 164 || a2 == 173)
    {
      goto LABEL_2;
    }
  }

  else
  {
    switch(a2)
    {
      case 1548:
        LOBYTE(a2) = -84;
        goto LABEL_2;
      case 1563:
        LOBYTE(a2) = -69;
        goto LABEL_2;
      case 1567:
        LOBYTE(a2) = -65;
LABEL_2:
        *a3 = a2;
        return 1;
    }
  }

  return result;
}

uint64_t __CFToMacFarsi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a5 >= a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = a5;
  }

  if (a5)
  {
    v8 = v7;
  }

  else
  {
    v8 = a3;
  }

  if (v8 < 1)
  {
    v12 = 0;
    goto LABEL_28;
  }

  v12 = 0;
  v21 = 0;
  while (1)
  {
    v13 = *(a2 + 2 * v12);
    if (v13 <= 0x7F)
    {
      v21 = *(a2 + 2 * v12);
      goto LABEL_22;
    }

    if (v13 - 1776 <= 9)
    {
      v14 = v13 - 64;
      goto LABEL_13;
    }

    if ((v13 - 10059) < 0xD955u)
    {
      break;
    }

    v15 = &unk_1832BB284;
    v16 = &macarabic_from_uni;
    while (1)
    {
      v17 = &v16[2 * ((v15 - v16) >> 3)];
      v18 = *v17;
      if (v18 <= v13)
      {
        break;
      }

      v15 = v17 - 2;
LABEL_20:
      if (v16 > v15)
      {
        goto LABEL_21;
      }
    }

    if (v18 < v13)
    {
      v16 = v17 + 2;
      goto LABEL_20;
    }

    v14 = *(v17 + 2);
LABEL_13:
    v21 = v14;
LABEL_22:
    if (a5)
    {
      *(a4 + v12) = v21;
    }

    if (++v12 == v8)
    {
      v12 = v8;
      goto LABEL_28;
    }
  }

LABEL_21:
  a1 = __CFToISOArabic(a1, v13, &v21);
  if (a1)
  {
    goto LABEL_22;
  }

LABEL_28:
  *a6 = v12;
  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __CFFromMacFarsi(uint64_t a1, char *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  if (a5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  if (a5)
  {
    result = v6;
  }

  else
  {
    result = a3;
  }

  if (result >= 1)
  {
    v8 = result;
    while (1)
    {
      v10 = *a2++;
      v9 = v10;
      v11 = v10;
      if (v10 < 0)
      {
        if ((v11 - 176) > 9)
        {
          LOWORD(v11) = macarabic_to_uni[v9 & 0x7F];
          if (!a5)
          {
            goto LABEL_14;
          }

LABEL_13:
          *a4 = v11;
          goto LABEL_14;
        }

        LOWORD(v11) = v11 | 0x640;
      }

      if (a5)
      {
        goto LABEL_13;
      }

LABEL_14:
      ++a4;
      if (!--v8)
      {
        goto LABEL_19;
      }
    }
  }

  result = 0;
LABEL_19:
  *a6 = result;
  return result;
}

uint64_t __CFToWinArabic(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8483 < 0xFFFFDF7D)
  {
    return 0;
  }

  v5 = &cp1256_from_uni;
  v6 = &unk_1832BB564;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromWinArabic(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = cp1256_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToWinArabicPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = *a2;
  if (v9 >= 0x80)
  {
    v11 = a2[1];
    if (v11 == 1621)
    {
      if (v9 != 1575)
      {
        return 0;
      }

      v10 = 1573;
    }

    else if (v11 == 1620)
    {
      result = 0;
      if (*a2 > 0x6C0u)
      {
        switch(v9)
        {
          case 0x6C1u:
            v10 = 1730;
            break;
          case 0x6D2u:
            v10 = 1747;
            break;
          case 0x6D5u:
            v10 = 1728;
            break;
          default:
            return result;
        }
      }

      else
      {
        switch(v9)
        {
          case 0x627u:
            v10 = 1571;
            break;
          case 0x648u:
            v10 = 1572;
            break;
          case 0x64Au:
            v10 = 1574;
            break;
          default:
            return result;
        }
      }
    }

    else
    {
      if (v11 != 1619 || v9 != 1575)
      {
        return 0;
      }

      v10 = 1570;
    }
  }

  else
  {
    v10 = __CFStringEncodingPrecomposeLatinCharacter(a2, a3, 0);
    if (v10 <= 0x7F)
    {
      goto LABEL_33;
    }

    if ((v10 - 8483) < 0xDF7Du)
    {
      return 0;
    }
  }

  v13 = &cp1256_from_uni;
  v14 = &unk_1832BB564;
  while (1)
  {
    v15 = &v13[2 * ((v14 - v13) >> 3)];
    v16 = *v15;
    if (v16 <= v10)
    {
      break;
    }

    v14 = v15 - 2;
LABEL_30:
    if (v13 > v14)
    {
      return 0;
    }
  }

  if (v16 < v10)
  {
    v13 = v15 + 2;
    goto LABEL_30;
  }

  LOBYTE(v10) = *(v15 + 2);
LABEL_33:
  if (!v10)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v10;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFFromISOArabic(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 < 0xA1)
  {
    goto LABEL_2;
  }

  if (a2 < 0xC1)
  {
    result = 0;
    if (a2 <= 172)
    {
      if (a2 == 164)
      {
        goto LABEL_2;
      }

      if (a2 == 172)
      {
        LOWORD(a2) = 1548;
        goto LABEL_2;
      }
    }

    else
    {
      switch(a2)
      {
        case 0xADu:
          goto LABEL_2;
        case 0xBBu:
          LOWORD(a2) = 1563;
          goto LABEL_2;
        case 0xBFu:
          LOWORD(a2) = 1567;
          goto LABEL_2;
      }
    }
  }

  else
  {
    result = 0;
    if (a2 <= 0xF2 && a2 - 219 >= 5)
    {
      LOWORD(a2) = a2 + 1376;
LABEL_2:
      *a3 = a2;
      return 1;
    }
  }

  return result;
}

uint64_t __CFToISOArabicPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  if (v9 == 1621)
  {
    if (*a2 == 1575)
    {
      v10 = 1573;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v9 == 1620)
  {
    v11 = *a2;
    if (v11 > 0x6C0)
    {
      switch(v11)
      {
        case 0x6C1u:
          v10 = 1730;
          goto LABEL_18;
        case 0x6D2u:
          v10 = 1747;
          goto LABEL_18;
        case 0x6D5u:
          v10 = 1728;
          goto LABEL_18;
      }
    }

    else
    {
      switch(v11)
      {
        case 0x627u:
          v10 = 1571;
          goto LABEL_18;
        case 0x648u:
          v10 = 1572;
          goto LABEL_18;
        case 0x64Au:
          v10 = 1574;
          goto LABEL_18;
      }
    }

LABEL_17:
    v10 = 65533;
    goto LABEL_18;
  }

  if (v9 != 1619 || *a2 != 1575)
  {
    goto LABEL_17;
  }

  v10 = 1570;
LABEL_18:
  v15 = 0;
  v12 = __CFToISOArabic(a1, v10, &v15);
  result = 0;
  if (v12 && v15)
  {
    if (a5)
    {
      *a4 = v15;
    }

    *a6 = 1;
    result = 2;
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFUniCharGetBidiCategory(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (a2 >= 1)
  {
    v4 = result;
    result = 0;
    v5 = -1;
    v6 = &v4[a2];
    do
    {
      v7 = v4 + 1;
      v8 = *v4;
      if ((v8 & 0xFC00) != 0xD800 || v7 >= v6)
      {
        ++v4;
      }

      else
      {
        v10 = *v7;
        v11 = (v10 & 0xFC00) == 56320;
        v12 = v10 + (v8 << 10) - 56613888;
        if (v11)
        {
          v4 += 2;
        }

        else
        {
          ++v4;
        }

        if (v11)
        {
          v8 = v12;
        }
      }

      if (v5 != (HIWORD(v8) & 0x1F))
      {
        result = CFUniCharGetUnicodePropertyDataForPlane(1u, HIWORD(v8) & 0x1F);
        v5 = HIWORD(v8) & 0x1F;
      }

      if (result)
      {
        v13 = *(result + BYTE1(v8));
        if (v13 >= 0x13)
        {
          LOBYTE(v13) = *(result + ((v13 << 8) - 4864) + v8 + 256);
        }
      }

      else
      {
        LOBYTE(v13) = 1;
      }

      *a3 = v13;
      if (v8 < 0x10000)
      {
        ++a3;
      }

      else
      {
        a3[1] = v13;
        a3 += 2;
      }
    }

    while (v4 < v6);
  }

  return result;
}