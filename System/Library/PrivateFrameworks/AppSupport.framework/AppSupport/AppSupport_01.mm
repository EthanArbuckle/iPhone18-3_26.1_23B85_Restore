CFTypeRef copyCountryCode(const void **a1, _BYTE *a2, const __CFString *a3, void (__cdecl *a4)(CFNotificationCenterRef, void *, CFNotificationName, const void *, CFDictionaryRef), const __CFString *a5)
{
  if (a2 && (*a2 & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, a4, a5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    *a2 = 1;
  }

  pthread_mutex_lock(&__CountryCodeLock);
  v11 = *a1;
  v12 = *MEMORY[0x1E695E738];
  if (*a1 == *MEMORY[0x1E695E738])
  {
    goto LABEL_10;
  }

  if (v11)
  {
    v13 = CFRetain(v11);
    goto LABEL_13;
  }

  v14 = CPCopySharedResourcesPreferencesDomainForDomain(@"com.apple.AppSupport");
  if (!v14)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_13;
  }

  v15 = v14;
  v16 = CFPreferencesCopyValue(a3, v14, @"mobile", *MEMORY[0x1E695E8B0]);
  *a1 = v16;
  if (v16)
  {
    v13 = CFRetain(v16);
  }

  else
  {
    v13 = 0;
    *a1 = v12;
  }

  CFRelease(v15);
LABEL_13:
  pthread_mutex_unlock(&__CountryCodeLock);
  return v13;
}

__CFString *CPPhoneNumberCopyActiveCountryCode()
{
  v0 = copyCountryCode(&__CurrentCountryCode, __CurrentCountryCodeListenerRegistered, @"CPActiveCountryCode", _CPPhoneNumberActiveCountryCodeChanged, @"CPActiveCountryCodeChanged.Internal");
  if (!v0)
  {
    v1 = CFLocaleCopyCurrent();
    if (v1)
    {
      v2 = v1;
      Value = CFLocaleGetValue(v1, *MEMORY[0x1E695E6D0]);
      if (Value)
      {
        MutableCopy = CFStringCreateMutableCopy(0, 0, Value);
        v0 = MutableCopy;
        if (MutableCopy)
        {
          CFStringLowercase(MutableCopy, v2);
        }
      }

      else
      {
        v0 = 0;
      }

      CFRelease(v2);
    }

    else
    {
      v0 = 0;
    }
  }

  if (v0)
  {
    return v0;
  }

  else
  {
    return @"us";
  }
}

CFTypeRef CPPhoneNumberCopyLastKnownNetworkCountryCode()
{
  result = copyCountryCode(&__CurrentNetworkCountryCode, __CurrentNetworkCountryCodeListenerRegistered, @"CPNetworkCountryCode", _CPPhoneNumberNetworkCountryCodeChanged, @"CPNetworkCountryCodeChanged.Internal");
  if (!result)
  {

    return copyCountryCode(&__LastKnownNetworkCountryCode, 0, @"CPLastKnownNetworkCountryCode", 0, 0);
  }

  return result;
}

__CFString *CPPhoneNumberCopyCountryCodeForIncomingNumber()
{
  result = copyCountryCode(&__CurrentNetworkCountryCode, __CurrentNetworkCountryCodeListenerRegistered, @"CPNetworkCountryCode", _CPPhoneNumberNetworkCountryCodeChanged, @"CPNetworkCountryCodeChanged.Internal");
  if (!result)
  {

    return CPPhoneNumberCopyActiveCountryCode();
  }

  return result;
}

void setCountryCode(CFMutableStringRef MutableCopy, uint64_t (*a2)(void), const __CFString *a3, const __CFString *a4, const __CFString *a5, CFTypeRef *a6, void *a7, _DWORD *a8)
{
  if (getuid())
  {
    if (MutableCopy)
    {
      Length = CFStringGetLength(MutableCopy);
      MutableCopy = CFStringCreateMutableCopy(0, Length + 1, MutableCopy);
      CFStringLowercase(MutableCopy, 0);
    }

    v17 = a2();
    v18 = v17;
    v19 = MutableCopy == 0;
    v20 = MutableCopy != 0;
    if (v17)
    {
      v20 = 0;
    }

    else
    {
      v19 = 0;
    }

    if (v19 != v20)
    {
      goto LABEL_10;
    }

    if (!(MutableCopy | v17))
    {
      return;
    }

    if (CFStringCompare(v17, MutableCopy, 0))
    {
LABEL_10:
      pthread_mutex_lock(&__CountryCodeLock);
      v21 = CPCopySharedResourcesPreferencesDomainForDomain(@"com.apple.AppSupport");
      if (v21)
      {
        v22 = v21;
        v23 = *MEMORY[0x1E695E8B0];
        CFPreferencesSetValue(a3, MutableCopy, v21, @"mobile", *MEMORY[0x1E695E8B0]);
        if (a4 && MutableCopy)
        {
          CFPreferencesSetValue(a4, MutableCopy, v22, @"mobile", v23);
        }

        CFPreferencesSynchronize(v22, @"mobile", v23);
        CFRelease(v22);
      }

      ++*a8;
      if (*a6)
      {
        CFRelease(*a6);
      }

      *a6 = MutableCopy;
      if (MutableCopy)
      {
        CFRetain(MutableCopy);
        if (a7)
        {
          *a7 = MutableCopy;
          CFRetain(MutableCopy);
        }
      }

      pthread_mutex_unlock(&__CountryCodeLock);
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, a5, 0, 0, 1u);
    }

    if (v18)
    {
      CFRelease(v18);
    }

    if (MutableCopy)
    {

      CFRelease(MutableCopy);
    }
  }
}

const char *CPPhoneNumberCopyCountryCodeForInternationalCallingCode(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    v3 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v1, v2, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    v4 = _PNCopyCountryCodeForInternationalCode();
    CFRelease(v3);
    return v4;
  }

  return result;
}

uint64_t CPPhoneNumberCopyFormattedStringForVoiceCall()
{
  v0 = CPPhoneNumberCopyCountryCodeForIncomingNumber();
  v1 = PNCreateFormattedStringWithCountry();
  CFRelease(v0);
  return v1;
}

uint64_t CPPhoneNumberCopyFormattedStringForTextMessage()
{
  v0 = CPPhoneNumberCopyActiveCountryCode();
  v1 = PNCreateFormattedStringWithCountry();
  CFRelease(v0);
  return v1;
}

void handleCountryChanged(_DWORD *a1, const __CFString *a2, const void **a3, const void **a4, const __CFString *a5)
{
  pthread_mutex_lock(&__CountryCodeLock);
  if (*a1)
  {
    --*a1;
    goto LABEL_3;
  }

  v11 = *a3;
  v12 = MEMORY[0x1E695E738];
  if (*a3)
  {
    if (v11 != *MEMORY[0x1E695E738])
    {
      CFRelease(v11);
    }

    *a3 = 0;
  }

  if (getuid())
  {
    v13 = CPCopySharedResourcesPreferencesDomainForDomain(@"com.apple.AppSupport");
    if (v13)
    {
      v14 = v13;
      v15 = *MEMORY[0x1E695E8B0];
      CFPreferencesSynchronize(v13, @"mobile", *MEMORY[0x1E695E8B0]);
      *a3 = CFPreferencesCopyValue(a2, v14, @"mobile", v15);
      CFRelease(v14);
    }
  }

  else
  {
    v16 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.apple.AppSupport.plist"];
    if (v16)
    {
      v17 = [v16 valueForKey:a2];
      *a3 = v17;
      if (!a4)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  v17 = *a3;
  if (!a4)
  {
    goto LABEL_19;
  }

LABEL_17:
  if (!v17)
  {
LABEL_20:
    *a3 = *v12;
    goto LABEL_21;
  }

  *a4 = v17;
  CFRetain(v17);
  v17 = *a3;
LABEL_19:
  if (!v17)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (a4 && !*a4)
  {
    *a4 = *v12;
  }

LABEL_3:
  pthread_mutex_unlock(&__CountryCodeLock);
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, a5, 0, 0, 1u);
}

unint64_t CPFileBuildDirectoriesToPath(CFStringRef filePath, uint64_t a2)
{
  if (!filePath)
  {
    return 0;
  }

  v3 = CFURLCreateWithFileSystemPath(0, filePath, kCFURLPOSIXPathStyle, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CPFileBuildDirectoriesToURL(v3, a2);
  CFRelease(v4);
  return v5;
}

unint64_t CPFileBuildDirectoriesToURL(const __CFURL *a1, uint64_t a2)
{
  if (CPPathUtils_MakePath(a1, a2))
  {
    return 1;
  }

  result = CFURLCreateCopyDeletingLastPathComponent(0, a1);
  if (result)
  {
    v5 = result;
    v6 = CPFileBuildDirectoriesToURL(result, a2);
    CFRelease(v5);
    if (v6)
    {

      return CPPathUtils_MakePath(a1, a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CPSecureDeleteFile(const char *a1)
{
  memset(&v13, 0, sizeof(v13));
  if (lstat(a1, &v13) == -1)
  {
    return 0;
  }

  if ((v13.st_mode & 0xF000) == 0x8000)
  {
    v2 = open(a1, 1, 0);
    if (v2 < 0)
    {
      if (*__error() != 13)
      {
        return 0;
      }

      chmod(a1, 0x1FFu);
      v2 = open(a1, 1, 0);
      if (v2 < 0)
      {
        return 0;
      }
    }

    v3 = v2;
    st_blksize = v13.st_blksize;
    st_size = v13.st_size;
    v6 = malloc_type_malloc(v13.st_blksize, 0x100004077774924uLL);
    if ((__CPRandomizeBuffer_initalized & 1) == 0)
    {
      v7 = getpid();
      srandom(v7);
      __CPRandomizeBuffer_initalized = 1;
    }

    if (st_blksize)
    {
      v8 = v6;
      v9 = st_blksize;
      do
      {
        *v8++ = random();
        --v9;
      }

      while (v9);
    }

    if (st_size >= st_blksize)
    {
      v10 = st_size - st_blksize;
    }

    else
    {
      v10 = 0;
    }

    lseek(v3, 0, 0);
    if (v10 < 1)
    {
      v11 = 0;
LABEL_21:
      write(v3, v6, st_size - v11);
    }

    else
    {
      v11 = 0;
      while (write(v3, v6, st_blksize) != -1)
      {
        v11 += write(v3, v6, st_blksize);
        if (v11 >= v10)
        {
          goto LABEL_21;
        }
      }
    }

    lseek(v3, 0, 0);
    free(v6);
    close(v3);
  }

  if ((unlink(a1) & 0x80000000) == 0)
  {
    return 1;
  }

  if (*__error() == 1)
  {
    chmod(a1, 0x1FFu);
    return unlink(a1) >= 0;
  }

  return 0;
}

FTS *CPDeleteTree(char *a1, int a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v12[0] = a1;
  v12[1] = 0;
  result = fts_open(v12, 20, 0);
  if (!result)
  {
    goto LABEL_50;
  }

  v4 = result;
  v5 = fts_read(result);
  if (!v5)
  {
LABEL_27:
    if (fts_close(v4) == -1)
    {
      if (logHandle_onceToken != -1)
      {
        CPDeleteTree_cold_1();
      }

      if (os_log_type_enabled(logHandle_logHandle, OS_LOG_TYPE_ERROR))
      {
        CPDeleteTree_cold_2();
      }
    }

    result = 1;
    goto LABEL_50;
  }

  v6 = v5;
  while (1)
  {
    fts_info = v6->fts_info;
    if (fts_info <= 6)
    {
      break;
    }

    if (fts_info - 12 < 2 || fts_info == 8)
    {
      fts_path = v6->fts_path;
      if (a2)
      {
        if (!CPSecureDeleteFile(fts_path))
        {
          if (fts_close(v4) == -1)
          {
            if (logHandle_onceToken != -1)
            {
              CPDeleteTree_cold_1();
            }

            result = os_log_type_enabled(logHandle_logHandle, OS_LOG_TYPE_ERROR);
            if (!result)
            {
              goto LABEL_50;
            }

            goto LABEL_54;
          }

          goto LABEL_49;
        }
      }

      else if (unlink(fts_path) < 0 && *__error() == 13)
      {
        chmod(v6->fts_path, 0x1FFu);
        if (unlink(v6->fts_path) < 0)
        {
          if (fts_close(v4) != -1)
          {
            goto LABEL_49;
          }

          if (logHandle_onceToken != -1)
          {
            CPDeleteTree_cold_1();
          }

          result = os_log_type_enabled(logHandle_logHandle, OS_LOG_TYPE_ERROR);
          if (!result)
          {
            goto LABEL_50;
          }

LABEL_54:
          CPDeleteTree_cold_2();
          goto LABEL_49;
        }
      }
    }

    else if (fts_info == 7)
    {
      if (fts_close(v4) == -1)
      {
        if (logHandle_onceToken != -1)
        {
          CPDeleteTree_cold_1();
        }

        result = os_log_type_enabled(logHandle_logHandle, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_50;
        }

        goto LABEL_54;
      }

LABEL_49:
      result = 0;
      goto LABEL_50;
    }

LABEL_26:
    v6 = fts_read(v4);
    if (!v6)
    {
      goto LABEL_27;
    }
  }

  if (fts_info == 6)
  {
    rmdir(v6->fts_path);
    goto LABEL_26;
  }

  if (fts_info != 2 && fts_info != 4)
  {
    goto LABEL_26;
  }

  if (fts_close(v4) != -1)
  {
    goto LABEL_49;
  }

  if (logHandle_onceToken != -1)
  {
    CPDeleteTree_cold_1();
  }

  result = os_log_type_enabled(logHandle_logHandle, OS_LOG_TYPE_ERROR);
  if (result)
  {
    goto LABEL_54;
  }

LABEL_50:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CPTemporaryFileWithUniqueName(uint64_t a1, int *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:a1] fileSystemRepresentation];
  v4 = CPOpenTemporaryFile(v3, v9, 0x400uLL);
  if (v4 == -1)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v9 isDirectory:0 relativeToURL:0];
    if (a2)
    {
      *a2 = v5;
    }

    else
    {
      close(v5);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

unint64_t CPPathUtils_MakePath(const __CFURL *a1, mode_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  result = CFURLCopyAbsoluteURL(a1);
  if (!result)
  {
    goto LABEL_8;
  }

  v4 = result;
  v5 = CFURLCopyFileSystemPath(result, kCFURLPOSIXPathStyle);
  if (!v5)
  {
    CFRelease(v4);
    goto LABEL_7;
  }

  v6 = v5;
  CString = CFStringGetCString(v5, buffer, 1024, 0x8000100u);
  CFRelease(v6);
  CFRelease(v4);
  if (!CString)
  {
LABEL_7:
    result = 0;
    goto LABEL_8;
  }

  memset(&v11, 0, sizeof(v11));
  if (stat(buffer, &v11) == -1)
  {
    v9 = *__error();
    if (v9 != 20 && v9 != 2 || buffer[0] == 47 && !buffer[1])
    {
      if (logHandle_onceToken != -1)
      {
        CPDeleteTree_cold_1();
      }

      v10 = logHandle_logHandle;
      if (os_log_type_enabled(logHandle_logHandle, OS_LOG_TYPE_ERROR))
      {
        CPPathUtils_MakePath_cold_2(buffer, v9, v10);
      }
    }

    result = mkdir(buffer, a2) == 0;
  }

  else
  {
    result = 1;
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

os_log_t __logHandle_block_invoke()
{
  result = os_log_create("com.apple.AppSupport", "CPFileUtilities");
  logHandle_logHandle = result;
  return result;
}

void OUTLINED_FUNCTION_0_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void CPCancelWakeAtDateWithIdentifier(const __CFDate *a1, CFStringRef my_id)
{
  if (a1)
  {

    IOPMCancelScheduledPowerEvent(a1, my_id, @"wake");
  }

  else if (my_id)
  {
    v3 = IOPMCopyScheduledPowerEvents();
    if (v3)
    {
      v4 = v3;
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
          Value = CFDictionaryGetValue(ValueAtIndex, @"scheduledby");
          if (Value)
          {
            if (CFStringCompare(my_id, Value, 0) == kCFCompareEqualTo)
            {
              v10 = CFDictionaryGetValue(ValueAtIndex, @"eventtype");
              if (v10)
              {
                if (CFStringCompare(v10, @"wake", 0) == kCFCompareEqualTo)
                {
                  v11 = CFDictionaryGetValue(ValueAtIndex, @"time");
                  if (v11)
                  {
                    IOPMCancelScheduledPowerEvent(v11, my_id, @"wake");
                  }
                }
              }
            }
          }
        }
      }

      CFRelease(v4);
    }
  }
}

CFIndex __CPPowerAssertionsGetCount()
{
  pthread_mutex_lock(&_IdentifiedPowerAssertionsLock);
  if (_IdentifiedPowerAssertions)
  {
    Count = CFDictionaryGetCount(_IdentifiedPowerAssertions);
  }

  else
  {
    Count = 0;
  }

  pthread_mutex_unlock(&_IdentifiedPowerAssertionsLock);
  return Count;
}

uint64_t __CPPowerAssertionGetTimeouts(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&_PowerAssertionsLock);
  Count = _PowerAssertions;
  if (_PowerAssertions)
  {
    Count = CFArrayGetCount(_PowerAssertions);
  }

  if (Count < a2)
  {
    a2 = Count;
  }

  if (a2 >= 1)
  {
    v5 = 0;
    do
    {
      [CFArrayGetValueAtIndex(_PowerAssertions v5)];
      *(a1 + 8 * v5++) = v6;
    }

    while (a2 != v5);
  }

  pthread_mutex_unlock(&_PowerAssertionsLock);
  return a2;
}

uint64_t _CompareAssertionTimeouts(void *a1, void *a2)
{
  [a1 timeout];
  v4 = v3;
  [a2 timeout];
  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v5 < v4;
  }
}

uint64_t CPSetPowerAssertionWithIdentifier(int a1, const void *a2)
{
  if (pthread_mutex_lock(&_IdentifiedPowerAssertionsLock))
  {
    return 0;
  }

  Mutable = _IdentifiedPowerAssertions;
  if (!_IdentifiedPowerAssertions)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    _IdentifiedPowerAssertions = Mutable;
  }

  v6 = CFDictionaryContainsKey(Mutable, a2);
  if (!a1 || v6)
  {
    v4 = 1;
    if ((a1 & 1) == 0 && v6)
    {
      CFDictionaryRemoveValue(_IdentifiedPowerAssertions, a2);
    }
  }

  else
  {
    v7 = [[_CPPowerAssertion alloc] initWithIdentifier:a2 timeout:0.0];
    if (v7)
    {
      v8 = v7;
      CFDictionarySetValue(_IdentifiedPowerAssertions, a2, v7);
      CFRelease(v8);
      v4 = 1;
    }

    else
    {
      v4 = 0;
    }
  }

  pthread_mutex_unlock(&_IdentifiedPowerAssertionsLock);
  return v4;
}

uint64_t CPPowerAssertionCreate(uint64_t a1, double a2)
{
  v4 = [_CPPowerAssertion alloc];

  return [(_CPPowerAssertion *)v4 initWithIdentifier:a1 timeout:a2];
}

UInt8 *_CPCreateUTF8StringFromCFString(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  usedBufLen = 0;
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
  v7.location = 0;
  v7.length = Length;
  CFStringGetBytes(a1, v7, 0x8000100u, 0, 0, v4, MaximumSizeForEncoding, &usedBufLen);
  v4[usedBufLen] = 0;
  return v4;
}

void sub_195E7D1C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CPDNDeliverNotification(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v9 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a2 length:a3 encoding:4];
  v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  if (!a5)
  {
    v12 = 0;
LABEL_6:
    [CPGetContextForCalloutCurrentMIGServerSource() deliverNotification:v10 userInfo:v12];
    goto LABEL_7;
  }

  v12 = [MEMORY[0x1E696AE40] propertyListWithData:v11 options:0 format:0 error:0];
  if (!v12)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_6;
  }

LABEL_7:

  return 0;
}

uint64_t _CPDNCheckIn(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [CPDistributedNotificationCenter centerForServerPort:a1];
  if ((a2 - 1) <= 0xFFFFFFFD)
  {
    [v7 _receivedCheckIn:a2 auditToken:a3];
  }

  return 0;
}

void *dictionaryWithoutLargestNSData(void *a1, uint64_t *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  objc_opt_class();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v16 = a2;
    v17 = a3;
    v8 = 0;
    v9 = 0;
    v10 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(a1);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [a1 objectForKey:{v12, v16, v17}];
        if (objc_opt_isKindOfClass() & 1) != 0 && [v13 length] >= 0x4000 && (objc_opt_isKindOfClass())
        {
          v8 = v13;
          v9 = v12;
        }
      }

      v7 = [a1 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
    if (v9)
    {
      a1 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a1];
      [a1 removeObjectForKey:v9];
    }

    else
    {
      v8 = 0;
    }

    a2 = v16;
    a3 = v17;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  *a2 = v9;
  *a3 = v8;
  v14 = *MEMORY[0x1E69E9840];
  return a1;
}

CFDataRef createDataFromVMDeallocateBytes(const UInt8 *a1, void *a2)
{
  v7.version = 0;
  memset(&v7.retain, 0, 40);
  v7.info = a2;
  v7.deallocate = vmDeallocateCallback;
  v7.preferredSize = 0;
  v4 = CFAllocatorCreate(0, &v7);
  v5 = CFDataCreateWithBytesNoCopy(0, a1, a2, v4);
  CFRelease(v4);
  return v5;
}

uint64_t processMessage(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, UInt8 *DataFromVMDeallocateBytes, unsigned int a8, uint64_t a9, unsigned int a10, unsigned int a11)
{
  v18 = CPGetContextForCalloutCurrentMIGServerSource();
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a1 length:a2 encoding:4];
  if ([v18 _isTaskEntitled:a9])
  {
    v29 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (DataFromVMDeallocateBytes)
    {
      v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a5 length:a6 encoding:4];
      DataFromVMDeallocateBytes = createDataFromVMDeallocateBytes(DataFromVMDeallocateBytes, a8);
    }

    else
    {
      v20 = 0;
    }

    if (a4)
    {
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
      if (v20)
      {
        v24 = DataFromVMDeallocateBytes == 0;
      }

      else
      {
        v24 = 1;
      }

      v26 = !v24 || a11 != 0;
      v27 = [MEMORY[0x1E696AE40] propertyListWithData:v23 options:v26 format:0 error:0];
    }

    else
    {
      v27 = 0;
    }

    v18[84] = a11 != 0;
    v31 = 0;
    v18[85] = 0;
    *(v18 + 20) = a10;
    if (v19)
    {
      if (!v27 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if (v20 && DataFromVMDeallocateBytes)
        {
          [v27 setObject:DataFromVMDeallocateBytes forKey:v20];
        }

        if (a11)
        {
          [v27 setObject:-[CPDistributedMessagingCenter _initClientWithPort:]([CPDistributedMessagingCenter alloc] forKey:{"_initClientWithPort:", a11), @"_kCPDistributedMessagingMagicCenterCreationKeyValue"}];
        }

        [v18 _dispatchMessageNamed:v19 userInfo:v27 reply:&v31 auditToken:a9];
      }
    }

    if (a10 + 1 < 2 || (v18[85] & 1) != 0)
    {
      if (v31)
      {
        NSLog(@"%@ ignoring reply dictionary for a one-way or delayed message named %@.", *(v18 + 1), v19);
      }
    }

    else
    {
      [v18 _sendReplyMessage:v31 portPassing:v18[84] onMachPort:a10];
    }

    [v29 drain];
    return 4294966991;
  }

  else
  {
    v21 = objc_opt_class();
    v22 = [v18 _requiredEntitlement];
    if (v19)
    {
      NSLog(@"%@ ignoring message '%@' from client lacking the '%@' entitlement", v21, v19, v22);
    }

    else
    {
      NSLog(@"%@ ignoring message from client lacking the '%@' entitlement", v21, v22);
    }

    return 5;
  }
}

uint64_t _CPDMTwoWayMessage(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, UInt8 *a11, unsigned int a12, void *a13, _DWORD *a14, void *a15, _DWORD *a16, uint64_t a17)
{
  *a13 = 0;
  *a14 = 0;
  *a15 = 0;
  *a16 = 0;
  return processMessage(a3, a4, a5, a6, a9, a10, a11, a12, a17, a2, 0);
}

uint64_t _CPDMTwoWayMessageWithPortPassing(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, UInt8 *a12, unsigned int a13, void *a14, _DWORD *a15, void *a16, _DWORD *a17, uint64_t a18)
{
  *a14 = 0;
  *a15 = 0;
  *a16 = 0;
  *a17 = 0;
  return processMessage(a4, a5, a6, a7, a10, a11, a12, a13, a18, a2, a3);
}

uint64_t _ReachabilityCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [a3 reachabilityChangedWithFlags:a2];

  return [v5 drain];
}

CPNetworkObserver *_CPNetworkObserverSharedInitialize()
{
  result = objc_alloc_init(CPNetworkObserver);
  _CPNetworkObserverShared = result;
  return result;
}

uint64_t _NetworkReachabilityCallBack(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [a3 _networkReachableCallBack:a2];

  return [v5 drain];
}

BOOL _WiFiIsSettingEnabled(const __SCPreferences *a1)
{
  Value = SCPreferencesGetValue(a1, @"AllowEnable");
  if (Value && (TypeID = CFNumberGetTypeID(), TypeID == CFGetTypeID(Value)))
  {
    v4 = CFBooleanGetValue(Value) != 0;
  }

  else
  {
    v4 = *MEMORY[0x1E695E4D0] == Value;
  }

  SCPreferencesSynchronize(a1);
  return v4;
}

uint64_t CPAggregateDictionaryAddValueForScalarKey(uint64_t a1, uint64_t a2)
{
  v4 = +[CPAggregateDictionary sharedAggregateDictionary];

  return [v4 addValue:a2 forKey:a1];
}

CPAggregateDictionary *initializeAggregateDictionary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = 8;
  result = sysctlbyname("hw.model", &v5, &v4, 0, 0);
  if (v5 != 14414 || v6 != 50)
  {
    result = dlopen("/System/Library/PrivateFrameworks/AggregateDictionary.framework/AggregateDictionary", 1);
    if (result)
    {
      v2 = result;
      __ADClientCommit = dlsym(result, "ADClientCommit");
      __ADClientSignificantTimeChanged = dlsym(v2, "ADClientSignificantTimeChanged");
      __ADClientClearScalarKey = dlsym(v2, "ADClientClearScalarKey");
      __ADClientSetValueForScalarKey = dlsym(v2, "ADClientSetValueForScalarKey");
      __ADClientAddValueForScalarKey = dlsym(v2, "ADClientAddValueForScalarKey");
      __ADClientClearDistributionKey = dlsym(v2, "ADClientClearDistributionKey");
      __ADClientSetValueForDistributionKey = dlsym(v2, "ADClientSetValueForDistributionKey");
      __ADClientPushValueForDistributionKey = dlsym(v2, "ADClientPushValueForDistributionKey");
      result = objc_alloc_init(CPAggregateDictionary);
      __aggregateDictionary = result;
    }
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_195E82EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CPSqliteDatabaseRegisterMatchesSearchStringFunctionWithMatchType(uint64_t a1, const char *a2, int a3)
{
  if (!a1)
  {
    return 1;
  }

  CPSqliteDatabaseConnectionForWriting(a1);
  v6 = *(*(a1 + 8) + 32);
  if (!v6)
  {
    v6 = malloc_type_calloc(1uLL, 0x10uLL, 0xD0040D45F9286uLL);
  }

  v7 = CPSqliteMatchesSearchString;
  if (a3 == 6)
  {
    v7 = CPSqliteMatchesSearchStringByWord;
  }

  if (a3 == 4)
  {
    v8 = CPSqliteMatchesSearchStringExactly;
  }

  else
  {
    v8 = v7;
  }

  v9 = CPSqliteDatabaseRegisterFunction(a1, a2, v8, 2, v6);
  v10 = *(a1 + 8);
  if (v9)
  {
    if (!*(v10 + 32))
    {
      free(v6);
    }
  }

  else
  {
    *(v10 + 32) = v6;
    *(v10 + 40) = SearchStringCacheDestroy;
  }

  return v9;
}

void SearchStringCacheDestroy(id *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

void CPSqliteMatchesSearchStringWithMatchType(sqlite3_context *a1, int a2, sqlite3_value **a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v7 = sqlite3_value_text(*a3);
    v8 = sqlite3_user_data(a1);
    v9 = *v8;
    if (*v8)
    {
      if (!strcmp(v7, v9))
      {
LABEL_6:
        v11 = sqlite3_value_text(a3[1]);
        if (v11)
        {
          v12 = [*(v8 + 1) matchesUTF8String:v11 matchType:a4 matchOptions:a4 != 6];
        }

        else
        {
          v12 = 0;
        }

        sqlite3_result_int(a1, v12);
        return;
      }

      free(v9);
    }

    *v8 = strdup(v7);
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v7];
    *(v8 + 1) = [[CPSearchMatcher alloc] initWithSearchString:v10];

    goto LABEL_6;
  }

  sqlite3_result_error(a1, "CPSqliteMatchesSearchString: wrong number of arguments", -1);
}

uint64_t matche(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 a3, uint64_t a4, void *a5, unsigned __int8 **a6)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v164 = 0;
  v163 = 0;
  LODWORD(v10) = *a1;
  if (!*a1)
  {
    v151 = 0;
    v16 = 0;
    LOWORD(v17) = 0;
    LOWORD(v18) = 0;
    v19 = a2;
    goto LABEL_401;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v151 = 0;
  v162 = 0;
  v152 = 0;
  v15 = 0;
  v160 = 0;
  v146 = 0;
  v16 = 0;
  LOWORD(v17) = 0;
  LOWORD(v18) = 0;
  v19 = a2;
  v147 = a5;
  while (1)
  {
    v20 = *v19;
    if (!*v19)
    {
      goto LABEL_394;
    }

    v155 = v15;
    v21 = v10 - 34;
    v22 = (v10 - 34) > 0x3Eu;
    if (*(v8 + v14))
    {
      ++v14;
    }

    else
    {
      if (v13 > 2 * v14)
      {
        return 0;
      }

      ++v13;
    }

    if (v10 == 92)
    {
      ++v152;
      v146 = v9;
      v24 = *++v9;
      LOBYTE(v10) = v24;
    }

    else if (v10 == 42)
    {
      ++v9;
      while (v10 == 42)
      {
        v23 = *v9++;
        LOBYTE(v10) = v23;
      }

      if (!v10)
      {
        if (v20 < 0xC0)
        {
          if (!a5)
          {
            return 1;
          }

          goto LABEL_379;
        }

        v100 = utf8_byte_length_noerror_utf8_len_table[v20 >> 4];
        v165[0] = v17;
        v101 = utf8_decodestr(v19, v100, v165, &v163, 2, &v164, 0);
        LOWORD(v17) = v165[0];
        if (v101)
        {
          --v9;
          v151 = 1;
          goto LABEL_394;
        }

        if (v165[0] - 12441 >= 2)
        {
          v103 = (v7 & 2) != 0 || v165[0] - 768 >= 0x70;
          v104 = !v103;
          result = v104 ^ 1u;
          if (!v103 || !a5)
          {
            return result;
          }

LABEL_379:
          *a5 = &v16[-v8];
          v102 = (v19 - v16);
LABEL_441:
          *a6 = v102;
          return 1;
        }

        return 0;
      }

      if (v10 == 92)
      {
        if (*v9 == v20)
        {
          LOBYTE(v10) = *v19;
        }

        else
        {
          v155 = 0;
          LOBYTE(v10) = 92;
          v160 = --v9;
        }
      }

      else
      {
        v155 = 0;
        v160 = --v9;
      }
    }

    if (v10 >= 0xC0u)
    {
      if ((v10 + 29) < 0xCu)
      {
LABEL_22:
        HIDWORD(v162) = 1;
LABEL_34:
        v11 = v9;
        goto LABEL_35;
      }

      if (v10 == 239)
      {
        if (v9[1] < 0xACu)
        {
          goto LABEL_22;
        }
      }

      else if (v10 == 226 && v9[1] > 0xB9u)
      {
        goto LABEL_22;
      }

      HIDWORD(v162) = 0;
      goto LABEL_34;
    }

    v25 = HIDWORD(v162);
    if ((v10 & 0x80u) == 0)
    {
      v25 = 0;
    }

    HIDWORD(v162) = v25;
    if ((v10 & 0x80u) == 0)
    {
      v11 = 0;
    }

LABEL_35:
    if (v20 >= 0xC0)
    {
      if ((v20 + 29) < 0xCu)
      {
LABEL_37:
        LODWORD(v162) = 1;
LABEL_49:
        v12 = v19;
        goto LABEL_50;
      }

      if (v20 == 239)
      {
        if (v19[1] < 0xACu)
        {
          goto LABEL_37;
        }
      }

      else if (v20 == 226 && v19[1] > 0xB9u)
      {
        goto LABEL_37;
      }

      LODWORD(v162) = 0;
      goto LABEL_49;
    }

    v26 = v162;
    if ((v20 & 0x80u) == 0)
    {
      v26 = 0;
    }

    LODWORD(v162) = v26;
    if ((v20 & 0x80u) == 0)
    {
      v12 = 0;
    }

LABEL_50:
    v158 = v14;
    v159 = v13;
    if (v20 != v10)
    {
      break;
    }

    LOWORD(v18) = 0;
    LOWORD(v17) = 0;
    LODWORD(v27) = 0;
    if (v16)
    {
      v28 = 1;
    }

    else
    {
      v28 = a5 == 0;
    }

    if (!v28)
    {
      v16 = v19;
    }

    v15 = 1;
LABEL_140:
    v10 = &v12[v27] - v19;
    if (v27)
    {
      v12 = 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v15)
    {
      goto LABEL_268;
    }

    v14 = v158;
    v13 = v159;
    if (v160 && !v9[v15])
    {
      v51 = v19[v10];
      if ((v7 & 4) != 0)
      {
        if ((v51 & 0x80) == 0 && separator_map[v51])
        {
          goto LABEL_269;
        }
      }

      else if (v51 <= 1)
      {
        goto LABEL_269;
      }

      v15 = 0;
      v152 = 0;
      v9 = v160;
    }

LABEL_269:
    v9 += v15;
    v19 += v10;
    LOBYTE(v10) = *v9;
    if (!*v9)
    {
      goto LABEL_394;
    }
  }

  v153 = v16;
  v18 = 0;
  v17 = 0u;
  v157 = 0;
  LODWORD(v27) = 0;
  v29 = (v162 == 0) & v7;
  v30 = (v11 | v12) == 0;
  v150 = v9 + 1;
  v31 = (v22 | (0x3FFFFFFFFFFFFFDEuLL >> v21)) & v30;
  if (HIDWORD(v162))
  {
    v31 = 1;
  }

  if (v162)
  {
    v32 = 1;
  }

  else
  {
    v32 = v31;
  }

  v161 = v11;
  while (1)
  {
    if (!v29)
    {
      goto LABEL_95;
    }

    if (v30)
    {
      v33 = tolower_map[*v9];
      v34 = *v19;
      if (v33 == tolower_map[v34])
      {
LABEL_131:
        v8 = a2;
        v7 = a3;
        a5 = v147;
        v16 = v153;
        goto LABEL_132;
      }

      if (v9 == v160 && v34 >= 2)
      {
        v35 = v19 + 1;
        while (1)
        {
          v36 = *v35;
          if (v36 < 0)
          {
            break;
          }

          if (v36 < 2)
          {
            v12 = 0;
            v11 = 0;
            v8 = a2;
            v7 = a3;
            a5 = v147;
            v16 = v153;
LABEL_125:
            v15 = v155;
            goto LABEL_126;
          }

          ++v35;
          if (v33 == tolower_map[v36])
          {
            v19 = v35 - 1;
            goto LABEL_131;
          }
        }

        v19 = v35;
      }

      goto LABEL_95;
    }

    if (v18)
    {
      goto LABEL_76;
    }

    if (v11)
    {
      v37 = utf8_byte_length_noerror_utf8_len_table[*v11 >> 4];
      v165[0] = 0;
      v157 = v37;
      v38 = utf8_decodestr(v11, v37, v165, &v163, 2, &v164, 0);
      v18 = v165[0];
      if (v38)
      {
        goto LABEL_392;
      }

LABEL_76:
      if (!v17)
      {
        goto LABEL_77;
      }

      goto LABEL_84;
    }

    v18 = *v9;
    if (!v17)
    {
LABEL_77:
      if (v12)
      {
        v27 = utf8_byte_length_noerror_utf8_len_table[*v12 >> 4];
        v165[0] = 0;
        v39 = utf8_decodestr(v12, v27, v165, &v163, 2, &v164, 0);
        v17 = v165[0];
        if (v39)
        {
LABEL_392:
          v151 = 1;
          goto LABEL_393;
        }
      }

      else
      {
        v17 = *v19;
      }
    }

LABEL_84:
    v40 = map_case(v17);
    if (v18 == v40)
    {
      goto LABEL_328;
    }

    v41 = v40;
    v42 = map_case(v18);
    if (v42 == v41)
    {
      goto LABEL_328;
    }

    v11 = v161;
    if (v17 == v42)
    {
      goto LABEL_131;
    }

    if (v18 == 223)
    {
      if (v17 == 115)
      {
        if (v19[1] == 115)
        {
          ++v19;
          LOWORD(v17) = 115;
          LOWORD(v18) = 223;
          goto LABEL_131;
        }

        v17 = 0x73u;
      }

      v18 = 223;
    }

    else if (v18 == 115 && v17 == 223)
    {
      v18 = 115;
      if (*v150 == 115)
      {
        ++v9;
        goto LABEL_131;
      }
    }

LABEL_95:
    if (v32)
    {
      if (v160)
      {
        v15 = 0;
        v16 = v153;
        v52 = &v160[v152] - v9;
        if (v9 <= v160)
        {
          v52 = 0;
        }

        v19 += v52;
        v9 = v160;
        v152 = 0;
        v8 = a2;
        v7 = a3;
        a5 = v147;
        goto LABEL_140;
      }

      a5 = v147;
      v16 = v153;
      if (v147)
      {
        v16 = 0;
      }

      v8 = a2;
      v7 = a3;
      if ((a3 & 4) == 0)
      {
        goto LABEL_394;
      }

LABEL_172:
      if ((v7 & 8) == 0)
      {
        if (*a1 - 48 < 0xA && *v19 - 48 <= 9)
        {
          v54 = v19;
          do
          {
            v56 = *++v54;
            v55 = v56;
          }

          while (v56 - 48 < 0xA);
          v57 = 0;
          goto LABEL_260;
        }

        v58 = v16;
        v59 = 0;
        v54 = v19;
        while (1)
        {
          v60 = *v54;
          v61 = *v54;
          if (*v54 < 0)
          {
            if (v61 != 239)
            {
              if (v61 == 227)
              {
                if (v54[1] == 128)
                {
                  v16 = v58;
                  if (v54[2] == 128)
                  {
                    v57 = 0;
                    goto LABEL_259;
                  }

                  v67 = 14;
                  goto LABEL_258;
                }

                v67 = 0xEu;
              }

              else
              {
LABEL_204:
                v67 = v60 >> 4;
              }

              v16 = v58;
LABEL_258:
              v54 += utf8_byte_length_noerror_utf8_len_table[v67];
              v57 = 1;
LABEL_259:
              v55 = *v54;
LABEL_260:
              v15 = 0;
              if (v55 < 2 || (v57 & 1) != 0)
              {
                v10 = 0;
              }

              else
              {
                if (v55 == 227)
                {
                  v15 = 0;
                  v10 = 0;
                  v12 = 0;
                  v11 = 0;
                  v19 = v54 + 3;
                  goto LABEL_267;
                }

                v79 = *a1;
                if (v55 == v79 && v79 != 92)
                {
LABEL_273:
                  v80 = v9 - (v152 + a1);
                  v81 = &v54[-(v80 & ~(v80 >> 31)) + 1];
                  v132 = v80 < 2;
                  v10 = 0;
                  v12 = 0;
                  v11 = 0;
                  if (v132)
                  {
                    v19 = v54;
                  }

                  else
                  {
                    v19 = v81;
                  }

                  v9 = a1;
                  v15 = 0;
                  goto LABEL_268;
                }

                if (v79 == 92)
                {
                  if (v55 == a1[1])
                  {
                    goto LABEL_273;
                  }

                  v15 = 0;
                  v12 = 0;
                  v11 = 0;
                  v10 = 1;
                  goto LABEL_266;
                }

                v15 = 0;
                if (v54 != v19 && v79 < 0)
                {
                  goto LABEL_273;
                }

                v10 = 1;
              }

              v12 = 0;
              v11 = 0;
LABEL_266:
              v19 = v54;
LABEL_267:
              v9 = a1;
LABEL_268:
              v14 = v158;
              v13 = v159;
              goto LABEL_269;
            }

            v65 = v54[1];
            if (v65 != 188 && (v65 != 189 || v54[2] > 0x9Fu))
            {
              goto LABEL_204;
            }

            v165[0] = v17;
            v66 = utf8_decodestr(v54, 3uLL, v165, &v163, 2, &v164, 0);
            LOWORD(v17) = v165[0];
            if (v66)
            {
              v57 = 0;
              v151 = 1;
              v16 = v58;
              goto LABEL_259;
            }

            v17 = v165[0] - 65248;
            if (((LOBYTE(v165[0]) + 32) & 0x80) != 0)
            {
              v64 = 3;
            }

            else
            {
              if (separator_map[(LOBYTE(v165[0]) + 32) & 0x7F])
              {
                goto LABEL_198;
              }

              v64 = 3;
            }
          }

          else
          {
            v62 = separator_map[v60];
            if (v61 < 2 || v62 != 0)
            {
LABEL_198:
              v57 = 0;
              goto LABEL_199;
            }

            v17 = *v54;
            v64 = 1;
          }

          if ((v59 & (v17 - 123 < 0xFFFFFFE6)) != 0)
          {
            v57 = 1;
LABEL_199:
            v16 = v58;
            goto LABEL_259;
          }

          v54 += v64;
          v59 = 1;
        }
      }

      goto LABEL_394;
    }

    if (v18)
    {
      v43 = v18;
      if (v17)
      {
        goto LABEL_108;
      }
    }

    else if (v11)
    {
      v44 = utf8_byte_length_noerror_utf8_len_table[*v11 >> 4];
      v165[0] = 0;
      v157 = v44;
      v45 = utf8_decodestr(v11, v44, v165, &v163, 2, &v164, 0);
      v43 = v165[0];
      if (v45)
      {
        goto LABEL_380;
      }

      v11 = v161;
      if (v17)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v43 = *v9;
      if (v17)
      {
        goto LABEL_108;
      }
    }

    if (v12)
    {
      v27 = utf8_byte_length_noerror_utf8_len_table[*v12 >> 4];
      v165[0] = 0;
      v46 = utf8_decodestr(v12, v27, v165, &v163, 2, &v164, 0);
      v17 = v165[0];
      if (!v46)
      {
        v11 = v161;
        goto LABEL_108;
      }

LABEL_380:
      v151 = 1;
      LOWORD(v18) = v43;
LABEL_393:
      v8 = a2;
      v7 = a3;
      a5 = v147;
      v16 = v153;
      goto LABEL_394;
    }

    v17 = *v19;
LABEL_108:
    v47 = v43 - 65281;
    v48 = v43 == 12288 ? 32 : v43;
    v18 = v47 >= 0x5E ? v48 : v43 - 65248;
    if (v17 - 65281 > 0x5D)
    {
      break;
    }

    v49 = v17 - 65248;
LABEL_122:
    v17 = v49;
    if (v18 == v49)
    {
      LOWORD(v17) = v18;
      goto LABEL_131;
    }
  }

  if (v17 == 12288)
  {
    v49 = 32;
  }

  else
  {
    v49 = v17;
  }

  if (v43 == 12288 || v47 < 0x5E || v17 == 12288)
  {
    goto LABEL_122;
  }

  if ((v43 | 0x20) == 0xF8)
  {
    v8 = a2;
    v7 = a3;
    a5 = v147;
    v16 = v153;
    if ((v17 & 0xFFFFFFDF) == 0x4F)
    {
      if (a3)
      {
        if (v48 == 216)
        {
          v18 = 248;
        }

        else
        {
          v18 = v48;
        }

        v17 = tolower_map[v17];
      }

      v53 = v19[1];
      if (v53 == 101 || v53 == 204 && v19[2] == 136)
      {
        if (v53 == 101)
        {
          ++v19;
        }

        goto LABEL_132;
      }
    }
  }

  else
  {
    v8 = a2;
    v7 = a3;
    a5 = v147;
    v16 = v153;
  }

  if ((v17 | 0x20) == 0xF8 && (v18 & 0xFFFFFFDF) == 0x4F)
  {
    if (v7)
    {
      if (v17 == 216)
      {
        v17 = 248;
      }

      v18 = tolower_map[v18];
    }

    v68 = *v150;
    if (v68 == 101 || v68 == 204 && v9[2] == 136)
    {
      if (v68 == 101)
      {
        ++v9;
      }

      goto LABEL_132;
    }
  }

  v69 = v19 + 1;
  v70 = v19 + 2;
  v71 = 6;
  v72 = &byte_1EAEEAFC4;
  while (2)
  {
    v73 = *(v72 - 2);
    if (v18 == v73)
    {
      v74 = *(v72 - 2);
      if (v7)
      {
        if (v17 == v74 || tolower_map[v17] == tolower_map[v74])
        {
          v75 = *v69;
          if (v75 == *(v72 - 1) || tolower_map[*v69] == tolower_map[*(v72 - 1)])
          {
LABEL_253:
            ++v19;
            goto LABEL_132;
          }

          if (v75 == 204 && *v72 && *v70 == 136)
          {
            goto LABEL_289;
          }
        }

        if (v17 != v18)
        {
          goto LABEL_247;
        }

LABEL_237:
        if (v18 != v74 && tolower_map[v18] != tolower_map[v74])
        {
          goto LABEL_247;
        }

        v77 = *v150;
        if (v77 == *(v72 - 1) || tolower_map[*v150] == tolower_map[*(v72 - 1)])
        {
LABEL_252:
          ++v9;
          goto LABEL_132;
        }

        goto LABEL_244;
      }

      if (v17 == v74)
      {
        v76 = *v69;
        if (v76 == *(v72 - 1))
        {
          goto LABEL_253;
        }

        if (v76 == 204 && *v72 && *v70 == 136)
        {
LABEL_289:
          v19 += 2;
          goto LABEL_132;
        }
      }
    }

    if (v17 != v73)
    {
      goto LABEL_247;
    }

    LODWORD(v74) = *(v72 - 2);
    if (v7)
    {
      goto LABEL_237;
    }

    if (v18 != v74)
    {
      goto LABEL_247;
    }

    v77 = *v150;
    if (v77 == *(v72 - 1))
    {
      goto LABEL_252;
    }

LABEL_244:
    if (v77 == 204 && *v72 && v9[2] == 136)
    {
      v9 += 2;
      goto LABEL_132;
    }

LABEL_247:
    v72 += 6;
    if (--v71)
    {
      continue;
    }

    break;
  }

  if ((v7 & 2) == 0)
  {
    goto LABEL_125;
  }

  v15 = v155;
  if (v18 != 778)
  {
    if (v17 == 778)
    {
      v78 = v18 & 0xFFFFFFDF;
      goto LABEL_285;
    }

    if (v18 - 8220 <= 0x17 && ((1 << (v18 - 28)) & 0x80000B) != 0)
    {
      if (v17 != 34)
      {
        goto LABEL_126;
      }

LABEL_132:
      if (v16)
      {
        v50 = 1;
      }

      else
      {
        v50 = a5 == 0;
      }

      if (!v50)
      {
        v16 = v19;
      }

      if (v157)
      {
        v15 = &v11[v157] - v9;
      }

      else
      {
        v15 = 1;
      }

      goto LABEL_140;
    }

    v85 = v18 == 8219 || v18 >> 1 == 4108 || v18 == 8242 || v18 == 96;
    if (v17 == 39 && v85)
    {
      LOWORD(v17) = 39;
      goto LABEL_132;
    }

    if (v17 - 8220 <= 0x17 && ((1 << (v17 - 28)) & 0x80000B) != 0)
    {
      if (v18 != 34)
      {
        goto LABEL_126;
      }

      goto LABEL_132;
    }

    v89 = v17 == 8219 || v17 >> 1 == 4108 || v17 == 8242 || v17 == 96;
    if (v18 == 39 && v89)
    {
      LOWORD(v18) = 39;
LABEL_328:
      v8 = a2;
      v7 = a3;
      a5 = v147;
      v16 = v153;
      v11 = v161;
      goto LABEL_132;
    }

    if (v18 == 776 && v19 > a2)
    {
      v90 = *(v19 - 1);
      v91 = tolower_map[v90];
      if ((v91 - 97) > 0x14 || ((1 << (v91 - 97)) & 0x104001) == 0)
      {
        goto LABEL_353;
      }

      v92 = tolower_map[*v19];
      if (v92 == 101)
      {
        if ((a3 & 1) != 0 || *(v9 - 1) == v90)
        {
          LOWORD(v18) = 776;
          goto LABEL_328;
        }

LABEL_353:
        if (unicode_combinable(v18))
        {
          if (v160)
          {
            v96 = v157;
          }

          else
          {
            v96 = 0;
          }

          v152 += v96;
          v156 = &v161[v157] - v9;
          v161 = 0;
          goto LABEL_359;
        }

LABEL_358:
        v156 = 0;
LABEL_359:
        if (v17 >= 0x80 && unicode_combinable(v17))
        {
          v97 = &v12[v27];
          v12 = 0;
          v10 = v97 - v19;
        }

        else
        {
          v10 = 0;
        }

        if (v156)
        {
          v162 = 0;
          v8 = a2;
          v7 = a3;
          a5 = v147;
          v16 = v153;
          v15 = v156;
        }

        else
        {
          if (!v10)
          {
            v15 = 0;
            v8 = a2;
            v7 = a3;
            a5 = v147;
            v16 = v153;
            v11 = v161;
            goto LABEL_126;
          }

          if (v152)
          {
            v162 = 0;
            v98 = v9 - 1 == v146;
            if (v9 - 1 == v146)
            {
              --v9;
            }

            v99 = v152 - v98;
            v15 = 0;
            v152 = v99;
          }

          else
          {
            v15 = 0;
            v152 = 0;
            v162 = 0;
          }

          v8 = a2;
          v7 = a3;
          a5 = v147;
          v16 = v153;
        }

        v14 = v158;
        v13 = v159;
        v11 = v161;
        goto LABEL_269;
      }

      if (v91 != 97 || v92 != 97)
      {
        goto LABEL_353;
      }

      LOWORD(v18) = 776;
LABEL_351:
      v8 = a2;
      v7 = a3;
      a5 = v147;
      v16 = v153;
      v11 = v161;
      goto LABEL_125;
    }

    if (v9 > a1 && v17 == 776)
    {
      v93 = *(v9 - 1);
      v94 = tolower_map[v93];
      if ((v94 - 97) <= 0x14 && ((1 << (v94 - 97)) & 0x104001) != 0)
      {
        v95 = tolower_map[*v9];
        if (v95 == 101)
        {
          if ((a3 & 1) != 0 || v93 == *(v19 - 1))
          {
            LOWORD(v17) = 776;
            goto LABEL_328;
          }
        }

        else if (v94 == 97 && v95 == 97)
        {
          LOWORD(v17) = 776;
          goto LABEL_351;
        }
      }
    }

    if (v18 < 0x80)
    {
      goto LABEL_358;
    }

    goto LABEL_353;
  }

  v78 = v17 & 0xFFFFFFDF;
LABEL_285:
  if (v78 == 65)
  {
    goto LABEL_132;
  }

LABEL_126:
  if (a5)
  {
    v16 = 0;
  }

  if ((v7 & 4) != 0)
  {
    goto LABEL_172;
  }

  if (v160)
  {
    v152 = 0;
    v9 = v160;
    goto LABEL_140;
  }

LABEL_394:
  LODWORD(v10) = *v9;
  if (v19 > v8 && (v7 & 4) != 0 && !*v9)
  {
    v154 = v16;
    v106 = *(v19 - 1);
    v107 = 1;
    if ((v106 & 0x8000000000000000) == 0 && *(v19 - 1) - 58 <= 0xFFFFFFF5)
    {
      v107 = separator_map[v106] == 0;
    }

    v108 = *v19;
    goto LABEL_404;
  }

LABEL_401:
  v154 = v16;
  v108 = *v19;
  v107 = 1;
  if (v10)
  {
    if ((v108 & 0x80) != 0)
    {
      goto LABEL_424;
    }
  }

  else
  {
LABEL_404:
    if ((v7 & 2) != 0 && v108 >= 0xC0)
    {
      v109 = a5;
      while (1)
      {
        v110 = utf8_byte_length_noerror_utf8_len_table[*v19 >> 4];
        v165[0] = v17;
        if (utf8_decodestr(v19, v110, v165, &v163, 2, &v164, 0))
        {
          break;
        }

        LOWORD(v17) = v165[0];
        v19 += v110;
        if (!unicode_combinable(v165[0]))
        {
          goto LABEL_411;
        }
      }

      v110 = 0;
      v151 = 1;
LABEL_411:
      v19 -= v110;
      v108 = *v19;
      a5 = v109;
    }
  }

  if ((v108 < 2 || (v108 & 0x80) == 0 && (v7 & 4) != 0 && separator_map[v108]) && (v7 & 2) != 0 && *v9 >= 0xC0u)
  {
    v111 = a5;
    v112 = 0;
    do
    {
      v9 += v112;
      if (!*v9)
      {
        break;
      }

      v112 = utf8_byte_length_noerror_utf8_len_table[*v9 >> 4];
      v165[0] = v18;
      if (utf8_decodestr(v9, v112, v165, &v163, 2, &v164, 0))
      {
        goto LABEL_425;
      }

      LOWORD(v18) = v165[0];
      if (v165[0] - 12441 < 2)
      {
        break;
      }
    }

    while (unicode_combinable(v165[0]));
    a5 = v111;
  }

LABEL_424:
  if (!v151)
  {
    v123 = *v19;
    if (v123 >= 2)
    {
      if (v107)
      {
        if ((v123 & 0x80) != 0 || v123 - 58 > 0xFFFFFFF5)
        {
          if (v123 != 227 || v19[1] != 128 || (v7 & 4) == 0 || v19[2] != 128)
          {
            goto LABEL_425;
          }
        }

        else if ((v7 & 4) == 0 || !separator_map[*v19])
        {
          goto LABEL_425;
        }
      }

      else if ((v7 & 4) == 0)
      {
        goto LABEL_425;
      }
    }

    if (*v9 && (*v9 != 42 || v9[1]))
    {
      goto LABEL_425;
    }

    if (!a5)
    {
      return 1;
    }

    *a5 = &v154[-v8];
    v102 = (v19 - v154);
    goto LABEL_441;
  }

LABEL_425:
  result = 0;
  if (v19 == v8 || (v7 & 4) == 0 || *v9)
  {
    return result;
  }

  char_start = utf8_prev_char_start(v8, v19);
  v114 = char_start;
  v115 = *char_start;
  v116 = v115 >> 4;
  v117 = utf8_byte_length_utf8_len_table[v115 >> 4];
  v118 = v115 & utf8_to_code_point_utf8_first_char_mask[v117];
  if ((~v116 & 0xC) != 0)
  {
    v122 = v118;
  }

  else
  {
    v117 = v117 <= 2 ? 2 : v117;
    v119 = v117 - 1;
    v120 = (char_start + 1);
    do
    {
      v121 = *v120++;
      v122 = v121 & 0x3F | (v118 << 6);
      v118 = v122;
      --v119;
    }

    while (v119);
  }

  v124 = *v19;
  v125 = utf8_byte_length_utf8_len_table[v124 >> 4];
  v126 = v124 & utf8_to_code_point_utf8_first_char_mask[v125];
  if ((~(v124 >> 4) & 0xC) != 0)
  {
    v131 = v124 & utf8_to_code_point_utf8_first_char_mask[v125];
  }

  else
  {
    v127 = v125 <= 2 ? 2 : utf8_byte_length_utf8_len_table[v124 >> 4];
    v128 = v127 - 1;
    v129 = (v19 + 1);
    do
    {
      v130 = *v129++;
      v131 = v130 & 0x3F | (v126 << 6);
      v126 = v131;
      --v128;
    }

    while (v128);
  }

  result = 0;
  if (v131 > 0xFFFE)
  {
    return result;
  }

  v132 = v131 - 880 > 0xFFFFFF8F || v122 > 0xFFFE;
  if (v132)
  {
    return result;
  }

  v133 = v131 - 48;
  if (v122 - 48 > 9)
  {
    if (v133 < 0xA)
    {
      return 1;
    }

    if (v122 - 123 >= 0xFFFFFFE6)
    {
      if (v131 > 0x7F)
      {
        result = __maskrune(v131, 0x8000uLL);
      }

      else
      {
        result = *(MEMORY[0x1E69E9830] + 4 * v131 + 60) & 0x8000;
      }

      if (result)
      {
        return 1;
      }

      return result;
    }

    result = 0;
    if (v122 - 91 < 0xFFFFFFE6 || v131 - 91 < 0xFFFFFFE6)
    {
      return result;
    }

    v134 = utf8_prev_char_start(v8, v114);
    if (utf8_to_code_point(v134) - 91 >= 0xFFFFFFE6)
    {
      v135 = &v19[v125];
      v136 = utf8_to_code_point(v135);
      if ((v136 - 880) >= 0xFFFFFF90)
      {
        LOBYTE(v137) = *v135;
        do
        {
          v135 += utf8_byte_length_utf8_len_table[v137 >> 4];
          v137 = *v135;
          v138 = utf8_byte_length_utf8_len_table[v137 >> 4];
          v139 = utf8_to_code_point_utf8_first_char_mask[v138] & v137;
          if ((~(v137 >> 4) & 0xC) != 0)
          {
            v136 = utf8_to_code_point_utf8_first_char_mask[v138] & v137;
          }

          else
          {
            if (v138 <= 2)
            {
              v140 = 2;
            }

            else
            {
              v140 = utf8_byte_length_utf8_len_table[v137 >> 4];
            }

            v141 = v140 - 1;
            v142 = (v135 + 1);
            do
            {
              v143 = *v142++;
              v136 = v143 & 0x3F | (v139 << 6);
              v139 = v136;
              --v141;
            }

            while (v141);
          }
        }

        while ((v136 - 880) > 0xFFFFFF8F);
      }

      if ((v136 - 91) <= 0xFFFFFFE5)
      {
        return 1;
      }
    }

    return 0;
  }

  return v133 >= 0xA;
}

unint64_t utf8_prev_char_start(unint64_t a1, unint64_t a2)
{
  do
  {
    if (a2 <= a1)
    {
      break;
    }

    do
    {
      v3 = *--a2;
      v2 = v3;
      v4 = v3 >> 4;
      v5 = v4 & 0xC;
    }

    while (v5 == 8);
    v6 = utf8_byte_length_utf8_len_table[v4];
    v7 = (utf8_to_code_point_utf8_first_char_mask[v6] & v2);
    if (v5 == 12)
    {
      v8 = v6 <= 2 ? 2 : v6;
      for (i = 1; i != v8; ++i)
      {
        v10 = *(a2 + i) & 0x3F | (v7 << 6);
        v7 = v10;
      }
    }

    else
    {
      v10 = v7;
    }
  }

  while ((v10 - 880) > 0xFFFFFF8F);
  return a2;
}

unint64_t utf8_to_code_point(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 4;
  v3 = utf8_byte_length_utf8_len_table[v1 >> 4];
  v4 = v1 & utf8_to_code_point_utf8_first_char_mask[v3];
  if ((~v2 & 0xC) != 0)
  {
    return v4;
  }

  if (v3 <= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3;
  }

  v6 = (a1 + 1);
  v7 = v5 - 1;
  do
  {
    v8 = *v6++;
    result = v8 & 0x3Fu | (v4 << 6);
    LODWORD(v4) = v8 & 0x3F | (v4 << 6);
    --v7;
  }

  while (v7);
  return result;
}

uint64_t unicode_combinable(unsigned int a1)
{
  if (a1 < 0x300)
  {
    return 0;
  }

  v1 = __CFUniCharCombiningBitmap[a1 >> 8];
  if (!__CFUniCharCombiningBitmap[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (__CFUniCharCombiningBitmap[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

uint64_t unicode_decomposeable(unsigned int a1)
{
  if (a1 < 0xC0)
  {
    return 0;
  }

  v1 = __CFUniCharDecomposableBitmap[a1 >> 8];
  if (!__CFUniCharDecomposableBitmap[a1 >> 8])
  {
    return 0;
  }

  if (v1 == 255)
  {
    return 1;
  }

  return (__CFUniCharDecomposableBitmap[32 * v1 + 224 + (a1 >> 3)] >> (a1 & 7)) & 1;
}

uint64_t utf8_encodelen(unsigned __int16 *a1, unint64_t a2, int a3, char a4)
{
  if (a2 < 2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 >> 1;
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 95;
  }

  do
  {
    v8 = *a1++;
    v7 = v8;
    v9 = bswap32(v8) >> 16;
    if (a4)
    {
      v7 = v9;
    }

    v10 = v7;
    if (!v7)
    {
      v7 = 9216;
    }

    if (v10 == 47)
    {
      v7 = v6;
    }

    if (v7 >= 0x80u)
    {
      if (v7 >= 0x800u)
      {
        if (v7 >> 11 == 27)
        {
          v11 = 2;
        }

        else
        {
          v11 = 3;
        }
      }

      else
      {
        v11 = 2;
      }
    }

    else
    {
      v11 = 1;
    }

    v4 += v11;
    --v5;
  }

  while (v5);
  return v4;
}

uint64_t utf8_encodestr(unsigned __int16 *a1, unint64_t a2, _BYTE *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v33[14] = *MEMORY[0x1E69E9840];
  if (a2 < 2)
  {
    result = 0;
    v8 = a3;
    goto LABEL_40;
  }

  result = 0;
  v10 = 0;
  v11 = 0;
  v12 = &a3[a5 - ((a7 & 2) == 0)];
  v13 = a2 >> 1;
  v8 = a3;
  while (1)
  {
    while (1)
    {
      --v13;
      if (v10 < 1)
      {
        v16 = *a1++;
        v14 = v16;
        v17 = bswap32(v16) >> 16;
        if (a7)
        {
          v14 = v17;
        }

        if ((a7 & 4) != 0)
        {
          v18 = v14;
          if (v14 >= 0xC0u)
          {
            v19 = __CFUniCharDecomposableBitmap[v14 >> 8];
            if (!__CFUniCharDecomposableBitmap[v14 >> 8] || v19 != 255 && ((__CFUniCharDecomposableBitmap[32 * v19 + 224 + (v14 >> 3)] >> (v14 & 7)) & 1) == 0)
            {
              goto LABEL_18;
            }

            v31 = result;
            v20 = a4;
            v21 = a3;
            v22 = a6;
            v23 = a7;
            v24 = unicode_decompose(v14, &v32);
            a7 = v23;
            a6 = v22;
            a3 = v21;
            a4 = v20;
            v10 = v24 - 1;
            result = v31;
            v13 += v10;
            v14 = v32;
            v11 = v33;
          }
        }
      }

      else
      {
        v15 = *v11++;
        v14 = v15;
        --v10;
      }

      if (!v14)
      {
        LOBYTE(v14) = 0;
        LOBYTE(v25) = 2;
        LOBYTE(v26) = -112;
        goto LABEL_23;
      }

      if (v14 == 47)
      {
        v14 = a6;
        if (!a6)
        {
          break;
        }
      }

      v18 = v14;
      if (v14 < 0x80u)
      {
        goto LABEL_35;
      }

LABEL_18:
      if (v14 > 0x7FFu)
      {
        v26 = v14 >> 6;
        v25 = v14 >> 12;
        if (v14 >> 10 == 54 && v13)
        {
          v27 = *a1;
          v28 = bswap32(v27) >> 16;
          if (a7)
          {
            LOWORD(v27) = v28;
          }

          if (v27 >> 10 != 55)
          {
            LOBYTE(v25) = 13;
            goto LABEL_23;
          }

          if ((v8 + 3) >= v12)
          {
            goto LABEL_39;
          }

          v29 = (v18 << 10) + v27 - 56613888;
          --v13;
          ++a1;
          *v8 = (v29 >> 18) | 0xF0;
          v8[1] = (v29 >> 12) & 0x3F | 0x80;
          v8[2] = (v29 >> 6) & 0x3F | 0x80;
          v8[3] = v27 & 0x3F | 0x80;
          v8 += 4;
          if (!v13)
          {
            goto LABEL_40;
          }
        }

        else
        {
LABEL_23:
          if ((v8 + 2) >= v12)
          {
            goto LABEL_39;
          }

          *v8 = v25 | 0xE0;
          v8[1] = v26 & 0x3F | 0x80;
          v8[2] = v14 & 0x3F | 0x80;
          v8 += 3;
          if (!v13)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v8 + 1) >= v12)
        {
          goto LABEL_39;
        }

        *v8 = (v14 >> 6) | 0xC0;
        v8[1] = v14 & 0x3F | 0x80;
        v8 += 2;
        if (!v13)
        {
          goto LABEL_40;
        }
      }
    }

    LOBYTE(v14) = 95;
    result = 22;
LABEL_35:
    if (v8 >= v12)
    {
      break;
    }

    *v8++ = v14;
    if (!v13)
    {
      goto LABEL_40;
    }
  }

LABEL_39:
  result = 63;
LABEL_40:
  *a4 = v8 - a3;
  if ((a7 & 2) == 0)
  {
    v8[1] = 0;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unicode_decompose(__int16 a1, _WORD *a2)
{
  v2 = a1 + 21504;
  if ((a1 + 21504) > 0x2BA4u)
  {
    return unicode_recursive_decompose(a1, a2);
  }

  *a2 = ((28533 * (a1 + 21504)) >> 24) | 0x1100;
  a2[1] = v2 % 0x24Cu / 0x1C + 4449;
  if (!(v2 % 0x1Cu))
  {
    return 2;
  }

  a2[2] = (a1 + 21504) % 0x1Cu + 4519;
  return 3;
}

uint64_t utf8_decodestr(unsigned __int8 *a1, unint64_t a2, _WORD *a3, void *a4, uint64_t a5, _DWORD *a6, char a7)
{
  v48 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (!a2)
  {
    result = 0;
    v11 = a3;
    goto LABEL_64;
  }

  v9 = a2;
  v10 = a3 + a5;
  v11 = a3;
  v12 = a1;
  while (1)
  {
    v14 = *v12++;
    v13 = v14;
    if (!v14)
    {
LABEL_61:
      result = 0;
      goto LABEL_64;
    }

    --v9;
    if ((v13 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    v15 = utf_extrabytes[v13 >> 3];
    if (v9 < v15)
    {
      goto LABEL_62;
    }

    v16 = utf_extrabytes[v13 >> 3];
    v9 -= v15;
    if (v16 != 3)
    {
      break;
    }

    v28 = *v12;
    if ((v28 & 0xC0) != 0x80 || (v29 = a1[2], (v29 & 0xC0) != 0x80) || (v30 = a1[3], (v30 & 0xC0) != 0x80) || (v31 = v30 + (((v28 << 6) + (v13 << 12) + v29) << 6) - 63512704, v31 >> 20))
    {
LABEL_62:
      result = 22;
      goto LABEL_64;
    }

    v32 = (v31 >> 10) | 0xFFFFD800;
    if (a7)
    {
      *v11 = bswap32(v32) >> 16;
      v33 = v11 + 1;
      if ((v11 + 1) >= v10)
      {
LABEL_65:
        result = 63;
        v11 = v33;
        goto LABEL_64;
      }

      v34 = __rev16(v31 & 0x3FF | 0xDC00);
    }

    else
    {
      *v11 = v32;
      v33 = v11 + 1;
      if ((v11 + 1) >= v10)
      {
        goto LABEL_65;
      }

      v34 = v31 & 0x3FF | 0xDC00;
    }

    v12 = a1 + 4;
    v11[1] = v34;
    v11 += 2;
LABEL_54:
    a1 = v12;
    if (!v9)
    {
      goto LABEL_61;
    }
  }

  if (v16 == 2)
  {
    v19 = *v12;
    if ((v19 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v20 = a1[2];
    if ((v20 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v21 = (v19 << 6) + (v13 << 12) + v20;
    v18 = v21 - 925824;
    if ((v21 - 925824) < 0x800)
    {
      goto LABEL_62;
    }

    v12 = a1 + 3;
    if (v18 >> 11 >= 0x1B)
    {
      result = 22;
      if (v18 < 0xE000 || (v21 & 0x3FFFFE) == 0xF207E)
      {
        goto LABEL_64;
      }
    }
  }

  else
  {
    if (v16 != 1)
    {
      goto LABEL_62;
    }

    v17 = *v12;
    if ((v17 & 0xC0) != 0x80)
    {
      goto LABEL_62;
    }

    v18 = v17 + (v13 << 6) - 12416;
    if (v18 < 0x80)
    {
      goto LABEL_62;
    }

    v12 = a1 + 2;
  }

  if ((a7 & 4) == 0)
  {
    if ((a7 & 8) != 0 && v18 >= 0x300u)
    {
      v23 = __CFUniCharCombiningBitmap[BYTE1(v18)];
      if (__CFUniCharCombiningBitmap[BYTE1(v18)])
      {
        if (v23 == 255 || ((__CFUniCharCombiningBitmap[32 * v23 + 224 + (v18 >> 3)] >> (v18 & 7)) & 1) != 0)
        {
          *a6 = 1;
          if (v11 != a3)
          {
            v24 = *(v11 - 1);
            v25 = bswap32(v24) >> 16;
            if (a7)
            {
              LOWORD(v24) = v25;
            }

            v26 = a4;
            v45 = a6;
            v27 = unicode_combine(v24, v18);
            a6 = v45;
            a4 = v26;
            if (v27)
            {
              --v11;
              v18 = v27;
            }
          }
        }
      }
    }

LABEL_47:
    if (v18 == 9216)
    {
      LODWORD(v13) = 0;
    }

    else
    {
      LODWORD(v13) = v18;
    }

LABEL_50:
    if (v11 >= v10)
    {
      goto LABEL_63;
    }

    v43 = bswap32(v13) >> 16;
    if (a7)
    {
      LOWORD(v13) = v43;
    }

    *v11++ = v13;
    goto LABEL_54;
  }

  if (v18 < 0xC0u)
  {
    goto LABEL_47;
  }

  v35 = __CFUniCharDecomposableBitmap[BYTE1(v18)];
  if (!__CFUniCharDecomposableBitmap[BYTE1(v18)] || v35 != 255 && ((__CFUniCharDecomposableBitmap[32 * v35 + 224 + (v18 >> 3)] >> (v18 & 7)) & 1) == 0)
  {
    goto LABEL_47;
  }

  v46 = a6;
  v36 = a4;
  v37 = unicode_decompose(v18, v47);
  if (v37 < 1)
  {
    a4 = v36;
    a6 = v46;
    goto LABEL_54;
  }

  v38 = v37;
  v39 = v47;
  a4 = v36;
  a6 = v46;
  while (1)
  {
    v41 = *v39++;
    v40 = v41;
    v42 = bswap32(v41) >> 16;
    if (a7)
    {
      v40 = v42;
    }

    *v11++ = v40;
    if (v11 >= v10)
    {
      break;
    }

    if (!--v38)
    {
      goto LABEL_54;
    }
  }

LABEL_63:
  result = 63;
LABEL_64:
  *a4 = v11 - a3;
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t unicode_combine(unsigned int a1, unsigned int a2)
{
  if (a2 - 4449 > 0x61)
  {
    if ((a2 - 12443) < 0xD265u)
    {
      return 0;
    }
  }

  else
  {
    if (a2 >> 1 <= 0x8BA && (a1 - 4352) <= 0x12u)
    {
      v2 = 28 * a2 + 588 * a1;
      v3 = -18076;
      return (v2 + v3);
    }

    if (a2 >> 3 >= 0x235 && ((a1 + 21504) >> 2) <= 0xAE8u)
    {
      HIDWORD(v8) = -1227133513 * a1 - 1840706560;
      LODWORD(v8) = HIDWORD(v8);
      if ((v8 >> 2) > 0x9249249)
      {
        return 0;
      }

      v2 = a1 + a2;
      v3 = -4519;
      return (v2 + v3);
    }
  }

  v5 = &__CFUniCharPrecompSourceTable;
  v6 = &unk_195EA3F4C;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 4)];
    if (*v7 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_12:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (*v7 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_12;
  }

  v9 = v7[1];
  if (v9)
  {
    v10 = &__CFUniCharBMPPrecompDestinationTable + 4 * v9;
    if (*v10 <= a1)
    {
      v11 = &v10[4 * HIWORD(v9) - 4];
      if (*v11 >= a1)
      {
        while (1)
        {
          v13 = &v10[4 * ((v11 - v10) >> 3)];
          v14 = *v13;
          if (v14 <= a1)
          {
            if (v14 >= a1)
            {
              return v13[1];
            }

            v10 = (v13 + 2);
          }

          else
          {
            v11 = v13 - 2;
          }

          v4 = 0;
          if (v10 > v11)
          {
            return v4;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t unicode_recursive_decompose(unsigned int a1, _WORD *a2)
{
  v2 = a2;
  if ((a1 + 1201) < 0x571u)
  {
LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v3 = &__CFUniCharDecompositionTable;
  v4 = &unk_195EA7974;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 3)];
    v6 = *v5;
    if (v6 <= a1)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_7:
    if (v3 > v4)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a1)
  {
    v3 = v5 + 2;
    goto LABEL_7;
  }

  v7 = v5[1];
LABEL_9:
  v8 = (v7 >> 12) & 7;
  v14 = v7 & 0xFFF;
  v9 = &__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF);
  v10 = &v14;
  if (v8 != 1)
  {
    v10 = (&__CFUniCharMultipleDecompositionTable + 2 * (v7 & 0xFFF));
  }

  if ((v7 & 0x8000) == 0)
  {
    LODWORD(result) = 0;
    goto LABEL_17;
  }

  result = unicode_recursive_decompose(*v10, a2);
  if (result)
  {
    --v8;
    v12 = &v14;
    if (v8)
    {
      v12 = v9;
    }

    v10 = (v12 + 1);
    v2 += result;
LABEL_17:
    for (result = (result + v8); v8; --v8)
    {
      v13 = *v10++;
      *v2++ = v13;
    }
  }

  return result;
}

uint64_t check_and_decompose_string(unsigned __int8 *a1, unint64_t a2, unsigned __int8 **a3, unint64_t *a4)
{
  *a3 = a1;
  *a4 = a2;
  if (!a2)
  {
    return 0;
  }

  v8 = 0;
  v29 = 0;
  v28 = 0;
  v9 = a1;
  while ((*v9 & 0x80000000) == 0)
  {
LABEL_10:
    ++v8;
    ++v9;
    if (v8 >= a2)
    {
      goto LABEL_11;
    }
  }

  v10 = utf8_byte_length_noerror_utf8_len_table_0[*v9 >> 4];
  if (utf8_decodestr(v9, v10, &v27, &v28, 4, &v29, 0))
  {
    return 22;
  }

  if (v27 < 0xC0u || (v11 = __CFUniCharDecomposableBitmap[v27 >> 8]) == 0 || v11 != 255 && ((__CFUniCharDecomposableBitmap[32 * v11 + 224 + (v27 >> 3)] >> (v27 & 7)) & 1) == 0)
  {
    v8 += v10 - 1;
    v9 += v10 - 1;
    goto LABEL_10;
  }

LABEL_11:
  if (v8 >= a2)
  {
    if (v8 <= a2)
    {
      return 0;
    }

    return 22;
  }

  v12 = (a2 >> 1) & 0x7FFFFFFFFFFFFFFELL;
  v13 = malloc_type_malloc(v12 + 2 * a2 + 2, 0x1000040BDFB0063uLL);
  if (v13)
  {
    v14 = 2 * a2 + v12 + 66;
    do
    {
      v15 = utf8_decodestr(a1, a2, v13, &v28, v14 - 64, &v29, 4);
      if (!v15)
      {
        break;
      }

      if (v15 == 22)
      {
        free(v13);
        return 22;
      }

      free(v13);
      v13 = malloc_type_malloc(v14, 0x1000040BDFB0063uLL);
      v14 += 64;
    }

    while (v13);
  }

  v16 = v28;
  if (v28 >= 2)
  {
    v17 = 0;
    v18 = v28 >> 1;
    v19 = v13;
    do
    {
      v21 = *v19++;
      v20 = v21;
      if (!v21)
      {
        v20 = 9216;
      }

      if (v20 >= 0x80)
      {
        if (v20 >= 0x800)
        {
          if ((v20 & 0xF800) == 0xD800)
          {
            v22 = 2;
          }

          else
          {
            v22 = 3;
          }
        }

        else
        {
          v22 = 2;
        }
      }

      else
      {
        v22 = 1;
      }

      v17 += v22;
      --v18;
    }

    while (v18);
  }

  else
  {
    v17 = 0;
  }

  v23 = malloc_type_malloc(v17 + 1, 0xA81D95C1uLL);
  v24 = utf8_encodestr(v13, v16, v23, &v28, v17 + 1, 47, 4);
  if (v24)
  {
    v25 = v24;
    free(v13);
    free(v23);
    return v25;
  }

  v23[v17] = 0;
  *a3 = v23;
  *a4 = v17 + 1;
  free(v13);
  return 0;
}

uint64_t map_case(uint64_t a1)
{
  v1 = a1;
  if (a1 > 0x7F)
  {
    if ((a1 + 223) < 0x3Au || a1 < 0x587 || (a1 - 7680) <= 0x6E9u)
    {
      __key = a1;
      v3 = bsearch(&__key, &case_mapping_table, 0x57AuLL, 4uLL, case_cmp);
      if (v3)
      {
        return v3[1];
      }
    }
  }

  else
  {
    if ((a1 - 97) > 0x19)
    {
      v2 = &tolower_map;
    }

    else
    {
      v2 = &toupper_map;
    }

    return v2[a1];
  }

  return v1;
}

void get_canonical_language_identifier_for_string(char *cStr, char *a2, int a3)
{
  *a2 = 0;
  v5 = CFStringCreateWithCStringNoCopy(0, cStr, 0x8000100u, *MEMORY[0x1E695E498]);
  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, v5);
  CFStringGetCString(CanonicalLanguageIdentifierFromString, a2, a3, 0x8000100u);
  CFRelease(CanonicalLanguageIdentifierFromString);

  CFRelease(v5);
}

const void *CRCopyRestrictionsDictionary()
{
  v9 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock(&CRCopyRestrictionsDictionary_lastSynchronizationTimeMutex);
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&CRCopyRestrictionsDictionary_lastSynchronizationTime > 2.0)
  {
    CFPreferencesAppSynchronize(@"com.apple.springboard");
    CRCopyRestrictionsDictionary_lastSynchronizationTime = *&Current;
  }

  pthread_mutex_unlock(&CRCopyRestrictionsDictionary_lastSynchronizationTimeMutex);
  v1 = CFPreferencesCopyAppValue(@"SBParentalControlsMCContentRestrictions", @"com.apple.springboard");
  if (!v1)
  {
    v2 = *MEMORY[0x1E695E480];
    v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &CRMaxRank);
    *keys = xmmword_1E7450DB8;
    v8 = *&off_1E7450DC8;
    v6[0] = v3;
    v6[1] = v3;
    v6[2] = v3;
    v6[3] = &stru_1F0A49170;
    v1 = CFDictionaryCreate(v2, keys, v6, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFPreferencesSetAppValue(@"SBParentalControlsMCContentRestrictions", v1, @"com.apple.springboard");
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

const void *_CRCopyValueForKey(const void *a1)
{
  v2 = CRCopyRestrictionsDictionary();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, a1);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v3);
  return v5;
}

void _DisposeICUSQLiteContext(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    usearch_close();
    v3 = a1[4];
    ubrk_close();
    CPICUReleaseSearchCollator(a1);
    v4 = a1[5];
    if (v4)
    {
      utext_close(v4);
    }

    v5 = a1[24];
    if (v5)
    {
      free(v5);
    }

    v6 = a1[26];
    if (v6 && v6 != a1 + 27)
    {
      free(v6);
    }

    v7 = a1[22];
    if (v7 && v7 != a1 + 6)
    {
      free(v7);
    }

    free(a1);
  }
}

void *_CreateICUSQLiteContext(uint64_t a1, char a2)
{
  v14 = U_ZERO_ERROR;
  v4 = malloc_type_malloc(0x2E0uLL, 0x10B004033E6159AuLL);
  v4[3] = 0;
  *(v4 + 24) = 65;
  v4[22] = v4 + 6;
  *(v4 + 46) = 128;
  v4[24] = 0;
  v4[5] = 0;
  *(v4 + 50) = 0;
  *(v4 + 188) = 1;
  v4[26] = v4 + 27;
  *(v4 + 182) = 256;
  CPICUCreateSearchCollator(a1, &v12);
  *v4 = v12;
  v4[2] = v13;
  v4[4] = ubrk_open();
  if (a2)
  {
    v6 = *v4;
    ucol_setAttribute();
    if ((a2 & 2) != 0)
    {
      goto LABEL_7;
    }

    v7 = *v4;
  }

  else
  {
    if ((a2 & 2) == 0)
    {
      goto LABEL_7;
    }

    v5 = *v4;
  }

  ucol_setAttribute();
LABEL_7:
  if ((a2 & 4) != 0)
  {
    v8 = *v4;
    ucol_setAttribute();
  }

  v9 = *v4;
  v4[3] = usearch_openFromCollator();
  if (v14 >= U_ILLEGAL_ARGUMENT_ERROR)
  {
    _DisposeICUSQLiteContext(v4);
    v10 = u_errorName(v14);
    NSLog(@"Failed to open ICUSQLite collator: %s", v10);
    return 0;
  }

  return v4;
}

UChar *_ICUSQLiteMatch(const char *a1, char *__s2, int a3, int a4, uint64_t a5)
{
  pErrorCode = U_ZERO_ERROR;
  if (a3 == -1)
  {
    a3 = strlen(__s2);
  }

  v9 = *(a5 + 176);
  v10 = a3;
  if (strncmp(v9, __s2, a3) || !*(a5 + 192))
  {
    pDestLength = 0;
    if (v10 >= 1)
    {
      if (v10 >= *(a5 + 184))
      {
        v11 = malloc_type_malloc((v10 + 1), 0x100004077774924uLL);
        if (!v11)
        {
          return 0;
        }

        v9 = v11;
        v12 = *(a5 + 176);
        if (v12 != (a5 + 48))
        {
          free(v12);
        }

        *(a5 + 176) = v9;
        *(a5 + 184) = v10 + 1;
      }

      memcpy(v9, __s2, v10);
      *(*(a5 + 176) + v10) = 0;
      u_strFromUTF8(*(a5 + 192), *(a5 + 200), &pDestLength, __s2, v10, &pErrorCode);
      if (pErrorCode == U_BUFFER_OVERFLOW_ERROR || !*(a5 + 192))
      {
        v13 = malloc_type_malloc(2 * pDestLength + 2, 0x1000040BDFB0063uLL);
        if (!v13)
        {
          return 0;
        }

        v14 = v13;
        v15 = *(a5 + 192);
        if (v15)
        {
          free(v15);
        }

        *(a5 + 192) = v14;
        v16 = pDestLength + 1;
        *(a5 + 200) = pDestLength + 1;
        pErrorCode = U_ZERO_ERROR;
        u_strFromUTF8(v14, v16, &pDestLength, __s2, v10, &pErrorCode);
        v17 = *(a5 + 192);
      }

      v18 = *(a5 + 24);
      usearch_setPattern();
      *(a5 + 188) = 1;
      v19 = pDestLength;
      if (pDestLength >= 1)
      {
        v20 = *(a5 + 192);
        do
        {
          v22 = *v20++;
          v21 = v22;
          if ((v22 + 160) < 0x50u || (v21 & 0xFF80) == 0xE00 || ((v21 - 11904) >> 7) <= 0x196u)
          {
            *(a5 + 188) = 0;
          }

          --v19;
        }

        while (v19);
      }

      if (pErrorCode <= U_ZERO_ERROR)
      {
        goto LABEL_26;
      }

      **(a5 + 176) = 0;
    }

    return 0;
  }

LABEL_26:
  v58 = 0;
  v23 = strlen(a1);
  if (v23 < 1)
  {
    return 0;
  }

  u_strFromUTF8(*(a5 + 208), *(a5 + 728), &v58, a1, v23, &pErrorCode);
  if (pErrorCode == U_BUFFER_OVERFLOW_ERROR)
  {
    result = malloc_type_malloc(2 * v58 + 2, 0x1000040BDFB0063uLL);
    if (!result)
    {
      return result;
    }

    v25 = result;
    v26 = *(a5 + 208);
    if (v26 != (a5 + 216))
    {
      free(v26);
    }

    *(a5 + 208) = v25;
    v27 = v58 + 1;
    *(a5 + 728) = v58 + 1;
    pErrorCode = U_ZERO_ERROR;
    u_strFromUTF8(v25, v27, &v58, a1, v23, &pErrorCode);
  }

  v28 = *(a5 + 24);
  v29 = *(a5 + 208);
  usearch_setText();
  v30 = *(a5 + 24);
  if (a4 == 3)
  {
    v31 = usearch_last();
    if (v31 != -1)
    {
      v32 = v31;
      v33 = *(a5 + 24);
      v34 = usearch_getMatchedLength() + v32 == v58;
      goto LABEL_35;
    }

LABEL_71:
    v35 = 0;
    return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v35);
  }

  v36 = usearch_first();
  v37 = v36;
  v35 = 0;
  if (a4 > 3)
  {
    if ((a4 - 5) >= 2)
    {
      if (a4 != 4)
      {
        return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v35);
      }

      if (!v36)
      {
        v57 = *(a5 + 24);
        v34 = usearch_getMatchedLength() == v58;
        goto LABEL_35;
      }

      goto LABEL_71;
    }

    if (*(a5 + 188) == 1)
    {
      if (v36 != -1)
      {
        v38 = *(a5 + 32);
        v39 = *(a5 + 208);
        ubrk_setText();
        if (pErrorCode <= U_ZERO_ERROR)
        {
          v40 = 0;
          while (1)
          {
            v41 = *(a5 + 32);
            if (ubrk_isBoundary())
            {
              if (a4 == 5 || (v42 = *(a5 + 24), v43 = *(a5 + 32), usearch_getMatchedLength(), ubrk_isBoundary()))
              {
LABEL_75:
                v35 = 1;
                return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v35);
              }
            }

            else
            {
              v44 = *(a5 + 40);
              if ((v40 & 1) == 0)
              {
                v44 = utext_openUChars(v44, *(a5 + 208), v58, &pErrorCode);
                *(a5 + 40) = v44;
              }

              utext_setNativeIndex(v44, v37);
              utext_moveIndex32(*(a5 + 40), -1);
              v45 = utext_next32(*(a5 + 40));
              isUUppercase = u_isUUppercase(v45);
              v47 = utext_next32(*(a5 + 40));
              v48 = u_isUUppercase(v47);
              v49 = utext_next32(*(a5 + 40));
              v50 = u_isUUppercase(v49);
              if (isUUppercase)
              {
                v51 = v50 == 0;
              }

              else
              {
                v51 = 1;
              }

              v52 = v51;
              v40 = 1;
              if (v48 && v52)
              {
                if (a4 == 5)
                {
                  goto LABEL_75;
                }

                v53 = *(a5 + 24);
                v54 = *(a5 + 32);
                usearch_getMatchedLength();
                isBoundary = ubrk_isBoundary();
                v35 = 1;
                if (isBoundary)
                {
                  return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v35);
                }
              }
            }

            v56 = *(a5 + 24);
            v37 = usearch_next();
            v35 = 0;
            if (v37 == -1)
            {
              return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v35);
            }
          }
        }
      }

      goto LABEL_71;
    }

LABEL_68:
    v35 = v36 != -1;
    return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v35);
  }

  switch(a4)
  {
    case 0:
      goto LABEL_68;
    case 1:
      v34 = v36 == -1;
      break;
    case 2:
      v34 = v36 == 0;
      break;
    default:
      return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v35);
  }

LABEL_35:
  v35 = v34;
  return ((pErrorCode < U_ILLEGAL_ARGUMENT_ERROR) & v35);
}

void sub_195E86A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195E86C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CPStartAnInhibitor()
{
  v0 = +[_CPInhibitorManager sharedInstance];
  v1 = [v0 startAnInhibitor];

  return v1;
}

void CPStopInhibitorWithIdentifier(uint64_t a1)
{
  v2 = +[_CPInhibitorManager sharedInstance];
  [v2 stopInhibitorWithIdentifier:a1];
}

uint64_t RunningBoardServicesLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!RunningBoardServicesLibraryCore_frameworkLibrary)
  {
    RunningBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = RunningBoardServicesLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __RunningBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  RunningBoardServicesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getRBSProcessHandleClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSProcessHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSProcessHandleClass_block_invoke_cold_1();
  }

  getRBSProcessHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void RunningBoardServicesLibrary()
{
  v0 = 0;
  if (!RunningBoardServicesLibraryCore())
  {
    RunningBoardServicesLibrary_cold_1(&v0);
  }
}

Class __getRBSTargetClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSTarget");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSTargetClass_block_invoke_cold_1();
  }

  getRBSTargetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRBSDomainAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSDomainAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSDomainAttributeClass_block_invoke_cold_1();
  }

  getRBSDomainAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRBSAcquisitionCompletionAttributeClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSAcquisitionCompletionAttribute");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSAcquisitionCompletionAttributeClass_block_invoke_cold_1();
  }

  getRBSAcquisitionCompletionAttributeClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getRBSAssertionClass_block_invoke(uint64_t a1)
{
  RunningBoardServicesLibrary();
  result = objc_getClass("RBSAssertion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getRBSAssertionClass_block_invoke_cold_1();
  }

  getRBSAssertionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *getConfigPListURL()
{
  v0 = getConfigPListURL_configDefaultsDomain;
  if (!getConfigPListURL_configDefaultsDomain)
  {
    v0 = @"/var/mobile/Library/Preferences/com.apple.ConfigServer";
    getConfigPListURL_configDefaultsDomain = @"/var/mobile/Library/Preferences/com.apple.ConfigServer";
  }

  v1 = CFPreferencesCopyAppValue(@"ConfigurationPlistURL", v0);
  if ([v1 length])
  {

    return v1;
  }

  else
  {

    return @"https://configuration.apple.com/configurations/pep/config/pepconfig.plist";
  }
}

uint64_t downloadDictionary()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:getConfigPListURL()];
  v1 = [objc_alloc(MEMORY[0x1E696AF68]) initWithURL:v0 cachePolicy:1 timeoutInterval:60.0];

  v5 = 0;
  v2 = [MEMORY[0x1E696AF28] sendSynchronousRequest:v1 returningResponse:0 error:&v5];

  if (v5)
  {
    NSLog(@"Could not download configuration data %@", v5);
  }

  if (!v2)
  {
    return 0;
  }

  v3 = [MEMORY[0x1E696AE40] propertyListWithData:v2 options:0 format:0 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void ALBasicDiacriticMatch(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    v5 = [sqlite3_user_data(a1) citySearchMatcher];
    v6 = sqlite3_value_text(*a3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v9 = a1;
      v8 = 0;
    }

    else
    {
      v8 = [v5 matchesUTF8String:v6];
      v9 = a1;
    }

    sqlite3_result_int(v9, v8);
  }

  else
  {

    sqlite3_result_error(a1, "ALBasicDiacriticMatch: wrong number of arguments", -1);
  }
}

void RadioPreferencesCallback(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  pthread_mutex_lock(&__sValidObjectsLock);
  if (__sValidObjects && CFSetContainsValue(__sValidObjects, a3))
  {
    v5 = a3;
    pthread_mutex_unlock(&__sValidObjectsLock);
    if (v5)
    {
      [v5 notifyTarget:a2];
    }
  }

  else
  {
    pthread_mutex_unlock(&__sValidObjectsLock);
  }
}

void sub_195E8C05C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_195E8C40C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose((v8 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NanoPreferencesSyncLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!NanoPreferencesSyncLibraryCore_frameworkLibrary)
  {
    NanoPreferencesSyncLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = NanoPreferencesSyncLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NanoPreferencesSyncLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoPreferencesSyncLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getNPSDomainAccessorClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!NanoPreferencesSyncLibraryCore())
  {
    __getNPSDomainAccessorClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("NPSDomainAccessor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNPSDomainAccessorClass_block_invoke_cold_1();
  }

  getNPSDomainAccessorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t NanoSystemSettingsLibraryCore()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!NanoSystemSettingsLibraryCore_frameworkLibrary)
  {
    NanoSystemSettingsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = NanoSystemSettingsLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __NanoSystemSettingsLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  NanoSystemSettingsLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getNSSManagerClass_block_invoke(uint64_t a1)
{
  v3 = 0;
  if (!NanoSystemSettingsLibraryCore())
  {
    __getNSSManagerClass_block_invoke_cold_2(&v3);
  }

  result = objc_getClass("NSSManager");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getNSSManagerClass_block_invoke_cold_1();
  }

  getNSSManagerClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t CPICUCreateSearchCollator@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  a2[1] = 0;
  a2[2] = 0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  if (a1)
  {
    __strlcpy_chk();
  }

  else
  {
    v3 = *MEMORY[0x1E695E8A8];
    v4 = CFPreferencesCopyAppValue(@"AppleCollationOrder", *MEMORY[0x1E695E8A8]);
    if (v4)
    {
      ValueAtIndex = v4;
    }

    else
    {
      v8 = CFPreferencesCopyAppValue(@"AppleLanguages", v3);
      if (!v8 || (v9 = v8, ValueAtIndex = CFArrayGetValueAtIndex(v8, 0), CFRetain(ValueAtIndex), CFRelease(v9), !ValueAtIndex))
      {
        LOBYTE(v12[0]) = 0;
        goto LABEL_11;
      }
    }

    CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(*MEMORY[0x1E695E480], ValueAtIndex);
    if (CanonicalLanguageIdentifierFromString)
    {
      v7 = CanonicalLanguageIdentifierFromString;
      CFStringGetCString(CanonicalLanguageIdentifierFromString, v12, 257, 0x600u);
      CFRelease(v7);
    }

    CFRelease(ValueAtIndex);
  }

LABEL_11:
  uloc_setKeywordValue();
  *a2 = ucol_open();
  result = ucol_setStrength();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

CFErrorRef *CPBitmapWriteImagesToPath(const __CFArray *a1, unsigned int a2, const __CFData *a3, const __CFString *a4, int a5, CFErrorRef *a6)
{
  if (!a1 || !CFArrayGetCount(a1))
  {
    if (!a6)
    {
      return a6;
    }

    __CPBitmapSetErrorIfNecessary(a6, @"CPBitmapErrorDomain", 1, "No images provided");
    return 0;
  }

  Count = CFArrayGetCount(a1);
  CPBitmapWriterCreateWithPath(a4, a2, a5, Count, a3, a6);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  if (Count < 1)
  {
LABEL_8:
    a6 = CPBitmapWriterFinalize(v14, a6);
  }

  else
  {
    v15 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v15);
      if ((CPBitmapWriterAddImage(v14, ValueAtIndex, a6) & 1) == 0)
      {
        break;
      }

      if (Count == ++v15)
      {
        goto LABEL_8;
      }
    }

    a6 = 0;
  }

  CFRelease(v14);
  return a6;
}

void __CPBitmapSetErrorIfNecessary(CFErrorRef *a1, const __CFString *a2, CFIndex __errnum, char *cStr)
{
  if (a1)
  {
    v8 = *MEMORY[0x1E695E480];
    if (*MEMORY[0x1E695E640] == a2)
    {
      v10 = strerror(__errnum);
      v9 = CFStringCreateWithFormat(v8, 0, @"CPBitmap: %s (%s)", cStr, v10);
    }

    else
    {
      v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0x8000100u);
    }

    userInfoValues = v9;
    *a1 = CFErrorCreateWithUserInfoKeysAndValues(v8, a2, __errnum, MEMORY[0x1E695E620], &userInfoValues, 1);
    CFRelease(userInfoValues);
  }
}

void CPBitmapWriterCreateWithPath(const __CFString *a1, unsigned int a2, int a3, unint64_t a4, const __CFData *a5, CFErrorRef *a6)
{
  v12 = malloc_type_malloc(0x400uLL, 0xE0956004uLL);
  if (v12)
  {
    v13 = v12;
    *v12 = 0;
    v14 = malloc_type_malloc(0x400uLL, 0x1A398C4uLL);
    if (v14)
    {
      v15 = v14;
      *v14 = 0;
      if (a1 && CFStringGetCString(a1, v13, 1024, 0x8000100u))
      {
        v16 = CPOpenTemporaryFile(v13, v15, 0x400uLL);
        if (v16 != -1)
        {
          v17 = v16;
          CPBitmapWriterCreateWithFileDescriptor(v16, a2, a3, a4, a5, a6);
          if (v18)
          {
            *(v18 + 65) = 1;
            *(v18 + 72) = v15;
            *(v18 + 80) = v13;
            return;
          }

          goto LABEL_14;
        }

        if (a6)
        {
          v23 = *MEMORY[0x1E695E640];
          v22 = *__error();
          v20 = "Could not open dest path";
          v21 = a6;
          v19 = v23;
          goto LABEL_12;
        }
      }

      else if (a6)
      {
        v19 = @"CPBitmapErrorDomain";
        v20 = "Invalid dest path";
        v21 = a6;
        v22 = 4;
LABEL_12:
        __CPBitmapSetErrorIfNecessary(v21, v19, v22, v20);
      }

      v17 = -1;
LABEL_14:
      free(v15);
      free(v13);
      if (v17 != -1)
      {
        close(v17);
      }

      return;
    }

    if (a6)
    {
      __CPBitmapSetErrorIfNecessary(a6, *MEMORY[0x1E695E640], 12, "Could not allocate source path buffer");
    }

    free(v13);
  }

  else if (a6)
  {
    __CPBitmapSetErrorIfNecessary(a6, *MEMORY[0x1E695E640], 12, "Could not allocate destination path buffer");
  }
}

uint64_t CPBitmapWriterAddImage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 16);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __CPBitmapWriterAddImage_block_invoke;
  v6[3] = &unk_1E7450F88;
  v6[6] = a3;
  v6[7] = a1;
  v6[4] = &v7;
  v6[5] = a2;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t CPBitmapWriterFinalize(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CPBitmapWriterFinalize_block_invoke;
  block[3] = &unk_1E7450FB0;
  block[5] = a1;
  block[6] = a2;
  block[4] = &v6;
  dispatch_sync(v2, block);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

CFErrorRef *CPBitmapCreateImagesFromPath(const __CFString *a1, CFPropertyListRef *a2, char a3, CFErrorRef *a4)
{
  result = CPBitmapCreateMappedDataFromPath(a1, a4);
  if (result)
  {
    v8 = result;
    ImagesFromData = CPBitmapCreateImagesFromData(result, a2, a3, a4);
    CFRelease(v8);
    return ImagesFromData;
  }

  return result;
}

CFErrorRef *CPBitmapCreateMappedDataFromPath(const __CFString *a1, CFErrorRef *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  buffer[0] = 0;
  if (a1 && CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    v3 = open(buffer, 0);
    if (v3 != -1)
    {
      v4 = v3;
      v5 = lseek(v3, 0, 2);
      if (v5 == -1)
      {
        if (!a2)
        {
          goto LABEL_17;
        }

        v15 = *MEMORY[0x1E695E640];
        v16 = *__error();
        v17 = "Could not lseek file for length";
      }

      else
      {
        v6 = v5;
        v7 = mmap(0, v5, 1, 1, v4, 0);
        if (v7 != -1)
        {
          v8 = v7;
          v20.version = 0;
          memset(&v20.retain, 0, 40);
          v20.info = v6;
          v20.deallocate = MEMORY[0x1E69E9A78];
          v20.preferredSize = 0;
          v9 = CFAllocatorCreate(0, &v20);
          a2 = CFDataCreateWithBytesNoCopy(0, v8, v6, v9);
          CFRelease(v9);
LABEL_17:
          close(v4);
          goto LABEL_18;
        }

        if (!a2)
        {
          goto LABEL_17;
        }

        v15 = *MEMORY[0x1E695E640];
        v16 = *__error();
        v17 = "Could not mmap CPBitmap file";
      }

      __CPBitmapSetErrorIfNecessary(a2, v15, v16, v17);
      a2 = 0;
      goto LABEL_17;
    }

    if (a2)
    {
      v14 = *MEMORY[0x1E695E640];
      v13 = *__error();
      v11 = "Could not open path for reading";
      v12 = a2;
      v10 = v14;
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    v10 = @"CPBitmapErrorDomain";
    v11 = "Invalid read path";
    v12 = a2;
    v13 = 4;
LABEL_9:
    __CPBitmapSetErrorIfNecessary(v12, v10, v13, v11);
    a2 = 0;
  }

LABEL_18:
  v18 = *MEMORY[0x1E69E9840];
  return a2;
}

__CFArray *CPBitmapCreateImagesFromData(const __CFData *a1, CFPropertyListRef *a2, char a3, CFErrorRef *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  if (!a1 || (BytePtr = CFDataGetBytePtr(a1)) == 0 || (v9 = BytePtr, (v10 = CFDataGetLength(a1)) == 0))
  {
    if (!a4)
    {
LABEL_15:
      Mutable = 0;
      goto LABEL_16;
    }

    v14 = @"CPBitmapErrorDomain";
    v15 = "No data provided to CPBitmapCreateImagesFromData";
    v16 = a4;
    v17 = 0;
LABEL_14:
    __CPBitmapSetErrorIfNecessary(v16, v14, v17, v15);
    goto LABEL_15;
  }

  v11 = v10;
  if (v10 <= 0x17)
  {
LABEL_71:
    if (!a4)
    {
      goto LABEL_15;
    }

    v14 = @"CPBitmapErrorDomain";
    v15 = "Length of file does not match expected length";
    v16 = a4;
    v17 = 5;
    goto LABEL_14;
  }

  if ((a3 & 2) != 0)
  {
    madvise(v9, v10, 3);
  }

  if (v11 <= 0x1B)
  {
    v12 = 24;
  }

  else
  {
    v12 = 28;
  }

  if (v11 < 0x1C)
  {
    v13 = 0;
  }

  else
  {
    v13 = *&v9[v11 - 28];
  }

  v21 = &v9[v11];
  v23 = *&v9[v11 - 8];
  v22 = *&v9[v11 - 4];
  v24 = *&v9[v11 - 16];
  v25 = *(v21 - 3);
  v26 = *(v21 - 5);
  v27 = v11 > 0x1B && v22 == -592100446;
  v28 = v27;
  if (!v27)
  {
    if (v22 != -878431599)
    {
      if (!a4)
      {
        goto LABEL_15;
      }

      v14 = @"CPBitmapErrorDomain";
      v15 = "Invalid magic in trailer";
      v16 = a4;
      v17 = 6;
      goto LABEL_14;
    }

    v13 = 0;
    v12 = 24;
  }

  v73 = v23;
  if (!v23)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    goto LABEL_98;
  }

  v71 = v12;
  length = *(v21 - 6);
  if (v25 <= 7 && ((1 << v25) & 0xD0) != 0)
  {
    decode[0] = 0.0;
    *&decode[1] = decode;
    v98 = 0x2000000000;
    v99 = 0;
    v89 = 0;
    v90 = &v89;
    v91 = 0x2000000000;
    v92 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2000000000;
    v88 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x2000000000;
    v84 = 0;
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 0x40000000;
    v75 = __CPBitmapCreateImagesFromData_block_invoke;
    v76 = &unk_1E7450F40;
    v77 = decode;
    v78 = &v89;
    v79 = &v85;
    v80 = &v81;
    if (v23 == 1)
    {
      v29 = *MEMORY[0x1E695E480];
      v30 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E696E0A8], MEMORY[0x1E695E4C0], 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
      if (v30)
      {
        v31 = v30;
        v32 = CPBitmapDataWithOffsetCreate(a1, 0);
        if (v32)
        {
          v33 = v32;
          Direct = CGDataProviderCreateDirect(v32, v11 - (v71 + length + v13), &__CPBitmapDataWithOffsetDirectProviderCallbacks);
          if (Direct)
          {
            v35 = Direct;
            v36 = CGImageSourceCreateWithDataProvider(Direct, v31);
            if (!v36)
            {
              v75(v74, *MEMORY[0x1E695E640], 12, "Could not allocate image source");
              Mutable = 0;
LABEL_88:
              CFRelease(v35);
              goto LABEL_89;
            }

            v37 = v36;
            if (CGImageSourceGetCount(v36) == 1)
            {
              ImageAtIndex = CGImageSourceCreateImageAtIndex(v37, 0, v31);
              if (ImageAtIndex)
              {
                v39 = ImageAtIndex;
                Mutable = CFArrayCreateMutable(v29, 1, MEMORY[0x1E695E9C0]);
                CFArrayAppendValue(Mutable, v39);
                CFRelease(v39);
LABEL_87:
                CFRelease(v37);
                goto LABEL_88;
              }

              v75(v74, @"CPBitmapErrorDomain", 6, "Could not create image from KTX source");
            }

            else
            {
              v75(v74, @"CPBitmapErrorDomain", 6, "Unexpected image count for KTX format");
            }

            Mutable = 0;
            goto LABEL_87;
          }

          v75(v74, *MEMORY[0x1E695E640], 12, "Could not allocate source data provider");
          CFRelease(*v33);
          free(v33);
        }

        else
        {
          v75(v74, *MEMORY[0x1E695E640], 12, "Could not allocate offsetted source data");
        }

        Mutable = 0;
LABEL_89:
        CFRelease(v31);
        goto LABEL_90;
      }

      v75(v74, *MEMORY[0x1E695E640], 12, "Could not allocate image source props");
      Mutable = 0;
    }

    else
    {
      Mutable = 0;
      v99 = 1;
      v92 = @"CPBitmapErrorDomain";
      v88 = 6;
      v84 = "KTX container can only have one image";
    }

LABEL_90:
    v55 = *(*&decode[1] + 24);
    if (a4 && *(*&decode[1] + 24))
    {
      __CPBitmapSetErrorIfNecessary(a4, v90[3], v86[3], v82[3]);
    }

    _Block_object_dispose(&v81, 8);
    _Block_object_dispose(&v85, 8);
    _Block_object_dispose(&v89, 8);
    _Block_object_dispose(decode, 8);
    if ((v55 & 1) == 0)
    {
LABEL_94:
      if (a2)
      {
        if (length)
        {
          v56 = *MEMORY[0x1E695E480];
          v57 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], &v21[-v71 - length], length, *MEMORY[0x1E695E498]);
          if (v57)
          {
            v58 = v57;
            *a2 = CFPropertyListCreateWithData(v56, v57, 0, 0, a4);
            CFRelease(v58);
          }
        }
      }
    }

    goto LABEL_98;
  }

  if (v13)
  {
    v40 = v12 + *(v21 - 6) + v13;
    if (v40 > v11)
    {
      if (!a4)
      {
        goto LABEL_15;
      }

      v14 = @"CPBitmapErrorDomain";
      v15 = "Invalid colorSpace plist size";
      goto LABEL_50;
    }

    width = *(v21 - 5);
    allocator = *MEMORY[0x1E695E480];
    v41 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], &v21[-v40], v13, *MEMORY[0x1E695E498]);
    if (!v41)
    {
      if (!a4)
      {
        goto LABEL_15;
      }

      v14 = *MEMORY[0x1E695E640];
      v15 = "Could not allocate colorSpaceData";
      v16 = a4;
      v17 = 12;
      goto LABEL_14;
    }

    cfa = v41;
    allocatora = CFPropertyListCreateWithData(allocator, v41, 0, 0, 0);
    CFRelease(cfa);
    if (allocatora)
    {
      *&v93 = CGColorSpaceCreateWithPropertyList(allocatora);
      CFRelease(allocatora);
      v26 = width;
      if (v93)
      {
        goto LABEL_56;
      }

      if (!a4)
      {
        Mutable = 0;
        goto LABEL_18;
      }

      v14 = @"CPBitmapErrorDomain";
      v15 = "Invalid colorSpace plist";
    }

    else
    {
      if (!a4)
      {
        goto LABEL_15;
      }

      v14 = @"CPBitmapErrorDomain";
      v15 = "Invalid colorSpace plist data";
    }

LABEL_50:
    v16 = a4;
    v17 = 8;
    goto LABEL_14;
  }

LABEL_56:
  widtha = v26;
  if (!__CPBitmapGetImageInfoForFormat(v25, v26, v24, &v93, v28, a3 & 1))
  {
    if (!a4)
    {
      goto LABEL_15;
    }

    v14 = @"CPBitmapErrorDomain";
    v15 = "Invalid bitmap format in file";
    v16 = a4;
    v17 = 3;
    goto LABEL_14;
  }

  v42 = v95;
  if (!is_mul_ok(v95, v24))
  {
    goto LABEL_71;
  }

  if (!is_mul_ok((v73 - 1), *(&v95 + 1)))
  {
    goto LABEL_71;
  }

  v43 = (v73 - 1) * *(&v95 + 1);
  v44 = __CFADD__(v43, v95 * v24);
  v45 = v43 + v95 * v24;
  if (v44)
  {
    goto LABEL_71;
  }

  v44 = __CFADD__(v45, v13);
  v46 = v45 + v13;
  if (v44)
  {
    goto LABEL_71;
  }

  v44 = __CFADD__(v46, length);
  v47 = v46 + length;
  if (v44)
  {
    goto LABEL_71;
  }

  v44 = __CFADD__(v47, v71);
  v48 = v47 + v71;
  if (v44)
  {
    goto LABEL_71;
  }

  v62 = *(&v95 + 1);
  size = v95 * v24;
  if (v11 != v48)
  {
    goto LABEL_71;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v49 = 0;
  v61 = v94;
  space = v93;
  bitmapInfo = v96;
  v50 = v73;
  while (1)
  {
    cf = v49;
    v51 = CPBitmapDataWithOffsetCreate(a1, v49);
    v52 = CGDataProviderCreateDirect(v51, size, &__CPBitmapDataWithOffsetDirectProviderCallbacks);
    allocatorb = v52;
    if (v25 == 5)
    {
      *decode = xmmword_195EA88C0;
      v53 = CGImageMaskCreate(widtha, v24, v61, *(&v61 + 1), v42, v52, decode, 0);
    }

    else
    {
      v53 = CGImageCreate(widtha, v24, v61, *(&v61 + 1), v42, space, bitmapInfo, v52, 0, 1, kCGRenderingIntentDefault);
    }

    v54 = v53;
    CGDataProviderRelease(allocatorb);
    if (!v54)
    {
      break;
    }

    CFArrayAppendValue(Mutable, v54);
    CGImageRelease(v54);
    v49 = cf + v62;
    if (!--v50)
    {
      goto LABEL_94;
    }
  }

  if (a4)
  {
    __CPBitmapSetErrorIfNecessary(a4, @"CPBitmapErrorDomain", 6, "Could not create image from data");
  }

LABEL_98:
  if (Mutable && CFArrayGetCount(Mutable) != v73)
  {
    CFRelease(Mutable);
    goto LABEL_15;
  }

LABEL_16:
  if (v93)
  {
    CGColorSpaceRelease(v93);
  }

LABEL_18:
  if (*(&v93 + 1))
  {
    CGColorSpaceRelease(*(&v93 + 1));
  }

  v19 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void CPBitmapDataWithOffsetRelease(CFTypeRef *a1)
{
  CFRelease(*a1);

  free(a1);
}

void *__CPBitmapCreateImagesFromData_block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(result[4] + 8) + 24) = 1;
  *(*(result[5] + 8) + 24) = a2;
  *(*(result[6] + 8) + 24) = a3;
  *(*(result[7] + 8) + 24) = a4;
  return result;
}

void *CPBitmapDataWithOffsetCreate(const void *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
  *v4 = CFRetain(a1);
  v4[1] = a2;
  return v4;
}

uint64_t __CPBitmapGetImageInfoForFormat(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  result = 0;
  if (a5)
  {
    v11 = 16;
  }

  else
  {
    v11 = 8;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        return result;
      }

      if (a5)
      {
        v15 = 0x3FFFFFFFFFFFFFF0;
      }

      else
      {
        v15 = 0x3FFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = CGColorSpaceCreateDeviceRGB();
      *(a4 + 32) = 4 * (v15 & (v11 + a2 - 1));
      *(a4 + 16) = xmmword_195EA88B0;
      if (a6)
      {
        v13 = 8198;
      }

      else
      {
        v13 = 8194;
      }
    }

    else
    {
      if (a5)
      {
        v19 = 0x3FFFFFFFFFFFFFF0;
      }

      else
      {
        v19 = 0x3FFFFFFFFFFFFFF8;
      }

      *(a4 + 8) = CGColorSpaceCreateDeviceRGB();
      *(a4 + 32) = 4 * (v19 & (v11 + a2 - 1));
      *(a4 + 16) = xmmword_195EA88B0;
      v13 = 8198;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        if (a5)
        {
          v16 = 0x7FFFFFFFFFFFFFF0;
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFF8;
        }

        *(a4 + 8) = CGColorSpaceCreateDeviceRGB();
        *(a4 + 32) = 2 * (v16 & (v11 + a2 - 1));
        *(a4 + 16) = xmmword_195EA88A0;
        v13 = 4102;
        break;
      case 3:
        if (a5)
        {
          v17 = -16;
        }

        else
        {
          v17 = -8;
        }

        DeviceGray = CGColorSpaceCreateDeviceGray();
        v13 = 0;
        *(a4 + 8) = DeviceGray;
        *(a4 + 32) = v17 & (v11 + a2 - 1);
        *(a4 + 16) = vdupq_n_s64(8uLL);
        break;
      case 5:
        v12 = -8;
        if (a5)
        {
          v12 = -16;
        }

        *(a4 + 32) = v12 & (v11 + a2 - 1);
        *(a4 + 16) = vdupq_n_s64(8uLL);
        v13 = 7;
        break;
      default:
        return result;
    }
  }

  *(a4 + 48) = v13;
  if (*a4)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(*a4);
    if (NumberOfComponents != CGColorSpaceGetNumberOfComponents(*(a4 + 8)))
    {
      return 0;
    }
  }

  else
  {
    *a4 = CGColorSpaceRetain(*(a4 + 8));
  }

  *(a4 + 40) = (*(a4 + 32) * a3 + 4095) & 0xFFFFFFFFFFFFF000;
  return 1;
}

uint64_t CPBitmapWriterGetTypeID()
{
  if (CPBitmapWriterGetTypeID_once != -1)
  {
    CPBitmapWriterGetTypeID_cold_1();
  }

  return CPBitmapWriterGetTypeID_typeID;
}

uint64_t __CPBitmapWriterGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  CPBitmapWriterGetTypeID_typeID = result;
  return result;
}

void CPBitmapWriterCreate(unsigned int a1, const __CFData *a2, const __CFString *a3, int a4, CFErrorRef *a5)
{
  if (a1 == 6)
  {
    if (!a5)
    {
      return;
    }

    v5 = "Cannot serialize kCPBitmapFormatATX_4x4_PreTwiddled with this constructor - use CPBitmapWriterCreateWithPath instead";
    goto LABEL_7;
  }

  if (a1 == 4)
  {
    if (!a5)
    {
      return;
    }

    v5 = "Cannot serialize kCPBitmapFormatKTX_4x4 with this constructor - use CPBitmapWriterCreateWithPath instead";
LABEL_7:
    __CPBitmapSetErrorIfNecessary(a5, @"CPBitmapErrorDomain", 3, v5);
    return;
  }

  CPBitmapWriterCreateWithPath(a3, a1, a4, 1uLL, a2, a5);
}

double CPBitmapWriterCreateWithFileDescriptor(int a1, unsigned int a2, int a3, unint64_t a4, CFDataRef Data, CFErrorRef *a6)
{
  if (a1 == -1)
  {
    if (!a6)
    {
      return result;
    }

    v9 = *MEMORY[0x1E695E640];
    v10 = "Bad file descriptor";
    v11 = a6;
    v12 = 9;
    goto LABEL_11;
  }

  if (a2 >= 8)
  {
    if (!a6)
    {
      return result;
    }

    v9 = @"CPBitmapErrorDomain";
    v10 = "Requested bitmap format is unknown";
    goto LABEL_10;
  }

  if (HIDWORD(a4))
  {
    if (!a6)
    {
      return result;
    }

    v9 = @"CPBitmapErrorDomain";
    v10 = "Count of images is too high";
LABEL_10:
    v11 = a6;
    v12 = 3;
LABEL_11:
    __CPBitmapSetErrorIfNecessary(v11, v9, v12, v10);
    return result;
  }

  v17 = dispatch_queue_create(0, 0);
  if (v17)
  {
    v18 = v17;
    v19 = *MEMORY[0x1E695E480];
    if (Data && (Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], Data, kCFPropertyListBinaryFormat_v1_0, 0, a6)) == 0)
    {
      if (a6)
      {
        v21 = *MEMORY[0x1E695E640];
        v22 = __error();
        __CPBitmapSetErrorIfNecessary(a6, v21, *v22, "Could not encode info dictionary");
      }

      dispatch_release(v18);
    }

    else
    {
      if (CPBitmapWriterGetTypeID_once != -1)
      {
        CPBitmapWriterGetTypeID_cold_1();
      }

      Instance = _CFRuntimeCreateInstance();
      if (Instance)
      {
        *(Instance + 16) = v18;
        *(Instance + 24) = a1;
        *(Instance + 28) = a2;
        *(Instance + 32) = a3;
        *(Instance + 40) = a4;
        *(Instance + 48) = Data;
        *(Instance + 56) = 0;
        *(Instance + 64) = 0;
        result = 0.0;
        *(Instance + 72) = 0u;
        *(Instance + 88) = 0u;
        *(Instance + 104) = 0u;
        *(Instance + 120) = 0;
      }

      else
      {
        if (a6)
        {
          __CPBitmapSetErrorIfNecessary(a6, *MEMORY[0x1E695E640], 12, "Could not allocate the writer");
        }

        dispatch_release(v18);
        if (Data)
        {
          CFRelease(Data);
        }
      }
    }
  }

  else if (a6)
  {
    v9 = *MEMORY[0x1E695E640];
    v10 = "Could not allocate the writer queue";
    v11 = a6;
    v12 = 12;
    goto LABEL_11;
  }

  return result;
}

void __CPBitmapWriterAddImage_block_invoke(uint64_t a1)
{
  values[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!v2)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      v8 = *MEMORY[0x1E69E9840];
      v6 = "No images provided";
      v7 = 1;
      goto LABEL_7;
    }

LABEL_67:
    v61 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = *(a1 + 56);
  if (*(v3 + 64) != 1)
  {
    if (*(v3 + 112))
    {
      goto LABEL_11;
    }

    v14 = *(v3 + 28);
    if (v14 > 7)
    {
      goto LABEL_11;
    }

    if (((1 << v14) & 0x2F) != 0)
    {
      v15 = *(a1 + 48);
      v101 = 0;
      v102 = &v101;
      v103 = 0x2000000000;
      v97 = 0;
      v98 = &v97;
      v99 = 0x2000000000;
      v100 = 0;
      v93 = 0;
      v94 = &v93;
      v95 = 0x2000000000;
      v96 = 0;
      v104 = 0;
      keys = MEMORY[0x1E69E9820];
      v106 = 0x40000000;
      v107 = ____CPCGBitmapContextBlockSetup_block_invoke;
      v108 = &unk_1E7450FD8;
      v109 = &v93;
      v110 = &v97;
      v111 = &v101;
      Width = CGImageGetWidth(v2);
      Height = CGImageGetHeight(v2);
      v18 = malloc_type_malloc(0x38uLL, 0x10200401A3D0951uLL);
      v19 = v102;
      v102[3] = v18;
      if (v18)
      {
        v18[6] = 0;
        *(v18 + 1) = 0u;
        *(v18 + 2) = 0u;
        *v18 = 0u;
        v20 = *(v3 + 32);
        if (v20)
        {
          ColorSpace = CGImageGetColorSpace(v2);
          v22 = CGColorSpaceRetain(ColorSpace);
          *v102[3] = v22;
          v19 = v102;
        }

        if (__CPBitmapGetImageInfoForFormat(*(v3 + 28), Width, Height, v19[3], 1, 0))
        {
          v23 = v20 & 1;
          if (v20 & 1) == 0 || (v24 = v102[3], v25 = *v24, v26 = v24[1], (CGColorSpaceEqualToColorSpace()))
          {
            Data = 0;
            goto LABEL_25;
          }

          v59 = CGColorSpaceCopyPropertyList(*v102[3]);
          if (v59)
          {
            v60 = v59;
            Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v59, kCFPropertyListBinaryFormat_v1_0, 0, v15);
            CFRelease(v60);
            if (Data)
            {
LABEL_25:
              if (Height >= 0x100)
              {
                v28 = 256;
              }

              else
              {
                v28 = Height;
              }

              v29 = *(v102[3] + 32) * v28;
              v30 = malloc_type_malloc(v29, 0xCA723304uLL);
              v98[3] = v30;
              if (v30)
              {
                v31 = CGBitmapContextCreate(v30, Width, v28, *(v102[3] + 16), *(v102[3] + 32), *v102[3], *(v102[3] + 48));
                v94[3] = v31;
                if (v31)
                {
                  aBlock = MEMORY[0x1E69E9820];
                  v69 = 0x40000000;
                  v70 = ____CPCGBitmapContextBlockSetup_block_invoke_2;
                  v71 = &unk_1E7451000;
                  v79 = v23;
                  v76 = v28;
                  v77 = Width;
                  v72 = &v101;
                  v73 = &v97;
                  v78 = v29;
                  v74 = &v93;
                  v75 = Height;
                  *(v3 + 96) = Width;
                  *(v3 + 104) = Height;
                  *(v3 + 56) = Data;
                  *(v3 + 112) = _Block_copy(&aBlock);
                  *(v3 + 120) = _Block_copy(&keys);
                  _Block_object_dispose(&v93, 8);
                  _Block_object_dispose(&v97, 8);
                  _Block_object_dispose(&v101, 8);
                  goto LABEL_11;
                }

                if (!v15)
                {
                  goto LABEL_64;
                }

                v55 = @"CPBitmapErrorDomain";
                v56 = "Could not create bitmap context with desired arguments";
                v57 = v15;
                v58 = 3;
              }

              else
              {
                if (!v15)
                {
                  goto LABEL_64;
                }

                v55 = *MEMORY[0x1E695E640];
                v56 = "Could not allocate bitmap buffer";
                v57 = v15;
                v58 = 12;
              }

              __CPBitmapSetErrorIfNecessary(v57, v55, v58, v56);
LABEL_64:
              if (Data)
              {
                CFRelease(Data);
              }
            }

LABEL_66:
            (v107)(&keys, 0, 0);
            _Block_object_dispose(&v93, 8);
            _Block_object_dispose(&v97, 8);
            _Block_object_dispose(&v101, 8);
            goto LABEL_67;
          }

          if (!v15)
          {
            goto LABEL_66;
          }

          v48 = @"CPBitmapErrorDomain";
          v49 = "Failed to create colorSpace plist";
          v50 = v15;
          v51 = 8;
        }

        else
        {
          if (!v15)
          {
            goto LABEL_66;
          }

          v48 = @"CPBitmapErrorDomain";
          v49 = "Trying to serialize invalid bitmap format";
          v50 = v15;
          v51 = 3;
        }
      }

      else
      {
        if (!v15)
        {
          goto LABEL_66;
        }

        v48 = *MEMORY[0x1E695E640];
        v49 = "Could not allocate bitmap info";
        v50 = v15;
        v51 = 12;
      }

      __CPBitmapSetErrorIfNecessary(v50, v48, v51, v49);
      goto LABEL_66;
    }

    v33 = *(a1 + 48);
    v101 = 0;
    v102 = &v101;
    v103 = 0x2000000000;
    v104 = 0;
    v97 = 0;
    v98 = &v97;
    v99 = 0x2000000000;
    v100 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x2000000000;
    v96 = 0;
    v89 = 0;
    v90 = &v89;
    v91 = 0x2000000000;
    v92 = 0;
    v85 = 0;
    v86 = &v85;
    v87 = 0x2000000000;
    v88 = 0;
    v81 = 0;
    v82 = &v81;
    v83 = 0x2000000000;
    v84 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v69 = 0x40000000;
    v70 = ____CPCGDestinationKTXBlockSetup_block_invoke;
    v71 = &unk_1E7451028;
    v72 = &v81;
    v73 = &v85;
    v74 = &v89;
    v75 = &v93;
    v76 = &v101;
    v77 = &v97;
    v34 = CGImageGetWidth(v2);
    v35 = CGImageGetHeight(v2);
    v36 = *(v3 + 28);
    if ((v36 & 0xFFFFFFFE) == 6)
    {
      v37 = @"com.apple.atx";
    }

    else
    {
      v37 = @"org.khronos.ktx";
    }

    v38 = malloc_type_malloc(0x18uLL, 0x1060040C052FB36uLL);
    v102[3] = v38;
    if (!v38 || (*v38 = v3, v38[2] = 0, *(v38 + 2) = 0, v39 = CGDataConsumerCreate(v102[3], __CPCGDestinationKTXDataConsumerCallbacks), (v98[3] = v39) == 0))
    {
      if (!v33)
      {
LABEL_48:
        (v70)(&aBlock, 0, 0);
        v54 = 0;
        goto LABEL_49;
      }

      v52 = *MEMORY[0x1E695E640];
      v53 = "Could not allocate ATX/KTX data consumer";
LABEL_47:
      __CPBitmapSetErrorIfNecessary(v33, v52, 12, v53);
      goto LABEL_48;
    }

    v40 = CGImageDestinationCreateWithDataConsumer(v39, v37, *(v3 + 40), 0);
    v94[3] = v40;
    if (!v40)
    {
      if (!v33)
      {
        goto LABEL_48;
      }

      v52 = *MEMORY[0x1E695E640];
      v53 = "Could not allocate ATX/KTX destination";
      goto LABEL_47;
    }

    v41 = *(v3 + 32);
    if (v41)
    {
      v42 = CGImageGetColorSpace(v2);
      v43 = CGColorSpaceRetain(v42);
      v82[3] = v43;
    }

    if (v36 == 7)
    {
      keys = *MEMORY[0x1E696D8A0];
      values[0] = *MEMORY[0x1E696D3B8];
      v44 = *MEMORY[0x1E695E480];
      v45 = MEMORY[0x1E695E528];
      v46 = MEMORY[0x1E695E9E8];
      v47 = 1;
    }

    else
    {
      v62 = *(v3 + 28);
      valuePtr = 68;
      v63 = *MEMORY[0x1E695E480];
      v64 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      v90[3] = v64;
      if (!v64)
      {
LABEL_74:
        if (!v33)
        {
          goto LABEL_48;
        }

        v52 = *MEMORY[0x1E695E640];
        v53 = "Could not allocate ATX/KTX props";
        goto LABEL_47;
      }

      v65 = *MEMORY[0x1E695E4D0];
      if (v62 != 6)
      {
        v65 = *MEMORY[0x1E695E4C0];
      }

      v66 = *MEMORY[0x1E696D3E0];
      keys = *MEMORY[0x1E696D8A0];
      v106 = v66;
      v107 = *MEMORY[0x1E696D400];
      values[0] = *MEMORY[0x1E696D3E8];
      values[1] = v64;
      values[2] = v65;
      v45 = MEMORY[0x1E695E528];
      v46 = MEMORY[0x1E695E9E8];
      v44 = v63;
      v47 = 3;
    }

    v67 = CFDictionaryCreate(v44, &keys, values, v47, v45, v46);
    v86[3] = v67;
    if (v67)
    {
      keys = MEMORY[0x1E69E9820];
      v106 = 0x40000000;
      v107 = ____CPCGDestinationKTXBlockSetup_block_invoke_2;
      v108 = &unk_1E7451050;
      v112 = v41 & 1;
      v109 = &v81;
      v110 = &v93;
      v111 = &v85;
      *(v3 + 96) = v34;
      *(v3 + 104) = v35;
      *(v3 + 112) = _Block_copy(&keys);
      *(v3 + 120) = _Block_copy(&aBlock);
      v54 = 1;
LABEL_49:
      _Block_object_dispose(&v81, 8);
      _Block_object_dispose(&v85, 8);
      _Block_object_dispose(&v89, 8);
      _Block_object_dispose(&v93, 8);
      _Block_object_dispose(&v97, 8);
      _Block_object_dispose(&v101, 8);
      if (!v54)
      {
        goto LABEL_67;
      }

LABEL_11:
      v9 = *(a1 + 56);
      if (*(v9 + 112))
      {
        v10 = *(v9 + 96);
        if (v10 == CGImageGetWidth(*(a1 + 40)) && (v11 = *(*(a1 + 56) + 104), v11 == CGImageGetHeight(*(a1 + 40))))
        {
          v12 = *(a1 + 48);
          v13 = *(a1 + 40);
          if ((*(*(*(a1 + 56) + 112) + 16))())
          {
            ++*(*(a1 + 56) + 88);
            *(*(*(a1 + 32) + 8) + 24) = 1;
          }
        }

        else
        {
          v32 = *(a1 + 48);
          if (v32)
          {
            __CPBitmapSetErrorIfNecessary(v32, @"CPBitmapErrorDomain", 2, "Mismatched image sizes");
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_74;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    goto LABEL_67;
  }

  v5 = *MEMORY[0x1E69E9840];
  v6 = "Writer already finalized";
  v7 = 9;
LABEL_7:

  __CPBitmapSetErrorIfNecessary(v4, @"CPBitmapErrorDomain", v7, v6);
}

void __CPBitmapWriterFinalize_block_invoke(void *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  if (*(v2 + 64) != 1)
  {
    *(v2 + 64) = 1;
    v8 = *(v2 + 112);
    if (v8)
    {
      _Block_release(v8);
      v2 = a1[5];
      *(v2 + 112) = 0;
    }

    if (*(v2 + 88))
    {
      v9 = *(v2 + 120);
      if (v9)
      {
        v10 = (*(v9 + 16))(v9, 1, a1[6]);
        _Block_release(*(a1[5] + 120));
        v2 = a1[5];
        *(v2 + 120) = 0;
        if (!v10)
        {
          goto LABEL_56;
        }
      }

      if (lseek(*(v2 + 24), 0, 2) != -1)
      {
        v11 = a1[5];
        v12 = *(v11 + 56);
        if (v12)
        {
          Length = CFDataGetLength(v12);
          v11 = a1[5];
        }

        else
        {
          Length = 0;
        }

        v17 = *(v11 + 48);
        if (v17)
        {
          v18 = CFDataGetLength(v17);
          v11 = a1[5];
        }

        else
        {
          v18 = 0;
        }

        v19 = *(v11 + 88);
        v20 = *(v11 + 40);
        if (v19 != v20 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v38 = 134218240;
          *v39 = v19;
          *&v39[8] = 2048;
          *&v39[10] = v20;
          _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "count=%zu does not equal expectedCount=%zu", &v38, 0x16u);
          v11 = a1[5];
          v19 = *(v11 + 88);
        }

        v38 = Length;
        *v39 = v18;
        *&v39[4] = vmovn_s64(*(v11 + 96));
        *&v39[12] = *(v11 + 28);
        *&v39[16] = v19;
        v40 = -592100446;
        if (Length)
        {
          v21 = *(v11 + 24);
          BytePtr = CFDataGetBytePtr(*(v11 + 56));
          if (write(v21, BytePtr, Length) == -1)
          {
            v33 = a1[6];
            if (!v33)
            {
              goto LABEL_56;
            }

            v34 = *MEMORY[0x1E695E640];
            v35 = *__error();
            v36 = "Could not write colorSpace data";
            goto LABEL_51;
          }

          v11 = a1[5];
        }

        if (v18 >= 1)
        {
          v23 = *(v11 + 24);
          v24 = CFDataGetBytePtr(*(v11 + 48));
          if (write(v23, v24, v18) == -1)
          {
            v33 = a1[6];
            if (!v33)
            {
              goto LABEL_56;
            }

            v34 = *MEMORY[0x1E695E640];
            v35 = *__error();
            v36 = "Could not write info data";
            goto LABEL_51;
          }

          v11 = a1[5];
        }

        if (write(*(v11 + 24), &v38, 0x1CuLL) == -1)
        {
          v33 = a1[6];
          if (!v33)
          {
            goto LABEL_56;
          }

          v34 = *MEMORY[0x1E695E640];
          v35 = *__error();
          v36 = "Could not write trailer";
          goto LABEL_51;
        }

        v25 = lseek(*(a1[5] + 24), 0, 2);
        if (v25 == -1)
        {
          v33 = a1[6];
          if (!v33)
          {
            goto LABEL_56;
          }

          v34 = *MEMORY[0x1E695E640];
          v35 = *__error();
          v36 = "Could not seek to end of file after writing";
          goto LABEL_51;
        }

        v27 = v25;
        v28 = a1[5];
        v29 = *(v28 + 72);
        if (v29)
        {
          v30 = *(v28 + 80);
          if (v30)
          {
            rename(v29, v30, v26);
            if (v31 == -1)
            {
              v33 = a1[6];
              if (!v33)
              {
                goto LABEL_56;
              }

              v34 = *MEMORY[0x1E695E640];
              v35 = *__error();
              v36 = "Could not rename temp file to dest path";
              goto LABEL_51;
            }

            v28 = a1[5];
          }
        }

        if (*(v28 + 65) == 1)
        {
          v32 = *(v28 + 24);
          if (v32 != -1)
          {
            if (close(v32))
            {
              v33 = a1[6];
              if (!v33)
              {
                goto LABEL_56;
              }

              v34 = *MEMORY[0x1E695E640];
              v35 = *__error();
              v36 = "Could not close the file";
LABEL_51:
              __CPBitmapSetErrorIfNecessary(v33, v34, v35, v36);
              goto LABEL_56;
            }

            *(a1[5] + 65) = 0;
          }
        }

        *(*(a1[4] + 8) + 24) = v27;
        goto LABEL_56;
      }

      v15 = a1[6];
      if (v15)
      {
        v7 = *__error();
        v16 = *MEMORY[0x1E69E9840];
        v5 = *MEMORY[0x1E695E640];
        v6 = "Could not seek to end of file";
        v3 = v15;
        goto LABEL_16;
      }
    }

    else
    {
      v3 = a1[6];
      if (v3)
      {
        v14 = *MEMORY[0x1E69E9840];
        v5 = @"CPBitmapErrorDomain";
        v6 = "No images provided";
        v7 = 1;
        goto LABEL_16;
      }
    }

LABEL_56:
    v37 = *MEMORY[0x1E69E9840];
    return;
  }

  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_56;
  }

  v4 = *MEMORY[0x1E69E9840];
  v5 = @"CPBitmapErrorDomain";
  v6 = "Writer already finalized";
  v7 = 9;
LABEL_16:

  __CPBitmapSetErrorIfNecessary(v3, v5, v7, v6);
}

void finalizeWriter(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    (*(v6 + 16))(v6, 0, 0);
    _Block_release(*(a1 + 120));
  }

  if (*(a1 + 65) == 1)
  {
    v7 = *(a1 + 24);
    if (v7 != -1)
    {
      close(v7);
    }
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 80);
  if (v9)
  {

    free(v9);
  }
}

ssize_t __CPCGDestinationKTXDataConsumerPutBytes(uint64_t a1, const void *a2, size_t a3)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  result = pwrite(*(*a1 + 24), a2, a3, *(a1 + 16));
  if (result < 0)
  {
    v5 = __error();
    result = 0;
    v6 = *v5;
    if (!v6)
    {
      v6 = 5;
    }

    *(a1 + 8) = v6;
  }

  else
  {
    *(a1 + 16) += result;
  }

  return result;
}

CGImageRef create_image_with_memory(const void *a1, uint64_t a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *v6 = a3;
  v7 = CGDataProviderCreateWithData(v6, a1, *(a2 + 8), release_munmap);
  v8 = *(a2 + 40);
  if (v8 < 3)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    goto LABEL_5;
  }

  if (v8 - 3 < 2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceGray();
LABEL_5:
    v10 = DeviceRGB;
    v8 = *(a2 + 40);
    goto LABEL_6;
  }

  if (v8 != 5)
  {
    v10 = 0;
LABEL_6:
    v11 = *(a2 + 16);
    v12 = *(a2 + 24);
    if (v8 > 5)
    {
      v13 = 0;
    }

    else
    {
      if (v8 == 2)
      {
        v13 = 5;
        goto LABEL_20;
      }

      v13 = 8;
    }

    if (v8 > 5)
    {
      v14 = 0;
      goto LABEL_23;
    }

    if (((1 << v8) & 3) != 0)
    {
      v14 = 32;
      goto LABEL_23;
    }

    if (((1 << v8) & 0xC) == 0)
    {
      v14 = 8;
LABEL_23:
      v24 = *(a2 + 32);
      v25 = format_bitmapinfo(v8);
      v15 = CGImageCreate(v11, v12, v13, v14, v24, v10, v25, v7, 0, 0, kCGRenderingIntentDefault);
      CGColorSpaceRelease(v10);
      goto LABEL_24;
    }

LABEL_20:
    v14 = 16;
    goto LABEL_23;
  }

  v15 = CGImageMaskCreate(*(a2 + 16), *(a2 + 24), 8uLL, 8uLL, *(a2 + 32), v7, create_image_with_memory_decode, 0);
  if (v15 && *(a2 + 40) == 5)
  {
    v16.i32[0] = *(a2 + 41);
    v17 = vmovl_u16(*&vmovl_u8(v16));
    v18 = vand_s8(*v17.i8, 0xFF000000FFLL);
    v19.i64[0] = v18.u32[0];
    v19.i64[1] = v18.u32[1];
    v20 = vcvtq_f64_u64(v19);
    *v17.i8 = vand_s8(*&vextq_s8(v17, v17, 8uLL), 0xFF000000FFLL);
    v19.i64[0] = v17.u32[0];
    v19.i64[1] = v17.u32[1];
    v21 = vdupq_n_s64(0x406FE00000000000uLL);
    *components = vdivq_f64(v20, v21);
    v29 = vdivq_f64(vcvtq_f64_u64(v19), v21);
    v22 = CGColorSpaceCreateDeviceRGB();
    v23 = CGColorCreate(v22, components);
    CGImageSetProperty();
    CGColorSpaceRelease(v22);
    CGColorRelease(v23);
  }

LABEL_24:
  CGDataProviderRelease(v7);
  v26 = *MEMORY[0x1E69E9840];
  return v15;
}

void release_munmap(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = (a2 - v5);
  munlock((a2 - v5), v5 + a3);
  munmap(v6, v5 + a3);

  free(a1);
}

uint64_t format_bitmapinfo(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return dword_195EA8950[a1];
  }
}

void *_CPLog(uint64_t a1, const void *a2, uint64_t a3, const __CFString *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  _CPLog_os_log_shim(v9, a1);
  if (os_log_shim_legacy_logging_enabled())
  {
    _logV(a1, a2, 0, 0, 0, a3, a4, &a9);
  }

  return _releaseObfuscatedStrings();
}

uint64_t _CPLog_os_log_shim(uint64_t a1, unsigned int a2)
{
  if (a2 <= 7)
  {
    v2 = _CPLog_os_trace_type_map[a2];
  }

  return os_log_shim_with_CFString();
}

void _logV(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7, va_list a8)
{
  v13 = _settingsForFacility(a2);
  v14 = v13;
  atomic_store(1u, (v13 + 165));
  explicit = atomic_load_explicit((v13 + 64), memory_order_acquire);
  v16 = atomic_load_explicit((v13 + 72), memory_order_acquire);
  v17 = atomic_load_explicit((v13 + 16), memory_order_acquire);
  v18 = atomic_load_explicit((v13 + 52), memory_order_acquire);
  if (atomic_load_explicit((v13 + 52), memory_order_acquire) == -3)
  {
    v19 = v13;
    do
    {
      v18 = atomic_load_explicit((v19 + 44), memory_order_acquire);
      if (v18 != -2)
      {
        break;
      }

      v19 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
      v18 = atomic_load_explicit((v19 + 52), memory_order_acquire);
    }

    while (atomic_load_explicit((v19 + 52), memory_order_acquire) == -3);
  }

  v20 = atomic_load_explicit((v13 + 56), memory_order_acquire);
  if (v20 == -3)
  {
    v21 = v13;
    do
    {
      v20 = atomic_load_explicit((v21 + 48), memory_order_acquire);
      if (v20 != -2)
      {
        break;
      }

      v21 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
      v20 = atomic_load_explicit((v21 + 56), memory_order_acquire);
    }

    while (v20 == -3);
  }

  if (v18 >= a1 || v20 >= a1)
  {
    v46 = v17;
    v47 = a6;
    Current = CFAbsoluteTimeGetCurrent();
    v23 = CFDateCreate(0, Current);
    v24 = CFStringCreateWithFormatAndArguments(0, 0, a7, a8);
    if (!v24)
    {
      v24 = CFStringCreateWithFormat(0, 0, @"Log message cannot be formatted. Format string: %@", a7);
    }

    if (v18 >= a1 && v20 >= a1 && !v16 && !explicit)
    {
      StandardConsoleLogLine = _createStandardConsoleLogLine(a1, a2, a3, a4, a5, v24);
      goto LABEL_18;
    }

    if (v18 < a1)
    {
      StandardConsoleLogLine = 0;
    }

    else
    {
      if (v16)
      {
        v27 = (*(v16 + 16))(v16, a1, v23, v46, a2, a3, a4, a5, v47, v24);
      }

      else
      {
        v27 = _createStandardConsoleLogLine(a1, a2, a3, a4, a5, v24);
      }

      StandardConsoleLogLine = v27;
    }

    if (v20 < a1)
    {
      goto LABEL_32;
    }

    if (explicit)
    {
      StandardFileLogLine = (*(explicit + 16))(explicit, a1, v23, v46, a2, a3, a4, a5, v47, v24);
      goto LABEL_28;
    }

    if (StandardConsoleLogLine)
    {
LABEL_18:
      StandardFileLogLine = _createStandardFileLogLine(v23, StandardConsoleLogLine);
LABEL_28:
      v28 = StandardFileLogLine;
      goto LABEL_33;
    }

    StandardConsoleLogLine = _createStandardConsoleLogLine(a1, a2, a3, a4, a5, v24);
    if (StandardConsoleLogLine)
    {
      v28 = _createStandardFileLogLine(v23, StandardConsoleLogLine);
      CFRelease(StandardConsoleLogLine);
      StandardConsoleLogLine = 0;
    }

    else
    {
LABEL_32:
      v28 = 0;
    }

LABEL_33:
    if (v23)
    {
      CFRelease(v23);
    }

    if (v24)
    {
      CFRelease(v24);
    }

    if (StandardConsoleLogLine)
    {
      v29 = *(v14 + 104);
        ;
      }

      v31 = i == 2;
      if (*(v14 + 88))
      {
        v33 = atomic_load_explicit((v14 + 88), memory_order_acquire);
        if (!v28)
        {
          v32 = 0;
          v52 = 0;
          v35 = 1;
          goto LABEL_47;
        }
      }

      else
      {
        v32 = 0;
        if (!v28)
        {
          v52 = 0;
          v35 = 1;
          goto LABEL_52;
        }

        v33 = 0;
      }
    }

    else
    {
      if (!v28)
      {
        _logV_cold_4();
        return;
      }

      v29 = 0;
      v31 = 0;
      v33 = 0;
    }

      ;
    }

    v52 = j == 2;
    v35 = 0;
    if (*(v14 + 96))
    {
      v32 = atomic_load_explicit((v14 + 96), memory_order_acquire);
    }

    else
    {
      v32 = 0;
    }

LABEL_47:
    if (!StandardConsoleLogLine || v33 && !(*(v33 + 16))(v33, a1, StandardConsoleLogLine, v47, 0))
    {
      goto LABEL_64;
    }

LABEL_52:
    CStringPtr = CFStringGetCStringPtr(StandardConsoleLogLine, 0x8000100u);
    UTF8StringFromString = CStringPtr;
    if (!CStringPtr)
    {
      UTF8StringFromString = _createUTF8StringFromString(StandardConsoleLogLine);
    }

    if (v31)
    {
      v38 = a1;
    }

    else
    {
      v38 = 5;
    }

    if (v29)
    {
      goto LABEL_61;
    }

    v50 = StandardConsoleLogLine;
    v39 = v28;
    v40 = asl_new(0);
    v29 = v40;
    v41 = 0;
    atomic_compare_exchange_strong((v14 + 104), &v41, v40);
    if (v41)
    {
      MEMORY[0x19A8C24B0](v40);
      v29 = v41;
    }

    v28 = v39;
    StandardConsoleLogLine = v50;
    if (v29)
    {
LABEL_61:
      if (_aslClient_once != -1)
      {
        _logV_cold_1();
      }

      asl_log(_aslClient_client, v29, v38, "%s", UTF8StringFromString);
      if (CStringPtr)
      {
LABEL_64:
        if (v35)
        {
          goto LABEL_77;
        }

LABEL_68:
        if (v32 && !(*(v32 + 16))(v32, a1, v28, v47, 0))
        {
          goto LABEL_77;
        }

        if (v52)
        {
          v42 = CFStringCreateWithFormat(0, 0, @"%@\n", v28);
          ExternalRepresentation = CFStringCreateExternalRepresentation(0, v42, 0x8000100u, 0);
          CFRelease(v42);
          if (ExternalRepresentation)
          {
LABEL_72:
            WorkSettingsFromSettings = _createWorkSettingsFromSettings(v14);
            atomic_store(0, (v14 + 164));
            if (_workGroup_once != -1)
            {
              _logV_cold_2();
            }

            v45 = _workGroup_group;
            if (_workQueue_once != -1)
            {
              _logV_cold_3();
            }

            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = ___performLog_block_invoke;
            block[3] = &__block_descriptor_48_e5_v8__0l;
            block[4] = WorkSettingsFromSettings;
            block[5] = ExternalRepresentation;
            dispatch_group_async(v45, _workQueue_queue, block);
LABEL_77:
            if (!StandardConsoleLogLine)
            {
              goto LABEL_79;
            }

            goto LABEL_78;
          }
        }

        else
        {
          ExternalRepresentation = CFStringCreateExternalRepresentation(0, v28, 0x8000100u, 0);
          if (ExternalRepresentation)
          {
            goto LABEL_72;
          }
        }

        CFLog();
        if (!StandardConsoleLogLine)
        {
LABEL_79:
          if (v28)
          {
            CFRelease(v28);
          }

          return;
        }

LABEL_78:
        CFRelease(StandardConsoleLogLine);
        goto LABEL_79;
      }
    }

    else
    {
      CFLog();
      if (CStringPtr)
      {
        goto LABEL_64;
      }
    }

    free(UTF8StringFromString);
    if (v35)
    {
      goto LABEL_78;
    }

    goto LABEL_68;
  }
}

void *_releaseObfuscatedStrings()
{
  if (_obfuscatedStringKey_onceToken != -1)
  {
    _releaseObfuscatedStrings_cold_1();
  }

  result = pthread_getspecific(_obfuscatedStringKey_key);
  if (result)
  {
    CFRelease(result);
    if (_obfuscatedStringKey_onceToken != -1)
    {
      _releaseObfuscatedStrings_cold_1();
    }

    v1 = _obfuscatedStringKey_key;

    return pthread_setspecific(v1, 0);
  }

  return result;
}

void *_CPLogLine(uint64_t a1, const void *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7, uint64_t a8, char a9)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  _CPLog_os_log_shim(v9, a1);
  if (os_log_shim_legacy_logging_enabled())
  {
    v17 = strrchr(a3, 47);
    if (v17)
    {
      v18 = (v17 + 1);
    }

    else
    {
      v18 = a3;
    }

    _logV(a1, a2, v18, a4, a5, a6, a7, &a9);
  }

  return _releaseObfuscatedStrings();
}

void *CPLogV(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7, va_list a8)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  _CPLog_os_log_shim(v8, a1);
  if (os_log_shim_legacy_logging_enabled())
  {
    _logV(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return _releaseObfuscatedStrings();
}

void CPLoggingAppendDataToLogFile(signed int a1, const void *a2, CFDataRef theData, void *a4)
{
  if (_init_once == -1)
  {
    if (!theData)
    {
LABEL_21:
      if (!a4)
      {
        return;
      }

      if (_callbackQueue_onceToken != -1)
      {
        CPLoggingAppendDataToLogFile_cold_4();
      }

      v12 = _callbackQueue_queue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __CPLoggingAppendDataToLogFile_block_invoke;
      v19[3] = &unk_1E7451210;
      v19[4] = a4;
      v13 = v19;
      goto LABEL_25;
    }
  }

  else
  {
    _CPLog_cold_1();
    if (!theData)
    {
      goto LABEL_21;
    }
  }

  if (!CFDataGetLength(theData))
  {
    goto LABEL_21;
  }

  v8 = _settingsForFacility(a2);
  v9 = v8;
  explicit = atomic_load_explicit((v8 + 56), memory_order_acquire);
  if (explicit == -3)
  {
    v11 = v8;
    do
    {
      explicit = atomic_load_explicit((v11 + 48), memory_order_acquire);
      if (explicit != -2)
      {
        break;
      }

      v11 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
      explicit = atomic_load_explicit((v11 + 56), memory_order_acquire);
    }

    while (explicit == -3);
  }

  if (explicit < a1)
  {
    if (!a4)
    {
      return;
    }

    if (_callbackQueue_onceToken != -1)
    {
      CPLoggingAppendDataToLogFile_cold_4();
    }

    v12 = _callbackQueue_queue;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __CPLoggingAppendDataToLogFile_block_invoke_2;
    v18[3] = &unk_1E7451210;
    v18[4] = a4;
    v13 = v18;
LABEL_25:
    dispatch_async(v12, v13);
    return;
  }

  Copy = CFDataCreateCopy(0, theData);
  if (a4)
  {
    a4 = _Block_copy(a4);
  }

  WorkSettingsFromSettings = _createWorkSettingsFromSettings(v9);
  atomic_store(0, (v9 + 164));
  if (_workGroup_once != -1)
  {
    _logV_cold_2();
  }

  v16 = _workGroup_group;
  if (_workQueue_once != -1)
  {
    _logV_cold_3();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CPLoggingAppendDataToLogFile_block_invoke_3;
  block[3] = &unk_1E7451238;
  block[5] = WorkSettingsFromSettings;
  block[6] = Copy;
  block[4] = a4;
  dispatch_group_async(v16, _workQueue_queue, block);
}

unint64_t _settingsForFacility(const void *a1)
{
  explicit = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
  if (a1)
  {
    explicit = atomic_load_explicit(explicit, memory_order_acquire);
    if (explicit)
    {
      while (1)
      {
        v3 = *(explicit + 8);
        if (v3)
        {
          v5.length = CFArrayGetCount(*(explicit + 8));
          v5.location = 0;
          if (CFArrayContainsValue(v3, v5, a1))
          {
            break;
          }
        }

        explicit = atomic_load_explicit(explicit, memory_order_acquire);
        if (!explicit)
        {
          return atomic_load_explicit(&_logFileSettings, memory_order_acquire);
        }
      }
    }

    else
    {
      return atomic_load_explicit(&_logFileSettings, memory_order_acquire);
    }
  }

  return explicit;
}

void *_createWorkSettingsFromSettings(uint64_t a1)
{
  v2 = malloc_type_calloc(0x50uLL, 1uLL, 0x52DA6380uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = atomic_load_explicit((a1 + 8), memory_order_acquire);
    v2[1] = atomic_load_explicit((a1 + 16), memory_order_acquire);
    v2[2] = atomic_load_explicit((a1 + 24), memory_order_acquire);
      ;
    }

    v2[3] = i;
      ;
    }

    *(v2 + 8) = j;
    v2[5] = atomic_load_explicit((a1 + 64), memory_order_acquire);
    v2[6] = atomic_load_explicit((a1 + 80), memory_order_acquire);
    explicit = atomic_load_explicit((a1 + 96), memory_order_acquire);
    v7 = *(a1 + 144);
    v2[7] = explicit;
    v2[8] = v7;
      ;
    }

    *(v2 + 72) = k == 2;
      ;
    }

    *(v2 + 73) = m == 2;
    *(v2 + 74) = atomic_load_explicit((a1 + 164), memory_order_acquire);
  }

  else
  {
    CFLog();
  }

  return v3;
}

void __CPLoggingAppendDataToLogFile_block_invoke_3(uint64_t a1)
{
  _workQueueAppendDataToLogFile(*(a1 + 40), *(a1 + 48));
  free(*(a1 + 40));
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 32))
  {
    if (_callbackQueue_onceToken != -1)
    {
      CPLoggingAppendDataToLogFile_cold_4();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CPLoggingAppendDataToLogFile_block_invoke_4;
    block[3] = &unk_1E7451210;
    block[4] = *(a1 + 32);
    dispatch_async(_callbackQueue_queue, block);
  }
}

void _workQueueAppendDataToLogFile(uint64_t a1, const __CFData *a2)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 64);
  if (!v3)
  {
    v31 = *a1;
LABEL_11:
    CFLog();
    return;
  }

  if (*(a1 + 24) < 1)
  {
    goto LABEL_12;
  }

  if (*v3)
  {
    v4 = MEMORY[0x19A8C17F0]();
    if (v4 < CFAbsoluteTimeGetCurrent())
    {
      v5 = **(a1 + 64);
      if (v5)
      {
        CFRelease(v5);
      }

      goto LABEL_8;
    }

LABEL_12:
    value = 0;
    goto LABEL_13;
  }

LABEL_8:
  Current = CFAbsoluteTimeGetCurrent();
  **(a1 + 64) = CFDateCreate(0, Current + 13.0);
  value = *(a1 + 24);
LABEL_13:
  v33 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    if (v7)
    {
      CFRelease(v7);
    }

    v9 = *(*(a1 + 64) + 8);
    if (!v9)
    {
      _workQueueRefreshUUIDForWorkSettings(a1);
      v9 = *(*(a1 + 64) + 8);
      if (!v9)
      {
        v7 = 0;
        goto LABEL_50;
      }
    }

    v10 = *(a1 + 74);
    v11 = *(a1 + 72);
    v12 = *(a1 + 32);
    v13 = _workQueueCopyConnection();
    if (!v13)
    {
      v7 = 0;
LABEL_47:
      v28 = *(a1 + 64);
      v29 = *(v28 + 8);
      if (v29)
      {
        CFRelease(v29);
        v28 = *(a1 + 64);
      }

      *(v28 + 8) = 0;
LABEL_50:
      v27 = 1;
      goto LABEL_51;
    }

    v14 = v13;
    UTF8StringFromString = _createUTF8StringFromString(v9);
    v38 = 0;
    v39 = &v38;
    v40 = 0x3052000000;
    v41 = __Block_byref_object_copy__1;
    v42 = __Block_byref_object_dispose__1;
    v43 = 0;
    Length = CFDataGetLength(a2);
    if (_workQueueCreateMemoryMapOfSize_currentSize >= Length && _workQueueCreateMemoryMapOfSize_currentXPCObject)
    {
      xpc_retain(_workQueueCreateMemoryMapOfSize_currentXPCObject);
    }

    else
    {
      if (_workQueueCreateMemoryMapOfSize_currentSize)
      {
        xpc_release(_workQueueCreateMemoryMapOfSize_currentXPCObject);
        _workQueueCreateMemoryMapOfSize_currentXPCObject = 0;
        munmap(_workQueueCreateMemoryMapOfSize_currentRegion, _workQueueCreateMemoryMapOfSize_currentSize);
      }

      v17 = mmap(0, Length, 3, 4098, -1, 0);
      _workQueueCreateMemoryMapOfSize_currentRegion = v17;
      if (v17 == -1)
      {
        v26 = __error();
        strerror(*v26);
        CFLog();
        v7 = 0;
        LODWORD(v18) = 0;
        _workQueueCreateMemoryMapOfSize_currentSize = 0;
        goto LABEL_42;
      }

      _workQueueCreateMemoryMapOfSize_currentSize = Length;
      _workQueueCreateMemoryMapOfSize_currentXPCObject = xpc_shmem_create(v17, Length);
      xpc_retain(_workQueueCreateMemoryMapOfSize_currentXPCObject);
    }

    v18 = _workQueueCreateMemoryMapOfSize_currentRegion;
    if (_workQueueCreateMemoryMapOfSize_currentRegion)
    {
      v19 = _workQueueCreateMemoryMapOfSize_currentXPCObject;
      BytePtr = CFDataGetBytePtr(a2);
      memcpy(v18, BytePtr, Length);
      v21 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v21, "message", 2);
      xpc_dictionary_set_string(v21, "uuid", UTF8StringFromString);
      xpc_dictionary_set_value(v21, "data", v19);
      xpc_dictionary_set_int64(v21, "length", Length);
      xpc_dictionary_set_BOOL(v21, "startnewfile", v10 != 0);
      xpc_dictionary_set_int64(v21, "sizecheck", value);
      xpc_dictionary_set_int64(v21, "maxfilecount", v12);
      xpc_dictionary_set_BOOL(v21, "wantscompressed", v11 != 0);
      xpc_release(v19);
      if (_waitForResponseQueue_once != -1)
      {
        _workQueueAppendDataToLogFile_cold_1();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___workQueueLogToFileUUID_block_invoke;
      block[3] = &unk_1E7450C88;
      block[4] = v14;
      block[5] = v21;
      dispatch_sync(_waitForResponseQueue_queue, block);
      if (_waitForResponseSema_once != -1)
      {
        _workQueueAppendDataToLogFile_cold_2();
      }

      dispatch_semaphore_wait(_waitForResponseSema_sema, 0xFFFFFFFFFFFFFFFFLL);
      xpc_release(v21);
      if (_waitForResponseQueue_once != -1)
      {
        _workQueueAppendDataToLogFile_cold_1();
      }

      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = ___workQueueLogToFileUUID_block_invoke_2;
      v36[3] = &unk_1E7450E18;
      v36[4] = &v38;
      dispatch_sync(_waitForResponseQueue_queue, v36);
      v22 = v39[5];
      if (v22)
      {
        v33 = xpc_dictionary_get_BOOL(v22, "didcreate");
        string = xpc_dictionary_get_string(v39[5], "newfilepath");
        v24 = string;
        if (string)
        {
          v25 = strlen(string);
          v7 = CFStringCreateWithBytes(0, v24, v25, 0x8000100u, 0);
        }

        else
        {
          v7 = 0;
        }

        LODWORD(v18) = xpc_dictionary_get_BOOL(v39[5], "retval");
        xpc_release(v39[5]);
      }

      else
      {
        CFLog();
        v7 = 0;
        LODWORD(v18) = 0;
      }
    }

    else
    {
      v7 = 0;
    }

LABEL_42:
    if (UTF8StringFromString)
    {
      free(UTF8StringFromString);
    }

    xpc_release(v14);
    _Block_object_dispose(&v38, 8);
    if (!v18)
    {
      goto LABEL_47;
    }

    v27 = *(*(a1 + 64) + 8) == 0;
LABEL_51:
    v8 += v27;
  }

  while (v27 && v8 < 3);
  if (v8 >= 3)
  {
    v32 = *a1;
    CFLog();
  }

  v30 = *(a1 + 48);
  if (v30 && v33)
  {
    (*(v30 + 16))(v30, v7);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void __CPLoggingAppendDataToLogFile_block_invoke_4(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);

  _Block_release(v2);
}

void CPLoggingSlurpFileIntoLogFile(signed int a1, const void *a2, const __CFString *a3, const __CFString *Copy, const __CFString *a5, void *a6)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v12 = _settingsForFacility(a2);
  v13 = v12;
  explicit = atomic_load_explicit((v12 + 56), memory_order_acquire);
  if (explicit == -3)
  {
    v15 = v12;
    do
    {
      explicit = atomic_load_explicit((v15 + 48), memory_order_acquire);
      if (explicit != -2)
      {
        break;
      }

      v15 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
      explicit = atomic_load_explicit((v15 + 56), memory_order_acquire);
    }

    while (explicit == -3);
  }

  if (explicit >= a1)
  {
    if (Copy)
    {
      Copy = CFStringCreateCopy(0, Copy);
    }

    if (a3)
    {
      a3 = CFStringCreateCopy(0, a3);
    }

    if (a5)
    {
      a5 = CFStringCreateCopy(0, a5);
    }

    if (a6)
    {
      a6 = _Block_copy(a6);
    }

    WorkSettingsFromSettings = _createWorkSettingsFromSettings(v13);
    atomic_store(0, (v13 + 164));
    if (_workGroup_once != -1)
    {
      _logV_cold_2();
    }

    v17 = _workGroup_group;
    if (_workQueue_once != -1)
    {
      _logV_cold_3();
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __CPLoggingSlurpFileIntoLogFile_block_invoke_2;
    v18[3] = &unk_1E7451260;
    v18[6] = Copy;
    v18[7] = a3;
    v18[8] = a5;
    v18[4] = a6;
    v18[5] = WorkSettingsFromSettings;
    dispatch_group_async(v17, _workQueue_queue, v18);
  }

  else if (a6)
  {
    if (_callbackQueue_onceToken != -1)
    {
      CPLoggingAppendDataToLogFile_cold_4();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CPLoggingSlurpFileIntoLogFile_block_invoke;
    block[3] = &unk_1E7451210;
    block[4] = a6;
    dispatch_async(_callbackQueue_queue, block);
  }
}

void __CPLoggingSlurpFileIntoLogFile_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 56);
  v36 = v2;
  v37 = *(a1 + 48);
  v35 = *(a1 + 64);
  if (*(v1 + 24) < 1)
  {
    goto LABEL_7;
  }

  if (**(v1 + 64))
  {
    v3 = MEMORY[0x19A8C17F0]();
    if (v3 < CFAbsoluteTimeGetCurrent())
    {
      v4 = **(v1 + 64);
      if (v4)
      {
        CFRelease(v4);
      }

      goto LABEL_6;
    }

LABEL_7:
    value = 0;
    goto LABEL_8;
  }

LABEL_6:
  Current = CFAbsoluteTimeGetCurrent();
  **(v1 + 64) = CFDateCreate(0, Current + 13.0);
  value = *(v1 + 24);
LABEL_8:
  v32 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(*(v1 + 64) + 8);
  v33 = v1;
  do
  {
    if (!v8)
    {
      _workQueueRefreshUUIDForWorkSettings(v1);
      v8 = *(*(v1 + 64) + 8);
      if (!v8)
      {
        goto LABEL_41;
      }
    }

    if (v6)
    {
      CFRelease(v6);
      v8 = *(*(v1 + 64) + 8);
    }

    v9 = *(v1 + 74);
    v10 = *(v1 + 72);
    v11 = *(v1 + 32);
    object = _workQueueCopyConnection();
    if (!object)
    {
      v6 = 0;
      goto LABEL_38;
    }

    UTF8StringFromString = _createUTF8StringFromString(v8);
    v13 = _createUTF8StringFromString(v37);
    v14 = open(v13, 0);
    v15 = _createUTF8StringFromString(v36);
    v16 = _createUTF8StringFromString(v35);
    v41 = 0;
    v42 = &v41;
    v43 = 0x3052000000;
    v44 = __Block_byref_object_copy__1;
    v45 = __Block_byref_object_dispose__1;
    v46 = 0;
    v17 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v17, "message", 4);
    xpc_dictionary_set_string(v17, "uuid", UTF8StringFromString);
    xpc_dictionary_set_fd(v17, "slurpeefd", v14);
    xpc_dictionary_set_string(v17, "prefix", v15);
    xpc_dictionary_set_string(v17, "suffix", v16);
    xpc_dictionary_set_BOOL(v17, "startnewfile", v9 != 0);
    xpc_dictionary_set_int64(v17, "sizecheck", value);
    xpc_dictionary_set_int64(v17, "maxfilecount", v11);
    xpc_dictionary_set_BOOL(v17, "wantscompressed", v10 != 0);
    if (_waitForResponseQueue_once != -1)
    {
      _workQueueAppendDataToLogFile_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___workQueueSlurpToFileUUID_block_invoke;
    block[3] = &unk_1E7450C88;
    block[4] = object;
    block[5] = v17;
    dispatch_sync(_waitForResponseQueue_queue, block);
    if (_waitForResponseSema_once != -1)
    {
      _workQueueAppendDataToLogFile_cold_2();
    }

    dispatch_semaphore_wait(_waitForResponseSema_sema, 0xFFFFFFFFFFFFFFFFLL);
    xpc_release(v17);
    if (_waitForResponseQueue_once != -1)
    {
      _workQueueAppendDataToLogFile_cold_1();
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = ___workQueueSlurpToFileUUID_block_invoke_2;
    v39[3] = &unk_1E7450E18;
    v39[4] = &v41;
    dispatch_sync(_waitForResponseQueue_queue, v39);
    v18 = v42[5];
    if (v18)
    {
      v32 = xpc_dictionary_get_BOOL(v18, "didcreate");
      string = xpc_dictionary_get_string(v42[5], "newfilepath");
      v6 = string;
      if (string)
      {
        v20 = strlen(string);
        v6 = CFStringCreateWithBytes(0, v6, v20, 0x8000100u, 0);
      }

      v21 = xpc_dictionary_get_BOOL(v42[5], "retval");
      xpc_release(v42[5]);
    }

    else
    {
      CFLog();
      v6 = 0;
      v21 = 0;
    }

    if (v14 != -1)
    {
      close(v14);
    }

    if (UTF8StringFromString)
    {
      free(UTF8StringFromString);
    }

    if (v13)
    {
      free(v13);
    }

    if (v15)
    {
      free(v15);
    }

    if (v16)
    {
      free(v16);
    }

    xpc_release(object);
    _Block_object_dispose(&v41, 8);
    if (!v21)
    {
      v1 = v33;
LABEL_38:
      v23 = *(v1 + 64);
      v24 = *(v23 + 8);
      if (v24)
      {
        CFRelease(v24);
        v23 = *(v1 + 64);
      }

      *(v23 + 8) = 0;
LABEL_41:
      v22 = 1;
      goto LABEL_42;
    }

    v1 = v33;
    v22 = *(*(v33 + 64) + 8) == 0;
LABEL_42:
    v7 += v22;
    if (!v22)
    {
      break;
    }

    v8 = 0;
  }

  while (v7 < 3);
  if (v7 >= 3)
  {
    v30 = *v1;
    CFLog();
  }

  v25 = *(v1 + 48);
  if (v25 && v32)
  {
    (*(v25 + 16))(v25, v6);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  free(*(a1 + 40));
  v26 = *(a1 + 48);
  if (v26)
  {
    CFRelease(v26);
  }

  v27 = *(a1 + 56);
  if (v27)
  {
    CFRelease(v27);
  }

  v28 = *(a1 + 64);
  if (v28)
  {
    CFRelease(v28);
  }

  v29 = *(a1 + 32);
  if (v29)
  {
    (*(v29 + 16))(v29);
    _Block_release(*(a1 + 32));
  }
}

void *_CPLogObfusc(void *a1)
{
  v1 = _shouldObfuscate;
  LOBYTE(v1) = atomic_load_explicit(_shouldObfuscate, memory_order_acquire);
  if (v1)
  {
    return _obfuscatedRepresentation(a1);
  }

  return a1;
}

const void *_obfuscatedRepresentation(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (objc_opt_respondsToSelector())
    {
      v3 = CFRetain([a1 CPSafeDescription]);
      if (!v3)
      {
        goto LABEL_28;
      }

LABEL_21:
      if (_obfuscatedStringKey_onceToken != -1)
      {
        _obfuscatedRepresentation_cold_2();
      }

      Mutable = pthread_getspecific(_obfuscatedStringKey_key);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        if (_obfuscatedStringKey_onceToken != -1)
        {
          _obfuscatedRepresentation_cold_2();
        }

        pthread_setspecific(_obfuscatedStringKey_key, Mutable);
      }

      CFArrayAppendValue(Mutable, v3);
      CFRelease(v3);
      goto LABEL_28;
    }

    if (objc_opt_respondsToSelector())
    {
      v3 = _obfuscatedRepresentation([a1 CPObfuscatedDescriptionObject]);
    }

    else
    {
      v4 = CFGetTypeID(a1);
      if (v4 == CFNumberGetTypeID())
      {
        if (_obfuscatedRepresentation_onceToken != -1)
        {
          _obfuscatedRepresentation_cold_1();
        }

        StringWithNumber = CFNumberFormatterCreateStringWithNumber(0, _obfuscatedRepresentation_numberFormatter, a1);
      }

      else
      {
        StringWithNumber = CFRetain([a1 description]);
      }

      v6 = StringWithNumber;
      if (StringWithNumber)
      {
        UTF8StringFromString = _createUTF8StringFromString(StringWithNumber);
        if (UTF8StringFromString)
        {
          v8 = UTF8StringFromString;
          memset(&v16, 0, sizeof(v16));
          CC_SHA1_Init(&v16);
          CC_SHA1_Update(&v16, &_createHashRepresentationOfString_seed, 4u);
          v9 = strlen(v8);
          CC_SHA1_Update(&v16, v8, v9);
          CC_SHA1_Final(md, &v16);
          v10 = 0;
          bytes[0] = 91;
          v11 = v18;
          do
          {
            v12 = md[v10];
            *(v11 - 1) = _createHashRepresentationOfString_hexNibble[v12 >> 4];
            *v11 = _createHashRepresentationOfString_hexNibble[v12 & 0xF];
            v11 += 2;
            ++v10;
          }

          while (v10 != 4);
          *(v11 - 1) = 93;
          v3 = CFStringCreateWithBytes(0, bytes, 10, 0x8000100u, 0);
          free(v8);
        }

        else
        {
          v3 = 0;
        }

        CFRelease(v6);
        if (!v3)
        {
          goto LABEL_28;
        }

        goto LABEL_21;
      }

      v3 = 0;
    }

LABEL_28:
    [v2 drain];
    goto LABEL_29;
  }

  v3 = 0;
LABEL_29:
  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

void CPLoggingAddCustomLogConfiguration(const __CFArray *a1, CFDictionaryRef theDict)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  if (CFDictionaryContainsKey(theDict, @"logName"))
  {
    cf = CFDictionaryGetValue(theDict, @"logName");
  }

  else
  {
    cf = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"logDirectory"))
  {
    Value = CFDictionaryGetValue(theDict, @"logDirectory");
  }

  else
  {
    Value = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"maxLogFileSize"))
  {
    v3 = CFDictionaryGetValue(theDict, @"maxLogFileSize");
  }

  else
  {
    v3 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"maxLogFileCount"))
  {
    v4 = CFDictionaryGetValue(theDict, @"maxLogFileCount");
  }

  else
  {
    v4 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"wantsCompressedFiles"))
  {
    BOOLean = CFDictionaryGetValue(theDict, @"wantsCompressedFiles");
  }

  else
  {
    BOOLean = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"consoleUsesRealLevels"))
  {
    v41 = CFDictionaryGetValue(theDict, @"consoleUsesRealLevels");
  }

  else
  {
    v41 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"maxConsoleLevel"))
  {
    v5 = CFDictionaryGetValue(theDict, @"maxConsoleLevel");
  }

  else
  {
    v5 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"maxLogFileLevel"))
  {
    v6 = CFDictionaryGetValue(theDict, @"maxLogFileLevel");
  }

  else
  {
    v6 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"consoleLevelDefaultsDomain"))
  {
    v34 = CFDictionaryGetValue(theDict, @"consoleLevelDefaultsDomain");
  }

  else
  {
    v34 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"consoleLevelDefaultsKey"))
  {
    v40 = CFDictionaryGetValue(theDict, @"consoleLevelDefaultsKey");
  }

  else
  {
    v40 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"logFileLevelDefaultsDomain"))
  {
    v33 = CFDictionaryGetValue(theDict, @"logFileLevelDefaultsDomain");
  }

  else
  {
    v33 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"logFileLevelDefaultsKey"))
  {
    v37 = CFDictionaryGetValue(theDict, @"logFileLevelDefaultsKey");
  }

  else
  {
    v37 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"enableNewlines"))
  {
    v35 = CFDictionaryGetValue(theDict, @"enableNewlines");
  }

  else
  {
    v35 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"createFileLogFormatBlock"))
  {
    v7 = CFDictionaryGetValue(theDict, @"createFileLogFormatBlock");
  }

  else
  {
    v7 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"createConsoleLogFormatBlock"))
  {
    v8 = CFDictionaryGetValue(theDict, @"createConsoleLogFormatBlock");
  }

  else
  {
    v8 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"didCreateNewFileBlock"))
  {
    v9 = CFDictionaryGetValue(theDict, @"didCreateNewFileBlock");
  }

  else
  {
    v9 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"willLogToConsoleBlock"))
  {
    v10 = CFDictionaryGetValue(theDict, @"willLogToConsoleBlock");
  }

  else
  {
    v10 = 0;
  }

  if (CFDictionaryContainsKey(theDict, @"willLogToFileBlock"))
  {
    v11 = CFDictionaryGetValue(theDict, @"willLogToFileBlock");
    if (v7)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v11 = 0;
    if (v7)
    {
      goto LABEL_60;
    }
  }

  if (!CFDictionaryContainsKey(theDict, @"createLogFormatBlock"))
  {
    v7 = 0;
    if (v8)
    {
      goto LABEL_66;
    }

    goto LABEL_61;
  }

  v7 = CFDictionaryGetValue(theDict, @"createLogFormatBlock");
LABEL_60:
  if (v8)
  {
    goto LABEL_66;
  }

LABEL_61:
  if (CFDictionaryContainsKey(theDict, @"createLogFormatBlock"))
  {
    v8 = CFDictionaryGetValue(theDict, @"createLogFormatBlock");
  }

  else
  {
    v8 = 0;
  }

LABEL_66:
  valuePtr = 10485760;
  if (v3)
  {
    CFNumberGetValue(v3, kCFNumberSInt64Type, &valuePtr);
  }

  v46 = -1;
  if (v4)
  {
    CFNumberGetValue(v4, kCFNumberSInt32Type, &v46);
  }

  v45 = 5;
  if (v5)
  {
    CFNumberGetValue(v5, kCFNumberSInt32Type, &v45);
  }

  v44 = -1;
  if (v6)
  {
    CFNumberGetValue(v6, kCFNumberSInt32Type, &v44);
  }

  DefaultSettings = _createDefaultSettings();
  if (DefaultSettings)
  {
    v13 = DefaultSettings;
    *(DefaultSettings + 19) = 0;
    *(DefaultSettings + 1) = CFArrayCreateCopy(0, a1);
    if (cf)
    {
      DefaultLogFileName = CFRetain(cf);
    }

    else
    {
      DefaultLogFileName = _createDefaultLogFileName();
    }

    *(v13 + 16) = DefaultLogFileName;
    if (Value)
    {
      v15 = Value;
    }

    else
    {
      v15 = @"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs";
    }

    v16 = CFRetain(v15);
    v17 = valuePtr;
    *(v13 + 24) = v16;
    *(v13 + 32) = v17;
    v18 = v45;
    *(v13 + 40) = v46;
    *(v13 + 44) = v18;
    *(v13 + 48) = v44;
    v19 = v34;
    if (v34)
    {
      v19 = CFRetain(v34);
    }

    *(v13 + 112) = v19;
    if (v40)
    {
      v20 = CFRetain(v40);
    }

    else
    {
      v20 = 0;
    }

    *(v13 + 120) = v20;
    v21 = v33;
    if (v33)
    {
      v21 = CFRetain(v33);
    }

    *(v13 + 128) = v21;
    if (v37)
    {
      v22 = CFRetain(v37);
    }

    else
    {
      v22 = 0;
    }

    *(v13 + 136) = v22;
    if (v7)
    {
      v23 = _Block_copy(v7);
    }

    else
    {
      v23 = 0;
    }

    *(v13 + 64) = v23;
    if (v8)
    {
      v24 = _Block_copy(v8);
    }

    else
    {
      v24 = 0;
    }

    *(v13 + 72) = v24;
    if (v9)
    {
      v25 = _Block_copy(v9);
    }

    else
    {
      v25 = 0;
    }

    *(v13 + 80) = v25;
    if (v10)
    {
      v26 = _Block_copy(v10);
    }

    else
    {
      v26 = 0;
    }

    *(v13 + 88) = v26;
    if (v11)
    {
      v27 = _Block_copy(v11);
    }

    else
    {
      v27 = 0;
    }

    *(v13 + 96) = v27;
    if (BOOLean)
    {
      if (CFBooleanGetValue(BOOLean))
      {
        v28 = 2;
      }

      else
      {
        v28 = 1;
      }
    }

    else
    {
      v28 = 0;
    }

    *(v13 + 152) = v28;
    if (v41)
    {
      if (CFBooleanGetValue(v41))
      {
        v29 = 2;
      }

      else
      {
        v29 = 1;
      }
    }

    else
    {
      v29 = 0;
    }

    *(v13 + 156) = v29;
    if (v35)
    {
      if (CFBooleanGetValue(v35))
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }
    }

    else
    {
      v30 = 0;
    }

    *(v13 + 160) = v30;
    v31 = &_logFileSettings;
    for (i = atomic_load_explicit(&_logFileSettings, memory_order_acquire); i; i = atomic_load_explicit(i, memory_order_acquire))
    {
      v31 = i;
    }

    atomic_store(v13, v31);
    if (v40 | v37 && _startObservingDefaultChanges_once != -1)
    {
      CPLoggingAddCustomLogConfiguration_cold_2();
    }

    if (_recomputeQueue_onceToken != -1)
    {
      CPLoggingAddCustomLogConfiguration_cold_3();
    }

    dispatch_sync(_recomputeQueue_queue, &__block_literal_global_8);
    if (_configurationQueue_once != -1)
    {
      CPLoggingAddCustomLogConfiguration_cold_4();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CPLoggingAddCustomLogConfiguration_block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v13;
    dispatch_sync(_configurationQueue_queue, block);
  }

  else
  {
    CFLog();
  }
}

char *_createDefaultSettings()
{
  v0 = malloc_type_calloc(0xA8uLL, 1uLL, 0xE7BF5583uLL);
  v1 = v0;
  if (v0)
  {
    *(v0 + 4) = 10485760;
    *(v0 + 40) = xmmword_195EA8970;
    *(v0 + 14) = -3;
    *(v0 + 19) = 0x100000002;
    *(v0 + 40) = 2;
    *(v0 + 18) = malloc_type_calloc(0x10uLL, 1uLL, 0x6AF00FB1uLL);
  }

  return v1;
}

CFStringRef _createDefaultLogFileName()
{
  v0 = getprogname();
  if (v0)
  {
    v1 = v0;
    v2 = strlen(v0);

    return CFStringCreateWithBytes(0, v1, v2, 0x8000100u, 0);
  }

  else
  {
    v4 = getpid();
    return CFStringCreateWithFormat(0, 0, @"pid_%d", v4);
  }
}

void _recomputeQueueRecomputeMaxAcceptedLevel()
{
  explicit = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
  if (explicit)
  {
    v1 = -1;
    do
    {
      v2 = atomic_load_explicit((explicit + 56), memory_order_acquire);
      if (v2 == -3)
      {
        v3 = explicit;
        do
        {
          v2 = atomic_load_explicit((v3 + 48), memory_order_acquire);
          if (v2 != -2)
          {
            break;
          }

          v3 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
          v2 = atomic_load_explicit((v3 + 56), memory_order_acquire);
        }

        while (v2 == -3);
      }

      if (v2 > v1)
      {
        v1 = v2;
      }

      v4 = atomic_load_explicit((explicit + 52), memory_order_acquire);
      if (atomic_load_explicit((explicit + 52), memory_order_acquire) == -3)
      {
        v5 = explicit;
        do
        {
          v4 = atomic_load_explicit((v5 + 44), memory_order_acquire);
          if (v4 != -2)
          {
            break;
          }

          v5 = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
          v4 = atomic_load_explicit((v5 + 52), memory_order_acquire);
        }

        while (atomic_load_explicit((v5 + 52), memory_order_acquire) == -3);
      }

      if (v4 > v1)
      {
        v1 = v4;
      }

      explicit = atomic_load_explicit(explicit, memory_order_acquire);
    }

    while (explicit);
  }

  else
  {
    v1 = -1;
  }

  atomic_store(v1, &_CPLoggingMaxAcceptedLevel);
}

void _configurationQueueRereadDefaultsForSetting(uint64_t a1)
{
  explicit = atomic_load_explicit((a1 + 112), memory_order_acquire);
  v3 = atomic_load_explicit((a1 + 120), memory_order_acquire);
  v4 = atomic_load_explicit((a1 + 128), memory_order_acquire);
  v5 = atomic_load_explicit((a1 + 136), memory_order_acquire);
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    DefaultsValue = _configurationQueueReadDefaultsValue(v4, v5);
    goto LABEL_6;
  }

  v6 = _configurationQueueReadDefaultsValue(explicit, v3);
  v7 = v6;
  if (v5)
  {
    DefaultsValue = _configurationQueueReadDefaultsValue(v4, v5);
    atomic_store(v7, (a1 + 52));
LABEL_6:
    atomic_store(DefaultsValue, (a1 + 56));
    goto LABEL_8;
  }

  atomic_store(v6, (a1 + 52));
LABEL_8:
  if (_recomputeQueue_onceToken != -1)
  {
    _configurationQueueRereadDefaultsForSetting_cold_1();
  }

  v9 = _recomputeQueue_queue;

  dispatch_async(v9, &__block_literal_global_263);
}

BOOL CPLoggingIsFacilityDefined(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v2 = _settingsForFacility(a1);
  return v2 != atomic_load_explicit(&_logFileSettings, memory_order_acquire);
}

BOOL CPLoggingFlush(dispatch_time_t timeout)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  if (_workGroup_once != -1)
  {
    _logV_cold_2();
  }

  return dispatch_group_wait(_workGroup_group, timeout) == 0;
}

void CPLoggingFlushWithCompletion(uint64_t a1, uint64_t a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CPLoggingFlushWithCompletion_block_invoke;
  v5[3] = &unk_1E7451288;
  v5[4] = a2;
  v5[5] = a1;
  dispatch_async(global_queue, v5);
}

uint64_t __CPLoggingFlushWithCompletion_block_invoke(uint64_t a1)
{
  CPLoggingFlush(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void CPLoggingStartNewLogFile(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v2 = _settingsForFacility(a1);
  WorkSettingsFromSettings = _createWorkSettingsFromSettings(v2);
  atomic_store(0, (v2 + 164));
  if (WorkSettingsFromSettings)
  {
    v4 = WorkSettingsFromSettings;
    if (_workGroup_once != -1)
    {
      _logV_cold_2();
    }

    v5 = _workGroup_group;
    if (_workQueue_once != -1)
    {
      _logV_cold_3();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __CPLoggingStartNewLogFile_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = v4;
    dispatch_group_async(v5, _workQueue_queue, block);
  }
}

void __CPLoggingStartNewLogFile_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = *(a1 + 32);
  v5 = *(v4[8] + 8);
  do
  {
    if (!v5)
    {
      _workQueueRefreshUUIDForWorkSettings(v4);
      v5 = *(*(*(a1 + 32) + 64) + 8);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    if (v2)
    {
      CFRelease(v2);
      v5 = *(*(*(a1 + 32) + 64) + 8);
    }

    v6 = _workQueueCopyConnection();
    if (v6)
    {
      v7 = v6;
      UTF8StringFromString = _createUTF8StringFromString(v5);
      v20 = 0;
      v21 = &v20;
      v22 = 0x3052000000;
      v23 = __Block_byref_object_copy__1;
      v24 = __Block_byref_object_dispose__1;
      v25 = 0;
      v9 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_int64(v9, "message", 3);
      xpc_dictionary_set_string(v9, "uuid", UTF8StringFromString);
      if (_waitForResponseQueue_once != -1)
      {
        _workQueueAppendDataToLogFile_cold_1();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___workQueueStartNewLogFile_block_invoke;
      block[3] = &unk_1E7450C88;
      block[4] = v7;
      block[5] = v9;
      dispatch_sync(_waitForResponseQueue_queue, block);
      if (_waitForResponseSema_once != -1)
      {
        _workQueueAppendDataToLogFile_cold_2();
      }

      dispatch_semaphore_wait(_waitForResponseSema_sema, 0xFFFFFFFFFFFFFFFFLL);
      xpc_release(v9);
      if (_waitForResponseQueue_once != -1)
      {
        _workQueueAppendDataToLogFile_cold_1();
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = ___workQueueStartNewLogFile_block_invoke_2;
      v18[3] = &unk_1E7450E18;
      v18[4] = &v20;
      dispatch_sync(_waitForResponseQueue_queue, v18);
      v10 = v21[5];
      if (v10)
      {
        string = xpc_dictionary_get_string(v10, "newfilepath");
        v2 = string;
        if (string)
        {
          v12 = strlen(string);
          v2 = CFStringCreateWithBytes(0, v2, v12, 0x8000100u, 0);
        }

        v13 = xpc_dictionary_get_BOOL(v21[5], "retval");
        xpc_release(v21[5]);
        if (UTF8StringFromString)
        {
          goto LABEL_17;
        }
      }

      else
      {
        CFLog();
        v2 = 0;
        v13 = 0;
        if (UTF8StringFromString)
        {
LABEL_17:
          free(UTF8StringFromString);
        }
      }

      xpc_release(v7);
      _Block_object_dispose(&v20, 8);
      if (v13)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v2 = 0;
LABEL_19:
    CFRelease(*(*(*(a1 + 32) + 64) + 8));
    *(*(*(a1 + 32) + 64) + 8) = 0;
LABEL_20:
    v5 = 0;
    v4 = *(a1 + 32);
    if (*(v4[8] + 8))
    {
      v14 = 1;
    }

    else
    {
      v14 = ++v3 >= 3;
    }
  }

  while (!v14);
  if (v3 >= 3)
  {
    v17 = *v4;
    CFLog();
    v4 = *(a1 + 32);
  }

  v15 = v4[6];
  if (v15)
  {
    v16 = v2 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    (*(v15 + 16))(v4[6], v2);
    goto LABEL_37;
  }

  if (v2)
  {
LABEL_37:
    CFRelease(v2);
    v4 = *(a1 + 32);
  }

  free(v4);
}

void sub_195E9434C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _workQueueRefreshUUIDForWorkSettings(uint64_t a1)
{
  v2 = *(a1 + 8);
  UTF8StringFromString = _createUTF8StringFromString(*(a1 + 16));
  v4 = _createUTF8StringFromString(v2);
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = 0;
  v5 = _workQueueCopyConnection();
  if (v5)
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v6, "message", 1);
    xpc_dictionary_set_string(v6, "folder", UTF8StringFromString);
    xpc_dictionary_set_string(v6, "basename", v4);
    if (_waitForResponseQueue_once != -1)
    {
      _workQueueAppendDataToLogFile_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___workQueueCopyFileUUIDForLogPath_block_invoke;
    block[3] = &unk_1E7450C88;
    block[4] = v5;
    block[5] = v6;
    dispatch_sync(_waitForResponseQueue_queue, block);
    if (_waitForResponseSema_once != -1)
    {
      _workQueueAppendDataToLogFile_cold_2();
    }

    dispatch_semaphore_wait(_waitForResponseSema_sema, 0xFFFFFFFFFFFFFFFFLL);
    xpc_release(v6);
    if (_waitForResponseQueue_once != -1)
    {
      _workQueueAppendDataToLogFile_cold_1();
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___workQueueCopyFileUUIDForLogPath_block_invoke_2;
    v13[3] = &unk_1E7450E18;
    v13[4] = &v15;
    dispatch_sync(_waitForResponseQueue_queue, v13);
    v7 = v16[5];
    if (v7)
    {
      string = xpc_dictionary_get_string(v7, "uuid");
      v9 = string;
      if (string)
      {
        v10 = strlen(string);
        v9 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 1u);
      }

      xpc_release(v16[5]);
      if (UTF8StringFromString)
      {
        goto LABEL_12;
      }

      goto LABEL_13;
    }

    CFLog();
  }

  v9 = 0;
  if (UTF8StringFromString)
  {
LABEL_12:
    free(UTF8StringFromString);
  }

LABEL_13:
  if (v4)
  {
    free(v4);
  }

  if (v5)
  {
    xpc_release(v5);
  }

  _Block_object_dispose(&v15, 8);
  v11 = *(a1 + 64);
  v12 = *(v11 + 8);
  if (v12)
  {
    CFRelease(v12);
    v11 = *(a1 + 64);
  }

  *(v11 + 8) = v9;
}

void sub_195E9461C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t CPLoggingStartNewLogFileNextLine(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  result = _settingsForFacility(a1);
  atomic_store(1u, (result + 164));
  return result;
}

void CPLoggingSetCustomLogName(const void *a1, const void *a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v4 = _settingsForFacility(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v5 = atomic_exchange_explicit((v4 + 16), a2, memory_order_release);
  v6 = v4 + 165;
  LOBYTE(v6) = atomic_load_explicit((v4 + 165), memory_order_acquire);
  if (v5)
  {
    if (v6)
    {
      atomic_load_explicit((v4 + 8), memory_order_acquire);
      CFLog();
    }

    else
    {
      CFRelease(v5);
    }
  }

  if (_workQueue_once != -1)
  {
    _logV_cold_3();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___setLogName_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v4;
  dispatch_async(_workQueue_queue, block);
}

const void *CPLoggingCopyCustomLogName(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  explicit = atomic_load_explicit((_settingsForFacility(a1) + 16), memory_order_acquire);
  if (explicit)
  {
    CFRetain(explicit);
  }

  return explicit;
}

void CPLoggingSetCustomLogDirectory(const void *a1, const void *a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v4 = _settingsForFacility(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  v5 = atomic_exchange_explicit((v4 + 24), a2, memory_order_release);
  v6 = v4 + 165;
  LOBYTE(v6) = atomic_load_explicit((v4 + 165), memory_order_acquire);
  if (v5)
  {
    if (v6)
    {
      atomic_load_explicit((v4 + 8), memory_order_acquire);
      CFLog();
    }

    else
    {
      CFRelease(v5);
    }
  }

  if (_workQueue_once != -1)
  {
    _logV_cold_3();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___setLogDirectory_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v4;
  dispatch_async(_workQueue_queue, block);
}

const void *CPLoggingCopyCustomLogDirectory(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  explicit = atomic_load_explicit((_settingsForFacility(a1) + 24), memory_order_acquire);
  if (explicit)
  {
    CFRetain(explicit);
  }

  return explicit;
}

unint64_t CPLoggingSetCustomMaxLogFileSize(const void *a1, unint64_t a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  result = _settingsForFacility(a1);
  atomic_store(a2, (result + 32));
  return result;
}

unint64_t CPLoggingCustomMaxLogFileSize(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

    ;
  }

  return result;
}

unint64_t CPLoggingSetCustomMaxLogFileCount(const void *a1, unsigned int a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  result = _settingsForFacility(a1);
  atomic_store(a2, (result + 40));
  return result;
}

uint64_t CPLoggingCustomMaxLogFileCount(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

    ;
  }

  return result;
}

unint64_t CPLoggingSetCustomWantsCompressedFiles(const void *a1, int a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  result = _settingsForFacility(a1);
  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  atomic_store(v5, (result + 152));
  return result;
}

BOOL CPLoggingCustomWantsCompressedFiles(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

    ;
  }

  return i == 2;
}

unint64_t CPLoggingSetCustomConsoleUsesRealLevels(const void *a1, int a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  result = _settingsForFacility(a1);
  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  atomic_store(v5, (result + 156));
  return result;
}

BOOL CPLoggingCustomConsoleUsesRealLevels(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

    ;
  }

  return i == 2;
}

void CPLoggingSetCustomMaxConsoleLevel(const void *a1, unsigned int a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  if (atomic_exchange_explicit((_settingsForFacility(a1) + 44), a2, memory_order_release) != a2)
  {
    if (_recomputeQueue_onceToken != -1)
    {
      _configurationQueueRereadDefaultsForSetting_cold_1();
    }

    v4 = _recomputeQueue_queue;

    dispatch_sync(v4, &__block_literal_global_288);
  }
}

uint64_t CPLoggingCustomMaxConsoleLevel(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  explicit = _settingsForFacility(a1);
  for (result = atomic_load_explicit((explicit + 52), memory_order_acquire); atomic_load_explicit((explicit + 52), memory_order_acquire) == -3; result = atomic_load_explicit((explicit + 52), memory_order_acquire))
  {
    result = atomic_load_explicit((explicit + 44), memory_order_acquire);
    if (result != -2)
    {
      break;
    }

    explicit = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
  }

  return result;
}

void CPLoggingSetCustomMaxLogFileLevel(const void *a1, unsigned int a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  if (atomic_exchange_explicit((_settingsForFacility(a1) + 48), a2, memory_order_release) != a2)
  {
    if (_recomputeQueue_onceToken != -1)
    {
      _configurationQueueRereadDefaultsForSetting_cold_1();
    }

    v4 = _recomputeQueue_queue;

    dispatch_sync(v4, &__block_literal_global_290);
  }
}

uint64_t CPLoggingCustomMaxLogFileLevel(const void *a1)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  explicit = _settingsForFacility(a1);
  for (result = atomic_load_explicit((explicit + 56), memory_order_acquire); result == -3; result = atomic_load_explicit((explicit + 56), memory_order_acquire))
  {
    result = atomic_load_explicit((explicit + 48), memory_order_acquire);
    if (result != -2)
    {
      break;
    }

    explicit = atomic_load_explicit(&_logFileSettings, memory_order_acquire);
  }

  return result;
}

void _setCustomCreateLogFormatBlock(const void *a1, const void *a2, int a3, int a4)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v8 = _settingsForFacility(a1);
  if (a3)
  {
    v9 = a2 ? _Block_copy(a2) : 0;
    v10 = atomic_exchange_explicit((v8 + 64), v9, memory_order_release);
    v11 = v8 + 165;
    LOBYTE(v11) = atomic_load_explicit((v8 + 165), memory_order_acquire);
    if (v10)
    {
      if (!v11)
      {
        CFRelease(v10);
        if (!a4)
        {
          return;
        }

        goto LABEL_11;
      }

      atomic_load_explicit((v8 + 8), memory_order_acquire);
      CFLog();
    }
  }

  if (!a4)
  {
    return;
  }

LABEL_11:
  if (a2)
  {
    v12 = _Block_copy(a2);
  }

  else
  {
    v12 = 0;
  }

  v13 = atomic_exchange_explicit((v8 + 72), v12, memory_order_release);
  v14 = v8 + 165;
  LOBYTE(v14) = atomic_load_explicit((v8 + 165), memory_order_acquire);
  if (v13)
  {
    if (v14)
    {
      atomic_load_explicit((v8 + 8), memory_order_acquire);
      CFLog();
    }

    else
    {

      CFRelease(v13);
    }
  }
}

void CPLoggingSetCustomDidCreateNewFileBlock(const void *a1, const void *a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v4 = _settingsForFacility(a1);
  if (a2)
  {
    v5 = _Block_copy(a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = atomic_exchange_explicit((v4 + 80), v5, memory_order_release);
  v7 = v4 + 165;
  LOBYTE(v7) = atomic_load_explicit((v4 + 165), memory_order_acquire);
  if (v6)
  {
    if (v7)
    {
      atomic_load_explicit((v4 + 8), memory_order_acquire);
      CFLog();
    }

    else
    {

      CFRelease(v6);
    }
  }
}

void CPLoggingSetCustomWillLogToConsoleBlock(const void *a1, const void *a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v4 = _settingsForFacility(a1);
  if (a2)
  {
    v5 = _Block_copy(a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = atomic_exchange_explicit((v4 + 88), v5, memory_order_release);
  v7 = v4 + 165;
  LOBYTE(v7) = atomic_load_explicit((v4 + 165), memory_order_acquire);
  if (v6)
  {
    if (v7)
    {
      atomic_load_explicit((v4 + 8), memory_order_acquire);
      CFLog();
    }

    else
    {

      _Block_release(v6);
    }
  }
}

void CPLoggingSetCustomWillLogToLogFileBlock(const void *a1, const void *a2)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v4 = _settingsForFacility(a1);
  if (a2)
  {
    v5 = _Block_copy(a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = atomic_exchange_explicit((v4 + 96), v5, memory_order_release);
  v7 = v4 + 165;
  LOBYTE(v7) = atomic_load_explicit((v4 + 165), memory_order_acquire);
  if (v6)
  {
    if (v7)
    {
      atomic_load_explicit((v4 + 8), memory_order_acquire);
      CFLog();
    }

    else
    {

      _Block_release(v6);
    }
  }
}

void CPLoggingSetCustomConsoleLevelDefaults(const void *a1, const void *a2, const void *a3)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v7 = _settingsForFacility(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v8 = atomic_exchange_explicit((v7 + 120), a3, memory_order_release);
  LOBYTE(v3) = atomic_load_explicit((v7 + 165), memory_order_acquire);
  if (v8)
  {
    if (!v3)
    {
      CFRelease(v8);
      v9 = atomic_exchange_explicit((v7 + 112), a2, memory_order_release);
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    atomic_load_explicit((v7 + 8), memory_order_acquire);
    CFLog();
  }

  v9 = atomic_exchange_explicit((v7 + 112), a2, memory_order_release);
  if (v9)
  {
    if (v3)
    {
      atomic_load_explicit((v7 + 8), memory_order_acquire);
      CFLog();
      goto LABEL_15;
    }

LABEL_14:
    CFRelease(v9);
  }

LABEL_15:
  if (a3 && _startObservingDefaultChanges_once != -1)
  {
    CPLoggingSetCustomConsoleLevelDefaults_cold_2();
  }

  if (_configurationQueue_once != -1)
  {
    CPLoggingSetCustomConsoleLevelDefaults_cold_3();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CPLoggingSetCustomConsoleLevelDefaults_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v7;
  dispatch_async(_configurationQueue_queue, block);
}

void CPLoggingSetCustomLogFileLevelDefaults(const void *a1, const void *a2, const void *a3)
{
  if (_init_once != -1)
  {
    _CPLog_cold_1();
  }

  v7 = _settingsForFacility(a1);
  if (a2)
  {
    CFRetain(a2);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v8 = atomic_exchange_explicit((v7 + 136), a3, memory_order_release);
  LOBYTE(v3) = atomic_load_explicit((v7 + 165), memory_order_acquire);
  if (v8)
  {
    if (!v3)
    {
      CFRelease(v8);
      v9 = atomic_exchange_explicit((v7 + 128), a2, memory_order_release);
      if (!v9)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }

    atomic_load_explicit((v7 + 8), memory_order_acquire);
    CFLog();
  }

  v9 = atomic_exchange_explicit((v7 + 128), a2, memory_order_release);
  if (v9)
  {
    if (v3)
    {
      atomic_load_explicit((v7 + 8), memory_order_acquire);
      CFLog();
      goto LABEL_15;
    }

LABEL_14:
    CFRelease(v9);
  }

LABEL_15:
  if (a3 && _startObservingDefaultChanges_once != -1)
  {
    CPLoggingSetCustomConsoleLevelDefaults_cold_2();
  }

  if (_configurationQueue_once != -1)
  {
    CPLoggingSetCustomConsoleLevelDefaults_cold_3();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CPLoggingSetCustomLogFileLevelDefaults_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v7;
  dispatch_async(_configurationQueue_queue, block);
}

uint64_t ___init_block_invoke()
{
  _processName = _createDefaultLogFileName();
  _pid = getpid();
  DefaultSettings = _createDefaultSettings();
  if (DefaultSettings)
  {
    v1 = DefaultSettings;
    *(DefaultSettings + 2) = CFRetain(_processName);
    *(v1 + 24) = CFRetain(@"/var/mobile/Library/Logs/CrashReporter/DiagnosticLogs");
    atomic_store(v1, &_logFileSettings);
  }

  else
  {
    CFLog();
  }

  atexit(_flushAtExit);
  if (_configurationQueue_once != -1)
  {
    CPLoggingSetCustomConsoleLevelDefaults_cold_3();
  }

  dispatch_async(_configurationQueue_queue, &__block_literal_global_71);

  return _rereadObfuscationPreferences();
}

BOOL _flushAtExit()
{
  v0 = dispatch_time(0, 5000000000);

  return CPLoggingFlush(v0);
}

uint64_t _rereadObfuscationPreferences()
{
  CFPreferencesAppSynchronize(@".GlobalPreferences");
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"CPLoggingUnobfuscate", @".GlobalPreferences", &keyExistsAndHasValidFormat);
  result = CPIsInternalDevice();
  v2 = 0;
  if (!result)
  {
    if (AppBooleanValue)
    {
      v3 = keyExistsAndHasValidFormat == 0;
    }

    else
    {
      v3 = 1;
    }

    v2 = v3;
  }

  atomic_store(v2, _shouldObfuscate);
  return result;
}

__CFString *_createStandardConsoleLogLine(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"(");
  if (a1 <= 7)
  {
    CFStringAppendFormat(Mutable, 0, @"%@"), _createStandardConsoleLogLine_levelLabels[a1]);
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  CFStringAppend(Mutable, @"(Unknown)");
  if (a2)
  {
LABEL_5:
    CFStringAppendFormat(Mutable, 0, @" %@:", a2);
  }

LABEL_6:
  if (a3 && a4)
  {
    CFStringAppendFormat(Mutable, 0, @" <%s %s:%ld>", a3, a4, a5);
  }

  CFStringAppendFormat(Mutable, 0, @" %@", a6);
  return Mutable;
}

CFStringRef _createStandardFileLogLine(CFDateRef date, uint64_t a2)
{
  if (_logDateFormatter_once != -1)
  {
    _createStandardFileLogLine_cold_1();
  }

  StringWithDate = CFDateFormatterCreateStringWithDate(0, _logDateFormatter_dateFormatter, date);
  v5 = CFStringCreateWithFormat(0, 0, @"%@ %@[%d] %@", StringWithDate, _processName, _pid, a2);
  CFRelease(StringWithDate);
  return v5;
}

void ___logDateFormatter_block_invoke()
{
  v0 = CFDateFormatterCreate(0, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
  _logDateFormatter_dateFormatter = v0;

  CFDateFormatterSetFormat(v0, @"yyyy-MM-dd'T'HH:mm:ss.SSS");
}