uint64_t sub_100002BE4()
{
  if (qword_100178E40 != -1)
  {
    sub_100109DB8();
  }

  return qword_100178E48;
}

void sub_100002C1C(id a1)
{
  qword_100178E48 = CFBundleGetBundleWithIdentifier(@"com.apple.Sharing");
  if (!qword_100178E48)
  {
    v1 = CFURLCreateWithFileSystemPath(0, @"/System/Library/PrivateFrameworks/Sharing.framework", kCFURLPOSIXPathStyle, 1u);
    if (v1)
    {
      v2 = v1;
      qword_100178E48 = CFBundleCreate(0, v1);

      CFRelease(v2);
    }
  }
}

CFStringRef sub_100002CA8(const __CFString *cf, CFStringRef tableName)
{
  if (qword_100178E40 != -1)
  {
    sub_100109DB8();
  }

  v4 = qword_100178E48;
  if (qword_100178E48)
  {

    return CFBundleCopyLocalizedString(v4, cf, cf, tableName);
  }

  else
  {
    v6 = CFGetAllocator(cf);

    return CFStringCreateCopy(v6, cf);
  }
}

__CFSet *sub_100002D34(const __CFAllocator *a1, CFIndex a2, CFBagRef theBag)
{
  if (!theBag)
  {
    return 0;
  }

  Count = CFBagGetCount(theBag);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  __chkstk_darwin();
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v9, v8);
  CFBagGetValues(theBag, v9);
  Mutable = CFSetCreateMutable(a1, a2, &kCFTypeSetCallBacks);
  if (v7 >= 1)
  {
    do
    {
      v11 = *v9++;
      CFSetSetValue(Mutable, v11);
      --v7;
    }

    while (v7);
  }

  return Mutable;
}

CFArrayRef sub_100002E3C(const __CFAllocator *a1, CFSetRef theSet)
{
  if (!theSet)
  {
    return 0;
  }

  result = CFSetGetCount(theSet);
  if (result)
  {
    v5 = result;
    __chkstk_darwin();
    v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFSetGetValues(theSet, v7);
    return CFArrayCreate(a1, v7, v5, &kCFTypeArrayCallBacks);
  }

  return result;
}

CFArrayRef sub_100002F20(const __CFAllocator *a1, CFBagRef theBag)
{
  if (!theBag)
  {
    return 0;
  }

  result = CFBagGetCount(theBag);
  if (result)
  {
    v5 = result;
    __chkstk_darwin();
    v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFBagGetValues(theBag, v7);
    return CFArrayCreate(a1, v7, v5, &kCFTypeArrayCallBacks);
  }

  return result;
}

__CFBag *sub_100003004(const __CFAllocator *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFBagCreateMutable(a1, Count, &kCFTypeBagCallBacks);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      CFBagSetValue(Mutable, ValueAtIndex);
    }
  }

  return Mutable;
}

__CFSet *sub_100003094(const __CFAllocator *a1, CFArrayRef theArray)
{
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  Mutable = CFSetCreateMutable(a1, Count, &kCFTypeSetCallBacks);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      CFSetSetValue(Mutable, ValueAtIndex);
    }
  }

  return Mutable;
}

__CFSet *sub_100003124(const __CFAllocator *a1, xpc_object_t xarray)
{
  if (!xarray)
  {
    return 0;
  }

  count = xpc_array_get_count(xarray);
  Mutable = CFSetCreateMutable(a1, count, &unk_10015C5D8);
  if (count >= 1)
  {
    for (i = 0; i != count; ++i)
    {
      int64 = xpc_array_get_int64(xarray, i);
      if (qword_100178EA8 != -1)
      {
        sub_100109DCC();
      }

      ValueAtIndex = CFArrayGetValueAtIndex(qword_100178EB0, int64);
      CFSetSetValue(Mutable, ValueAtIndex);
    }
  }

  return Mutable;
}

xpc_object_t sub_1000031F0(const __CFSet *a1)
{
  if (!a1)
  {
    return 0;
  }

  Count = CFSetGetCount(a1);
  if (!Count)
  {
    return 0;
  }

  v3 = Count;
  __chkstk_darwin();
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  bzero(v5, v4);
  v6 = xpc_array_create(0, 0);
  CFSetGetValues(a1, v5);
  if (v3 >= 1)
  {
    do
    {
      v7 = *v5;
      if (qword_100178EA8 != -1)
      {
        sub_100109DE0();
      }

      Value = CFDictionaryGetValue(qword_100178EB8, v7);
      xpc_array_set_int64(v6, 0xFFFFFFFFFFFFFFFFLL, Value);
      ++v5;
      --v3;
    }

    while (v3);
  }

  return v6;
}

CFArrayRef sub_100003324(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryGetCount(theDict);
  if (result)
  {
    v5 = result;
    __chkstk_darwin();
    v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFDictionaryGetKeysAndValues(theDict, v7, 0);
    return CFArrayCreate(a1, v7, v5, &kCFTypeArrayCallBacks);
  }

  return result;
}

CFArrayRef sub_10000340C(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 0;
  }

  result = CFDictionaryGetCount(theDict);
  if (result)
  {
    v5 = result;
    __chkstk_darwin();
    v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v7, v6);
    CFDictionaryGetKeysAndValues(theDict, 0, v7);
    return CFArrayCreate(a1, v7, v5, &kCFTypeArrayCallBacks);
  }

  return result;
}

void sub_1000034F4(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (value)
  {
    CFDictionarySetValue(theDict, key, value);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, key);
  }
}

uint64_t sub_100003508(const void *a1)
{
  if (CFEqual(a1, kSFNodeProtocolAFP))
  {
    return 548;
  }

  if (CFEqual(a1, kSFNodeProtocolSMB))
  {
    return 445;
  }

  if (CFEqual(a1, kSFNodeProtocolVNC))
  {
    return 5900;
  }

  if (CFEqual(a1, kSFNodeProtocolODisk) || CFEqual(a1, kSFNodeProtocolWebDAV))
  {
    return 80;
  }

  if (CFEqual(a1, kSFNodeProtocolWebDAVS))
  {
    return 443;
  }

  if (CFEqual(a1, kSFNodeProtocolNFS))
  {
    return 2049;
  }

  if (CFEqual(a1, kSFNodeProtocolFTP))
  {
    return 21;
  }

  if (CFEqual(a1, kSFNodeProtocolFTPS))
  {
    return 990;
  }

  if (CFEqual(a1, kSFNodeProtocolHTTP))
  {
    return 80;
  }

  if (CFEqual(a1, kSFNodeProtocolHTTPS))
  {
    return 443;
  }

  if (CFEqual(a1, kSFNodeProtocolADisk))
  {
    return 548;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const __CFString *sub_10000368C(const __CFString *originalString, CFStringRef legalURLCharactersToBeEscaped)
{
  if (originalString)
  {
    return CFURLCreateStringByAddingPercentEscapes(0, originalString, 0, legalURLCharactersToBeEscaped, 0x8000100u);
  }

  return originalString;
}

const __CFURL *sub_1000036B0(const void *a1, const __CFString *a2, const __CFString *a3, __CFString *MutableCopy, int a5, const __CFString *a6, const __CFDictionary *a7, int a8)
{
  if (CFEqual(a1, kSFNodeProtocolWebDAV) || CFEqual(a1, kSFNodeProtocolODisk))
  {
    v16 = &kSFNodeProtocolHTTP;
LABEL_4:
    v17 = *v16;
    goto LABEL_5;
  }

  v38 = kSFNodeProtocolAirDrop;
  CFEqual(a1, kSFNodeProtocolAirDrop);
  if (CFEqual(a1, kSFNodeProtocolWebDAVS) || (v17 = a1, CFEqual(a1, v38)))
  {
    v16 = &kSFNodeProtocolHTTPS;
    goto LABEL_4;
  }

LABEL_5:
  v18 = sub_100003508(a1);
  if (a2)
  {
    a2 = CFURLCreateStringByAddingPercentEscapes(0, a2, 0, @";:@?/", 0x8000100u);
  }

  if (a3)
  {
    a3 = CFURLCreateStringByAddingPercentEscapes(0, a3, 0, @";:@?/", 0x8000100u);
  }

  if (CFStringHasPrefix(MutableCopy, @"[") && CFStringHasSuffix(MutableCopy, @"]"))
  {
    Length = CFStringGetLength(MutableCopy);
    MutableCopy = CFStringCreateMutableCopy(0, Length, MutableCopy);
    v45.length = CFStringGetLength(MutableCopy);
    v45.location = 0;
    CFStringFindAndReplace(MutableCopy, @"%", @"%25", v45, 0);
  }

  else if (MutableCopy)
  {
    MutableCopy = CFURLCreateStringByAddingPercentEscapes(0, MutableCopy, 0, @";:@?/", 0x8000100u);
  }

  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"%@://", v17);
  if (!a2)
  {
    if (!a3)
    {
      v21 = 1;
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  CFStringAppend(Mutable, a2);
  if (a3)
  {
LABEL_18:
    CFStringAppendFormat(Mutable, 0, @":%@", a3);
    v21 = 0;
    goto LABEL_19;
  }

  v21 = 1;
LABEL_19:
  CFStringAppend(Mutable, @"@");
LABEL_20:
  CFStringAppend(Mutable, MutableCopy);
  if (a5 >= 1 && v18 != a5)
  {
    CFStringAppendFormat(Mutable, 0, @":%ld", a5);
  }

  if (a6)
  {
    if (CFStringHasPrefix(a6, @"/"))
    {
      v44.length = CFStringGetLength(a6) - 1;
      v44.location = 1;
      v22 = CFStringCreateWithSubstring(0, a6, v44);
    }

    else
    {
      v22 = CFRetain(a6);
    }

    v23 = v22;
    if (v22)
    {
      v24 = CFURLCreateStringByAddingPercentEscapes(0, v22, 0, 0, 0x8000100u);
    }

    else
    {
      v24 = 0;
    }

    CFStringAppendFormat(Mutable, 0, @"/%@", v24);
    CFRelease(v23);
    CFRelease(v24);
  }

  if (a7)
  {
    Count = CFDictionaryGetCount(a7);
    if (Count)
    {
      v26 = Count;
      v40 = v21;
      v41 = a3;
      v42 = a8;
      v39 = &v39;
      __chkstk_darwin(Count);
      v28 = (&v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v28, v27);
      v29 = CFStringCreateMutable(0, 0);
      CFDictionaryGetKeysAndValues(a7, v28, 0);
      v30 = v26 - 1;
      if (v26 >= 1)
      {
        while (1)
        {
          v31 = *v28;
          Value = CFDictionaryGetValue(a7, *v28);
          CFStringAppendFormat(v29, 0, @"%@=%@", v31, Value);
          if (!v30)
          {
            break;
          }

          CFStringAppend(v29, @"&");
          --v30;
          ++v28;
        }
      }

      CFStringAppendFormat(Mutable, 0, @"?%@", v29);
      CFRelease(v29);
      a8 = v42;
      a3 = v41;
      LOBYTE(v21) = v40;
    }
  }

  v33 = CFURLCreateWithString(0, Mutable, 0);
  v34 = v33;
  if (a8)
  {
    error = 0;
    if (!CFURLSetResourcePropertyForKey(v33, kCFURLIsDirectoryKey, kCFBooleanTrue, &error))
    {
      v35 = v21;
      v36 = utilities_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_100109E08(&error, v36);
      }

      CFRelease(error);
      LOBYTE(v21) = v35;
    }
  }

  CFRelease(Mutable);
  CFRelease(MutableCopy);
  if (a2)
  {
    CFRelease(a2);
  }

  if ((v21 & 1) == 0)
  {
    CFRelease(a3);
  }

  return v34;
}

CGImageRef sub_100003BD0(const __CFURL *a1)
{
  v1 = CGImageSourceCreateWithURL(a1, 0);
  if (v1)
  {
    v2 = v1;
    if (CGImageSourceGetCount(v1))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v2, 0, 0);
    }

    else
    {
      v5 = utilities_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_100109E84();
      }

      ImageAtIndex = 0;
    }

    CFRelease(v2);
  }

  else
  {
    v4 = utilities_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100109EB8();
    }

    return 0;
  }

  return ImageAtIndex;
}

CGImageRef sub_100003C7C(const __CFData *a1, int a2)
{
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = Mutable;
  if (a2)
  {
    CFDictionarySetValue(Mutable, kCGImageSourceTypeIdentifierHint, kUTTypeJPEG2000);
    CFDictionarySetValue(v5, kCGImageSourceFailForDataNotMatchingHint, kCFBooleanTrue);
  }

  v6 = CGImageSourceCreateWithData(a1, v5);
  if (v6)
  {
    v7 = v6;
    if (!CGImageSourceGetCount(v6))
    {
      v13 = utilities_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_100109F88();
      }

      goto LABEL_21;
    }

    if (a2)
    {
      Type = CGImageSourceGetType(v7);
      if (!CFEqual(Type, kUTTypeJPEG2000))
      {
        v14 = utilities_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_100109F54();
        }

        goto LABEL_21;
      }

      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      if (!ImageAtIndex)
      {
        v10 = utilities_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_100109F20();
        }

LABEL_21:
        v12 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
      if (!ImageAtIndex)
      {
        v15 = utilities_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100109EEC();
        }

        goto LABEL_21;
      }
    }

    v12 = ImageAtIndex;
LABEL_22:
    CFRelease(v7);
    goto LABEL_23;
  }

  v11 = utilities_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_100109FBC();
  }

  v12 = 0;
LABEL_23:
  CFRelease(v5);
  return v12;
}

CGImageRef sub_100003E3C(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFURLGetTypeID())
  {
    v3 = CGImageSourceCreateWithURL(a1, 0);
  }

  else
  {
    if (v2 != CFDataGetTypeID())
    {
      goto LABEL_8;
    }

    v3 = CGImageSourceCreateWithData(a1, 0);
  }

  v4 = v3;
  if (v3)
  {
    if (CGImageSourceGetCount(v3))
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v4, 0, 0);
    }

    else
    {
      v7 = utilities_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_100109FF0();
      }

      ImageAtIndex = 0;
    }

    CFRelease(v4);
    return ImageAtIndex;
  }

LABEL_8:
  v6 = utilities_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10010A024();
  }

  return 0;
}

__CFData *sub_100003F1C(void *a1, uint64_t a2)
{
  v4 = CFGetAllocator(a1);
  Mutable = CFDataCreateMutable(v4, 0);
  valuePtr = a2;
  v6 = CFDictionaryCreateMutable(v4, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a2)
  {
    v7 = CFNumberCreate(v4, kCFNumberLongType, &valuePtr);
    v8 = &kCGImageDestinationRequestedFileSize;
  }

  else
  {
    v14 = 1065353216;
    v7 = CFNumberCreate(v4, kCFNumberFloatType, &v14);
    v8 = &kCGImageDestinationLossyCompressionQuality;
  }

  CFDictionarySetValue(v6, *v8, v7);
  CFRelease(v7);
  v9 = CGImageDestinationCreateWithData(Mutable, kUTTypeJPEG2000, 1uLL, 0);
  if (v9)
  {
    v10 = v9;
    CGImageDestinationAddImage(v9, a1, v6);
    if (!CGImageDestinationFinalize(v10))
    {
      v11 = utilities_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10010A058();
      }

      CFRelease(Mutable);
      Mutable = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v12 = utilities_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10010A08C();
    }
  }

  CFRelease(v6);
  return Mutable;
}

__CFData *sub_100004090(uint64_t a1, uint64_t a2)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (DeviceRGB)
  {
    v4 = DeviceRGB;
    v5 = CGImageCreateByMatchingToColorSpace();
    if (v5)
    {
      v6 = v5;
      Width = CGImageGetWidth(v5);
      Height = CGImageGetHeight(v6);
      if (Width > 0x21C || Height >= 0x21D)
      {
        Thumb = CGImageCreateThumb();
      }

      else
      {
        Thumb = CFRetain(v6);
      }

      v13 = Thumb;
      if (Thumb)
      {
        v11 = sub_100003F1C(Thumb, a2);
        CFRelease(v13);
      }

      else
      {
        v14 = utilities_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_10010A0C0();
        }

        v11 = 0;
      }

      CFRelease(v6);
    }

    else
    {
      v12 = utilities_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10010A0F4();
      }

      v11 = 0;
    }

    CFRelease(v4);
  }

  else
  {
    v10 = utilities_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10010A128();
    }

    return 0;
  }

  return v11;
}

uint64_t sub_1000041C0()
{
  v0 = qword_100178E50;
  if (!qword_100178E50)
  {
    if (SFDeviceIsVirtualMachine())
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_100004258(@"EnableDemoMode", 0);
    }

    v2 = sub_100004258(@"BrowseAllInterfaces", v1);
    v3 = &kCFBooleanTrue;
    if (!v2)
    {
      v3 = &kCFBooleanFalse;
    }

    v0 = *v3;
    qword_100178E50 = *v3;
  }

  return CFBooleanGetValue(v0);
}

uint64_t sub_100004258(const __CFString *a1, uint64_t a2)
{
  v3 = sub_100004530(a1);
  if (v3)
  {
    v4 = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 0x40000000;
    v9 = sub_100004744;
    v10 = &unk_10015C628;
    v11 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFBooleanGetTypeID())
    {
      Value = CFBooleanGetValue(v4);
    }

    else
    {
      if (v5 != CFStringGetTypeID())
      {
LABEL_7:
        v9(v8);
        return a2;
      }

      Value = sub_100004620(v4);
    }

    a2 = Value;
    goto LABEL_7;
  }

  return a2;
}

uint64_t sub_100004334()
{
  v0 = qword_100178E58;
  if (!qword_100178E58)
  {
    v1 = sub_100004258(@"DisableAirDrop", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_100178E58 = *v2;
  }

  return CFBooleanGetValue(v0);
}

uint64_t sub_10000439C()
{
  v0 = qword_100178E60;
  if (!qword_100178E60)
  {
    v1 = sub_100004258(@"EnableSimulator", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_100178E60 = *v2;
  }

  return CFBooleanGetValue(v0);
}

uint64_t sub_100004404()
{
  v0 = qword_100178E68;
  if (!qword_100178E68)
  {
    v1 = sub_100004258(@"EnableDeviceImages", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_100178E68 = *v2;
  }

  return CFBooleanGetValue(v0);
}

uint64_t sub_10000446C()
{
  v0 = qword_100178E70;
  if (!qword_100178E70)
  {
    v1 = sub_100004258(@"EnableDirectIP", 0);
    v2 = &kCFBooleanTrue;
    if (!v1)
    {
      v2 = &kCFBooleanFalse;
    }

    v0 = *v2;
    qword_100178E70 = *v2;
  }

  return CFBooleanGetValue(v0);
}

BOOL sub_1000044D4(CFTypeRef cf1, CFTypeRef cf2)
{
  if (cf1 && cf2)
  {
    if (!CFEqual(cf1, cf2))
    {
      return 1;
    }
  }

  else if (cf1 && !cf2)
  {
    return 1;
  }

  return cf2 && cf1 == 0;
}

CFPropertyListRef sub_100004530(const __CFString *a1)
{
  result = CFPreferencesCopyAppValue(a1, @"/private/var/Managed Preferences/mobile/com.apple.Sharing");
  if (!result)
  {

    return CFPreferencesCopyAppValue(a1, @"com.apple.Sharing");
  }

  return result;
}

uint64_t sub_100004588(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  valuePtr = a2;
  v3 = sub_100004530(a1);
  if (v3)
  {
    v4 = v3;
    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v4, kCFNumberLongType, &valuePtr);
    }

    else
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFStringGetTypeID())
      {
        valuePtr = CFStringGetIntValue(v4);
      }
    }

    CFRelease(v4);
    return valuePtr;
  }

  return v2;
}

BOOL sub_100004620(const __CFString *a1)
{
  CFRetain(a1);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v5 = sub_10000473C;
  v6 = &unk_10015C608;
  v7 = a1;
  if (CFEqual(a1, @"1"))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (CFStringCompare(a1, @"true", 1uLL))
    {
      v2 = 1;
      if (CFStringCompare(a1, @"yes", 1uLL))
      {
        v2 = 1;
        if (CFStringCompare(a1, @"y", 1uLL))
        {
          v2 = CFStringCompare(a1, @"on", 1uLL) == kCFCompareEqualTo;
        }
      }
    }
  }

  v5(v4);
  return v2;
}

CFStringRef sub_10000474C(const __CFAllocator *a1)
{
  memset(&v4, 0, sizeof(v4));
  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  gettimeofday(&v3, 0);
  localtime_r(&v3.tv_sec, &v4);
  return CFStringCreateWithFormat(a1, 0, @"%02d:%02d:%02d.%03d", v4.tm_hour, v4.tm_min, v4.tm_sec, (v3.tv_usec / 1000));
}

const __CFString *sub_1000047E0()
{
  v0 = sub_100004530(@"AlternateService");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      if (CFBooleanGetValue(v1))
      {
        v3 = @"_airdrop-alt._tcp.";
      }

      else
      {
        v3 = @"_airdrop._tcp.";
      }

      goto LABEL_16;
    }

    v6 = CFGetTypeID(v1);
    if (v6 == CFStringGetTypeID())
    {
      if (CFEqual(v1, @"1"))
      {
        v3 = @"_airdrop-alt._tcp.";
LABEL_16:
        CFRelease(v1);
        return v3;
      }

      if (!CFEqual(v1, @"0"))
      {
        if (CFStringGetLength(v1) < 8)
        {
          v7 = CFRetain(v1);
        }

        else
        {
          v11.location = 0;
          v11.length = 7;
          v7 = CFStringCreateWithSubstring(0, v1, v11);
        }

        v8 = v7;
        v9 = CFStringCreateWithFormat(0, 0, @"_airdrop-%@._tcp.", v7);
        v3 = CFAutorelease(v9);
        CFRelease(v8);
        goto LABEL_16;
      }
    }

    v3 = @"_airdrop._tcp.";
    goto LABEL_16;
  }

  if (!sub_100004258(@"EnableDemoMode", 0))
  {
    return @"_airdrop._tcp.";
  }

  v4 = CFStringCreateWithFormat(0, 0, @"_airdrop-%@._tcp.", @"demo");

  return CFAutorelease(v4);
}

uint64_t sub_10000497C()
{
  if (qword_100178E78 != -1)
  {
    sub_10010A15C();
  }

  return qword_100178E80;
}

CFArrayRef sub_1000049B8()
{
  v14 = @"_adisk._tcp.";
  v15 = @"_afpovertcp._tcp.";
  v16 = @"_smb._tcp.";
  v17 = @"_rfb._tcp.";
  v18 = @"_odisk._tcp.";
  v19 = @"_http._tcp.";
  v20 = sub_1000047E0();
  v21 = @"_file._tcp.";
  v22 = @"_netbios._udp.";
  v23 = @"_workgroups._udp.";
  v24 = @"_nwnode._tcp.";
  v0 = kSFNodeProtocolAFP;
  values = kSFNodeProtocolADisk;
  v4 = kSFNodeProtocolAFP;
  v1 = kSFNodeProtocolSMB;
  v5 = kSFNodeProtocolSMB;
  v6 = kSFNodeProtocolVNC;
  v7 = kSFNodeProtocolODisk;
  v8 = kSFNodeProtocolHTTP;
  v9 = kSFNodeProtocolAirDrop;
  v10 = kSFNodeProtocolFile;
  v11 = kSFNodeProtocolNetBIOS;
  v12 = kSFNodeProtocolWorkgroups;
  v13 = kSFNodeProtocolNWNode;
  if (sub_100004258(@"PreferSMBFileSharing", 0))
  {
    v15 = @"_smb._tcp.";
    v16 = @"_afpovertcp._tcp.";
    v4 = v1;
    v5 = v0;
  }

  qword_100178E88 = CFArrayCreate(0, &values, 11, &kCFTypeArrayCallBacks);
  result = CFArrayCreate(0, &v14, 11, &kCFTypeArrayCallBacks);
  qword_100178E80 = result;
  return result;
}

uint64_t sub_100004B74()
{
  if (qword_100178E78 != -1)
  {
    sub_10010A170();
  }

  return qword_100178E88;
}

const void *sub_100004BB0(void *key)
{
  if (qword_100178E90 != -1)
  {
    sub_10010A184();
  }

  v2 = qword_100178E98;

  return CFDictionaryGetValue(v2, key);
}

CFDictionaryRef sub_100004C08()
{
  if (qword_100178E78 != -1)
  {
    sub_10010A15C();
  }

  v0 = qword_100178E80;
  v1 = qword_100178E88;
  Count = CFArrayGetCount(qword_100178E80);
  v3 = CFArrayGetCount(v1);
  __chkstk_darwin(v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v5, v4);
  __chkstk_darwin(v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, v7);
  v11.location = 0;
  v11.length = Count;
  CFArrayGetValues(v0, v11, v5);
  v12.location = 0;
  v12.length = v3;
  CFArrayGetValues(v1, v12, v8);
  qword_100178E98 = CFDictionaryCreate(kCFAllocatorDefault, v8, v5, Count, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  result = CFDictionaryCreate(kCFAllocatorDefault, v5, v8, v3, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  qword_100178EA0 = result;
  return result;
}

const void *sub_100004DA4(void *key)
{
  if (qword_100178E90 != -1)
  {
    sub_10010A198();
  }

  v2 = qword_100178EA0;

  return CFDictionaryGetValue(v2, key);
}

CFDictionaryRef sub_100004E60()
{
  v0 = 0;
  values[0] = kSFNodeKindRoot;
  values[1] = kSFNodeKindBonjour;
  values[2] = kSFNodeKindWindows;
  values[3] = kSFNodeKindDomain;
  values[4] = kSFNodeKindWorkgroup;
  values[5] = kSFNodeKindVolume;
  values[6] = kSFNodeKindPrinter;
  values[7] = kSFNodeKindADisk;
  values[8] = kSFNodeKindODisk;
  values[9] = kSFNodeKindPerson;
  values[10] = kSFNodeKindMe;
  values[11] = kSFNodeKindDisabled;
  values[12] = kSFNodeKindUnknown;
  values[13] = kSFNodeKindMonogram;
  values[14] = kSFNodeKindRecent;
  values[15] = kSFNodeKindConnected;
  values[16] = kSFNodeKindManaged;
  values[17] = kSFNodeKindAirDrop;
  values[18] = kSFNodeKindClassroom;
  values[19] = kSFNodeKindClassroomGroup;
  values[20] = kSFNodeKindClassroomCourse;
  values[21] = kSFNodeKindSuggestion;
  values[22] = kSFNodeKindRapport;
  values[23] = kSFNodeKindAll;
  memset(v4, 0, sizeof(v4));
  v1 = xmmword_100117C60;
  v2 = vdupq_n_s64(2uLL);
  do
  {
    v4[v0] = v1;
    v1 = vaddq_s64(v1, v2);
    ++v0;
  }

  while (v0 != 12);
  qword_100178EB0 = CFArrayCreate(0, values, 24, &kCFTypeArrayCallBacks);
  result = CFDictionaryCreate(0, values, v4, 24, &unk_10015C748, 0);
  qword_100178EB8 = result;
  return result;
}

void sub_10000509C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id sub_1000051A4()
{
  v1 = &v0[OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = &v0[OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_screenWidth;
  v4 = objc_opt_self();
  v5 = [v4 mainScreen];
  [v5 bounds];
  v7 = v6;

  *&v0[v3] = v7;
  v8 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_animationPositionTransformYOffset;
  v9 = [v4 mainScreen];
  [v9 bounds];
  v11 = v10;

  *&v0[v8] = v11 / 3.0;
  v12 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_cornerRadius;
  v13 = objc_opt_self();
  v14 = [v13 sharedInstanceForEmbeddedDisplay];
  [v14 maximumContinuousCornerRadius];
  v16 = v15;

  *&v0[v12] = v16;
  v17 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureEdgeInset;
  v18 = [v13 sharedInstanceForEmbeddedDisplay];
  [v18 minimumScreenEdgeInsets];
  v20 = v19;

  *&v0[v17] = v20;
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SystemApertureElementTransitionCoordinator();
  return objc_msgSendSuper2(&v22, "init");
}

void sub_1000053A0(void *a1)
{
  v2 = v1;
  v4 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (!v4)
  {
    __break(1u);
    goto LABEL_28;
  }

  v5 = v4;
  v6 = [a1 viewControllerForKey:UITransitionContextToViewControllerKey];
  if (!v6)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay;
  if (v1[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay])
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;
  v56 = [v10 view];
  if (!v56)
  {
    goto LABEL_29;
  }

  v49 = OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator;
  v11 = *&v1[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator] + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen;
  v13 = *v11;
  v12 = *(v11 + 8);
  v14 = *(v11 + 16);
  v15 = *(v11 + 24);
  v16 = &selRef_initialFrameForViewController_;
  if (v1[v8])
  {
    v16 = &selRef_finalFrameForViewController_;
  }

  v53 = v10;
  [a1 *v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = [objc_opt_self() effectWithStyle:8];
  v26 = [objc_allocWithZone(UIVisualEffectView) init];
  [v26 setFrame:{v18, v20, v22, v24}];
  [v26 setAutoresizingMask:18];

  v54 = v7;
  v51 = v12;
  if (v2[v8] == 1)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0;
  }

  [v26 setEffect:v27];

  v28 = [objc_allocWithZone(UIView) init];
  v29 = [objc_opt_self() whiteColor];
  [v28 setBackgroundColor:v29];

  [v28 setClipsToBounds:1];
  v30 = [v28 layer];
  [v30 setCornerRadius:*(*&v2[v49] + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_cornerRadius)];

  v31 = [v28 layer];
  [v31 setCornerCurve:kCACornerCurveID0];

  v32 = [a1 containerView];
  [v32 addSubview:v56];

  v33 = a1;
  v34 = [a1 containerView];
  [v34 addSubview:v26];

  [v56 setFrame:{v18, v20, v22, v24}];
  if (v2[v8] == 1)
  {
    v35 = *(*&v2[v49] + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_animationPositionTransformYOffset);
  }

  [v56 frame];
  [v56 setFrame:?];
  v36 = [a1 containerView];
  [v36 setMaskView:v28];

  if (v2[v8])
  {
    v37 = v13;
  }

  else
  {
    v37 = v18;
  }

  if (v2[v8])
  {
    v38 = v51;
  }

  else
  {
    v38 = v20;
  }

  if (v2[v8])
  {
    v39 = v14;
  }

  else
  {
    v39 = v22;
  }

  if (v2[v8])
  {
    v40 = v15;
  }

  else
  {
    v40 = v24;
  }

  [v28 setFrame:{v37, v38, v39, v40}];
  v55 = objc_opt_self();
  v41 = swift_allocObject();
  *(v41 + 16) = v26;
  *(v41 + 24) = v2;
  *(v41 + 32) = v25;
  *(v41 + 40) = v56;
  *(v41 + 48) = v18;
  *(v41 + 56) = v20;
  *(v41 + 64) = v22;
  *(v41 + 72) = v24;
  *(v41 + 80) = v28;
  *(v41 + 88) = v13;
  *(v41 + 96) = v51;
  *(v41 + 104) = v14;
  *(v41 + 112) = v15;
  v62 = sub_10000773C;
  v63 = v41;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100106B40;
  v61 = &unk_10015CCF8;
  v50 = _Block_copy(&aBlock);
  v42 = v26;
  v52 = v25;
  v43 = v2;
  v57 = v56;
  v44 = v28;

  v45 = swift_allocObject();
  v45[2] = v42;
  v45[3] = v33;
  v45[4] = v43;
  v62 = sub_1000077BC;
  v63 = v45;
  aBlock = _NSConcreteStackBlock;
  v59 = 1107296256;
  v60 = sub_100005C38;
  v61 = &unk_10015CD48;
  v46 = _Block_copy(&aBlock);
  v47 = v42;
  v48 = v43;
  swift_unknownObjectRetain();

  [v55 _animateUsingSpringWithDuration:0 delay:v50 options:v46 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];

  _Block_release(v46);
  _Block_release(v50);
}

id sub_1000059BC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v23 = OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay;
  if (*(a2 + OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay))
  {
    a3 = 0;
  }

  [a1 setEffect:a3];
  [a4 setFrame:{a6, a7, a8, a9}];
  if ((*(a2 + v23) & 1) == 0)
  {
    v24 = *(*(a2 + OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator) + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_animationPositionTransformYOffset);
  }

  [a4 frame];
  [a4 setFrame:?];
  if (*(a2 + v23))
  {
    v25 = a6;
  }

  else
  {
    v25 = a10;
  }

  if (*(a2 + v23))
  {
    v26 = a7;
  }

  else
  {
    v26 = a11;
  }

  if (*(a2 + v23))
  {
    v27 = a8;
  }

  else
  {
    v27 = a12;
  }

  v28 = a13;
  if (*(a2 + v23))
  {
    v28 = a9;
  }

  return [a5 setFrame:{v25, v26, v27, v28}];
}

uint64_t sub_100005AF4(char a1, id a2, void *a3, uint64_t a4)
{
  [a2 removeFromSuperview];
  v7 = [a3 containerView];
  [v7 setMaskView:0];

  [a3 completeTransition:a1 & 1];
  v8 = *(a4 + OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator);
  v9 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate;
  swift_beginAccess();
  sub_100007BA4(v8 + v9, v17, &unk_100173410, &qword_1001182F8);
  if (!v18)
  {
    return sub_100007810(v17);
  }

  sub_100007878(v17, v14);
  v10 = v8;
  sub_100007810(v17);
  v11 = v15;
  v12 = v16;
  sub_1000078DC(v14, v15);
  (*(v12 + 24))(v10, v11, v12);

  return sub_100007920(v14);
}

uint64_t sub_100005C38(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

id sub_100005D40(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

__n128 initializeBufferWithCopyOfBuffer for MoveUpEffectModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AirDropActivityAttributes.ContentState(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AirDropActivityAttributes.ContentState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_100005E90(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100005E9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100005EBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_100005F08()
{
  sub_100007690();
  EnvironmentValues.subscript.getter();
  return v1;
}

void sub_100005F44(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  v6 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 != 1 || (*a1 & 1) != 0)
  {
    return;
  }

  v12 = v9;
  v13 = *(a3 + 40);
  v34[1] = *(a3 + 48);
  v14 = v13();
  v15 = *a3;
  v16 = *(a3 + 8);
  v17 = sub_1000612F0(*a3, v16);
  if (!v17)
  {
    [v14 setModalPresentationStyle:0];
    if (*(a3 + 33))
    {
      goto LABEL_5;
    }

LABEL_11:
    type metadata accessor for AUIRemoteAlertPresentationManager();
    v30 = sub_100078F40();
    v31 = *(a3 + 24);
    aBlock[0] = *(a3 + 16);
    v32 = swift_allocObject();
    v33 = *(a3 + 16);
    *(v32 + 16) = *a3;
    *(v32 + 32) = v33;
    *(v32 + 48) = *(a3 + 32);
    *(v32 + 64) = *(a3 + 48);
    (*(v7 + 104))(v11, enum case for SFRemoteAlertPresentationRequest.PresentationType.unknown(_:), v12);
    sub_100007D14(v15, v16);

    sub_100007C0C(aBlock, &v37);

    dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:onDismiss:)();

    (*(v7 + 8))(v11, v12);
    return;
  }

  v18 = v17;
  [v14 setModalPresentationStyle:4];
  [v14 setTransitioningDelegate:v18];
  swift_unknownObjectRelease();
  if ((*(a3 + 33) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v19 = [objc_allocWithZone(SBSLockScreenService) init];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100007D20(v20, qword_10017F350);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Requesting device unlock if necessary", v23, 2u);
  }

  v24 = *(a3 + 24);
  v37 = *(a3 + 16);
  v25 = swift_allocObject();
  v26 = *(a3 + 16);
  *(v25 + 24) = *a3;
  *(v25 + 16) = v14;
  *(v25 + 40) = v26;
  *(v25 + 56) = *(a3 + 32);
  *(v25 + 72) = *(a3 + 48);
  *(v25 + 80) = v19;
  aBlock[4] = sub_100007DBC;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100005C38;
  aBlock[3] = &unk_10015CF78;
  v27 = _Block_copy(aBlock);
  v28 = v14;
  sub_100007D14(v15, v16);
  sub_100007C0C(&v37, v35);

  v29 = v19;

  [v29 requestPasscodeUnlockUIWithOptions:0 withCompletion:v27];

  _Block_release(v27);
}

id sub_100006374(char a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = type metadata accessor for SFRemoteAlertPresentationRequest.PresentationType();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100007D20(v12, qword_10017F350);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Device was unlocked", v15, 2u);
    }

    type metadata accessor for AUIRemoteAlertPresentationManager();
    v16 = sub_100078F40();
    *&v27 = *a3;
    BYTE8(v27) = *(a3 + 8);
    v17 = *(a3 + 24);
    v29 = *(a3 + 16);
    v18 = *(a3 + 48);
    v19 = swift_allocObject();
    v20 = *(a3 + 16);
    *(v19 + 16) = *a3;
    *(v19 + 32) = v20;
    *(v19 + 48) = *(a3 + 32);
    *(v19 + 64) = *(a3 + 48);
    (*(v8 + 104))(v11, enum case for SFRemoteAlertPresentationRequest.PresentationType.unknown(_:), v7);
    sub_100007BA4(&v27, v26, &qword_100172888, &qword_1001186A0);
    sub_100007C0C(&v29, v26);

    dispatch thunk of SFRemoteAlertPresentationManager.present(_:animated:contentOverlaysStatusBar:supportedInterfaceOrientations:hideViewController:presentationType:onDismiss:)();

    (*(v8 + 8))(v11, v7);
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100007D20(v21, qword_10017F350);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Device was not unlocked", v24, 2u);
    }

    v27 = *(a3 + 16);
    v28 = *(a3 + 32);
    v26[0] = 0;
    sub_1000077C8(&qword_100172880, &unk_1001191E0);
    Binding.wrappedValue.setter();
  }

  return [a4 invalidate];
}

uint64_t sub_100006728()
{
  v1 = v0[3];
  v3 = *(v0 + 32);
  v4 = v0[6];
  v8 = v0[2];
  v2 = v8;
  v9 = v1;
  v10 = v3;
  sub_1000077C8(&qword_100172880, &unk_1001191E0);
  Binding.wrappedValue.getter();
  v7[15] = v7[0];
  v8 = *v0;
  LOBYTE(v9) = *(v0 + 8);
  v11 = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = *v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v1;
  *(v5 + 48) = v3;
  *(v5 + 49) = *(v0 + 33);
  *(v5 + 56) = v0[5];
  *(v5 + 64) = v4;
  sub_100007BA4(&v8, v7, &qword_100172888, &qword_1001186A0);
  sub_100007C0C(&v11, v7);

  sub_1000077C8(&qword_100172890, &qword_1001186A8);
  sub_100007C68();
  View.onChange<A>(of:initial:_:)();
}

BOOL sub_1000068E8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_100006940(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1000069B8(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100006A38@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

void *sub_100006A7C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_100006AC4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_100006AF0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100006BB4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_100006BE4(uint64_t a1)
{
  v2 = sub_100006D30(&qword_100172690, type metadata accessor for SBUISystemApertureElementIdentifier);
  v3 = sub_100006D30(&qword_100172698, type metadata accessor for SBUISystemApertureElementIdentifier);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100006D30(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006D78(uint64_t a1)
{
  v2 = sub_100006D30(&qword_100172860, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_100006D30(&qword_100172868, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100006E34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

uint64_t sub_100006E7C(uint64_t a1)
{
  v2 = sub_100006D30(&qword_100172680, type metadata accessor for CHHapticPatternLibraryKey);
  v3 = sub_100006D30(&qword_100172688, type metadata accessor for CHHapticPatternLibraryKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100006F38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100007658(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100006F84()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_100006FC0()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100007014()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t sub_100007160(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

void sub_100007350(void *a1, uint64_t a2)
{
  if ([a1 activeLayoutMode] == 4)
  {
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v14 = *(a2 + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_screenWidth) * 0.5;
      v18.origin.x = v7;
      v18.origin.y = v9;
      v18.size.width = v11;
      v18.size.height = v13;
      Width = CGRectGetWidth(v18);
      v16 = *(a2 + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureEdgeInset);
      v17 = a2 + OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_systemApertureLayoutModeCustomFrameInScreen;
      *v17 = v14 - Width * 0.5;
      *(v17 + 8) = v16;
      *(v17 + 16) = v11;
      *(v17 + 24) = v13;
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_100007434()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate;
  swift_beginAccess();
  sub_100007BA4(v1 + v2, v13, &unk_100173410, &qword_1001182F8);
  if (v14)
  {
    sub_100007878(v13, v9);
    sub_100007810(v13);
    v3 = v10;
    v4 = v11;
    sub_1000078DC(v9, v10);
    (*(v4 + 8))(v1, v3, v4);
    sub_100007920(v9);
  }

  else
  {
    sub_100007810(v13);
  }

  v5 = type metadata accessor for SystemApertureElementTransition();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay] = 1;
  *&v6[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator] = v1;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v1;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_100007548()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9AirDropUI42SystemApertureElementTransitionCoordinator_delegate;
  swift_beginAccess();
  sub_100007BA4(v1 + v2, v13, &unk_100173410, &qword_1001182F8);
  if (v14)
  {
    sub_100007878(v13, v9);
    sub_100007810(v13);
    v3 = v10;
    v4 = v11;
    sub_1000078DC(v9, v10);
    (*(v4 + 16))(v1, v3, v4);
    sub_100007920(v9);
  }

  else
  {
    sub_100007810(v13);
  }

  v5 = type metadata accessor for SystemApertureElementTransition();
  v6 = objc_allocWithZone(v5);
  v6[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_isPresentingFullScreenOverlay] = 0;
  *&v6[OBJC_IVAR____TtC9AirDropUIP33_545EB857E99384AFBD8884C8F47F06D831SystemApertureElementTransition_transitionCoordinator] = v1;
  v12.receiver = v6;
  v12.super_class = v5;
  v7 = v1;
  return objc_msgSendSuper2(&v12, "init");
}

uint64_t sub_100007658(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_100007690()
{
  result = qword_100172700;
  if (!qword_100172700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172700);
  }

  return result;
}

uint64_t sub_1000076E4()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10000775C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100007774()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000077C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007810(uint64_t a1)
{
  v2 = sub_1000077C8(&unk_100173410, &qword_1001182F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007878(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1000078DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100007920(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

__n128 sub_100007AB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100007ACC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007B14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100007B90(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_100007BA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000077C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100007C68()
{
  result = qword_100172898;
  if (!qword_100172898)
  {
    sub_100007CCC(&qword_100172890, &qword_1001186A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172898);
  }

  return result;
}

uint64_t sub_100007CCC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100007D14(uint64_t a1, char a2)
{
  if (a2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
  }
}

uint64_t sub_100007D20(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100007D58()
{
  sub_100007B90(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100007DCC()
{
  sub_100007B90(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100007E24()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_1000077C8(&qword_100172880, &unk_1001191E0);
  return Binding.wrappedValue.setter();
}

void sub_100007E94(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100007EE0()
{
  sub_100007CCC(&qword_100172890, &qword_1001186A8);
  sub_100007C68();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100007FCC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100007FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100008028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100008084()
{
  v0 = type metadata accessor for Logger();
  sub_1000154C0(v0, qword_100172A30);
  v1 = sub_100007D20(v0, qword_100172A30);
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v2 = sub_100007D20(v0, qword_10017F350);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*(sub_1000077C8(&unk_100175E80, &qword_100118B18) - 8) + 64) + 15;
  v7[9] = swift_task_alloc();

  return _swift_task_switch(sub_100008204, 0, 0);
}

uint64_t sub_100008204()
{
  v1 = v0[9];
  v16 = v0[7];
  v2 = type metadata accessor for UTType();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v16 + 40);
  v15 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_100008364;
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[3];
  v13 = v0[2];

  return v15(v13, v12, v10, v11, v6, v8, v9);
}

uint64_t sub_100008364()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[11] = v0;

  sub_1000159AC(v3, &unk_100175E80, &qword_100118B18);
  if (v0)
  {

    return _swift_task_switch(sub_1000084D8, 0, 0);
  }

  else
  {
    v5 = v4[9];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1000084D8()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_10000853C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100008598(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1000165C4(0, &qword_100172A78, SFAirDropAction_ptr);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_26:
        v17 = v16;
        v18 = static NSObject.== infix(_:_:)();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = static NSObject.== infix(_:_:)();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1000087E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_10000FBA0(&qword_100172A70, &type metadata accessor for URL);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_100008A00(void *a1)
{
  type metadata accessor for SFAirDropUtilities();
  v2 = static SFAirDropUtilities.standardTypeIdentifiers.getter();
  v3 = (v2 + 40);
  v4 = -*(v2 + 16);
  v5 = -1;
  while (1)
  {
    if (v4 + v5 == -1)
    {
LABEL_5:

      return;
    }

    if (++v5 >= *(v2 + 16))
    {
      break;
    }

    v6 = v3 + 2;
    v8 = *(v3 - 1);
    v7 = *v3;

    v9 = String._bridgeToObjectiveC()();

    LODWORD(v7) = [a1 hasItemConformingToTypeIdentifier:v9];

    v3 = v6;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_100008AE4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000078DC(a1, v1);
  v3 = *(v2 + 64);
  v4 = (v3)(v1, v2);
  if (v4 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (i < 1)
    {
      break;
    }

    v6 = (v3)(v1, v2);
    v1 = v6;
    v3 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v6 >> 62)
    {
      v2 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v2 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    for (j = 0; ; ++j)
    {
      if (v2 == j)
      {

        return 1;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(v3 + 16))
        {
          goto LABEL_23;
        }

        v8 = *(v1 + 8 * j + 32);
      }

      v9 = v8;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_100008A00(v8);
      v11 = v10;

      if ((v11 & 1) == 0)
      {

        return 0;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  if (qword_100172120 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100007D20(v12, qword_100172A30);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "no item providers", v15, 2u);
  }

  return 0;
}

void *sub_100008D08(unint64_t a1, uint64_t a2)
{
  v92 = a2;
  v91 = type metadata accessor for SFAirDropSend.ItemPromise();
  v94 = *(v91 - 8);
  v3 = *(v94 + 64);
  __chkstk_darwin(v91);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for SFAirDropSend.ItemMetadata();
  v6 = *(v108 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v108);
  v90 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = v76 - v10;
  v97 = type metadata accessor for UTType();
  v11 = *(v97 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v97);
  v96 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000077C8(&unk_100175E80, &qword_100118B18);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v89 = v76 - v16;
  v88 = type metadata accessor for UUID();
  v93 = *(v88 - 8);
  v17 = *(v93 + 64);
  __chkstk_darwin(v88);
  v87 = v18;
  v86 = v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v105 = v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v106 = v76 - v23;
  v24 = type metadata accessor for SFAirDropUtilities();
  static SFAirDropUtilities.suggestedAirDropThumbnailSize()();
  v26 = v25;
  v28 = v27;
  v85 = v24;
  v109 = static SFAirDropUtilities.standardTypeIdentifiers.getter();
  if (a1 >> 62)
  {
LABEL_48:
    v98 = a1 & 0xFFFFFFFFFFFFFF8;
    v111 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v98 = a1 & 0xFFFFFFFFFFFFFF8;
    v111 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v99 = a1 & 0xC000000000000001;
  while (1)
  {
    v110 = v29;
    if (v111 == v29)
    {
      v84 = 0;
      if (!v111)
      {
        goto LABEL_42;
      }

LABEL_14:
      v33 = 0;
      v81 = v93 + 16;
      v80 = v93 + 32;
      v79 = (v11 + 48);
      v95 = (v11 + 8);
      v78 = (v6 + 16);
      v77 = (v6 + 8);
      v34 = &_swiftEmptyArrayStorage;
      v76[1] = v94 + 32;
      v83 = a1;
      v82 = v5;
      while (1)
      {
        if (v99)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v98 + 16))
          {
            goto LABEL_45;
          }

          v35 = *(a1 + 8 * v33 + 32);
        }

        v104 = v35;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        v101 = v33 + 1;
        v102 = v34;
        LODWORD(v100) = v111 == v29;
        v36 = type metadata accessor for TaskPriority();
        v37 = *(v36 - 8);
        v38 = v106;
        (*(v37 + 56))(v106, 1, 1, v36);
        v39 = v93;
        v40 = v86;
        v41 = v88;
        (*(v93 + 16))(v86, v92, v88);
        v42 = (*(v39 + 80) + 88) & ~*(v39 + 80);
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        *(v43 + 24) = 0;
        v44 = v104;
        v45 = v33;
        v46 = v109;
        *(v43 + 32) = v104;
        *(v43 + 40) = v46;
        v103 = v45;
        *(v43 + 48) = v45;
        *(v43 + 56) = v84;
        *(v43 + 64) = v100;
        *(v43 + 72) = v26;
        *(v43 + 80) = v28;
        v47 = v43 + v42;
        v48 = v37;
        v49 = v40;
        v50 = v105;
        (*(v39 + 32))(v47, v49, v41);
        sub_10001593C(v38, v50);
        LODWORD(v38) = (*(v37 + 48))(v50, 1, v36);
        v51 = v44;

        if (v38 == 1)
        {
          sub_1000159AC(v105, &qword_100172F50, &qword_10011E500);
        }

        else
        {
          v52 = v105;
          TaskPriority.rawValue.getter();
          (*(v48 + 8))(v52, v36);
        }

        v53 = v97;
        v55 = *(v43 + 16);
        v54 = *(v43 + 24);
        swift_unknownObjectRetain();

        if (v55)
        {
          swift_getObjectType();
          v56 = dispatch thunk of Actor.unownedExecutor.getter();
          v58 = v57;
          swift_unknownObjectRelease();
        }

        else
        {
          v56 = 0;
          v58 = 0;
        }

        sub_1000159AC(v106, &qword_100172F50, &qword_10011E500);
        type metadata accessor for SFAirDropSend.Item();
        if (v58 | v56)
        {
          v112 = 0;
          v113 = 0;
          v114 = v56;
          v115 = v58;
        }

        v6 = swift_task_create();
        v59 = [v51 _sanitizedSuggestedName];
        if (v59)
        {
          v60 = v59;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v11 = static SFAirDropUtilities.guessedDataType(for:dataTypesToTry:)();
        v5 = v61;

        v62 = v89;
        UTType.init(_:)();
        v63 = (*v79)(v62, 1, v53);
        v104 = v51;
        if (v63 == 1)
        {
          sub_1000159AC(v62, &unk_100175E80, &qword_100118B18);
        }

        else
        {
          v64 = v96;
          static UTType.directory.getter();
          v100 = v11;
          v65 = v62;
          UTType.conforms(to:)();
          v66 = *v95;
          (*v95)(v64, v53);
          v11 = v100;
          v66(v65, v53);
        }

        v34 = v102;
        v67 = String._bridgeToObjectiveC()();
        v68 = [objc_opt_self() _typeWithIdentifier:v67 allowUndeclared:1];

        if (v68)
        {
          v69 = v96;
          static UTType.plainText.getter();
          isa = UTType._bridgeToObjectiveC()().super.isa;
          (*v95)(v69, v97);
          [v68 conformsToType:isa];
        }

        a1 = v83;
        v71 = v107;
        SFAirDropSend.ItemMetadata.init(fileName:fileType:fileSubType:fileSize:fileBOMPath:fileIsDirectory:description:previewImageData:wasString:)();
        (*v78)(v90, v71, v108);

        v72 = v82;
        SFAirDropSend.ItemPromise.init(task:metadata:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1000A5664(0, v34[2] + 1, 1, v34);
        }

        v74 = v34[2];
        v73 = v34[3];
        if (v74 >= v73 >> 1)
        {
          v34 = sub_1000A5664(v73 > 1, v74 + 1, 1, v34);
        }

        (*v77)(v107, v108);
        v34[2] = v74 + 1;
        (*(v94 + 32))(v34 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v74, v72, v91);
        v33 = v103 + 1;
        v29 = v110;
        if (v101 == v111)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v99)
    {
      v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v29 >= *(v98 + 16))
      {
        goto LABEL_46;
      }

      v30 = *(a1 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = [objc_opt_self() hasiWorkSendCopyRepresentationForItemProvider:v30];

    if ((v32 & 1) == 0)
    {
      break;
    }

    v29 = v110 + 1;
    if (__OFADD__(v110, 1))
    {
      goto LABEL_47;
    }
  }

  v29 = v110;
  v84 = v110;
  if (v111)
  {
    goto LABEL_14;
  }

LABEL_42:
  v34 = &_swiftEmptyArrayStorage;
LABEL_43:

  return v34;
}

uint64_t sub_100009868(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 200) = v26;
  *(v10 + 184) = a2;
  *(v10 + 192) = a3;
  *(v10 + 424) = a10;
  *(v10 + 168) = a8;
  *(v10 + 176) = a9;
  *(v10 + 152) = a6;
  *(v10 + 160) = a7;
  *(v10 + 144) = a1;
  v11 = type metadata accessor for SFAirDropUtilities.FileLoadResult();
  *(v10 + 208) = v11;
  v12 = *(v11 - 8);
  *(v10 + 216) = v12;
  v13 = *(v12 + 64) + 15;
  *(v10 + 224) = swift_task_alloc();
  v14 = type metadata accessor for SFSecurityScopedURL();
  *(v10 + 232) = v14;
  v15 = *(v14 - 8);
  *(v10 + 240) = v15;
  v16 = *(v15 + 64) + 15;
  *(v10 + 248) = swift_task_alloc();
  *(v10 + 256) = swift_task_alloc();
  *(v10 + 264) = swift_task_alloc();
  v17 = *(*(sub_1000077C8(&qword_100172EE0, &qword_10011B220) - 8) + 64) + 15;
  *(v10 + 272) = swift_task_alloc();
  v18 = type metadata accessor for SFAirDropSend.ItemMetadata();
  *(v10 + 280) = v18;
  v19 = *(v18 - 8);
  *(v10 + 288) = v19;
  v20 = *(v19 + 64) + 15;
  *(v10 + 296) = swift_task_alloc();
  *(v10 + 304) = swift_task_alloc();
  *(v10 + 312) = swift_task_alloc();
  v21 = type metadata accessor for URL();
  *(v10 + 320) = v21;
  v22 = *(v21 - 8);
  *(v10 + 328) = v22;
  v23 = *(v22 + 64) + 15;
  *(v10 + 336) = swift_task_alloc();
  *(v10 + 344) = swift_task_alloc();
  *(v10 + 352) = swift_task_alloc();
  *(v10 + 360) = swift_task_alloc();
  *(v10 + 368) = swift_task_alloc();

  return _swift_task_switch(sub_100009AF0, 0, 0);
}

uint64_t sub_100009AF0()
{
  v1 = *(v0 + 152);
  v2 = objc_opt_self();
  if ([v2 hasiWorkSendCopyRepresentationForItemProvider:v1])
  {
    v3 = *(v0 + 360);
    v4 = *(v0 + 152);
    *(v0 + 16) = v0;
    *(v0 + 56) = v3;
    *(v0 + 24) = sub_100009D70;
    v5 = swift_continuation_init();
    *(v0 + 136) = sub_1000077C8(&qword_100172F58, &qword_100118BF0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_10000AC70;
    *(v0 + 104) = &unk_10015D260;
    *(v0 + 112) = v5;
    [v2 loadiWorkCopyRepresentationURLForItemProvider:v4 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    v6 = *(v0 + 424);
    v8 = *(v0 + 168);
    v7 = *(v0 + 176);
    v9 = [*(v0 + 152) _sanitizedSuggestedName];
    if (v9)
    {
      v10 = v9;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    *(v0 + 384) = v12;
    v13 = *(v0 + 200);
    *(v0 + 392) = type metadata accessor for SFAirDropUtilities();
    UUID.uuidString.getter();
    *(v0 + 400) = v14;
    v15 = async function pointer to static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:)[1];
    v16 = swift_task_alloc();
    *(v0 + 408) = v16;
    *v16 = v0;
    v16[1] = sub_10000A38C;
    v17 = *(v0 + 224);
    v18.n128_u64[0] = *(v0 + 184);
    v19.n128_u64[0] = *(v0 + 192);
    v20 = *(v0 + 160);
    v21 = *(v0 + 152);
    v24 = *(v0 + 168);

    return static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:)(v17, v21, v20, 0, 0, 0, 0, (v8 == v7) & ~v6, v18, v19);
  }
}

uint64_t sub_100009D70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  if (v2)
  {
    v3 = sub_10000A7B4;
  }

  else
  {
    v3 = sub_100009E80;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100009E80()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[34];
  (*(v2 + 32))(v0[46], v0[45], v1);
  URL.baseURL.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000159AC(v0[34], &qword_100172EE0, &qword_10011B220);
  }

  else
  {
    v4 = v0[40];
    v5 = v0[41];
    v6 = v0[34];
    URL.lastPathComponent.getter();
    (*(v5 + 8))(v6, v4);
  }

  v7 = v0[46];
  v8 = v0[44];
  v9 = v0[40];
  v10 = v0[41];
  v11 = v0[39];
  v12 = v0[33];
  URL.hasDirectoryPath.getter();
  SFAirDropSend.ItemMetadata.init(fileName:fileType:fileSubType:fileSize:fileBOMPath:fileIsDirectory:description:previewImageData:wasString:)();
  (*(v10 + 16))(v8, v7, v9);
  SFSecurityScopedURL.init(_:readWrite:)();
  v13 = v0[40];
  v14 = v0[41];
  v15 = v0[39];
  v16 = v0[38];
  v37 = v0[46];
  v17 = v0[35];
  v18 = v0[36];
  v20 = v0[29];
  v19 = v0[30];
  v33 = v0[18];
  v35 = v0[33];
  (*(v19 + 16))(v0[32]);
  (*(v18 + 16))(v16, v15, v17);
  SFAirDropSend.Item.init(url:metadata:)();
  (*(v19 + 8))(v35, v20);
  (*(v18 + 8))(v15, v17);
  (*(v14 + 8))(v37, v13);
  v22 = v0[45];
  v21 = v0[46];
  v24 = v0[43];
  v23 = v0[44];
  v25 = v0[42];
  v27 = v0[38];
  v26 = v0[39];
  v28 = v0[37];
  v30 = v0[33];
  v29 = v0[34];
  v34 = v0[32];
  v36 = v0[31];
  v38 = v0[28];

  v31 = v0[1];

  return v31();
}

uint64_t sub_10000A38C()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v8 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = sub_10000AA0C;
  }

  else
  {
    v5 = *(v2 + 400);
    v6 = *(v2 + 384);

    v4 = sub_10000A4B4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10000A4B4()
{
  v1 = v0[49];
  v2 = v0[43];
  v3 = v0[41];
  v25 = v0[40];
  v28 = v0[42];
  v29 = v0[38];
  v30 = v0[36];
  v32 = v0[37];
  v33 = v0[35];
  v4 = v0[31];
  v38 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v34 = v0[27];
  v36 = v0[26];
  v31 = v0[18];
  v8 = SFAirDropUtilities.FileLoadResult.previewImage.getter();
  v9 = static SFAirDropUtilities.imageData(for:)();
  v26 = v10;
  v27 = v9;

  SFAirDropUtilities.FileLoadResult.url.getter();
  SFSecurityScopedURL.url.getter();
  v11 = *(v5 + 8);
  v11(v38, v6);
  URL.lastPathComponent.getter();
  v12 = *(v3 + 8);
  v12(v2, v25);
  SFAirDropUtilities.FileLoadResult.dataType.getter();
  SFAirDropUtilities.FileLoadResult.url.getter();
  SFSecurityScopedURL.url.getter();
  v11(v4, v6);
  URL.hasDirectoryPath.getter();
  v12(v28, v25);
  sub_100015A0C(v27, v26);
  SFAirDropUtilities.FileLoadResult.wasString.getter();
  SFAirDropSend.ItemMetadata.init(fileName:fileType:fileSubType:fileSize:fileBOMPath:fileIsDirectory:description:previewImageData:wasString:)();
  SFAirDropUtilities.FileLoadResult.url.getter();
  (*(v30 + 16))(v32, v29, v33);
  SFAirDropSend.Item.init(url:metadata:)();
  sub_100015660(v27, v26);
  (*(v30 + 8))(v29, v33);
  (*(v34 + 8))(v7, v36);
  v14 = v0[45];
  v13 = v0[46];
  v16 = v0[43];
  v15 = v0[44];
  v17 = v0[42];
  v19 = v0[38];
  v18 = v0[39];
  v20 = v0[37];
  v22 = v0[33];
  v21 = v0[34];
  v35 = v0[32];
  v37 = v0[31];
  v39 = v0[28];

  v23 = v0[1];

  return v23();
}

uint64_t sub_10000A7B4()
{
  v1 = v0[47];
  swift_willThrow();
  v2 = v0[47];
  if (qword_100172120 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100007D20(v3, qword_100172A30);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to load item %ld: %@", v7, 0x16u);
    sub_1000159AC(v8, &qword_100172EB0, &qword_100119410);
  }

  v10 = v4;
  v12 = v0[45];
  v11 = v0[46];
  v14 = v0[43];
  v13 = v0[44];
  v15 = v0[42];
  v16 = v0[38];
  v17 = v0[39];
  v20 = v0[37];
  v21 = v0[34];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[31];
  v25 = v0[28];

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_10000AA0C()
{
  v1 = v0[50];
  v2 = v0[48];

  v3 = v0[52];
  if (qword_100172120 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100007D20(v4, qword_100172A30);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[21];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to load item %ld: %@", v8, 0x16u);
    sub_1000159AC(v9, &qword_100172EB0, &qword_100119410);
  }

  v11 = v5;
  v13 = v0[45];
  v12 = v0[46];
  v15 = v0[43];
  v14 = v0[44];
  v16 = v0[42];
  v17 = v0[38];
  v18 = v0[39];
  v21 = v0[37];
  v22 = v0[34];
  v23 = v0[33];
  v24 = v0[32];
  v25 = v0[31];
  v26 = v0[28];

  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_10000AC70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *sub_1000078DC((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v11 = swift_allocError();
    *v12 = a3;
    v13 = a3;

    return _swift_continuation_throwingResumeWithError(v10, v11);
  }

  else
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v6 + 32))(*(*(v10 + 64) + 40), v9, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10000ADE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[5] = a5;
  v6[6] = v5;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a1;
  return _swift_task_switch(sub_10000AE10, 0, 0);
}

uint64_t sub_10000AE10()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  sub_1000078DC(v1, v2);
  v4 = (*(v3 + 64))(v2, v3);
  v0[7] = v4;
  v5 = v1[3];
  v6 = v1[4];
  sub_1000078DC(v1, v5);
  v7 = (*(v6 + 88))(v5, v6);
  v0[8] = v7;
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_10000AF44;
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[3];
  v12 = v0[4];

  return sub_10000FDA0(v4, v11, v12, v9, v7);
}

uint64_t sub_10000AF44()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10000B088, 0, 0);
  }

  else
  {
    v4 = v3[7];
    v5 = v3[8];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_10000B088()
{
  v1 = v0[7];
  v2 = v0[8];

  v3 = v0[1];
  v4 = v0[10];

  return v3();
}

Swift::Int sub_10000B110()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10000B184()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_10000B1D8(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = sub_1000077C8(&qword_100172EB8, &unk_100118B50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - v6;
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType._groupActivity.getter();
  UTType.identifier.getter();
  (*(v9 + 8))(v12, v8);
  v13 = String._bridgeToObjectiveC()();

  (*(v4 + 16))(v7, a1, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v7, v3);
  aBlock[4] = sub_100015374;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000B90C;
  aBlock[3] = &unk_10015D1C0;
  v16 = _Block_copy(aBlock);

  [v18 loadItemForTypeIdentifier:v13 options:0 completionHandler:v16];
  _Block_release(v16);
}

void sub_10000B458(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    swift_unknownObjectRetain_n();
    sub_1000077C8(&qword_100172EC8, &unk_100118B60);
    if (swift_dynamicCast())
    {
      sub_1000165C4(0, &unk_100172ED0, NSKeyedUnarchiver_ptr);
      sub_1000165C4(0, &qword_100172EA8, TUConversationActivity_ptr);
      v11 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v12 = qword_100172218;
      v13 = v11;
      v14 = v13;
      if (v12 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_100007D20(v15, qword_10017F350);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        *(v18 + 4) = v14;
        *v19 = v11;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v16, v17, "Unarchiving activity from item provider data: %@", v18, 0xCu);
        sub_1000159AC(v19, &qword_100172EB0, &qword_100119410);
      }

      sub_10001546C(v24, v25);

      if (!v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        swift_unknownObjectRetain();
      }

      v2 = qword_100172218;
      v3 = v11;
      if (v2 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100007D20(v4, qword_10017F350);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v3;
        *v8 = v11;
        v9 = v3;
        _os_log_impl(&_mh_execute_header, v5, v6, "Received activity object from item provider: %@", v7, 0xCu);
        sub_1000159AC(v8, &qword_100172EB0, &qword_100119410);
      }

      if (!v11)
      {
        goto LABEL_23;
      }
    }

    v21 = [v11 sanitizedCopy];

    if (v21)
    {
      v22 = v21;
      sub_1000077C8(&qword_100172EB8, &unk_100118B50);
      CheckedContinuation.resume(returning:)();

LABEL_24:
      swift_unknownObjectRelease();

      return;
    }

LABEL_23:
    sub_100015418();
    swift_allocError();
    *v23 = 0;
    sub_1000077C8(&qword_100172EB8, &unk_100118B50);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_24;
  }

  if (!a2)
  {
    sub_100015418();
    swift_allocError();
    *v10 = 1;
  }

  swift_errorRetain();
  sub_1000077C8(&qword_100172EB8, &unk_100118B50);
  CheckedContinuation.resume(throwing:)();
}

uint64_t sub_10000B90C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

BOOL sub_10000B98C(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  sub_1000078DC(a1, v2);
  (*(v3 + 56))(v16, v2, v3);
  v4 = v17;
  v18 = v17;

  sub_10001528C(v16);
  if (*(v4 + 16) && (v5 = *(v4 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v6 = Hasher._finalize()(), v7 = -1 << *(v4 + 32), v8 = v6 & ~v7, ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8) ? 0x8000000100122930 : 0x8000000100122900;
      if ((*(*(v4 + 48) + v8) & 1) == 0 && 0x8000000100122900 == v10)
      {
        break;
      }

      *(*(v4 + 48) + v8);
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v11)
      {
        goto LABEL_13;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_13:
    sub_1000159AC(&v18, &unk_100175EA0, &qword_100120A00);
    v13 = a1[3];
    v14 = a1[4];
    sub_1000078DC(a1, v13);
    return !sub_10000BB78(v13, v14);
  }

  else
  {
LABEL_11:
    sub_1000159AC(&v18, &unk_100175EA0, &qword_100120A00);
    return 0;
  }
}

uint64_t sub_10000BC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_10000BCF0;

  return sub_1000123FC(a1, a3, a4);
}

uint64_t sub_10000BCF0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000BDE4()
{
  v0 = sub_1000077C8(&unk_100175E80, &qword_100118B18);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for UTType();
  sub_1000154C0(v4, qword_10017F180);
  sub_100007D20(v4, qword_10017F180);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t sub_10000BEE0()
{
  v0 = sub_1000077C8(&unk_100175E80, &qword_100118B18);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  v4 = type metadata accessor for UTType();
  sub_1000154C0(v4, qword_10017F198);
  sub_100007D20(v4, qword_10017F198);
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  return UTType.init(exportedAs:conformingTo:)();
}

BOOL sub_10000C024(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = (*(a2 + 64))();
  v7 = v6;
  v8 = v6 & 0xFFFFFFFFFFFFFF8;
  if (v6 >> 62)
  {
LABEL_17:
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  do
  {
    v11 = v10;
    if (v9 == v10)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v10 >= *(v8 + 16))
      {
        goto LABEL_16;
      }

      v12 = *(v7 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if (*a3 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for UTType();
    sub_100007D20(v14, a4);
    UTType.identifier.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v13 hasRepresentationConformingToTypeIdentifier:v15 fileOptions:0];

    v10 = v11 + 1;
  }

  while (!v16);

  return v9 != v11;
}

uint64_t sub_10000C190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v5 = *(a2 - 8);
  v4[28] = v5;
  v6 = *(v5 + 64) + 15;
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_10000C274, 0, 0);
}

uint64_t sub_10000C274()
{
  v44 = v0;
  v1 = v0[27];
  if (sub_10000C024(v0[25], v0[26], &qword_100172128, qword_10017F180))
  {
    if (qword_100172128 != -1)
    {
      swift_once();
    }

    v2 = qword_10017F180;
  }

  else
  {
    v3 = v0[27];
    if (!sub_10000C024(v0[25], v0[26], &qword_100172130, qword_10017F198))
    {
LABEL_27:
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v21 = v0[28];
      v20 = v0[29];
      v22 = v0[27];
      v23 = v0[25];
      v24 = type metadata accessor for Logger();
      sub_100007D20(v24, qword_10017F350);
      (*(v21 + 16))(v20, v22, v23);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      v27 = os_log_type_enabled(v25, v26);
      v29 = v0[28];
      v28 = v0[29];
      v30 = v0[25];
      if (v27)
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v43 = v32;
        *v31 = 136315138;
        v33 = sub_10001F43C(v28, v30);
        v35 = v34;
        (*(v29 + 8))(v28, v30);
        v36 = sub_10003E81C(v33, v35, &v43);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v25, v26, "Could not find a nearby SharePlay URL on content: %s", v31, 0xCu);
        sub_100007920(v32);
      }

      else
      {

        (*(v29 + 8))(v28, v30);
      }

      v37 = v0[24];
      v38 = type metadata accessor for URL();
      (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
      v39 = v0[29];

      v40 = v0[1];

      return v40();
    }

    if (qword_100172130 != -1)
    {
      swift_once();
    }

    v2 = qword_10017F198;
  }

  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = type metadata accessor for UTType();
  sub_100007D20(v7, v2);
  v42 = UTType.identifier.getter();
  v0[30] = v8;
  v0[31] = v42;
  v9 = (*(v5 + 64))(v6, v5);
  v10 = v9;
  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_11;
    }

    goto LABEL_26;
  }

LABEL_25:
  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
LABEL_26:

    goto LABEL_27;
  }

LABEL_11:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v0[32] = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v16 = String._bridgeToObjectiveC()();
    v17 = [v14 hasRepresentationConformingToTypeIdentifier:v16 fileOptions:0];

    if (v17)
    {
      break;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_26;
    }
  }

  v18 = String._bridgeToObjectiveC()();
  v0[33] = v18;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_10000C810;
  v19 = swift_continuation_init();
  v0[17] = sub_1000077C8(&unk_100172F60, &qword_100118BF8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10000CE5C;
  v0[13] = &unk_10015D288;
  v0[14] = v19;
  [v14 loadItemForTypeIdentifier:v18 options:0 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10000C810()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 272) = v3;
  if (v3)
  {
    v4 = *(v1 + 240);

    v5 = sub_10000CDA4;
  }

  else
  {
    v5 = sub_10000C954;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10000C954()
{
  v34 = v0;
  v1 = *(v0 + 160);

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 240);
    swift_unknownObjectRetain();

LABEL_3:
    v5 = *(v0 + 256);
    v6 = *(v0 + 192);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    swift_unknownObjectRelease();

    v7 = type metadata accessor for URL();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
    goto LABEL_14;
  }

  *(v0 + 168) = v1;
  swift_unknownObjectRetain();
  sub_1000077C8(&qword_100172EC8, &unk_100118B60);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 240);
    v8 = *(v0 + 248);
    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = objc_opt_self();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v14 = String._bridgeToObjectiveC()();

    *(v0 + 184) = 0;
    v3 = [v12 objectWithItemProviderData:isa typeIdentifier:v14 error:v0 + 184];

    v15 = *(v0 + 184);
    if (v3)
    {
      sub_10001546C(v11, v10);
      goto LABEL_3;
    }

    v32 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_1000165C4(0, &unk_100172ED0, NSKeyedUnarchiver_ptr);
    sub_1000165C4(0, &qword_100175E20, NSURL_ptr);
    v3 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    sub_10001546C(v11, v10);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *(v0 + 240);
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100007D20(v17, qword_10017F350);
  swift_unknownObjectRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 256);
  if (v20)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    *(v0 + 176) = v1;
    swift_unknownObjectRetain();
    v24 = String.init<A>(reflecting:)();
    v26 = sub_10003E81C(v24, v25, &v33);

    *(v22 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Unable to coerce nearby SharePlay item to an NSURL: %s", v22, 0xCu);
    sub_100007920(v23);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v27 = *(v0 + 192);
  v28 = type metadata accessor for URL();
  (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
LABEL_14:
  v29 = *(v0 + 232);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_10000CDA4()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[29];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[34];

  return v5();
}

uint64_t sub_10000CE5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1000078DC((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1000077C8(&qword_100175E10, &unk_100118BB0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  swift_unknownObjectRetain();

  return swift_continuation_throwingResume();
}

BOOL sub_10000CF38(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  sub_1000078DC(a1, v1);
  return sub_10000BB78(v1, v2);
}

uint64_t sub_10000CF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1000167E4;

  return sub_1000138B0(a1, a3, a4, a5);
}

id sub_10000D048(uint64_t a1)
{
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v2 = static NSUserDefaults.airdrop.getter();
  v3 = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 applicationIsInstalled:v6];

  if (!v7)
  {
    return 0;
  }

  sub_100007878(a1, v11);
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
  result = swift_dynamicCast();
  if (result)
  {
    v8 = [v10 content];
    v9 = [v8 hasPossibleCollaborationRepresentation];

    return v9;
  }

  return result;
}

uint64_t sub_10000D1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for UUID();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v8 = *(v7 + 64) + 15;
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_10000D280, 0, 0);
}

uint64_t sub_10000D280()
{
  v33 = v0;
  sub_1000165C4(0, &qword_100172F70, NSUserDefaults_ptr);
  v1 = static NSUserDefaults.airdrop.getter();
  v2 = SFAirDropUserDefaults.boopToCollaborateEnabled.getter();

  if (v2)
  {
    v3 = v0[10];
    v4 = SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter();
    v0[16] = v4;
    v0[17] = v5;
    if (v5)
    {
      v6 = v4;
      v7 = v5;
      v8 = v0[12];
      started = type metadata accessor for StartCollaborationAction(0);
      v0[18] = started;
      v10 = *(v8 + *(started + 20));
      v11 = swift_task_alloc();
      v0[19] = v11;
      *v11 = v0;
      v11[1] = sub_10000D5A0;

      return sub_10006FBD0(v6, v7);
    }

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v14 = v0[14];
    v13 = v0[15];
    v15 = v0[13];
    v16 = v0[11];
    v17 = type metadata accessor for Logger();
    sub_100007D20(v17, qword_10017F350);
    (*(v14 + 16))(v13, v16, v15);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    v20 = os_log_type_enabled(v18, v19);
    v22 = v0[14];
    v21 = v0[15];
    v23 = v0[13];
    if (v20)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32 = v25;
      *v24 = 136315138;
      sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v27;
      (*(v22 + 8))(v21, v23);
      v29 = sub_10003E81C(v26, v28, &v32);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v18, v19, "Cannot start Collaboration on nearby sharing interaction with ID as it's an unknown contact: %s", v24, 0xCu);
      sub_100007920(v25);
    }

    else
    {

      (*(v22 + 8))(v21, v23);
    }
  }

  v30 = v0[15];

  v31 = v0[1];

  return v31();
}

uint64_t sub_10000D5A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 152);
  v6 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = a2;

  return _swift_task_switch(sub_10000D6A0, 0, 0);
}

uint64_t sub_10000D6A0()
{
  v31 = v0;
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[17];

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100007D20(v3, qword_10017F350);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[20];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v30 = v8;
      *v7 = 136315138;

      v9 = sub_10003E81C(v6, v1, &v30);

      *(v7 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "starting Collaboration with iMessage-able handle: %s", v7, 0xCu);
      sub_100007920(v8);
    }

    sub_100007878(v0[8], (v0 + 2));
    sub_1000077C8(&qword_100172E68, &qword_100118B30);
    sub_1000165C4(0, &unk_100175EB0, &off_10015A078);
    if (swift_dynamicCast())
    {
      v10 = v0[20];
      v11 = v0[9];
      v12 = v0[7];
      v13 = *(v0[12] + *(v0[18] + 24));
      v14 = [v12 content];
      sub_1000077C8(&qword_100172A80, &unk_1001187D0);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1001186F0;
      *(v15 + 32) = v10;
      *(v15 + 40) = v1;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v13 initiateBackgroundCollaborationForContent:v14 shareOptions:v11 recipients:isa faceTimeConversationUUID:0];

      goto LABEL_15;
    }
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v17 = v0[17];
    v18 = type metadata accessor for Logger();
    sub_100007D20(v18, qword_10017F350);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[17];
    if (v21)
    {
      v23 = v0[16];
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      v26 = sub_10003E81C(v23, v22, &v30);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Cannot start Collaboration on nearby sharing interaction with ID as the contact with identifier does not contain a iMessage-able handle: %s", v24, 0xCu);
      sub_100007920(v25);

      goto LABEL_15;
    }
  }

LABEL_15:
  v27 = v0[15];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10000DAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000167E4;

  return sub_10000D1B8(a1, a2, a3, a4);
}

uint64_t sub_10000DB70@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000DBD8(uint64_t a1)
{
  sub_100007878(a1, v6);
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = result;

    return v2;
  }

  return result;
}

uint64_t sub_10000DC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000167E4;

  return sub_100015AA8(a1, a3, a4);
}

uint64_t sub_10000DD2C()
{
  v1 = type metadata accessor for SFProximityHandoff.Content.Action();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ProximityHandoffContentAction(0);
  (*(v2 + 16))(v5, v0 + *(v6 + 20), v1);
  v7 = (*(v2 + 88))(v5, v1);
  if (v7 == enum case for SFProximityHandoff.Content.Action.open(_:) || v7 == enum case for SFProximityHandoff.Content.Action.send(_:) || v7 == enum case for SFProximityHandoff.Content.Action.share(_:) || v7 == enum case for SFProximityHandoff.Content.Action.transfer(_:))
  {
    return LocalizedStringResource.init(stringLiteral:)();
  }

  LocalizedStringResource.init(stringLiteral:)();
  return (*(v2 + 8))(v5, v1);
}

BOOL sub_10000DEF4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000077C8(&qword_100172E60, &qword_100118B28);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20[-v6 - 8];
  v8 = type metadata accessor for ProximityHandoffInteractionContent(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100007878(a1, v20);
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v7, 0, 1, v8);
    sub_100015174(v7, v12);
    v15 = SFProximityHandoff.Content.supportedActions.getter();
    v16 = type metadata accessor for ProximityHandoffContentAction(0);
    v17 = sub_10000E0D4(v2 + *(v16 + 20), v15);

    sub_1000151D8(v12);
  }

  else
  {
    v14(v7, 1, 1, v8);
    sub_1000159AC(v7, &qword_100172E60, &qword_100118B28);
    return 0;
  }

  return v17;
}

BOOL sub_10000E0D4(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for SFProximityHandoff.Content.Action() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_10000FBA0(&unk_100172E70, &type metadata accessor for SFProximityHandoff.Content.Action);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

BOOL sub_10000E1E0(uint64_t a1)
{
  v3 = type metadata accessor for SFProximityHandoff.Content.Action();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1 + *(a1 + 20), v3);
  v8 = (*(v4 + 88))(v7, v3);
  v9 = enum case for SFProximityHandoff.Content.Action.open(_:);
  if (v8 != enum case for SFProximityHandoff.Content.Action.open(_:) && v8 != enum case for SFProximityHandoff.Content.Action.send(_:) && v8 != enum case for SFProximityHandoff.Content.Action.share(_:) && v8 != enum case for SFProximityHandoff.Content.Action.transfer(_:))
  {
    v12 = v8;
    (*(v4 + 8))(v7, v3);
    v8 = v12;
  }

  return v8 == v9;
}

uint64_t sub_10000E344(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000167E4;

  return sub_100014B40(a1);
}

char *sub_10000E414(char *a1, int64_t a2, char a3)
{
  result = sub_10000E534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E434(char *a1, int64_t a2, char a3)
{
  result = sub_10000E638(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000E454(size_t a1, int64_t a2, char a3)
{
  result = sub_10000E72C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E474(char *a1, int64_t a2, char a3)
{
  result = sub_10000E91C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000E494(void *a1, int64_t a2, char a3)
{
  result = sub_10000EA28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10000E4B4(void *a1, int64_t a2, char a3)
{
  result = sub_10000EB5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E4D4(char *a1, int64_t a2, char a3)
{
  result = sub_10000ECA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E4F4(char *a1, int64_t a2, char a3)
{
  result = sub_10000EDB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10000E514(size_t a1, int64_t a2, char a3)
{
  result = sub_10000EED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E534(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A48, &qword_1001187A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_10000E638(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A50, &qword_1001187B0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_10000E72C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000077C8(&qword_100172F88, &qword_100118CD8);
  v10 = *(sub_1000077C8(&unk_100172F90, &qword_100118CE0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000077C8(&unk_100172F90, &qword_100118CE0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_10000E91C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A80, &unk_1001187D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000EA28(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A98, &qword_1001187E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000077C8(&qword_100172AA0, &unk_1001187F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000EB5C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&unk_100172A60, &unk_1001187C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000077C8(&unk_1001778F0, &qword_10011E000);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000ECA4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A90, &qword_1001187E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000EDB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000077C8(&qword_100172A88, &qword_10011E4C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10000EED0(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000077C8(&qword_100172A58, &qword_1001187B8);
  v10 = *(type metadata accessor for UUID() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for UUID() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10000F0A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 16);
  v5 = &_swiftEmptyArrayStorage;
  if (v4)
  {
    v21 = &_swiftEmptyArrayStorage;
    sub_10000E414(0, v4, 0);
    v5 = &_swiftEmptyArrayStorage;
    v6 = v3 + 32;
    do
    {
      sub_100007878(v6, v19);
      sub_1000078DC(v19, v20);
      DynamicType = swift_getDynamicType();
      sub_100007920(v19);
      v21 = v5;
      v9 = v5[2];
      v8 = v5[3];
      if (v9 >= v8 >> 1)
      {
        sub_10000E414((v8 > 1), v9 + 1, 1);
        v5 = v21;
      }

      v5[2] = v9 + 1;
      v5[v9 + 4] = DynamicType;
      v6 += 40;
      --v4;
    }

    while (v4);
  }

  v10 = *(a2 + 40);
  v11 = *(v10 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (v11)
  {
    v21 = &_swiftEmptyArrayStorage;
    sub_10000E414(0, v11, 0);
    v12 = v21;
    v13 = v10 + 32;
    do
    {
      sub_100007878(v13, v19);
      sub_1000078DC(v19, v20);
      v14 = swift_getDynamicType();
      sub_100007920(v19);
      v21 = v12;
      v16 = v12[2];
      v15 = v12[3];
      if (v16 >= v15 >> 1)
      {
        sub_10000E414((v15 > 1), v16 + 1, 1);
        v12 = v21;
      }

      v12[2] = v16 + 1;
      v12[v16 + 4] = v14;
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  v17 = sub_10000853C(v5, v12);

  return v17 & 1;
}

uint64_t sub_10000F340(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  result = type metadata accessor for LocalizedStringResource();
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for ContactDetailsProvider();
    if (v9 <= 0x3F)
    {
      result = sub_1000165C4(319, a4, a5);
      if (v10 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10000F408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for SendOverAirDropAction(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10000F52C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for SendOverAirDropAction(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10000F6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10000F78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10000F85C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for LocalizedStringResource();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10000F954(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SFProximityHandoff.Content.Action();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000FA14(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SFProximityHandoff.Content.Action();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10000FAD8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000FB48(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E28, type metadata accessor for StartCollaborationAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FBA0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000FBE8(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E30, type metadata accessor for SendOverAirDropAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FC40(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E38, type metadata accessor for AddToActiveSharePlaySessionAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FC98(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E40, type metadata accessor for StartNearbySharePlayAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FCF0(uint64_t a1)
{
  result = sub_10000FBA0(&qword_100172E48, type metadata accessor for StartSharePlayAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FD48(uint64_t a1)
{
  result = sub_10000FBA0(&unk_100172E50, type metadata accessor for ProximityHandoffContentAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10000FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v7 = type metadata accessor for SFAirDropSend.Failure();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDropSend.Transfer.State();
  v6[12] = v10;
  v11 = *(v10 - 8);
  v6[13] = v11;
  v12 = *(v11 + 64) + 15;
  v6[14] = swift_task_alloc();
  v13 = type metadata accessor for SFAirDropSend.Transfer();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v16 = *(*(sub_1000077C8(&qword_100172EF0, &qword_100118B90) - 8) + 64) + 15;
  v6[19] = swift_task_alloc();
  v17 = sub_1000077C8(&qword_100172EF8, &qword_100118B98);
  v6[20] = v17;
  v18 = *(v17 - 8);
  v6[21] = v18;
  v19 = *(v18 + 64) + 15;
  v6[22] = swift_task_alloc();
  v20 = sub_1000077C8(&qword_100172F00, &unk_100118BA0);
  v6[23] = v20;
  v21 = *(v20 - 8);
  v6[24] = v21;
  v22 = *(v21 + 64) + 15;
  v6[25] = swift_task_alloc();
  v23 = *(*(sub_1000077C8(&qword_100172F08, &unk_10011E530) - 8) + 64) + 15;
  v6[26] = swift_task_alloc();
  v24 = type metadata accessor for SFAirDropSend.ItemMetadata();
  v6[27] = v24;
  v25 = *(v24 - 8);
  v6[28] = v25;
  v26 = *(v25 + 64) + 15;
  v6[29] = swift_task_alloc();
  v27 = type metadata accessor for SFSecurityScopedURL();
  v6[30] = v27;
  v28 = *(v27 - 8);
  v6[31] = v28;
  v29 = *(v28 + 64) + 15;
  v6[32] = swift_task_alloc();
  v30 = type metadata accessor for URL();
  v6[33] = v30;
  v31 = *(v30 - 8);
  v6[34] = v31;
  v32 = *(v31 + 64) + 15;
  v6[35] = swift_task_alloc();
  v33 = type metadata accessor for SFAirDropSend.Item();
  v6[36] = v33;
  v34 = *(v33 - 8);
  v6[37] = v34;
  v35 = *(v34 + 64) + 15;
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v36 = type metadata accessor for UUID();
  v6[40] = v36;
  v37 = *(v36 - 8);
  v6[41] = v37;
  v38 = *(v37 + 64) + 15;
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();

  return _swift_task_switch(sub_10001028C, 0, 0);
}

uint64_t sub_10001028C()
{
  v26 = v0;
  if (qword_100172120 != -1)
  {
    swift_once();
  }

  v1 = v0[47];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[5];
  v5 = type metadata accessor for Logger();
  v0[48] = sub_100007D20(v5, qword_100172A30);
  v6 = *(v3 + 16);
  v0[49] = v6;
  v0[50] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[47];
  v11 = v0[40];
  v12 = v0[41];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v13 = 136315138;
    sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = sub_10003E81C(v14, v16, &v25);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v7, v8, "performing AirDrop action for interactionID:%s", v13, 0xCu);
    sub_100007920(v24);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[51] = v17;
  v19 = v0[7];
  v20 = sub_100008D08(v0[3], v0[5]);
  v0[52] = v20;
  v21 = async function pointer to static SFAirDropSend.loadItemPromises(_:customPayload:)[1];
  v22 = swift_task_alloc();
  v0[53] = v22;
  *v22 = v0;
  v22[1] = sub_100010530;

  return static SFAirDropSend.loadItemPromises(_:customPayload:)(v20, 0, 0xF000000000000000);
}

uint64_t sub_100010530(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v8 = *v2;
  v3[54] = a1;
  v3[55] = v1;

  if (v1)
  {
    v5 = sub_1000120FC;
  }

  else
  {
    v6 = v3[52];

    v5 = sub_10001064C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001064C()
{
  v152 = v0;
  v1 = v0[54];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[37];
    v143 = *(v3 + 16);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v131 = (v0[31] + 8);
    v135 = v0[34];
    v138 = (v3 + 8);
    v140 = *(v3 + 72);
    v5 = &_swiftEmptyArrayStorage;
    v126 = v4;
    v128 = v2;
    do
    {
      v6 = v0[39];
      v7 = v5;
      v8 = v0[36];
      v9 = v0[32];
      v10 = v0[30];
      v143(v6, v4, v8);
      SFAirDropSend.Item.url.getter();
      SFSecurityScopedURL.url.getter();
      (*v131)(v9, v10);
      v11 = *v138;
      v12 = v8;
      v5 = v7;
      (*v138)(v6, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1000A57C0(0, v7[2] + 1, 1, v7);
      }

      v14 = v5[2];
      v13 = v5[3];
      v0 = v149;
      if (v14 >= v13 >> 1)
      {
        v5 = sub_1000A57C0(v13 > 1, v14 + 1, 1, v5);
      }

      v15 = v149[35];
      v16 = v149[33];
      v5[2] = v14 + 1;
      (*(v135 + 32))(v5 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v14, v15, v16);
      v4 += v140;
      --v2;
    }

    while (v2);
    v17 = v149[6];
    if (v17)
    {
      v18 = v149[54];
LABEL_12:
      v19 = v17;

      sub_1000077C8(&qword_100172F48, &unk_100118BD0);
      v20 = swift_allocObject();
      *(v20 + 1) = xmmword_1001186F0;
      type metadata accessor for SFAirDropUtilities();
      v21 = v19;
      v22 = static SFAirDropUtilities.imageData(for:)();
      v24 = v23;

      *(v20 + 4) = v22;
      *(v20 + 5) = v24;

      goto LABEL_21;
    }

    v132 = v5;
    v136 = (v149[28] + 8);
    v20 = &_swiftEmptyArrayStorage;
    v25 = v126;
    do
    {
      v26 = v0[38];
      v27 = v11;
      v28 = v0[36];
      v29 = v20;
      v30 = v0[29];
      v31 = v0[27];
      v32 = v25;
      (v143)(v26);
      SFAirDropSend.Item.metadata.getter();
      v33 = SFAirDropSend.ItemMetadata.previewImageData.getter();
      v35 = v34;
      v36 = v30;
      v20 = v29;
      (*v136)(v36, v31);
      v37 = v28;
      v11 = v27;
      v27(v26, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1000A568C(0, *(v29 + 2) + 1, 1, v29);
      }

      v39 = *(v20 + 2);
      v38 = *(v20 + 3);
      v0 = v149;
      if (v39 >= v38 >> 1)
      {
        v20 = sub_1000A568C((v38 > 1), v39 + 1, 1, v20);
      }

      *(v20 + 2) = v39 + 1;
      v40 = &v20[16 * v39];
      *(v40 + 4) = v33;
      *(v40 + 5) = v35;
      v25 = v32 + v140;
      --v128;
    }

    while (v128);
    v41 = v149[54];

    v5 = v132;
  }

  else
  {
    v17 = v0[6];
    if (v17)
    {
      v5 = &_swiftEmptyArrayStorage;
      goto LABEL_12;
    }

    v42 = v0[54];

    v5 = &_swiftEmptyArrayStorage;
    v20 = &_swiftEmptyArrayStorage;
  }

LABEL_21:
  v0[56] = v5;
  v0[57] = v20;
  v43 = v0[50];
  v44 = v0[48];
  (v0[49])(v0[46], v0[5], v0[40]);

  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.default.getter();

  v47 = os_log_type_enabled(v45, v46);
  v48 = v0[51];
  v49 = v0[46];
  v51 = v0[40];
  v50 = v0[41];
  v133 = v5;
  v147 = v20;
  if (v47)
  {
    v141 = v0[33];
    v52 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *v52 = 136315394;
    sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID);
    v53 = dispatch thunk of CustomStringConvertible.description.getter();
    v55 = v54;
    v48(v49, v51);
    v56 = sub_10003E81C(v53, v55, &v151);

    *(v52 + 4) = v56;
    *(v52 + 12) = 2080;
    v57 = Array.description.getter();
    v59 = sub_10003E81C(v57, v58, &v151);

    *(v52 + 14) = v59;
    _os_log_impl(&_mh_execute_header, v45, v46, "%s: loaded items = %s", v52, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v48(v49, v51);
  }

  v60 = v0[50];
  v61 = v0[48];
  (v0[49])(v0[45], v0[5], v0[40]);
  v62 = Logger.logObject.getter();
  v63 = static os_log_type_t.default.getter();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v0[51];
  v66 = v0[45];
  v68 = v0[40];
  v67 = v0[41];
  if (v64)
  {
    v144 = v63;
    v69 = swift_slowAlloc();
    v151 = swift_slowAlloc();
    *v69 = 136315394;
    sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID);
    v70 = dispatch thunk of CustomStringConvertible.description.getter();
    v72 = v71;
    v65(v66, v68);
    v73 = v70;
    v74 = v149;
    v75 = sub_10003E81C(v73, v72, &v151);

    *(v69 + 4) = v75;
    *(v69 + 12) = 2080;
    v76 = v147;

    sub_1000077C8(&qword_100172F40, &qword_10011EA40);
    v77 = Array.description.getter();
    v79 = v78;

    v80 = sub_10003E81C(v77, v79, &v151);

    *(v69 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v62, v144, "%s: item preview data = %s", v69, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v74 = v0;

    v65(v66, v68);
    v76 = v147;
  }

  v82 = v74[40];
  v81 = v74[41];
  v83 = v74[26];
  v84 = v74[4];
  SFAirDrop.NearbySharingInteraction.ConnectionContext.endpointIdentifier.getter();
  if ((*(v81 + 48))(v83, 1, v82) == 1)
  {
    v85 = v74[49];
    v86 = v74[50];
    v87 = v74[48];
    v88 = v74[42];
    v89 = v74[40];
    v90 = v74[26];
    v91 = v74[5];

    sub_1000159AC(v90, &qword_100172F08, &unk_10011E530);
    v85(v88, v91, v89);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    v94 = os_log_type_enabled(v92, v93);
    v95 = v74[51];
    v97 = v74[41];
    v96 = v74[42];
    v98 = v74[40];
    if (v94)
    {
      v145 = v74[51];
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v151 = v100;
      *v99 = 136315138;
      sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID);
      v101 = dispatch thunk of CustomStringConvertible.description.getter();
      v103 = v102;
      v145(v96, v98);
      v104 = sub_10003E81C(v101, v103, &v151);
      v74 = v149;

      *(v99 + 4) = v104;
      _os_log_impl(&_mh_execute_header, v92, v93, "%s: context.endpointIdentifier is nil.", v99, 0xCu);
      sub_100007920(v100);
    }

    else
    {

      v95(v96, v98);
    }

    v110 = v74[46];
    v109 = v74[47];
    v111 = v74;
    v112 = v74[45];
    v113 = v111[43];
    v114 = v111[44];
    v115 = v111[42];
    v117 = v111[38];
    v116 = v111[39];
    v118 = v111[35];
    v119 = v111[32];
    v127 = v111[29];
    v129 = v111[26];
    v130 = v111[25];
    v134 = v111[22];
    v137 = v111[19];
    v139 = v111[18];
    v142 = v111[17];
    v146 = v111[14];
    v148 = v111[11];
    v150 = v111[10];

    v120 = v111[1];

    return v120();
  }

  else
  {
    v105 = v74[7];
    (*(v74[41] + 32))(v74[44], v74[26], v74[40]);
    v106 = *(v105 + *(type metadata accessor for SendOverAirDropAction(0) + 20));
    if (v76[2] && (v107 = v76[5], v107 >> 60 != 15))
    {
      v108 = v76[4];
      sub_1000156D8(v108, v107);
    }

    else
    {
      v108 = 0;
      v107 = 0xF000000000000000;
    }

    v74[58] = v108;
    v74[59] = v107;
    v122 = async function pointer to SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)[1];
    v123 = swift_task_alloc();
    v74[60] = v123;
    *v123 = v74;
    v123[1] = sub_1000111D0;
    v124 = v74[44];
    v125 = v74[25];

    return SFAirDropClient.send(_:to:itemPreviewData:requestSource:onlyExchange:)(v125, v133, v124, v108, v107, 0, 0, 0);
  }
}

uint64_t sub_1000111D0()
{
  v2 = *v1;
  v3 = *(*v1 + 480);
  v4 = *v1;
  *(*v1 + 488) = v0;

  v5 = v2[59];
  v6 = v2[58];
  v7 = v2[56];
  if (v0)
  {
    sub_100015660(v6, v5);

    v8 = sub_10001226C;
  }

  else
  {

    sub_100015660(v6, v5);
    v8 = sub_100011358;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100011358()
{
  v28 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 384);
  (*(v0 + 392))(*(v0 + 344), *(v0 + 40), *(v0 + 320));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 408);
  v7 = *(v0 + 344);
  v8 = *(v0 + 320);
  v9 = *(v0 + 328);
  if (v5)
  {
    v26 = *(v0 + 408);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v27 = v11;
    *v10 = 136315138;
    sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    v26(v7, v8);
    v15 = sub_10003E81C(v12, v14, &v27);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: starting AirDrop send", v10, 0xCu);
    sub_100007920(v11);
  }

  else
  {

    v6(v7, v8);
  }

  v16 = *(v0 + 200);
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  SFXPCProgressTask.makeAsyncIterator()();
  *(v0 + 512) = enum case for SFAirDropSend.Transfer.State.transferring(_:);
  *(v0 + 516) = enum case for SFAirDropSend.Transfer.State.transferFailed(_:);
  v19 = sub_100015674();
  v20 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v21 = swift_task_alloc();
  *(v0 + 496) = v21;
  *v21 = v0;
  v21[1] = sub_1000115B8;
  v22 = *(v0 + 176);
  v23 = *(v0 + 152);
  v24 = *(v0 + 160);

  return dispatch thunk of AsyncIteratorProtocol.next()(v23, v24, v19);
}

uint64_t sub_1000115B8()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_100011E9C;
  }

  else
  {
    v3 = sub_1000116CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000116CC()
{
  v103 = v0;
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 456);
    v5 = *(v0 + 408);
    v6 = *(v0 + 352);
    v7 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 184);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
    (*(v10 + 8))(v9, v11);
    v5(v6, v7);

    v13 = *(v0 + 368);
    v12 = *(v0 + 376);
    v14 = *(v0 + 352);
    v15 = *(v0 + 360);
    v17 = *(v0 + 336);
    v16 = *(v0 + 344);
    v19 = *(v0 + 304);
    v18 = *(v0 + 312);
    v20 = *(v0 + 280);
    v21 = *(v0 + 256);
    v89 = *(v0 + 232);
    v90 = *(v0 + 208);
    v91 = *(v0 + 200);
    v92 = *(v0 + 176);
    v93 = *(v0 + 152);
    v94 = *(v0 + 144);
    v95 = *(v0 + 136);
    v96 = *(v0 + 112);
    v97 = *(v0 + 88);
    v99 = *(v0 + 80);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 384);
    v26 = *(v0 + 136);
    v25 = *(v0 + 144);
    (*(v3 + 32))(v25, v1, v2);
    (*(v3 + 16))(v26, v25, v2);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    v29 = os_log_type_enabled(v27, v28);
    v31 = *(v0 + 128);
    v30 = *(v0 + 136);
    v32 = *(v0 + 120);
    if (v29)
    {
      v33 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v102 = v100;
      *v33 = 136315138;
      sub_10000FBA0(&qword_100172F38, &type metadata accessor for SFAirDropSend.Transfer);
      v34 = dispatch thunk of CustomStringConvertible.description.getter();
      v36 = v35;
      v37 = *(v31 + 8);
      v37(v30, v32);
      v38 = sub_10003E81C(v34, v36, &v102);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v27, v28, "AirDrop send updated:%s", v33, 0xCu);
      sub_100007920(v100);
    }

    else
    {

      v37 = *(v31 + 8);
      v37(v30, v32);
    }

    v39 = *(v0 + 512);
    v40 = *(v0 + 144);
    v42 = *(v0 + 104);
    v41 = *(v0 + 112);
    v43 = *(v0 + 96);
    SFAirDropSend.Transfer.state.getter();
    v44 = (*(v42 + 88))(v41, v43);
    if (v44 == v39)
    {
      v46 = *(v0 + 104);
      v45 = *(v0 + 112);
      v47 = *(v0 + 96);
      v48 = *(v0 + 128) + 8;
      v37(*(v0 + 144), *(v0 + 120));
      (*(v46 + 96))(v45, v47);
      v49 = *(v45 + 8);

      v50 = sub_1000077C8(&qword_100172F30, &unk_100118BC0);
      v51 = v50[12];
      v52 = *(v45 + 8 + v50[16]);

      v53 = v50[20];
      v54 = type metadata accessor for SFAirDrop.DeclineAction();
      (*(*(v54 - 8) + 8))(v45 + v53, v54);
      v55 = type metadata accessor for SFAirDrop.Progress();
      (*(*(v55 - 8) + 8))(v45 + v51, v55);
    }

    else if (v44 == *(v0 + 516))
    {
      v56 = *(v0 + 384);
      v57 = *(v0 + 112);
      v58 = *(v0 + 88);
      v60 = *(v0 + 72);
      v59 = *(v0 + 80);
      v61 = *(v0 + 64);
      (*(*(v0 + 104) + 96))(v57, *(v0 + 96));
      v62 = sub_1000077C8(&qword_100172F20, &qword_100118F10);
      (*(v60 + 32))(v58, v57 + *(v62 + 48), v61);
      v63 = *(v60 + 16);
      v63(v59, v58, v61);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.error.getter();
      v66 = os_log_type_enabled(v64, v65);
      v68 = *(v0 + 80);
      v67 = *(v0 + 88);
      v70 = *(v0 + 64);
      v69 = *(v0 + 72);
      if (v66)
      {
        v101 = *(v0 + 88);
        v71 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        *v71 = 138412290;
        sub_10000FBA0(&qword_100172F28, &type metadata accessor for SFAirDropSend.Failure);
        swift_allocError();
        v63(v72, v68, v70);
        v73 = _swift_stdlib_bridgeErrorToNSError();
        v74 = *(v69 + 8);
        v74(v68, v70);
        *(v71 + 4) = v73;
        *v98 = v73;
        _os_log_impl(&_mh_execute_header, v64, v65, "AirDrop transfer failed with failure: %@", v71, 0xCu);
        sub_1000159AC(v98, &qword_100172EB0, &qword_100119410);

        v74(v101, v70);
      }

      else
      {

        v79 = *(v69 + 8);
        v79(v68, v70);
        v79(v67, v70);
      }

      v80 = *(v0 + 112);
      v81 = *(v0 + 128) + 8;
      v37(*(v0 + 144), *(v0 + 120));
      v82 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      (*(*(v82 - 8) + 8))(v80, v82);
    }

    else
    {
      v76 = *(v0 + 104);
      v75 = *(v0 + 112);
      v77 = *(v0 + 96);
      v78 = *(v0 + 128) + 8;
      v37(*(v0 + 144), *(v0 + 120));
      (*(v76 + 8))(v75, v77);
    }

    v83 = sub_100015674();
    v84 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
    v85 = swift_task_alloc();
    *(v0 + 496) = v85;
    *v85 = v0;
    v85[1] = sub_1000115B8;
    v86 = *(v0 + 176);
    v87 = *(v0 + 152);
    v88 = *(v0 + 160);

    return dispatch thunk of AsyncIteratorProtocol.next()(v87, v88, v83);
  }
}

uint64_t sub_100011E9C()
{
  *(v0 + 16) = *(v0 + 504);
  sub_1000077C8(&qword_100175E10, &unk_100118BB0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100011F30, 0, 0);
}

uint64_t sub_100011F30()
{
  v1 = v0[57];
  v2 = v0[51];
  v3 = v0[44];
  v4 = v0[40];
  v5 = v0[41];
  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[23];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v7 + 8))(v6, v8);
  v2(v3, v4);

  v31 = v0[63];
  v10 = v0[46];
  v9 = v0[47];
  v12 = v0[44];
  v11 = v0[45];
  v14 = v0[42];
  v13 = v0[43];
  v16 = v0[38];
  v15 = v0[39];
  v17 = v0[35];
  v18 = v0[32];
  v21 = v0[29];
  v22 = v0[26];
  v23 = v0[25];
  v24 = v0[22];
  v25 = v0[19];
  v26 = v0[18];
  v27 = v0[17];
  v28 = v0[14];
  v29 = v0[11];
  v30 = v0[10];

  v19 = v0[1];

  return v19();
}

uint64_t sub_1000120FC()
{
  v1 = v0[52];

  v24 = v0[55];
  v3 = v0[46];
  v2 = v0[47];
  v5 = v0[44];
  v4 = v0[45];
  v7 = v0[42];
  v6 = v0[43];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[35];
  v11 = v0[32];
  v14 = v0[29];
  v15 = v0[26];
  v16 = v0[25];
  v17 = v0[22];
  v18 = v0[19];
  v19 = v0[18];
  v20 = v0[17];
  v21 = v0[14];
  v22 = v0[11];
  v23 = v0[10];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10001226C()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 328) + 8;
  (*(v0 + 408))(*(v0 + 352), *(v0 + 320));

  v25 = *(v0 + 488);
  v4 = *(v0 + 368);
  v3 = *(v0 + 376);
  v6 = *(v0 + 352);
  v5 = *(v0 + 360);
  v8 = *(v0 + 336);
  v7 = *(v0 + 344);
  v10 = *(v0 + 304);
  v9 = *(v0 + 312);
  v11 = *(v0 + 280);
  v12 = *(v0 + 256);
  v15 = *(v0 + 232);
  v16 = *(v0 + 208);
  v17 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 152);
  v20 = *(v0 + 144);
  v21 = *(v0 + 136);
  v22 = *(v0 + 112);
  v23 = *(v0 + 88);
  v24 = *(v0 + 80);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000123FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for UUID();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();
  v8 = type metadata accessor for UTType();
  v4[27] = v8;
  v9 = *(v8 - 8);
  v4[28] = v9;
  v10 = *(v9 + 64) + 15;
  v4[29] = swift_task_alloc();

  return _swift_task_switch(sub_10001251C, 0, 0);
}

uint64_t sub_10001251C()
{
  v31 = v0;
  v1 = v0[21];
  v2 = SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter();
  v0[30] = v2;
  v0[31] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = v0[23];
    v7 = *(v6 + *(type metadata accessor for StartSharePlayAction(0) + 20));
    v8 = swift_task_alloc();
    v0[32] = v8;
    *v8 = v0;
    v8[1] = sub_100012810;

    return sub_10006ED88(v4, v5);
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v11 = v0[25];
    v10 = v0[26];
    v12 = v0[24];
    v13 = v0[22];
    v14 = type metadata accessor for Logger();
    sub_100007D20(v14, qword_10017F350);
    (*(v11 + 16))(v10, v13, v12);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v19 = v0[25];
    v18 = v0[26];
    v20 = v0[24];
    if (v17)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (*(v19 + 8))(v18, v20);
      v26 = sub_10003E81C(v23, v25, &v30);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v15, v16, "Cannot start SharePlay on nearby sharing interaction with ID as it's an unknown contact: %s", v21, 0xCu);
      sub_100007920(v22);
    }

    else
    {

      (*(v19 + 8))(v18, v20);
    }

    v27 = v0[29];
    v28 = v0[26];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_100012810(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 256);
  v6 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = a2;

  return _swift_task_switch(sub_100012910, 0, 0);
}

uint64_t sub_100012910()
{
  v99 = v0;
  v1 = v0[34];
  if (!v1)
  {
    if (qword_100172218 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_15;
  }

  v2 = v0[33];
  v3 = v0[31];

  v4 = objc_opt_self();

  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 normalizedHandleWithDestinationID:v5];
  v0[35] = v6;

  if (v6)
  {
    v7 = v0[20];

    v8 = [objc_allocWithZone(TUConversationMember) initWithHandle:v6];
    v0[36] = v8;
    sub_1000077C8(&unk_100172E80, &unk_100118B40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100118700;
    *(inited + 32) = v8;
    v10 = v8;
    sub_10008FC40(inited);
    swift_setDeallocating();
    v11 = *(inited + 16);
    swift_arrayDestroy();
    v12 = objc_allocWithZone(TUJoinConversationRequest);
    sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
    sub_100015234(&qword_100172E90, &unk_100176390, TUConversationMember_ptr);
    isa = Set._bridgeToObjectiveC()().super.isa;

    v14 = [v12 initWithRemoteMembers:isa];
    v0[37] = v14;

    v15 = [objc_opt_self() invitationPreferencesForAllHandlesWithStyles:1];
    sub_1000165C4(0, &qword_100172E98, TUConversationInvitationPreference_ptr);
    sub_100015234(&qword_100172EA0, &qword_100172E98, TUConversationInvitationPreference_ptr);
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = Set._bridgeToObjectiveC()().super.isa;

    [v14 setInvitationPreferences:v16];

    buf = v14;
    [v14 setAvMode:0];
    v17 = v7[3];
    v18 = v7[4];
    sub_1000078DC(v7, v17);
    v19 = (*(v18 + 64))(v17, v18);
    v20 = v19;
    if (v19 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v22 = 0;
      log = (v0[28] + 8);
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v23 = *(v20 + 8 * v22 + 32);
        }

        v24 = v23;
        v0[38] = v23;
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        v26 = i;
        v27 = v0[29];
        v28 = v0[27];
        static UTType._groupActivity.getter();
        UTType.identifier.getter();
        (log->isa)(v27, v28);
        v29 = String._bridgeToObjectiveC()();

        LOBYTE(v28) = [v24 hasItemConformingToTypeIdentifier:v29];

        if (v28)
        {

          v46 = swift_task_alloc();
          v0[39] = v46;
          *(v46 + 16) = v24;
          v47 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
          v48 = swift_task_alloc();
          v0[40] = v48;
          v49 = sub_1000165C4(0, &qword_100172EA8, TUConversationActivity_ptr);
          *v48 = v0;
          v48[1] = sub_100013458;

          return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 19, 0, 0, 0xD00000000000001CLL, 0x8000000100122BA0, sub_100015284, v46, v49);
        }

        ++v22;
        i = v26;
        if (v25 == v26)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v50 = v0[20];
    v51 = type metadata accessor for Logger();
    sub_100007D20(v51, qword_10017F350);
    sub_100007878(v50, (v0 + 14));
    v52 = buf;
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v92 = v54;
      loga = v53;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v98 = v91;
      *v55 = 138412546;
      *(v55 + 4) = v52;
      v90 = v56;
      *v56 = v52;
      bufa = v55;
      *(v55 + 12) = 2080;
      v57 = v0[17];
      v58 = v0[18];
      sub_1000078DC(v0 + 14, v57);
      v59 = *(v58 + 64);
      v60 = v52;
      v61 = v59(v57, v58);
      v62 = v61;
      if (v61 >> 62)
      {
        v63 = _CocoaArrayWrapper.endIndex.getter();
        v97 = v0;
        if (v63)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v63 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v97 = v0;
        if (v63)
        {
LABEL_35:
          v64 = 0;
          v65 = &_swiftEmptyArrayStorage;
          do
          {
            if ((v62 & 0xC000000000000001) != 0)
            {
              v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v64 >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_58;
              }

              v66 = *(v62 + 8 * v64 + 32);
            }

            v67 = v66;
            v68 = v64 + 1;
            if (__OFADD__(v64, 1))
            {
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              swift_once();
LABEL_15:
              v30 = v0[31];
              v31 = type metadata accessor for Logger();
              sub_100007D20(v31, qword_10017F350);

              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.default.getter();

              v34 = os_log_type_enabled(v32, v33);
              v35 = v0[31];
              if (v34)
              {
                v36 = v0[30];
                v37 = swift_slowAlloc();
                v38 = swift_slowAlloc();
                v98 = v38;
                *v37 = 136315138;
                v39 = sub_10003E81C(v36, v35, &v98);

                *(v37 + 4) = v39;
                v40 = "Cannot start SharePlay on nearby sharing interaction with ID as the contact with identifier does not contain a FaceTime-able handle: %s";
                v41 = v33;
                goto LABEL_21;
              }

LABEL_26:

              goto LABEL_67;
            }

            v69 = [v66 registeredTypeIdentifiers];
            v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

            v71 = *(v70 + 16);
            v0 = *(v65 + 2);
            v72 = v0 + v71;
            if (__OFADD__(v0, v71))
            {
              goto LABEL_59;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v72 <= *(v65 + 3) >> 1)
            {
              if (*(v70 + 16))
              {
                goto LABEL_51;
              }
            }

            else
            {
              if (v0 <= v72)
              {
                v74 = v0 + v71;
              }

              else
              {
                v74 = v0;
              }

              v65 = sub_1000A59C4(isUniquelyReferenced_nonNull_native, v74, 1, v65);
              if (*(v70 + 16))
              {
LABEL_51:
                if ((*(v65 + 3) >> 1) - *(v65 + 2) < v71)
                {
                  goto LABEL_61;
                }

                swift_arrayInitWithCopy();

                if (v71)
                {
                  v75 = *(v65 + 2);
                  v76 = __OFADD__(v75, v71);
                  v77 = v75 + v71;
                  if (v76)
                  {
                    goto LABEL_62;
                  }

                  *(v65 + 2) = v77;
                }

                goto LABEL_37;
              }
            }

            if (v71)
            {
              goto LABEL_60;
            }

LABEL_37:
            ++v64;
          }

          while (v68 != v63);
        }
      }

      v78 = Array.description.getter();
      v80 = v79;

      v0 = v97;
      sub_100007920(v97 + 14);
      v81 = sub_10003E81C(v78, v80, &v98);

      *(bufa + 14) = v81;
      _os_log_impl(&_mh_execute_header, loga, v92, "Starting SharePlay via Messages with request without an activity: %@ item provider registered types: %s", bufa, 0x16u);
      sub_1000159AC(v90, &qword_100172EB0, &qword_100119410);

      sub_100007920(v91);
    }

    else
    {

      sub_100007920(v0 + 14);
    }

    v83 = v0[36];
    v82 = v0[37];
    v84 = v0[35];
    v85 = [objc_opt_self() sharedInstance];
    [v85 launchAppForJoinRequest:v82];

    goto LABEL_67;
  }

  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_100007D20(v42, qword_10017F350);

  v32 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v32, v43))
  {
    goto LABEL_26;
  }

  v44 = v0[33];
  v37 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v98 = v38;
  *v37 = 136315138;
  v45 = sub_10003E81C(v44, v1, &v98);

  *(v37 + 4) = v45;
  v40 = "Unable to create a normalized handle with destination ID: %s";
  v41 = v43;
LABEL_21:
  _os_log_impl(&_mh_execute_header, v32, v41, v40, v37, 0xCu);
  sub_100007920(v38);

LABEL_67:
  v86 = v0[29];
  v87 = v0[26];

  v88 = v0[1];

  return v88();
}

uint64_t sub_100013458()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = sub_10001380C;
  }

  else
  {
    v5 = *(v2 + 312);

    v4 = sub_100013574;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100013574()
{
  v1 = v0[37];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v2[3];
  v5 = v2[4];
  sub_1000078DC(v2, v4);
  (*(v5 + 56))(v4, v5);
  v6 = v0[4];
  v7 = v0[5];

  sub_10001528C((v0 + 2));
  v8 = String._bridgeToObjectiveC()();

  [v3 setBundleIdentifier:v8];

  [v3 setStartWhenStaged:1];
  [v1 setActivity:v3];
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v9 = v0[37];
  v10 = type metadata accessor for Logger();
  sub_100007D20(v10, qword_10017F350);
  v11 = v9;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[38];
  if (v14)
  {
    v16 = v0[37];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412290;
    *(v17 + 4) = v16;
    *v18 = v16;
    v19 = v16;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting SharePlay via Messages with request using an advertised activity: %@", v17, 0xCu);
    sub_1000159AC(v18, &qword_100172EB0, &qword_100119410);
  }

  v21 = v0[36];
  v20 = v0[37];
  v22 = v0[35];
  v23 = [objc_opt_self() sharedInstance];
  [v23 launchAppForJoinRequest:v20];

  v24 = v0[29];
  v25 = v0[26];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10001380C()
{
  v2 = v0[38];
  v1 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[29];
  v7 = v0[26];

  v8 = v0[1];
  v9 = v0[41];

  return v8();
}

uint64_t sub_1000138B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[26] = a4;
  v5[27] = v4;
  v5[24] = a2;
  v5[25] = a3;
  v5[23] = a1;
  v6 = type metadata accessor for UTType();
  v5[28] = v6;
  v7 = *(v6 - 8);
  v5[29] = v7;
  v8 = *(v7 + 64) + 15;
  v5[30] = swift_task_alloc();
  v9 = *(*(sub_1000077C8(&qword_100172EE0, &qword_10011B220) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v5[32] = v10;
  v11 = *(v10 - 8);
  v5[33] = v11;
  v5[34] = *(v11 + 64);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();

  return _swift_task_switch(sub_100013A44, 0, 0);
}

uint64_t sub_100013A44()
{
  v1 = v0[23];
  v3 = v1[3];
  v2 = v1[4];
  sub_1000078DC(v1, v3);
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_100013B00;
  v5 = v0[31];

  return sub_10000C190(v5, v3, v2);
}

uint64_t sub_100013B00()
{
  v2 = *(*v1 + 320);
  v5 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = sub_100014A88;
  }

  else
  {
    v3 = sub_100013C14;
  }

  return _swift_task_switch(v3, 0, 0);
}

id sub_100013C14()
{
  v116 = v0;
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000159AC(v3, &qword_100172EE0, &qword_10011B220);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v4 = v0[23];
    v5 = type metadata accessor for Logger();
    sub_100007D20(v5, qword_10017F350);
    sub_100007878(v4, (v0 + 8));
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v115 = v9;
      *v8 = 136315138;
      sub_100007878((v0 + 8), (v0 + 13));
      sub_1000077C8(&qword_100172E68, &qword_100118B30);
      v10 = String.init<A>(reflecting:)();
      v12 = v11;
      sub_100007920(v0 + 8);
      v13 = sub_10003E81C(v10, v12, &v115);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "Could not find a URL to start nearby SharePlay from content: %s", v8, 0xCu);
      sub_100007920(v9);
    }

    else
    {

      sub_100007920(v0 + 8);
    }

LABEL_31:
    v96 = v0[38];
    v95 = v0[39];
    v98 = v0[36];
    v97 = v0[37];
    v99 = v0[35];
    v101 = v0[30];
    v100 = v0[31];

    v102 = v0[1];

    return v102();
  }

  v14 = v0[23];
  v15 = *(v2 + 32);
  v15(v0[39], v3, v1);
  v17 = v14[3];
  v16 = v14[4];
  sub_1000078DC(v14, v17);
  if (!sub_10000C024(v17, v16, &qword_100172128, qword_10017F180))
  {
    v34 = v0[23];
    v36 = v34[3];
    v35 = v34[4];
    sub_1000078DC(v34, v36);
    if (sub_10000C024(v36, v35, &qword_100172130, qword_10017F198))
    {
      if (qword_100172218 != -1)
      {
        swift_once();
      }

      v37 = v0[39];
      v38 = v0[36];
      v39 = v0[32];
      v40 = v0[33];
      v41 = type metadata accessor for Logger();
      sub_100007D20(v41, qword_10017F350);
      v113 = *(v40 + 16);
      v113(v38, v37, v39);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      v44 = os_log_type_enabled(v42, v43);
      v45 = v0[36];
      v47 = v0[32];
      v46 = v0[33];
      if (v44)
      {
        v48 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v115 = v109;
        *v48 = 136315138;
        sub_10000FBA0(&qword_100172EE8, &type metadata accessor for URL);
        v49 = dispatch thunk of CustomStringConvertible.description.getter();
        v110 = v41;
        v51 = v50;
        v52 = *(v46 + 8);
        v52(v45, v47);
        v53 = sub_10003E81C(v49, v51, &v115);
        v41 = v110;

        *(v48 + 4) = v53;
        _os_log_impl(&_mh_execute_header, v42, v43, "Starting nearby SharePlay for participant using URL: %s", v48, 0xCu);
        sub_100007920(v109);
      }

      else
      {

        v52 = *(v46 + 8);
        v52(v45, v47);
      }

      result = [objc_opt_self() defaultWorkspace];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v73 = result;
      v74 = v0[39];
      URL._bridgeToObjectiveC()(v72);
      v76 = v75;
      v77 = [v73 openURL:v75 withOptions:0];

      if (v77)
      {
        v78 = v0[33] + 8;
        v52(v0[39], v0[32]);
      }

      else
      {
        if (qword_100172120 != -1)
        {
          swift_once();
        }

        v79 = v0[39];
        v80 = v0[35];
        v81 = v0[32];
        sub_100007D20(v41, qword_100172A30);
        v113(v80, v79, v81);
        v82 = Logger.logObject.getter();
        v83 = static os_log_type_t.error.getter();
        v84 = os_log_type_enabled(v82, v83);
        v85 = v0[39];
        v86 = v0[35];
        v88 = v0[32];
        v87 = v0[33];
        if (v84)
        {
          v111 = v83;
          v89 = swift_slowAlloc();
          v114 = v85;
          v115 = swift_slowAlloc();
          v90 = v115;
          *v89 = 136315138;
          v91 = URL.absoluteString.getter();
          v93 = v92;
          v52(v86, v88);
          v94 = sub_10003E81C(v91, v93, &v115);

          *(v89 + 4) = v94;
          _os_log_impl(&_mh_execute_header, v82, v111, "Failed to open nearby SharePlay URL: %s", v89, 0xCu);
          sub_100007920(v90);

          v52(v114, v88);
        }

        else
        {

          v52(v86, v88);
          v52(v85, v88);
        }
      }
    }

    else
    {
      (*(v0[33] + 8))(v0[39], v0[32]);
    }

    goto LABEL_31;
  }

  v112 = v15;
  if (qword_100172218 != -1)
  {
    swift_once();
  }

  v18 = v0[38];
  v19 = v0[39];
  v20 = v0[32];
  v21 = v0[33];
  v22 = type metadata accessor for Logger();
  sub_100007D20(v22, qword_10017F350);
  v108 = *(v21 + 16);
  v108(v18, v19, v20);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[38];
  v27 = v0[32];
  v28 = v0[33];
  if (v25)
  {
    v29 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v115 = v106;
    *v29 = 136315138;
    sub_10000FBA0(&qword_100172EE8, &type metadata accessor for URL);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    (*(v28 + 8))(v26, v27);
    v33 = sub_10003E81C(v30, v32, &v115);

    *(v29 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "Starting nearby SharePlay for host using URL: %s", v29, 0xCu);
    sub_100007920(v106);
  }

  else
  {

    (*(v28 + 8))(v26, v27);
  }

  v54 = v0[37];
  v105 = v0[34];
  v103 = v0[39];
  v104 = v0[33];
  v55 = v0[32];
  v57 = v0[29];
  v56 = v0[30];
  v58 = v0[28];
  v107 = v0[27];
  v59 = [objc_allocWithZone(NSItemProvider) init];
  v0[42] = v59;
  static UTType.url.getter();
  UTType.identifier.getter();
  (*(v57 + 8))(v56, v58);
  v60 = String._bridgeToObjectiveC()();

  v108(v54, v103, v55);
  v61 = (*(v104 + 80) + 16) & ~*(v104 + 80);
  v62 = swift_allocObject();
  v112(v62 + v61, v54, v55);
  v0[6] = sub_1000155AC;
  v0[7] = v62;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1000E2284;
  v0[5] = &unk_10015D210;
  v63 = _Block_copy(v0 + 2);
  v64 = v0[7];

  [v59 registerItemForTypeIdentifier:v60 loadHandler:v63];
  _Block_release(v63);

  LODWORD(v54) = *(type metadata accessor for StartNearbySharePlayAction(0) + 20);
  sub_1000077C8(&unk_100172E80, &unk_100118B40);
  inited = swift_initStackObject();
  v0[43] = inited;
  *(inited + 16) = xmmword_100118700;
  *(inited + 32) = v59;
  v66 = v59;
  v67 = swift_task_alloc();
  v0[44] = v67;
  *v67 = v0;
  v67[1] = sub_100014788;
  v68 = v0[25];
  v69 = v0[26];
  v70 = v0[24];

  return sub_10000FDA0(inited, v70, v68, v69, 0);
}

uint64_t sub_100014788()
{
  v2 = *(*v1 + 352);
  v3 = *(*v1 + 344);
  v7 = *v1;
  *(*v1 + 360) = v0;

  swift_setDeallocating();
  v4 = *(v3 + 16);
  swift_arrayDestroy();
  if (v0)
  {
    v5 = sub_1000149A8;
  }

  else
  {
    v5 = sub_1000148D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000148D0()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  (*(v3 + 8))(v1, v2);
  v5 = *(v0 + 304);
  v4 = *(v0 + 312);
  v7 = *(v0 + 288);
  v6 = *(v0 + 296);
  v8 = *(v0 + 280);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000149A8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 360);
  v6 = *(v0 + 304);
  v5 = *(v0 + 312);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);
  v9 = *(v0 + 280);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100014A88()
{
  v1 = v0[41];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];
  v8 = v0[30];
  v7 = v0[31];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100014B40(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(*(sub_1000077C8(&qword_100172E60, &qword_100118B28) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v4 = type metadata accessor for ProximityHandoffInteractionContent(0);
  v2[15] = v4;
  v5 = *(v4 - 8);
  v2[16] = v5;
  v6 = *(v5 + 64) + 15;
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_100014C38, 0, 0);
}

uint64_t sub_100014C38()
{
  v31 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  sub_100007878(v0[12], (v0 + 2));
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v6 = v0[17];
    v7 = v0[14];
    v8 = v0[13];
    v5(v7, 0, 1, v0[15]);
    sub_100015174(v7, v6);
    v9 = *v8;
    v10 = *(type metadata accessor for ProximityHandoffContentAction(0) + 20);
    v11 = *(&async function pointer to dispatch thunk of SFProximityHandoffClient.performHandoffContent(action:on:) + 1);
    v29 = (&async function pointer to dispatch thunk of SFProximityHandoffClient.performHandoffContent(action:on:) + async function pointer to dispatch thunk of SFProximityHandoffClient.performHandoffContent(action:on:));
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_100014F6C;
    v13 = v0[17];

    return v29(v8 + v10, v13);
  }

  else
  {
    v15 = v0[14];
    v5(v15, 1, 1, v0[15]);
    sub_1000159AC(v15, &qword_100172E60, &qword_100118B28);
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v16 = v0[12];
    v17 = type metadata accessor for Logger();
    sub_100007D20(v17, qword_10017F350);
    sub_100007878(v16, (v0 + 7));
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136315138;
      sub_1000078DC(v0 + 7, v0[10]);
      swift_getDynamicType();
      v22 = _typeName(_:qualified:)();
      v24 = v23;
      sub_100007920(v0 + 7);
      v25 = sub_10003E81C(v22, v24, &v30);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Unsupported content type for proximity handoff client Share action: %s", v20, 0xCu);
      sub_100007920(v21);
    }

    else
    {

      sub_100007920(v0 + 7);
    }

    v26 = v0[17];
    v27 = v0[14];

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_100014F6C()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1000150F8;
  }

  else
  {
    v3 = sub_100015080;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100015080()
{
  sub_1000151D8(v0[17]);
  v1 = v0[17];
  v2 = v0[14];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000150F8()
{
  v1 = v0[14];
  sub_1000151D8(v0[17]);

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_100015174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProximityHandoffInteractionContent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000151D8(uint64_t a1)
{
  v2 = type metadata accessor for ProximityHandoffInteractionContent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015234(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000165C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000152E0()
{
  v1 = sub_1000077C8(&qword_100172EB8, &unk_100118B50);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100015374(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_1000077C8(&qword_100172EB8, &unk_100118B50) - 8) + 80);

  sub_10000B458(a1, a2);
}

uint64_t sub_100015400(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100015418()
{
  result = qword_100172EC0;
  if (!qword_100172EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172EC0);
  }

  return result;
}

uint64_t sub_10001546C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t *sub_1000154C0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100015524()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1000155AC(void (*a1)(void))
{
  v2 = *(type metadata accessor for URL() - 8);
  if (a1)
  {
    URL._bridgeToObjectiveC()(((*(v2 + 80) + 16) & ~*(v2 + 80)));
    v4 = v3;
    a1();
  }
}

uint64_t sub_100015660(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10001546C(a1, a2);
  }

  return a1;
}

unint64_t sub_100015674()
{
  result = qword_100172F10;
  if (!qword_100172F10)
  {
    sub_100007CCC(&qword_100172EF8, &qword_100118B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172F10);
  }

  return result;
}

uint64_t sub_1000156D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001572C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100015800(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = *(v1 + 72);
  v13 = *(v1 + 80);
  v14 = v1 + ((*(v4 + 80) + 88) & ~*(v4 + 80));
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_10000BCF0;

  return sub_100009868(a1, v12, v13, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_10001593C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000077C8(&qword_100172F50, &qword_10011E500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000159AC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000077C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100015A0C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000156D8(a1, a2);
  }

  return a1;
}

uint64_t sub_100015A30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100015AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  v5 = type metadata accessor for UUID();
  v4[24] = v5;
  v6 = *(v5 - 8);
  v4[25] = v6;
  v7 = *(v6 + 64) + 15;
  v4[26] = swift_task_alloc();

  return _swift_task_switch(sub_100015B6C, 0, 0);
}

uint64_t sub_100015B6C()
{
  v46 = v0;
  sub_100007878(v0[20], (v0 + 2));
  sub_1000077C8(&qword_100172E68, &qword_100118B30);
  if (swift_dynamicCast())
  {
    v1 = v0[21];
    v2 = v0[17];
    v3 = v0[18];
    v0[27] = v2;
    v0[28] = v3;
    v4 = v0[19];
    v0[29] = v4;
    v5 = SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter();
    v0[30] = v5;
    v0[31] = v6;
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = v0[23];
      active = type metadata accessor for AddToActiveSharePlaySessionAction(0);
      v0[32] = active;
      v11 = *(v9 + *(active + 20));
      v12 = swift_task_alloc();
      v0[33] = v12;
      *v12 = v0;
      v12[1] = sub_100016038;

      return sub_10006ED88(v7, v8);
    }

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v25 = v0[25];
    v24 = v0[26];
    v26 = v0[24];
    v27 = v0[22];
    v28 = type metadata accessor for Logger();
    sub_100007D20(v28, qword_10017F350);
    (*(v25 + 16))(v24, v27, v26);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v0[25];
    v33 = v0[26];
    v34 = v0[24];
    if (v31)
    {
      log = v29;
      v35 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v45 = v43;
      *v35 = 136315138;
      sub_10000FBA0(&qword_1001770E0, &type metadata accessor for UUID);
      v42 = v30;
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v32 + 8))(v33, v34);
      v39 = sub_10003E81C(v36, v38, &v45);

      *(v35 + 4) = v39;
      _os_log_impl(&_mh_execute_header, log, v42, "Cannot add to SharePlay on nearby sharing interaction with ID as it's an unknown contact: %s", v35, 0xCu);
      sub_100007920(v43);
    }

    else
    {

      (*(v32 + 8))(v33, v34);
    }
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v14 = v0[20];
    v15 = type metadata accessor for Logger();
    sub_100007D20(v15, qword_10017F350);
    sub_100007878(v14, (v0 + 7));
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v45 = v19;
      *v18 = 136315138;
      sub_1000078DC(v0 + 7, v0[10]);
      swift_getDynamicType();
      v20 = _typeName(_:qualified:)();
      v22 = v21;
      sub_100007920(v0 + 7);
      v23 = sub_10003E81C(v20, v22, &v45);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "Unsupported content type for add to SharePlay action: %s", v18, 0xCu);
      sub_100007920(v19);
    }

    else
    {

      sub_100007920(v0 + 7);
    }
  }

  v40 = v0[26];

  v41 = v0[1];

  return v41();
}

uint64_t sub_100016038(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 264);
  v6 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;

  return _swift_task_switch(sub_100016138, 0, 0);
}

uint64_t sub_100016138()
{
  v47 = v0;
  v1 = v0[35];
  if (v1)
  {
    v2 = v0[34];
    v3 = v0[31];

    v4 = objc_opt_self();

    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 normalizedHandleWithDestinationID:v5];

    if (v6)
    {
      v7 = v0[32];
      v8 = v0[28];
      v45 = v0[29];
      v9 = v0[27];
      v10 = v0[23];

      v11 = [objc_allocWithZone(TUConversationMember) initWithHandle:v6];
      v12 = *(v10 + *(v7 + 24));
      sub_1000077C8(&unk_100172E80, &unk_100118B40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100118700;
      *(inited + 32) = v11;
      v14 = v11;
      sub_10008FC40(inited);
      swift_setDeallocating();
      v15 = *(inited + 16);
      swift_arrayDestroy();
      sub_1000165C4(0, &unk_100176390, TUConversationMember_ptr);
      sub_100015234(&qword_100172E90, &unk_100176390, TUConversationMember_ptr);
      isa = Set._bridgeToObjectiveC()().super.isa;

      [v12 addRemoteMembers:isa toConversation:v9];

      goto LABEL_15;
    }

    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_100007D20(v32, qword_10017F350);

    v19 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v19, v33))
    {
      v34 = v0[34];
      v25 = v0[28];
      v24 = v0[29];
      v26 = v0[27];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v27 = 136315138;
      v35 = sub_10003E81C(v34, v1, &v46);

      *(v27 + 4) = v35;
      v30 = "Unable to create a normalized handle with destination ID: %s";
      v31 = v33;
      goto LABEL_12;
    }

    v40 = v0[28];
    v39 = v0[29];
    v41 = v0[27];
  }

  else
  {
    if (qword_100172218 != -1)
    {
      swift_once();
    }

    v17 = v0[31];
    v18 = type metadata accessor for Logger();
    sub_100007D20(v18, qword_10017F350);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v0[31];
    if (v21)
    {
      v24 = v0[29];
      v23 = v0[30];
      v26 = v0[27];
      v25 = v0[28];
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v46 = v28;
      *v27 = 136315138;
      v29 = sub_10003E81C(v23, v22, &v46);

      *(v27 + 4) = v29;
      v30 = "Cannot start SharePlay on nearby sharing interaction with ID as the contact with identifier does not contain a FaceTime-able handle: %s";
      v31 = v20;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v19, v31, v30, v27, 0xCu);
      sub_100007920(v28);

      goto LABEL_15;
    }

    v37 = v0[28];
    v36 = v0[29];
    v38 = v0[27];
  }

LABEL_15:
  v42 = v0[26];

  v43 = v0[1];

  return v43();
}

uint64_t sub_1000165C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t _s31TUConversationActivityLoadErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s31TUConversationActivityLoadErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100016784()
{
  result = qword_100172F80;
  if (!qword_100172F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172F80);
  }

  return result;
}

__n128 sub_10001680C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100016820(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100016868(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000168D8@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v102 = sub_1000077C8(&qword_100172FA0, &qword_100118D98);
  v2 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v92 = (v91 - v3);
  v103 = sub_1000077C8(&qword_100172FA8, &qword_100118DA0);
  v4 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v105 = (v91 - v5);
  v97 = sub_1000077C8(&qword_100172FB0, &qword_100118DA8);
  v6 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v99 = (v91 - v7);
  v95 = sub_1000077C8(&qword_100172FB8, &qword_100118DB0);
  v8 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v94 = (v91 - v9);
  v98 = sub_1000077C8(&qword_100172FC0, &qword_100118DB8);
  v10 = *(*(v98 - 8) + 64);
  __chkstk_darwin(v98);
  v96 = v91 - v11;
  v104 = sub_1000077C8(&qword_100172FC8, &unk_100118DC0);
  v12 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v100 = v91 - v13;
  v14 = sub_1000077C8(&qword_100172FD0, &qword_10011A210);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v91 - v16;
  v18 = type metadata accessor for SFAirDropSend.Transfer.State();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v93 = v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v91 - v23;
  v101 = v1;
  v120 = *v1;
  swift_retain_n();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100007BA4(&v120, &v115, &qword_100172FD8, &qword_100118E18);
  sub_100007BA4(&v120, &v115, &qword_100172FD8, &qword_100118E18);
  swift_retain_n();
  static Published.subscript.getter();

  v107 = v19;
  v108 = v18;
  v25 = (*(v19 + 48))(v17, 1, v18);
  sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);
  sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);
  if (v25 == 1)
  {
    v26 = v102;
    sub_1000159AC(v17, &qword_100172FD0, &qword_10011A210);
    v27 = sub_1000188F0();
    sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);
    if (v27)
    {
      sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);
      sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);
      v28 = *(v101 + 16);
      KeyPath = swift_getKeyPath();
      v30 = v92;
      *v92 = KeyPath;
      sub_1000077C8(&qword_100173070, &qword_100118EC0);
      swift_storeEnumTagMultiPayload();
      v31 = type metadata accessor for AirDropAskRequestView();
      v32 = (v30 + v31[5]);
      type metadata accessor for AirDropTransferSession();
      sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession);
      *v32 = ObservedObject.init(wrappedValue:)();
      v32[1] = v33;
      *(v30 + v31[6]) = v28;
      v34 = v31[7];
      *(v30 + v34) = [objc_allocWithZone(UIColor) initWithRed:0.043 green:0.608 blue:1.0 alpha:1.0];
      v35 = v31[8];
      if (qword_100172140 != -1)
      {
        swift_once();
      }

      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      *(v30 + v35) = v115;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v36 = v115;
      v37 = v30 + *(v26 + 36);
      *v37 = v28;
      *(v37 + 8) = v36;
      *(v37 + 16) = 1;
      v38 = &qword_100172FA0;
      v39 = &qword_100118D98;
      sub_100007BA4(v30, v94, &qword_100172FA0, &qword_100118D98);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100173000, &qword_100118E70);
      sub_100018FCC();
      sub_10001926C();
      v40 = v96;
      _ConditionalContent<>.init(storage:)();
      sub_100007BA4(v40, v99, &qword_100172FC0, &qword_100118DB8);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100173050, &qword_100118E80);
      sub_100018F40();
      sub_100019328();
      v41 = v100;
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v40, &qword_100172FC0, &qword_100118DB8);
      sub_100007BA4(v41, v105, &qword_100172FC8, &unk_100118DC0);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100172FE0, &qword_100118E68);
      sub_100018EB4();
      sub_10001918C();
      _ConditionalContent<>.init(storage:)();
      sub_1000159AC(v41, &qword_100172FC8, &unk_100118DC0);
      v42 = v30;
      return sub_1000159AC(v42, v38, v39);
    }

    v64 = sub_1000186AC();
    sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);
    if (v64)
    {
      sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);
      v65 = *(v101 + 16);
      type metadata accessor for AirDropTransferSession();
      sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession);
      v66 = ObservedObject.init(wrappedValue:)();
      v68 = v67;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v109 = v66;
      v110 = v68;
      v111 = v65;
      v112 = v65;
      v113 = v115;
      v69 = 1;
LABEL_14:
      v114 = v69;

      sub_1000077C8(&qword_100173060, &qword_100118E88);
      sub_1000077C8(&qword_100173010, &qword_100118E78);
      sub_1000193B4();
      sub_100019058();
      _ConditionalContent<>.init(storage:)();
      v83 = v117;
      v84 = v118;
      v85 = v119;
      v86 = v116;
      v87 = v99;
      *v99 = v115;
      v87[1] = v86;
      *(v87 + 4) = v83;
      *(v87 + 40) = v84;
      *(v87 + 41) = v85;
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100173050, &qword_100118E80);
      sub_100018F40();
      sub_100019328();
      v88 = v100;
      _ConditionalContent<>.init(storage:)();
      v38 = &qword_100172FC8;
      v39 = &unk_100118DC0;
      sub_100007BA4(v88, v105, &qword_100172FC8, &unk_100118DC0);
      swift_storeEnumTagMultiPayload();
      sub_1000077C8(&qword_100172FE0, &qword_100118E68);
      sub_100018EB4();
      sub_10001918C();
      _ConditionalContent<>.init(storage:)();

      v42 = v88;
      return sub_1000159AC(v42, v38, v39);
    }

    v78 = sub_100018CF8();
    sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);
    v79 = *(v101 + 16);
    type metadata accessor for AirDropTransferSession();
    sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession);
    v80 = ObservedObject.init(wrappedValue:)();
    v82 = v81;
    swift_getKeyPath();
    swift_getKeyPath();
    if (v78)
    {
      static Published.subscript.getter();

      v109 = v80;
      v110 = v82;
      v111 = v79;
      v112 = v79;
      v113 = v115;
      v69 = 257;
      goto LABEL_14;
    }

    static Published.subscript.getter();

    v89 = v115;
    v90 = v105;
    *v105 = v80;
    v90[1] = v82;
    *(v90 + 16) = v79;
    *(v90 + 24) = v79;
    v90[4] = v89;
    *(v90 + 40) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100172FE0, &qword_100118E68);
    sub_100018EB4();
    sub_10001918C();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);

    v44 = v107;
    v43 = v108;
    (*(v107 + 32))(v24, v17, v108);
    v45 = *(v44 + 16);
    v46 = v93;
    v92 = v24;
    v45(v93, v24, v43);
    v47 = (*(v44 + 88))(v46, v43);
    v48 = enum case for SFAirDropSend.Transfer.State.transferFailed(_:);
    sub_1000159AC(&v120, &qword_100172FD8, &qword_100118E18);
    if (v47 == v48)
    {
      (*(v107 + 96))(v46, v108);
      v49 = *(sub_1000077C8(&qword_100172F20, &qword_100118F10) + 48);
      v50 = v46;
      v51 = *(v101 + 16);
      type metadata accessor for AirDropTransferSession();
      sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession);
      v52 = ObservedObject.init(wrappedValue:)();
      v54 = v53;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v109 = v52;
      v110 = v54;
      v111 = v51;
      v112 = v51;
      v113 = v115;
      v114 = 1;
      sub_1000077C8(&qword_100173010, &qword_100118E78);
      sub_1000077C8(&qword_100172FE0, &qword_100118E68);
      sub_100019058();
      sub_10001918C();
      _ConditionalContent<>.init(storage:)();
      v56 = *(&v115 + 1);
      v55 = v115;
      v58 = *(&v116 + 1);
      v57 = v116;
      v59 = v117;
      v60 = v118;
      v61 = v119;
      sub_1000194C4();
      v62 = type metadata accessor for SFAirDropSend.Failure();
      (*(*(v62 - 8) + 8))(&v50[v49], v62);
      v63 = type metadata accessor for SFAirDropSend.Transfer.Metrics();
      (*(*(v63 - 8) + 8))(v50, v63);
    }

    else
    {
      v70 = *(v101 + 16);
      type metadata accessor for AirDropTransferSession();
      sub_100019A10(&qword_100173460, type metadata accessor for AirDropTransferSession);
      v71 = ObservedObject.init(wrappedValue:)();
      v73 = v72;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      v109 = v71;
      v110 = v73;
      v111 = v70;
      v112 = v70;
      v113 = v115;
      v114 = 257;
      sub_1000077C8(&qword_100173010, &qword_100118E78);
      sub_1000077C8(&qword_100172FE0, &qword_100118E68);
      sub_100019058();
      sub_10001918C();
      _ConditionalContent<>.init(storage:)();
      v56 = *(&v115 + 1);
      v55 = v115;
      v58 = *(&v116 + 1);
      v57 = v116;
      v59 = v117;
      v60 = v118;
      v61 = v119;
      sub_1000194C4();
      (*(v107 + 8))(v46, v108);
    }

    v91[1] = v61;
    v93 = v56;
    v101 = v57;
    v74 = v94;
    *v94 = v55;
    v74[1] = v56;
    v74[2] = v57;
    v74[3] = v58;
    v74[4] = v59;
    *(v74 + 40) = v60;
    *(v74 + 41) = v61;
    swift_storeEnumTagMultiPayload();
    sub_1000194C4();
    sub_1000077C8(&qword_100173000, &qword_100118E70);
    sub_100018FCC();
    sub_10001926C();
    v75 = v96;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v75, v99, &qword_100172FC0, &qword_100118DB8);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100173050, &qword_100118E80);
    sub_100018F40();
    sub_100019328();
    v76 = v100;
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v75, &qword_100172FC0, &qword_100118DB8);
    sub_100007BA4(v76, v105, &qword_100172FC8, &unk_100118DC0);
    swift_storeEnumTagMultiPayload();
    sub_1000077C8(&qword_100172FE0, &qword_100118E68);
    sub_100018EB4();
    sub_10001918C();
    _ConditionalContent<>.init(storage:)();
    sub_1000194CC();
    sub_1000194CC();
    sub_1000159AC(v76, &qword_100172FC8, &unk_100118DC0);
    return (*(v107 + 8))(v92, v108);
  }
}

uint64_t sub_100017BBC@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v76) = a3;
  LODWORD(v80) = a2;
  v77 = a1;
  v78 = a4;
  v79 = sub_1000077C8(&qword_1001730A0, &qword_100119028);
  v4 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v74 = &v60 - v5;
  v71 = sub_1000077C8(&qword_1001730A8, &qword_100119030);
  v6 = *(*(v71 - 8) + 64);
  v7 = __chkstk_darwin(v71);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v67 = &v60 - v9;
  v10 = type metadata accessor for DynamicTypeSize();
  v75 = *(v10 - 8);
  v11 = *(v75 + 64);
  v12 = __chkstk_darwin(v10);
  v73 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v60 - v14;
  v69 = sub_1000077C8(&qword_1001730B0, &qword_100119038);
  v16 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v68 = &v60 - v17;
  v18 = sub_1000077C8(&qword_1001730B8, &qword_100119040);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v72 = &v60 - v20;
  v21 = sub_1000077C8(&qword_1001730C0, &qword_100119048);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v60 - v23;
  v25 = sub_1000077C8(&qword_1001730C8, &qword_100119050);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v60 - v27;
  v29 = sub_1000077C8(&qword_1001730D0, &qword_100119058);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v60 - v31;
  v33 = sub_1000077C8(&qword_1001730D8, &qword_100119060);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33);
  v37 = &v60 - v36;
  if (v80)
  {
    v38 = v35;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v39 = sub_1000077C8(&qword_1001730E0, &qword_100119068);
    (*(*(v39 - 8) + 16))(v37, v77, v39);
    v40 = &v37[*(sub_1000077C8(&qword_100173100, &qword_100119070) + 36)];
    v41 = v82;
    *v40 = v81;
    *(v40 + 1) = v41;
    *(v40 + 2) = v83;
    *&v37[*(v38 + 36)] = 256;
    sub_100007BA4(v37, v28, &qword_1001730D8, &qword_100119060);
    swift_storeEnumTagMultiPayload();
    sub_10001971C();
    sub_10001986C();
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v32, v24, &qword_1001730D0, &qword_100119058);
    swift_storeEnumTagMultiPayload();
    sub_100019690();
    sub_1000197C8(&qword_100173120, &qword_1001730A0, &qword_100119028);
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v32, &qword_1001730D0, &qword_100119058);
    v42 = v37;
    v43 = &qword_1001730D8;
    v44 = &qword_100119060;
    return sub_1000159AC(v42, v43, v44);
  }

  v62 = v28;
  v63 = v25;
  v61 = v18;
  v64 = v32;
  v66 = v21;
  v80 = v29;
  v65 = v24;
  if ((v76 & 1) == 0)
  {
    v58 = sub_1000077C8(&qword_1001730E0, &qword_100119068);
    v59 = v74;
    (*(*(v58 - 8) + 16))(v74, v77, v58);
    *(v59 + *(v79 + 36)) = 256;
    sub_100007BA4(v59, v65, &qword_1001730A0, &qword_100119028);
    swift_storeEnumTagMultiPayload();
    sub_100019690();
    sub_1000197C8(&qword_100173120, &qword_1001730A0, &qword_100119028);
    _ConditionalContent<>.init(storage:)();
    v42 = v59;
    v43 = &qword_1001730A0;
    v44 = &qword_100119028;
    return sub_1000159AC(v42, v43, v44);
  }

  v76 = v35;
  v45 = v75;
  v46 = *(v75 + 104);
  v46(v15, enum case for DynamicTypeSize.xSmall(_:), v10);
  v47 = v73;
  v46(v73, enum case for DynamicTypeSize.large(_:), v10);
  sub_100019A10(&qword_100173128, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v49 = *(v45 + 32);
    v50 = v67;
    v49(v67, v15, v10);
    v51 = v71;
    v49((v50 + *(v71 + 48)), v47, v10);
    v52 = v70;
    sub_100007BA4(v50, v70, &qword_1001730A8, &qword_100119030);
    v53 = *(v51 + 48);
    v54 = v68;
    v49(v68, v52, v10);
    v55 = *(v45 + 8);
    v55(v52 + v53, v10);
    sub_100019A58(v50, v52);
    v49((v54 + *(v69 + 36)), (v52 + *(v51 + 48)), v10);
    v55(v52, v10);
    sub_1000077C8(&qword_1001730E0, &qword_100119068);
    sub_1000199C8(&qword_100173108, &qword_1001730E0, &qword_100119068);
    sub_1000199C8(&qword_100173118, &qword_1001730B0, &qword_100119038);
    v56 = v72;
    View.dynamicTypeSize<A>(_:)();
    sub_1000159AC(v54, &qword_1001730B0, &qword_100119038);
    *(v56 + *(v61 + 36)) = 256;
    sub_100007BA4(v56, v62, &qword_1001730B8, &qword_100119040);
    swift_storeEnumTagMultiPayload();
    sub_10001971C();
    sub_10001986C();
    v57 = v64;
    _ConditionalContent<>.init(storage:)();
    sub_100007BA4(v57, v65, &qword_1001730D0, &qword_100119058);
    swift_storeEnumTagMultiPayload();
    sub_100019690();
    sub_1000197C8(&qword_100173120, &qword_1001730A0, &qword_100119028);
    _ConditionalContent<>.init(storage:)();
    sub_1000159AC(v57, &qword_1001730D0, &qword_100119058);
    return sub_1000159AC(v56, &qword_1001730B8, &qword_100119040);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000185E4(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.dynamicTypeSize.setter();
}

uint64_t sub_1000186AC()
{
  v0 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000194DC();
  v5 = static NSUserDefaults.airdrop.getter();
  v6 = SFAirDropUserDefaults.moveToAppEnabled.getter();

  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v7 = (*(v1 + 88))(v4, v0);
    if (v7 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:) || v7 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenDestinationResponse(_:))
    {
      (*(v1 + 96))(v4, v0);
      v8 = sub_1000077C8(&qword_100173078, &unk_100118F60);
      v9 = *&v4[v8[12]];

      v10 = *&v4[v8[16]];

      v11 = v8[20];
      v12 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
      (*(*(v12 - 8) + 8))(&v4[v11], v12);
      v13 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v13 - 8) + 8))(v4, v13);
      return 1;
    }

    (*(v1 + 8))(v4, v0);
  }

  return 0;
}

uint64_t sub_1000188F0()
{
  v0 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v25 - v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v8 = (*(v1 + 88))(v7, v0);
  if (v8 == enum case for SFAirDropReceive.Transfer.State.waitingForShareContactPermissionResponse(_:))
  {
    (*(v1 + 96))(v7, v0);
    v9 = &unk_100173088;
    v10 = &unk_10011C520;
  }

  else
  {
    if (v8 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:))
    {
      (*(v1 + 96))(v7, v0);
      v16 = sub_1000077C8(&qword_100173CE0, &qword_100118F90);
      v17 = *&v7[*(v16 + 48)];

      v18 = *(v16 + 64);
      v19 = sub_1000077C8(&unk_100173CB0, &unk_10011AE50);
      (*(*(v19 - 8) + 8))(&v7[v18], v19);
      v15 = type metadata accessor for SFAirDropReceive.ItemDestination();
      goto LABEL_7;
    }

    if (v8 == enum case for SFAirDropReceive.Transfer.State.waitingForShouldImportContactResponse(_:))
    {
      (*(v1 + 96))(v7, v0);
      v11 = *(sub_1000077C8(&qword_100173080, &unk_100118F80) + 48);
      v12 = &unk_100173CB0;
      v13 = &unk_10011AE50;
      goto LABEL_4;
    }

    if (v8 != enum case for SFAirDropReceive.Transfer.State.waitingForContactShareBackResponse(_:))
    {
      (*(v1 + 8))(v7, v0);
      v20 = 0;
      goto LABEL_8;
    }

    (*(v1 + 96))(v7, v0);
    v9 = &unk_100174FD0;
    v10 = &unk_100118F70;
  }

  v11 = *(sub_1000077C8(v9, v10) + 48);
  v12 = &unk_100174F80;
  v13 = &unk_10011AE60;
LABEL_4:
  v14 = sub_1000077C8(v12, v13);
  (*(*(v14 - 8) + 8))(&v7[v11], v14);
  v15 = type metadata accessor for SFAirDrop.ContactInfo();
LABEL_7:
  (*(*(v15 - 8) + 8))(v7, v15);
  v20 = 1;
LABEL_8:
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v21 = SFAirDropReceive.Transfer.State.sfTransferState.getter();
  (*(v1 + 8))(v5, v0);
  if ((v20 & 1) != 0 || v21 == 1)
  {
    sub_1000194DC();
    v23 = static NSUserDefaults.airdrop.getter();
    v22 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_100018CF8()
{
  v0 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = SFAirDropReceive.Transfer.State.sfTransferState.getter();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5 == 3 || (swift_getKeyPath(), swift_getKeyPath(), static Published.subscript.getter(), , , v7 = SFAirDropReceive.Transfer.State.sfTransferState.getter(), v6(v4, v0), v7 == 9))
  {
    sub_1000194DC();
    v8 = static NSUserDefaults.airdrop.getter();
    v9 = SFAirDropUserDefaults.systemLevelProgressEnabled.getter();
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_100018EB4()
{
  result = qword_100172FE8;
  if (!qword_100172FE8)
  {
    sub_100007CCC(&qword_100172FC8, &unk_100118DC0);
    sub_100018F40();
    sub_100019328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172FE8);
  }

  return result;
}

unint64_t sub_100018F40()
{
  result = qword_100172FF0;
  if (!qword_100172FF0)
  {
    sub_100007CCC(&qword_100172FC0, &qword_100118DB8);
    sub_100018FCC();
    sub_10001926C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172FF0);
  }

  return result;
}

unint64_t sub_100018FCC()
{
  result = qword_100172FF8;
  if (!qword_100172FF8)
  {
    sub_100007CCC(&qword_100173000, &qword_100118E70);
    sub_100019058();
    sub_10001918C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100172FF8);
  }

  return result;
}

unint64_t sub_100019058()
{
  result = qword_100173008;
  if (!qword_100173008)
  {
    sub_100007CCC(&qword_100173010, &qword_100118E78);
    sub_1000190E4();
    sub_100019138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173008);
  }

  return result;
}

unint64_t sub_1000190E4()
{
  result = qword_100173018;
  if (!qword_100173018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173018);
  }

  return result;
}

unint64_t sub_100019138()
{
  result = qword_100173020;
  if (!qword_100173020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173020);
  }

  return result;
}

unint64_t sub_10001918C()
{
  result = qword_100173028;
  if (!qword_100173028)
  {
    sub_100007CCC(&qword_100172FE0, &qword_100118E68);
    sub_100019218();
    sub_100019138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173028);
  }

  return result;
}

unint64_t sub_100019218()
{
  result = qword_100173030;
  if (!qword_100173030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173030);
  }

  return result;
}

unint64_t sub_10001926C()
{
  result = qword_100173038;
  if (!qword_100173038)
  {
    sub_100007CCC(&qword_100172FA0, &qword_100118D98);
    sub_100019A10(&qword_100173040, type metadata accessor for AirDropAskRequestView);
    sub_100019138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173038);
  }

  return result;
}

unint64_t sub_100019328()
{
  result = qword_100173048;
  if (!qword_100173048)
  {
    sub_100007CCC(&qword_100173050, &qword_100118E80);
    sub_1000193B4();
    sub_100019058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173048);
  }

  return result;
}

unint64_t sub_1000193B4()
{
  result = qword_100173058;
  if (!qword_100173058)
  {
    sub_100007CCC(&qword_100173060, &qword_100118E88);
    sub_100019440();
    sub_100019138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173058);
  }

  return result;
}

unint64_t sub_100019440()
{
  result = qword_100173068;
  if (!qword_100173068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100173068);
  }

  return result;
}

unint64_t sub_1000194DC()
{
  result = qword_100172F70;
  if (!qword_100172F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100172F70);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for PlatterEnvironmentModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PlatterEnvironmentModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[17])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatterEnvironmentModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}