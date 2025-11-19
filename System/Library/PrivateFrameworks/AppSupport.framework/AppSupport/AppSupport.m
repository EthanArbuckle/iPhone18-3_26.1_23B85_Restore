const void *CPDateFormatStringForFormatType(const void *a1)
{
  v81 = *MEMORY[0x1E69E9840];
  if (_RegisterForLocaleChangeNotificationIfNecessary_onceToken != -1)
  {
    CPDateFormatStringForFormatType_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v2 = CFLocaleCopyCurrent();
  if (!__LocaleDateFormats)
  {
    __LocaleDateFormats = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:{objc_msgSend(CPSharedResourcesDirectory(), "stringByAppendingPathComponent:", @"Library/Caches/DateFormats.plist"}];
    v6 = MEMORY[0x1E695E890];
    if (!__LocaleDateFormats)
    {
      goto LABEL_18;
    }

    VersionString = _CreateVersionString();
    v8 = *v6;
    v9 = CFPreferencesCopyAppValue(@"AppleICUForce12HourTime", *v6);
    v10 = CFPreferencesCopyAppValue(@"AppleICUForce24HourTime", v8);
    v11 = __LocaleDateFormats;
    v12 = MEMORY[0x19A8C1930](v2);
    if (!_CachedValueIsEqualToExpectedValue(v11, @"Locale", v12) || !_CachedValueIsEqualToExpectedValue(__LocaleDateFormats, @"Version", VersionString) || !_CachedValueIsEqualToExpectedValue(__LocaleDateFormats, @"AppleICUForce12HourTime", v9) || !_CachedValueIsEqualToExpectedValue(__LocaleDateFormats, @"AppleICUForce24HourTime", v10))
    {
      CFRelease(__LocaleDateFormats);
      __LocaleDateFormats = 0;
    }

    if (VersionString)
    {
      CFRelease(VersionString);
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (!__LocaleDateFormats)
    {
LABEL_18:
      v77 = xmmword_1E74509C0;
      v78 = *&off_1E74509D0;
      v79 = xmmword_1E74509E0;
      v80 = *off_1E74509F0;
      *values = xmmword_1E7450980;
      v74 = *&off_1E7450990;
      v75 = xmmword_1E74509A0;
      v76 = *&off_1E74509B0;
      __LocaleDateFormats = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v13 = CFDateFormatterCreate(0, v2, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
      v14 = CFDateFormatterCopyProperty(v13, *MEMORY[0x1E695E538]);
      v71 = a1;
      if (v14 || (v14 = CFDateFormatterCopyProperty(v13, *MEMORY[0x1E695E580])) != 0)
      {
        CFRelease(v14);
        v15 = 0;
      }

      else
      {
        v15 = 1;
      }

      Format = CFDateFormatterGetFormat(v13);
      value = CFRetain(Format);
      CFRelease(v13);
      v17 = CFDateFormatterCreate(0, v2, kCFDateFormatterMediumStyle, kCFDateFormatterNoStyle);
      v18 = CFDateFormatterGetFormat(v17);
      v19 = CFRetain(v18);
      CFRelease(v17);
      v20 = CFArrayCreate(0, values, 16, MEMORY[0x1E695E9C0]);
      v21 = MEMORY[0x19A8C17B0](0, v20, 0, v2);
      CFRelease(v20);
      Count = CFArrayGetCount(v21);
      if (Count >= 1)
      {
        v23 = Count;
        for (i = 0; i != v23; ++i)
        {
          v25 = __LocaleDateFormats;
          v26 = *(&off_1E7450900 + i);
          ValueAtIndex = CFArrayGetValueAtIndex(v21, i);
          CFDictionarySetValue(v25, v26, ValueAtIndex);
        }
      }

      CFRelease(v21);
      Length = CFStringGetLength(v19);
      MutableCopy = CFStringCreateMutableCopy(0, Length, v19);
      v82.location = 0;
      v82.length = Length;
      v30 = CFStringFindAndReplace(MutableCopy, @",", @" ", v82, 0);
      v83.location = 0;
      v83.length = Length;
      v31 = CFStringFindAndReplace(MutableCopy, @"/", @" ", v83, 0) + v30;
      v84.location = 0;
      v84.length = Length;
      v32 = CFStringFindAndReplace(MutableCopy, @"-", @" ", v84, 0);
      v85.location = 0;
      v85.length = Length;
      if (v31 + v32 + CFStringFindAndReplace(MutableCopy, @"  ", @" ", v85, 0) < 1)
      {
        CFRetain(v19);
        Copy = v19;
      }

      else
      {
        Copy = CFStringCreateCopy(0, MutableCopy);
      }

      CFRelease(MutableCopy);
      CFDictionarySetValue(__LocaleDateFormats, @"UIAbbreviatedDateFormatWithoutCommas", Copy);
      CFRelease(Copy);
      a1 = v71;
      if (v15)
      {
        CFDictionarySetValue(__LocaleDateFormats, @"UINoAMPMTimeFormat", value);
        v34 = CFDictionaryGetValue(__LocaleDateFormats, @"UIMinutelessTimeFormat");
        CFDictionarySetValue(__LocaleDateFormats, @"UIHourFormat", v34);
      }

      else
      {
        v35 = _StripAMPMAndCopy(value);
        CFDictionarySetValue(__LocaleDateFormats, @"UINoAMPMTimeFormat", v35);
        CFRelease(v35);
        v36 = CFDictionaryGetValue(__LocaleDateFormats, @"UIMinutelessTimeFormat");
        v37 = _StripAMPMAndCopy(v36);
        CFDictionarySetValue(__LocaleDateFormats, @"UIHourFormat", v37);
        CFRelease(v37);
      }

      CFDictionarySetValue(__LocaleDateFormats, @"UINotesFormatWithYear", v19);
      v38 = MEMORY[0x19A8C1930](v2);
      if (_CopyPathForLocaleOverrides_onceToken != -1)
      {
        CPDateFormatStringForFormatType_cold_2();
      }

      v39 = [_CopyPathForLocaleOverrides_appSupportBundle pathForResource:v38 ofType:@"plist" inDirectory:{@"DateFormats", v71}];
      if (!v39)
      {
        v62 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
        [v62 setObject:CFLocaleGetValue(v2 forKey:{*MEMORY[0x1E695E6F0]), *MEMORY[0x1E695D9B0]}];
        v63 = CFLocaleGetValue(v2, *MEMORY[0x1E695E6F8]);
        if (v63)
        {
          [v62 setObject:v63 forKey:*MEMORY[0x1E695D9E8]];
        }

        v64 = CFLocaleGetValue(v2, *MEMORY[0x1E695E6D0]);
        v65 = MEMORY[0x1E695D978];
        if (v64)
        {
          [v62 setObject:v64 forKey:*MEMORY[0x1E695D978]];
        }

        v66 = CFLocaleGetValue(v2, *MEMORY[0x1E695E6C0]);
        if (v66)
        {
          [v62 setObject:v66 forKey:@"calendar"];
        }

        v67 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v62];
        v39 = [_CopyPathForLocaleOverrides_appSupportBundle pathForResource:v67 ofType:@"plist" inDirectory:@"DateFormats"];
        if (v64 && !v39)
        {
          [v62 removeObjectForKey:*v65];
          v68 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v62];
          v39 = [_CopyPathForLocaleOverrides_appSupportBundle pathForResource:v68 ofType:@"plist" inDirectory:@"DateFormats"];
        }

        if (v66 && !v39)
        {
          [v62 removeObjectForKey:@"calendar"];
          if (v64)
          {
            [v62 setObject:v64 forKey:*v65];
          }

          v69 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v62];
          v39 = [_CopyPathForLocaleOverrides_appSupportBundle pathForResource:v69 ofType:@"plist" inDirectory:@"DateFormats"];
          if (v64 && !v39)
          {
            [v62 removeObjectForKey:*v65];
            v70 = [MEMORY[0x1E695DF58] localeIdentifierFromComponents:v62];
            v39 = [_CopyPathForLocaleOverrides_appSupportBundle pathForResource:v70 ofType:@"plist" inDirectory:@"DateFormats"];
          }
        }
      }

      v40 = v39;
      v41 = MEMORY[0x1E695E890];
      if (v40)
      {
        v42 = v40;
        v43 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v40];
        if (v43)
        {
          v44 = v43;
          CFDictionaryApplyFunction(v43, _AddOverrideToFormatsDictionary, __LocaleDateFormats);
          CFRelease(v44);
        }

        CFRelease(v42);
      }

      v45 = CFDictionaryGetValue(__LocaleDateFormats, @"UIAbbreviatedMonthDayFormat");
      if (v45)
      {
        v46 = v45;
        v47 = CFStringGetLength(v45);
        v48 = CFStringCreateMutableCopy(0, v47, v46);
        CFStringAppend(v48, @"   ");
        CFStringAppend(v48, value);
        CFDictionarySetValue(__LocaleDateFormats, @"UINotesDisplayFormat", v48);
        CFRelease(v48);
      }

      v49 = CFDictionaryGetValue(__LocaleDateFormats, @"UINotesFormatWithYear");
      if (v49)
      {
        v50 = v49;
        v51 = CFStringGetLength(v49);
        v52 = CFStringCreateMutableCopy(0, v51, v50);
        CFStringAppend(v52, @"   ");
        CFStringAppend(v52, value);
        CFDictionarySetValue(__LocaleDateFormats, @"UINotesDisplayFormatWithYear", v52);
        CFRelease(v52);
      }

      CFRelease(v19);
      CFRelease(value);
      v53 = _CreateVersionString();
      if (v53)
      {
        v54 = v53;
        v55 = *v41;
        v56 = CFPreferencesCopyAppValue(@"AppleICUForce24HourTime", *v41);
        if (v56)
        {
          v57 = v56;
          CFDictionaryAddValue(__LocaleDateFormats, @"AppleICUForce24HourTime", v56);
          CFRelease(v57);
        }

        v58 = CFPreferencesCopyAppValue(@"AppleICUForce12HourTime", v55);
        if (v58)
        {
          v59 = v58;
          CFDictionaryAddValue(__LocaleDateFormats, @"AppleICUForce12HourTime", v58);
          CFRelease(v59);
        }

        v60 = __LocaleDateFormats;
        v61 = MEMORY[0x19A8C1930](v2);
        CFDictionaryAddValue(v60, @"Locale", v61);
        CFDictionaryAddValue(__LocaleDateFormats, @"Version", v54);
        [objc_msgSend(MEMORY[0x1E696AE40] dataWithPropertyList:__LocaleDateFormats format:200 options:0 error:{0), "writeToFile:options:error:", objc_msgSend(CPSharedResourcesDirectory(), "stringByAppendingPathComponent:", @"Library/Caches/DateFormats.plist", 1, 0}];
        CFRelease(v54);
      }
    }
  }

  CFRelease(v2);
  v3 = CFDictionaryGetValue(__LocaleDateFormats, a1);
  os_unfair_lock_unlock(&lock);
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL _CachedValueIsEqualToExpectedValue(const __CFDictionary *a1, const void *a2, unint64_t a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  v5 = Value;
  return a3 && Value && CFEqual(Value, a3) || (a3 | v5) == 0;
}

CFStringRef _StripAMPMAndCopy(CFStringRef theString)
{
  Copy = theString;
  MutableCopy = CFStringCreateMutableCopy(0, 0, theString);
  v6.length = CFStringGetLength(MutableCopy);
  v6.location = 0;
  v3 = CFStringFindAndReplace(MutableCopy, @"a ", &stru_1F0A49170, v6, 0);
  v7.length = CFStringGetLength(MutableCopy);
  v7.location = 0;
  v4 = CFStringFindAndReplace(MutableCopy, @" a", &stru_1F0A49170, v7, 0) + v3;
  v8.length = CFStringGetLength(MutableCopy);
  v8.location = 0;
  if (v4 + CFStringFindAndReplace(MutableCopy, @"a", &stru_1F0A49170, v8, 0) < 1)
  {
    CFRetain(Copy);
  }

  else
  {
    Copy = CFStringCreateCopy(0, MutableCopy);
  }

  CFRelease(MutableCopy);
  return Copy;
}

unint64_t _CPTimeFormatIs24HourMode()
{
  if (_RegisterForLocaleChangeNotificationIfNecessary_onceToken != -1)
  {
    CPDateFormatStringForFormatType_cold_1();
  }

  os_unfair_lock_lock(&lock);
  v0 = todayFormatter;
  if (!todayFormatter)
  {
    v1 = CFLocaleCopyCurrent();
    todayFormatter = CFDateFormatterCreate(0, v1, kCFDateFormatterNoStyle, kCFDateFormatterShortStyle);
    CFRelease(v1);
    v0 = todayFormatter;
  }

  Format = CFDateFormatterGetFormat(v0);
  v3 = Format;
  if (Format)
  {
    v3 = CFStringFind(Format, @"H", 0).location != -1 || CFStringFind(v3, @"k", 0).location != -1;
  }

  os_unfair_lock_unlock(&lock);
  return v3;
}

void _LocaleWillChangeCallback()
{
  os_unfair_lock_lock(&lock);
  if (__LocaleDateFormats)
  {
    CFRelease(__LocaleDateFormats);
    __LocaleDateFormats = 0;
  }

  if (todayFormatter)
  {
    CFRelease(todayFormatter);
    todayFormatter = 0;
  }

  os_unfair_lock_unlock(&lock);
}

CFStringRef _CreateVersionString()
{
  v4 = *MEMORY[0x1E69E9840];
  *versionArray = 0;
  ulocdata_getCLDRVersion();
  u_versionToString(versionArray, versionString);
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d-%s", 7, versionString);
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void CPFreeSpaceRequestBytesAtPathWithCompletionBlock(unint64_t a1, CFURLRef anURL, const __CFDictionary *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = &__block_literal_global_0;
  }

  if (!anURL)
  {
    anURL = [MEMORY[0x1E695DFF8] fileURLWithPath:NSHomeDirectory() isDirectory:1];
  }

  v7 = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134218498;
    *v22 = a1;
    *&v22[8] = 2080;
    *&v22[10] = [(__CFString *)v7 UTF8String];
    v23 = 2048;
    v24 = v6;
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: new request for %llu bytes at path %s for block %p", buf, 0x20u);
  }

  if (([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) == 0)
  {
    do
    {
      if (![(__CFString *)v7 length])
      {
        break;
      }

      v8 = [(__CFString *)v7 stringByDeletingLastPathComponent];

      v7 = v8;
    }

    while (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")]);
  }

  v9 = v7;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v10 = [(__CFString *)v7 UTF8String];
    *buf = 136315394;
    *v22 = v10;
    *&v22[8] = 2048;
    *&v22[10] = v6;
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: rationalized path to %s for block %p", buf, 0x16u);
  }

  v19 = 0;
  v20 = 0;
  TotalCapacityAndAvailableCapacityForMountPoint = GetTotalCapacityAndAvailableCapacityForMountPoint(v7, &v20, &v19);
  if (TotalCapacityAndAvailableCapacityForMountPoint)
  {
    v12 = TotalCapacityAndAvailableCapacityForMountPoint;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      CPFreeSpaceRequestBytesAtPathWithCompletionBlock_cold_1(v12);
    }

    (*(v6 + 2))(v6, 0, 0, v12);
    goto LABEL_44;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 134218496;
    *v22 = v20;
    *&v22[8] = 2048;
    *&v22[10] = v19;
    v23 = 2048;
    v24 = v6;
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: got total space %llu and available space %llu for block %p", buf, 0x20u);
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"CPFreeSpaceEffortLevelKey");
    if (Value)
    {
      v14 = [Value intValue];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v22 = v14;
        *&v22[4] = 2048;
        *&v22[6] = v6;
        _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: caller requested effort level %d for block %p", buf, 0x12u);
      }

      if (v14 < 2)
      {
        goto LABEL_27;
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        CPFreeSpaceRequestBytesAtPathWithCompletionBlock_cold_2();
      }
    }
  }

  v14 = 1;
LABEL_27:
  if (v20 >= a1)
  {
    v15 = v19;
    if (v19 >= a1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v22 = v6;
        _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: satisfied (available space >= requested space) for block %p", buf, 0xCu);
        v15 = v19;
      }

      (*(v6 + 2))(v6, 1, v15, 0);
    }

    else
    {
      v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
      if (v14)
      {
        if (v16)
        {
          *buf = 134217984;
          *v22 = v6;
          _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: will enqueue request for block %p", buf, 0xCu);
        }

        if (GetFreeSpaceDispatchQueue___once != -1)
        {
          CPFreeSpaceRequestBytesAtPathWithCompletionBlock_cold_3();
        }

        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __CPFreeSpaceRequestBytesAtPathWithCompletionBlock_block_invoke_9;
        v18[3] = &unk_1E7450A60;
        v18[6] = v6;
        v18[7] = a1;
        v18[4] = v7;
        v18[5] = 0;
        dispatch_async(GetFreeSpaceDispatchQueue___queue, v18);
      }

      else
      {
        if (v16)
        {
          *buf = 134217984;
          *v22 = v6;
          _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: not satisfied (effort needed but not allowed) for block %p", buf, 0xCu);
          v15 = v19;
        }

        (*(v6 + 2))(v6, 0, v15, 0);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v22 = v6;
      _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: not satisfied (total space < requested space) for block %p", buf, 0xCu);
    }

    (*(v6 + 2))(v6, 0, v19, 0);
  }

LABEL_44:
  v17 = *MEMORY[0x1E69E9840];
}

uint64_t GetTotalCapacityAndAvailableCapacityForMountPoint(void *a1, uint64_t *a2, unint64_t *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  memset(&v18, 0, 512);
  if (statfs([a1 fileSystemRepresentation], &v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      GetTotalCapacityAndAvailableCapacityForMountPoint_cold_1();
    }

    v6 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"POSIX filesystem error" forKey:*MEMORY[0x1E696A578]];
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695E640] code:*__error() userInfo:v6];
  }

  else
  {
    v8 = v18.f_blocks * v18.f_bsize;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v17 = v8;
      _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: real total capacity %llu", buf, 0xCu);
    }

    v15 = 0;
    v9 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    v7 = v15;
    if (v15)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "free space request: failed to get attributes for the mount point", buf, 2u);
        v7 = v15;
      }
    }

    else
    {
      v10 = [objc_msgSend(v9 objectForKeyedSubscript:{*MEMORY[0x1E696A3C0]), "unsignedLongLongValue"}];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v17 = v10;
        _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: real available capacity %llu", buf, 0xCu);
      }

      if (a2)
      {
        v11 = v8 - 157286400;
        if (v8 < 0x9600000)
        {
          v11 = 0;
        }

        *a2 = v11;
      }

      v7 = 0;
      if (a3)
      {
        v12 = v10 - 157286400;
        if (v10 < 0x9600000)
        {
          v12 = 0;
        }

        *a3 = v12;
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t __CPFreeSpaceRequestBytesAtPathWithCompletionBlock_block_invoke_9(uint64_t a1)
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *(a1 + 48);
    *v18 = 134217984;
    *&v18[4] = v2;
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: processing enqueued request for block %p", v18, 0xCu);
  }

  v3 = *(a1 + 56) + 157286400;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 48);
    *v18 = 134218240;
    *&v18[4] = v3;
    *&v18[12] = 2048;
    *&v18[14] = v4;
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: will request CacheDelete of %llu bytes for block %p", v18, 0x16u);
  }

  if (_CPFreeupBytes_onceToken != -1)
  {
    __CPFreeSpaceRequestBytesAtPathWithCompletionBlock_block_invoke_9_cold_1();
  }

  v5 = dispatch_semaphore_create(0);
  v21[0] = @"CACHE_DELETE_VOLUME";
  v21[1] = @"CACHE_DELETE_AMOUNT";
  v22[0] = @"/private/var";
  v22[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
  *v18 = MEMORY[0x1E69E9820];
  *&v18[8] = 3221225472;
  *&v18[16] = ___CPFreeupBytes_block_invoke_2;
  v19 = &unk_1E7450A88;
  v20 = v5;
  v7 = _CPFreeupBytes__CacheDeletePurgeSpaceWithInfo(v6, v18);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  CFRelease(v7);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 48);
    *v18 = 134218240;
    *&v18[4] = v3;
    *&v18[12] = 2048;
    *&v18[14] = v8;
    _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: did finish CacheDelete of %llu bytes for block %p", v18, 0x16u);
  }

  v22[0] = 0;
  if (GetTotalCapacityAndAvailableCapacityForMountPoint(*(a1 + 32), 0, v22))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __CPFreeSpaceRequestBytesAtPathWithCompletionBlock_block_invoke_9_cold_2(a1);
    }

    v9 = *(*(a1 + 48) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      *v18 = 134218240;
      *&v18[4] = v22[0];
      *&v18[12] = 2048;
      *&v18[14] = v10;
      _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: got available space %llu for block %p", v18, 0x16u);
    }

    v11 = v22[0];
    v12 = *(a1 + 56);
    v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO);
    if (v11 >= v12)
    {
      if (v13)
      {
        v15 = *(a1 + 48);
        *v18 = 134218240;
        *&v18[4] = v11;
        *&v18[12] = 2048;
        *&v18[14] = v15;
        _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: satisfied with new available space %llu for block %p", v18, 0x16u);
      }

      v9 = *(*(a1 + 48) + 16);
    }

    else
    {
      if (v13)
      {
        v14 = *(a1 + 48);
        *v18 = 134218240;
        *&v18[4] = v11;
        *&v18[12] = 2048;
        *&v18[14] = v14;
        _os_log_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "free space request: not satisfied with new available space %llu for block %p", v18, 0x16u);
      }

      v9 = *(*(a1 + 48) + 16);
    }
  }

  result = v9();
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

dispatch_queue_t __GetFreeSpaceDispatchQueue_block_invoke()
{
  result = dispatch_queue_create("freeSpaceDispatchQueue", 0);
  GetFreeSpaceDispatchQueue___queue = result;
  return result;
}

uint64_t CPFSSizeStringsWithStyle(int a1, int8x16_t a2, double a3, int8x16_t a4, int8x16_t a5, int8x16_t a6)
{
  if (*a2.i32 == 0.0)
  {
    v8 = @"0 bytes";

    return __diskSizeStringForKey(v8);
  }

  if (*a2.i32 == 1.0)
  {
    v8 = @"1 byte";

    return __diskSizeStringForKey(v8);
  }

  v11[1] = v6;
  v11[2] = v7;
  v11[0] = 0;
  v10 = __localizedScaledSizeAndFormatWithStyle(a1, v11, a2, *a2.i32, a4, a5, a6);
  return [MEMORY[0x1E696AEC0] localizedStringWithFormat:v11[0], v10];
}

uint64_t __diskSizeStringForKey(uint64_t a1)
{
  v2 = __thisBundle;
  if (!__thisBundle)
  {
    v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppSupport"];
    __thisBundle = v2;
    if (!v2)
    {
      return a1;
    }
  }

  return [v2 localizedStringForKey:a1 value:&stru_1F0A49170 table:@"CPDiskSizes"];
}

uint64_t CPFSProgressStringWithStyle(int a1, int8x16_t a2, float a3, int8x16_t a4, int8x16_t a5, int8x16_t a6)
{
  v8 = __localizedScaledSizeAndFormatWithStyle(a1, 0, a2, a3, a4, a5, a6);
  *v9.i32 = a3;
  v14 = CPFSSizeStringsWithStyle(a1, v9, v10, v11, v12, v13);
  return [MEMORY[0x1E696AEC0] localizedStringWithFormat:__diskSizeStringForKey(@"%@ of %@"), v8, v14];
}

uint64_t __localizedScaledSizeAndFormatWithStyle(int a1, uint64_t *a2, int8x16_t a3, float a4, int8x16_t a5, int8x16_t a6, int8x16_t a7)
{
  v8 = *a3.i32;
  if (a4 < 100.0)
  {
    v9 = __diskSizeStringForKey(@"%d bytes");
    v10 = floorf(v8);
    goto LABEL_3;
  }

  *a6.i64 = (*a3.i32 * 0.00097656);
  v13 = a4 * 0.00097656;
  if (v13 < 100.0)
  {
    *a3.i64 = *a6.i64 - trunc(*a6.i64);
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v14), a3, a6).i64 < 0.05 && a1 == 1)
    {
      v16 = @"%.0f";
    }

    else
    {
      v16 = @"%.1f";
    }

    v17 = @"KB";
LABEL_14:
    v39 = a6;
LABEL_15:
    v18 = [(__CFString *)v16 stringByAppendingString:v17, *&v39];
    goto LABEL_16;
  }

  v21 = v13 * 0.0009765625;
  if (v21 < 1.0)
  {
    v41 = (*a3.i32 * 0.00097656);
    if (a1)
    {
      v22 = @"%.0fKB";
LABEL_21:
      v9 = __diskSizeStringForKey(v22);
      v10 = v41;
      goto LABEL_3;
    }

    v25 = @"%dKB";
    goto LABEL_34;
  }

  *a6.i64 = *a6.i64 * 0.0009765625;
  if (v21 < 100.0)
  {
    *a3.i64 = *a6.i64 - trunc(*a6.i64);
    v23.f64[0] = NAN;
    v23.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v23), a3, a6).i64 < 0.05 && a1 == 1)
    {
      v16 = @"%.0f";
    }

    else
    {
      v16 = @"%.1f";
    }

    v17 = @"MB";
    goto LABEL_14;
  }

  if (v21 < 1000.0)
  {
    v41 = *a6.i64;
    if (a1)
    {
      v22 = @"%.0fMB";
      goto LABEL_21;
    }

    v25 = @"%dMB";
LABEL_34:
    v9 = __diskSizeStringForKey(v25);
    v10 = floor(v41);
LABEL_3:
    result = __localizedIntegerNumber(v10);
    if (!a2)
    {
      return result;
    }

    goto LABEL_4;
  }

  *a7.i64 = *a6.i64 * 0.0009765625;
  v26 = v21 * 0.0009765625;
  if (v26 < 100.0)
  {
    *a3.i64 = *a7.i64 - trunc(*a7.i64);
    v27.f64[0] = NAN;
    v27.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v27), a3, a7).i64 < 0.05 && a1 == 1)
    {
      v29 = @"%.0f";
    }

    else
    {
      v29 = @"%.1f";
    }

    v30 = @"GB";
LABEL_43:
    v18 = [(__CFString *)v29 stringByAppendingString:v30, *&a7];
LABEL_16:
    v9 = __diskSizeStringForKey(v18);
    result = __localizedFormattedNumber(a1, v40, v19, v20);
    if (!a2)
    {
      return result;
    }

LABEL_4:
    *a2 = v9;
    return result;
  }

  if (v26 < 1000.0)
  {
    v41 = *a6.i64 * 0.0009765625;
    if (a1)
    {
      v22 = @"%.0fGB";
      goto LABEL_21;
    }

    v25 = @"%dGB";
    goto LABEL_34;
  }

  *a7.i64 = *a7.i64 * 0.0009765625;
  v31 = v26 * 0.0009765625;
  if (v31 < 100.0)
  {
    *a3.i64 = *a7.i64 - trunc(*a7.i64);
    v32.f64[0] = NAN;
    v32.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v32), a3, a7).i64 < 0.05 && a1 == 1)
    {
      v29 = @"%.0f";
    }

    else
    {
      v29 = @"%.1f";
    }

    v30 = @"TB";
    goto LABEL_43;
  }

  if (v31 < 1000.0)
  {
    v41 = *a7.i64;
    if (a1)
    {
      v22 = @"%.0fTB";
      goto LABEL_21;
    }

    v25 = @"%dTB";
    goto LABEL_34;
  }

  *a7.i64 = *a7.i64 * 0.0009765625;
  v34 = v31 * 0.0009765625;
  if (v34 < 100.0)
  {
    *a3.i64 = *a7.i64 - trunc(*a7.i64);
    v35.f64[0] = NAN;
    v35.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v35), a3, a7).i64 < 0.05 && a1 == 1)
    {
      v29 = @"%.0f";
    }

    else
    {
      v29 = @"%.1f";
    }

    v30 = @"PB";
    goto LABEL_43;
  }

  if (v34 < 1000.0)
  {
    v41 = *a7.i64;
    if (a1)
    {
      v22 = @"%.0fPB";
      goto LABEL_21;
    }

    v25 = @"%dPB";
    goto LABEL_34;
  }

  if (v34 * 0.0009765625 < 10.0)
  {
    *a5.i64 = *a7.i64 * 0.0009765625;
    v39 = a5;
    *a3.i64 = *a7.i64 * 0.0009765625 - trunc(*a7.i64 * 0.0009765625);
    v37.f64[0] = NAN;
    v37.f64[1] = NAN;
    if (*vbslq_s8(vnegq_f64(v37), a3, a5).i64 < 0.05 && a1 == 1)
    {
      v16 = @"%.0f";
    }

    else
    {
      v16 = @"%.1f";
    }

    v17 = @"EB";
    goto LABEL_15;
  }

  v9 = __diskSizeStringForKey(@"%.1fEB");
  result = 0;
  if (a2)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t __localizedIntegerNumber(double a1)
{
  pthread_mutex_lock(&__integerMutex);
  v2 = __integerFormatter;
  if (!__integerFormatter)
  {
    __integerFormatter = objc_alloc_init(MEMORY[0x1E696ADA0]);
    [__integerFormatter setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "autoupdatingCurrentLocale")}];
    [__integerFormatter setAlwaysShowsDecimalSeparator:0];
    [__integerFormatter setMaximumFractionDigits:0];
    [__integerFormatter setMinimumIntegerDigits:1];
    v2 = __integerFormatter;
  }

  v3 = [v2 stringFromNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", a1)}];
  pthread_mutex_unlock(&__integerMutex);
  return v3;
}

uint64_t __localizedFormattedNumber(int a1, int8x16_t a2, double a3, int8x16_t a4)
{
  if (a1 == 1 && (*a4.i64 = *a2.i64 - trunc(*a2.i64), v5.f64[0] = NAN, v5.f64[1] = NAN, *vbslq_s8(vnegq_f64(v5), a4, a2).i64 < 0.05))
  {

    return __localizedIntegerNumber(*a2.i64);
  }

  else
  {
    pthread_mutex_lock(&__decimalMutex);
    v7 = __decimalFormatter;
    if (!__decimalFormatter)
    {
      __decimalFormatter = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [__decimalFormatter setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "autoupdatingCurrentLocale")}];
      [__decimalFormatter setAlwaysShowsDecimalSeparator:1];
      [__decimalFormatter setMinimumFractionDigits:1];
      [__decimalFormatter setMinimumIntegerDigits:1];
      v7 = __decimalFormatter;
    }

    v8 = [v7 stringFromNumber:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithDouble:", *a2.i64, *&a2)}];
    pthread_mutex_unlock(&__decimalMutex);
    return v8;
  }
}

CFRunLoopSourceRef CPCreateMIGServerSourceWithContext(uint64_t a1, int a2, CFIndex a3, uint64_t a4)
{
  pthread_once(&__CPMIGServerCalloutContextKeyOnce, makeCalloutContextKey);
  v8 = malloc_type_malloc(0x18uLL, 0x10A0040FC6C5850uLL);
  *v8 = a2;
  v8[1] = a1;
  v8[2] = a4;
  context.version = 1;
  context.info = v8;
  context.retain = 0;
  context.release = MEMORY[0x1E69E9B38];
  context.copyDescription = migHelperCopyDescription;
  context.equal = migHelperEqual;
  context.hash = migHelperHash;
  context.schedule = migHelperGetPort;
  context.cancel = migHelperRecievePortCallout;
  v9 = CFRunLoopSourceCreate(0, a3, &context);
  if (!v9)
  {
    free(v8);
  }

  return v9;
}

uint64_t migHelperRecievePortCallout(mach_msg_header_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  msgh_id = a1->msgh_id;
  v8 = *(v6 + 8);
  v9 = __OFSUB__(msgh_id, v8);
  v10 = msgh_id - v8;
  if (v10 < 0 != v9 || msgh_id >= *(v6 + 12))
  {
    v12 = 0;
  }

  else
  {
    v11 = v6 + 32;
    v12 = *(v11 + 40 * v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = *(v11 + 40 * v10 + 32);
      goto LABEL_7;
    }
  }

  v13 = 1;
  v14 = 36;
LABEL_7:
  v15 = malloc_type_malloc(v14, 0x10000408AA14F5FuLL);
  if (v15)
  {
    v16 = v15;
    msgh_remote_port = a1->msgh_remote_port;
    v15->msgh_bits = a1->msgh_bits & 0x1F;
    v15->msgh_size = 36;
    *&v15->msgh_remote_port = msgh_remote_port;
    v15->msgh_voucher_port = 0;
    v15->msgh_id = a1->msgh_id + 100;
    if (v13)
    {
      *&v15[1].msgh_bits = *MEMORY[0x1E69E99E0];
      v15[1].msgh_remote_port = -303;
    }

    else
    {
      v18 = *(a4 + 16);
      if (v18)
      {
        pthread_setspecific(__CPMIGServerCalloutContextKey, v18);
        v12(a1, v16);
        pthread_setspecific(__CPMIGServerCalloutContextKey, 0);
      }

      else
      {
        v12(a1, v15);
      }
    }

    msgh_bits = v16->msgh_bits;
    if ((v16->msgh_bits & 0x80000000) == 0)
    {
      v20 = v16[1].msgh_remote_port;
      if (v20 == -305)
      {
LABEL_31:
        free(v16);
        return 0;
      }

      if (v20 && (a1->msgh_bits & 0x80000000) != 0)
      {
        a1->msgh_remote_port = 0;
        mach_msg_destroy(a1);
        msgh_bits = v16->msgh_bits;
      }
    }

    if (v16->msgh_remote_port)
    {
      if ((msgh_bits & 0x1F) == 0x12)
      {
        v21 = 1;
      }

      else
      {
        v21 = 17;
      }

      v22 = mach_msg(v16, v21, v16->msgh_size, 0, 0, 0, 0);
      if ((v22 - 268435459) >= 2 && v22 != 0)
      {
        v24 = *MEMORY[0x1E69E9848];
        v25 = mach_error_string(v22);
        fprintf(v24, "<CFRunLoopSource MIG Server> mach_msg send error in reply: %s\n", v25);
        goto LABEL_31;
      }

      if ((v22 - 268435459) > 1)
      {
        goto LABEL_31;
      }

      msgh_bits = v16->msgh_bits;
    }

    if ((msgh_bits & 0x80000000) != 0)
    {
      mach_msg_destroy(v16);
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t CPGetMachPortForMIGServerSource(__CFRunLoopSource *a1)
{
  memset(&context.info, 0, 64);
  context.version = 1;
  CFRunLoopSourceGetContext(a1, &context);
  return *context.info;
}

uint64_t CPGetDeviceRegionCode()
{
  if (CPGetDeviceRegionCode_onceToken != -1)
  {
    CPGetDeviceRegionCode_cold_1();
  }

  return CPGetDeviceRegionCode___regionCode;
}

uint64_t __CPGetDeviceRegionCode_block_invoke()
{
  result = MGCopyAnswer();
  CPGetDeviceRegionCode___regionCode = result;
  return result;
}

const void *CPSharedResourcesDirectory()
{
  pthread_mutex_lock(&CPSharedResourcesDirectory_lock);
  v0 = geteuid();
  if (!v0)
  {
    v0 = getuid();
  }

  if (CPSharedResourcesDirectory_pathDictionary)
  {
    Value = CFDictionaryGetValue(CPSharedResourcesDirectory_pathDictionary, v0);
    if (Value)
    {
      goto LABEL_13;
    }
  }

  else
  {
    CPSharedResourcesDirectory_pathDictionary = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
  }

  pw_dir = getenv("IPHONE_SHARED_RESOURCES_DIRECTORY");
  if ((pw_dir || (v4 = getpwuid(v0)) != 0 && (pw_dir = v4->pw_dir) != 0) && (v3 = CFStringCreateWithFileSystemRepresentation(0, pw_dir)) != 0)
  {
    Value = v3;
    CFDictionarySetValue(CPSharedResourcesDirectory_pathDictionary, v0, v3);
    CFRelease(Value);
  }

  else
  {
    NSLog(@"Returning NULL path from CPSharedResourcesDirectory for uid %d", v0);
    Value = 0;
  }

LABEL_13:
  pthread_mutex_unlock(&CPSharedResourcesDirectory_lock);
  return Value;
}

uint64_t CPSystemRootDirectory()
{
  if (CPSystemRootDirectory_onceToken != -1)
  {
    CPSystemRootDirectory_cold_1();
  }

  return CPSystemRootDirectory_systemRootDirectory;
}

id CPCopyBundleIdentifierFromAuditToken()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v10 = *MEMORY[0x1E69E9840];
  v3 = proc_pidpath(*(v0 + 20), buffer, 0x1000u);
  if (v3 < 1)
  {
    v5 = 0;
    if (v2)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v3 encoding:4];
    v5 = [[_CPBundleIdentifierString alloc] _initWithExecutablePath:v4];

    if (v2)
    {
      if (v5)
      {
        v6 = [v5 _isProcessName];
LABEL_7:
        *v2 = v6;
        goto LABEL_8;
      }

LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CPCopyBundleIdentifierAndTeamFromAuditToken(_OWORD *a1, void *a2, void *a3)
{
  v5 = a1[1];
  *v9.val = *a1;
  *&v9.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(0, &v9);
  v7 = CPCopyBundleIdentifierAndTeamFromSecTaskRef(v6, a2, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  return v7;
}

uint64_t CPCopyBundleIdentifierAndTeamFromSecTaskRef(__SecTask *a1, void *a2, void *a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = SecTaskCopyValueForEntitlement(a1, @"application-identifier", 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CFGetTypeID(v5);
  if (v7 == CFStringGetTypeID())
  {
    v8 = CPCopyBundleIdentifierAndTeamFromApplicationIdentifier(v6, a2, a3);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v6);
  return v8;
}

uint64_t CPCopyBundleIdentifierAndTeamFromApplicationIdentifier(uint64_t result, void *a2, void *a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  if ([result length] < 0xB || objc_msgSend(v5, "characterAtIndex:", 10) != 46)
  {
    goto LABEL_20;
  }

  v6 = [v5 substringWithRange:{0, 10}];
  v7 = 0;
  do
  {
    v8 = [v5 characterAtIndex:v7];
    v10 = (v8 - 65) < 0x1A || (v8 - 48) < 0xA;
  }

  while (v10 && v7++ < 9);
  if (!v10)
  {
LABEL_20:
    v12 = 0;
LABEL_21:
    v13 = CFRetain(v5);
    if (a2)
    {
      goto LABEL_19;
    }

LABEL_22:
    if (v13)
    {
      CFRelease(v13);
    }

    goto LABEL_24;
  }

  v12 = v6;
  v13 = [v5 substringWithRange:{11, objc_msgSend(v5, "length") - 11}];
  if (!v13)
  {
    goto LABEL_21;
  }

  if (!a2)
  {
    goto LABEL_22;
  }

LABEL_19:
  *a2 = v13;
LABEL_24:
  if (a3)
  {
    *a3 = v12;
  }

  else if (v12)
  {
    CFRelease(v12);
  }

  return 1;
}

uint64_t CPCanSendMail()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v1 = NSClassFromString(@"MFMailAccountProxy");
  if (v1 && (v2 = v1, (objc_opt_respondsToSelector() & 1) != 0))
  {
    [(objc_class *)v2 performSelector:sel_reloadAccounts];
    CanSendMail = [(objc_class *)v2 performSelector:sel_defaultMailAccountForDelivery]!= 0;
  }

  else
  {
    if (CPCanSendMail_onceToken != -1)
    {
      CPCanSendMail_cold_1();
    }

    if (CPCanSendMail_MailServicesCanSendMail)
    {
      CanSendMail = CPCanSendMail_MailServicesCanSendMail();
    }

    else
    {
      CanSendMail = 0;
    }
  }

  return CanSendMail;
}

void __CPCanSendMail_block_invoke()
{
  if (CPSystemRootDirectory_onceToken != -1)
  {
    CPSystemRootDirectory_cold_1();
  }

  v0 = dlopen([objc_msgSend(CPSystemRootDirectory_systemRootDirectory stringByAppendingPathComponent:{@"System/Library/PrivateFrameworks/MailServices.framework/MailServices", "fileSystemRepresentation"}], 5);
  if (v0)
  {
    CPCanSendMail_MailServicesCanSendMail = dlsym(v0, "MSCanSendMail");
  }

  else
  {
    NSLog(@"failed to load MailServices framework");
  }
}

BOOL CPCanSendMMS()
{
  v0 = CPCanSendMMS_token;
  if (CPCanSendMMS_token == -1)
  {
    notify_register_check("com.apple.MobileSMS.MMSCapable", &CPCanSendMMS_token);
    v0 = CPCanSendMMS_token;
  }

  state64 = 0;
  notify_get_state(v0, &state64);
  if (!state64)
  {
    return 0;
  }

  v1 = CPCanSendMMS_seatbeltCheck;
  if (CPCanSendMMS_seatbeltCheck == -1)
  {
    v1 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    CPCanSendMMS_seatbeltCheck = v1;
  }

  return v1 != 0;
}

uint64_t CPIsInternalDevice()
{
  if (CPIsInternalDevice_onceToken != -1)
  {
    CPIsInternalDevice_cold_1();
  }

  return CPIsInternalDevice_result;
}

uint64_t __CPIsInternalDevice_block_invoke()
{
  if (MGGetBoolAnswer())
  {
    result = 1;
  }

  else
  {
    result = MGGetBoolAnswer();
  }

  CPIsInternalDevice_result = result;
  return result;
}

double CPMachAbsoluteTime()
{
  v0 = mach_absolute_time();

  return CPMachAbsoluteTimeIntervalToCFTimeInterval(v0);
}

double CPMachAbsoluteTimeIntervalToCFTimeInterval(unint64_t a1)
{
  v2 = *&CPMachAbsoluteTimeIntervalToCFTimeInterval___timebaseFactor;
  if (*&CPMachAbsoluteTimeIntervalToCFTimeInterval___timebaseFactor == 0.0)
  {
    info = 0;
    mach_timebase_info(&info);
    LODWORD(v4) = info.denom;
    LODWORD(v3) = info.numer;
    v2 = v3 / v4 * 0.000000001;
    CPMachAbsoluteTimeIntervalToCFTimeInterval___timebaseFactor = *&v2;
  }

  return v2 * a1;
}

double CPTimeBlock(uint64_t a1)
{
  v2 = mach_absolute_time();
  (*(a1 + 16))(a1);
  v3 = mach_absolute_time() - v2;

  return CPMachAbsoluteTimeIntervalToCFTimeInterval(v3);
}

uint64_t CPOpenTemporaryFile(uint64_t a1, char *a2, size_t a3)
{
  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a1];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/.%@.XXXXXX", objc_msgSend(v7, "stringByDeletingLastPathComponent"), objc_msgSend(v7, "lastPathComponent")];
  strlcpy(a2, [v8 fileSystemRepresentation], a3);
  v9 = mkstemp(a2);

  [v6 drain];
  return v9;
}

void CPBasename(const char *a1, char *a2, CFIndex a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v6 = strlen(a1);
        v7 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], a1, v6, 0);
        if (v7)
        {
          v8 = v7;
          PathComponent = CFURLCopyLastPathComponent(v7);
          if (PathComponent)
          {
            v10 = PathComponent;
            CFStringGetCString(PathComponent, a2, a3, 0x8000100u);
            CFRelease(v10);
          }

          CFRelease(v8);
        }
      }
    }
  }
}

void CPTemporaryPath(const char *a1, char *a2, size_t a3)
{
  __source = 0;
  v6 = [(NSString *)NSTemporaryDirectory() fileSystemRepresentation];
  NSLog(@"%s: tempdir returned by [NSTemporaryDirectory() fileSystemRepresentation] is %s", "void CPTemporaryPath(const char *, char *, size_t)", v6);
  if (v6[strlen(v6) - 1] == 47)
  {
    v7 = "";
  }

  else
  {
    v7 = "/";
  }

  asprintf(&__source, "%s%s%s.XXXXXX", v6, v7, a1);
  if (__source)
  {
    NSLog(@"%s: will attempt to use path %s", "void CPTemporaryPath(const char *, char *, size_t)", __source);
    if (mkstemp(__source) == -1)
    {
      NSLog(@"CPTemporaryPath failed with result %i at path %s", 0xFFFFFFFFLL, __source);
    }

    if (a2)
    {
      strlcpy(a2, __source, a3);
    }

    free(__source);
  }
}

void *CPSqliteDatabaseCreateWithPath(const __CFString *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x130uLL, 0x10E0040C156DB45uLL);
  *v2 = CFStringCreateCopy(*MEMORY[0x1E695E480], a1);
  return v2;
}

CFStringRef CPSqliteDatabaseSetVFSModuleName(CFStringRef result, const __CFString *a2)
{
  if (result)
  {
    v2 = result;
    result = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
    v2[7].length = result;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetVersion(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 116) |= 1u;
    *(result + 112) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetJournalModeWAL(uint64_t result)
{
  if (result)
  {
    *(result + 116) |= 0x400u;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetAutoVacuumLevel(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 256) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetAccessRequestHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 40) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetDataProtectionLevel(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 260) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetSupportsReadOnlyConnections(uint64_t result)
{
  if (result)
  {
    *(result + 116) |= 2u;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetAutoRetryStatements(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 2048;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xF7FF | v2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetShouldUseInhibitorForConnections(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 4096;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xEFFF | v2;
  }

  return result;
}

uint64_t CPSqliteConnectionSetIntegerForProperty(CFMutableDictionaryRef *a1, const __CFString *a2, int a3)
{
  v3 = 1;
  if (a1 && a2 && (!*a1 || (*(*a1 + 58) & 4) == 0))
  {
    v7 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);", 0);
    if (v7)
    {
      v8 = v7;
      v9 = _CPCreateUTF8StringFromCFString(a2);
      v3 = _performSetIntegerPropertyStatement(v8, v9, a3);
      if (v3 == 17)
      {
        v10 = a1[2];
        if (v10 && (CFDictionaryRemoveValue(v10, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);"), (v11 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);", 0)) != 0))
        {
          v3 = _performSetIntegerPropertyStatement(v11, v9, a3);
        }

        else
        {
          v3 = 17;
        }
      }

      free(v9);
    }
  }

  return v3;
}

uint64_t CPSqliteDatabaseSetSetupHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 16) = a2;
    *(result + 48) = a3;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetShouldMigrateInProcess(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 88) = a2 ^ 1;
  }

  return result;
}

CFStringRef CPSqliteDatabaseSetMigrationPluginBundleID(CFStringRef result, const __CFString *a2)
{
  if (result)
  {
    v2 = result;
    result = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
    v2[3].isa = result;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetDatabaseInitializer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetConnectionInitializer(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetCommitHookCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetUpdateHookCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 200) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetExternalConversionChecker(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 208) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetPropertiesEnabled(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 0;
    }

    else
    {
      v2 = 4;
    }

    *(result + 116) = *(result + 116) & 0xFFFB | v2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetThreadSafeEnabled(uint64_t result)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(result + 116);
  if ((v1 & 8) == 0)
  {
    v2 = result;
    *(result + 116) = v1 | 8;
    v4.__sig = 0;
    *v4.__opaque = 0;
    pthread_mutexattr_init(&v4);
    pthread_mutexattr_settype(&v4, 2);
    result = pthread_mutex_init((v2 + 120), &v4);
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *CPSqliteDatabaseSetMigrationHandlers(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result[7] = a2;
    result[8] = a3;
    result[13] = a4;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetCorruptionHandler(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetDatabaseDeletedCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetStatementCompileErrorCallback(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 296) = a2;
  }

  return result;
}

void CPSqliteDatabaseClose(uint64_t a1)
{
  if ((*(a1 + 116) & 0x80) != 0)
  {
    notify_cancel(*(a1 + 232));
  }

  v2 = *(a1 + 240);
  if (v2)
  {
    _Block_release(v2);
  }

  CPSqliteDatabaseCloseAllConnections(a1);
  CFRelease(*a1);
  v3 = *(a1 + 248);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    CFRelease(v4);
  }

  free(a1);
}

void CPSqliteDatabaseCloseAllConnections(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CPSqliteConnectionClose(v2);
    *(a1 + 8) = 0;
  }

  v3 = *(a1 + 280);
  if (v3)
  {
    CPSqliteConnectionClose(v3);
    *(a1 + 280) = 0;
  }
}

BOOL CPSqliteDatabaseIsAccessPermitted(uint64_t a1)
{
  v2 = 0;
  _CPSqliteDatabaseConnectionForWithSqlite3OpenFlagsAndReturnError(a1, 0, 0, &v2);
  return v2 != 3;
}

uint64_t _CPSqliteDatabaseConnectionForWithSqlite3OpenFlagsAndReturnError(uint64_t result, int a2, int a3, _DWORD *a4)
{
  v15 = 0;
  if (result)
  {
    v7 = result;
    if ((*(result + 116) & 8) != 0)
    {
      pthread_mutex_lock((result + 120));
    }

    v8 = 8;
    if (a2)
    {
      v8 = 280;
      v9 = (v7 + 280);
    }

    else
    {
      v9 = (v7 + 8);
    }

    result = *(v7 + v8);
    if (!result)
    {
      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(*v7);
      v11 = malloc_type_calloc(MaximumSizeOfFileSystemRepresentation + 1, 1uLL, 0x100004077774924uLL);
      CFStringGetFileSystemRepresentation(*v7, v11, MaximumSizeOfFileSystemRepresentation);
      v14 = 0;
      v12 = _connectAndCheckVersion(v7, v11, &v14, a2, a3, &v15);
      if (v12)
      {
        v13 = v12;
        free(v11);
        goto LABEL_10;
      }

      if (v14)
      {
        v13 = _connectAndCheckVersion(v7, v11, &v14, a2, a3, &v15);
        free(v11);
        if (v13)
        {
LABEL_10:
          *v13 = v7;
          if (a2)
          {
            *(v7 + 280) = v13;
          }

          else
          {
            *(v7 + 8) = v13;
          }
        }
      }

      else
      {
        free(v11);
      }

      result = *v9;
    }
  }

  if (a4)
  {
    *a4 = v15;
  }

  return result;
}

uint64_t *CPSqliteDatabaseReleaseSqliteConnection(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      if ((*(v1 + 116) & 8) != 0)
      {
        return pthread_mutex_unlock((v1 + 120));
      }
    }
  }

  return result;
}

void CPSqliteConnectionClose(uint64_t a1)
{
  if (a1)
  {
    CPSqliteConnectionFlushStatementCache(a1);
    v2 = *(a1 + 8);
    if (v2)
    {
      if (*a1 && (*(*a1 + 116) & 0x1000) != 0)
      {
        v3 = CPStartAnInhibitor();
        sqlite3_close(*(a1 + 8));
        if (v3)
        {
          CPStopInhibitorWithIdentifier(v3);
        }
      }

      else
      {
        sqlite3_close(v2);
      }
    }

    v4 = *(a1 + 40);
    if (v4)
    {
      v4(*(a1 + 32));
    }

    free(a1);
  }
}

const void *CPSqliteDatabaseStatementForReading(uint64_t a1, const __CFString *a2)
{
  v3 = _CPSqliteDatabaseConnectionForWithSqlite3OpenFlagsAndReturnError(a1, (*(a1 + 116) >> 1) & 1, 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(v3, a2, 0);
  v6 = *v4;
  if (*v4 && (*(v6 + 58) & 8) != 0)
  {
    pthread_mutex_unlock((v6 + 120));
  }

  return v5;
}

const void *CPSqliteDatabaseStatementForWriting(uint64_t a1, const __CFString *a2)
{
  v3 = _CPSqliteDatabaseConnectionForWithSqlite3OpenFlagsAndReturnError(a1, 0, 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(v3, a2, 0);
  v6 = *v4;
  if (*v4 && (*(v6 + 58) & 8) != 0)
  {
    pthread_mutex_unlock((v6 + 120));
  }

  return v5;
}

uint64_t **CPSqliteDatabaseReleaseSqliteStatement(uint64_t **result)
{
  if (result)
  {
    if (*result)
    {
      v1 = **result;
      if (v1)
      {
        if ((*(v1 + 116) & 8) != 0)
        {
          return pthread_mutex_unlock((v1 + 120));
        }
      }
    }
  }

  return result;
}

CFStringRef CPSqliteDatabaseCopyValueForProperty(uint64_t a1, const __CFString *a2)
{
  v3 = _CPSqliteDatabaseConnectionForWithSqlite3OpenFlagsAndReturnError(a1, (*(a1 + 116) >> 1) & 1, 0, 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = CPSqliteConnectionCopyValueForProperty(v3, a2);
  v6 = *v4;
  if (*v4 && (*(v6 + 58) & 8) != 0)
  {
    pthread_mutex_unlock((v6 + 120));
  }

  return v5;
}

CFStringRef CPSqliteConnectionCopyValueForProperty(CFMutableDictionaryRef *a1, const __CFString *a2)
{
  if (!a1 || *a1 && (*(*a1 + 58) & 4) != 0)
  {
    return 0;
  }

  v3 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, @"SELECT value FROM _SqliteDatabaseProperties WHERE key = ?;", 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = _CPCreateUTF8StringFromCFString(a2);
  sqlite3_bind_text(*(v4 + 8), 1, v5, -1, MEMORY[0x1E69E9B38]);
  v6 = CPSqliteStatementCopyStringResult(v4);
  CPSqliteStatementReset(v4);
  return v6;
}

uint64_t CPSqliteDatabaseSetValueForProperty(uint64_t a1, const __CFString *a2, UInt8 *a3)
{
  v5 = _CPSqliteDatabaseConnectionForWithSqlite3OpenFlagsAndReturnError(a1, 0, 0, 0);
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = CPSqliteConnectionSetValueForProperty(v5, a2, a3);
  v8 = *v6;
  if (*v6 && (*(v8 + 58) & 8) != 0)
  {
    pthread_mutex_unlock((v8 + 120));
  }

  return v7;
}

uint64_t CPSqliteConnectionSetValueForProperty(CFMutableDictionaryRef *a1, const __CFString *a2, UInt8 *a3)
{
  v3 = 1;
  if (a1 && a2 && (!*a1 || (*(*a1 + 58) & 4) == 0))
  {
    v7 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);", 0);
    if (v7)
    {
      v8 = v7;
      v9 = _CPCreateUTF8StringFromCFString(a2);
      if (a3)
      {
        a3 = _CPCreateUTF8StringFromCFString(a3);
      }

      v3 = _performSetStringPropertyStatement(v8, v9, a3);
      if (v3 == 17)
      {
        v10 = a1[2];
        if (v10 && (CFDictionaryRemoveValue(v10, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);"), (v11 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, @"INSERT OR REPLACE INTO _SqliteDatabaseProperties VALUES (?, ?);", 0)) != 0))
        {
          v3 = _performSetStringPropertyStatement(v11, v9, a3);
        }

        else
        {
          v3 = 17;
        }
      }

      free(v9);
      if (a3)
      {
        free(a3);
      }
    }
  }

  return v3;
}

uint64_t CPSqliteDatabaseRemoveProperty(uint64_t a1, const __CFString *a2)
{
  v3 = _CPSqliteDatabaseConnectionForWithSqlite3OpenFlagsAndReturnError(a1, 0, 0, 0);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = CPSqliteConnectionRemoveProperty(v3, a2);
  v6 = *v4;
  if (*v4 && (*(v6 + 58) & 8) != 0)
  {
    pthread_mutex_unlock((v6 + 120));
  }

  return v5;
}

uint64_t CPSqliteConnectionRemoveProperty(CFMutableDictionaryRef *a1, const __CFString *a2)
{
  v2 = 1;
  if (a1 && a2 && (!*a1 || (*(*a1 + 58) & 4) == 0))
  {
    v5 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, @"DELETE FROM _SqliteDatabaseProperties WHERE key = ?;", 0);
    if (v5)
    {
      v6 = v5;
      v7 = _CPCreateUTF8StringFromCFString(a2);
      v2 = _performRemovePropertyStatement(v6, v7);
      if (v2 == 17)
      {
        v8 = a1[2];
        if (v8 && (CFDictionaryRemoveValue(v8, @"DELETE FROM _SqliteDatabaseProperties WHERE key = ?;"), (v9 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, @"DELETE FROM _SqliteDatabaseProperties WHERE key = ?;", 0)) != 0))
        {
          v2 = _performRemovePropertyStatement(v9, v7);
        }

        else
        {
          v2 = 17;
        }
      }

      free(v7);
    }
  }

  return v2;
}

uint64_t CPSqliteDatabaseRegisterFunction(uint64_t a1, const char *a2, void (__cdecl *a3)(sqlite3_context *, int, sqlite3_value **), int a4, void *a5)
{
  v9 = _CPSqliteDatabaseConnectionForWithSqlite3OpenFlagsAndReturnError(a1, 0, 0, 0);
  if (!v9)
  {
    return 1;
  }

  v10 = v9;
  function = sqlite3_create_function(*(v9 + 8), a2, a4, 1, a5, a3, 0, 0);
  v12 = *v10;
  if (*v10 && (*(v12 + 116) & 8) != 0)
  {
    pthread_mutex_unlock((v12 + 120));
  }

  return function;
}

uint64_t CPSqliteDatabaseSetProfileCallbackWithContext(uint64_t result, void (__cdecl *a2)(void *, const char *, sqlite3_uint64), void *a3)
{
  if (result)
  {
    result = _CPSqliteDatabaseConnectionForWithSqlite3OpenFlagsAndReturnError(result, 0, 0, 0);
    if (result)
    {
      v5 = result;
      result = sqlite3_profile(*(result + 8), a2, a3);
      v6 = *v5;
      if (*v5)
      {
        if ((*(v6 + 116) & 8) != 0)
        {

          return pthread_mutex_unlock((v6 + 120));
        }
      }
    }
  }

  return result;
}

uint64_t CPSqliteDatabaseSetLoggingEnabled(uint64_t a1, int a2)
{
  v4 = _debugLoggingEnabled();
  if (__debugLoggingForced == -1)
  {
    __debugLoggingForced = getenv("CPSQLDEBUG") != 0;
    if (__debugLoggingForced)
    {
      goto LABEL_3;
    }
  }

  else if (__debugLoggingForced)
  {
    goto LABEL_3;
  }

  __debugLoggingEnabled = a2 != 0;
LABEL_3:
  v5 = _debugLoggingEnabled();
  if (v5 != v4)
  {
    if (v5)
    {
      v6 = CPSqliteDatabaseDefaultProfileCallback;
    }

    else
    {
      v6 = 0;
    }

    CPSqliteDatabaseSetProfileCallbackWithContext(a1, v6, 0);
  }

  return 0;
}

void *CPSqliteSetupLoggingForDatabaseHandle(sqlite3 *a1)
{
  result = _debugLoggingEnabled();
  if (a1 && result)
  {

    return sqlite3_profile(a1, CPSqliteDatabaseDefaultProfileCallback, 0);
  }

  return result;
}

uint64_t CPSqliteDatabaseSetBusyHandler(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 216) = a2;
    *(result + 224) = a3;
  }

  return result;
}

void CPSqliteRegisterYieldNotifyBlock(uint64_t a1, void *aBlock)
{
  if (a1)
  {
    v3 = *(a1 + 240);
    v4 = aBlock ? _Block_copy(aBlock) : 0;
    *(a1 + 240) = v4;
    if (v3)
    {

      _Block_release(v3);
    }
  }
}

uint64_t CPSqliteDatabaseUnlockRequested(uint64_t result)
{
  if (result)
  {
    return (*(result + 116) >> 9) & 1;
  }

  return result;
}

uint64_t CPSqliteDatabaseSetShouldRequestUnlock(uint64_t result, int a2)
{
  if (result)
  {
    if (a2)
    {
      v2 = 16;
    }

    else
    {
      v2 = 0;
    }

    *(result + 116) = *(result + 116) & 0xFFEF | v2;
  }

  return result;
}

void CPSqliteDatabaseSetShouldYieldWhenRequested(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = 32;
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 116) & 0xFFDF | v3;
    *(a1 + 116) = v4;
    if ((v4 & 0x60) == 0x20)
    {
      *(a1 + 116) = v4 | 0x40;
      NotifyName = createNotifyName(a1);
      global_queue = dispatch_get_global_queue(2, 0);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __updateNotifyRegistration_block_invoke;
      handler[3] = &__block_descriptor_tmp;
      handler[4] = a1;
      if (!notify_register_dispatch(NotifyName, (a1 + 232), global_queue, handler))
      {
        *(a1 + 116) |= 0x80u;
      }

      free(NotifyName);
    }

    else if ((v4 & 0xA0) == 0x80)
    {
      notify_cancel(*(a1 + 232));
      *(a1 + 116) &= 0xFF3Fu;
      *(a1 + 232) = 0;
    }
  }
}

void CPSqliteDatabaseRequestUnlock(uint64_t a1)
{
  if (a1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v3 = Current - *(a1 + 272);
    if (v3 < 0.0 || v3 > 1.0)
    {
      *(a1 + 272) = Current;
      NotifyName = createNotifyName(a1);
      notify_post(NotifyName);
      *(a1 + 116) |= 0x100u;

      free(NotifyName);
    }
  }
}

char *createNotifyName(const __CFString **a1)
{
  v1 = _CPCreateUTF8StringFromCFString(*a1);
  v3 = 0;
  asprintf(&v3, "com.apple.AppSupport-%s", v1);
  free(v1);
  return v3;
}

sqlite3_stmt *CPSqlitePreparedStatement(uint64_t *a1, char *zSql, int a3)
{
  ppStmt = 0;
  if (!a1)
  {
    return 0;
  }

  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  do
  {
    v7 = sqlite3_prepare_v2(v4, zSql, -1, &ppStmt, 0);
  }

  while ((v7 - 5) < 2);
  v8 = ppStmt;
  if (v7 || !ppStmt)
  {
    if (!a3)
    {
      v9 = sqlite3_errmsg(v4);
      syslog(4, "%sCould not compile statement %s: %s\n", "warning: ", zSql, v9);
      v10 = *a1;
      if (*a1)
      {
        v11 = *(v10 + 296);
        if (v11)
        {
          v12 = sqlite3_errcode(v4);
          v11(v10, a1, v12, zSql, v9);
        }
      }

      v8 = ppStmt;
    }

    if (!v8)
    {
      return v8;
    }

    sqlite3_finalize(v8);
    return 0;
  }

  if (CPSqlitePreparedStatement_checkedEnv)
  {
    if (!CPSqlitePreparedStatement_sExplainSettings)
    {
      return v8;
    }
  }

  else
  {
    CPSqlitePreparedStatement_checkedEnv = 1;
    v14 = getenv("CPSQLEXPLAIN");
    BYTE1(CPSqlitePreparedStatement_sExplainSettings) = v14 != 0;
    v15 = getenv("CPSQLEXPLAIN_TABLES");
    HIBYTE(CPSqlitePreparedStatement_sExplainSettings) = v15 != 0;
    v16 = getenv("CPSQLEXPLAIN_ONLY_NON_INDEXED");
    BYTE2(CPSqlitePreparedStatement_sExplainSettings) = v16 != 0;
    HIBYTE(CPSqlitePreparedStatement_sExplainSettings) = (v15 | v16) != 0;
    LOBYTE(CPSqlitePreparedStatement_sExplainSettings) = (v14 | v15 | v16) != 0;
    if (!(v14 | v15 | v16))
    {
      return v8;
    }
  }

  v21[1] = zSql;
  v22 = 0;
  v21[0] = CPSqlitePreparedStatement_sExplainSettings;
  v17 = CFStringCreateWithFormat(0, 0, @"EXPLAIN QUERY PLAN %s", zSql);
  v18 = _CPCreateUTF8StringFromCFString(v17);
  sqlite3_exec(v4, v18, ExplainQueryPlanCallback, v21, 0);
  free(v18);
  if (v17)
  {
    CFRelease(v17);
  }

  if (HIDWORD(v22))
  {
    syslog(4, "----------------------------\n");
    v19 = HIDWORD(v22)--;
    if (v19 >= 2)
    {
      do
      {
        syslog(4, "\n");
      }

      while (HIDWORD(v22)-- > 1);
    }
  }

  return ppStmt;
}

uint64_t ExplainQueryPlanCallback(uint64_t a1, int a2, char **a3, const char **a4)
{
  if (!*(a1 + 16))
  {
    v8 = 1;
    if (!*(a1 + 1))
    {
      goto LABEL_5;
    }

    syslog(4, "----- Explaining Query -----\n%s\n", *(a1 + 8));
    *(a1 + 16) = 1;
    *(a1 + 20) = 1;
  }

  v8 = 0;
LABEL_5:
  if (a2 >= 1)
  {
    v9 = a2;
    while (strcmp(*a4, "detail"))
    {
      ++a3;
      ++a4;
      if (!--v9)
      {
        return 0;
      }
    }

    v10 = *a3;
    if (!strstr(*a3, "WITH INDEX") && !strstr(v10, "USING PRIMARY KEY"))
    {
      if (*(a1 + 2))
      {
        v12 = " ***** NO INDEX *****";
      }

      else
      {
        v12 = "";
      }

      if (*(a1 + 2))
      {
        v14 = v8;
      }

      else
      {
        v14 = 0;
      }

      if (v14 == 1 && !*(a1 + 1))
      {
        syslog(4, "--------------------------\n !!!!! NOT INDEXED !!!!!\n--------------------------\n%s\n--------------------------\n", *(a1 + 8));
        *(a1 + 16) = 1;
        *(a1 + 20) = 2;
        v10 = *a3;
      }

      goto LABEL_17;
    }

    if (*(a1 + 2))
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    if ((v11 & 1) == 0)
    {
      v12 = "";
LABEL_17:
      syslog(4, " ==>>%s %s\n", v12, v10);
    }
  }

  return 0;
}

const void *CPSqliteConnectionStatementForSQLAndIgnoreErrors(CFMutableDictionaryRef *a1, const __CFString *key, int a3)
{
  if (!a1)
  {
    return 0;
  }

  v7 = a1 + 2;
  v6 = a1[2];
  if (!v6)
  {
    *&v18.version = 0uLL;
    v18.copyDescription = 0;
    v18.equal = 0;
    v18.release = CPSqliteStatementFinalize;
    v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], &v18);
    *v7 = v6;
  }

  if (*(*a1 + 72) >= 1 && !a1[3])
  {
    memset(&v18, 0, sizeof(v18));
    a1[3] = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], &v18);
    v6 = a1[2];
  }

  Value = CFDictionaryGetValue(v6, key);
  if (!Value)
  {
    if (!*(*a1 + 72))
    {
      Value = CPSqliteStatementForSQLUncachedAndIgnoreErrors(a1, key, a3);
      if (!Value)
      {
        return Value;
      }

      goto LABEL_22;
    }

    v9 = a1 + 3;
    v10 = CFDictionaryGetValue(a1[3], key);
    if (v10)
    {
      Value = v10;
      CFDictionaryRemoveValue(*v9, key);
LABEL_22:
      CFDictionarySetValue(*v7, key, Value);
      return Value;
    }

    Value = CPSqliteStatementForSQLUncachedAndIgnoreErrors(a1, key, a3);
    if (Value)
    {
      Count = CFDictionaryGetCount(a1[3]);
      v12 = *(*a1 + 72);
      if (v12 >= 1)
      {
        v13 = Count;
        if (Count >= v12)
        {
          v14 = malloc_type_malloc(8 * Count, 0x10040436913F5uLL);
          if (v14)
          {
            v15 = v14;
            v16 = malloc_type_malloc(8 * v13, 0x2004093837F09uLL);
            if (v16)
            {
              CPSqliteConnectionStatementForSQLAndIgnoreErrors_cold_1(v9, v15, v16, v13);
            }

            free(v15);
          }
        }
      }

      v7 = v9;
      goto LABEL_22;
    }
  }

  return Value;
}

uint64_t CPSqliteConnectionPerformSQL(CFMutableDictionaryRef *a1, const __CFString *a2)
{
  v2 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, a2, 0);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = CPSqliteStatementPerform(v2);
  CPSqliteStatementReset(v3);
  return v4;
}

uint64_t CPSqliteStatementPerform(uint64_t a1)
{
  if (!a1 || !*(a1 + 8))
  {
    return 1;
  }

  v2 = CPSqliteStatementStep(a1);
  v3 = **a1;
  v4 = (*(v3 + 116) & 2) != 0 && *(v3 + 8) == 0;
  checkResultWithStatement(v3, v4, *(*a1 + 8), v2, "CPSqliteStatementPerform", a1);
  return v2;
}

uint64_t CPSqliteStatementReset(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 8);
  if (!v2)
  {
    return 1;
  }

  v3 = sqlite3_reset(v2);
  v4 = **a1;
  v5 = (*(v4 + 116) & 2) != 0 && *(v4 + 8) == 0;
  v6 = *(*a1 + 8);
  v7 = sqlite3_errcode(v6);
  checkResultWithStatement(v4, v5, v6, v7, "CPSqliteStatementReset", a1);
  sqlite3_clear_bindings(*(a1 + 8));
  return v3;
}

void CPSqliteConnectionFlushStatementCache(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      CFRelease(v2);
      *(a1 + 16) = 0;
    }

    v3 = *(a1 + 24);
    if (v3)
    {
      Count = CFDictionaryGetCount(v3);
      v5 = malloc_type_malloc(8 * Count, 0x2004093837F09uLL);
      CFDictionaryGetKeysAndValues(*(a1 + 24), 0, v5);
      CFRelease(*(a1 + 24));
      *(a1 + 24) = 0;
      if (Count >= 1)
      {
        v7 = v5;
        do
        {
          v8 = *v7++;
          CPSqliteStatementFinalize(v6, v8);
          --Count;
        }

        while (Count);
      }

      free(v5);
    }
  }
}

void CPSqliteStatementFinalize(int a1, void *a2)
{
  if (a2)
  {
    v3 = a2[1];
    if (v3)
    {
      sqlite3_finalize(v3);
    }
  }

  free(a2);
}

uint64_t CPSqliteConnectionBeginTransactionType(uint64_t a1, unsigned int a2)
{
  if (!a1)
  {
    return 1;
  }

  if (*(a1 + 64) != 0xFFFF)
  {
    return 0;
  }

  v4 = *a1;
  if (*a1)
  {
    if (sqlite3_get_autocommit(*(a1 + 8)))
    {
      v5 = *(v4 + 58);
      if ((~v5 & 0x220) == 0)
      {
        if ((v5 & 0x100) != 0)
        {
          v6 = v5 & 0xFEFF;
        }

        else
        {
          usleep(0xF4240u);
          v6 = *(v4 + 58);
        }

        *(v4 + 58) = v6 & 0xFDFF;
      }
    }
  }

  if (a2 > 2)
  {
    result = 0;
  }

  else
  {
    v8 = off_1E7450AF0[a2];
    result = sqlite3_get_autocommit(*(a1 + 8));
    if (result)
    {
      result = _performSqlUsingConnection(a1, v8);
    }
  }

  if (result)
  {
    v9 = result == 101;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  if (a2 != 0xFFFF)
  {
    if (v10)
    {
      *(a1 + 64) = a2;
    }
  }

  return result;
}

uint64_t _performSqlUsingConnection(CFMutableDictionaryRef *a1, const __CFString *a2)
{
  v2 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, a2, 0);
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  if (!v2[1])
  {
    return 1;
  }

  v4 = CPSqliteStatementPerform(v2);
  CPSqliteStatementReset(v3);
  if (v4 == 101)
  {
    return 101;
  }

  v6 = *(*v3 + 8);

  return sqlite3_errcode(v6);
}

uint64_t CPSqliteConnectionGetActiveTransactionType(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 64);
  }

  else
  {
    return 0xFFFFLL;
  }
}

uint64_t CPSqliteConnectionCommit(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  result = _performSqlUsingConnection(a1, @"COMMIT;");
  *(a1 + 64) = 0xFFFF;
  return result;
}

uint64_t CPSqliteConnectionRollback(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  if (sqlite3_get_autocommit(*(a1 + 8)))
  {
    return 0;
  }

  result = _performSqlUsingConnection(a1, @"ROLLBACK;");
  *(a1 + 64) = 0xFFFF;
  return result;
}

uint64_t CPSqliteConnectionShouldCacheStatements(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 68);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t CPSqliteConnectionSetShouldCacheStatements(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 68) = a2;
  }

  return result;
}

void CPSqliteStatementBindValuesForColumns(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a1 && a3)
  {
    v5 = *(a1 + 8);
    v6 = a4 + 1;
    v7 = a3;
    do
    {
      _bindColumnValueAtIndex(v5, a2, v6);
      a2 += 24;
      ++v6;
      --v7;
    }

    while (v7);
  }
}

void _bindColumnValueAtIndex(sqlite3_stmt *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  if (v6 > 3)
  {
    if (v6 > 5)
    {
      switch(v6)
      {
        case 6:
          v7 = *(a2 + 16);
          goto LABEL_27;
        case 7:
          v16 = *(a2 + 16);
          if (v16)
          {
            valuePtr = 0.0;
            if (CFNumberIsFloatType(v16))
            {
              CFNumberGetValue(*(a2 + 16), kCFNumberDoubleType, &valuePtr);
              sqlite3_bind_double(a1, a3, valuePtr);
            }

            else
            {
              CFNumberGetValue(*(a2 + 16), kCFNumberSInt64Type, &valuePtr);
              sqlite3_bind_int64(a1, a3, *&valuePtr);
            }

            return;
          }

          break;
        case 8:
          if (*(a2 + 16))
          {
            MEMORY[0x19A8C17F0]();
LABEL_27:

            sqlite3_bind_double(a1, a3, v7);
            return;
          }

          break;
        default:
          return;
      }

      goto LABEL_37;
    }

    if (v6 != 4)
    {
LABEL_17:
      syslog(4, "%s does not handle raw data types yet.", "void _bindColumnValueAtIndex(sqlite3_stmt *, CPWriteColumnDescriptor *, unsigned int)");
      return;
    }

    v13 = *(a2 + 16);
    if (v13)
    {
      BytePtr = CFDataGetBytePtr(v13);
      Length = CFDataGetLength(*(a2 + 16));

      sqlite3_bind_blob(a1, a3, BytePtr, Length, 0);
      return;
    }

LABEL_37:

    sqlite3_bind_null(a1, a3);
    return;
  }

  if (v6 > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_17;
    }

    v10 = *(a2 + 16);
    if (!v10)
    {
      goto LABEL_37;
    }

    v11 = _CPCreateUTF8StringFromCFString(v10);
    v12 = MEMORY[0x1E69E9B38];

    sqlite3_bind_text(a1, a3, v11, -1, v12);
  }

  else if (v6)
  {
    if (v6 == 1)
    {
      v8 = *(a2 + 16);

      sqlite3_bind_int64(a1, a3, v8);
    }
  }

  else
  {
    v9 = *(a2 + 16);

    sqlite3_bind_int(a1, a3, v9);
  }
}

uint64_t CPSqliteConnectionAddRecordWithRowid(CFMutableDictionaryRef *a1, const __CFString *a2, sqlite3_int64 a3, const char **a4, unsigned int a5)
{
  if (!a1)
  {
    return 1;
  }

  if (a5)
  {
    v9 = a4;
    v11 = a3 == -1 && a5 < 3;
    if (v11)
    {
      if (a5 == 1)
      {
        v12 = @"?";
      }

      else
      {
        v12 = @"?, ?";
      }

      v13 = *a4;
      v14 = *MEMORY[0x1E695E480];
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    }

    else
    {
      v14 = *MEMORY[0x1E695E480];
      v19 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      CFStringAppend(v19, @"?");
      v13 = *v9;
      Mutable = CFStringCreateMutable(v14, 0);
      v12 = v19;
      if (a3 != -1)
      {
        CFStringAppend(v19, @", ?");
        CFStringAppend(Mutable, @"ROWID, ");
      }
    }

    v23 = CFStringCreateWithCString(v14, v13, 0x8000100u);
    CFStringAppend(Mutable, v23);
    CFRelease(v23);
    v41 = a5;
    if (a5 != 1)
    {
      v24 = v9 + 3;
      v25 = a5 - 1;
      do
      {
        v26 = CFStringCreateWithCString(v14, *v24, 0x8000100u);
        CFStringAppend(Mutable, @", ");
        CFStringAppend(Mutable, v26);
        CFRelease(v26);
        if (!v11)
        {
          CFStringAppend(v12, @", ?");
        }

        v24 += 3;
        --v25;
      }

      while (v25);
    }

    MutableCopy = CFStringCreateMutableCopy(0, 0, @"INSERT INTO ");
    CFStringAppend(MutableCopy, a2);
    CFStringAppend(MutableCopy, @" (");
    CFStringAppend(MutableCopy, Mutable);
    CFStringAppend(MutableCopy, @" VALUES ("));
    v28 = v12;
    CFStringAppend(MutableCopy, v12);
    CFStringAppend(MutableCopy, @";"));
    v29 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, MutableCopy, 0);
    if (v29)
    {
      v30 = v29;
      v31 = *(v29 + 1);
      if (a3 == -1)
      {
        v36 = v41;
        v37 = 1;
        do
        {
          _bindColumnValueAtIndex(v31, v9, v37++);
          v9 += 3;
          --v36;
        }

        while (v36);
      }

      else
      {
        sqlite3_bind_int64(*(v29 + 1), 1, a3);
        v32 = *(v30 + 8);
        v33 = v41;
        v34 = 2;
        do
        {
          _bindColumnValueAtIndex(v32, v9, v34++);
          v9 += 3;
          --v33;
        }

        while (v33);
      }

      v35 = CPSqliteStatementPerform(v30);
      CPSqliteStatementReset(v30);
      CFRelease(MutableCopy);
      CFRelease(Mutable);
      if (!v11)
      {
        CFRelease(v28);
      }

      return v35;
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (MutableCopy)
    {
      v22 = MutableCopy;
      goto LABEL_39;
    }

    return 1;
  }

  v16 = CFStringCreateMutableCopy(0, 0, @"INSERT INTO ");
  CFStringAppend(v16, a2);
  if (a3 == -1)
  {
    CFStringAppend(v16, @" (ROWID) VALUES(NULL);");
    v18 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, v16, 0);
    if (v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    CFStringAppend(v16, @" (ROWID) VALUES(?);");
    v17 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, v16, 0);
    if (v17)
    {
      v18 = v17;
      sqlite3_bind_int64(v17[1], 1, a3);
LABEL_20:
      v20 = CPSqliteStatementPerform(v18);
      CPSqliteStatementReset(v18);
      CFRelease(v16);
      return v20;
    }
  }

  if (v16)
  {
    v22 = v16;
LABEL_39:
    CFRelease(v22);
  }

  return 1;
}

uint64_t CPSqliteConnectionUpdateRecord(CFMutableDictionaryRef *a1, const __CFString *a2, sqlite3_int64 a3, __int128 *a4, unsigned int a5)
{
  v5 = 1;
  if (a1 && a5)
  {
    v10 = *MEMORY[0x1E695E480];
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    CFStringAppend(Mutable, @"UPDATE ");
    CFStringAppend(Mutable, a2);
    CFStringAppend(Mutable, @" SET ");
    v12 = 0;
    v13 = a5;
    do
    {
      v14 = CFStringCreateWithCString(v10, *(a4 + v12), 0x8000100u);
      if (v12)
      {
        CFStringAppend(Mutable, @", ");
      }

      CFStringAppend(Mutable, v14);
      CFStringAppend(Mutable, @" = ?");
      CFRelease(v14);
      v12 += 24;
    }

    while (24 * a5 != v12);
    CFStringAppend(Mutable, @" WHERE ROWID = ?;");
    v15 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, Mutable, 0);
    CFRelease(Mutable);
    if (v15)
    {
      v16 = *(v15 + 1);
      v17 = 1;
      do
      {
        v20 = *a4;
        v21 = *(a4 + 2);
        _bindColumnValueAtIndex(v16, &v20, v17++);
        a4 = (a4 + 24);
        --v13;
      }

      while (v13);
      sqlite3_bind_int64(v16, v17, a3);
      v5 = CPSqliteStatementPerform(v15);
      CPSqliteStatementReset(v15);
    }

    else
    {
      return 1;
    }
  }

  return v5;
}

CFStringRef CPSqliteStatementCopyStringResult(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  if (CPSqliteStatementStep(a1) != 100)
  {
    return 0;
  }

  v2 = sqlite3_column_text(*(a1 + 8), 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *MEMORY[0x1E695E480];

  return CFStringCreateWithCString(v4, v3, 0x8000100u);
}

CFMutableDictionaryRef *CPSqliteConnectionCopyValuesForPropertiesLike(CFMutableDictionaryRef *result, const __CFString *a2, __CFArray **a3, __CFArray **a4)
{
  if (!result || *result && (*(*result + 58) & 4) != 0)
  {
    return result;
  }

  result = CPSqliteConnectionStatementForSQLAndIgnoreErrors(result, @"SELECT key, value FROM _SqliteDatabaseProperties WHERE key LIKE ?;", 0);
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = _CPCreateUTF8StringFromCFString(a2);
  sqlite3_bind_text(v7[1], 1, v8, -1, MEMORY[0x1E69E9B38]);
  v9 = 0;
  Mutable = 0;
  v11 = *MEMORY[0x1E695E480];
  v12 = *MEMORY[0x1E695E738];
  v13 = MEMORY[0x1E695E9C0];
  while (1)
  {
    v14 = CPSqliteStatementStep(v7);
    if (v14 != 100)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_19;
    }

    v15 = sqlite3_column_text(v7[1], 0);
    if (v15)
    {
      v16 = CFStringCreateWithCString(v11, v15, 0x8000100u);
    }

    else
    {
      v16 = 0;
    }

    if (a4 | v16)
    {
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v11, 0, v13);
      }

      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = v12;
      }

      CFArrayAppendValue(Mutable, v17);
      if (v16)
      {
        CFRelease(v16);
      }

LABEL_19:
      if (a4)
      {
        v18 = sqlite3_column_text(v7[1], 1);
        v19 = v18 ? CFStringCreateWithCString(v11, v18, 0x8000100u) : 0;
        if (a3 | v19)
        {
          if (!v9)
          {
            v9 = CFArrayCreateMutable(v11, 0, v13);
          }

          if (v19)
          {
            v20 = v19;
          }

          else
          {
            v20 = v12;
          }

          CFArrayAppendValue(v9, v20);
          if (v19)
          {
            CFRelease(v19);
          }
        }
      }
    }
  }

  if (v14 != 101)
  {
    v21 = sqlite3_errmsg(*(*v7 + 1));
    syslog(4, "%s: %s\n", "CPSqliteConnectionCopyValuesForPropertiesLike", v21);
  }

  result = CPSqliteStatementReset(v7);
  if (a3 && Mutable)
  {
    *a3 = Mutable;
  }

  if (a4 && v9)
  {
    *a4 = v9;
  }

  return result;
}

uint64_t CPSqliteStatementStep(uint64_t a1)
{
  if ((*(**a1 + 116) & 0x800) == 0)
  {
    v2 = *(a1 + 8);

    return sqlite3_step(v2);
  }

  v12 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0.0;
  while (2)
  {
    for (i = 3 * v4; ; i += 3)
    {
      v8 = sqlite3_step(*(a1 + 8));
      if (v8 > 0xDu)
      {
        if (v8 != 14)
        {
          v11 = v8 == 100;
          goto LABEL_41;
        }

        if (v5 > 2)
        {
          goto LABEL_40;
        }

        if (v6 == 0.0)
        {
          v6 = CFAbsoluteTimeGetCurrent() + 240.0;
        }

        ++v5;
        if (v4 <= 0xA)
        {
          v9 = i + 1;
        }

        else
        {
          v9 = v4 + 1101;
        }

        goto LABEL_32;
      }

      if (v8 != 5)
      {
        if (v8 != 6)
        {
          goto LABEL_40;
        }

        if ((*(a1 + 24) & 1) == 0)
        {
          sqlite3_reset(*(a1 + 8));
        }

        if (v6 == 0.0)
        {
          v6 = CFAbsoluteTimeGetCurrent() + 240.0;
        }

        if (v4 <= 0xA)
        {
          v9 = 3 * v4 + 1;
        }

        else
        {
          v9 = v4 + 1101;
        }

        goto LABEL_32;
      }

      if ((*(a1 + 24) & 1) == 0)
      {
        sqlite3_reset(*(a1 + 8));
      }

      if (v6 == 0.0)
      {
        v6 = CFAbsoluteTimeGetCurrent() + 240.0;
      }

      if (v4 >= 0x2711)
      {
        if (v4 - 10000 >= 0xB)
        {
          v9 = v4 - 8899;
        }

        else
        {
          v9 = i - 29999;
        }

LABEL_32:
        usleep(v9);
      }

      if (v6 != 0.0)
      {
        Current = CFAbsoluteTimeGetCurrent();
        if (Current > v6)
        {
          break;
        }
      }

      ++v4;
    }

    if (v12 <= 7)
    {
      ++v4;
      v6 = Current + 30.0;
      ++v12;
      continue;
    }

    break;
  }

  CFLog();
LABEL_40:
  v11 = 0;
LABEL_41:
  *(a1 + 24) = v11;
  return v8;
}

uint64_t CPSqliteConnectionIntegerForPropertyWithDefaultValue(CFMutableDictionaryRef *a1, const __CFString *a2, uint64_t a3)
{
  v8 = 0;
  v7 = 0;
  v4 = _integerForProperty(a1, a2, &v7, &v8, 0);
  if (v8)
  {
    return v4;
  }

  if ((v7 - 100) >= 2 && v7 != 0)
  {
    syslog(4, "SQLite error fetching integer property: %i", v7);
  }

  return a3;
}

uint64_t _integerForProperty(CFMutableDictionaryRef *a1, const __CFString *a2, int *a3, BOOL *a4, int a5)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (!a1)
  {
    return 0;
  }

  v9 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(a1, @"SELECT value FROM _SqliteDatabaseProperties WHERE key = ?;", a5);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = _CPCreateUTF8StringFromCFString(a2);
  v14 = 101;
  sqlite3_bind_text(v10[1], 1, v11, -1, MEMORY[0x1E69E9B38]);
  v12 = CPSqliteStatementIntegerResult(v10, &v14);
  if (a4)
  {
    *a4 = v14 == 100;
  }

  CPSqliteStatementReset(v10);
  if (a3)
  {
    *a3 = sqlite3_errcode(a1[1]);
  }

  return v12;
}

uint64_t _performSetStringPropertyStatement(uint64_t a1, char *a2, const char *a3)
{
  sqlite3_bind_text(*(a1 + 8), 1, a2, -1, 0xFFFFFFFFFFFFFFFFLL);
  v5 = *(a1 + 8);
  if (a3)
  {
    sqlite3_bind_text(v5, 2, a3, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    sqlite3_bind_null(v5, 2);
  }

  CPSqliteStatementPerform(a1);

  return CPSqliteStatementReset(a1);
}

uint64_t _performSetIntegerPropertyStatement(uint64_t a1, char *a2, int a3)
{
  sqlite3_bind_text(*(a1 + 8), 1, a2, -1, 0);
  sqlite3_bind_int(*(a1 + 8), 2, a3);
  CPSqliteStatementPerform(a1);

  return CPSqliteStatementReset(a1);
}

uint64_t _performRemovePropertyStatement(uint64_t a1, char *a2)
{
  sqlite3_bind_text(*(a1 + 8), 1, a2, -1, 0);
  CPSqliteStatementPerform(a1);

  return CPSqliteStatementReset(a1);
}

sqlite3_int64 CPSqliteConnectionRowidOfLastInsert(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 8)) != 0)
  {
    return sqlite3_last_insert_rowid(v1);
  }

  else
  {
    return -1;
  }
}

uint64_t CPSqliteConnectionCheckNoConnectionError(uint64_t a1, int a2, const char *a3)
{
  if ((a2 - 100) < 2 || a2 == 0)
  {
    return 0;
  }

  v5 = sqlite3_errmsg(*(a1 + 8));
  syslog(4, "sqlite3 error in %s: %s\n", a3, v5);
  return 1;
}

void CPSqliteConnectionEnableProgressHandlerCallback(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a2 >= 1 && a3)
  {
    v5 = a1[1];
    if (v5)
    {
      a1[6] = a3;
      a1[7] = a4;
      sqlite3_progress_handler(v5, a2, _CPSqliteConnectionDefaultProgressHandler, a1);
    }
  }
}

uint64_t _CPSqliteConnectionDefaultProgressHandler(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    return v1(a1, *(a1 + 56));
  }

  else
  {
    return 0;
  }
}

void CPSqliteConnectionDisableProgressHandlerCallback(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 8);
    if (v1)
    {
      sqlite3_progress_handler(v1, 0, 0, 0);
    }
  }
}

void checkResultWithStatement(void *a1, int a2, sqlite3 *db, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = sqlite3_extended_errcode(db);
  if (a4 - 1 <= 0x62)
  {
    v13 = sqlite3_errmsg(db);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      checkResultWithStatement_cold_1(v13, a4, v12);
    }
  }

  if (a4 > 0x1A)
  {
    goto LABEL_16;
  }

  if (((1 << a4) & 0x4000C00) == 0)
  {
    if (((1 << a4) & 0x80100) != 0)
    {
LABEL_13:
      if (a6)
      {
        v15 = *(a6 + 8);
      }

      else
      {
        v15 = 0;
      }

      sqlite3PrintErrorWithStatement(db, a5, v15);
      return;
    }

LABEL_16:
    if (a4 - 5 > 1)
    {
      return;
    }

    goto LABEL_13;
  }

  v14 = a1[9];
  if (!v14 || (v14(a1) & 1) == 0)
  {
    switch(a4)
    {
      case 0xAu:
        handleSqliteIOError(a1, a2, db, a6, v12);
        break;
      case 0x1Au:
        handleSqliteNotADBError(a1, a2, db, a6);
      case 0xBu:
        handleSqliteCorruptError(a1, a2, db, a6);
    }
  }
}

uint64_t CPSqliteStatementIntegerResult(sqlite3_stmt **a1, int *a2)
{
  if (!a1 || !a1[1])
  {
    return 0;
  }

  if (CPSqliteStatementStep(a1) == 100)
  {
    v4 = sqlite3_column_int(a1[1], 0);
    if (!a2)
    {
      return v4;
    }

    goto LABEL_8;
  }

  v4 = 0;
  if (a2)
  {
LABEL_8:
    *a2 = sqlite3_errcode(*(*a1 + 1));
  }

  return v4;
}

sqlite3_int64 CPSqliteStatementInteger64Result(sqlite3_stmt **a1, int *a2)
{
  if (!a1 || !a1[1])
  {
    return 0;
  }

  if (CPSqliteStatementStep(a1) == 100)
  {
    v4 = sqlite3_column_int64(a1[1], 0);
    if (!a2)
    {
      return v4;
    }

    goto LABEL_8;
  }

  v4 = 0;
  if (a2)
  {
LABEL_8:
    *a2 = sqlite3_errcode(*(*a1 + 1));
  }

  return v4;
}

void _sqliteStatementApplyValuesFromRecordWithNullValue(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, sqlite3_int64 a5, int a6)
{
  if (a1)
  {
    v10 = *(a1 + 8);
    sqlite3_column_count(v10);
    if (a3)
    {
      alloc = *MEMORY[0x1E695E480];
      v11 = a3;
      v12 = a2 + 8;
      v13 = 1;
      while (1)
      {
        v14 = *v12;
        if (!*v12)
        {
          goto LABEL_41;
        }

        v15 = *(v12 + 8);
        v17 = *(v12 - 8);
        v16 = *(v12 - 4);
        v18 = 1;
        if (v16 <= 3)
        {
          if (v16 > 1)
          {
            if (v16 != 2)
            {
              v22 = sqlite3_column_text(v10, *(v12 - 8));
              if (!v22 && !a6)
              {
                goto LABEL_42;
              }

              if (v22)
              {
                v21 = v22;
              }

              else
              {
                v21 = a5;
              }

              goto LABEL_23;
            }

            v30 = sqlite3_column_text(v10, *(v12 - 8));
            if (!v30 && !a6)
            {
              goto LABEL_42;
            }

            if (v30)
            {
              v31 = CFStringCreateWithCString(alloc, v30, 0x8000100u);
LABEL_51:
              v38 = v31;
              v39 = a4;
              v40 = v15;
              v41 = v38;
LABEL_63:
              v18 = v14(v39, v40, v41);
              if (v38)
              {
                CFRelease(v38);
              }

              goto LABEL_42;
            }

LABEL_52:
            v23 = a4;
            v24 = v15;
            v21 = a5;
LABEL_24:
            v25 = v14(v23, v24, v21);
          }

          else
          {
            if (v16)
            {
              if (v16 != 1)
              {
                goto LABEL_42;
              }

              v21 = sqlite3_column_int64(v10, *(v12 - 8));
LABEL_23:
              v23 = a4;
              v24 = v15;
              goto LABEL_24;
            }

            v29 = sqlite3_column_int(v10, *(v12 - 8));
            v25 = v14(a4, v15, v29);
          }

LABEL_38:
          v18 = v25;
          goto LABEL_42;
        }

        if (v16 <= 5)
        {
          if (v16 == 4)
          {
            v33 = sqlite3_column_bytes(v10, *(v12 - 8));
            v34 = sqlite3_column_blob(v10, v17);
            if (v34 || a6)
            {
              if (v34)
              {
                v31 = CFDataCreate(alloc, v34, v33);
                goto LABEL_51;
              }

              goto LABEL_52;
            }
          }

          else
          {
            v26 = sqlite3_column_bytes(v10, *(v12 - 8));
            v27 = sqlite3_column_blob(v10, v17);
            if (v27 || a6)
            {
              if (v27)
              {
                v28 = v27;
              }

              else
              {
                v28 = a5;
              }

              v25 = (v14)(a4, v15, v28, v26);
              goto LABEL_38;
            }
          }

LABEL_41:
          v18 = 1;
          goto LABEL_42;
        }

        switch(v16)
        {
          case 6:
            v32 = sqlite3_column_double(v10, *(v12 - 8));
            v25 = (v14)(a4, v15, v32);
            goto LABEL_38;
          case 7:
            v35 = sqlite3_column_type(v10, *(v12 - 8));
            if (v35 == 5)
            {
              goto LABEL_48;
            }

            if (v35 == 2)
            {
              valuePtr = sqlite3_column_double(v10, v17);
              v36 = alloc;
              v37 = kCFNumberDoubleType;
            }

            else
            {
              valuePtr = COERCE_DOUBLE(sqlite3_column_int64(v10, v17));
              v36 = alloc;
              v37 = kCFNumberSInt64Type;
            }

            v42 = CFNumberCreate(v36, v37, &valuePtr);
            break;
          case 8:
            v19 = sqlite3_column_type(v10, *(v12 - 8));
            if (v19 == 5)
            {
LABEL_48:
              v38 = 0;
              goto LABEL_58;
            }

            if (v19 == 2)
            {
              v20 = sqlite3_column_double(v10, v17);
            }

            else
            {
              v20 = sqlite3_column_int64(v10, v17);
            }

            v42 = CFDateCreate(0, v20);
            break;
          default:
            goto LABEL_42;
        }

        v38 = v42;
        if (v42)
        {
          goto LABEL_59;
        }

LABEL_58:
        if (a6)
        {
LABEL_59:
          if (v38)
          {
            v41 = v38;
          }

          else
          {
            v41 = a5;
          }

          v39 = a4;
          v40 = v15;
          goto LABEL_63;
        }

LABEL_42:
        if (v13 < v11)
        {
          v12 += 24;
          ++v13;
          if (v18)
          {
            continue;
          }
        }

        return;
      }
    }
  }
}

void CPSqlitePhoneNumberContainsAlphaCharacters(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 != 1)
  {

    sqlite3_result_error(a1, "CPSqlitePhoneNumberContainsAlphaCharacters: wrong number of arguments", -1);
    return;
  }

  v4 = sqlite3_value_text(*a3);
  if (!v4 || (v5 = v4, (v6 = strlen(v4)) == 0))
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = MEMORY[0x1E69E9830];
  while (1)
  {
    v10 = *v5++;
    v9 = v10;
    if (v10 < 0)
    {
      break;
    }

    if ((*(v8 + 4 * v9 + 60) & 0x100) != 0)
    {
      goto LABEL_17;
    }

LABEL_9:
    if (!--v7)
    {
      goto LABEL_10;
    }
  }

  if (!__maskrune(v9, 0x100uLL))
  {
    goto LABEL_9;
  }

LABEL_17:
  v11 = 1;
LABEL_11:

  sqlite3_result_int(a1, v11);
}

size_t CPSqliteCompareSortKeyPrefixes(char *__s, char *a2, int a3)
{
  result = 0;
  if (__s)
  {
    if (a2)
    {
      result = strlen(__s);
      if (result)
      {
        v7 = result;
        v8 = strchr(__s, 1);
        v9 = strchr(__s, 2);
        v10 = strlen(a2);
        v11 = strchr(a2, 2);
        if (!v8)
        {
          v8 = &__s[v7];
        }

        if (!v9)
        {
          v9 = v8;
        }

        while (1)
        {
          v12 = v9 - __s;
          if (v11 && v12 < v10)
          {
            v13 = v9;
            v14 = v11;
            do
            {
              if (v12 != v14 - a2 || v13 == v8)
              {
                break;
              }

              v16 = strchr(v13 + 1, 2);
              v17 = v8 < v16 || v16 == 0;
              v13 = v17 ? v8 : v16;
              v12 = v13 - __s;
              if (!*v14)
              {
                break;
              }

              v18 = strchr(v14 + 1, 2);
              if (!v18)
              {
                break;
              }

              v14 = v18;
            }

            while (v12 < v10);
          }

          if ((a3 & 1) == 0 && v10 <= v12 && !strncmp(a2, __s, v10) || a3 && v10 == v12 && !strncmp(a2, __s, v10))
          {
            break;
          }

          if (*v9)
          {
            __s = v9 + 1;
            v19 = strchr(v9 + 1, 2);
            v20 = v8 < v19 || v19 == 0;
            v9 = v20 ? v8 : v19;
            if (__s <= v8)
            {
              continue;
            }
          }

          return 0;
        }

        return 1;
      }
    }
  }

  return result;
}

void CPSqliteHasSortKeyPrefix(sqlite3_context *a1, int a2, uint64_t a3)
{
  if (a2 == 3)
  {
    v4 = *(a3 + 8);
    v5 = *(a3 + 16);
    if (*a3)
    {
      v6 = sqlite3_value_blob(*a3);
      if (!v4)
      {
LABEL_5:
        if (v5)
        {
          v7 = sqlite3_value_int(v5) != 0;
        }

        else
        {
          v7 = 0;
        }

        v8 = CPSqliteCompareSortKeyPrefixes(v6, v4, v7);

        sqlite3_result_int(a1, v8);
        return;
      }
    }

    else
    {
      v6 = 0;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v4 = sqlite3_value_blob(v4);
    goto LABEL_5;
  }

  sqlite3_result_error(a1, "CPSqliteHasSortKeyPrefix: wrong number of arguments", -1);
}

uint64_t _CPSqliteUtilitiesGetIntegerResultAtPathWithKey(const __CFString *a1, const char *a2, const char *a3)
{
  v5 = _CPCreateUTF8StringFromCFString(a1);
  ppDb = 0;
  v6 = sqlite3_open_v2(v5, &ppDb, 1, 0);
  v7 = ppDb;
  if (ppDb)
  {
    if (v6)
    {
      v8 = 0xFFFFFFFFLL;
    }

    else
    {
      pStmt = 0;
      v9 = strlen(a2);
      v10 = sqlite3_prepare_v2(ppDb, a2, v9, &pStmt, 0);
      v11 = pStmt;
      if (pStmt)
      {
        if (v10)
        {
          v8 = 0xFFFFFFFFLL;
        }

        else
        {
          if (a3)
          {
            v12 = strlen(a3);
            sqlite3_bind_text(pStmt, 1, a3, v12, 0);
            v11 = pStmt;
          }

          if (sqlite3_step(v11) == 100)
          {
            v8 = sqlite3_column_int(pStmt, 0);
          }

          else
          {
            v8 = 0xFFFFFFFFLL;
          }

          sqlite3_reset(pStmt);
          v11 = pStmt;
        }

        sqlite3_finalize(v11);
      }

      else
      {
        v8 = 0xFFFFFFFFLL;
      }

      v7 = ppDb;
    }

    sqlite3_close(v7);
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

  free(v5);
  return v8;
}

uint64_t CPSqliteSetDefaultPageCacheSize(uint64_t result)
{
  if (result >= 10)
  {
    __defaultPageCacheSize = result;
  }

  return result;
}

uint64_t CPSqliteDatabaseIsCorrupted(sqlite3 *db)
{
  v1 = db;
  if (!db)
  {
    return v1;
  }

  ppStmt = 0;
  v2 = sqlite3_prepare_v2(db, "PRAGMA integrity_check;", -1, &ppStmt, 0);
  if ((v2 - 5) <= 1)
  {
    goto LABEL_3;
  }

  if (!v2)
  {
    v2 = sqlite3_step(ppStmt);
    if ((v2 - 5) <= 1)
    {
LABEL_3:
      syslog(4, "Got SQLite error %i when running integrity check on db handle at %p.  Not flagging as corrupt.\n", v2, v1);
      v1 = 0;
      goto LABEL_6;
    }

    if (v2 == 100)
    {
      v4 = sqlite3_column_text(ppStmt, 0);
      v5 = sqlite3_column_bytes(ppStmt, 0);
      v1 = 1;
      if (v4 && v5 >= 1 && *v4 == 111 && v4[1] == 107)
      {
        v1 = v4[2] != 0;
      }

      goto LABEL_6;
    }
  }

  v1 = 1;
LABEL_6:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v1;
}

BOOL truncateDatabaseWithSettings(sqlite3 *a1, int a2, int a3, int a4)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a2;
  if (a3 == 1)
  {
    a2 |= 8u;
    goto LABEL_7;
  }

  if (a3 == 2)
  {
    a2 |= 0xCu;
LABEL_7:
    v8 = a2;
  }

  if (a4)
  {
    v8 = a2 | 0x80;
  }

  v6 = sqlite3_file_control(a1, 0, 101, &v8);
  v5 = v6 == 0;
  if (v6)
  {
    syslog(4, "Failed to delete db handle %p!  SQLite error %i.\n", a1, v6);
  }

  return v5;
}

uint64_t truncateDatabase(uint64_t a1)
{
  v1 = a1;
  ppDb = 0;
  if (!a1)
  {
    return v1;
  }

  if ((*(a1 + 116) & 0x1000) != 0)
  {
    v2 = CPStartAnInhibitor();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    v4 = *(v3 + 8);
    if (v4)
    {
      v5 = 0;
      ppDb = *(v3 + 8);
      goto LABEL_15;
    }
  }

  if (*v1)
  {
    v6 = _CPCreateUTF8StringFromCFString(*v1);
    if (v6)
    {
      v7 = v6;
      v8 = *(v1 + 260);
      v9 = v8 >= 4 ? 2 : 4194306 - (v8 << 20);
      sqlite3_open_v2(v6, &ppDb, v9, 0);
      free(v7);
      v4 = ppDb;
      if (ppDb)
      {
        v5 = 1;
LABEL_15:
        v1 = truncateDatabaseWithSettings(v4, (*(v1 + 116) >> 10) & 1, *(v1 + 256), 1);
        if (v5)
        {
          sqlite3_close(ppDb);
        }

        goto LABEL_18;
      }
    }
  }

  v10 = _CPCreateUTF8StringFromCFString(*v1);
  syslog(4, "Could not get handle to truncate database %s!\n", v10);
  free(v10);
  v1 = 0;
LABEL_18:
  if (v2)
  {
    CPStopInhibitorWithIdentifier(v2);
  }

  return v1;
}

uint64_t CPSqliteDatabaseGetAutoVacuumLevel(sqlite3 *a1)
{
  if (!a1)
  {
    return 0;
  }

  ppStmt = 0;
  if (sqlite3_prepare_v2(a1, "PRAGMA auto_vacuum;", -1, &ppStmt, 0) || sqlite3_step(ppStmt) != 100)
  {
    v1 = 0;
  }

  else
  {
    v1 = sqlite3_column_int(ppStmt, 0);
  }

  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

  return v1;
}

uint64_t _connectAndCheckVersion(uint64_t a1, const char *a2, _BYTE *a3, int a4, int a5, _DWORD *a6)
{
  *v42 = 0;
  v41 = 0;
  v12 = *(a1 + 40);
  if (v12 && (v12(a1) & 1) == 0)
  {
    v41 = 3;
    goto LABEL_10;
  }

  v13 = _createConnection(a1, a2, a4, a5, &v41);
  *v42 = v13;
  if (!v13 || (*(a1 + 116) & 4) != 0)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v40 = 0;
  v15 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(v13, @"SELECT value FROM _SqliteDatabaseProperties WHERE key = ?;", 1);
  v16 = *(a1 + 116) & (a4 ^ 1);
  v17 = *(a1 + 208);
  if (!v15)
  {
    if (v17)
    {
      v21 = v17(a1, v14);
      switch(v21)
      {
        case 2:
          CPSqliteConnectionClose(v14);
          v14 = 0;
          goto LABEL_31;
        case 1:
          v20 = 0;
          v22 = 0;
          v40 = 1;
          goto LABEL_32;
        case 0:
          v22 = 0;
          LODWORD(v19) = -1;
          v20 = 1;
          goto LABEL_33;
      }
    }

    else
    {
      checkConnectionStatus(v42, &v40);
      v14 = *v42;
      if (*v42)
      {
        v22 = 0;
        v20 = v40 ^ 1;
LABEL_32:
        LODWORD(v19) = -1;
        goto LABEL_33;
      }
    }

LABEL_28:
    v20 = 0;
    v22 = 0;
    goto LABEL_32;
  }

  if (v17 && v17(a1, v14) == 2)
  {
    CPSqliteConnectionClose(v14);
    v14 = 0;
    v16 = 0;
LABEL_31:
    v20 = 0;
    v22 = 0;
    *v42 = 0;
    goto LABEL_32;
  }

  if (!v16)
  {
    goto LABEL_28;
  }

  LODWORD(v19) = CPSqliteConnectionIntegerForPropertyWithDefaultValue(v14, @"_ClientVersion", 0);
  checkConnectionStatus(v42, &v40);
  v14 = *v42;
  if (!*v42 || v19 == *(a1 + 112))
  {
    goto LABEL_69;
  }

  _beginImmediateTransaction(*v42);
  checkConnectionStatus(v42, &v40);
  if (!*v42)
  {
    v14 = 0;
LABEL_69:
    v20 = 0;
    v22 = 0;
    v16 = 1;
    goto LABEL_33;
  }

  v16 = 1;
  v19 = _integerForProperty(*v42, @"_ClientVersion", &v41, 0, 1);
  checkConnectionStatus(v42, &v40);
  v14 = *v42;
  if (!*v42)
  {
LABEL_89:
    v20 = 0;
    goto LABEL_90;
  }

  if (v41 != 17)
  {
    if (*(a1 + 112) == v19)
    {
      v20 = 0;
      v22 = 1;
      if ((v40 ^ 1))
      {
        goto LABEL_40;
      }

LABEL_34:
      if ((a4 & 1) == 0)
      {
        syslog(4, "%s may be out of date (version %d, expected %d), we will create a new database.\n", a2, v19, *(a1 + 112));
        if (truncateDatabase(a1))
        {
          v23 = *(a1 + 80);
          if (v23)
          {
            v20 = 1;
            v23(a1, 1);
            goto LABEL_40;
          }
        }

        else
        {
          syslog(4, "Failed to delete database at %s!\n", a2);
        }

        v20 = 1;
      }

LABEL_40:
      if (v14)
      {
        CPSqliteConnectionClose(v14);
      }

      v24 = _createConnection(a1, a2, a4, a5, &v41);
      *v42 = v24;
      if (!v24)
      {
        goto LABEL_10;
      }

      v14 = v24;
      CPSqliteConnectionBeginTransactionType(v24, 0);
      goto LABEL_44;
    }

    if (*(a1 + 88) != 1)
    {
      v34 = *(a1 + 56);
      if (v34 && *(a1 + 64) && v34(a1, *v42, v19, *(a1 + 104)))
      {
        v35 = (*(a1 + 64))(a1, v14, v19, *(a1 + 104));
        if (v35 == 2)
        {
          CPSqliteConnectionClose(v14);
          v14 = 0;
          v20 = 0;
          *v42 = 0;
          goto LABEL_90;
        }

        if (v35 != 1)
        {
          if (!v35)
          {
            CPSqliteConnectionSetIntegerForProperty(v14, @"_ClientVersion", *(a1 + 112));
          }

          goto LABEL_89;
        }
      }

LABEL_93:
      v20 = 0;
      v40 = 1;
      goto LABEL_90;
    }

    CPSqliteConnectionClose(*v42);
    *v42 = 0;
    v31 = dlopen("/System/Library/PrivateFrameworks/DataMigration.framework/DataMigration", 1);
    if (v31)
    {
      v32 = v31;
      if (*(a1 + 96))
      {
        v33 = dlsym(v31, "DMPerformMigrationReturningAfterPlugin");
        if (v33)
        {
          v33(*(a1 + 96));
          goto LABEL_87;
        }
      }

      else
      {
        v36 = dlsym(v31, "DMPerformMigration");
        if (v36)
        {
          v37 = v36;
          v38 = CFStringCreateWithFormat(0, 0, @"Database version conflict detected: %s", a2);
          v37();
          CFRelease(v38);
LABEL_87:
          dlclose(v32);
          v39 = _createConnection(a1, a2, a4, 0, &v41);
          v14 = v39;
          *v42 = v39;
          if (!v39)
          {
            v20 = 0;
            v16 = 1;
            goto LABEL_90;
          }

          CPSqliteConnectionBeginTransactionType(v39, 0);
          LODWORD(v19) = CPSqliteConnectionIntegerForPropertyWithDefaultValue(v14, @"_ClientVersion", 0);
          v16 = 1;
          if (v19 == *(a1 + 112))
          {
            goto LABEL_89;
          }

          goto LABEL_93;
        }
      }

      dlclose(v32);
    }

    v14 = 0;
    goto LABEL_93;
  }

  CPSqliteConnectionClose(*v42);
  *v42 = 0;
  v14 = 0;
  if (!a3)
  {
    goto LABEL_89;
  }

  v20 = 0;
  *a3 = 1;
LABEL_90:
  v22 = 1;
LABEL_33:
  if (v40 == 1)
  {
    goto LABEL_34;
  }

LABEL_44:
  if ((v20 & 1) == 0 && v14)
  {
    if ((a4 & 1) == 0)
    {
      v25 = CPSqliteConnectionCopyValueForProperty(v14, @"_UniqueIdentifier");
      if (v25)
      {
        CFRelease(v25);
      }

      else
      {
        _addUniqueIdentifierToDatabase(v14, 1);
      }
    }

    if (v22)
    {
      _performSqlUsingConnection(v14, @"COMMIT;");
      *(v14 + 64) = 0xFFFF;
    }
  }

  if (v14 && ((v20 ^ 1) & 1) == 0 && (a4 & 1) == 0)
  {
    _beginImmediateTransaction(v14);
    if (!v16 || (v26 = _integerForProperty(v14, @"_ClientVersion", &v41, 0, 1), v41) || *(a1 + 112) != v26)
    {
      v27 = sqlite3_exec(*(v14 + 8), "pragma legacy_file_format = 0;", 0, 0, 0);
      checkResultWithStatement(a1, 0, *(v14 + 8), v27, "CPSqliteDatabaseSetNewFileFormatPragma", 0);
      v28 = *(a1 + 24);
      if (v28)
      {
        v28(a1, v14);
      }

      v29 = sqlite3_exec(*(v14 + 8), "CREATE TABLE IF NOT EXISTS _SqliteDatabaseProperties (key TEXT, value TEXT, UNIQUE(key));", 0, 0, 0);
      checkResultWithStatement(a1, 0, *(v14 + 8), v29, "_connectAndCheckVersion", 0);
      if (v29)
      {
        *(a1 + 8) = 0;
        goto LABEL_10;
      }

      v30 = *(a1 + 16);
      if (v30)
      {
        v30(a1, v14, *(a1 + 48));
      }

      if (*(a1 + 116))
      {
        CPSqliteConnectionSetIntegerForProperty(v14, @"_ClientVersion", *(a1 + 112));
      }

      _addUniqueIdentifierToDatabase(v14, 0);
    }

    _performSqlUsingConnection(v14, @"COMMIT;");
    *(v14 + 64) = 0xFFFF;
  }

LABEL_10:
  if (a6)
  {
    *a6 = v41;
  }

  return *v42;
}

sqlite3 **_createConnection(uint64_t a1, const char *a2, int a3, int a4, int *a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A004006D1BBC6uLL);
  if ((a3 & 1) == 0)
  {
    if (strcmp(a2, ":memory:"))
    {
      if (access(a2, 6) == -1 && *__error() != 2)
      {
        memset(&v41, 0, sizeof(v41));
        if (!stat(a2, &v41))
        {
          st_uid = v41.st_uid;
          if (st_uid == geteuid())
          {
            syslog(3, "fixing permissions on %s", a2);
            if (chmod(a2, 0x180u) < 0)
            {
              v12 = __error();
              v13 = strerror(*v12);
              syslog(3, "error %s setting permissions on %s", v13, a2);
            }
          }
        }
      }
    }
  }

  v14 = *(a1 + 248);
  if (v14)
  {
    v15 = _CPCreateUTF8StringFromCFString(v14);
  }

  else
  {
    v15 = 0;
  }

  if (__defaultSharedCacheModeEnabledState)
  {
    v16 = (a4 & 0x40000) == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    v17 = a4 | 0x20000;
  }

  else
  {
    v17 = a4;
  }

  v18 = *(a1 + 260);
  if (v18 >= 4)
  {
    v19 = 0;
  }

  else
  {
    v19 = 0x400000 - (v18 << 20);
  }

  if ((*(a1 + 116) & 0x1000) != 0)
  {
    v20 = CPStartAnInhibitor();
  }

  else
  {
    v20 = 0;
  }

  if (a3)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  v22 = v17 | v21 | v19;
  v23 = sqlite3_open_v2(a2, v10 + 1, v22, v15);
  v24 = v23;
  if (!v23)
  {
    v28 = 0;
    if (!v15)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v25 = sqlite3_errstr(v23);
  syslog(3, "Error opening database: %s", v25);
  v26 = CFStringCreateWithFormat(0, 0, @"com.apple.AppSupport._createConnectionForWriting.sqlite3_open_v2.error.%d", v24);
  CPAggregateDictionaryAddValueForScalarKey(v26, 1);
  CFRelease(v26);
  v27 = v10[1];
  if (v27)
  {
    sqlite3_close(v27);
  }

  v28 = sqlite3_open_v2(a2, v10 + 1, v22 | 4, v15);
  if (v15)
  {
LABEL_31:
    free(v15);
  }

LABEL_32:
  v29 = v10[1];
  if (!v29 || v28)
  {
    if (v29)
    {
      sqlite3_close(v29);
    }

    free(v10);
    v10 = 0;
  }

  else
  {
    *v10 = a1;
    *(v10 + 16) = 0xFFFF;
    if ((*(a1 + 116) & 0x800) != 0)
    {
      v30 = 30000;
    }

    else
    {
      v30 = 0x7FFFFFFF;
    }

    if (sqlite3_busy_timeout(v29, v30))
    {
      syslog(3, "Failed to set busy timout");
    }

    if (*(a1 + 216))
    {
      v31 = *(a1 + 224);
      v32 = *(a1 + 216);
    }

    else
    {
      v32 = defaultBusyHandler;
      v31 = v10;
    }

    if (sqlite3_busy_handler(v10[1], v32, v31))
    {
      syslog(3, "Failed to set busy handler");
    }

    sqlite3_commit_hook(v10[1], commitHook, a1);
    sqlite3_update_hook(v10[1], updateHook, a1);
    CPSqliteSetupLoggingForDatabaseHandle(v10[1]);
    if (__defaultPageCacheSize >= 10)
    {
      snprintf(&v41, 0x80uLL, "PRAGMA cache_size=%d;", __defaultPageCacheSize);
      sqlite3_exec(v10[1], &v41, 0, 0, 0);
    }

    v33 = *(a1 + 32);
    if (v33)
    {
      v33(a1, v10);
    }

    if (v24)
    {
      if (*(a1 + 256))
      {
        snprintf(&v41, 0x80uLL, "PRAGMA auto_vacuum=%d;", *(a1 + 256));
        sqlite3_exec(v10[1], &v41, 0, 0, 0);
      }

LABEL_56:
      if ((*(a1 + 116) & 0x400) != 0)
      {
        sqlite3_exec(v10[1], "PRAGMA journal_mode = WAL;", 0, 0, 0);
      }

      goto LABEL_63;
    }

    v34 = CPSqliteConnectionStatementForSQLAndIgnoreErrors(v10, @"PRAGMA journal_mode;", 0);
    if (!v34)
    {
      goto LABEL_63;
    }

    v35 = v34;
    v36 = CPSqliteStatementCopyStringResult(v34);
    if (!v36)
    {
      CPSqliteStatementReset(v35);
      goto LABEL_63;
    }

    v37 = v36;
    v38 = CFStringCompare(v36, @"wal", 1uLL);
    CFRelease(v37);
    CPSqliteStatementReset(v35);
    if (v38)
    {
      goto LABEL_56;
    }
  }

LABEL_63:
  if (v20)
  {
    CPStopInhibitorWithIdentifier(v20);
  }

  if (a5)
  {
    *a5 = v28;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v10;
}

void checkConnectionStatus(uint64_t *a1, _BYTE *a2)
{
  v4 = sqlite3_errcode(*(*a1 + 8));
  if (v4)
  {
    v5 = v4;
    if ((v4 - 5) > 1)
    {
      if (v4 != 1)
      {
        if (v4 == 11)
        {
          CPSqliteConnectionClose(*a1);
          *a1 = 0;
          *a2 = 1;
        }

        else
        {
          v6 = sqlite3_errmsg(*(*a1 + 8));
          syslog(3, "encountered sqlite error %d: %s", v5, v6);
        }
      }
    }

    else
    {
      CPSqliteConnectionClose(*a1);
      *a1 = 0;
    }
  }
}

uint64_t _beginImmediateTransaction(uint64_t a1)
{
  v2 = 5;
  do
  {
    CPSqliteConnectionBeginTransactionType(a1, 1u);
    result = sqlite3_errcode(*(a1 + 8));
    if ((result - 7) < 0xFFFFFFFE)
    {
      break;
    }

    result = usleep(0x3E8u);
    --v2;
  }

  while (v2);
  return result;
}

void _addUniqueIdentifierToDatabase(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a2)
    {
      CPSqliteConnectionBeginTransactionType(a1, 0);
    }

    v4 = *MEMORY[0x1E695E480];
    v5 = CFUUIDCreate(*MEMORY[0x1E695E480]);
    v6 = CFUUIDCreateString(v4, v5);
    CPSqliteConnectionSetValueForProperty(a1, @"_UniqueIdentifier", v6);
    if (v6)
    {
      CFRelease(v6);
    }

    CFRelease(v5);
    if (a2)
    {
      _performSqlUsingConnection(a1, @"COMMIT;");
      *(a1 + 64) = 0xFFFF;
    }
  }
}

uint64_t defaultBusyHandler(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  if ((*(v4 + 116) & 0x10) != 0)
  {
    CPSqliteDatabaseRequestUnlock(v4);
  }

  if (a1[1])
  {
    busy = _sqlite3_system_busy_handler();
    v6 = a1[1];

    return busy(v6, a2);
  }

  else
  {
    syslog(3, "Failed to call _sqlite3_system_busy_handler, count %i", a2);
    return 0;
  }
}

uint64_t commitHook(uint64_t a1)
{
  v1 = *(a1 + 192);
  if (v1)
  {
    return v1();
  }

  else
  {
    return 0;
  }
}

uint64_t updateHook(uint64_t result)
{
  v1 = *(result + 200);
  if (v1)
  {
    return v1();
  }

  return result;
}

BOOL _debugLoggingEnabled()
{
  v0 = __debugLoggingForced;
  if (__debugLoggingForced == -1)
  {
    v0 = getenv("CPSQLDEBUG") != 0;
    __debugLoggingForced = v0;
  }

  return (v0 | __debugLoggingEnabled) != 0;
}

uint64_t __updateNotifyRegistration_block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 232) == a2)
  {
    *(v2 + 116) |= 0x200u;
    v2 = *(a1 + 32);
  }

  result = *(v2 + 240);
  if (result)
  {
    if ((*(v2 + 116) & 0x200) != 0)
    {
      return (*(result + 16))();
    }
  }

  return result;
}

void *CPSqliteStatementForSQLUncachedAndIgnoreErrors(uint64_t *a1, const __CFString *a2, int a3)
{
  v5 = _CPCreateUTF8StringFromCFString(a2);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = CPSqlitePreparedStatement(a1, v5, a3);
  if (v7)
  {
    v8 = v7;
    v9 = malloc_type_malloc(0x20uLL, 0x10200402C28E7A6uLL);
    v10 = v9;
    if (v9)
    {
      *v9 = a1;
      v9[1] = v8;
      *(v9 + 2) = CPMachAbsoluteTime();
    }

    else
    {
      sqlite3_finalize(v8);
    }
  }

  else
  {
    v10 = 0;
  }

  free(v6);
  return v10;
}

void handleSqliteCorruptError(void *a1, int a2, sqlite3 *a3, uint64_t a4)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Got SQLITE_CORRUPT error.  Will try to delete database, but only if the pragma integrity_check fails.", buf, 2u);
  }

  syslog(4, "Got SQLITE_CORRUPT for db %p.  Will try to delete database, but only if the pragma integrity_check fails.\n", a1);
  runIntegrityCheckAndAbort(a1, a2, a3, a4);
}

void handleSqliteNotADBError(void *a1, int a2, sqlite3 *a3, uint64_t a4)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Got SQLITE_NOTADB error.  Will try to delete database, but only if the pragma integrity_check fails.", buf, 2u);
  }

  syslog(4, "Got SQLITE_NOTADB for db %p.  Will try to delete database, but only if the pragma integrity_check fails.\n", a1);
  runIntegrityCheckAndAbort(a1, a2, a3, a4);
}

uint64_t handleSqliteIOError(const void *a1, char a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v15 = a5;
    _os_log_error_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Got SQLITE_IOERR with extended error code %i.  Will try to delete database, but only if the pragma integrity_check fails.\n", buf, 8u);
  }

  syslog(4, "Got SQLITE_IOERR with extended error code %i for db %p.  Will try to delete database, but only if the pragma integrity_check fails.\n", a5, a1);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __handleSqliteIOError_block_invoke;
  v12[3] = &__block_descriptor_tmp_163;
  v13 = a2;
  v12[4] = a1;
  v12[5] = a3;
  v12[6] = a4;
  result = runWithExtendedSQLiteErrorCode_SQLITE_IOERR_BLOCKED(v12);
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sqlite3PrintErrorWithStatement(sqlite3 *a1, uint64_t a2, sqlite3_stmt *a3)
{
  sqlite3_errmsg(a1);
  if (a3)
  {
    sqlite3_sql(a3);
    syslog(4, "%s: %s for %s\n");
  }

  else
  {
    syslog(4, "%s: %s\n");
  }
}

void runIntegrityCheckAndAbort(void *a1, int a2, sqlite3 *a3, uint64_t a4)
{
  v20 = a3;
  if (a4)
  {
    sqlite3PrintErrorWithStatement(a3, "runIntegrityCheckAndAbort", *(a4 + 8));
  }

  if (a1 && (*(a1 + 58) & 0x1000) != 0)
  {
    v7 = CPStartAnInhibitor();
  }

  else
  {
    v7 = 0;
  }

  v8 = sqlite3_close(a3);
  if (v8)
  {
    syslog(4, "Failed to close db handle %p, with SQLite error %i.\n", a1, v8);
  }

  if (!a1 || !*a1 || (v9 = _CPCreateUTF8StringFromCFString(*a1)) == 0)
  {
    abortAfterFailingToGetPath(a1);
  }

  v10 = v9;
  v11 = integrityCheckDatabase(v9, &v20, a1, a2);
  sqlite3_close(v20);
  if (v11)
  {
    if (v7)
    {
      CPStopInhibitorWithIdentifier(v7);
    }
  }

  else
  {
    v12 = random() % 5000000;
    syslog(4, "Failed first integrity check, waiting %i useconds.", v12);
    usleep(v12);
    v13 = integrityCheckDatabase(v10, &v20, a1, a2);
    if (!v13)
    {
      if (a2)
      {
        syslog(4, "Failed second integrity check, but leaving read-only database in place.");
      }

      else
      {
        syslog(4, "Failed second integrity check, deleting the database files.");
        v14 = v20;
        if (CPIsInternalDevice() || CFPreferencesGetAppBooleanValue(@"CopyCorruptDatabases", *MEMORY[0x1E695E890], 0))
        {
          v15 = malloc_type_calloc(1uLL, 0x400uLL, 0xB4B889E2uLL);
          v16 = malloc_type_calloc(1uLL, 0x400uLL, 0x3A568C22uLL);
          v17 = 0;
          ppDb = 0;
          if ((*(a1 + 58) & 0x1000) != 0)
          {
            v17 = CPStartAnInhibitor();
          }

          CPBasename(v10, v15, 1024);
          CPTemporaryPath(v15, v16, 0x400uLL);
          v18 = sqlite3_open(v16, &ppDb);
          if (v18)
          {
            syslog(2, "%s: Unable to sqlite3_open corruptCopyPath %s with sql result code %d", "void deleteCorruptDatabase(char *, sqlite3 *, CPSqliteDatabase *)", v16, v18);
          }

          else
          {
            if (sqlite3_file_control(ppDb, 0, 102, v14))
            {
              syslog(2, "Tried to copy possible corrupt database at path %s, but we failed with SQLite error %i.\n");
            }

            else
            {
              syslog(2, "Database at path %s may be corrupt. Copied it to %s for further investigation.\n");
            }

            sqlite3_close(ppDb);
          }

          if (v17)
          {
            CPStopInhibitorWithIdentifier(v17);
          }

          free(v15);
          free(v16);
        }

        if (truncateDatabase(a1))
        {
          v19 = a1[10];
          if (v19)
          {
            v19(a1, 0);
          }
        }

        else
        {
          syslog(2, "Failed to delete database at %s!\n");
        }
      }
    }

    sqlite3_close(v20);
    if (v7)
    {
      CPStopInhibitorWithIdentifier(v7);
    }

    if (!v13)
    {
      abortAfterFailingIntegrityCheck(v10);
    }
  }

  abortAfterPassingIntegrityCheck(v10);
}

uint64_t integrityCheckDatabase(const char *a1, sqlite3 **a2, uint64_t a3, int a4)
{
  v8 = *(a3 + 248);
  if (v8)
  {
    v9 = _CPCreateUTF8StringFromCFString(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a3 + 260);
  if (v10 >= 4)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0x400000 - (v10 << 20);
  }

  if (a4)
  {
    v12 = 1;
  }

  else
  {
    v12 = 6;
  }

  v13 = sqlite3_open_v2(a1, a2, v11 | v12, v9);
  if (v9)
  {
    free(v9);
  }

  if ((v13 - 5) >= 2)
  {
    if (v13)
    {
      return 0;
    }

    else
    {
      return CPSqliteDatabaseIsCorrupted(*a2) ^ 1;
    }
  }

  else
  {
    syslog(4, "Got SQLite error %i when trying to open db at %s.  Skipping integrity check.\n", v13, a1);
    return 1;
  }
}

void abortAfterPassingIntegrityCheck(const char *a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting after passing the integrity check", buf, 2u);
  }

  syslog(4, "%s passed the integrity check, but we exited anyways\n", a1);
  abort();
}

void abortAfterFailingIntegrityCheck(const char *a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Exiting after failing the integrity check", buf, 2u);
  }

  syslog(4, "%s failed the integrity check\n", a1);
  abort();
}

void abortAfterFailingToGetPath(const void *a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_195E6C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Could not get path for database", buf, 2u);
  }

  syslog(4, "Could not get path for database at %p\n", a1);
  abort();
}

CFDataRef CPRecordRegisterClass()
{
  kCPRecordTypeID = _CFRuntimeRegisterClass();
  result = CFDataCreate(0, 0, 0);
  __CPNotNullDataValue = result;
  return result;
}

uint64_t CPRecordCreateWithRecordID(uint64_t a1, int a2)
{
  Instance = _createInstance(a1, a2);
  if (Instance && *(a1 + 72) >= 1)
  {
    v4 = 0;
    v5 = *MEMORY[0x1E695E738];
    v6 = 8;
    do
    {
      if (*(*(a1 + 80) + v6) == 4)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v8 = Current;
        if (!Current || *(Instance + 8 * v4 + 72) != v8)
        {
          if (v8)
          {
            v10 = Current;
          }

          else
          {
            v10 = v5;
          }

          CPRecordPropertyLoadHandler(Instance, v4, v10);
        }
      }

      ++v4;
      v6 += 40;
    }

    while (v4 < *(a1 + 72));
  }

  return Instance;
}

CFStringRef CPRecordCopyTableName(CFStringRef result)
{
  if (result)
  {
    return CFStringCreateWithCString(0, **(result->length + 80), 0x8000100u);
  }

  return result;
}

uint64_t CPRecordCreateCopy(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  Instance = _createInstance(v2, *(a1 + 32));
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 56) = *(a1 + 56);
    v5 = *(v2 + 72);
    if (v5 >= 1)
    {
      v6 = 0;
      v7 = a1 + 72;
      do
      {
        v8 = *(v7 + 8 * v6);
        if (v8)
        {
          v9 = *(v4 + 8 * v6 + 72) == v8;
        }

        else
        {
          v9 = 0;
        }

        if (!v9)
        {
          CPRecordPropertyLoadHandler(v4, v6, v8);
        }

        ++v6;
      }

      while (v5 != v6);
    }
  }

  return v4;
}

uint64_t CPRecordGetClass(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t _createInstance(uint64_t a1, int a2)
{
  v4 = 8 * *(a1 + 72) + 72;
  pthread_once(&kCPRecordRegisterClass, CPRecordRegisterClass);
  v5 = v4 - 16;
  Instance = _CFRuntimeCreateInstance();
  v7 = Instance;
  if (Instance)
  {
    bzero((Instance + 16), v5);
    *(v7 + 24) = a1;
    *(v7 + 32) = a2;
    v8 = *(a1 + 8);
    if (v8)
    {
      v8(v7);
    }
  }

  return v7;
}

uint64_t CPRecordGetID(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CPRecordInitializePropertyAndAllowLoading(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (result && (!a3 || *(result + 8 * a2 + 72) != a3))
  {
    v4 = *MEMORY[0x1E695E738];
    if (a4)
    {
      v4 = 0;
    }

    if (!a3)
    {
      a3 = v4;
    }

    return CPRecordPropertyLoadHandler(result, a2, a3);
  }

  return result;
}

uint64_t CPRecordInitializeProperty(uint64_t result, int a2, uint64_t a3)
{
  if (result && (!a3 || *(result + 8 * a2 + 72) != a3))
  {
    v3 = *MEMORY[0x1E695E738];
    if (!a3)
    {
      a3 = *MEMORY[0x1E695E738];
    }

    return CPRecordPropertyLoadHandler(result, a2, a3);
  }

  return result;
}

uint64_t CPRecordDetachWithRecordID(uint64_t result, int a2)
{
  *(result + 16) = 0;
  *(result + 56) = 1;
  *(result + 32) = a2;
  return result;
}

void CPRecordDestroy(void *context)
{
  if (context)
  {
    v2 = *(*(context + 3) + 24);
    if (v2)
    {
      v2(context);
    }

    v3 = *(context + 5);
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = *(context + 3);
    if (*(v4 + 72) >= 1)
    {
      v5 = 0;
      v6 = *MEMORY[0x1E695E738];
      v7 = 16;
      do
      {
        v8 = *(*(*(v4 + 80) + v7) + 8);
        if (v8)
        {
          v9 = *(context + v5 + 9);
          if (v9 && v9 != v6)
          {
            v8();
            v4 = *(context + 3);
          }
        }

        ++v5;
        v7 += 40;
      }

      while (v5 < *(v4 + 72));
    }

    v11 = *(context + 6);
    if (v11)
    {
      CFDictionaryApplyFunction(v11, _ClearOriginalProperty, context);
      CFRelease(*(context + 6));
    }

    v12 = *(context + 8);
    if (v12)
    {

      CFRelease(v12);
    }
  }
}

uint64_t _ClearOriginalProperty(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*MEMORY[0x1E695E738] != a2 && a2)
  {
    v3 = *(*(*(*(a3 + 24) + 80) + 40 * result + 16) + 8);
    if (v3)
    {
      return v3(a2);
    }
  }

  return result;
}

uint64_t CPRecordPropertyLoadHandler(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1 + 72;
  v6 = *(a1 + 72 + 8 * a2);
  v7 = a2;
  v8 = *MEMORY[0x1E695E738];
  if (v6)
  {
    v9 = v6 == v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = *(*(*(*(a1 + 24) + 80) + 40 * a2 + 16) + 8);
    if (v10)
    {
      v10();
    }
  }

  if (a3)
  {
    if (v8 != a3)
    {
      v11 = **(*(*(a1 + 24) + 80) + 40 * v7 + 16);
      if (v11)
      {
        a3 = v11(a3);
      }
    }
  }

  *(v5 + 8 * v7) = a3;
  return 1;
}

uint64_t CPRecordUnloadProperty(uint64_t result, int a2)
{
  if (result)
  {
    LODWORD(v2) = a2;
    v3 = result;
    v4 = *(result + 40);
    if (v4)
    {
      CFDictionaryRemoveValue(v4, a2);
    }

    v5 = *(v3 + 48);
    if (v5)
    {
      v2 = v2;
      Value = CFDictionaryGetValue(v5, v2);
      v7 = *MEMORY[0x1E695E738];
      if (Value)
      {
        if (Value != v7)
        {
          v8 = *(*(*(*(v3 + 24) + 80) + 40 * v2 + 16) + 8);
          if (v8)
          {
            v8();
          }
        }
      }

      CFDictionaryRemoveValue(*(v3 + 48), v2);
    }

    else
    {
      v7 = *MEMORY[0x1E695E738];
      v2 = v2;
    }

    result = *(v3 + 72 + 8 * v2);
    if (result)
    {
      v9 = result == v7;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = *(*(*(*(v3 + 24) + 80) + 40 * v2 + 16) + 8);
      if (v10)
      {
        result = v10();
      }
    }

    *(v3 + 72 + 8 * v2) = 0;
  }

  return result;
}

CFArrayRef CPRecordCopyChangedProperties(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v2);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(*(a1 + 40), v5, 0);
  v6 = CFArrayCreate(*MEMORY[0x1E695E480], v5, v4, 0);
  free(v5);
  return v6;
}

void CPRecordMarkPropertyChanged(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    Mutable = *(a1 + 40);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
      *(a1 + 40) = Mutable;
    }

    CFDictionarySetValue(Mutable, a2, 1);
    v5 = *(*(a1 + 24) + 112);
    if (v5)
    {

      v5(a1, a2);
    }
  }
}

void CPRecordSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = _updateDetachedRecord(a1);
  if (!updated)
  {
    return;
  }

  v7 = updated;
  v8 = updated[3];
  if ((*(v8 + 56) & 4) != 0 && *(v8 + 136) >= 3)
  {
    v9 = *(v8 + 144);
    if (v9)
    {
      v9(updated, a2, a3);
    }
  }

  if (*(v7 + 58))
  {
    v10 = *(v7 + 64);
    if (!v10 || (v11 = a2, !CFSetContainsValue(v10, a2)))
    {
      v12 = *(v7 + 48);
      if (!v12 || (v11 = a2, !CFDictionaryGetValue(v12, a2)))
      {
        Mutable = *(v7 + 64);
        if (!Mutable)
        {
          Mutable = CFSetCreateMutable(0, *(*(v7 + 24) + 72), 0);
          *(v7 + 64) = Mutable;
        }

        v11 = a2;
        CFSetAddValue(Mutable, a2);
        Property = CPRecordGetProperty(a1, a2);
        if (Property)
        {
          v15 = Property;
          v16 = **(*(*(v7 + 24) + 80) + 40 * a2 + 16);
          if (v16)
          {
            v15 = v16(Property);
          }
        }

        else
        {
          v15 = *MEMORY[0x1E695E738];
        }

        v24 = *(v7 + 48);
        if (!v24)
        {
          v24 = CFDictionaryCreateMutable(0, 0, 0, 0);
          *(v7 + 48) = v24;
        }

        CFDictionaryAddValue(v24, a2, v15);
        CFSetRemoveValue(*(v7 + 64), a2);
        if (!a3)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  if (!a3)
  {
LABEL_19:
    v17 = *MEMORY[0x1E695E738];
    if (a3)
    {
      v18 = a3;
    }

    else
    {
      v18 = *MEMORY[0x1E695E738];
    }

    CPRecordPropertyLoadHandler(v7, a2, v18);
    goto LABEL_23;
  }

LABEL_18:
  if (*(v7 + 8 * v11 + 72) != a3)
  {
    goto LABEL_19;
  }

LABEL_23:
  CPRecordMarkPropertyChanged(v7, a2);
  v19 = *(v7 + 16);
  if (!v19)
  {
    return;
  }

  v20 = *(v19 + 24);
  if (v20)
  {
    if (CFDictionaryContainsKey(v20, v7))
    {
      return;
    }

    v19 = *(v7 + 16);
  }

  v21 = *(v19 + 40);
  if (!v21 || (Value = CFDictionaryGetValue(v21, *(v7 + 24))) == 0 || !CFDictionaryContainsKey(Value, *(v7 + 32)))
  {
    if (*(*(v7 + 16) + 57))
    {
      if (*(*(*(v7 + 24) + 80) + 40 * v11 + 25))
      {
        v23 = 2;
      }

      else
      {
        v23 = 3;
      }
    }

    else
    {
      v23 = 2;
    }

    _addChangeActions(v7, v23);
  }
}

const void *_updateDetachedRecord(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  CFRetain(a1);
  v2 = *(a1 + 16);
  v3 = a1;
  if (v2)
  {
    v3 = a1;
    if (*(a1 + 56) == 1)
    {
      Cache = CPRecordStoreGetCache(v2, *(a1 + 24));
      v5 = Cache;
      v6 = *(a1 + 32);
      if (v6 != -1 && Cache)
      {
        CFDictionarySetValue(Cache, v6, a1);
        v6 = *(a1 + 32);
      }

      InstanceFromDB = _loadInstanceFromDB(*(a1 + 16), *(a1 + 24), v6);
      if (InstanceFromDB)
      {
        v3 = InstanceFromDB;
        *(a1 + 56) = 0;
      }

      else
      {
        if (v5)
        {
          CFDictionaryRemoveValue(v5, *(a1 + 32));
        }

        v3 = 0;
        *(a1 + 57) = 1;
      }
    }
  }

  CFRelease(a1);
  return v3;
}

uint64_t CPRecordGetProperty(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 8 * a2 + 72);
    if (v4)
    {
      goto LABEL_3;
    }

    v5 = a2;
    updated = _updateDetachedRecord(result);
    if (updated)
    {
      v4 = updated[a2 + 9];
      if (v4)
      {
LABEL_3:
        if (*MEMORY[0x1E695E738] == v4)
        {
          return 0;
        }

        else
        {
          return v4;
        }
      }

      v3 = updated;
    }

    v4 = *(*(*(v3[3] + 80) + 40 * v5 + 16) + 24);
    if (v4)
    {
      v7 = v3[5];
      if (v7 && CFDictionaryContainsKey(v7, a2))
      {
        v4 = 0;
      }

      else
      {
        v8 = v3[2];
        if (v8)
        {
          ReaderConnection = _getReaderConnection(v8);
        }

        else
        {
          ReaderConnection = 0;
        }

        (*(*(*(v3[3] + 80) + 40 * v5 + 16) + 24))(v3, a2, ReaderConnection);
        if (ReaderConnection)
        {
          CPSqliteDatabaseReleaseSqliteConnection(ReaderConnection);
        }

        v4 = v3[a2 + 9];
      }
    }

    goto LABEL_3;
  }

  return result;
}

void _addChangeActions(void *key, uint64_t a2)
{
  v4 = *(key[2] + 32);
  if (!v4)
  {
    *(key[2] + 32) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
    v4 = *(key[2] + 32);
  }

  v5 = (CFDictionaryGetValue(v4, key) | a2);
  v6 = *(key[2] + 32);

  CFDictionarySetValue(v6, key, v5);
}

CFMutableDictionaryRef *_getReaderConnection(uint64_t a1)
{
  Database = CPRecordStoreGetDatabase(a1);
  if (!Database)
  {
    return 0;
  }

  v3 = CPSqliteDatabaseConnectionForReading(Database);
  v4 = v3;
  if (v3 && *(a1 + 96) == -1 && (*(a1 + 57) & 2) == 0)
  {
    *(a1 + 96) = CPSqliteConnectionIntegerForProperty(v3, @"__CPRecordSequenceNumber");
  }

  return v4;
}

const void *CPRecordGetOriginalProperty(const void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 6);
    if (v4 && (result = CFDictionaryGetValue(v4, a2)) != 0)
    {
      if (result == *MEMORY[0x1E695E738])
      {
        return 0;
      }
    }

    else
    {

      return CPRecordGetProperty(v3, a2);
    }
  }

  return result;
}

uint64_t CPRecordCopyProperty(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = CPRecordGetProperty(a1, a2);
  if (result)
  {
    v5 = **(*(*(a1 + 24) + 80) + 40 * v2 + 16);
    if (v5)
    {

      return v5();
    }
  }

  return result;
}

uint64_t CPRecordShow(uint64_t result)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!result)
  {
LABEL_23:
    v16 = *MEMORY[0x1E69E9840];
    return result;
  }

  v1 = result;
  v2 = *(result + 24);
  v3 = *(v2 + 40);
  if (!v3)
  {
    v5 = *(v2 + 72);
    v6 = MEMORY[0x1E69E9848];
    result = fprintf(*MEMORY[0x1E69E9848], "CPRecord/%s instance %p:\n", *v2, result);
    if (v5 >= 1)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        Property = CPRecordGetProperty(v1, v8);
        fprintf(*v6, " %s (%d) = ", *(*(*(v1 + 24) + 80) + v7), v8);
        v10 = *(*(v1 + 24) + 80);
        if (Property && (v11 = *(*(v10 + v7 + 16) + 16)) != 0)
        {
          v11(Property);
        }

        else
        {
          v12 = *(v10 + v7 + 8);
          if ((v12 - 6) < 2 || v12 == 2)
          {
            v14 = CFStringCreateWithFormat(0, 0, @"%@", Property);
            if (v14)
            {
              v15 = v14;
              CFStringGetCString(v14, buffer, 2048, 0x8000100u);
              fputs(buffer, *v6);
              CFRelease(v15);
            }

            else
            {
              fwrite("(nil)", 5uLL, 1uLL, *v6);
            }
          }

          else if (v12 == 1)
          {
            fprintf(*v6, "%d");
          }

          else
          {
            fprintf(*v6, "%p");
          }
        }

        result = fputc(10, *v6);
        v8 = (v8 + 1);
        v7 += 40;
      }

      while (40 * v5 != v7);
    }

    goto LABEL_23;
  }

  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t CPRecordGetPropertyDescriptor(uint64_t a1, unsigned int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    v4 = *(a1 + 24);
    if (*(v4 + 72) <= a2)
    {
      return 0;
    }

    else
    {
      return *(v4 + 80) + 40 * a2;
    }
  }

  return result;
}

uint64_t CPRecordGetStore(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void CPRecordMarkChanged(void *a1)
{
  if (a1)
  {
    v1 = a1[2];
    if (v1)
    {
      if ((*(v1 + 57) & 1) != 0 && (*(a1[3] + 56) & 2) != 0)
      {
        _addChangeActions(a1, 1);
      }
    }
  }
}

uint64_t CPRecordStoreSetContext(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

uint64_t CPRecordStoreGetContext(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

void CPRecordStoreSetValueForProperty(uint64_t a1, void *key, const void *a3)
{
  Mutable = *(a1 + 80);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    *(a1 + 80) = Mutable;
  }

  v7 = *MEMORY[0x1E695E738];
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = *MEMORY[0x1E695E738];
  }

  CFDictionarySetValue(Mutable, key, v8);
}

CFStringRef CPRecordStoreCopyValueForProperty(uint64_t a1, const __CFString *key)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, key);
    if (Value)
    {
      v6 = Value;
      CFRetain(Value);
LABEL_6:
      if (*MEMORY[0x1E695E738] == v6)
      {
        CFRelease(v6);
        return 0;
      }

      return v6;
    }
  }

  Database = CPRecordStoreGetDatabase(a1);
  if (!Database)
  {
    return 0;
  }

  v6 = CPSqliteDatabaseCopyValueForProperty(Database, key);
  if (v6)
  {
    goto LABEL_6;
  }

  return v6;
}

uint64_t CPRecordStoreGetDatabase(uint64_t a1)
{
  result = *(a1 + 8);
  if (!result)
  {
    v3 = CPSqliteDatabaseCreateWithPath(*a1);
    *(a1 + 8) = v3;
    CPSqliteDatabaseSetSetupHandler(v3, _sqliteDatabaseSetupHandler, a1);
    return *(a1 + 8);
  }

  return result;
}

void CPRecordStoreRemoveProperty(uint64_t a1, const __CFString *a2)
{
  Database = CPRecordStoreGetDatabase(a1);
  if (Database)
  {
    CPSqliteDatabaseRemoveProperty(Database, a2);
    v5 = *(a1 + 80);
    if (v5)
    {

      CFDictionaryRemoveValue(v5, a2);
    }
  }
}

uint64_t CPRecordIndexOfPropertyNamed(const char **a1, int a2, char *__s1)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = a2;
  while (strcmp(__s1, *a1))
  {
    ++v5;
    a1 += 5;
    if (v6 == v5)
    {
      return v6;
    }
  }

  return v5;
}

_DWORD *CPRecordStoreCreateWithPathAndOptions(const __CFString *a1, char a2)
{
  v4 = malloc_type_calloc(1uLL, 0x80uLL, 0x10F0040CCCEF908uLL);
  if (v4)
  {
    *v4 = CFStringCreateCopy(*MEMORY[0x1E695E480], a1);
    v4[24] = -1;
    *(v4 + 57) = *(v4 + 57) & 0xF9 | (2 * (a2 & 3));
  }

  return v4;
}

uint64_t CPRecordStoreSetSetupHandler(uint64_t a1, uint64_t a2)
{
  *(a1 + 64) = a2;
  result = *(a1 + 8);
  if (result)
  {
    return CPSqliteDatabaseSetSetupHandler(result, _sqliteDatabaseSetupHandler, a1);
  }

  return result;
}

void _sqliteDatabaseSetupHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 64);
  if (v5)
  {

    v5(a3);
  }

  else
  {
    CPSqliteDatabaseDefaultSetupHandler(a1, a2);
    v6 = *(a3 + 72);
    if (v6)
    {
      v7[0] = a3;
      v7[1] = a2;
      CFSetApplyFunction(v6, _createTablesForClassInStore, v7);
    }
  }
}

uint64_t CPRecordStoreGetLastSequenceNumber(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 96);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

CFArrayRef _createRecordsArrayFromDictionary(const __CFDictionary *a1, const CFArrayCallBacks *a2)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(a1, v6, 0);
  v7 = CFArrayCreate(*MEMORY[0x1E695E480], v6, v5, a2);
  free(v6);
  return v7;
}

__CFArray *CPRecordStoreCopyDeletedRecords(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (!v2)
  {
    return 0;
  }

  Count = CFDictionaryGetCount(v2);
  if (!Count)
  {
    return 0;
  }

  v4 = Count;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6 = malloc_type_malloc(8 * v4, 0x2004093837F09uLL);
  CFDictionaryGetKeysAndValues(*(a1 + 40), v6, 0);
  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      Value = CFDictionaryGetValue(*(a1 + 40), v6[i]);
      v9 = CFDictionaryGetCount(Value);
      if (v9)
      {
        v10 = v9;
        v11 = malloc_type_malloc(8 * v9, 0xC0040B8AA526DuLL);
        CFDictionaryGetKeysAndValues(Value, 0, v11);
        v12 = v11;
        if (v10 >= 1)
        {
          do
          {
            v13 = *v12++;
            CFArrayAppendValue(Mutable, *(v13 + 16));
            --v10;
          }

          while (v10);
        }

        free(v11);
      }
    }
  }

  free(v6);
  return Mutable;
}

CFArrayRef CPRecordStoreCopyDeletedRecordIDsOfClass(uint64_t a1, const void *a2)
{
  Value = *(a1 + 40);
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, a2);
    v2 = vars8;
  }

  return _createRecordsArrayFromDictionary(Value, 0);
}

void CPRecordInvalidateRecord(uint64_t a1)
{
  if (a1)
  {
    v2 = *(*(a1 + 24) + 72);
    if (v2 >= 1)
    {
      for (i = 0; i != v2; ++i)
      {
        CPRecordUnloadProperty(a1, i);
      }
    }

    *(a1 + 56) = 1;
    *(a1 + 58) = 0;
    v4 = *(a1 + 64);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 64) = 0;
    }
  }
}

uint64_t CPRecordStoreSaveWithPreAndPostCallbacksAndTransactionType(uint64_t a1, void (*a2)(uint64_t, CFMutableDictionaryRef *), void (*a3)(uint64_t, CFMutableDictionaryRef *), int a4, unsigned int a5, CFErrorRef *a6)
{
  if (a1 && !a2 && !a3 && !*(a1 + 24) && !*(a1 + 32) && !*(a1 + 40) && !*(a1 + 80) && !*(a1 + 16))
  {
    return 1;
  }

  Database = CPRecordStoreGetDatabase(a1);
  v13 = CPSqliteDatabaseConnectionForWriting(Database);
  if (!v13)
  {
    if (a6)
    {
      v15 = 1;
      goto LABEL_16;
    }

    return 0;
  }

  v14 = v13;
  if (a4 && (*(a1 + 57) & 2) != 0)
  {
    if (a6)
    {
      v15 = 3;
LABEL_16:
      v16 = CFErrorCreate(0, @"CPRecord", v15, 0);
      v17 = 0;
LABEL_17:
      *a6 = v16;
      return v17;
    }

    return 0;
  }

  CPSqliteConnectionBeginTransactionType(v13, a5);
  v18 = CPSqliteConnectionIntegerForProperty(v14, @"__CPRecordSequenceNumber");
  v19 = v18;
  if (a4)
  {
    v20 = *(a1 + 96);
    if (v20 != -1 && v18 != v20)
    {
      fprintf(*MEMORY[0x1E69E9848], "%s: database changed externally\n", "_Bool CPRecordStoreSaveWithPreAndPostCallbacksAndTransactionType(CPRecordStoreRef, CPRecordStoreSaveCallback, CPRecordStoreSaveCallback, CPRecordConflictPolicy, CPSqliteTransactionType, CFErrorRef *)");
      if (a6)
      {
        *a6 = CFErrorCreate(0, @"CPRecord", 2, 0);
      }

      CPSqliteDatabaseReleaseSqliteConnection(v14);
      return 0;
    }
  }

  context = a1;
  v28 = v14;
  v29 = 0;
  *(a1 + 96) = v18;
  if (a2)
  {
    a2(a1, v14);
  }

  _CPRecordStoreSaveDeletedRecords(&context);
  _CPRecordStoreSaveAddedRecords(&context);
  if (context)
  {
    if (v28)
    {
      v22 = *(context + 32);
      if (v22)
      {
        *(context + 32) = 0;
        CFDictionaryApplyFunction(v22, CPRecordStoreUpdateRecord, &context);
        CFRelease(v22);
        v23 = *(context + 32);
        if (v23)
        {
          CFRelease(v23);
          *(context + 32) = 0;
        }
      }
    }
  }

  v24 = *(a1 + 80);
  if (v24)
  {
    CFDictionaryApplyFunction(v24, _saveProperty, &context);
    CFRelease(*(a1 + 80));
    *(a1 + 80) = 0;
  }

  v25 = v19 + 1;
  *(a1 + 96) = v19 + 1;
  if (v19 <= 0 && (*(a1 + 57) & 4) != 0)
  {
    CFLog();
    v25 = *(a1 + 96);
  }

  CPSqliteConnectionSetIntegerForProperty(v14, @"__CPRecordSequenceNumber", v25);
  if (a3)
  {
    a3(a1, v14);
  }

  if (a5 == 0xFFFF)
  {
    v26 = 101;
  }

  else
  {
    v26 = CPSqliteConnectionCommit(v14);
    CPSqliteConnectionCheckNoConnectionError(v14, v26, "_Bool CPRecordStoreSaveWithPreAndPostCallbacksAndTransactionType(CPRecordStoreRef, CPRecordStoreSaveCallback, CPRecordStoreSaveCallback, CPRecordConflictPolicy, CPSqliteTransactionType, CFErrorRef *)");
  }

  CPSqliteDatabaseReleaseSqliteConnection(v14);
  v17 = v26 == 101;
  if (a6 && v26 != 101)
  {
    v16 = CFErrorCreate(0, @"CPRecordSQLite", v26, 0);
    goto LABEL_17;
  }

  return v17;
}

uint64_t _saveProperty(const __CFString *a1, UInt8 *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (*MEMORY[0x1E695E738] == a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  return CPSqliteConnectionSetValueForProperty(v4, a1, v5);
}

void CPRecordStoreDestroy(void *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, _disownRecordsForClass, 0);
    CFRelease(*(a1 + 2));
  }

  v3 = *(a1 + 3);
  if (v3)
  {
    CFDictionaryApplyFunction(v3, _disownRecordKey, 0);
    CFRelease(*(a1 + 3));
  }

  v4 = *(a1 + 6);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 1);
  if (v5)
  {
    CPSqliteDatabaseClose(v5);
  }

  v6 = *(a1 + 4);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 5);
  if (v7)
  {
    CFRelease(v7);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }

  v8 = *(a1 + 9);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 15);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 14);
  if (v10)
  {
    free(v10);
  }

  free(a1);
}

void CPRecordStoreCreateTablesForClass(uint64_t a1, CFMutableDictionaryRef *a2, int a3)
{
  if (a2)
  {
    v6 = *(a1 + 56);
    alloc = *MEMORY[0x1E695E480];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"CREATE TABLE IF NOT EXISTS ");
    CFStringAppendCString(MutableCopy, *a1, 0x8000100u);
    v8 = *(a1 + 120);
    v42 = a2;
    v41 = v6;
    if (v8 < 1)
    {
      goto LABEL_7;
    }

    v9 = 0;
    v10 = *(a1 + 128);
    do
    {
      v11 = *v10;
      v10 += 4;
      v9 |= v11 == 1;
      --v8;
    }

    while (v8);
    if (v9)
    {
      CFStringAppend(MutableCopy, @" (");
    }

    else
    {
LABEL_7:
      v12 = CFRetain(@"ROWID");
      v13 = *(a1 + 96);
      if (v13)
      {
        v12 = CFStringCreateWithCString(0, v13, 0x600u);
      }

      v14 = v12;
      CFStringAppendFormat(MutableCopy, 0, @" (%@ INTEGER PRIMARY KEY"), v12, alloc;
      if (v6)
      {
        v15 = @" AUTOINCREMENT, ";
      }

      else
      {
        v15 = @", ";
      }

      CFStringAppend(MutableCopy, v15);
      CFRelease(v14);
    }

    v16 = *(a1 + 72);
    if (v16 >= 1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 1;
      do
      {
        v20 = *(a1 + 80);
        v21 = v20 + v17;
        if ((*(v20 + v17 + 24) & 4) != 0 || !*(v21 + 8))
        {
          goto LABEL_28;
        }

        if ((v19 & 1) == 0)
        {
          CFStringAppend(MutableCopy, @", ");
        }

        CFStringAppendCString(MutableCopy, *(v20 + v17), 0x8000100u);
        v22 = *(v21 + 8) - 1;
        v23 = @" TEXT";
        if (v22 <= 6)
        {
          v23 = off_1E7450B38[v22];
        }

        CFStringAppend(MutableCopy, v23);
        v24 = *(v21 + 24);
        if ((v24 & 0xE0) == 0)
        {
          goto LABEL_26;
        }

        Mutable = CFStringCreateMutable(0, 0);
        v26 = Mutable;
        if ((v24 & 0x20) != 0)
        {
          CFStringAppend(Mutable, @" UNIQUE");
          if ((v24 & 0x40) == 0)
          {
LABEL_24:
            if ((v24 & 0x80) != 0)
            {
              goto LABEL_32;
            }

            goto LABEL_25;
          }
        }

        else if ((v24 & 0x40) == 0)
        {
          goto LABEL_24;
        }

        CFStringAppend(v26, @" NOT NULL");
        if ((v24 & 0x80) != 0)
        {
LABEL_32:
          CFStringAppend(v26, @" DEFAULT 0");
          if (v26)
          {
            goto LABEL_27;
          }

LABEL_26:
          v26 = CFRetain(&stru_1F0A49170);
          goto LABEL_27;
        }

LABEL_25:
        if (!v26)
        {
          goto LABEL_26;
        }

LABEL_27:
        CFStringAppend(MutableCopy, v26);
        CFRelease(v26);
        v19 = 0;
        v16 = *(a1 + 72);
LABEL_28:
        ++v18;
        v17 += 40;
      }

      while (v18 < v16);
    }

    if (*(a1 + 120) >= 1)
    {
      v27 = 0;
      while (1)
      {
        v28 = *(a1 + 128) + 16 * v27;
        if (*v28 == 1)
        {
          break;
        }

        if (*v28 == 2)
        {
          v29 = CFSTR(", UNIQUE (");
LABEL_40:
          CFStringAppend(MutableCopy, v29);
        }

        if (*(v28 + 4) >= 1)
        {
          v30 = 0;
          do
          {
            if (v30)
            {
              CFStringAppend(MutableCopy, @", ");
            }

            CFStringAppendCString(MutableCopy, *(*(a1 + 80) + 40 * *(*(v28 + 8) + 4 * v30++)), 0x8000100u);
          }

          while (v30 < *(v28 + 4));
        }

        CFStringAppend(MutableCopy, @""));
        if (++v27 >= *(a1 + 120))
        {
          goto LABEL_47;
        }
      }

      v29 = CFSTR(", PRIMARY KEY (");
      goto LABEL_40;
    }

LABEL_47:
    CFStringAppend(MutableCopy, @";"));
    CPSqliteConnectionPerformSQL(v42, MutableCopy);
    CFRelease(MutableCopy);
    if (a3)
    {
      if ((v41 & 2) != 0)
      {
        v31 = CFStringCreateMutableCopy(alloc, 0, @"CREATE TABLE IF NOT EXISTS ");
        CFStringAppendCString(v31, *a1, 0x8000100u);
        CFStringAppend(v31, @"Changes (record INTEGER, type INTEGER");
        if ((v41 & 0x10) != 0)
        {
          CFStringAppend(v31, @", sequence_number INTEGER");
        }

        if (*(a1 + 72) < 1)
        {
LABEL_65:
          CFStringAppend(v31, @";"));
          CPSqliteConnectionPerformSQL(v42, v31);

          CFRelease(v31);
          return;
        }

        v32 = 0;
        v33 = 0;
        while (1)
        {
          v34 = *(a1 + 80) + v32;
          v35 = *v34;
          v36 = *(v34 + 8);
          v37 = *(v34 + 24);
          if (v36 && (v37 & 2) != 0)
          {
            break;
          }

          if ((v37 & 8) != 0)
          {
            CFStringAppend(v31, @", ");
            CFStringAppendCString(v31, v35, 0x8000100u);
            v39 = @" INTEGER";
LABEL_63:
            CFStringAppend(v31, v39);
          }

          ++v33;
          v32 += 40;
          if (v33 >= *(a1 + 72))
          {
            goto LABEL_65;
          }
        }

        CFStringAppend(v31, @", ");
        CFStringAppendCString(v31, v35, 0x8000100u);
        v39 = @" TEXT";
        if ((v36 - 1) < 7)
        {
          v39 = off_1E7450B38[v36 - 1];
        }

        goto LABEL_63;
      }
    }
  }
}

void CPRecordStoreRegisterClass(uint64_t a1, void *value)
{
  Mutable = *(a1 + 72);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(0, 0, 0);
    *(a1 + 72) = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

char *CPRecordStoreCreateReadColumns(uint64_t a1, int *a2, CFDictionaryRef theDict, uint64_t (*a4)(int a1), uint64_t (*(*a5)())(uint64_t a1, int a2, uint64_t a3))
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = CPRecordStoreColumnTypeForPropertyType;
  }

  if (a5)
  {
    v8 = a5;
  }

  else
  {
    v8 = returnCPRecordPropertyLoadHandler;
  }

  v34 = v8;
  v35 = v7;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
  }

  else
  {
    v10 = *(a1 + 72);
    if (v10 < 1)
    {
      v13 = 0;
      Count = 0;
      goto LABEL_30;
    }

    Count = 0;
    v11 = (*(a1 + 80) + 24);
    do
    {
      if ((*v11 & 4) == 0 && *(v11 - 4))
      {
        ++Count;
      }

      v11 += 40;
      --v10;
    }

    while (v10);
  }

  v12 = Count;
  if (Count < 1)
  {
    v13 = 0;
    if (!theDict)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v13 = malloc_type_calloc(Count, 0x18uLL, 0x1080040D2F62047uLL);
    if (!theDict)
    {
LABEL_30:
      if (*(a1 + 72) >= 1)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(a1 + 80) + v21;
          if ((*(v24 + 24) & 4) == 0 && *(v24 + 8) && v23 < Count)
          {
            v26 = v23 + 1;
            v27 = &v13[24 * v23];
            *v27 = v23 + 1;
            *(v27 + 1) = v35();
            if (*(v24 + 24))
            {
              v29 = 0;
              v28 = 8;
            }

            else
            {
              *(v27 + 1) = (v34)(*(v24 + 8));
              v28 = 16;
              v29 = v22;
            }

            *&v27[v28] = v29;
            v23 = v26;
          }

          ++v22;
          v21 += 40;
        }

        while (v22 < *(a1 + 72));
      }

      goto LABEL_43;
    }
  }

  v14 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v31 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v32 = v14;
  CFDictionaryGetKeysAndValues(theDict, v14, v31);
  if (Count >= 1)
  {
    v15 = 0;
    v16 = v31;
    do
    {
      v17 = *(a1 + 80) + 40 * *v14;
      if ((*(v17 + 24) & 4) == 0 && *(v17 + 8))
      {
        v18 = &v13[24 * v15];
        *v18 = *v16;
        *(v18 + 1) = v35();
        if (*(v17 + 24))
        {
          v19 = 0;
          v20 = 8;
        }

        else
        {
          *(v18 + 1) = (v34)(*(v17 + 8));
          v19 = *v14;
          v20 = 16;
        }

        *&v18[v20] = v19;
        ++v15;
      }

      ++v16;
      ++v14;
      --v12;
    }

    while (v12);
  }

  free(v32);
  free(v31);
LABEL_43:
  *a2 = Count;
  return v13;
}

uint64_t CPRecordStoreColumnTypeForPropertyType(int a1)
{
  v1 = 0;
  v2 = typemap;
  do
  {
    v3 = *v2;
    v2 += 2;
    if (v3 == a1)
    {
      break;
    }

    ++v1;
  }

  while (v1 != 7);
  return typemap[2 * v1 + 1];
}

__CFString *CPRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumn(const char **a1, void *a2)
{
  values = a2;
  if (a2)
  {
    v3 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, 0);
    SelectPrefixFromRecordDescriptorWithAdditionalColumns = _CPRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumns(a1, 0, 0, v3, 0);
    CFRelease(v3);
    return SelectPrefixFromRecordDescriptorWithAdditionalColumns;
  }

  else
  {

    return _CPRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumns(a1, 0, 0, 0, 0);
  }
}

__CFString *_CPRecordStoreCreateColumnListFromRecordDescriptor(uint64_t a1, int a2, CFStringRef theString, CFMutableDictionaryRef *a4, const __CFArray *a5)
{
  v7 = theString;
  if (theString)
  {
    if (CFStringGetLength(theString) && CFStringGetLength(v7))
    {
      v7 = CFStringCreateWithFormat(0, 0, @"%@.", v7);
    }

    else
    {
      v7 = 0;
    }
  }

  v10 = *MEMORY[0x1E695E480];
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"SELECT ");
  v12 = MutableCopy;
  if (a2)
  {
    CFStringAppend(MutableCopy, @"DISTINCT ");
  }

  if (v7)
  {
    CFStringAppend(v12, v7);
  }

  CFStringAppend(v12, @"ROWID");
  if (a4)
  {
    *a4 = CFDictionaryCreateMutable(v10, 0, 0, 0);
  }

  if (*(a1 + 72) >= 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 1;
    do
    {
      v16 = *(a1 + 80) + v13;
      v17 = *(v16 + 24);
      if ((v17 & 4) == 0 && *(v16 + 8))
      {
        if (v17)
        {
          if (!a4)
          {
            CFStringAppend(v12, @", NULL");
          }
        }

        else
        {
          CFStringAppend(v12, @", ");
          if (v7)
          {
            CFStringAppend(v12, v7);
          }

          CFStringAppendCString(v12, *(*(a1 + 80) + v13), 0x8000100u);
          if (a4)
          {
            CFDictionarySetValue(*a4, v14, v15++);
          }
        }
      }

      ++v14;
      v13 += 40;
    }

    while (v14 < *(a1 + 72));
  }

  if (a5)
  {
    if (CFArrayGetCount(a5))
    {
      Count = CFArrayGetCount(a5);
      if (Count >= 1)
      {
        v19 = Count;
        for (i = 0; i != v19; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a5, i);
          CFStringAppend(v12, @", ");
          CFStringAppend(v12, ValueAtIndex);
        }
      }
    }
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v12;
}

__CFString *_CPRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumns(const char **a1, const __CFString *a2, CFStringRef theString, CFArrayRef theArray, CFMutableDictionaryRef *a5)
{
  v7 = theString;
  if (theString && !CFStringGetLength(theString))
  {
    v7 = 0;
  }

  if (theArray && !a5 && !v7)
  {
    CFArrayGetCount(theArray);
  }

  ColumnListFromRecordDescriptor = _CPRecordStoreCreateColumnListFromRecordDescriptor(a1, 0, v7, a5, theArray);
  CFStringAppend(ColumnListFromRecordDescriptor, @" FROM ");
  if (a2 && CFStringGetLength(a2))
  {
    v11 = CFStringCreateWithFormat(0, 0, @"(%@)", a2);
    CFStringAppend(ColumnListFromRecordDescriptor, v11);
    CFRelease(v11);
    if (!v7)
    {
      return ColumnListFromRecordDescriptor;
    }

    goto LABEL_13;
  }

  CFStringAppendCString(ColumnListFromRecordDescriptor, *a1, 0x8000100u);
  if (v7)
  {
LABEL_13:
    CFStringAppendFormat(ColumnListFromRecordDescriptor, 0, @" AS %@", v7);
  }

  return ColumnListFromRecordDescriptor;
}

__CFString *CPRecordStoreCreateSelectStatement(const char **a1, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  SelectPrefixFromRecordDescriptorWithAdditionalColumns = _CPRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumns(a1, a2, a3, 0, 0);
  if (SelectPrefixFromRecordDescriptorWithAdditionalColumns)
  {
    if (a4 && CFStringGetLength(a4) >= 1)
    {
      CFStringAppend(SelectPrefixFromRecordDescriptorWithAdditionalColumns, @" ");
      CFStringAppend(SelectPrefixFromRecordDescriptorWithAdditionalColumns, a4);
    }

    CFStringAppend(SelectPrefixFromRecordDescriptorWithAdditionalColumns, @";");
  }

  return SelectPrefixFromRecordDescriptorWithAdditionalColumns;
}

uint64_t CPRecordStoreProcessRecordStatementWithPropertyIndicesAndQueryDescriptor(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, CFDictionaryRef theDict, uint64_t a8)
{
  if (!a3)
  {
    return 0;
  }

  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  if (a8)
  {
    v15 = a8;
  }

  else
  {
    v15 = a2;
  }

  Columns = CPRecordStoreCreateReadColumns(v15, &v22 + 2, theDict, 0, 0);
  v17 = 0;
  *(&v21 + 1) = Columns;
  if (a8 | Columns)
  {
    v18 = Columns;
    *&v22 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (v22)
    {
      *&v20 = a1;
      *(&v20 + 1) = a2;
      *&v21 = CPRecordStoreGetCache(a1, a2);
      *&v23 = a4;
      *(&v23 + 1) = a5;
      v24 = a6;
      HIDWORD(v22) = -1;
      CPSqliteStatementSendResults(a3, CPRecordLoadHandler, &v20);
      v18 = *(&v21 + 1);
      v17 = v22;
    }

    else
    {
      v17 = 0;
    }

    free(v18);
  }

  return v17;
}

const void *CPRecordStoreGetCache(uint64_t a1, void *key)
{
  Mutable = *(a1 + 16);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    *(a1 + 16) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(*(a1 + 16), key, Value);
    CFRelease(Value);
  }

  return Value;
}

uint64_t CPRecordStoreProcessQueryWithBindBlock(uint64_t a1, void *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ReaderConnection = _getReaderConnection(a1);
  if (!ReaderConnection)
  {
    return 0;
  }

  v13 = ReaderConnection;
  v14 = CPSqliteConnectionStatementForSQL(ReaderConnection, a3);
  if (v14)
  {
    v15 = v14;
    if (a6)
    {
      (*(a6 + 16))(a6, v14);
    }

    Descriptor = CPRecordStoreProcessRecordStatementWithPropertyIndicesAndQueryDescriptor(a1, a2, v15, a4, 0, a5, 0, 0);
  }

  else
  {
    Descriptor = 0;
  }

  CPSqliteDatabaseReleaseSqliteConnection(v13);
  return Descriptor;
}

uint64_t CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock(uint64_t a1, const char **a2, const __CFString *a3, uint64_t a4)
{
  SelectPrefixFromRecordDescriptorWithAdditionalColumns = _CPRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumns(a2, 0, 0, 0, 0);
  v9 = SelectPrefixFromRecordDescriptorWithAdditionalColumns;
  if (a3)
  {
    CFStringAppend(SelectPrefixFromRecordDescriptorWithAdditionalColumns, @" ");
    CFStringAppend(v9, a3);
  }

  CFStringAppend(v9, @";");
  v10 = CPRecordStoreProcessQueryWithBindBlock(a1, a2, v9, 0, 0, a4);
  CFRelease(v9);
  return v10;
}

uint64_t CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter(uint64_t a1, const char **a2, const __CFString *a3, const __CFString *a4, uint64_t a5)
{
  SelectPrefixFromRecordDescriptorWithAdditionalColumns = _CPRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumns(a2, 0, a3, 0, 0);
  v10 = SelectPrefixFromRecordDescriptorWithAdditionalColumns;
  if (a4)
  {
    CFStringAppend(SelectPrefixFromRecordDescriptorWithAdditionalColumns, @" ");
    CFStringAppend(v10, a4);
  }

  CFStringAppend(v10, @";");
  v11 = CPRecordStoreProcessQueryWithBindBlock(a1, a2, v10, 0, 0, a5);
  CFRelease(v10);
  return v11;
}

const void *CPRecordStoreGetInstanceOfClassWithUID(uint64_t a1, void *a2, int a3)
{
  result = _CPRecordStoreGetCachedInstanceOfClassWithUID(a1, a2, a3);
  if (!result)
  {

    return _loadInstanceFromDB(a1, a2, a3);
  }

  return result;
}

const void *_loadInstanceFromDB(uint64_t a1, const char **a2, int a3)
{
  if (!CPRecordStoreGetDatabase(a1) || (SelectPrefixFromRecordDescriptorWithAdditionalColumns = _CPRecordStoreCreateSelectPrefixFromRecordDescriptorWithAdditionalColumns(a2, 0, 0, 0, 0)) == 0)
  {
    ValueAtIndex = 0;
    goto LABEL_21;
  }

  v7 = SelectPrefixFromRecordDescriptorWithAdditionalColumns;
  CFStringAppend(SelectPrefixFromRecordDescriptorWithAdditionalColumns, @" WHERE ROWID = ?;");
  ReaderConnection = _getReaderConnection(a1);
  if (ReaderConnection)
  {
    v9 = ReaderConnection;
    v10 = CPSqliteConnectionStatementForSQL(ReaderConnection, v7);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = v10;
    v12 = *(v10 + 1);
    if (!v12)
    {
      goto LABEL_16;
    }

    if (!a1)
    {
      goto LABEL_24;
    }

    if (a3 >= -1)
    {
      v13 = a3;
      goto LABEL_13;
    }

    if ((a3 & 0x7FFFFFFF) < *(a1 + 104))
    {
      v13 = *(*(a1 + 112) + 8 * (a3 & 0x7FFFFFFF));
    }

    else
    {
LABEL_24:
      v13 = -1;
    }

LABEL_13:
    sqlite3_bind_int64(v12, 1, v13);
    Descriptor = CPRecordStoreProcessRecordStatementWithPropertyIndicesAndQueryDescriptor(a1, a2, v11, 0, 0, 0, 0, 0);
    if (Descriptor)
    {
      v16 = Descriptor;
      if (CFArrayGetCount(Descriptor) < 1)
      {
        ValueAtIndex = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
      }

      CFRelease(v16);
      goto LABEL_19;
    }

LABEL_16:
    ValueAtIndex = 0;
LABEL_19:
    CPSqliteDatabaseReleaseSqliteConnection(v9);
    goto LABEL_20;
  }

  ValueAtIndex = 0;
LABEL_20:
  CFRelease(v7);
LABEL_21:
  if (ValueAtIndex == *MEMORY[0x1E695E738])
  {
    return 0;
  }

  else
  {
    return ValueAtIndex;
  }
}

void _CPRecordStoreAddRecord(uint64_t a1, void **key, int a3)
{
  if (!key)
  {
    return;
  }

  v3 = key;
  key[2] = a1;
  if (*(a1 + 57))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = *(key + 8);
  if (a3)
  {
    if (v6 == -1 || (CachedInstanceOfClassWithUID = _CPRecordStoreGetCachedInstanceOfClassWithUID(a1, key[3], v6)) == 0)
    {
      v7 = v3;
    }

    else
    {
      v7 = CachedInstanceOfClassWithUID;
      v16 = CPRecordCopyChangedProperties(v3);
      v17 = CPRecordCopyChangedProperties(v7);
      if (v16)
      {
        Count = CFArrayGetCount(v16);
        if (Count >= 1)
        {
          v19 = Count;
          for (i = 0; i != v19; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
            if (v17)
            {
              v24.length = CFArrayGetCount(v17);
              v24.location = 0;
              if (CFArrayContainsValue(v17, v24, ValueAtIndex))
              {
                continue;
              }
            }

            Property = CPRecordGetProperty(v3, ValueAtIndex);
            CPRecordSetProperty(v7, ValueAtIndex, Property);
          }
        }

        CFRelease(v16);
      }

      if (v17)
      {
        CFRelease(v17);
      }
    }

    v8 = v7[5];
    if (v8 && CFDictionaryGetCount(v8) >= 1)
    {
      _addChangeActions(v7, v5);
    }

    v3 = v7;
    goto LABEL_21;
  }

  v9 = *(a1 + 40);
  if (!v9 || (Value = CFDictionaryGetValue(v9, key[3])) == 0 || (v11 = Value, !CFDictionaryContainsKey(Value, *(v3 + 8))))
  {
    v12 = *(a1 + 24);
    if (v12)
    {
      if (CFDictionaryContainsKey(v12, v3))
      {
        goto LABEL_21;
      }

      Mutable = *(a1 + 24);
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
      *(a1 + 24) = Mutable;
    }

    CFDictionarySetValue(Mutable, v3, v5);
    goto LABEL_21;
  }

  CFDictionaryRemoveValue(v11, *(v3 + 8));
LABEL_21:
  if (v6 != -1)
  {
    Cache = CPRecordStoreGetCache(a1, v3[3]);
    if (Cache)
    {

      CFDictionaryAddValue(Cache, v6, v3);
    }
  }
}

void CPRecordStoreRemoveRecordInternal(uint64_t a1, uint64_t a2, void *key, int a4)
{
  v4 = a4;
  if (a2 && a4 == -1)
  {
    v4 = *(a2 + 32);
  }

  if (v4 == -1)
  {
    if (!a2)
    {
      return;
    }

    v13 = *(a1 + 24);
    if (!v13)
    {
      return;
    }

    goto LABEL_18;
  }

  if (a2 && !key)
  {
    key = *(a2 + 24);
  }

  DeletedRecords = CPRecordStoreGetDeletedRecords(a1, key);
  if (DeletedRecords)
  {
    v8 = DeletedRecords;
    v9 = *(a1 + 57);
    pthread_once(&kCPRecordDeleteInfoRegisterClass, CPRecordDeleteInfoRegisterClass);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v11 = Instance;
      v12 = v9 & 1;
      *(Instance + 16) = 0;
      *(Instance + 24) = 0;
      if (a2)
      {
        *(Instance + 16) = CFRetain(a2);
      }

      v11[24] = v12;
      CFDictionarySetValue(v8, v4, v11);
      CFRelease(v11);
    }
  }

  if (a2)
  {
    v13 = *(a1 + 32);
    if (v13)
    {
LABEL_18:

      CFDictionaryRemoveValue(v13, a2);
    }
  }
}

const void *CPRecordStoreGetDeletedRecords(uint64_t a1, void *key)
{
  Mutable = *(a1 + 40);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    *(a1 + 40) = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(*(a1 + 40), key, Value);
    CFRelease(Value);
  }

  return Value;
}

void CPRecordStoreRemoveRecord(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CPRecordStoreRemoveRecordInternal(a1, a2, *(a2 + 24), *(a2 + 32));
  }
}

void *CPRecordIsPendingAdd(void *key)
{
  if (key)
  {
    v1 = key;
    v2 = key[2];
    if (v2)
    {
      key = *(v2 + 24);
      if (key)
      {
        return (CFDictionaryContainsKey(key, v1) != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return key;
}

void *CPRecordIsPendingChange(void *key)
{
  if (key)
  {
    v1 = key;
    v2 = key[2];
    if (v2)
    {
      key = *(v2 + 32);
      if (key)
      {
        return (CFDictionaryContainsKey(key, v1) != 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return key;
}

const __CFDictionary *CPRecordIsPendingDelete(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 2);
    if (result)
    {
      if (*(result + 5))
      {
        result = CPRecordStoreGetDeletedRecords(result, *(v1 + 3));
        if (result)
        {
          return (CFDictionaryContainsKey(result, *(v1 + 8)) != 0);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CPRecordStoreHasUnsavedChanges(void *a1)
{
  v2 = a1[3];
  if (v2 && CFDictionaryGetCount(v2) > 0)
  {
    return 1;
  }

  v3 = a1[4];
  if (v3)
  {
    if (CFDictionaryGetCount(v3) > 0)
    {
      return 1;
    }
  }

  result = a1[5];
  if (result)
  {
    context = 0;
    CFDictionaryApplyFunction(result, _countEntriesInDictionaryValue, &context);
    return context > 0;
  }

  return result;
}

CFIndex _countEntriesInDictionaryValue(int a1, CFDictionaryRef theDict, _DWORD *a3)
{
  result = CFDictionaryGetCount(theDict);
  *a3 += result;
  return result;
}

void CPRecordStoreRevert(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 40) = 0;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 48) = 0;
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    CFDictionaryApplyFunction(v6, _revertRecordsForClass, 0);
  }

  *(a1 + 96) = -1;
}

void CPRecordStoreInvalidateCaches(uint64_t a1)
{
  CPRecordStoreRevert(a1);
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }
}

const __CFDictionary *CPRecordStoreCountCachedRecords(uint64_t a1)
{
  context = 0;
  result = *(a1 + 16);
  if (result)
  {
    CFDictionaryApplyFunction(result, _countCachedRecords, &context);
    return context;
  }

  return result;
}

CFIndex _countCachedRecords(int a1, CFDictionaryRef theDict, void *a3)
{
  result = CFDictionaryGetCount(theDict);
  *a3 += result;
  return result;
}

uint64_t _CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithPropertiesV(uint64_t a1, uint64_t a2, __CFArray **a3, CFMutableArrayRef *a4, __CFArray **a5, CFMutableArrayRef *a6, const __CFString *a7, __CFString *a8, uint64_t a9, void *a10)
{
  v30 = a10;
  v31 = a10 + 1;
  if (!*a10)
  {
    return _CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithPropertiesA(a1, a2, a3, a4, a5, a6, a7, a8, a9, 0, 0, 0);
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v19 = v31;
    v31 += 2;
    ++v18;
    v17 += 8;
  }

  while (v19[1]);
  v20 = malloc_type_malloc(v17, 0x10040436913F5uLL);
  v21 = malloc_type_malloc(v17, 0x80040B8603338uLL);
  v22 = v21;
  v23 = 0;
  v24 = v18;
  do
  {
    v20[v23] = *v30;
    v25 = v30 + 1;
    v30 += 2;
    v21[v23++] = *v25;
    --v24;
  }

  while (v24);
  v26 = _CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithPropertiesA(a1, a2, a3, a4, a5, a6, a7, a8, a9, v20, v21, v18);
  free(v20);
  free(v22);
  return v26;
}

uint64_t CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithBindBlockAndPropertiesA(uint64_t a1, uint64_t a2, __CFArray **a3, CFMutableArrayRef *a4, __CFArray **a5, CFMutableArrayRef *a6, const __CFString *a7, uint64_t a8, const char **a9, uint64_t a10, int a11)
{
  v19 = malloc_type_calloc(a11, 8uLL, 0x80040B8603338uLL);
  if (v19)
  {
    v20 = v19;
    if (a11 >= 1)
    {
      v22 = (a11 + 1) & 0xFFFFFFFE;
      v23 = vdupq_n_s64(a11 - 1);
      v24 = xmmword_195EA3C70;
      v25 = v19 + 1;
      v26 = vdupq_n_s64(2uLL);
      do
      {
        v27 = vmovn_s64(vcgeq_u64(v23, v24));
        if (v27.i8[0])
        {
          *(v25 - 1) = a10;
        }

        if (v27.i8[4])
        {
          *v25 = a10 + 8;
        }

        v24 = vaddq_s64(v24, v26);
        v25 += 2;
        a10 += 16;
        v22 -= 2;
      }

      while (v22);
    }

    v28 = _CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithPropertiesA(a1, a2, a3, a4, a5, a6, a7, 0, a8, a9, v19, a11);
    free(v20);
    return v28;
  }

  else
  {
    CFLog();
    return 0xFFFFFFFFLL;
  }
}

uint64_t _CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithPropertiesA(uint64_t a1, uint64_t a2, __CFArray **a3, CFMutableArrayRef *a4, __CFArray **a5, CFMutableArrayRef *a6, const __CFString *a7, __CFString *a8, uint64_t a9, const char **a10, void **a11, int a12)
{
  v19 = a12;
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"SELECT ROWID, record, type");
  if ((*(a2 + 56) & 0x10) != 0)
  {
    CFStringAppend(Mutable, @", sequence_number");
    v21 = 4;
  }

  else
  {
    v21 = 3;
  }

  v66 = v21;
  if (a12 < 1)
  {
    v67 = 0;
  }

  else
  {
    v58 = a7;
    v59 = a8;
    v60 = a4;
    v61 = a5;
    v62 = a6;
    v63 = a1;
    v22 = a10;
    v67 = malloc_type_calloc(a12, 0x18uLL, 0x1080040D2F62047uLL);
    v23 = 0;
    v65 = a2;
    do
    {
      v24 = v19;
      v25 = *(a2 + 72);
      if (v25 < 1)
      {
        v31 = 0;
      }

      else
      {
        v26 = *(a2 + 80);
        v27 = a10[v23];
        v28 = 1;
        v29 = v26;
        do
        {
          v30 = *v29;
          v29 += 5;
          if (!strcmp(v30, v27))
          {
            v31 = v26;
          }

          else
          {
            v31 = 0;
          }

          if (v28 >= v25)
          {
            break;
          }

          ++v28;
          v26 = v29;
        }

        while (!v31);
      }

      v32 = &v67[24 * v23];
      *v32 = v66 + v23;
      if ((v31[3] & 8) != 0)
      {
        v36 = 0;
        a2 = v65;
      }

      else
      {
        v33 = 0;
        v34 = typemap;
        a2 = v65;
        do
        {
          v35 = *v34;
          v34 += 2;
          if (v35 == *(v31 + 2))
          {
            break;
          }

          ++v33;
        }

        while (v33 != 7);
        v36 = typemap[2 * v33 + 1];
      }

      *(v32 + 1) = v36;
      *(v32 + 1) = ChangeLogPropertySetter;
      v37 = malloc_type_calloc(8uLL, 1uLL, 0x4BDC6CB1uLL);
      if ((v31[3] & 8) != 0 || (v38 = *(v31 + 2) - 2, v38 > 5))
      {
        v39 = 0;
      }

      else
      {
        v39 = qword_1E7450B70[v38];
      }

      *v37 = CFArrayCreateMutable(0, 0, v39);
      *(v32 + 2) = v37;
      ++v23;
      v19 = v24;
    }

    while (v23 != v24);
    v40 = v24;
    do
    {
      CFStringAppend(Mutable, @", ");
      v41 = *v22++;
      CFStringAppendCString(Mutable, v41, 0x8000100u);
      --v40;
    }

    while (v40);
    a6 = v62;
    a1 = v63;
    a4 = v60;
    a5 = v61;
    a7 = v58;
    a8 = v59;
  }

  CFStringAppendFormat(Mutable, 0, @" FROM %sChanges", *a2);
  if (a7)
  {
    CFStringAppendFormat(Mutable, 0, @" WHERE ");
    CFStringAppend(Mutable, a7);
  }

  v42 = @"ORDER BY ROWID ASC";
  if (a8)
  {
    v42 = a8;
  }

  CFStringAppendFormat(Mutable, 0, @" %@;", v42);
  ReaderConnection = _getReaderConnection(a1);
  v44 = CPSqliteConnectionStatementForSQL(ReaderConnection, Mutable);
  CFRelease(Mutable);
  if (!v44 || !*(v44 + 1))
  {
    v56 = 0xFFFFFFFFLL;
LABEL_58:
    if (v19 >= 1)
    {
      free(v67);
    }

    return v56;
  }

  if (a9)
  {
    (*(a9 + 16))(a9, v44);
  }

  v45 = *MEMORY[0x1E695E480];
  *a3 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
  *a4 = CFArrayCreateMutable(v45, 0, 0);
  if (a5)
  {
    *a5 = CFArrayCreateMutable(v45, 0, 0);
  }

  if (a6)
  {
    *a6 = CFArrayCreateMutable(v45, 0, 0);
  }

  if (sqlite3_step(*(v44 + 1)) != 100)
  {
    goto LABEL_54;
  }

  v46 = *MEMORY[0x1E695E738];
  do
  {
    v47 = sqlite3_column_int64(*(v44 + 1), 1);
    v48 = *a3;
    RecordIDForRowid = CPRecordStoreGetRecordIDForRowid(a1, v47);
    CFArrayAppendValue(v48, RecordIDForRowid);
    v50 = sqlite3_column_int(*(v44 + 1), 2);
    CFArrayAppendValue(*a4, v50);
    if (a6)
    {
      v51 = sqlite3_column_int(*(v44 + 1), 3);
      CFArrayAppendValue(*a6, v51);
    }

    v52 = sqlite3_column_int64(*(v44 + 1), 0);
    v53 = v52;
    if (a5)
    {
      if (v52 == -1)
      {
        v54 = *a5;
        v55 = v46;
      }

      else
      {
        v55 = CPRecordStoreGetRecordIDForRowid(a1, v52);
        v54 = *a5;
      }

      CFArrayAppendValue(v54, v55);
    }

    CPSqliteStatementApplyValuesFromRecordWithNullValue(v44, v67, v19, 0, v46);
  }

  while (sqlite3_step(*(v44 + 1)) == 100);
  if (v53 != -1)
  {
    v56 = CPRecordStoreGetRecordIDForRowid(a1, v53);
  }

  else
  {
LABEL_54:
    v56 = 0xFFFFFFFFLL;
  }

  CPSqliteStatementReset(v44);
  CPSqliteDatabaseReleaseSqliteConnection(ReaderConnection);
  if (v19 >= 1)
  {
    _CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithPropertiesA_cold_1(v19, v67, a11);
    goto LABEL_58;
  }

  return v56;
}

void CPRecordStoreInvalidateCachedInstancesOfClassWithBlock(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, a2);
    if (Value)
    {
      if (a3)
      {
        v8 = Value;
        Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], Value);
        v17 = a3;
        theArray = 0;
        CFDictionaryApplyFunction(Copy, _forwardDictionaryEntry, &v17);
        CFRelease(Copy);
        if (theArray)
        {
          Count = CFArrayGetCount(theArray);
          if (Count >= 1)
          {
            v11 = Count;
            for (i = 0; i != v11; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
              v14 = *(a1 + 32);
              if (v14)
              {
                CFDictionaryRemoveValue(v14, ValueAtIndex);
              }

              if (ValueAtIndex)
              {
                v15 = ValueAtIndex[8];
              }

              else
              {
                v15 = -1;
              }

              CFDictionaryRemoveValue(v8, v15);
            }
          }

          CFRelease(theArray);
        }
      }

      else
      {
        v16 = *(a1 + 16);

        CFDictionaryRemoveValue(v16, a2);
      }
    }
  }
}

void _forwardDictionaryEntry(uint64_t a1, const void *a2, void *a3)
{
  if (a2 && (*(*a3 + 16))())
  {
    Mutable = a3[1];
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(0, 0, 0);
      a3[1] = Mutable;
    }

    CFArrayAppendValue(Mutable, a2);
  }
}

void CPRecordStoreInvalidateCachedInstancesOfClass(uint64_t a1, const void *a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    a3 = v5;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __CPRecordStoreInvalidateCachedInstancesOfClass_block_invoke;
    v5[3] = &__block_descriptor_tmp_0;
    v5[4] = v4;
    v5[5] = a4;
  }

  CPRecordStoreInvalidateCachedInstancesOfClassWithBlock(a1, a2, a3);
}

uint64_t _CPRecordStoreGetCountOfInstancesOfClassWithFilterAndBindBlock(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E695E480];
  if (a3)
  {
    v9 = "";
    if (a4)
    {
      v9 = " WHERE";
    }

    v10 = CFStringCreateWithFormat(v8, 0, @"SELECT %s.ROWID FROM %s%s %@;", *a2, *a2, v9, a3);
  }

  else
  {
    v10 = CFStringCreateWithFormat(v8, 0, @"SELECT ROWID FROM %s;", *a2);
  }

  v11 = v10;
  ReaderConnection = _getReaderConnection(a1);
  if (ReaderConnection)
  {
    v13 = ReaderConnection;
    v14 = CPSqliteConnectionStatementForSQL(ReaderConnection, v11);
    CFRelease(v11);
    if (v14 && v14[1])
    {
      if (a5)
      {
        (*(a5 + 16))(a5, v14);
      }

      v17[0] = CPRecordStoreGetDeletedRecords(a1, a2);
      v17[1] = a1;
      v18 = 0;
      CPSqliteStatementSendResults(v14, nonDeletedCountHandler, v17);
      v15 = v18;
      CPSqliteStatementReset(v14);
    }

    else
    {
      v15 = 0xFFFFFFFFLL;
    }

    CPSqliteDatabaseReleaseSqliteConnection(v13);
  }

  else
  {
    CFRelease(v11);
    return 0xFFFFFFFFLL;
  }

  return v15;
}

void _updateModificationDateProperties(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(v1 + 72) >= 1)
  {
    v3 = 0;
    v4 = *MEMORY[0x1E695E738];
    v5 = 8;
    do
    {
      if (*(*(v1 + 80) + v5) == 5)
      {
        Current = CFAbsoluteTimeGetCurrent();
        v7 = Current;
        if (Current)
        {
          v8 = *(a1 + 8 * v3 + 72) == v7;
        }

        else
        {
          v8 = 0;
        }

        if (!v8)
        {
          if (v7)
          {
            v9 = Current;
          }

          else
          {
            v9 = v4;
          }

          CPRecordPropertyLoadHandler(a1, v3, v9);
        }

        CPRecordMarkPropertyChanged(a1, v3);
        v1 = *(a1 + 24);
      }

      ++v3;
      v5 += 40;
    }

    while (v3 < *(v1 + 72));
  }
}

char *CPRecordStoreWriteColumnsForRecord(uint64_t a1, int *a2, int a3)
{
  v5 = *(a1 + 24);
  if (*(v5 + 72) < 1)
  {
    v8 = 0;
    goto LABEL_17;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = *(v5 + 80) + v6;
    v10 = *(v9 + 24);
    if ((v10 & 4) == 0 && *(v9 + 8))
    {
      if (v10)
      {
        if (a3 && (v10 & 0x240) != 0)
        {
LABEL_12:
          ++v8;
        }
      }

      else
      {
        if (a3)
        {
          goto LABEL_12;
        }

        v11 = *(a1 + 40);
        if (v11)
        {
          if (CFDictionaryGetValueIfPresent(v11, v7, 0))
          {
            goto LABEL_12;
          }
        }
      }
    }

    ++v7;
    v5 = *(a1 + 24);
    v6 += 40;
  }

  while (v7 < *(v5 + 72));
  if (v8 >= 1)
  {
    v12 = malloc_type_calloc(1uLL, 24 * v8, 0x1072040C107B9A8uLL);
    v5 = *(a1 + 24);
    goto LABEL_18;
  }

LABEL_17:
  v12 = 0;
LABEL_18:
  if (*(v5 + 72) >= 1)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *(v5 + 80) + 40 * v13;
      v16 = *(v15 + 24);
      if ((v16 & 4) == 0)
      {
        v17 = *(v15 + 8);
        if (v17)
        {
          if (v16)
          {
            if (!a3)
            {
              goto LABEL_48;
            }

            if ((v16 & 0x240) == 0 || v14 >= v8)
            {
              goto LABEL_48;
            }

            goto LABEL_32;
          }

          if (a3)
          {
            if (v14 < v8)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v24 = *(a1 + 40);
            if (v24 && CFDictionaryGetValueIfPresent(v24, v13, 0) && v14 < v8)
            {
              v17 = *(v15 + 8);
LABEL_32:
              v19 = 0;
              v20 = &v12[24 * v14];
              *v20 = *v15;
              v21 = typemap;
              do
              {
                v22 = *v21;
                v21 += 2;
                if (v22 == v17)
                {
                  break;
                }

                ++v19;
              }

              while (v19 != 7);
              *(v20 + 2) = typemap[2 * v19 + 1];
              Property = CPRecordGetProperty(a1, v13);
              if (!Property)
              {
                if ((*(v15 + 24) & 0x40) != 0)
                {
                  v25 = *(v15 + 8);
                  if (v25 == 3)
                  {
                    pthread_once(&kCPRecordRegisterClass, CPRecordRegisterClass);
                    Property = __CPNotNullDataValue;
                  }

                  else if (v25 == 2)
                  {
                    Property = &stru_1F0A49170;
                  }

                  else
                  {
                    Property = 0;
                  }
                }

                else
                {
                  Property = 0;
                }
              }

              *(v20 + 2) = Property;
              ++v14;
            }
          }
        }
      }

LABEL_48:
      ++v13;
      v5 = *(a1 + 24);
    }

    while (v13 < *(v5 + 72));
  }

  *a2 = v8;
  return v12;
}

void _logRecordEvent(CFMutableDictionaryRef *a1, uint64_t a2, int a3, const __CFDictionary *a4)
{
  v6 = *(*(a2 + 24) + 56);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"INSERT INTO %sChanges (ROWID, record, type"), **(a2 + 24);
  if ((v6 & 0x10) != 0)
  {
    CFStringAppendFormat(Mutable, 0, @", sequence_number");
  }

  v8 = *(a2 + 24);
  v9 = *(v8 + 72);
  if (v9 < 1)
  {
    v13 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_52;
  }

  v10 = 0;
  v11 = (*(v8 + 80) + 24);
  do
  {
    if ((*v11 & 8) != 0 || (*v11 & 2) != 0 && *(v11 - 4))
    {
      ++v10;
    }

    v11 += 10;
    --v9;
  }

  while (v9);
  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = malloc_type_calloc(1uLL, 24 * v10, 0x1072040C107B9A8uLL);
    v8 = *(a2 + 24);
    if (*(v8 + 72) < 1)
    {
      goto LABEL_48;
    }
  }

  v40 = v6;
  v14 = 0;
  v15 = 0;
  v16 = CPRecordGetProperty;
  if (a3 == 2)
  {
    v16 = CPRecordGetOriginalProperty;
  }

  v42 = v16;
  do
  {
    v17 = *(v8 + 80) + 40 * v14;
    v18 = *(v17 + 8);
    v19 = *(v17 + 24);
    if (v18 && (v19 & 2) != 0 && v15 < v10)
    {
      v20 = 0;
      v21 = &v12[24 * v15];
      *v21 = *v17;
      v22 = typemap;
      do
      {
        v23 = *v22;
        v22 += 2;
        if (v23 == v18)
        {
          break;
        }

        ++v20;
      }

      while (v20 != 7);
      *(v21 + 2) = typemap[2 * v20 + 1];
      if (v18 <= 3)
      {
        if (v18 == 1)
        {
LABEL_37:
          *(v21 + 4) = v42(a2, v14);
LABEL_44:
          ++v15;
          goto LABEL_45;
        }

        if (v18 != 2 && v18 != 3)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v18 <= 5)
        {
          goto LABEL_37;
        }

        if (v18 != 6 && v18 != 7)
        {
          goto LABEL_44;
        }
      }

      v26 = v42(a2, v14);
      *(v21 + 2) = v26;
      if (v26)
      {
        CFRetain(v26);
      }

      goto LABEL_44;
    }

    if ((v19 & 8) != 0 && v15 < v10)
    {
      v24 = &v12[24 * v15];
      *v24 = *v17;
      if (a3 == 1)
      {
        *(v24 + 2) = 0;
        if (a4)
        {
          v25 = CFDictionaryGetValue(a4, v14) != 0;
        }

        else
        {
          v25 = 0;
        }

        *(v24 + 4) = v25;
      }

      else
      {
        *(v24 + 2) = 2;
        *(v24 + 2) = 0;
      }

      goto LABEL_44;
    }

LABEL_45:
    ++v14;
    v8 = *(a2 + 24);
  }

  while (v14 < *(v8 + 72));
  if (v10 < 1)
  {
    v13 = 0;
    v6 = v40;
  }

  else
  {
    v6 = v40;
LABEL_48:
    v27 = v10;
    v28 = v12;
    do
    {
      CFStringAppend(Mutable, @", ");
      v29 = *v28;
      v28 += 3;
      CFStringAppendCString(Mutable, v29, 0x8000100u);
      --v27;
    }

    while (v27);
    v8 = *(a2 + 24);
    v13 = 1;
  }

LABEL_52:
  CFStringAppendFormat(Mutable, 0, @" VALUES(IFNULL(1 + (SELECT MAX(ROWID) FROM %sChanges), 0), ?, ?"), *v8);
  if ((v6 & 0x10) != 0)
  {
    CFStringAppendFormat(Mutable, 0, @", ?");
  }

  if (v13)
  {
    v30 = v10;
    do
    {
      CFStringAppend(Mutable, @", ?");
      --v30;
    }

    while (v30);
  }

  CFStringAppend(Mutable, @";"));
  v31 = CPSqliteConnectionStatementForSQL(a1, Mutable);
  if (v31)
  {
    v32 = v31;
    v33 = *(v31 + 1);
    if (v33)
    {
      v34 = *(a2 + 16);
      if (!v34)
      {
        goto LABEL_80;
      }

      v35 = *(a2 + 32);
      if (v35 >= -1)
      {
        goto LABEL_63;
      }

      if ((v35 & 0x7FFFFFFF) < *(v34 + 104))
      {
        v35 = *(*(v34 + 112) + 8 * (v35 & 0x7FFFFFFF));
      }

      else
      {
LABEL_80:
        v35 = -1;
      }

LABEL_63:
      sqlite3_bind_int64(v33, 1, v35);
      v36 = 2;
      sqlite3_bind_int(*(v32 + 8), 2, a3);
      if ((v6 & 0x10) != 0)
      {
        v36 = 3;
        sqlite3_bind_int(*(v32 + 8), 3, *(*(a2 + 16) + 96) + 1);
      }

      CPSqliteStatementBindValuesForColumns(v32, v12, v10, v36);
      CPSqliteStatementPerform(v32);
      CPSqliteStatementReset(v32);
    }
  }

  if (v13)
  {
    v37 = v10;
    v38 = (v12 + 16);
    do
    {
      v39 = *(v38 - 2);
      if (v39 > 5)
      {
        if (v39 == 6 || v39 == 7)
        {
LABEL_74:
          if (*v38)
          {
            CFRelease(*v38);
          }
        }
      }

      else if (v39 == 2 || v39 == 3)
      {
        goto LABEL_74;
      }

      v38 += 3;
      --v37;
    }

    while (v37);
  }

  free(v12);

  CFRelease(Mutable);
}

void CPRecordStoreDeleteRecord(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a2 + 16);
  if ((*(*a3 + 57) & 1) != 0 && (*(*(v5 + 24) + 56) & 2) != 0 && *(a2 + 24) == 1)
  {
    _logRecordEvent(a3[1], *(a2 + 16), 2, 0);
  }

  v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"DELETE FROM %s WHERE ROWID = ?;", *a3[2]);
  v7 = CPSqliteConnectionStatementForSQL(a3[1], v6);
  if (v7)
  {
    v8 = v7;
    v9 = *(v7 + 1);
    if (v9)
    {
      v10 = *a3;
      if (*a3)
      {
        if (a1 >= -1)
        {
          v11 = a1;
LABEL_12:
          sqlite3_bind_int64(v9, 1, v11);
          CPSqliteStatementPerform(v8);
          CPSqliteStatementReset(v8);
          goto LABEL_13;
        }

        if ((a1 & 0x7FFFFFFF) < *(v10 + 104))
        {
          v11 = *(*(v10 + 112) + 8 * (a1 & 0x7FFFFFFF));
          goto LABEL_12;
        }
      }

      v11 = -1;
      goto LABEL_12;
    }
  }

LABEL_13:
  CFRelease(v6);
  v12 = *(a3[2] + 32);
  if (v12)
  {
    v12(a1, v5, a3[1]);
  }

  if (v5)
  {
    *(v5 + 58) = 0;
  }

  Cache = CPRecordStoreGetCache(*a3, a3[2]);
  if (Cache)
  {

    CFDictionaryRemoveValue(Cache, a1);
  }
}

void CPRecordStoreSaveRecordIfNotAdded(void *value, uint64_t a2, uint64_t *a3)
{
  if (value)
  {
    v4 = value[2];
    if (v4)
    {
      v7 = *(v4 + 48);
      if (!v7 || !CFSetContainsValue(v7, value))
      {

        CPRecordStoreSaveRecord(value, a2, a3);
      }
    }
  }
}

uint64_t CPRecordDeleteInfoRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  kCPRecordDeleteInfoTypeID = result;
  return result;
}

void CPRecordDeleteInfoDestroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    CFRelease(v1);
  }
}

void OUTLINED_FUNCTION_1(const __CFDictionary *a1)
{

  CFDictionaryApplyFunction(a1, _ClearOriginalProperty, v1);
}

uint64_t decomposePhoneNumber(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    return PNDecomposeForCountry();
  }

  else
  {
    v3 = CPPhoneNumberCopyHomeCountryCode();
    v4 = PNDecomposeForCountry();
    CFRelease(v3);
    return v4;
  }
}

__CFString *CPPhoneNumberCopyHomeCountryCode()
{
  result = copyCountryCode(&__CurrentHomeCountryCode, __CurrentHomeCountryCodeListenerRegistered, @"CPHomeCountryCode", _CPPhoneNumberHomeCountryCodeChanged, @"CPHomeCountryCodeChanged.Internal");
  if (!result)
  {

    return CPPhoneNumberCopyActiveCountryCode();
  }

  return result;
}

uint64_t CPPhoneNumberCopyNormalized(const char *a1)
{
  v2 = strlen(a1);
  v3 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a1, v2, 0x8000100u, 0, *MEMORY[0x1E695E498]);
  v4 = CPPhoneNumberCopyHomeCountryCode();
  v5 = PNCopyBestGuessNormalizedNumberForCountry();
  CFRelease(v3);
  CFRelease(v4);
  return v5;
}

uint64_t _phoneNumbersEqual(const char *a1, uint64_t a2, const char *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = strlen(a1);
    v8 = *MEMORY[0x1E695E498];
    v9 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a1, v7, 0x8000100u, 0, *MEMORY[0x1E695E498]);
    v10 = strlen(a3);
    v11 = CFStringCreateWithBytesNoCopy(v6, a3, v10, 0x8000100u, 0, v8);
    v3 = PNPhoneNumbersEqual();
    if (v9)
    {
      CFRelease(v9);
    }

    if (v11)
    {
      CFRelease(v11);
    }
  }

  return v3;
}

uint64_t CPPhoneNumbersEqualStrict(const char *a1, const char *a2)
{
  v4 = CPPhoneNumberCopyHomeCountryCode();
  v5 = _phoneNumbersEqual(a1, v4, a2);
  CFRelease(v4);
  return v5;
}

char *CPPhoneNumberGetLastFour(const __CFString *a1, char *a2)
{
  Length = CFStringGetLength(a1);
  v29 = a1;
  v32 = 0;
  v33 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  result = 0;
  v30 = CharactersPtr;
  if (!CharactersPtr)
  {
    result = CFStringGetCStringPtr(a1, 0x600u);
  }

  v31 = result;
  v34 = 0;
  v35 = 0;
  v20[1] = 0;
  if (!Length)
  {
    goto LABEL_31;
  }

  v7 = 0;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = -Length;
  v9 = Length + 64;
  *buffer = 0u;
  v22 = 0u;
  do
  {
    if (Length >= 5)
    {
      v10 = 5;
    }

    else
    {
      v10 = Length;
    }

    if (Length >= 1)
    {
      v11 = v33;
      if (v33 >= Length)
      {
        if (v30)
        {
          v12 = v30[v32 - 1 + Length];
        }

        else if (v31)
        {
          v12 = v31[v32 - 1 + Length];
        }

        else
        {
          if (v35 < Length || (v13 = v34, v34 >= Length))
          {
            v14 = -v10;
            v15 = v10 + v8;
            v16 = v9 - v10;
            v17 = Length + v14;
            v18 = v17 + 64;
            if (v17 + 64 >= v33)
            {
              v18 = v33;
            }

            v34 = v17;
            v35 = v18;
            if (v33 >= v16)
            {
              v11 = v16;
            }

            v36.location = v17 + v32;
            v36.length = v11 + v15;
            CFStringGetCharacters(v29, v36, buffer);
            v13 = v34;
          }

          v12 = *&v20[2 * Length + -2 * v13];
        }

        result = v12;
        if (((v12 & 0xFFDF) - 65) > 0x19u)
        {
          if (v12 - 48 > 9)
          {
            goto LABEL_27;
          }
        }

        else
        {
          result = __toupper(v12);
          v12 = __KeyMap[result - 65];
        }

        if (v12)
        {
          v19[3 - v7++] = v12;
        }
      }
    }

LABEL_27:
    if (!--Length)
    {
      break;
    }

    ++v8;
    --v9;
  }

  while (v7 < 4);
  if (v7 >= 1)
  {
    return strncpy(a2, &v19[4 - v7], (v7 + 1));
  }

LABEL_31:
  *a2 = 0;
  return result;
}