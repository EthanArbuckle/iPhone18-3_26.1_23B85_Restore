CFStringRef CreateXMPGPSCoordinateFromCFValue(CFStringRef result, const __CFString *a2, int a3)
{
  valuePtr = 0.0;
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID())
    {
      if (CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr))
      {
        if (a2)
        {
LABEL_5:
          if (a3)
          {
            v7 = CFStringCompare(a2, @"N", 0) == kCFCompareEqualTo;
            LODWORD(v8) = 83;
            v9 = 78;
          }

          else
          {
            v7 = CFStringCompare(a2, @"E", 0) == kCFCompareEqualTo;
            LODWORD(v8) = 87;
            v9 = 69;
          }

          if (v7)
          {
            v8 = v9;
          }

          else
          {
            v8 = v8;
          }

LABEL_23:
          valuePtr = fabs(valuePtr);
          return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%d,%lg%c", valuePtr, (valuePtr - valuePtr) * 60.0, v8, *&valuePtr);
        }

LABEL_9:
        if (valuePtr < 0.0)
        {
          LODWORD(v8) = 87;
        }

        else
        {
          LODWORD(v8) = 69;
        }

        if (valuePtr < 0.0)
        {
          v11 = 83;
        }

        else
        {
          v11 = 78;
        }

        if (a3)
        {
          v8 = v11;
        }

        else
        {
          v8 = v8;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v10 = CFGetTypeID(v5);
      if (v10 == CFStringGetTypeID())
      {
        valuePtr = CFStringGetDoubleValue(v5);
        if (a2)
        {
          goto LABEL_5;
        }

        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

uint64_t GetLegacyGPSFromXMPGPSCoordinate(void *a1, double *a2, _BYTE *a3)
{
  IIOString::IIOString(v17, a1);
  UTF8String = IIOString::createUTF8String(v17);
  IIOString::~IIOString(v17);
  v16 = 0;
  v17[0] = 0;
  v15 = 0.0;
  v14 = 0;
  v13 = 0;
  if (UTF8String)
  {
    v6 = sscanf(UTF8String, "%d,%2d,%2d%1[NSEW]", &v16 + 4, &v16, &v14, &v13);
    if (v6 <= 2)
    {
      v10 = sscanf(UTF8String, "%d,%lf%1[NSEW]", &v16 + 4, &v15, &v13);
      if (v10 < 2)
      {
        v11 = sscanf(UTF8String, "%lf", v17);
        v9 = 0;
        if (!a2 || v11 != 1)
        {
          goto LABEL_16;
        }

        v7 = 0;
        *a2 = *v17;
        goto LABEL_15;
      }

      if (a2)
      {
        *a2 = v15 / 60.0 + SHIDWORD(v16);
        v7 = v13;
        v8 = v10 == 3;
LABEL_9:
        if (!v8)
        {
          v7 = 0;
        }

LABEL_15:
        *a3 = v7;
        v9 = 1;
        goto LABEL_16;
      }
    }

    else if (a2)
    {
      *a2 = v16 / 60.0 + SHIDWORD(v16) + v14 / 3600.0;
      v7 = v13;
      v8 = v6 == 4;
      goto LABEL_9;
    }

    v9 = 0;
LABEL_16:
    free(UTF8String);
    return v9;
  }

  return 0;
}

void sub_18609463C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void CGImageMetadataCreateAndLogUTF8Error(const char *a1, int a2, int a3, char *a4, CFErrorRef *a5)
{
  userInfoKeys[1] = *MEMORY[0x1E69E9840];
  LogError(a1, a2, a4);
  if (a5)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a4, 0x8000100u);
    if (v9)
    {
      v10 = v9;
      v11 = *MEMORY[0x1E695E620];
      userInfoValues = v9;
      userInfoKeys[0] = v11;
      *a5 = CFErrorCreateWithUserInfoKeysAndValues(v8, @"kCFErrorDomainCGImageMetadata", a3, userInfoKeys, &userInfoValues, 1);
      CFRelease(v10);
    }
  }
}

void CGImageMetadataCreateAndLogError(const char *a1, int a2, void *a3, CFErrorRef *a4)
{
  userInfoValues[1] = *MEMORY[0x1E69E9840];
  IIOString::IIOString(userInfoKeys, a3);
  UTF8String = IIOString::createUTF8String(userInfoKeys);
  IIOString::~IIOString(userInfoKeys);
  if (UTF8String)
  {
    LogError(a1, 0, UTF8String);
    free(UTF8String);
  }

  if (a4)
  {
    userInfoKeys[0] = *MEMORY[0x1E695E620];
    userInfoValues[0] = a3;
    *a4 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], @"kCFErrorDomainCGImageMetadata", a2, userInfoKeys, userInfoValues, 1);
  }
}

void sub_18609481C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

CFStringRef CreateIPTCDateFromExifDateTime(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v5, 0, sizeof(v5));
  v1 = IIOString::IIOString(v5, a1);
  v2 = IIOString::utf8String(v1);
  if (strlen(v2) == 19)
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%c%c%c%c%c%c%c%c", *v2, v2[1], v2[2], v2[3], v2[5], v2[6], v2[8], v2[9]);
  }

  else
  {
    v3 = 0;
  }

  IIOString::~IIOString(v5);
  return v3;
}

CFStringRef CreateIPTCTimeFromExifDateTime(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  memset(v5, 0, sizeof(v5));
  v1 = IIOString::IIOString(v5, a1);
  v2 = IIOString::utf8String(v1);
  if (strlen(v2) == 19)
  {
    v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%c%c%c%c%c%c", SBYTE3(v2->info), SBYTE4(v2->info), SBYTE6(v2->info), SHIBYTE(v2->info), SBYTE1(v2->data), SBYTE2(v2->data));
  }

  else
  {
    v3 = 0;
  }

  IIOString::~IIOString(v5);
  return v3;
}

CFStringRef CreateXMPDateFromXMPDateTimeAndSubsecTime(const __CFString *a1, uint64_t a2)
{
  v3 = 0;
  *v7 = 0;
  if (a1 && a2)
  {
    memset(&v8, 0, sizeof(v8));
    if (GetDateTimeStructFromXMPDateTimeString(a1, &v8, &v7[1], v7) && v7[1])
    {
      if (!v7[0])
      {
        return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%04d-%02d-%02dT%02d:%02d:%02d.%@", (v8.tm_year + 1900), (v8.tm_mon + 1), v8.tm_mday, v8.tm_hour, v8.tm_min, v8.tm_sec, a2);
      }

      LODWORD(v5) = v8.tm_gmtoff % 3600 / 60;
      if (v5 >= 0)
      {
        v5 = v5;
      }

      else
      {
        v5 = (v8.tm_gmtoff % 3600 / -60);
      }

      return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%04d-%02d-%02dT%02d:%02d:%02d.%@%+03d:%02d", (v8.tm_year + 1900), (v8.tm_mon + 1), v8.tm_mday, v8.tm_hour, v8.tm_min, v8.tm_sec, a2, v8.tm_gmtoff / 3600, v5);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void AddMWGRegionsFromExifAuxRegions(CGImageMetadata *a1, IIODictionary *this)
{
  v57 = *MEMORY[0x1E69E9840];
  if (this)
  {
    ObjectForKey = IIODictionary::getObjectForKey(this, @"HeightAppliedTo");
    v5 = IIODictionary::getObjectForKey(this, @"WidthAppliedTo");
    v6 = IIODictionary::getObjectForKey(this, @"RegionList");
    if (ObjectForKey)
    {
      if (v5)
      {
        v7 = v6;
        if (v6)
        {
          if (CFArrayGetCount(v6) >= 1)
          {
            memset(v50, 0, sizeof(v50));
            IIOArray::IIOArray(v50, v7);
            CGImageMetadataRegisterNamespaceForPrefix(a1, @"http://www.metadataworkinggroup.com/schemas/regions/", @"mwg-rs", 0);
            CGImageMetadataRegisterNamespaceForPrefix(a1, @"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", 0);
            CGImageMetadataRegisterNamespaceForPrefix(a1, @"http://ns.adobe.com/xap/1.0/sType/Dimensions#", @"stDim", 0);
            CGImageMetadataSetValueWithPath(a1, 0, @"mwg-rs:Regions.AppliedToDimensions.stDim:h", ObjectForKey);
            CGImageMetadataSetValueWithPath(a1, 0, @"mwg-rs:Regions.AppliedToDimensions.stDim:w", v5);
            CGImageMetadataSetValueWithPath(a1, 0, @"mwg-rs:Regions.AppliedToDimensions.stDim:unit", @"pixel");
            Count = IIOArray::getCount(v50);
            if (Count)
            {
              v9 = 0;
              alloc = *MEMORY[0x1E695E480];
              v48 = Count;
              metadata = a1;
              while (1)
              {
                ObjectAtIndex = IIOArray::getObjectAtIndex(v50, v9);
                v11 = ObjectAtIndex;
                if (!ObjectAtIndex)
                {
                  goto LABEL_70;
                }

                v12 = CFGetTypeID(ObjectAtIndex);
                if (v12 != CFDictionaryGetTypeID())
                {
                  goto LABEL_70;
                }

                memset(v49, 0, sizeof(v49));
                IIODictionary::IIODictionary(v49, v11);
                v13 = IIODictionary::getObjectForKey(v49, @"X");
                v14 = IIODictionary::getObjectForKey(v49, @"Y");
                v15 = IIODictionary::getObjectForKey(v49, @"Width");
                v16 = IIODictionary::getObjectForKey(v49, @"Height");
                if (v13)
                {
                  if (v14)
                  {
                    if (v15)
                    {
                      v17 = v16;
                      if (v16)
                      {
                        v18 = CFStringCreateWithFormat(alloc, 0, @"[%ld]", v9);
                        if (v18)
                        {
                          break;
                        }
                      }
                    }
                  }
                }

LABEL_69:
                IIODictionary::~IIODictionary(v49);
LABEL_70:
                if (v48 == ++v9)
                {
                  goto LABEL_71;
                }
              }

              v19 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"x", kCGImageMetadataTypeString, v13);
              v20 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"y", kCGImageMetadataTypeString, v14);
              v21 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"w", kCGImageMetadataTypeString, v15);
              v22 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"h", kCGImageMetadataTypeString, v17);
              v23 = CGImageMetadataTagCreate(@"http://ns.adobe.com/xmp/sType/Area#", @"stArea", @"unit", kCGImageMetadataTypeString, @"normalized");
              v24 = v23;
              if (v19 && v20 && v21 && v22 && v23)
              {
                *keys = xmmword_1E6F0BC28;
                v55 = *off_1E6F0BC38;
                v56 = @"unit";
                values[0] = v19;
                values[1] = v20;
                values[2] = v21;
                values[3] = v22;
                values[4] = v23;
                v25 = CFDictionaryCreate(alloc, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v25)
                {
                  v26 = CGImageMetadataTagCreate(@"http://www.metadataworkinggroup.com/schemas/regions/", @"mwg-rs", @"Area", kCGImageMetadataTypeStructure, v25);
                  cf = v26;
                  if (v26)
                  {
                    v51 = v26;
                    v52 = @"Area";
                    v27 = CFDictionaryCreate(alloc, &v52, &v51, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    if (v27)
                    {
                      v28 = CGImageMetadataTagCreate(@"http://www.metadataworkinggroup.com/schemas/regions/", @"mwg-rs", v18, kCGImageMetadataTypeStructure, v27);
                      CFRelease(v27);
                    }

                    else
                    {
                      v28 = 0;
                    }

                    CFRelease(cf);
                  }

                  else
                  {
                    v28 = 0;
                  }

                  CFRelease(v25);
                }

                else
                {
                  v28 = 0;
                }
              }

              else
              {
                v28 = 0;
                v29 = 0;
                if (!v19)
                {
                  goto LABEL_32;
                }
              }

              CFRelease(v19);
              v29 = v28;
LABEL_32:
              if (v20)
              {
                CFRelease(v20);
              }

              if (v21)
              {
                CFRelease(v21);
              }

              if (v22)
              {
                CFRelease(v22);
              }

              if (v24)
              {
                CFRelease(v24);
              }

              CFRelease(v18);
              if (v29)
              {
                v30 = IIODictionary::getObjectForKey(v49, @"Type");
                v31 = v30;
                if (v30 && (CFStringCompare(v30, @"Face", 0) == kCFCompareEqualTo || CFStringCompare(v31, @"Pet", 0) == kCFCompareEqualTo || CFStringCompare(v31, @"Focus", 0) == kCFCompareEqualTo || CFStringCompare(v31, @"BarCode", 0) == kCFCompareEqualTo || CFStringCompare(v31, @"CleanAperture", 0) == kCFCompareEqualTo))
                {
                  CGImageMetadataSetValueWithPath(metadata, v29, @"mwg-rs:Type", v31);
                }

                v32 = IIODictionary::getObjectForKey(v49, @"Timestamp");
                v33 = IIODictionary::getObjectForKey(v49, @"AngleInfoYaw");
                v34 = IIODictionary::getObjectForKey(v49, @"AngleInfoRoll");
                v35 = IIODictionary::getObjectForKey(v49, @"ConfidenceLevel");
                v36 = IIODictionary::getObjectForKey(v49, @"FaceID");
                Mutable = CFDictionaryCreateMutable(alloc, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (Mutable)
                {
                  if (v32)
                  {
                    v38 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"Timestamp", kCGImageMetadataTypeString, v32);
                    if (v38)
                    {
                      CFDictionarySetValue(Mutable, @"Timestamp", v38);
                      CFRelease(v38);
                    }
                  }

                  if (v33)
                  {
                    v39 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"AngleInfoYaw", kCGImageMetadataTypeString, v33);
                    if (v39)
                    {
                      CFDictionarySetValue(Mutable, @"AngleInfoYaw", v39);
                      CFRelease(v39);
                    }
                  }

                  if (v34)
                  {
                    v40 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"AngleInfoRoll", kCGImageMetadataTypeString, v34);
                    if (v40)
                    {
                      CFDictionarySetValue(Mutable, @"AngleInfoRoll", v40);
                      CFRelease(v40);
                    }
                  }

                  if (v35)
                  {
                    v41 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"ConfidenceLevel", kCGImageMetadataTypeString, v35);
                    if (v41)
                    {
                      CFDictionarySetValue(Mutable, @"ConfidenceLevel", v41);
                      CFRelease(v41);
                    }
                  }

                  if (v36)
                  {
                    v42 = CGImageMetadataTagCreate(@"http://ns.apple.com/faceinfo/1.0/", @"apple-fi", @"FaceID", kCGImageMetadataTypeString, v36);
                    if (v42)
                    {
                      CFDictionarySetValue(Mutable, @"FaceID", v42);
                      CFRelease(v42);
                    }
                  }

                  v43 = CGImageMetadataTagCreate(@"http://www.metadataworkinggroup.com/schemas/regions/", @"mwg-rs", @"Extensions", kCGImageMetadataTypeStructure, Mutable);
                  CFRelease(Mutable);
                  if (v43)
                  {
                    CGImageMetadataSetTagWithPath(metadata, v29, @"mwg-rs:Extensions", v43);
                    CFRelease(v43);
                  }
                }

                v44 = CFStringCreateWithFormat(alloc, 0, @"mwg-rs:Regions.RegionList[%ld]", v9);
                if (v44)
                {
                  CGImageMetadataSetTagWithPath(metadata, 0, v44, v29);
                  CFRelease(v44);
                }

                CFRelease(v29);
              }

              goto LABEL_69;
            }

LABEL_71:
            IIOArray::~IIOArray(v50);
          }
        }
      }
    }
  }
}

void sub_1860952F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IIOArray::~IIOArray(va);
  _Unwind_Resume(a1);
}

void ___ZL24IIOXPCDecodeMetadataTagsP8IIOArrayP15CGImageMetadata_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  memset(v4, 0, sizeof(v4));
  IIODictionary::IIODictionary(v4, a2);
  v3 = IIOXPCDecodeCGImageMetadataTag(v4);
  if (v3)
  {
    CGImageMetadataAddTag(*(a1 + 32), v3);
    CFRelease(v3);
  }

  IIODictionary::~IIODictionary(v4);
}

void sub_1860953BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

CGImageMetadataTagRef IIOXPCDecodeCGImageMetadataTag(IIODictionary *a1)
{
  ObjectForKey = IIODictionary::getObjectForKey(a1, @"nameSpace");
  v3 = IIODictionary::getObjectForKey(a1, @"prefix");
  v4 = IIODictionary::getObjectForKey(a1, @"name");
  Uint32ForKey = IIODictionary::getUint32ForKey(a1, @"metadataType");
  v6 = IIODictionary::getObjectForKey(a1, @"value");
  v7 = v6;
  if (Uint32ForKey > kCGImageMetadataTypeString)
  {
    if (v6)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v7))
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2000000000;
        operator new();
      }

      v10 = CFDictionaryGetTypeID();
      if (v10 == CFGetTypeID(v7))
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2000000000;
        operator new();
      }
    }

    return 0;
  }

  else
  {
    v8 = CGImageMetadataTagCreate(ObjectForKey, v3, v4, Uint32ForKey, v6);
    if (v8)
    {
      v11 = IIODictionary::getUint32ForKey(a1, @"sourceType");
      CGImageMetadataTagSetSource(v8, v11);
      v12 = IIODictionary::getObjectForKey(a1, @"qualifiers");
      if (v12)
      {
        v13 = v12;
        Source = CGImageSourceGetSource(v8);
        if (Source)
        {
          *(Source + 56) = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v13);
        }
      }
    }
  }

  return v8;
}

void ___ZL30IIOXPCDecodeCGImageMetadataTagP13IIODictionary_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  memset(v4, 0, sizeof(v4));
  IIODictionary::IIODictionary(v4, a2);
  v3 = IIOXPCDecodeCGImageMetadataTag(v4);
  if (v3)
  {
    IIOArray::addObject(*(*(*(a1 + 32) + 8) + 24), v3);
    CFRelease(v3);
  }

  IIODictionary::~IIODictionary(v4);
}

void sub_186095818(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void ___ZL30IIOXPCDecodeCGImageMetadataTagP13IIODictionary_block_invoke_2(uint64_t a1, const __CFString *a2, __CFDictionary *a3)
{
  memset(v6, 0, sizeof(v6));
  IIODictionary::IIODictionary(v6, a3);
  v5 = IIOXPCDecodeCGImageMetadataTag(v6);
  if (v5)
  {
    IIODictionary::setObjectForKey(*(*(*(a1 + 32) + 8) + 24), v5, a2);
    CFRelease(v5);
  }

  IIODictionary::~IIODictionary(v6);
}

void sub_1860958AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOXPCEncodeMetadataTag(CGImageMetadataTag *a1, IIOArray *a2)
{
  Source = CGImageSourceGetSource(a1);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  IIODictionary::IIODictionary(&v17);
  IIODictionary::setObjectForKey(v4, *(Source + 16), @"nameSpace");
  IIODictionary::setObjectForKey(&v17, *(Source + 24), @"prefix");
  IIODictionary::setObjectForKey(&v17, *(Source + 32), @"name");
  IIODictionary::setObjectForKey(&v17, *(Source + 56), @"qualifiers");
  v5 = *(Source + 40);
  IIONumber::IIONumber(&v14, v5);
  IIODictionary::setObjectForKey(&v17, v16, @"metadataType");
  IIONumber::~IIONumber(&v14);
  IIONumber::IIONumber(v6, *(Source + 68));
  IIODictionary::setObjectForKey(&v17, v16, @"sourceType");
  IIONumber::~IIONumber(&v14);
  v7 = *(Source + 48);
  if (v5 > 1)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(v7))
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2000000000;
      operator new();
    }

    v9 = CFDictionaryGetTypeID();
    if (v9 == CFGetTypeID(v7))
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x2000000000;
      operator new();
    }

    CFShow(v7);
    v10 = CFGetTypeID(v7);
    v11 = CFCopyTypeIDDescription(v10);
    v12 = IIOString::IIOString(&v14, v11);
    v13 = IIOString::utf8String(v12);
    LogError("IIOXPCEncodeMetadataTag", 127, "*** failed to serialize metadata = %s\n", v13);
    IIOString::~IIOString(&v14);
  }

  else
  {
    IIODictionary::setObjectForKey(&v17, v7, @"value");
  }

  IIOArray::addObject(a2, v18);
  IIODictionary::~IIODictionary(&v17);
}

void sub_186095C80(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 88), 8);
  IIODictionary::~IIODictionary((v1 - 56));
  _Unwind_Resume(a1);
}

void ___ZL23IIOXPCEncodeMetadataTagP18CGImageMetadataTagP8IIOArray_block_invoke(uint64_t a1, CGImageMetadataTag *a2)
{
  TypeID = CGImageMetadataTagGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    v5 = *(*(*(a1 + 32) + 8) + 24);

    IIOXPCEncodeMetadataTag(a2, v5);
  }

  else
  {
    v6 = CFGetTypeID(a2);
    v7 = CFCopyTypeIDDescription(v6);
    IIOString::IIOString(v9, v7);
    v8 = IIOString::utf8String(v9);
    LogError("IIOXPCEncodeMetadataTag_block_invoke", 97, "*** unexpected type in array: %s\n", v8);
    IIOString::~IIOString(v9);
  }
}

void sub_186095DF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ___ZL23IIOXPCEncodeMetadataTagP18CGImageMetadataTagP8IIOArray_block_invoke_2(uint64_t a1, const __CFString *a2, CGImageMetadataTag *a3)
{
  memset(v13, 0, sizeof(v13));
  IIOArray::IIOArray(v13);
  TypeID = CGImageMetadataTagGetTypeID();
  if (TypeID == CFGetTypeID(a3))
  {
    IIOXPCEncodeMetadataTag(a3, v13);
    v7 = *(*(*(a1 + 32) + 8) + 24);
    ObjectAtIndex = IIOArray::getObjectAtIndex(v13, 0);
    IIODictionary::setObjectForKey(v7, ObjectAtIndex, a2);
  }

  else
  {
    v9 = CFGetTypeID(a3);
    v10 = CFCopyTypeIDDescription(v9);
    IIOString::IIOString(v12, v10);
    v11 = IIOString::utf8String(v12);
    LogError("IIOXPCEncodeMetadataTag_block_invoke_2", 117, "*** unexpected type in dictionary: %s\n", v11);
    IIOString::~IIOString(v12);
  }

  IIOArray::~IIOArray(v13);
}

void sub_186095EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IIOString::~IIOString(va);
  IIOArray::~IIOArray(va1);
  _Unwind_Resume(a1);
}

uint64_t ___ZL37CGImageMetadataCreateWithEXIFFilteredPK15CGImageMetadatab_block_invoke(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  Source = CGImageSourceGetSource(a3);
  if (CFStringCompare(*(Source + 24), @"exif", 0) == kCFCompareEqualTo || CFStringCompare(*(Source + 24), @"tiff", 0) == kCFCompareEqualTo || CFStringCompare(*(Source + 24), @"exifEX", 0) == kCFCompareEqualTo)
  {
    CGImageMetadataRemoveTagWithPath(*(a1 + 32), 0, a2);
  }

  return 1;
}

double OUTLINED_FUNCTION_4_6(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24)
{
  result = a24;
  *(v24 - 144) = a24;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return CFStringGetCString(v1, v0, v2 + 1, 0x600u);
}

int32x2_t OUTLINED_FUNCTION_8_0(int32x2_t a1, int32x2_t a2)
{
  result = vadd_s32(a1, a2);
  *(v2 - 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_21_0()
{

  return CFStringGetCString(v1, v0, v2 + 1, 0x600u);
}

size_t myTIFFReadProc(IIOImageReadSession **a1, unsigned __int8 *a2, size_t a3)
{
  if (a1)
  {
    if (a1[2])
    {
      Bytes = IIOImageReadSession::getBytes(a1[2], a2, a3);
LABEL_6:
      v6 = Bytes;
      goto LABEL_8;
    }

    v5 = a1[3];
    if (v5)
    {
      Bytes = IIOImageWriteSession::getBytes(v5, a2, a3);
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_8:
  if (v6 != a3)
  {
    _cg_jpeg_mem_term("myTIFFReadProc", 34, "*** expected: %lld   got: %lld\n", a3, v6);
  }

  return v6;
}

size_t myTIFFWriteProc(void *a1, void *a2, size_t a3)
{
  if (a1 && (v3 = a1[3]) != 0)
  {
    return IIOImageWriteSession::putBytes(v3, a2, a3);
  }

  else
  {
    return 0;
  }
}

IIOImageRead *myTIFFSizeProc(IIOImageReadSession **a1)
{
  if (!a1)
  {
    return 0;
  }

  if (a1[2])
  {
    return IIOImageReadSession::getSize(a1[2]);
  }

  v2 = a1[3];
  if (v2)
  {
    return IIOImageWriteSession::getSize(v2);
  }

  else
  {
    return 0;
  }
}

unint64_t myTIFFSeekProc(IIOImageReadSession **a1, unint64_t a2, int a3)
{
  if (!a1)
  {
    return 0;
  }

  if (a1[2])
  {
    return IIOImageReadSession::seek(a1[2], a2, a3);
  }

  v4 = a1[3];
  if (v4)
  {
    return IIOImageWriteSession::seek(v4, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t myTIFFCloseProc(void *a1)
{
  if (a1)
  {
    (*(*a1 + 8))(a1);
  }

  return 0;
}

void SetupTIFFErrorHandler(void)
{
  if ((IIO_XPCServer() & 1) == 0 && SetupTIFFErrorHandler(void)::setupOnce != -1)
  {
    SetupTIFFErrorHandler();
  }
}

size_t (*___Z21SetupTIFFErrorHandlerv_block_invoke())(const char *a1, const char *a2, va_list a3)
{
  _cg_TIFFSetErrorHandler(0);
  _cg_TIFFSetErrorHandlerExt(IIOErrorHandler);

  return _cg_TIFFSetWarningHandler(IIOWarningHandler);
}

uint64_t IIOErrorHandler(_BYTE *a1, const char *a2, char *a3, char *a4)
{
  result = LogModuleWithArguments(a2, a3, a4);
  if (a2)
  {
    result = strcmp(a2, "ZIPDecode");
    if (result)
    {
      result = strcmp(a2, "PackBitsDecode");
      if (a1 && !result)
      {
        goto LABEL_5;
      }
    }

    else if (a1)
    {
LABEL_5:
      a1[32] = 1;
    }
  }

  if (!a3)
  {
    return result;
  }

  result = strstr(a3, "Bad code word");
  if (result || (result = strstr(a3, "Premature EOL at line")) != 0)
  {
    if (!a1)
    {
      return result;
    }

    goto LABEL_10;
  }

  result = strstr(a3, "Invalid tile byte count");
  if (a1 && result)
  {
LABEL_10:
    a1[32] = 1;
  }

  return result;
}

void IOTiffClientData::IOTiffClientData(IOTiffClientData *this, char a2)
{
  *(this + 34) = a2;
  *this = &unk_1EF4DC4C8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = 0;
}

void GlobalTIFFInfo::GlobalTIFFInfo(GlobalTIFFInfo *this, char a2)
{
  *this = &unk_1EF4DC4E8;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 80) = a2;
}

void GlobalTIFFInfo::GlobalTIFFInfo(GlobalTIFFInfo *this, unsigned __int8 *a2, CFIndex a3)
{
  *this = &unk_1EF4DC4E8;
  *(this + 8) = 0;
  *(this + 1) = 0u;
  v4 = (this + 16);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  buffer = 0;
  *v10 = 0;
  v9 = 0;
  v5 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v6 = v5;
  if (v5)
  {
    if (CFReadStreamOpen(v5))
    {
      if (CFReadStreamRead(v6, &buffer, 1) == 1)
      {
        *(this + 8) = buffer;
        if (CFReadStreamRead(v6, v10, 4) == 4)
        {
          if (!*v10 || (std::vector<unsigned long long>::resize(v4, *v10), v7 = CFReadStreamRead(v6, *v4, 8 * *v10), v7 == 8 * *v10))
          {
            if (CFReadStreamRead(v6, v10, 4) == 4)
            {
              if (!*v10 || (std::vector<unsigned long long>::resize(this + 5, *v10), v8 = CFReadStreamRead(v6, *(this + 5), 8 * *v10), v8 == 8 * *v10))
              {
                if (CFReadStreamRead(v6, &v9, 8) == 8)
                {
                  *(this + 8) = v9;
                  if (CFReadStreamRead(v6, &v9, 8) == 8)
                  {
                    *(this + 9) = v9;
                    if (CFReadStreamRead(v6, &buffer, 1) == 1)
                    {
                      *(this + 80) = buffer;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    CFRelease(v6);
  }
}

void sub_1860965B4(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long long>::resize(void *a1, unint64_t a2)
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
    std::vector<unsigned long long>::__append(a1, a2 - v2);
  }
}

void GlobalTIFFInfo::~GlobalTIFFInfo(GlobalTIFFInfo *this)
{
  *this = &unk_1EF4DC4E8;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }
}

{
  GlobalTIFFInfo::~GlobalTIFFInfo(this);

  JUMPOUT(0x186602850);
}

uint64_t ReleaseTIFFGlobalInfo(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::vector<unsigned long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<unsigned long long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

CFIndex OUTLINED_FUNCTION_2_13@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  a2 = a1;

  return CFWriteStreamWrite(v2, &a2, 8);
}

void IIO_Reader_AI::createReadPlugin()
{
  operator new();
}

{
  operator new();
}

BOOL IIO_Reader_AI::testHeader(int a1, _BYTE *a2, int a3, CFStringRef theString1)
{
  if (!theString1)
  {
    return 0;
  }

  return CFStringCompare(theString1, @"com.adobe.illustrator.ai-image", 0) == kCFCompareEqualTo && *a2 == 37 && a2[1] == 80 && a2[2] == 68 && a2[3] == 70 && a2[4] == 45;
}

uint64_t IIO_Reader_AI::updateSourceProperties(IIO_Reader_AI *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v7 = *(*IIO_ReaderHandler::readerForType(ReaderHandler, 1346651680) + 56);

  return v7();
}

uint64_t IIO_Reader_AI::compareOptions(IIO_Reader_AI *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v4 = *(*IIO_ReaderHandler::readerForType(ReaderHandler, 1346651680) + 80);

  return v4();
}

uint64_t IIO_Reader_AI::getImageCount(IIO_Reader_AI *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v10 = IIO_ReaderHandler::readerForType(ReaderHandler, 1346651680);
  return (*(*v10 + 32))(v10, a2, a3, a4, a5);
}

uint64_t LogL16fromY(int a1, long double a2)
{
  if (a2 >= 1.8371976e19)
  {
    return 0x7FFFLL;
  }

  if (a2 <= -1.8371976e19)
  {
    return 0xFFFFLL;
  }

  if (a2 <= 5.4136769e-20)
  {
    if (a2 >= -5.4136769e-20)
    {
      return 0;
    }

    else
    {
      v5 = (log(-a2) * 1.44269504 + 64.0) * 256.0;
      if (a1)
      {
        v5 = v5 + rand() * 4.65661288e-10 + -0.5;
      }

      return v5 | 0xFFFF8000;
    }
  }

  else
  {
    v3 = (log(a2) * 1.44269504 + 64.0) * 256.0;
    if (a1)
    {
      v3 = v3 + rand() * 4.65661288e-10 + -0.5;
    }

    return v3;
  }
}

float *XYZtoRGB24(float *result, char *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[2];
  v5 = v3 * -1.276 + v2 * 2.69 + v4 * -0.414;
  v6 = v3 * 1.978 + v2 * -1.022 + v4 * 0.044;
  v7 = v3 * -0.224 + v2 * 0.061;
  if (v5 <= 0.0)
  {
    v8 = 0;
  }

  else
  {
    v8 = vcvtd_n_s64_f64(sqrt(v5), 8uLL);
    if (v5 >= 1.0)
    {
      v8 = -1;
    }
  }

  v9 = v7 + v4 * 1.163;
  *a2 = v8;
  if (v6 <= 0.0)
  {
    v10 = 0;
  }

  else
  {
    v10 = vcvtd_n_s64_f64(sqrt(v6), 8uLL);
    if (v6 >= 1.0)
    {
      v10 = -1;
    }
  }

  a2[1] = v10;
  if (v9 <= 0.0)
  {
    v11 = 0;
  }

  else
  {
    v11 = vcvtd_n_s64_f64(sqrt(v9), 8uLL);
    if (v9 >= 1.0)
    {
      v11 = -1;
    }
  }

  a2[2] = v11;
  return result;
}

uint64_t LogL10fromY(int a1, long double a2)
{
  if (a2 >= 15.742)
  {
    return 1023;
  }

  if (a2 <= 0.00024283)
  {
    return 0;
  }

  v3 = (log(a2) * 1.44269504 + 12.0) * 64.0;
  if (a1)
  {
    v3 = v3 + rand() * 4.65661288e-10 + -0.5;
  }

  return v3;
}

uint64_t uv_encode(int a1, double a2, double a3)
{
  if (a3 >= 0.0169399995)
  {
    v6 = (a3 + -0.0169399995) * 285.714277;
    if (a1)
    {
      v6 = v6 + rand() * 4.65661288e-10 + -0.5;
    }

    if (v6 < 0xA3)
    {
      v7 = (&uv_row + 8 * v6);
      v8 = *v7;
      if (a2 >= v8)
      {
        v9 = (a2 - v8) * 285.714277;
        if (a1)
        {
          v9 = v9 + rand() * 4.65661288e-10 + -0.5;
        }

        if (v9 < *(v7 + 2))
        {
          return (*(v7 + 3) + v9);
        }
      }
    }
  }

  return oog_encode(a2, a3);
}

uint64_t oog_encode(double a1, double a2)
{
  v2 = a1;
  v36 = *MEMORY[0x1E69E9840];
  if ((oog_encode_initialized & 1) == 0)
  {
    v33 = a2;
    memset_pattern16(__b, &unk_186226B20, 0x320uLL);
    v3 = 162;
    do
    {
      v4 = v3;
      v5 = (&uv_row + 8 * v3);
      v6 = *(v5 + 2);
      if (v6 < 2 || v4 == 0 || v4 == 162)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6 - 1;
      }

      v10 = v6 - 1;
      if (v6 >= 1)
      {
        v11 = *v5;
        do
        {
          v12 = atan2((v4 + 0.5) * 0.00350000011 + 0.0169399995 + -0.473684211, v11 + (v10 + 0.5) * 0.00350000011 + -0.210526316) * 15.9154943 + 50.0;
          v13 = v12;
          v14 = vabdd_f64(v12, v12 + 0.5);
          if (v14 < __b[v13])
          {
            oog_encode_oog_table[v13] = v10 + *(v5 + 3);
            __b[v13] = v14;
          }

          v10 -= v9;
        }

        while (v10 >= 0);
      }

      v3 = v4 - 1;
    }

    while (v4);
    v15 = &v36;
    v16 = &STACK[0x640];
    v17 = 99;
    v18 = 198;
    v19 = 100;
    v2 = a1;
    do
    {
      v20 = v17;
      v21 = v19 - 1;
      if (__b[v17] > 1.5)
      {
        v22 = 1;
        v23 = v19;
        v24 = v15;
        do
        {
          if (*&v24[-100 * (v23 / 0x64)] < 1.5)
          {
            break;
          }

          ++v22;
          ++v24;
          ++v23;
        }

        while (v22 != 50);
        v25 = v19 + 99;
        v26 = 1;
        v27 = -1;
        v28 = v18;
        v29 = v16;
        while (*&v29[-100 * (v28 / 0x64)] >= 1.5)
        {
          ++v26;
          --v29;
          --v28;
          if (--v27 == -50)
          {
            v26 = 50;
            break;
          }
        }

        v30 = v25 + v27;
        if (v22 >= v26)
        {
          v31 = v30;
        }

        else
        {
          v31 = v22 + v21;
        }

        oog_encode_oog_table[v20] = oog_encode_oog_table[v31 % 100];
      }

      v17 = v20 - 1;
      --v15;
      --v16;
      --v18;
      v19 = v21;
    }

    while (v20);
    oog_encode_initialized = 1;
    a2 = v33;
  }

  return oog_encode_oog_table[(atan2(a2 + -0.473684211, v2 + -0.210526316) * 15.9154943 + 50.0)];
}

uint64_t uv_decode(double *a1, double *a2, unsigned int a3)
{
  if (a3 > 0x3FA0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  v5 = 163;
  while (1)
  {
    v6 = (v4 + v5) >> 1;
    v7 = *(&uv_row + 4 * v6 + 3);
    v8 = __OFSUB__(a3, v7);
    v9 = a3 - v7;
    if ((v9 < 0) ^ v8 | (v9 == 0))
    {
      break;
    }

    v4 = (v4 + v5) >> 1;
LABEL_8:
    if (v5 - v4 <= 1)
    {
      v10 = v4;
      v6 = v4;
      goto LABEL_11;
    }
  }

  if (v9 < 0)
  {
    v5 = (v4 + v5) >> 1;
    goto LABEL_8;
  }

  v10 = (v4 + v5) >> 1;
LABEL_11:
  v3 = 0;
  *a1 = *(&uv_row + 2 * v10) + ((a3 - *(&uv_row + 4 * v10 + 3)) + 0.5) * 0.00350000011;
  *a2 = (v6 + 0.5) * 0.00350000011 + 0.0169399995;
  return v3;
}

void LogLuv24toXYZ(unsigned int a1, uint64_t a2)
{
  v3 = (a1 >> 14) & 0x3FF;
  if (v3 && (v4 = a1, v5 = exp((v3 + 0.5) * 0.0108304247 + -8.31776617), v5 > 0.0))
  {
    v6 = v5;
    v14 = 0.0;
    v15 = 0.0;
    v7 = uv_decode(&v15, &v14, v4 & 0x3FFF);
    v9 = v14;
    v8 = v15;
    if (v7 < 0)
    {
      v9 = 0.473684211;
      v8 = 0.210526316;
    }

    v10 = 1.0 / (v9 * -16.0 + v8 * 6.0 + 12.0);
    v11 = v8 * 9.0 * v10;
    v12 = v9 * 4.0 * v10;
    *&v10 = v6 * (v11 / v12);
    v13 = v6;
    *a2 = LODWORD(v10);
    *(a2 + 4) = v13;
    *&v11 = v6 * ((1.0 - v11 - v12) / v12);
    *(a2 + 8) = LODWORD(v11);
  }

  else
  {
    *(a2 + 8) = 0;
    *a2 = 0;
  }
}

uint64_t LogLuv24fromXYZ(float *a1, int a2)
{
  v4 = LogL10fromY(a2, a1[1]);
  v5 = 0.473684211;
  v6 = 0.210526316;
  if (v4)
  {
    v7 = *a1;
    v8 = a1[1];
    v9 = v7 + v8 * 15.0 + a1[2] * 3.0;
    if (v9 > 0.0)
    {
      v6 = v7 * 4.0 / v9;
      v5 = v8 * 9.0 / v9;
    }
  }

  v10 = uv_encode(a2, v6, v5);
  if (v10 < 0)
  {
    v10 = uv_encode(0, 0.210526316, 0.473684211);
  }

  return v10 | (v4 << 14);
}

void LogLuv32toXYZ(int a1, uint64_t a2)
{
  v3 = a1 >> 16;
  if (((a1 >> 16) & 0x7FFF) == 0)
  {
    goto LABEL_6;
  }

  v4 = a1;
  v5 = exp((((a1 >> 16) & 0x7FFF) + 0.5) * 0.00270760617 + -44.3614196);
  if ((v3 & 0x8000) != 0)
  {
    v5 = -v5;
  }

  if (v5 > 0.0)
  {
    v6 = (HIBYTE(v4) + 0.5) * 0.00243902439;
    v7 = (v4 + 0.5) * 0.00243902439;
    v8 = 1.0 / (v7 * -16.0 + v6 * 6.0 + 12.0);
    v9 = v6 * 9.0 * v8;
    v10 = v7 * 4.0 * v8;
    *&v8 = v5 * (v9 / v10);
    v11 = v5;
    *a2 = LODWORD(v8);
    *(a2 + 4) = v11;
    v12 = v5 * ((1.0 - v9 - v10) / v10);
    *(a2 + 8) = v12;
  }

  else
  {
LABEL_6:
    *(a2 + 8) = 0;
    *a2 = 0;
  }
}

uint64_t LogLuv32fromXYZ(float *a1, int a2)
{
  v4 = LogL16fromY(a2, a1[1]);
  v5 = 0.210526316;
  v6 = 0.473684211;
  if (v4 && (v7 = *a1, v8 = a1[1], v9 = v7 + v8 * 15.0 + a1[2] * 3.0, v9 > 0.0) && (v5 = v7 * 4.0 / v9, v6 = v8 * 9.0 / v9, v5 <= 0.0))
  {
    v11 = 0;
  }

  else
  {
    v10 = v5 * 410.0;
    if (a2)
    {
      v10 = v10 + rand() * 4.65661288e-10 + -0.5;
    }

    v11 = v10;
  }

  if (v6 <= 0.0)
  {
    v13 = 0;
  }

  else
  {
    v12 = v6 * 410.0;
    if (a2)
    {
      v12 = v12 + rand() * 4.65661288e-10 + -0.5;
    }

    v13 = v12;
  }

  if (v11 >= 0xFF)
  {
    v14 = 255;
  }

  else
  {
    v14 = v11;
  }

  if (v13 >= 0xFF)
  {
    v13 = 255;
  }

  return v13 | (v14 << 8) | (v4 << 16);
}

uint64_t TIFFInitSGILog(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >> 1 != 17338)
  {
    TIFFInitSGILog_cold_1();
  }

  if (_TIFFMergeFields(a1, LogLuvFields, 2, a4, a5, a6, a7, a8))
  {
    v15 = malloc_type_malloc(0x38uLL, 0x1090040405F76DDuLL);
    *(a1 + 1096) = v15;
    if (v15)
    {
      v16 = v15;
      _TIFFmemset(v15, 0, 0x38uLL);
      *(v16 + 1) = -1;
      *(v16 + 2) = a2 == 34677;
      *(v16 + 4) = _logLuvNop;
      *(a1 + 952) = LogLuvFixupTags;
      *(a1 + 960) = LogLuvSetupDecode;
      *(a1 + 1024) = LogLuvDecodeStrip;
      *(a1 + 1040) = LogLuvDecodeTile;
      *(a1 + 976) = LogLuvSetupEncode;
      *(a1 + 1032) = LogLuvEncodeStrip;
      *(a1 + 1048) = LogLuvEncodeTile;
      *(a1 + 1056) = LogLuvClose;
      *(a1 + 1072) = LogLuvCleanup;
      v17 = *(a1 + 1280);
      *(a1 + 1288) = LogLuvVGetField;
      *(v16 + 40) = vextq_s8(v17, v17, 8uLL);
      *(a1 + 1280) = LogLuvVSetField;
      return 1;
    }

    v20 = *a1;
    v19 = "%s: No space for LogLuv state block";
  }

  else
  {
    v19 = "Merging SGILog codec-specific tags failed";
  }

  TIFFErrorExtR(a1, "TIFFInitSGILog", v19, v10, v11, v12, v13, v14, v20);
  return 0;
}

uint64_t LogLuvSetupDecode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1096);
  *(a1 + 1248) = _TIFFNoPostDecode;
  v10 = *(a1 + 122);
  if (v10 == 32844)
  {
    result = LogL16InitState(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    *(a1 + 1008) = LogL16Decode;
    v14 = *(v9 + 4);
    if (v14 == 3)
    {
      v13 = L16toGry;
      goto LABEL_23;
    }

    if (!v14)
    {
      v13 = L16toY;
      goto LABEL_23;
    }
  }

  else
  {
    if (v10 != 32845)
    {
      TIFFErrorExtR(a1, "LogLuvSetupDecode", "Inappropriate photometric interpretation %hu for SGILog compression; %s", a4, a5, a6, a7, a8, *(a1 + 122));
      return 0;
    }

    result = LogLuvInitState(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 120) == 34677)
    {
      *(a1 + 1008) = LogLuvDecode24;
      v12 = *(v9 + 4);
      switch(v12)
      {
        case 3:
          v13 = Luv24toRGB;
          goto LABEL_23;
        case 1:
          v13 = Luv24toLuv48;
          goto LABEL_23;
        case 0:
          v13 = Luv24toXYZ;
LABEL_23:
          *(v9 + 32) = v13;
          break;
      }
    }

    else
    {
      *(a1 + 1008) = LogLuvDecode32;
      v15 = *(v9 + 4);
      switch(v15)
      {
        case 3:
          v13 = Luv32toRGB;
          goto LABEL_23;
        case 1:
          v13 = Luv32toLuv48;
          goto LABEL_23;
        case 0:
          v13 = Luv32toXYZ;
          goto LABEL_23;
      }
    }
  }

  return 1;
}

uint64_t LogLuvDecodeStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  result = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v13 = result;
    if (a3 % result)
    {
      LogLuvDecodeStrip_cold_1();
    }

    if (a3)
    {
      v14 = result - a3;
      do
      {
        v15 = (*(a1 + 1008))(a1, v10, v13, a4);
        v10 += v13;
        if (v15)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        v14 += v13;
      }

      while (!v16);
      return v15 != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t LogLuvDecodeTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  result = _cg_TIFFTileRowSize(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v13 = result;
    if (a3 % result)
    {
      LogLuvDecodeTile_cold_1();
    }

    if (a3)
    {
      v14 = result - a3;
      do
      {
        v15 = (*(a1 + 1008))(a1, v10, v13, a4);
        v10 += v13;
        if (v15)
        {
          v16 = v14 == 0;
        }

        else
        {
          v16 = 1;
        }

        v14 += v13;
      }

      while (!v16);
      return v15 != 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t LogLuvSetupEncode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1096);
  v10 = *(a1 + 122);
  if (v10 == 32844)
  {
    result = LogL16InitState(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    *(a1 + 1016) = LogL16Encode;
    v19 = *(v9 + 4);
    v18 = L16fromY;
    if (!v19)
    {
      goto LABEL_18;
    }

    if (v19 == 1)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v10 == 32845)
  {
    result = LogLuvInitState(a1, a2, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    if (*(a1 + 120) == 34677)
    {
      *(a1 + 1016) = LogLuvEncode24;
      v17 = *(v9 + 4);
      v18 = Luv24fromXYZ;
      if (!v17)
      {
LABEL_18:
        *(v9 + 32) = v18;
        goto LABEL_19;
      }

      if (v17 != 2)
      {
        if (v17 == 1)
        {
          v18 = Luv24fromLuv48;
          goto LABEL_18;
        }

        goto LABEL_20;
      }

LABEL_19:
      result = 1;
      *v9 = 1;
      return result;
    }

    *(a1 + 1016) = LogLuvEncode32;
    v20 = *(v9 + 4);
    v18 = Luv32fromXYZ;
    switch(v20)
    {
      case 0:
        goto LABEL_18;
      case 2:
        goto LABEL_19;
      case 1:
        v18 = Luv32fromLuv48;
        goto LABEL_18;
    }

LABEL_20:
    v21 = "XYZ, Luv";
    if (*(a1 + 122) == 32844)
    {
      v21 = "Y, L";
    }

    TIFFErrorExtR(a1, "LogLuvSetupEncode", "SGILog compression supported only for %s, or raw data", v12, v13, v14, v15, v16, v21);
    return 0;
  }

  TIFFErrorExtR(a1, "LogLuvSetupEncode", "Inappropriate photometric interpretation %hu for SGILog compression; %s", a4, a5, a6, a7, a8, *(a1 + 122));
  return 0;
}

uint64_t LogLuvEncodeStrip(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  result = _cg_TIFFScanlineSize(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v13 = result;
    if (a3 % result)
    {
      LogLuvEncodeStrip_cold_1();
    }

    if (a3)
    {
      v14 = result - a3;
      do
      {
        v15 = (*(a1 + 1016))(a1, v10, v13, a4);
        v10 += v13;
        v16 = v15 != 1 || v14 == 0;
        v14 += v13;
      }

      while (!v16);
      return v15 == 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t LogLuvEncodeTile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  result = _cg_TIFFTileRowSize(a1, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v13 = result;
    if (a3 % result)
    {
      LogLuvEncodeTile_cold_1();
    }

    if (a3)
    {
      v14 = result - a3;
      do
      {
        v15 = (*(a1 + 1016))(a1, v10, v13, a4);
        v10 += v13;
        v16 = v15 != 1 || v14 == 0;
        v14 += v13;
      }

      while (!v16);
      return v15 == 1;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t LogLuvClose(uint64_t result)
{
  v1 = *(result + 1096);
  if (!v1)
  {
    LogLuvClose_cold_1();
  }

  if (*v1)
  {
    if (*(result + 122) == 32844)
    {
      v2 = 1;
    }

    else
    {
      v2 = 3;
    }

    *(result + 130) = v2;
    *(result + 116) = 131088;
  }

  return result;
}

uint64_t LogLuvCleanup(void *a1)
{
  v1 = a1[137];
  if (!v1)
  {
    LogLuvCleanup_cold_1();
  }

  v3 = v1[6];
  a1[161] = v1[5];
  a1[160] = v3;
  v4 = v1[2];
  if (v4)
  {
    free(v4);
  }

  free(v1);
  a1[137] = 0;

  return _TIFFSetDefaultCompressionState(a1);
}

uint64_t LogLuvVGetField(uint64_t a1, int a2, _DWORD **a3)
{
  v3 = *(a1 + 1096);
  if (a2 != 65560)
  {
    return (*(v3 + 40))();
  }

  **a3 = *(v3 + 4);
  return 1;
}

uint64_t LogLuvVSetField(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 1096);
  if (a2 == 65561)
  {
    v13 = *a3;
    *(v9 + 8) = *a3;
    if (v13 < 2)
    {
      return 1;
    }

    TIFFErrorExtR(a1, "LogLuvVSetField", "Unknown encoding %d for LogLuv compression", a4, a5, a6, a7, a8, v13);
    return 0;
  }

  if (a2 == 65560)
  {
    v10 = *a3;
    *(v9 + 4) = *a3;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v12 = 1;
        _cg_TIFFSetField(a1, 277, a3, a4, a5, a6, a7, a8, 1);
        v11 = 32;
        goto LABEL_19;
      }

      if (v10 == 3)
      {
        v11 = 8;
        v12 = 1;
        goto LABEL_19;
      }
    }

    else
    {
      if (!v10)
      {
        v11 = 32;
        v12 = 3;
        goto LABEL_19;
      }

      if (v10 == 1)
      {
        v11 = 16;
        v12 = 2;
LABEL_19:
        _cg_TIFFSetField(a1, 258, a3, a4, a5, a6, a7, a8, v11);
        _cg_TIFFSetField(a1, 339, v16, v17, v18, v19, v20, v21, v12);
        if ((*(a1 + 17) & 4) != 0)
        {
          v29 = _cg_TIFFTileSize(a1, v22, v23, v24, v25, v26, v27, v28);
        }

        else
        {
          v29 = -1;
        }

        *(a1 + 936) = v29;
        *(a1 + 1104) = _cg_TIFFScanlineSize(a1, v22, v23, v24, v25, v26, v27, v28);
        return 1;
      }
    }

    TIFFErrorExtR(a1, *a1, "Unknown data format %d for LogLuv compression", a4, a5, a6, a7, a8, v10);
    return 0;
  }

  v14 = *(v9 + 48);

  return v14();
}

uint64_t LogLuvInitState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    LogLuvInitState_cold_2();
  }

  if (*(a1 + 122) != 32845)
  {
    LogLuvInitState_cold_1();
  }

  if (*(a1 + 170) != 1)
  {
    v14 = "SGILog compression cannot handle non-contiguous data";
    goto LABEL_37;
  }

  v10 = *(v8 + 4);
  if (v10 == -1)
  {
    v11 = *(a1 + 118) | (8 * *(a1 + 116));
    if (v11 > 256)
    {
      if ((v11 - 257) < 2)
      {
        goto LABEL_15;
      }

      if (v11 == 259)
      {
        v13 = 0;
LABEL_21:
        v10 = -1;
        goto LABEL_22;
      }

      if (v11 == 260)
      {
LABEL_15:
        v10 = 2;
        v13 = -1;
        goto LABEL_22;
      }
    }

    else
    {
      if ((v11 - 129) <= 3 && v11 != 131)
      {
        v10 = -1;
        v13 = 1;
LABEL_22:
        v15 = *(a1 + 130);
        if (v15 != 3)
        {
          v13 = -1;
        }

        if (v15 != 1)
        {
          v10 = v13;
        }

        *(v8 + 4) = v10;
        goto LABEL_27;
      }

      if (v11 == 65 || v11 == 68)
      {
        v10 = -1;
        v13 = 3;
        goto LABEL_22;
      }
    }

    v13 = -1;
    goto LABEL_21;
  }

LABEL_27:
  if (v10 > 3)
  {
    v14 = "No support for converting user data format to LogLuv";
  }

  else
  {
    *(v8 + 12) = dword_186226B30[v10];
    if ((*(a1 + 17) & 4) != 0)
    {
      v17 = *(a1 + 100);
      v16 = *(a1 + 104);
    }

    else
    {
      v16 = *(a1 + 132);
      v17 = *(a1 + 88);
      if (v16 >= *(a1 + 92))
      {
        v16 = *(a1 + 92);
      }
    }

    v18 = _TIFFMultiplySSize(0, v17, v16, 0, a5, a6, a7, a8);
    *(v8 + 24) = v18;
    if (_TIFFMultiplySSize(0, v18, 4, 0, v19, v20, v21, v22))
    {
      v23 = malloc_type_malloc(4 * *(v8 + 24), 0x100004052888210uLL);
      *(v8 + 16) = v23;
      if (v23)
      {
        return 1;
      }
    }

    v14 = "No space for SGILog translation buffer";
  }

LABEL_37:
  TIFFErrorExtR(a1, "LogLuvInitState", v14, a4, a5, a6, a7, a8, v25);
  return 0;
}

uint64_t LogLuvDecode24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    LogLuvDecode24_cold_1();
  }

  v8 = *(a1 + 1096);
  if (!v8)
  {
    LogLuvDecode24_cold_2();
  }

  v10 = a3 / *(v8 + 12);
  if (*(v8 + 4) != 2)
  {
    if (*(v8 + 24) < v10)
    {
      v11 = "Translation buffer too short";
      goto LABEL_17;
    }

    a2 = *(v8 + 16);
  }

  v12 = *(a1 + 1152);
  v13 = *(a1 + 1160);
  v14 = 0;
  v15 = v10 < 1 || v13 < 3;
  if (!v15)
  {
    v16 = *(a1 + 1160);
    do
    {
      *(a2 + 4 * v14) = (*v12 << 16) | (v12[1] << 8) | v12[2];
      v12 += 3;
      v13 = v16 - 3;
      if (++v14 >= v10)
      {
        break;
      }

      v15 = v16 > 5;
      v16 -= 3;
    }

    while (v15);
  }

  *(a1 + 1152) = v12;
  *(a1 + 1160) = v13;
  if (v10 == v14)
  {
    (*(v8 + 32))(v8);
    return 1;
  }

  v18 = *(a1 + 876);
  v11 = "Not enough data at row %u (short %lld pixels)";
LABEL_17:
  TIFFErrorExtR(a1, "LogLuvDecode24", v11, a4, a5, a6, a7, a8, v18);
  return 0;
}

void Luv24toXYZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = *(a1 + 16);
    v5 = a3 + 1;
    do
    {
      v6 = *v4++;
      LogLuv24toXYZ(v6, a2);
      a2 += 12;
      --v5;
    }

    while (v5 > 1);
  }
}

uint64_t Luv24toLuv48(uint64_t result, _WORD *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v12[7] = v3;
    v12[8] = v4;
    v6 = *(result + 16);
    v7 = a3 + 1;
    do
    {
      v11 = 0.0;
      v12[0] = 0.0;
      v8 = *v6;
      *a2 = ((*v6 >> 12) & 0xFFD) + 13314;
      result = uv_decode(v12, &v11, v8 & 0x3FFF);
      if ((result & 0x80000000) != 0)
      {
        v9 = 6898;
        v10 = 15521;
      }

      else
      {
        v9 = vcvtd_n_s64_f64(v12[0], 0xFuLL);
        v10 = vcvtd_n_s64_f64(v11, 0xFuLL);
      }

      a2[1] = v9;
      a2[2] = v10;
      ++v6;
      --v7;
      a2 += 3;
    }

    while (v7 > 1);
  }

  return result;
}

float *Luv24toRGB(float *result, char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v4 = *(result + 2);
    v5 = a3 + 1;
    do
    {
      v8 = 0;
      v7 = 0;
      v6 = *v4++;
      LogLuv24toXYZ(v6, &v7);
      result = XYZtoRGB24(&v7, a2);
      a2 += 3;
      --v5;
    }

    while (v5 > 1);
  }

  return result;
}

uint64_t LogLuvDecode32(uint64_t a1, void *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    LogLuvDecode32_cold_1();
  }

  v9 = *(a1 + 1096);
  if (!v9)
  {
    LogLuvDecode32_cold_2();
  }

  v11 = __b;
  v12 = a3 / *(v9 + 12);
  if (*(v9 + 4) != 2)
  {
    if (*(v9 + 24) < v12)
    {
      TIFFErrorExtR(a1, "LogLuvDecode32", "Translation buffer too short", a4, a5, a6, a7, a8, v32);
      return 0;
    }

    v11 = *(v9 + 16);
  }

  _TIFFmemset(v11, 0, 4 * v12);
  v19 = *(a1 + 1152);
  v20 = *(a1 + 1160);
  v21 = 24;
  while (1)
  {
    v22 = 0;
    v23 = v21;
    if (v12 >= 1 && v20 >= 1)
    {
      v22 = 0;
      do
      {
        v24 = *v19;
        if (*v19 < 0)
        {
          if (v20 < 2)
          {
            break;
          }

          if (v24 != 126 && v22 < v12)
          {
            v29 = v19[1] << v23;
            v30 = v24 - 127;
            do
            {
              *(v11 + v22++) |= v29;
              v31 = v30-- != 0;
            }

            while (v31 && v22 < v12);
          }

          v19 += 2;
          v20 -= 2;
        }

        else
        {
          v25 = (v19 + 1);
          v26 = v20 - 1;
          if (v20 == 1)
          {
            v20 = 0;
            ++v19;
            break;
          }

          v27 = 0;
          while (v24 != v27 && v22 + v27 < v12)
          {
            *(v11 + v22 + v27) |= v25[v27] << v23;
            if (v26 == ++v27)
            {
              v20 = 0;
              v19 += v27 + 1;
              v22 += v27;
              goto LABEL_32;
            }
          }

          v20 = v26 - v27;
          v19 = &v25[v27];
          v22 += v27;
        }
      }

      while (v22 < v12 && v20 > 0);
    }

LABEL_32:
    if (v12 != v22)
    {
      break;
    }

    v21 = v23 - 8;
    if (!v23)
    {
      (*(v9 + 32))(v9, __b, v12);
      *(a1 + 1152) = v19;
      *(a1 + 1160) = v20;
      return 1;
    }
  }

  TIFFErrorExtR(a1, "LogLuvDecode32", "Not enough data at row %u (short %lld pixels)", v14, v15, v16, v17, v18, *(a1 + 876));
  result = 0;
  *(a1 + 1152) = v19;
  *(a1 + 1160) = v20;
  return result;
}

void Luv32toXYZ(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = *(a1 + 16);
    v5 = a3 + 1;
    do
    {
      v6 = *v4++;
      LogLuv32toXYZ(v6, a2);
      a2 += 12;
      --v5;
    }

    while (v5 > 1);
  }
}

uint64_t Luv32toLuv48(uint64_t result, _WORD *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = *(result + 16);
    v4 = a3 + 1;
    do
    {
      v5 = *v3++;
      *a2 = HIWORD(v5);
      a2[1] = vcvtd_n_s64_f64((BYTE1(v5) + 0.5) * 0.00243902439, 0xFuLL);
      a2[2] = vcvtd_n_s64_f64((v5 + 0.5) * 0.00243902439, 0xFuLL);
      a2 += 3;
      --v4;
    }

    while (v4 > 1);
  }

  return result;
}

float *Luv32toRGB(float *result, char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v4 = *(result + 2);
    v5 = a3 + 1;
    do
    {
      v8 = 0;
      v7 = 0;
      v6 = *v4++;
      LogLuv32toXYZ(v6, &v7);
      result = XYZtoRGB24(&v7, a2);
      a2 += 3;
      --v5;
    }

    while (v5 > 1);
  }

  return result;
}

uint64_t LogL16InitState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 1096);
  if (!v8)
  {
    LogL16InitState_cold_2();
  }

  if (*(a1 + 122) != 32844)
  {
    LogL16InitState_cold_1();
  }

  if (*(a1 + 130) == 1)
  {
    v10 = *(v8 + 4);
    if (v10 != -1)
    {
      if (v10)
      {
        goto LABEL_6;
      }

      goto LABEL_25;
    }

    v12 = *(a1 + 118) | (*(a1 + 116) << 6) | 8;
    if (v12 <= 1032)
    {
      if (v12 == 521 || v12 == 524)
      {
        v10 = 3;
        goto LABEL_24;
      }
    }

    else
    {
      if ((v12 - 1033) <= 3 && v12 != 1035)
      {
        v10 = 1;
        goto LABEL_24;
      }

      if (v12 == 2059)
      {
        v10 = 0;
        goto LABEL_24;
      }
    }

    v10 = -1;
LABEL_24:
    *(v8 + 4) = v10;
    if (v10)
    {
LABEL_6:
      if (v10 == 3)
      {
        v11 = 1;
      }

      else
      {
        if (v10 != 1)
        {
          v14 = "No support for converting user data format to LogL";
LABEL_34:
          TIFFErrorExtR(a1, "LogL16InitState", v14, a4, a5, a6, a7, a8, v24);
          return 0;
        }

        v11 = 2;
      }

LABEL_26:
      *(v8 + 12) = v11;
      if ((*(a1 + 17) & 4) != 0)
      {
        v16 = *(a1 + 100);
        v15 = *(a1 + 104);
      }

      else
      {
        v15 = *(a1 + 132);
        v16 = *(a1 + 88);
        if (v15 >= *(a1 + 92))
        {
          v15 = *(a1 + 92);
        }
      }

      v17 = _TIFFMultiplySSize(0, v16, v15, 0, a5, a6, a7, a8);
      *(v8 + 24) = v17;
      if (_TIFFMultiplySSize(0, v17, 2, 0, v18, v19, v20, v21))
      {
        v22 = malloc_type_malloc(2 * *(v8 + 24), 0x1000040BDFB0063uLL);
        *(v8 + 16) = v22;
        if (v22)
        {
          return 1;
        }
      }

      v14 = "No space for SGILog translation buffer";
      goto LABEL_34;
    }

LABEL_25:
    v11 = 4;
    goto LABEL_26;
  }

  TIFFErrorExtR(a1, "LogL16InitState", "Sorry, can not handle LogL image with %s=%hu", a4, a5, a6, a7, a8, "Samples/pixel");
  return 0;
}

uint64_t LogL16Decode(uint64_t a1, void *__b, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    LogL16Decode_cold_1();
  }

  v9 = *(a1 + 1096);
  if (!v9)
  {
    LogL16Decode_cold_2();
  }

  v11 = __b;
  v12 = a3 / *(v9 + 12);
  if (*(v9 + 4) != 1)
  {
    if (*(v9 + 24) < v12)
    {
      TIFFErrorExtR(a1, "LogL16Decode", "Translation buffer too short", a4, a5, a6, a7, a8, v32);
      return 0;
    }

    v11 = *(v9 + 16);
  }

  _TIFFmemset(v11, 0, 2 * v12);
  v19 = *(a1 + 1152);
  v20 = *(a1 + 1160);
  v21 = 8;
  while (1)
  {
    v22 = 0;
    v23 = v21;
    if (v12 >= 1 && v20 >= 1)
    {
      v22 = 0;
      do
      {
        v24 = *v19;
        if (*v19 < 0)
        {
          if (v20 < 2)
          {
            break;
          }

          if (v24 != 126 && v22 < v12)
          {
            v29 = v19[1] << v23;
            v30 = v24 - 127;
            do
            {
              *(v11 + v22++) |= v29;
              v31 = v30-- != 0;
            }

            while (v31 && v22 < v12);
          }

          v19 += 2;
          v20 -= 2;
        }

        else
        {
          v25 = (v19 + 1);
          v26 = v20 - 1;
          if (v20 == 1)
          {
            v20 = 0;
            ++v19;
            break;
          }

          v27 = 0;
          while (v24 != v27 && v22 + v27 < v12)
          {
            *(v11 + v22 + v27) |= v25[v27] << v23;
            if (v26 == ++v27)
            {
              v20 = 0;
              v19 += v27 + 1;
              v22 += v27;
              goto LABEL_32;
            }
          }

          v20 = v26 - v27;
          v19 = &v25[v27];
          v22 += v27;
        }
      }

      while (v22 < v12 && v20 > 0);
    }

LABEL_32:
    if (v12 != v22)
    {
      break;
    }

    v21 = v23 - 8;
    if (!v23)
    {
      (*(v9 + 32))(v9, __b, v12);
      *(a1 + 1152) = v19;
      *(a1 + 1160) = v20;
      return 1;
    }
  }

  TIFFErrorExtR(a1, "LogL16Decode", "Not enough data at row %u (short %lld pixels)", v14, v15, v16, v17, v18, *(a1 + 876));
  result = 0;
  *(a1 + 1152) = v19;
  *(a1 + 1160) = v20;
  return result;
}

void L16toY(uint64_t a1, float *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = *(a1 + 16);
    v5 = a3 + 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = v7 & 0x7FFF;
      if ((v7 & 0x7FFF) != 0)
      {
        v9 = exp((v8 + 0.5) * 0.00270760617 + -44.3614196);
        if (v6 < 0)
        {
          v9 = -v9;
        }

        v10 = v9;
      }

      else
      {
        v10 = 0.0;
      }

      *a2++ = v10;
      --v5;
    }

    while (v5 > 1);
  }
}

void L16toGry(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = *(a1 + 16);
    v5 = a3 + 1;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = v7 & 0x7FFF;
      if ((v7 & 0x7FFF) != 0)
      {
        v9 = exp((v8 + 0.5) * 0.00270760617 + -44.3614196);
        if (v6 < 0)
        {
          v9 = -v9;
        }

        if (v9 <= 0.0)
        {
          LOBYTE(v8) = 0;
        }

        else
        {
          LOBYTE(v8) = vcvtd_n_s64_f64(sqrt(v9), 8uLL);
          if (v9 >= 1.0)
          {
            LOBYTE(v8) = -1;
          }
        }
      }

      *a2++ = v8;
      --v5;
    }

    while (v5 > 1);
  }
}

uint64_t LogLuvEncode24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    LogLuvEncode24_cold_1();
  }

  v9 = a1[137];
  if (!v9)
  {
    LogLuvEncode24_cold_2();
  }

  v10 = a2;
  v11 = a3 / *(v9 + 12);
  if (*(v9 + 4) != 2)
  {
    if (*(v9 + 24) < v11)
    {
      TIFFErrorExtR(a1, "LogLuvEncode24", "Translation buffer too short", a4, a5, a6, a7, a8, v18);
      return 0;
    }

    v13 = *(v9 + 16);
    (*(v9 + 32))(v9, a2, a3 / *(v9 + 12));
    v10 = v13;
  }

  v14 = a1[144];
  v15 = a1[141];
  v16 = v15 - a1[145];
  if (v11)
  {
    do
    {
      if (v16 <= 2)
      {
        a1[144] = v14;
        a1[145] = a1[141] - v16;
        result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
        if (!result)
        {
          return result;
        }

        v14 = a1[144];
        v16 = a1[141] - a1[145];
      }

      *v14 = *(v10 + 2);
      v14[1] = BYTE1(*v10);
      v17 = *v10;
      v10 += 4;
      v14[2] = v17;
      v14 += 3;
      v16 -= 3;
      --v11;
    }

    while (v11);
    v15 = a1[141];
  }

  a1[144] = v14;
  a1[145] = v15 - v16;
  return 1;
}

uint64_t Luv24fromXYZ(uint64_t result, float *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = result;
    v5 = *(result + 16);
    v6 = a3 + 1;
    do
    {
      result = LogLuv24fromXYZ(a2, *(v4 + 8));
      *v5++ = result;
      a2 += 3;
      --v6;
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t Luv24fromLuv48(uint64_t result, __int16 *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = result;
    v5 = *(result + 16);
    v6 = a3 + 1;
    do
    {
      v7 = *a2;
      if (v7 < 1)
      {
        v8 = 0;
      }

      else if ((v7 >> 1) <= 0xE78u)
      {
        if (*(v4 + 8))
        {
          v8 = ((v7 + -3314.0) * 0.25 + rand() * 4.65661288e-10 + -0.5);
        }

        else
        {
          v8 = (v7 - 3314) >> 2;
        }
      }

      else
      {
        v8 = 1023;
      }

      result = uv_encode(*(v4 + 8), (a2[1] + 0.5) * 0.0000305175781, (a2[2] + 0.5) * 0.0000305175781);
      if ((result & 0x80000000) != 0)
      {
        result = uv_encode(0, 0.210526316, 0.473684211);
      }

      *v5++ = result | (v8 << 14);
      a2 += 3;
      --v6;
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t LogLuvEncode32(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    LogLuvEncode32_cold_1();
  }

  v9 = a1[137];
  if (!v9)
  {
    LogLuvEncode32_cold_2();
  }

  v10 = a2;
  v11 = a3 / *(v9 + 12);
  if (*(v9 + 4) != 2)
  {
    if (*(v9 + 24) < v11)
    {
      TIFFErrorExtR(a1, "LogLuvEncode32", "Translation buffer too short", a4, a5, a6, a7, a8, v29);
      return 0;
    }

    v13 = *(v9 + 16);
    (*(v9 + 32))(v9, a2, a3 / *(v9 + 12));
    v10 = v13;
  }

  LODWORD(v14) = 0;
  v15 = a1[144];
  v16 = a1[141] - a1[145];
  v17 = 24;
  do
  {
    v18 = v17;
    if (v11 >= 1)
    {
      v19 = 0;
      v20 = 255 << v17;
      do
      {
        if (v16 <= 3)
        {
          a1[144] = v15;
          a1[145] = a1[141] - v16;
          result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
          if (!result)
          {
            return result;
          }

          v15 = a1[144];
          v16 = a1[141] - a1[145];
        }

        v21 = v19;
        if (v19 < v11)
        {
          v22 = v19;
          do
          {
            v21 = v22;
            v23 = (v10 + 4 * v22);
            v14 = 1;
            while (1)
            {
              v22 = v21 + v14;
              if ((v21 + v14) >= v11 || ((v23[v14] ^ *v23) & v20) != 0)
              {
                break;
              }

              if (++v14 == 129)
              {
                goto LABEL_25;
              }
            }
          }

          while (v14 <= 3 && v22 < v11);
          if (v14 <= 3)
          {
            v21 += v14;
          }
        }

LABEL_25:
        if (((v21 - v19) & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v24 = *(v10 + 4 * v19) & v20;
          v25 = v19 + 1;
          while ((*(v10 + 4 * v25) & v20) == v24)
          {
            if (v21 == ++v25)
            {
              *v15 = v21 + ~v19 + 127;
              v15[1] = v24 >> v18;
              v15 += 2;
              v16 -= 2;
              goto LABEL_30;
            }
          }
        }

        if (v21 > v19)
        {
          while (1)
          {
            if (v21 - v19 >= 127)
            {
              v26 = 127;
            }

            else
            {
              v26 = v21 - v19;
            }

            if (v16 < v26 + 3)
            {
              a1[144] = v15;
              a1[145] = a1[141] - v16;
              result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
              if (!result)
              {
                return result;
              }

              v15 = a1[144];
              v16 = a1[141] - a1[145];
            }

            *v15++ = v26;
            --v16;
            if (v21 == v19)
            {
              break;
            }

            v27 = v26;
            do
            {
              v28 = *(v10 + 4 * v19++);
              *v15++ = v28 >> v18;
              --v27;
            }

            while (v27);
            v16 -= v26;
            if (v19 >= v21)
            {
              goto LABEL_42;
            }
          }

LABEL_30:
          v19 = v21;
        }

LABEL_42:
        if (v14 < 4)
        {
          LODWORD(v14) = 0;
        }

        else
        {
          *v15 = v14 + 126;
          v15[1] = *(v10 + 4 * v21) >> v18;
          v15 += 2;
          v16 -= 2;
        }

        v19 += v14;
      }

      while (v19 < v11);
    }

    v17 = v18 - 8;
  }

  while (v18);
  a1[144] = v15;
  a1[145] = a1[141] - v16;
  return 1;
}

uint64_t Luv32fromXYZ(uint64_t result, float *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = result;
    v5 = *(result + 16);
    v6 = a3 + 1;
    do
    {
      result = LogLuv32fromXYZ(a2, *(v4 + 8));
      *v5++ = result;
      a2 += 3;
      --v6;
    }

    while (v6 > 1);
  }

  return result;
}

uint64_t Luv32fromLuv48(uint64_t result, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(result + 16);
  if (*(result + 8))
  {
    if (a3 >= 1)
    {
      v5 = result;
      v6 = a3 + 1;
      do
      {
        v7 = *a2;
        v8 = a2[1] * 0.012512207;
        if (*(v5 + 8))
        {
          result = rand();
          v8 = v8 + result * 4.65661288e-10 + -0.5;
          v9 = *(v5 + 8) == 0;
        }

        else
        {
          v9 = 1;
        }

        v10 = a2[2] * 0.012512207;
        if (!v9)
        {
          result = rand();
          v10 = v10 + result * 4.65661288e-10 + -0.5;
        }

        *v4++ = v10 | (v8 << 8) | (v7 << 16);
        a2 += 3;
        --v6;
      }

      while (v6 > 1);
    }
  }

  else if (a3 >= 1)
  {
    v11 = a3 + 1;
    do
    {
      *v4++ = (*a2 << 16) | ((410 * a2[1]) >> 7) & 0xFF00 | ((410 * a2[2]) >> 15);
      a2 += 3;
      --v11;
    }

    while (v11 > 1);
  }

  return result;
}

uint64_t LogL16Encode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    LogL16Encode_cold_1();
  }

  v9 = a1[137];
  if (!v9)
  {
    LogL16Encode_cold_2();
  }

  v10 = a2;
  v11 = a3 / *(v9 + 12);
  if (*(v9 + 4) != 1)
  {
    if (*(v9 + 24) < v11)
    {
      TIFFErrorExtR(a1, "LogL16Encode", "Translation buffer too short", a4, a5, a6, a7, a8, v29);
      return 0;
    }

    v13 = *(v9 + 16);
    (*(v9 + 32))(v9, a2, a3 / *(v9 + 12));
    v10 = v13;
  }

  LODWORD(v14) = 0;
  v15 = a1[144];
  v16 = a1[141] - a1[145];
  v17 = 8;
  do
  {
    v18 = v17;
    if (v11 >= 1)
    {
      v19 = 0;
      v20 = 255 << v17;
      do
      {
        if (v16 <= 3)
        {
          a1[144] = v15;
          a1[145] = a1[141] - v16;
          result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
          if (!result)
          {
            return result;
          }

          v15 = a1[144];
          v16 = a1[141] - a1[145];
        }

        v21 = v19;
        if (v19 < v11)
        {
          v22 = v19;
          do
          {
            v21 = v22;
            v23 = (v10 + 2 * v22);
            v14 = 1;
            while (1)
            {
              v22 = v21 + v14;
              if ((v21 + v14) >= v11 || (v20 & v23[v14]) != (*v23 & v20))
              {
                break;
              }

              if (++v14 == 129)
              {
                goto LABEL_25;
              }
            }
          }

          while (v14 <= 3 && v22 < v11);
          if (v14 <= 3)
          {
            v21 += v14;
          }
        }

LABEL_25:
        if (((v21 - v19) & 0xFFFFFFFFFFFFFFFELL) == 2)
        {
          v24 = (*(v10 + 2 * v19) & v20);
          v25 = v19 + 1;
          while ((v20 & *(v10 + 2 * v25)) == v24)
          {
            if (v21 == ++v25)
            {
              *v15 = v21 + ~v19 + 127;
              v15[1] = v24 >> v18;
              v15 += 2;
              v16 -= 2;
              goto LABEL_30;
            }
          }
        }

        if (v21 > v19)
        {
          while (1)
          {
            if (v21 - v19 >= 127)
            {
              v26 = 127;
            }

            else
            {
              v26 = v21 - v19;
            }

            if (v16 < v26 + 3)
            {
              a1[144] = v15;
              a1[145] = a1[141] - v16;
              result = TIFFFlushData1(a1, a2, a3, a4, a5, a6, a7, a8);
              if (!result)
              {
                return result;
              }

              v15 = a1[144];
              v16 = a1[141] - a1[145];
            }

            *v15++ = v26;
            --v16;
            if (v21 == v19)
            {
              break;
            }

            v27 = v26;
            do
            {
              v28 = *(v10 + 2 * v19++);
              *v15++ = v28 >> v18;
              --v27;
            }

            while (v27);
            v16 -= v26;
            if (v19 >= v21)
            {
              goto LABEL_42;
            }
          }

LABEL_30:
          v19 = v21;
        }

LABEL_42:
        if (v14 < 4)
        {
          LODWORD(v14) = 0;
        }

        else
        {
          *v15 = v14 + 126;
          v15[1] = *(v10 + 2 * v21) >> v18;
          v15 += 2;
          v16 -= 2;
        }

        v19 += v14;
      }

      while (v19 < v11);
    }

    v17 = v18 - 8;
  }

  while (v18);
  a1[144] = v15;
  a1[145] = a1[141] - v16;
  return 1;
}

uint64_t L16fromY(uint64_t result, float *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v4 = result;
    v5 = *(result + 16);
    v6 = a3 + 1;
    do
    {
      v7 = *a2++;
      result = LogL16fromY(*(v4 + 8), v7);
      *v5++ = result;
      --v6;
    }

    while (v6 > 1);
  }

  return result;
}

void TGAWritePlugin::~TGAWritePlugin(TGAWritePlugin *this, uint64_t a2, const char *a3)
{
  _cg_jpeg_mem_term(this, a2, a3);

  JUMPOUT(0x186602850);
}

vImage_Error TGAWritePlugin::writeOneImage(IIOImageWriteSession **this, CGImage *a2, IIODictionary *a3, IIODictionary *a4)
{
  *&v44[766] = *MEMORY[0x1E69E9840];
  __ptr = 0;
  v41 = 0;
  v42 = 0;
  bzero(v43, 0x300uLL);
  ColorSpace = CGImageGetColorSpace(a2);
  CGColorSpaceGetType();
  Model = CGColorSpaceGetModel(ColorSpace);
  Width = CGImageGetWidth(a2);
  Height = CGImageGetHeight(a2);
  if (!_ImageHasRealAlphaChannel(a2))
  {
    BoolForKey = 0;
    goto LABEL_6;
  }

  if (IIODictionary::containsKey(a3, @"kCGImageDestinationAllowAlpha"))
  {
    BoolForKey = IIODictionary::getBoolForKey(a3, @"kCGImageDestinationAllowAlpha");
    if (BoolForKey)
    {
      goto LABEL_8;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_9;
  }

  BoolForKey = 1;
LABEL_8:
  v10 = 3;
LABEL_9:
  if (IIODictionary::containsKey(a3, @"Compression"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKey(a3, @"Compression");
LABEL_13:
    v12 = Uint32ForKey != 0;
    goto LABEL_15;
  }

  if (IIODictionary::containsKeyGroup(a3, @"Compression", @"{TGA}"))
  {
    Uint32ForKey = IIODictionary::getUint32ForKeyGroup(a3, @"Compression", @"{TGA}");
    goto LABEL_13;
  }

  v12 = 1;
LABEL_15:
  if (Model == kCGColorSpaceModelRGB)
  {
    v15 = 0;
    if (BoolForKey)
    {
      v14 = 32;
    }

    else
    {
      v14 = 24;
    }
  }

  else
  {
    if (Model)
    {
      if (BoolForKey)
      {
        v14 = 32;
      }

      else
      {
        v14 = 24;
      }

      v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
      ColorSpace = v13;
    }

    else
    {
      v13 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
      ColorSpace = v13;
      v10 = 0;
      v14 = 8;
    }

    v15 = v13;
  }

  memset(v39, 0, sizeof(v39));
  IIODictionary::IIODictionary(v39);
  IIODictionary::setObjectForKey(v39, *MEMORY[0x1E695E4D0], @"UseIndexedColorIfAvailable");
  v38.bitsPerComponent = 8;
  v38.bitsPerPixel = v14;
  v38.colorSpace = ColorSpace;
  v38.bitmapInfo = v10;
  memset(&v38.version, 0, 20);
  memset(v37, 0, sizeof(v37));
  IIOPixelProvider::IIOPixelProvider(v37, a2, &v38, v39);
  v16 = IIOPixelProvider::enableIndexColorPassThrough(v37);
  if (v16)
  {
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
    ColorTableCount = CGColorSpaceGetColorTableCount(ColorSpace);
    v20 = malloc_type_malloc(ColorTableCount * NumberOfComponents, 0x100004077774924uLL);
    CGColorSpaceGetColorTable(ColorSpace, v20);
    v21 = CGColorSpaceGetBaseColorSpace(ColorSpace);
    CGColorSpaceGetType();
    CGColorSpaceGetModel(v21);
    *(&__ptr + 1) = 257;
    v14 = 8;
    v22 = 1;
    v23 = 9;
    if (!v12)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v22 = v14 >> 3;
  BYTE1(__ptr) = 0;
  v20 = 0;
  if (Model)
  {
    ColorTableCount = 0;
    BYTE2(__ptr) = 2;
    v23 = 10;
    if (v12)
    {
      goto LABEL_28;
    }
  }

  else
  {
    ColorTableCount = 0;
    BYTE2(__ptr) = 3;
    v23 = 11;
    if (v12)
    {
LABEL_28:
      BYTE2(__ptr) = v23;
    }
  }

LABEL_29:
  if (v16)
  {
    *(&__ptr + 5) = ColorTableCount;
    HIBYTE(__ptr) = 24;
  }

  WORD2(v41) = Width;
  HIWORD(v41) = Height;
  LOBYTE(v42) = v14;
  if (v14 == 32)
  {
    v24 = 40;
  }

  else
  {
    v24 = 32;
  }

  HIBYTE(v42) = v24;
  if (IIOImageWriteSession::putBytes(this[2], &__ptr, 0x12uLL) == 18)
  {
    if (!ColorTableCount)
    {
      goto LABEL_39;
    }

    v25 = v44;
    v26 = (v20 + 2);
    v27 = ColorTableCount;
    do
    {
      *(v25 - 2) = *(v26 - 2);
      *(v25 - 1) = *(v26 - 1);
      v28 = *v26;
      v26 += 3;
      *v25 = v28;
      v25 += 3;
      --v27;
    }

    while (v27);
    if (IIOImageWriteSession::putBytes(this[2], v43, 3 * ColorTableCount) != 3 * ColorTableCount)
    {
      v29 = 0;
      v30 = 4294967246;
    }

    else
    {
LABEL_39:
      if (v12)
      {
        v29 = malloc_type_malloc(Width + Width * v22, 0x100004077774924uLL);
      }

      else
      {
        v29 = 0;
      }

      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 0x40000000;
      v34[2] = ___ZN14TGAWritePlugin13writeOneImageEP7CGImageP13IIODictionaryS3_j_block_invoke;
      v34[3] = &__block_descriptor_tmp_45;
      v35 = v14;
      v36 = v12;
      v34[4] = this;
      v34[5] = v29;
      v34[6] = Width;
      v34[7] = v22;
      v30 = IIOPixelProvider::iterateOverImage(v37, 0, Height, 64, v34);
      if (!v20)
      {
LABEL_46:
        if (!v29)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }
    }
  }

  else
  {
    v29 = 0;
    v30 = 4294967246;
    if (!v20)
    {
      goto LABEL_46;
    }
  }

  free(v20);
  if (v29)
  {
LABEL_47:
    free(v29);
  }

LABEL_48:
  if (v15)
  {
    CGColorSpaceRelease(v15);
  }

  IIOPixelProvider::~IIOPixelProvider(v37);
  IIODictionary::~IIODictionary(v39);
  return v30;
}

void sub_186099DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  IIOPixelProvider::~IIOPixelProvider(&a21);
  IIODictionary::~IIODictionary(&a56);
  _Unwind_Resume(a1);
}

uint64_t ___ZN14TGAWritePlugin13writeOneImageEP7CGImageP13IIODictionaryS3_j_block_invoke(uint64_t result, int a2, vImage_Buffer *src, _BYTE *a4)
{
  v5 = src;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 64);
  if (v8 == 32)
  {
    *v34 = 50331906;
    result = vImagePermuteChannels_ARGB8888(src, src, v34, 0);
  }

  else if (v8 == 24)
  {
    v36 = 0;
    *permuteMap = 258;
    result = vImagePermuteChannels_RGB888(src, src, permuteMap, 0);
  }

  if (*(v6 + 68) != 1)
  {
    return IIOImageWriteSession::putBytes(*(v7 + 16), v5->data, v5->height * v5->rowBytes);
  }

  v29 = a4;
  if (!v5->height)
  {
    return result;
  }

  v9 = 0;
  v30 = v7;
  v31 = v5;
  do
  {
    v10 = v5->data + v5->rowBytes * v9;
    __dst = 0;
    v11 = *(v6 + 40);
    if (*(v6 + 48) < 2uLL)
    {
      v16 = 1;
      goto LABEL_30;
    }

    v32 = v9;
    LOBYTE(v12) = 0;
    v13 = *(v6 + 56);
    v14 = 1;
    v15 = 0x100000000;
    v16 = 1;
    v17 = v10;
    do
    {
      memcpy(&__dst, v17, v13);
      v17 = &v10[v13 * v14];
      v18 = memcmp(&__dst, v17, v13);
      if (v12)
      {
        if (!v18 && v12 <= 0x7Eu)
        {
          LOBYTE(v12) = v12 + 1;
          goto LABEL_25;
        }

        *v11 = v12 ^ 0x80;
        v19 = v11 + 1;
        memcpy(v19, &__dst, *(v6 + 56));
        LOBYTE(v12) = 0;
        v13 = *(v6 + 56);
        v11 = &v19[v13];
      }

      else
      {
        if (v18 && (v16 & 0x80) == 0)
        {
          LOBYTE(v12) = 0;
          ++v16;
          goto LABEL_25;
        }

        v12 = v18 == 0;
        if (v12 == v16)
        {
          LOBYTE(v12) = v16;
        }

        else
        {
          LOBYTE(v20) = v16 - v12;
          v21 = v16 - v12 - 1;
          v22 = (v16 - v12);
          *v11 = v21;
          v23 = v11 + 1;
          if (v18)
          {
            v20 = v20;
          }

          else
          {
            v20 = v20 + 1;
          }

          memcpy(v23, &v10[*(v6 + 56) * ((v15 - (v20 << 32)) >> 32)], *(v6 + 56) * v22);
          v13 = *(v6 + 56);
          v11 = &v23[v13 * v22];
        }
      }

      v16 = 1;
LABEL_25:
      ++v14;
      v15 += 0x100000000;
    }

    while (*(v6 + 48) > v14);
    if (v12)
    {
      *v11 = v12 ^ 0x80;
      v24 = v11 + 1;
      memcpy(v24, &__dst, *(v6 + 56));
      v25 = &v24[*(v6 + 56)];
      v7 = v30;
      v5 = v31;
      v9 = v32;
      goto LABEL_31;
    }

    v7 = v30;
    v5 = v31;
    v9 = v32;
LABEL_30:
    *v11 = v16 - 1;
    v26 = v11 + 1;
    memcpy(v26, &v10[(*(v6 + 48) - v16) * *(v6 + 56)], *(v6 + 56) * v16);
    v25 = &v26[*(v6 + 56) * v16];
LABEL_31:
    v27 = *(v6 + 40);
    v28 = (v25 - v27);
    result = IIOImageWriteSession::putBytes(*(v7 + 16), v27, v28);
    if (result != v28)
    {
      *v29 = 1;
      return result;
    }

    ++v9;
  }

  while (v5->height > v9);
  return result;
}

void GIFBufferInfo::GIFBufferInfo(GIFBufferInfo *this, unsigned __int8 *a2, int a3, int a4, unsigned int a5, unsigned int a6)
{
  *this = &unk_1EF4DC6C8;
  *(this + 8) = a5;
  *(this + 9) = 0;
  *(this + 6) = a6;
  *(this + 7) = a4;
  *(this + 5) = -1;
  if (a2 && a3)
  {
    v8 = a6 * a5;
    v9 = malloc_type_malloc(v8, 0x100004077774924uLL);
    *(this + 1) = v9;
    memcpy(v9, a2, v8);
    v10 = 1;
  }

  else
  {
    v10 = 0;
    *(this + 1) = a2;
  }

  *(this + 16) = v10;
}

void GIFBufferInfo::~GIFBufferInfo(GIFBufferInfo *this)
{
  *this = &unk_1EF4DC6C8;
  v2 = *(this + 1);
  if (v2)
  {
    if (*(this + 16) == 1)
    {
      free(v2);
    }
  }
}

{
  *this = &unk_1EF4DC6C8;
  v2 = *(this + 1);
  if (v2 && *(this + 16) == 1)
  {
    free(v2);
  }

  JUMPOUT(0x186602850);
}

uint64_t GIFBufferInfo::writeToStream(GIFBufferInfo *this, CFWriteStreamRef stream)
{
  *buffer = 1111902535;
  CFWriteStreamWrite(stream, buffer, 4);
  v4 = *(this + 6) * *(this + 8);
  if (!*(this + 1))
  {
    v4 = 0;
  }

  bufferLength = v4;
  CFWriteStreamWrite(stream, &bufferLength, 8);
  v5 = *(this + 1);
  if (v5)
  {
    v6 = bufferLength == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    CFWriteStreamWrite(stream, v5, bufferLength);
  }

  CFWriteStreamWrite(stream, this + 20, 20);
  return 0;
}

void sub_18609A374(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x186602830](v3, 0x1000C8033FC2DF1);
  }

  _Unwind_Resume(exception_object);
}

void GlobalGIFInfo::GlobalGIFInfo(GlobalGIFInfo *this)
{
  *this = &unk_1EF4DC6E8;
  *(this + 136) = 0u;
  v2 = (this + 136);
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  pthread_mutex_init((this + 8), 0);
  pthread_mutex_init((this + 72), 0);
  std::vector<GIFFrameInfo>::resize(v2, 0);
  *(this + 27) = 0;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
}

void sub_18609A434(_Unwind_Exception *a1)
{
  v4 = *(v1 + 176);
  *(v1 + 176) = 0;
  if (v4)
  {
    std::default_delete<IIOColorMap>::operator()[abi:fe200100](v1 + 176, v4);
  }

  GlobalGIFInfo::GlobalGIFInfo(v1, v2);
  _Unwind_Resume(a1);
}

void std::vector<GIFFrameInfo>::resize(void *a1, unint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<GIFFrameInfo>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 40 * a2;
  }
}

void GlobalGIFInfo::GlobalGIFInfo(GlobalGIFInfo *this, unsigned __int8 *a2, CFIndex a3)
{
  *this = &unk_1EF4DC6E8;
  *(this + 136) = 0u;
  v6 = (this + 136);
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  pthread_mutex_init((this + 8), 0);
  pthread_mutex_init((this + 72), 0);
  std::vector<GIFFrameInfo>::resize(v6, 0);
  v7 = *(this + 21);
  *(this + 20) = 0;
  *(this + 21) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v7);
  }

  v8 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v9 = v8;
  if (v8)
  {
    if (CFReadStreamOpen(v8))
    {
      GlobalGIFInfo::readFromStream(this, v9);
      CFReadStreamClose(v9);
    }

    CFRelease(v9);
  }
}

void sub_18609A58C(_Unwind_Exception *exception_object)
{
  v4 = v1[22];
  v1[22] = 0;
  if (v4)
  {
    std::default_delete<IIOColorMap>::operator()[abi:fe200100]((v1 + 22), v4);
  }

  v5 = v1[21];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v5);
  }

  v6 = *v2;
  if (*v2)
  {
    v1[18] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GlobalGIFInfo::readFromStream(GlobalGIFInfo *this, CFReadStreamRef stream)
{
  v14 = stream;
  v12 = 0;
  *v13 = 0;
  *v11 = 0;
  *buffer = 0;
  CFReadStreamRead(stream, buffer, 4);
  if (*buffer != 1112493127)
  {
    return 0;
  }

  v4 = CFReadStreamRead(stream, v13, 8);
  result = 4294967260;
  if (v4 == 8 && *v13 >= 1)
  {
    v6 = CFReadStreamRead(stream, v11, 8);
    result = 4294967260;
    if (v6 == 8 && (*v11 & 0x8000000000000000) == 0)
    {
      v7 = CFReadStreamRead(stream, &v12, 8);
      result = 4294967260;
      if (v7 == 8 && v12 >= 1 && v12 == *v13 && !__CFADD__(*v11, v12) && *v11 + v12 <= v12)
      {
        std::vector<GIFFrameInfo>::resize(this + 17, v12);
        v8 = (*(this + 17) + 40 * *v11);
        v9 = &v8[40 * v12];
        while (1)
        {
          if (v8 >= v9)
          {
            std::allocate_shared[abi:fe200100]<GIFBufferInfo,std::allocator<GIFBufferInfo>,__CFReadStream *&,0>();
          }

          if (CFReadStreamRead(stream, v8, 40) != 40)
          {
            break;
          }

          v8 += 40;
        }

        return 4294967260;
      }
    }
  }

  return result;
}

void sub_18609A7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void GlobalGIFInfo::~GlobalGIFInfo(GlobalGIFInfo *this)
{
  *this = &unk_1EF4DC6E8;
  pthread_mutex_destroy((this + 8));
  pthread_mutex_destroy((this + 72));
  v2 = *(this + 22);
  *(this + 22) = 0;
  if (v2)
  {
    std::default_delete<IIOColorMap>::operator()[abi:fe200100](this + 176, v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }
}

{
  GlobalGIFInfo::~GlobalGIFInfo(this);

  JUMPOUT(0x186602850);
}

uint64_t GlobalGIFInfo::getFrameInfoAtIndex@<X0>(GlobalGIFInfo *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  result = pthread_mutex_lock((this + 8));
  v7 = *(this + 17);
  v8 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 18) - v7) >> 3);
  if (a2 < v8)
  {
    if (v8 <= a2)
    {
      __break(1u);
      return result;
    }

    v9 = v7 + 40 * a2;
    v10 = *(v9 + 16);
    *a3 = *v9;
    *(a3 + 16) = v10;
    *(a3 + 32) = *(v9 + 32);
  }

  return pthread_mutex_unlock((this + 8));
}

uint64_t GlobalGIFInfo::setFrameInfoAtIndex(uint64_t a1, __int128 *a2, uint64_t a3)
{
  pthread_mutex_lock((a1 + 8));
  v6 = *(a1 + 136);
  v7 = *(a1 + 144);
  v8 = (v7 - v6) >> 3;
  v9 = 0xCCCCCCCCCCCCCCCDLL * v8;
  if (a3 < (-858993459 * v8))
  {
    if (v9 > a3)
    {
      v10 = v6 + 40 * a3;
      v11 = *a2;
      v12 = a2[1];
      *(v10 + 32) = *(a2 + 4);
      *v10 = v11;
      *(v10 + 16) = v12;
      goto LABEL_17;
    }

    __break(1u);
LABEL_21:
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  v13 = *(a1 + 152);
  if (v7 >= v13)
  {
    if (v9 + 1 > 0x666666666666666)
    {
      goto LABEL_21;
    }

    v17 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v6) >> 3);
    v18 = 2 * v17;
    if (2 * v17 <= v9 + 1)
    {
      v18 = v9 + 1;
    }

    if (v17 >= 0x333333333333333)
    {
      v19 = 0x666666666666666;
    }

    else
    {
      v19 = v18;
    }

    if (v19)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<GIFFrameInfo>>(a1 + 136, v19);
    }

    v20 = 40 * v9;
    v21 = *a2;
    v22 = a2[1];
    *(v20 + 32) = *(a2 + 4);
    *v20 = v21;
    *(v20 + 16) = v22;
    v16 = 40 * v9 + 40;
    v23 = *(a1 + 136);
    v24 = *(a1 + 144) - v23;
    v25 = (40 * v9 - v24);
    memcpy(v25, v23, v24);
    v26 = *(a1 + 136);
    *(a1 + 136) = v25;
    *(a1 + 144) = v16;
    *(a1 + 152) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v14 = *a2;
    v15 = a2[1];
    *(v7 + 32) = *(a2 + 4);
    *v7 = v14;
    *(v7 + 16) = v15;
    v16 = v7 + 40;
  }

  *(a1 + 144) = v16;
LABEL_17:

  return pthread_mutex_unlock((a1 + 8));
}

uint64_t GlobalGIFInfo::getCachedFrameBuffer@<X0>(GlobalGIFInfo *this@<X0>, void *a2@<X8>)
{
  pthread_mutex_lock((this + 72));
  v4 = *(this + 21);
  *a2 = *(this + 20);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return pthread_mutex_unlock((this + 72));
}

void sub_18609AB44(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t GlobalGIFInfo::setCachedFrameBuffer(uint64_t a1, uint64_t *a2)
{
  pthread_mutex_lock((a1 + 72));
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 168);
  *(a1 + 160) = v5;
  *(a1 + 168) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](v6);
  }

  return pthread_mutex_unlock((a1 + 72));
}

void GlobalGIFInfo::setGlobalColorMap(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    operator new();
  }

  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {

    std::default_delete<IIOColorMap>::operator()[abi:fe200100](a1 + 176, v2);
  }
}

uint64_t GlobalGIFInfo::getSize(uint64_t this, unsigned int *a2, unsigned int *a3)
{
  *a2 = *(this + 208);
  *a3 = *(this + 212);
  return this;
}

uint64_t GlobalGIFInfo::setSize(uint64_t this, int a2, int a3)
{
  *(this + 208) = a2;
  *(this + 212) = a3;
  return this;
}

BOOL GlobalGIFInfo::frameSizesMatchCanvasSize(GlobalGIFInfo *this, int a2, int a3)
{
  v4 = *(this + 17);
  v3 = *(this + 18);
  if (v4 == v3)
  {
    return 0;
  }

  v5 = v4 + 40;
  do
  {
    v6 = *(v5 - 28) == a2 || a3 == *(v5 - 26);
    result = v6;
    if (v6)
    {
      break;
    }

    v6 = v5 == v3;
    v5 += 40;
  }

  while (!v6);
  return result;
}

uint64_t GlobalGIFInfo::getMinMaxFrames(uint64_t this, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  v5 = *(this + 136);
  v6 = *(this + 144);
  if (v5 == v6)
  {
    LOWORD(v8) = 0;
    LOWORD(v7) = 0;
    LOWORD(v10) = 16959;
    LOWORD(v9) = 16959;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 999999;
    v10 = 999999;
    do
    {
      if (v10 >= v5[4])
      {
        v10 = v5[4];
      }

      if (v9 >= v5[5])
      {
        v9 = v5[5];
      }

      if (v8 <= v5[6])
      {
        v8 = v5[6];
      }

      if (v7 <= v5[7])
      {
        v7 = v5[7];
      }

      v5 += 20;
    }

    while (v5 != v6);
  }

  *a2 = v10;
  *a3 = v9;
  *a4 = v8;
  *a5 = v7;
  return this;
}

uint64_t GlobalGIFInfo::writeToStream(GlobalGIFInfo *this, CFWriteStreamRef stream, const CFRange *a3)
{
  p_length = &a3->length;
  if (a3->location + a3->length > 0xCCCCCCCCCCCCCCCDLL * ((*(this + 18) - *(this + 17)) >> 3))
  {
    return 4294967246;
  }

  *buffer = 1112493127;
  CFWriteStreamWrite(stream, buffer, 4);
  v14 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 18) - *(this + 17)) >> 3);
  CFWriteStreamWrite(stream, &v14, 8);
  CFWriteStreamWrite(stream, a3, 8);
  CFWriteStreamWrite(stream, p_length, 8);
  length = a3->length;
  v9 = (*(this + 17) + 40 * a3->location);
  v10 = &v9[40 * length];
  while (v9 < v10)
  {
    CFWriteStreamWrite(stream, v9, 40);
    v9 += 40;
  }

  pthread_mutex_lock((this + 72));
  v11 = *(this + 20);
  if (v11)
  {
    GIFBufferInfo::writeToStream(v11, stream);
  }

  else
  {
    *v16 = 1650878823;
    CFWriteStreamWrite(stream, v16, 4);
  }

  pthread_mutex_unlock((this + 72));
  v13 = *(this + 22);
  if (v13)
  {
    IIOColorMap::writeToStream(v13, stream);
  }

  else
  {
    IIOColorMap::writeEmptyPlaceholderToStream(stream, v12);
  }

  CFWriteStreamWrite(stream, this + 184, 40);
  return 0;
}

CFTypeRef GlobalGIFInfo::createDataRepresentation(GlobalGIFInfo *this, const CFRange *a2)
{
  v4 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFWriteStreamOpen(v4))
  {
    GlobalGIFInfo::writeToStream(this, v5, a2);
    v6 = CFWriteStreamCopyProperty(v5, *MEMORY[0x1E695E900]);
    CFWriteStreamClose(v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v5);
  return v6;
}

void IIO_addDelayTimeToDictionary(unsigned int a1, IIODictionary *a2, const __CFString *a3)
{
  if (a1 >= 2)
  {
    v5 = a1;
  }

  else
  {
    v5 = 10;
  }

  v6 = v5 / 100.0;
  if (a3)
  {
    IIONumber::IIONumber(v8, v6);
    IIODictionary::setObjectForKeyGroup(a2, v8, @"DelayTime", a3);
    IIONumber::~IIONumber(v8);
    IIONumber::IIONumber(v8, a1 / 100.0);
    IIODictionary::setObjectForKeyGroup(a2, v8, @"UnclampedDelayTime", a3);
  }

  else
  {
    IIONumber::IIONumber(v8, v6);
    IIODictionary::setObjectForKey(a2, v8, @"DelayTime");
    IIONumber::~IIONumber(v8);
    IIONumber::IIONumber(v8, a1 / 100.0);
    IIODictionary::setObjectForKey(a2, v8, @"UnclampedDelayTime");
  }

  IIONumber::~IIONumber(v8);
}

void sub_18609B0D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void std::default_delete<IIOColorMap>::operator()[abi:fe200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    *(a2 + 16) = 0;
    if (v2)
    {
      MEMORY[0x186602830](v2, 0x1000C8033FC2DF1);
    }

    JUMPOUT(0x186602850);
  }
}

void std::vector<GIFFrameInfo>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 40 * ((40 * a2 - 40) / 0x28) + 40;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<GIFFrameInfo>>(a1, v9);
    }

    v11 = 40 * v6;
    v12 = 40 * ((40 * a2 - 40) / 0x28) + 40;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<GIFFrameInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__shared_ptr_emplace<GIFBufferInfo>::__shared_ptr_emplace[abi:fe200100]<__CFReadStream *&,std::allocator<GIFBufferInfo>,0>(uint64_t a1, __CFReadStream **a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_1EF4DC730;
  v3 = *a2;
  *(a1 + 24) = &unk_1EF4DC6C8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 60) = 0;
  *(a1 + 44) = 0u;
  GIFBufferInfo::readFromStream((a1 + 24), v3);
  return a1;
}

void std::__shared_ptr_emplace<GIFBufferInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF4DC730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x186602850);
}

unint64_t XXH64(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v4 = a1;
  if (a2 < 0x20)
  {
    v13 = a3 + 0x27D4EB2F165667C5;
  }

  else
  {
    v5 = a1 + a2 - 32;
    v6 = a3 + 0x60EA27EEADC0B5D6;
    v7 = a3 - 0x3D4D51C2D82B14B1;
    v8 = a3 + 0x61C8864E7A143579;
    do
    {
      v9 = __ROR8__(v6 - 0x3D4D51C2D82B14B1 * *v4, 33);
      v6 = 0x9E3779B185EBCA87 * v9;
      v10 = __ROR8__(v7 - 0x3D4D51C2D82B14B1 * v4[1], 33);
      v7 = 0x9E3779B185EBCA87 * v10;
      v11 = __ROR8__(a3 - 0x3D4D51C2D82B14B1 * v4[2], 33);
      a3 = 0x9E3779B185EBCA87 * v11;
      v12 = __ROR8__(v8 - 0x3D4D51C2D82B14B1 * v4[3], 33);
      v8 = 0x9E3779B185EBCA87 * v12;
      v4 += 4;
    }

    while (v4 <= v5);
    v13 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(v7, 57) + __ROR8__(v6, 63) + __ROR8__(a3, 52) + __ROR8__(v8, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v9, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v10, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v11, 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xDEF35B010F796CA9 * v12, 33))) - 0x7A1435883D4D519DLL;
  }

  return XXH64_finalize(v13 + a2, v4, a2);
}

uint64_t XXH64_reset(uint64_t a1, unint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = vaddq_s64(vdupq_n_s64(a2), xmmword_186226BC0);
  *(a1 + 24) = a2;
  *(a1 + 32) = a2 + 0x61C8864E7A143579;
  *(a1 + 40) = v3;
  *(a1 + 56) = v4;
  *(a1 + 72) = 0;
  return 0;
}

uint64_t XXH64_update(uint64_t a1, char *__src, size_t __n)
{
  if (!__src)
  {
    return 1;
  }

  v3 = __n;
  v4 = __src;
  *a1 += __n;
  v6 = *(a1 + 72);
  if (v6 + __n <= 0x1F)
  {
    memcpy((a1 + v6 + 40), __src, __n);
    LODWORD(v7) = *(a1 + 72) + v3;
LABEL_13:
    result = 0;
    *(a1 + 72) = v7;
    return result;
  }

  v9 = &__src[__n];
  if (v6)
  {
    memcpy((a1 + 40 + v6), __src, (32 - v6));
    v10 = __ROR8__(*(a1 + 16) - 0x3D4D51C2D82B14B1 * *(a1 + 48), 33);
    *(a1 + 8) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 8) - 0x3D4D51C2D82B14B1 * *(a1 + 40), 33);
    *(a1 + 16) = 0x9E3779B185EBCA87 * v10;
    v11 = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 32) - 0x3D4D51C2D82B14B1 * *(a1 + 64), 33);
    *(a1 + 24) = 0x9E3779B185EBCA87 * __ROR8__(*(a1 + 24) - 0x3D4D51C2D82B14B1 * *(a1 + 56), 33);
    *(a1 + 32) = v11;
    v4 += (32 - *(a1 + 72));
    *(a1 + 72) = 0;
  }

  if (v4 + 32 <= v9)
  {
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    v15 = *(a1 + 24);
    v14 = *(a1 + 32);
    do
    {
      v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *v4, 33);
      v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
      v15 = 0x9E3779B185EBCA87 * __ROR8__(v15 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
      v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
      v4 += 32;
    }

    while (v4 <= v9 - 32);
    *(a1 + 8) = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = v15;
    *(a1 + 32) = v14;
  }

  if (v4 < v9)
  {
    v7 = v9 - v4;
    memcpy((a1 + 40), v4, v7);
    goto LABEL_13;
  }

  return 0;
}

unint64_t XXH64_digest(void *a1)
{
  if (*a1 < 0x20uLL)
  {
    v1 = a1[3] + 0x27D4EB2F165667C5;
  }

  else
  {
    v1 = 0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((0x9E3779B185EBCA87 * ((__ROR8__(a1[2], 57) + __ROR8__(a1[1], 63) + __ROR8__(a1[3], 52) + __ROR8__(a1[4], 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[1], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[2], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[3], 33))) - 0x7A1435883D4D519DLL) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * a1[4], 33))) - 0x7A1435883D4D519DLL;
  }

  return XXH64_finalize(v1 + *a1, a1 + 5, *a1);
}

unint64_t XXH64_finalize(unint64_t a1, uint64_t *a2, char a3)
{
  v3 = a3 & 0x1F;
  if (v3 >= 8)
  {
    do
    {
      v4 = *a2++;
      a1 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v4, 33)) ^ a1, 37);
      v3 -= 8;
    }

    while (v3 > 7);
  }

  if (v3 >= 4)
  {
    v5 = *a2;
    a2 = (a2 + 4);
    a1 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v5) ^ a1, 41);
    v3 -= 4;
  }

  for (; v3; --v3)
  {
    v6 = *a2;
    a2 = (a2 + 1);
    a1 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v6) ^ a1, 53);
  }

  v7 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (a1 ^ (a1 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (a1 ^ (a1 >> 33))) >> 29));
  return v7 ^ HIDWORD(v7);
}

void _MPEntry::_MPEntry(_MPEntry *this, __CFReadStream *a2)
{
  *this = &unk_1EF4DC780;
  *(this + 5) = 0;
  *(this + 6) = 0;
  v2 = _MPEntry::readFromStream(this, a2);
  if (v2)
  {
    v3 = v2;
    exception = __cxa_allocate_exception(4uLL);
    *exception = v3;
    __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
  }
}

uint64_t _MPEntry::readFromStream(UInt8 *this, CFReadStreamRef stream)
{
  v11 = 0;
  *buffer = 0;
  if (CFReadStreamRead(stream, &buffer[4], 4) == 4)
  {
    if (*&buffer[4] != 1850036301)
    {
      return 0;
    }

    if (CFReadStreamRead(stream, buffer, 4) == 4)
    {
      if (*buffer)
      {
        v4 = malloc_type_malloc(*buffer, 0x100004077774924uLL);
        if (v4)
        {
          v5 = v4;
          v6 = CFReadStreamRead(stream, v4, *buffer);
          if (v6 != *buffer)
          {
            return 4294967246;
          }

          v7 = *MEMORY[0x1E695E480];
          v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v5, v6, *MEMORY[0x1E695E498]);
          if (v8)
          {
            v9 = v8;
            if (CFPropertyListCreateWithData(v7, v8, 0, 0, &v11))
            {
              operator new();
            }

            CFRelease(v9);
          }

          free(v5);
        }
      }

      if (CFReadStreamRead(stream, this + 8, 25) == 25)
      {
        return 0;
      }
    }
  }

  return 4294967246;
}

void _MPEntry::~_MPEntry(_MPEntry *this)
{
  *this = &unk_1EF4DC780;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 5) = 0;
  *(this + 17) = 0;
  v3 = *(this + 6);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }
}

{
  _MPEntry::~_MPEntry(this);

  JUMPOUT(0x186602850);
}

void _MPEntry::updataMetadata(_MPEntry *this, unsigned __int8 *a2, unsigned int a3, _TAG *a4, uint64_t a5)
{
  v10 = *(a4 + 20);
  switch(*(a4 + 20))
  {
    case 0xB201:
      v11 = @"PanOrientation";
      goto LABEL_19;
    case 0xB202:
      v11 = @"PanOverlap_H";
      goto LABEL_19;
    case 0xB203:
      v11 = @"PanOverlap_V";
      goto LABEL_19;
    case 0xB204:
      v11 = @"BaseViewpointNum";
      goto LABEL_19;
    case 0xB205:
      v11 = @"ConvergenceAngle";
      goto LABEL_19;
    case 0xB206:
      v11 = @"BaselineLength";
      goto LABEL_19;
    case 0xB207:
      v11 = @"VerticalDivergence";
      goto LABEL_19;
    case 0xB208:
      v11 = @"AxisDistance_X";
      goto LABEL_19;
    case 0xB209:
      v11 = @"AxisDistance_Y";
      goto LABEL_19;
    case 0xB20A:
      v11 = @"AxisDistance_Z";
      goto LABEL_19;
    case 0xB20B:
      v11 = @"YawAngle";
      goto LABEL_19;
    case 0xB20C:
      v11 = @"PitchAngle";
      goto LABEL_19;
    case 0xB20D:
      v11 = @"RollAngle";
      goto LABEL_19;
    default:
      if (v10 == 45056)
      {
        v11 = @"MPFVersion";
      }

      else
      {
        if (v10 != 45313)
        {
          return;
        }

        v11 = @"MPIndividualNum";
      }

LABEL_19:
      v12 = (*(*a4 + 48))(a4);
      v13 = (*(*a4 + 56))(a4);
      v14 = _TAG::nativeDataOrOffset(a4);
      if (v12 == 1)
      {
        v15 = v14;
        if (v13 == 10 || v13 == 5)
        {
          v23 = 0;
          memset(v22, 0, sizeof(v22));
          IIOScanner::IIOScanner(v22, a2, a3, *(*(this + 6) + 68));
          IIOScanner::seek(v22, v15 + a5);
          Val32 = IIOScanner::getVal32(v22);
          v18 = IIOScanner::getVal32(v22);
          if (v18)
          {
            v19 = *(this + 5);
            IIONumber::IIONumber(v21, Val32 / v18);
            IIODictionary::setObjectForKey(v19, v21, v11);
            IIONumber::~IIONumber(v21);
          }

          IIOScanner::~IIOScanner(v22);
        }

        else if (v13 == 4)
        {
          v20 = *(this + 5);
          IIONumber::IIONumber(v22, v14);
          IIODictionary::setObjectForKey(v20, v22, v11);
          IIONumber::~IIONumber(v22);
        }
      }

      return;
  }
}

void sub_18609C244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t _MPEntry::writeToStream(_MPEntry *this, CFWriteStreamRef stream)
{
  error = 0;
  v8 = 1850036301;
  CFWriteStreamWrite(stream, &v8, 4);
  v4 = CFPropertyListCreateData(*MEMORY[0x1E695E480], *(*(this + 5) + 8), kCFPropertyListXMLFormat_v1_0, 0, &error);
  if (v4)
  {
    v5 = v4;
    *buffer = CFDataGetLength(v4);
    CFWriteStreamWrite(stream, buffer, 4);
    if (*buffer)
    {
      BytePtr = CFDataGetBytePtr(v5);
      CFWriteStreamWrite(stream, BytePtr, *buffer);
    }

    CFWriteStreamWrite(stream, this + 8, 25);
    CFRelease(v5);
  }

  return 0;
}

void _MPExtension::_MPExtension(_MPExtension *this, unsigned __int8 *a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  _APPx::_APPx(this, a2, a3, a4, a5, a6, a7);
  *v8 = &unk_1EF4DC7A8;
  *(v8 + 80) = 0u;
  *(v8 + 96) = 0u;
  std::vector<_APPx *>::resize((v8 + 88), 0);
  *(this + 73) = 1;
  *(this + 114) = 0;
}

void sub_18609C3C0(_Unwind_Exception *a1)
{
  v3 = *(v1 + 11);
  if (v3)
  {
    *(v1 + 12) = v3;
    operator delete(v3);
  }

  _APPx::~_APPx(v1);
  _Unwind_Resume(a1);
}

void _MPExtension::~_MPExtension(_MPExtension *this)
{
  *this = &unk_1EF4DC7A8;
  v2 = *(this + 10);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 10) = 0;
  v3 = *(this + 11);
  v4 = *(this + 12);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *(this + 11);
  }

  *(this + 12) = v3;
  if (v3)
  {
    operator delete(v3);
  }

  _APPx::~_APPx(this);
}

{
  _MPExtension::~_MPExtension(this);

  JUMPOUT(0x186602850);
}

uint64_t _MPExtension::getShortBE(_MPExtension *this)
{
  v1 = *(this + 3);
  v2 = v1 + 2;
  v3 = *(this + 6);
  if (v1 + 2 >= v3)
  {
    _cg_jpeg_mem_term("getShortBE", 328, "out-of-bounds-read: _pos = %d   _jpegDataSize = %d\n", v1, v3);
    return 0;
  }

  else
  {
    v4 = bswap32(*(*(this + 5) + v1)) >> 16;
    *(this + 3) = v2;
  }

  return v4;
}

__n128 _MPExtension::processData(_MPExtension *this)
{
  _APPx::processData(this);
  v2 = *(this + 2) + 8;
  *(this + 3) = v2;
  *(this + 16) = v2;
  if ((*(*this + 104))(this) == 18761)
  {
    *(this + 32) = 1;
  }

  *(this + 3) += 2;
  *(this + 3) = *(this + 16) + (*(*this + 112))(this);
  v3 = (*(*this + 104))(this);
  if (v3 && *(this + 6) > v3)
  {
    operator new();
  }

  return _cg_jpeg_mem_term("processData", 571, "*** ERROR: bad idfCount: %d\n", v3);
}

_TAGList *_MPExtension::dumpTags(_MPExtension *this)
{
  result = *(this + 10);
  if (result)
  {
    result = _TAGList::dump(result);
  }

  v3 = *(this + 11);
  if (*(this + 12) != v3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      result = (*(**(v3 + 8 * v4) + 16))(*(v3 + 8 * v4));
      v4 = ++v5;
      v3 = *(this + 11);
    }

    while (v5 < ((*(this + 12) - v3) >> 3));
  }

  return result;
}

void _MPExtension::addMetadata(_MPExtension *this, CFMutableArrayRef theArray)
{
  if (theArray)
  {
    v3 = *(this + 11);
    if (*(this + 12) != v3)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        CFArrayAppendValue(theArray, *(*(*(v3 + 8 * v5) + 40) + 8));
        v5 = ++v6;
        v3 = *(this + 11);
      }

      while (v6 < ((*(this + 12) - v3) >> 3));
    }
  }
}

void _MPOFile::~_MPOFile(_MPOFile *this)
{
  _JPEGFile::~_JPEGFile(this);

  JUMPOUT(0x186602850);
}

__CFArray *_MPOFile::CopyMetadata(_MPOFile *this)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = (*(*this + 32))(this);
  if (v3)
  {
    _MPExtension::addMetadata(v3, Mutable);
  }

  return Mutable;
}

uint64_t _MPOFile::processData(_MPOFile *this)
{
  *(this + 5) = 0;
  result = _JPEGFile::getshort(this);
  if (result == 65496)
  {
    v3 = *(this + 5);
    result = _JPEGFile::getshort(this);
    if (result >> 8 >= 0xFF)
    {
      v4 = result;
      _JPEGFile::getshort(this);
      *(this + 5) = v3;
      if (v4 == 65506)
      {
        v5 = (*(this + 3) + v3);
        if (v5[4] == 77 && v5[5] == 80 && v5[6] == 70)
        {
          operator new();
        }
      }

      operator new();
    }
  }

  return result;
}

uint64_t _MPOFile::findMPExtension(_MPOFile *this)
{
  v1 = *(this + 9);
  v2 = *(this + 10);
  while (v1 != v2)
  {
    result = *v1;
    if (*(*v1 + 56) == -30 && (*(result + 73) & 1) != 0)
    {
      return result;
    }

    v1 += 8;
  }

  return 0;
}

_TAGList *_MPOFile::dump(_MPOFile *this, const char *a2)
{
  _JPEGFile::dump(this, a2);
  result = (*(*this + 32))(this);
  if (result)
  {

    return _MPExtension::dumpTags(result);
  }

  return result;
}

uint64_t globalMPOInfoReleaseProc(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void GlobalMPOInfo::GlobalMPOInfo(GlobalMPOInfo *this)
{
  *this = &unk_1EF4DC878;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0;
  std::vector<_APPx *>::resize(this + 3, 0);
  *(this + 6) = 0;
}

void sub_18609D1D8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void GlobalMPOInfo::GlobalMPOInfo(GlobalMPOInfo *this, unsigned __int8 *a2, CFIndex a3)
{
  *this = &unk_1EF4DC878;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0;
  std::vector<_APPx *>::resize(this + 3, 0);
  *(this + 6) = 0;
  v6 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v7 = v6;
  if (v6)
  {
    if (CFReadStreamOpen(v6))
    {
      GlobalMPOInfo::readFromStream(this, v7);
      CFReadStreamClose(v7);
    }

    CFRelease(v7);
  }
}

void sub_18609D2BC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void GlobalMPOInfo::~GlobalMPOInfo(GlobalMPOInfo *this)
{
  *this = &unk_1EF4DC878;
  v2 = *(this + 6);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 3);
  v4 = *(this + 4);
  if (v3 != v4)
  {
    do
    {
      if (*v3)
      {
        (*(**v3 + 8))(*v3);
      }

      ++v3;
    }

    while (v3 != v4);
    v3 = *(this + 3);
  }

  *(this + 4) = v3;
  if (v3)
  {
    operator delete(v3);
  }
}

{
  GlobalMPOInfo::~GlobalMPOInfo(this);

  JUMPOUT(0x186602850);
}

CFTypeRef GlobalMPOInfo::createDataRepresentation(GlobalMPOInfo *this)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    GlobalMPOInfo::writeToStream(this, v3);
    v4 = CFWriteStreamCopyProperty(v3, *MEMORY[0x1E695E900]);
    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

CFIndex GlobalMPOInfo::writeToStream(GlobalMPOInfo *this, CFWriteStreamRef stream)
{
  *buffer = 1112493127;
  CFWriteStreamWrite(stream, buffer, 4);
  v9 = (*(this + 4) - *(this + 3)) >> 3;
  result = CFWriteStreamWrite(stream, &v9, 8);
  if (v9 < 1)
  {
LABEL_6:
    CFWriteStreamWrite(stream, this + 8, 16);
    return 0;
  }

  else
  {
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = *(this + 3);
      if (v5 >= (*(this + 4) - v7) >> 3)
      {
        break;
      }

      result = _MPEntry::writeToStream(*(v7 + 8 * v5), stream);
      v5 = v6;
      if (v9 <= v6++)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

void *std::vector<_MPEntry *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(result, a2);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  return result;
}

uint64_t GlobalMPOInfo::getEntryAtIndex(uint64_t this, unsigned int a2)
{
  v2 = *(this + 24);
  if (a2 < ((*(this + 32) - v2) >> 3))
  {
    return *(v2 + 8 * a2);
  }

  __break(1u);
  return this;
}

IIOImageRead *ExamineMPOFile(IIOImageReadSession *a1)
{
  Size = IIOImageReadSession::getSize(a1);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  IIOScanner::IIOScanner(v5, a1);
  v3 = 0;
  if (Size >= 0xC8)
  {
    v3 = IIOImageReadSession::globalInfoForType(a1, 1297108768);
    if (!v3)
    {
      operator new();
    }

    if (*(&v5[0] + 1))
    {
      operator new();
    }
  }

  IIOScanner::~IIOScanner(v5);
  return v3;
}

void sub_18609D85C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x186602850](v9, 0x10A1C4078B77C84);
  IIOScanner::~IIOScanner(&a9);
  _Unwind_Resume(a1);
}

uint64_t icnsCompare(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[48];
  v3 = a2[48];
  if (v2 > v3)
  {
    return 1;
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(a1 + 12);
  v6 = *(a2 + 12);
  if (v5 > v6)
  {
    return 0xFFFFFFFFLL;
  }

  if (v5 < v6)
  {
    return 1;
  }

  v7 = a1[49];
  v8 = a2[49];
  v9 = v7 >= v8;
  v10 = v7 == v8;
  v11 = v7 < v8;
  if (!v10 && v9)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v11;
  }
}

void *GetICNSInfoTable(void)
{
  if (GetICNSInfoTable(void)::gIIO_sortIconInfo != -1)
  {
    GetICNSInfoTable();
  }

  return &globalIconInfo;
}

void GlobalICNSInfo::GlobalICNSInfo(GlobalICNSInfo *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  std::vector<ICNS_INFO>::resize(this, 0);
  std::vector<ICNS_INFO>::resize(this + 3, 0);
}

void sub_18609D9B4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  GlobalICNSInfo::GlobalICNSInfo(v1);
  _Unwind_Resume(a1);
}

void std::vector<ICNS_INFO>::resize(void *a1, unint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<ICNS_INFO>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 56 * a2;
  }
}

void GlobalICNSInfo::GlobalICNSInfo(GlobalICNSInfo *this, unsigned __int8 *a2, CFIndex a3)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  std::vector<ICNS_INFO>::resize(this, 0);
  std::vector<ICNS_INFO>::resize(this + 3, 0);
  v6 = CFReadStreamCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v7 = v6;
  if (v6)
  {
    if (CFReadStreamOpen(v6))
    {
      if (GlobalICNSInfo::readFromStream(this, v7))
      {
        *(this + 1) = *this;
        *(this + 4) = *(this + 3);
      }

      CFReadStreamClose(v7);
    }

    CFRelease(v7);
  }
}

void sub_18609DADC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void GlobalICNSInfo::~GlobalICNSInfo(GlobalICNSInfo *this)
{
  std::vector<ICNS_INFO>::resize(this, 0);
  std::vector<ICNS_INFO>::resize(this + 3, 0);
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

CFTypeRef GlobalICNSInfo::createDataRepresentation(GlobalICNSInfo *this)
{
  v2 = CFWriteStreamCreateWithAllocatedBuffers(*MEMORY[0x1E695E480], *MEMORY[0x1E695E480]);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (CFWriteStreamOpen(v2))
  {
    GlobalICNSInfo::writeToStream(this, v3);
    v4 = CFWriteStreamCopyProperty(v3, *MEMORY[0x1E695E900]);
    CFWriteStreamClose(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

uint64_t GlobalICNSInfo::writeToStream(GlobalICNSInfo *this, CFWriteStreamRef stream)
{
  *buffer = 1397637961;
  CFWriteStreamWrite(stream, buffer, 4);
  *v6 = -1227133513 * ((*(this + 1) - *this) >> 3);
  CFWriteStreamWrite(stream, v6, 4);
  CFWriteStreamWrite(stream, *this, 56 * *v6);
  *v6 = -1227133513 * ((*(this + 4) - *(this + 3)) >> 3);
  CFWriteStreamWrite(stream, v6, 4);
  CFWriteStreamWrite(stream, *(this + 3), 56 * *v6);
  return 0;
}

void std::vector<ICNS_INFO>::push_back[abi:fe200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v10 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v11 = v10 + 1;
    if ((v10 + 1) > 0x492492492492492)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v12 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x249249249249249)
    {
      v13 = 0x492492492492492;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<ICNS_INFO>>(a1, v13);
    }

    v14 = 56 * v10;
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[2];
    *(v14 + 48) = *(a2 + 6);
    *(v14 + 16) = v16;
    *(v14 + 32) = v17;
    *v14 = v15;
    v9 = 56 * v10 + 56;
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[2];
    *(v4 + 48) = *(a2 + 6);
    *(v4 + 16) = v7;
    *(v4 + 32) = v8;
    *v4 = v6;
    v9 = v4 + 56;
  }

  *(a1 + 8) = v9;
}

BOOL GlobalICNSInfo::getICNSImageInfoAtIndex(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  if (v3 > a2)
  {
    v4 = *a1 + 56 * a2;
    v5 = *v4;
    v6 = *(v4 + 16);
    v7 = *(v4 + 32);
    *(a3 + 48) = *(v4 + 48);
    *(a3 + 16) = v6;
    *(a3 + 32) = v7;
    *a3 = v5;
  }

  return v3 > a2;
}

uint64_t GlobalICNSInfo::getICNSMaskInfoForType(uint64_t a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v3 == v4)
  {
    return 0;
  }

  while (1)
  {
    v7 = *(v3 + 36);
    v8 = *(v3 + 52);
    if (*(v3 + 32) == a2)
    {
      break;
    }

    v3 += 56;
    if (v3 == v4)
    {
      return 0;
    }
  }

  v6 = *(v3 + 16);
  *a3 = *v3;
  *(a3 + 16) = v6;
  *(a3 + 32) = a2;
  *(a3 + 36) = v7;
  *(a3 + 52) = v8;
  return 1;
}

__n128 GlobalICNSInfo::addICNSInfo(uint64_t *a1, __int16 *a2)
{
  if (*a2 == -2)
  {
    a1 += 3;
LABEL_7:

    std::vector<ICNS_INFO>::push_back[abi:fe200100](a1, a2);
    return result;
  }

  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    goto LABEL_7;
  }

  v5 = *(a2 + 8);
  while (*(v3 + 32) != v5)
  {
    v3 += 56;
    if (v3 == v4)
    {
      goto LABEL_7;
    }
  }

  v7 = v5 >> 24;
  v8 = MEMORY[0x1E69E9830];
  if ((v5 >> 24) <= 0x7F)
  {
    v9 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(v7, 0x40000uLL);
    v5 = *(a2 + 8);
    v7 = v5 >> 24;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = 46;
  }

  v11 = v5 << 8 >> 24;
  if (v11 <= 0x7F)
  {
    v12 = *(v8 + 4 * v11 + 60) & 0x40000;
  }

  else
  {
    v12 = __maskrune(v11, 0x40000uLL);
    v5 = *(a2 + 8);
    v11 = v5 << 8 >> 24;
  }

  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 46;
  }

  v14 = v5 >> 8;
  if (v14 <= 0x7F)
  {
    v15 = *(v8 + 4 * v14 + 60) & 0x40000;
  }

  else
  {
    v15 = __maskrune(v14, 0x40000uLL);
    v5 = *(a2 + 8);
    v14 = v5 >> 8;
  }

  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 46;
  }

  v17 = v5;
  if (v5 <= 0x7F)
  {
    v18 = *(v8 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v18 = __maskrune(v5, 0x40000uLL);
    v17 = *(a2 + 32);
  }

  if (v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = 46;
  }

  return _cg_jpeg_mem_term("addICNSInfo", 356, "*** ERROR: duplicate icnsOSType? '%c%c%c%c' already exists\n", v10, v13, v16, v19);
}

void std::vector<ICNS_INFO>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 56 * ((56 * a2 - 56) / 0x38) + 56;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v5 - *a1) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<ICNS_INFO>>(a1, v9);
    }

    v11 = 56 * v6;
    v12 = 56 * ((56 * a2 - 56) / 0x38) + 56;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<ICNS_INFO>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t PBMReadPlugin::PBMReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v6 = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *v6 = &unk_1EF4DC908;
  *(v6 + 464) = 0u;
  *(v6 + 480) = 0u;
  *(v6 + 496) = 0;
  *(a1 + 504) = GetPBMLookupTable();
  return a1;
}

void PBMReadPlugin::~PBMReadPlugin(PBMReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t PBMReadPlugin::readChar(PBMReadPlugin *this)
{
  v1 = *(this + 64);
  if (v1)
  {
    v2 = *(this + 62);
    v3 = v2 + 1;
    if (v2 != -1)
    {
      v4 = *(this + 65);
      if (v4 >= v3)
      {
        v5 = *(v1 + v2);
        *(this + 62) = v3;
        v7 = *(this + 63);
        if (*(v7 + v5) != 254)
        {
          return v5;
        }

        while (v3 < v4)
        {
          v8 = v3++;
          v9 = *(v1 + v8);
          *(this + 62) = v3;
          if (*(v7 + v9) == 252)
          {
            if (v3 >= v4)
            {
              return 0xFFFFFFFFLL;
            }

            v10 = *(v1 + v3);
            v3 = v8 + 2;
            *(this + 62) = v8 + 2;
            if (*(v7 + v10) != 254)
            {
              return v10;
            }
          }
        }
      }
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t PBMReadPlugin::readInt(PBMReadPlugin *this)
{
  while (1)
  {
    Char = PBMReadPlugin::readChar(this);
    if ((Char & 0x80000000) != 0)
    {
      break;
    }

    v3 = *(*(this + 63) + Char);
    if ((v3 & 0x80000000) == 0)
    {
      for (i = PBMReadPlugin::readChar(this); (i & 0x80000000) == 0; i = PBMReadPlugin::readChar(this))
      {
        v5 = *(*(this + 63) + i);
        if (v5 == 255)
        {
          break;
        }

        if ((v5 & 0x80) != 0)
        {
          return v3;
        }

        if (v3 > 214748364)
        {
          break;
        }

        if (10 * v3 > (v5 ^ 0x7FFFFFFF))
        {
          break;
        }

        v3 = (10 * v3 + v5);
      }

      return 0xFFFFFFFFLL;
    }
  }

  return 0xFFFFFFFFLL;
}

float PBMReadPlugin::readFloat(PBMReadPlugin *this)
{
  do
  {
    Char = PBMReadPlugin::readChar(this);
    v3 = -1.0;
    if ((Char & 0x80000000) != 0)
    {
      return v3;
    }

    v4 = Char;
    v5 = *(*(this + 63) + Char);
  }

  while (v5 < 0);
  v6 = PBMReadPlugin::readChar(this);
  if ((v6 & 0x80000000) != 0)
  {
    return v3;
  }

  v7 = 0;
  if (v4 == 45)
  {
    v5 = 0;
  }

  v8 = 1.0;
  while (1)
  {
    if (v6 == 46)
    {
      if (v7)
      {
        return v3;
      }

      v7 = 1;
      goto LABEL_15;
    }

    v9 = *(*(this + 63) + v6);
    if (v9 < 0)
    {
      break;
    }

    if (v5 > 214748364 || 10 * v5 > (v9 ^ 0x7FFFFFFF))
    {
      return v3;
    }

    v5 = 10 * v5 + v9;
    if (v7)
    {
      v8 = v8 * 10.0;
    }

LABEL_15:
    v6 = PBMReadPlugin::readChar(this);
    if ((v6 & 0x80000000) != 0)
    {
      return v3;
    }
  }

  if (v4 == 45)
  {
    v10 = -v5;
  }

  else
  {
    v10 = v5;
  }

  return v10 / v8;
}

uint64_t PBMReadPlugin::initialize(PBMReadPlugin *this, IIODictionary *a2)
{
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  IIOScanner::IIOScanner(&v42, *(this + 3));
  if ((*(this + 369) & 1) == 0)
  {
    exception = __cxa_allocate_exception(4uLL);
    *exception = -50;
  }

  v10 = (this + 512);
  v11 = v43;
  *(this + 64) = *(&v42 + 1);
  *(this + 65) = v11;
  *(this + 62) = 0;
  if (v11)
  {
    if (v11 >= 0x200)
    {
      v12 = 512;
    }

    else
    {
      v12 = v11;
    }

    v13 = malloc_type_malloc(v12, 0x100004077774924uLL);
    memcpy(v13, *v10, v12);
    v41 = 0;
    v39 = 0u;
    v40 = 0u;
    memset(v38, 0, sizeof(v38));
    IIOScanner::IIOScanner(v38, v13, v12, 0);
    LODWORD(v14) = 0;
    do
    {
      if (*(v13 + v14) == 35)
      {
        *(v13 + v14) = 32;
        v14 = (v14 + 1);
        if (v14 < v12)
        {
          while (*(v13 + v14) != 10)
          {
            *(v13 + v14++) = 32;
            if (v12 == v14)
            {
              goto LABEL_72;
            }
          }
        }

        if (v14 == v12)
        {
LABEL_72:
          v35 = __cxa_allocate_exception(4uLL);
          *v35 = -1;
          __cxa_throw(v35, MEMORY[0x1E69E5478], 0);
        }
      }

      LODWORD(v14) = v14 + 1;
    }

    while (v14 < v12);
    if (IIOScanner::getVal8(v38) != 80)
    {
      goto LABEL_73;
    }

    Val8 = IIOScanner::getVal8(v38);
    *(&v39 + 1) = *(this + 63);
    if (Val8 != 55)
    {
      v16 = IIOScanner::lookupVal8(v38);
      if ((v16 & 0xFFFFFFFE) != 0xFFFFFFFC)
      {
        goto LABEL_73;
      }

      while ((v16 & 0xFE) == 0xFC)
      {
        LOBYTE(v16) = IIOScanner::lookupVal8(v38);
      }

      while (v16 <= 9u)
      {
        LOBYTE(v16) = IIOScanner::lookupVal8(v38);
      }

      if ((v16 & 0xFE) != 0xFC)
      {
        goto LABEL_73;
      }

      while ((v16 & 0xFE) == 0xFC)
      {
        LOBYTE(v16) = IIOScanner::lookupVal8(v38);
      }

      while (v16 <= 9u)
      {
        LOBYTE(v16) = IIOScanner::lookupVal8(v38);
      }

      if (v16 == 0xFF)
      {
LABEL_73:
        v36 = __cxa_allocate_exception(4uLL);
        *v36 = -1;
        __cxa_throw(v36, MEMORY[0x1E69E5478], 0);
      }
    }

    IIOScanner::~IIOScanner(v38);
  }

  else
  {
    v13 = 0;
  }

  Header = PBMReadPlugin::readHeader(this, v3, v4, v5, v6, v7, v8, v9);
  v18 = Header;
  if (Header <= 0xA)
  {
    if (((1 << Header) & 0x536) != 0)
    {
      *(this + 262) = 0;
      *(this + 129) = *(this + 128);
      *(this + 130) = 1;
      *(this + 85) = 1196573017;
      if (Header == 8)
      {
        *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F0F8]);
        *(this + 373) = 1;
        *(this + 265) = 1;
        v19 = 2;
        *(this + 263) = 2;
        *(this + 294) = 0;
        *(this + 144) = 32;
        *(this + 128) = 32;
        *(this + 297) = 1;
      }

      else
      {
        *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F128]);
        v22 = *(this + 128);
        *(this + 144) = v22;
        if (v22 == 16)
        {
          v19 = 1;
        }

        else
        {
          if (v22 != 32)
          {
LABEL_52:
            *(this + 63) = (*(this + 61) * (*(this + 129) >> 3) + 3) & 0xFFFFFFFC;
            goto LABEL_53;
          }

          v19 = 2;
        }
      }

      *(this + 295) = v19;
      goto LABEL_52;
    }

    if (((1 << Header) & 0x248) != 0)
    {
      *(this + 130) = 3;
      *(this + 262) = 0;
      *(this + 129) = 3 * *(this + 128);
      *(this + 85) = 1380401696;
      if (Header == 9)
      {
        *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
        *(this + 373) = 1;
        *(this + 129) = 96;
        *(this + 265) = 1;
        *(this + 263) = 2;
        *(this + 73) = 33882116;
        LOWORD(v20) = *(this + 128);
        *(this + 144) = v20;
        *(this + 297) = 1;
        v21 = 4;
      }

      else
      {
        *(this + 20) = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        v20 = *(this + 128);
        *(this + 144) = v20;
        switch(v20)
        {
          case 8:
            *(this + 73) = 327684;
            v21 = 4;
            LOWORD(v20) = 8;
            break;
          case 16:
            *(this + 73) = 16777219;
            v21 = 3;
            LOWORD(v20) = 16;
            break;
          case 32:
            *(this + 73) = 33554435;
            *(this + 297) = 1;
            v21 = 3;
            LOWORD(v20) = 32;
            break;
          default:
            v21 = *(this + 146);
            break;
        }
      }

      *(this + 63) = *(this + 61) * (*(this + 129) >> 3);
      *(this + 145) = v20 * v21;
      goto LABEL_53;
    }

    if (Header == 7)
    {
      v23 = *(this + 128);
      v24 = *(this + 130);
      *(this + 129) = v24 * v23;
      *(this + 63) = (((v24 * v23) + 7) >> 3) * *(this + 61);
      *(this + 144) = v23;
      *(this + 145) = *(this + 146) * v23;
      if (v23 == 16)
      {
        v25 = 1;
      }

      else
      {
        if (v23 != 32)
        {
          goto LABEL_63;
        }

        *(this + 265) = 1;
        v25 = 2;
      }

      *(this + 263) = v25;
LABEL_63:
      if (v24 == 3)
      {
        *(this + 85) = 1380401696;
        if (v23 == 8)
        {
          *(this + 290) = 262176;
          *(this + 147) = 5;
        }
      }

      else if (v24 == 4)
      {
        *(this + 85) = 1380401696;
        if (v23 == 8)
        {
          v31 = 3;
        }

        else
        {
          v31 = 259;
        }

        *(this + 131) = v31;
      }

      else
      {
        *(this + 85) = 1196573017;
        v32 = *(this + 264);
        v33 = *(this + 263);
        v34 = *(this + 265) != 0;
        *(this + 294) = *(this + 262) & 0x1F;
        *(this + 295) = v33 & 7;
        *(this + 296) = v32 & 0xF | (v33 >> 4);
        *(this + 297) = v34;
      }

LABEL_53:
      *(this + 49) = 1;
      *(this + 58) = v18;
      *(this + 61) = *(this + 62);
      *(this + 378) = 1;
      v28 = (*(this + 263) << 12) | (*(this + 264) << 16) | ((*(this + 265) != 0) << 8) | *(this + 262);
      v29 = IIO_BitmapInfoString(v28);
      _cg_jpeg_mem_term("initialize", 772, "*** bitmapInfo: %08X  %s\n", v28, v29);
      v27 = 0;
      v26 = 1;
      *(this + 204) = 1;
      if (!v13)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  _cg_jpeg_mem_term("initialize", 761, "*** ERROR: PBM type '%d' not handled\n", Header);
  v26 = 0;
  v27 = 4294967246;
  if (v13)
  {
LABEL_54:
    free(v13);
  }

LABEL_55:
  *v10 = 0;
  *(this + 65) = 0;
  if ((v26 & 1) == 0)
  {
    kdebug_trace();
  }

  IIOScanner::~IIOScanner(&v42);
  return v27;
}

void sub_18609EC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

void sub_18609EC9C(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_begin_catch(a1);
  _cg_jpeg_mem_term("initialize", 605, "failed to read PBM header\n");
  __cxa_end_catch();
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x18609EA18);
}

void sub_18609ECC4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __cxa_end_catch();
  IIOScanner::~IIOScanner(va);
  JUMPOUT(0x18609EC80);
}

uint64_t PBMReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
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

uint64_t PBMReadPlugin::loadDataFromXPCObject(PBMReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_pbm", &length);
    if (length == 40)
    {
      v6 = data;
      result = 0;
      v7 = *v6;
      v8 = v6[1];
      *(this + 62) = *(v6 + 4);
      *(this + 29) = v7;
      *(this + 30) = v8;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t PBMReadPlugin::saveDataToXPCObject(PBMReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_pbm", this + 464, 0x28uLL);
  }

  return v4;
}

uint64_t PBMReadPlugin::decode_PBM_P1_TXT(PBMReadPlugin *this, unsigned __int8 *a2)
{
  v2 = *(this + 78);
  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  LODWORD(v7) = *(this + 77);
  do
  {
    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = 0;
    v9 = &a2[v6 * *(this + 79)];
    do
    {
      while (1)
      {
        Char = PBMReadPlugin::readChar(this);
        if ((Char & 0x80000000) != 0)
        {
          break;
        }

        if ((*(*(this + 63) + Char) & 0x80000000) == 0)
        {
          if (*(*(this + 63) + Char))
          {
            v11 = 0;
          }

          else
          {
            v11 = -1;
          }

          goto LABEL_13;
        }
      }

      if (++v5 <= 9)
      {
        _cg_jpeg_mem_term("decode_PBM_P1_TXT", 876, "*** PBM - P1: invalid value at [%d,%d]: 0x%02X\n", v6, v8, -1);
      }

      v11 = 0;
LABEL_13:
      *v9++ = v11;
      ++v8;
      v7 = *(this + 77);
    }

    while (v8 < v7);
    v2 = *(this + 78);
LABEL_15:
    ++v6;
  }

  while (v6 < v2);
  if (v5)
  {
    LogError("decode_PBM_P1_TXT", 886, "*** ERROR: PBM - P1: %d invalid values in image [%d x %d]\n", v5, *(this + 77), v2);
  }

  return 1;
}

uint64_t PBMReadPlugin::decode_PBM_P2_TXT(PBMReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 59);
  v5 = *(this + 78);
  if (*(this + 128) == 16)
  {
    if (!v5)
    {
      return 1;
    }

    v6 = 0;
    v7 = 0;
    LODWORD(v8) = *(this + 77);
    do
    {
      if (v8)
      {
        v9 = 0;
        v10 = &a2[v7 * *(this + 79)];
        do
        {
          Int = PBMReadPlugin::readInt(this);
          if ((Int & 0x80000000) != 0)
          {
            if (++v6 <= 9)
            {
              _cg_jpeg_mem_term("decode_PBM_P2_TXT", 918, "*** PGM - P2: invalid value at [%d,%d]: 0x%02\n", v7, v9, Int);
            }

            LOWORD(v13) = 0;
          }

          else
          {
            v12 = Int;
            if (Int >= v4)
            {
              v12 = v4;
            }

            v13 = 0xFFFF * v12 / v4;
          }

          *&v10[2 * v9++] = v13;
          v8 = *(this + 77);
        }

        while (v9 < v8);
        v5 = *(this + 78);
      }

      ++v7;
    }

    while (v7 < v5);
  }

  else
  {
    if (!v5)
    {
      return 1;
    }

    v6 = 0;
    v14 = 0;
    LODWORD(v15) = *(this + 77);
    do
    {
      if (v15)
      {
        v16 = 0;
        v17 = &a2[v14 * *(this + 79)];
        do
        {
          v18 = PBMReadPlugin::readInt(this);
          if ((v18 & 0x80000000) != 0)
          {
            if (++v6 <= 9)
            {
              _cg_jpeg_mem_term("decode_PBM_P2_TXT", 941, "*** PGM - P2: invalid value at [%d,%d]: 0x%02\n", v14, v16, v18);
            }

            LOBYTE(v20) = 0;
          }

          else
          {
            v19 = v18;
            if (v18 >= v4)
            {
              v19 = v4;
            }

            v20 = 255 * v19 / v4;
          }

          v17[v16++] = v20;
          v15 = *(this + 77);
        }

        while (v16 < v15);
        v5 = *(this + 78);
      }

      ++v14;
    }

    while (v14 < v5);
  }

  if (v6)
  {
    LogError("decode_PBM_P2_TXT", 954, "*** ERROR: PGM - P2: %d invalid values in image [%d x %d]\n", v6, *(this + 77), v5);
  }

  return 1;
}

uint64_t PBMReadPlugin::decode_PPM_P3_TXT(PBMReadPlugin *this, unsigned __int8 *a2)
{
  v3 = *(this + 59);
  if (*(this + 128) != 16)
  {
    v20 = *(this + 62);
    if (v20)
    {
      v5 = 0;
      v21 = 2 * (*(this + 437) != 0);
      v22 = 2 * (*(this + 437) == 0);
      v23 = *(this + 59);
      LODWORD(v24) = *(this + 61);
      v36 = a2;
      while (!v24)
      {
LABEL_37:
        ++v5;
        result = 1;
        if (v5 >= v20)
        {
          return result;
        }
      }

      v9 = 0;
      v25 = &a2[v5 * *(this + 79)];
      while (1)
      {
        Int = PBMReadPlugin::readInt(this);
        if (Int == -1)
        {
          break;
        }

        v27 = Int;
        v28 = PBMReadPlugin::readInt(this);
        if (v28 == -1)
        {
          break;
        }

        v29 = v28;
        v30 = PBMReadPlugin::readInt(this);
        if (v30 == -1)
        {
          break;
        }

        v31 = v27;
        if (v27 >= v3)
        {
          v31 = v3;
        }

        v25[v22] = 255 * v31 / v23;
        v32 = v29;
        if (v29 >= v3)
        {
          v32 = v3;
        }

        v25[1] = 255 * v32 / v23;
        v33 = v30;
        if (v30 >= v3)
        {
          v33 = v3;
        }

        v25[v21] = 255 * v33 / v23;
        v25[3] = -1;
        v25 += 4;
        ++v9;
        v24 = *(this + 61);
        if (v9 >= v24)
        {
          v20 = *(this + 62);
          a2 = v36;
          goto LABEL_37;
        }
      }

      v34 = 1026;
      goto LABEL_42;
    }

    return 1;
  }

  v4 = *(this + 62);
  if (!v4)
  {
    return 1;
  }

  v5 = 0;
  v6 = *(this + 326);
  v7 = *(this + 59);
  LODWORD(v8) = *(this + 61);
  v35 = a2;
  while (!v8)
  {
LABEL_20:
    ++v5;
    result = 1;
    if (v5 >= v4)
    {
      return result;
    }
  }

  v9 = 0;
  v10 = &a2[v5 * *(this + 79)];
  while (1)
  {
    v11 = PBMReadPlugin::readInt(this);
    if (v11 == -1)
    {
      break;
    }

    v12 = v11;
    v13 = PBMReadPlugin::readInt(this);
    if (v13 == -1)
    {
      break;
    }

    v14 = v13;
    v15 = PBMReadPlugin::readInt(this);
    if (v15 == -1)
    {
      break;
    }

    v16 = v12;
    if (v12 >= v3)
    {
      v16 = v3;
    }

    *v10 = 0xFFFF * v16 / v7;
    v17 = v14;
    if (v14 >= v3)
    {
      v17 = v3;
    }

    *(v10 + 1) = 0xFFFF * v17 / v7;
    v18 = v15;
    if (v15 >= v3)
    {
      v18 = v3;
    }

    *(v10 + 2) = 0xFFFF * v18 / v7;
    if (v6)
    {
      *(v10 + 3) = -1;
      v10 += 8;
    }

    else
    {
      v10 += 6;
    }

    ++v9;
    v8 = *(this + 61);
    if (v9 >= v8)
    {
      v4 = *(this + 62);
      a2 = v35;
      goto LABEL_20;
    }
  }

  v34 = 993;
LABEL_42:
  _cg_jpeg_mem_term("decode_PPM_P3_TXT", v34, "reached EOF at row:%d  col:%d\n", v5, v9);
  return 0;
}

uint64_t PBMReadPlugin::decode_PGM_P5_RAW(PBMReadPlugin *this, unsigned __int8 *__dst)
{
  v2 = *(this + 62);
  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = *(this + 128) >> 3;
  v7 = v6 * *(this + 61);
  v8 = __dst;
  do
  {
    if (v7 && (v9 = *(this + 64)) != 0)
    {
      v10 = *(this + 62);
      if (__CFADD__(v10, v7) || *(this + 65) < v10 + v7)
      {
LABEL_18:
        _cg_jpeg_mem_term("decode_PGM_P5_RAW", 1118, "read error requested %ld bytes - got %d\n", v7, 0);
        return 0;
      }

      memcpy(v8, (v9 + v10), v7);
      *(this + 62) += v7;
      v2 = *(this + 62);
    }

    else if (v7)
    {
      goto LABEL_18;
    }

    v11 = *(this + 79);
    v8 += v11;
    ++v5;
  }

  while (v5 < v2);
  result = 1;
  if (v6 == 2 && v2)
  {
    v13 = 0;
    v14 = *(this + 61);
    do
    {
      if (v14)
      {
        v15 = &__dst[(v11 * v13)];
        v16 = v14;
        do
        {
          *v15 = bswap32(*v15) >> 16;
          v15 += 2;
          --v16;
        }

        while (v16);
      }

      ++v13;
    }

    while (v13 != v2);
    return 1;
  }

  return result;
}

uint64_t PBMReadPlugin::decode_PPM_P6_RAW(PBMReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 63);
  v5 = *(this + 79);
  v6 = malloc_type_malloc(v4, 0x100004077774924uLL);
  v7 = v6;
  v8 = *(this + 59);
  v9 = *(this + 128);
  if (v9 == 16)
  {
    if (*(this + 62))
    {
      v19 = 0;
      v20 = 3 * *(this + 61);
      do
      {
        if (v4 && (v21 = *(this + 64)) != 0)
        {
          v22 = *(this + 62);
          if (__CFADD__(v22, v4) || *(this + 65) < v22 + v4)
          {
LABEL_49:
            _cg_jpeg_mem_term("decode_PPM_P6_RAW", 1206, "read error requested %ld bytes - got %d\n");
            goto LABEL_51;
          }

          memcpy(v7, (v21 + v22), v4);
          *(this + 62) += v4;
        }

        else if (v4)
        {
          goto LABEL_49;
        }

        if (*(this + 372) == 1)
        {
          dest.data = v7;
          dest.height = 1;
          dest.width = v20;
          dest.rowBytes = v4;
          vImageByteSwap_Planar16U(&dest, &dest, 0x10u);
        }

        v23 = *(this + 77);
        if (v23)
        {
          LODWORD(v24) = 3 * v23;
          if (v24 <= 1)
          {
            v24 = 1;
          }

          else
          {
            v24 = v24;
          }

          v25 = v7;
          do
          {
            v26 = *v25;
            if (v26 >= v8)
            {
              v26 = v8;
            }

            *v25++ = 0xFFFF * v26 / v8;
            --v24;
          }

          while (v24);
        }

        memcpy(a2, v7, v4);
        a2 += *(this + 79);
        ++v19;
      }

      while (v19 < *(this + 62));
    }

    goto LABEL_45;
  }

  if (v9 != 8)
  {
LABEL_45:
    v10 = 1;
LABEL_46:
    if (!v7)
    {
      return v10;
    }

    goto LABEL_47;
  }

  v10 = 1;
  dest.data = v6;
  dest.height = 1;
  v11 = *(this + 62);
  dest.width = *(this + 61);
  dest.rowBytes = v4;
  v28.data = a2;
  v28.height = 1;
  v28.width = *(this + 77);
  v28.rowBytes = v5;
  if (!v11)
  {
    goto LABEL_46;
  }

  v12 = 0;
  while (1)
  {
    if (v4)
    {
      v13 = *(this + 64);
      if (v13)
      {
        v14 = *(this + 62);
        if (!__CFADD__(v14, v4) && *(this + 65) >= v14 + v4)
        {
          memcpy(v7, (v13 + v14), v4);
          *(this + 62) += v4;
          goto LABEL_10;
        }
      }
    }

    if (v4)
    {
      break;
    }

LABEL_10:
    if (*(this + 77))
    {
      v15 = 0;
      do
      {
        v16 = v7[v15];
        if (v16 >= v8)
        {
          v16 = v8;
        }

        v7[v15++] = 255 * v16 / v8;
      }

      while (v15 < (3 * *(this + 77)));
    }

    if (*(this + 437))
    {
      vImageConvert_RGB888toRGBA8888(&dest, 0, 0xFFu, &v28, 0, 0);
    }

    else
    {
      vImageConvert_RGB888toBGRA8888(&dest, 0, 0xFFu, &v28, 0, 0);
    }

    if (*(this + 77))
    {
      v17 = 0;
      do
      {
        v18 = v7[v17];
        if (v18 >= v8)
        {
          v18 = v8;
        }

        v7[v17++] = 255 * v18 / v8;
      }

      while (v17 < (3 * *(this + 77)));
    }

    v28.data = v28.data + *(this + 79);
    if (++v12 >= *(this + 62))
    {
      goto LABEL_45;
    }
  }

  _cg_jpeg_mem_term("decode_PPM_P6_RAW", 1166, "read error requested %ld bytes - got %d\n");
LABEL_51:
  v10 = 0;
  if (v7)
  {
LABEL_47:
    free(v7);
  }

  return v10;
}

uint64_t PBMReadPlugin::decode_PAM_P7_RAW(PBMReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 63);
  v5 = *(this + 79);
  v6 = malloc_type_malloc(v4, 0x100004077774924uLL);
  v7 = *(this + 256);
  v8 = *(this + 130);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      if (v7 == 8)
      {
        operator new();
      }

      goto LABEL_15;
    }

    if (v8 == 4)
    {
      if (v7 == 16)
      {
        operator new();
      }

      operator new();
    }
  }

  else
  {
    if (v8 == 1)
    {
      operator new();
    }

    if (v8 == 2)
    {
      operator new();
    }
  }

  _cg_jpeg_mem_term("decode_PAM_P7_RAW", 1280, "*** ERROR: unexpected numberOfChannels: %d\n", *(this + 130));
LABEL_15:
  v9 = 1;
  v19 = v6;
  v20 = 1;
  v10 = *(this + 62);
  v21 = *(this + 61);
  v22 = v4;
  v15 = a2;
  v16 = 1;
  v17 = *(this + 77);
  v18 = v5;
  if (!v10)
  {
    goto LABEL_26;
  }

  v11 = 0;
  while (1)
  {
    if (v4)
    {
      v12 = *(this + 64);
      if (v12)
      {
        break;
      }
    }

    if (v4)
    {
      goto LABEL_25;
    }

LABEL_23:
    a2 += v5;
    v15 = a2;
    if (++v11 >= *(this + 62))
    {
      v9 = 1;
      goto LABEL_26;
    }
  }

  v13 = *(this + 62);
  if (!__CFADD__(v13, v4) && *(this + 65) >= v13 + v4)
  {
    memcpy(v6, (v12 + v13), v4);
    *(this + 62) += v4;
    goto LABEL_23;
  }

LABEL_25:
  _cg_jpeg_mem_term("decode_PAM_P7_RAW", 1292, "read error requested %ld bytes - got %d\n", v6, 0);
  v9 = 0;
LABEL_26:
  if (v6)
  {
    free(v6);
  }

  return v9;
}

uint64_t PBMReadPlugin::decode_PFM_Pf_RAW(PBMReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 120);
  v5 = *(this + 61) * (*(this + 129) >> 3);
  v6 = *(this + 160);
  if (v6 != 16)
  {
    if (v6 == 32)
    {
      v7 = *(this + 62);
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = &a2[*(this + 79) * (v7 + ~i)];
          if (v5 && (v10 = *(this + 64)) != 0 && (v11 = *(this + 62), !__CFADD__(v11, v5)) && *(this + 65) >= v11 + v5)
          {
            memcpy(v9, (v10 + v11), v5);
            *(this + 62) += v5;
          }

          else if (v5)
          {
            _cg_jpeg_mem_term("decode_PFM_Pf_RAW", 1343, "read error requested %ld bytes - got %d\n", v5, 0);
            return 0;
          }

          v12 = *(this + 61);
          if (v12)
          {
            v13 = *(this + 372);
            do
            {
              v14 = *v9;
              v15 = COERCE_FLOAT(bswap32(*v9));
              if (!v13)
              {
                v14 = v15;
              }

              *v9++ = v4 * v14;
              --v12;
            }

            while (v12);
          }

          v7 = *(this + 62);
        }
      }
    }

    else
    {
      LogError("decode_PFM_Pf_RAW", 1385, "*** ERROR: unexpected bitdepth: %d\n", v6);
    }

    return 1;
  }

  v16 = malloc_type_malloc(*(this + 61) * (*(this + 129) >> 3), 0x100004077774924uLL);
  v17 = *(this + 62);
  if (v17)
  {
    for (j = 0; j < v17; ++j)
    {
      v19 = *(this + 79);
      if (v5 && (v20 = *(this + 64)) != 0)
      {
        v21 = *(this + 62);
        if (__CFADD__(v21, v5) || *(this + 65) < v21 + v5)
        {
LABEL_36:
          _cg_jpeg_mem_term("decode_PFM_Pf_RAW", 1367, "*** ERROR: read error requested %ld bytes - got %d\n", v5, 0);
          v34 = 0;
          if (v16)
          {
            goto LABEL_37;
          }

          return v34;
        }

        memcpy(v16, (v20 + v21), v5);
        *(this + 62) += v5;
      }

      else if (v5)
      {
        goto LABEL_36;
      }

      v22 = *(this + 61);
      if (v22)
      {
        v23 = &a2[v19 * (v17 + ~j)];
        v24 = *(this + 372);
        v25 = v16;
        do
        {
          v26 = *v25++;
          v27 = *&v26;
          v28 = COERCE_FLOAT(bswap32(v26));
          if (!v24)
          {
            v27 = v28;
          }

          _S0 = v4 * v27;
          __asm { FCVT            H0, S0 }

          *v23 = LOWORD(_S0);
          v23 += 2;
          --v22;
        }

        while (v22);
      }

      v17 = *(this + 62);
    }
  }

  v34 = 1;
  if (!v16)
  {
    return v34;
  }

LABEL_37:
  free(v16);
  return v34;
}

uint64_t PBMReadPlugin::decode_PFM_PF_RAW(PBMReadPlugin *this, unsigned __int8 *a2)
{
  v4 = *(this + 63);
  v5 = *(this + 79);
  v6 = malloc_type_malloc(v4, 0x100004077774924uLL);
  if (!*(this + 62))
  {
LABEL_29:
    v35 = 1;
    if (v6)
    {
      goto LABEL_30;
    }

    return v35;
  }

  v7 = 0;
  v8 = *(this + 120);
  while (1)
  {
    if (v4)
    {
      v9 = *(this + 64);
      if (v9)
      {
        break;
      }
    }

    if (v4)
    {
      goto LABEL_32;
    }

LABEL_9:
    v11 = *(this + 160);
    if (v11 == 16)
    {
      v21 = *(this + 61);
      if (v21)
      {
        v22 = 0;
        v23 = &a2[v5 * (*(this + 78) + ~v7)];
        v24 = *(this + 372);
        v25 = v6;
        do
        {
          v23 += 2;
          v26 = 3;
          do
          {
            v27 = *v25++;
            v28 = *&v27;
            v29 = COERCE_FLOAT(bswap32(v27));
            if (!v24)
            {
              v28 = v29;
            }

            _S0 = v8 * v28;
            __asm { FCVT            H0, S0 }

            *(v23 - 1) = LOWORD(_S0);
            v23 += 2;
            --v26;
          }

          while (v26);
          *(v23 - 1) = COERCE_UNSIGNED_INT(1.0);
          ++v22;
        }

        while (v22 != v21);
      }
    }

    else if (v11 == 32)
    {
      v12 = *(this + 61);
      if (v12)
      {
        v13 = 0;
        v14 = &a2[v5 * (*(this + 78) + ~v7)];
        v15 = *(this + 372);
        v16 = v6;
        do
        {
          v14 += 4;
          v17 = 3;
          do
          {
            v18 = *v16++;
            v19 = *&v18;
            v20 = COERCE_FLOAT(bswap32(v18));
            if (!v15)
            {
              v19 = v20;
            }

            *(v14 - 1) = v8 * v19;
            v14 += 4;
            --v17;
          }

          while (v17);
          *(v14 - 1) = 1065353216;
          ++v13;
        }

        while (v13 != v12);
      }
    }

    else
    {
      LogError("decode_PFM_PF_RAW", 1468, "*** ERROR: unexpected bitdepth: %d\n", *(this + 160));
    }

    if (++v7 >= *(this + 62))
    {
      goto LABEL_29;
    }
  }

  v10 = *(this + 62);
  if (!__CFADD__(v10, v4) && *(this + 65) >= v10 + v4)
  {
    memcpy(v6, (v9 + v10), v4);
    *(this + 62) += v4;
    goto LABEL_9;
  }

LABEL_32:
  _cg_jpeg_mem_term("decode_PFM_PF_RAW", 1419, "read error requested %ld bytes - got %d\n", v4, 0);
  v35 = 0;
  if (!v6)
  {
    return v35;
  }

LABEL_30:
  free(v6);
  return v35;
}

uint64_t PBMReadPlugin::decodeImageData(IIOImageReadSession **this, unsigned __int8 *a2)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  IIOScanner::IIOScanner(&v9, this[3]);
  v4 = v10;
  this[64] = *(&v9 + 1);
  this[65] = v4;
  v5 = this[58];
  if (v5 > 4)
  {
    if (v5 <= 6)
    {
      if (v5 == 5)
      {
        v6 = PBMReadPlugin::decode_PGM_P5_RAW(this, a2);
      }

      else
      {
        v6 = PBMReadPlugin::decode_PPM_P6_RAW(this, a2);
      }
    }

    else
    {
      switch(v5)
      {
        case 7:
          v6 = PBMReadPlugin::decode_PAM_P7_RAW(this, a2);
          break;
        case 8:
          v6 = PBMReadPlugin::decode_PFM_Pf_RAW(this, a2);
          break;
        case 9:
          v6 = PBMReadPlugin::decode_PFM_PF_RAW(this, a2);
          break;
        default:
LABEL_22:
          _cg_jpeg_mem_term("decodeImageData", 1528, "unknown PPM format [%d]", this[58]);
          goto LABEL_23;
      }
    }

LABEL_20:
    if (v6)
    {
      goto LABEL_21;
    }

LABEL_23:
    v7 = 4294967246;
    goto LABEL_24;
  }

  if (v5 > 2)
  {
    if (v5 != 3)
    {
      PBMReadPlugin::decode_PBM_P4_RAW(this, a2);
    }

    v6 = PBMReadPlugin::decode_PPM_P3_TXT(this, a2);
    goto LABEL_20;
  }

  if (v5 == 1)
  {
    PBMReadPlugin::decode_PBM_P1_TXT(this, a2);
  }

  else
  {
    if (v5 != 2)
    {
      goto LABEL_22;
    }

    PBMReadPlugin::decode_PBM_P2_TXT(this, a2);
  }

LABEL_21:
  v7 = 0;
LABEL_24:
  IIOScanner::~IIOScanner(&v9);
  return v7;
}

void sub_1860A0464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

char *createNodePath(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 1uLL, 0xC6AD77EuLL);
  v5 = result;
  if (a1)
  {
    while (1)
    {
      v3 = v5;
      v4 = *a1;
      if (*a1 > 1u)
      {
        if (v4 > 3)
        {
          if (v4 == 4)
          {
            asprintf(&v5, "%s.%s%s");
          }

          else
          {
            if (v4 != 5)
            {
              goto LABEL_5;
            }

            asprintf(&v5, "%s?%s%s");
          }
        }

        else if (v4 == 2)
        {
          asprintf(&v5, "%s[%d]");
        }

        else
        {
          if (v4 != 3)
          {
            goto LABEL_5;
          }

          asprintf(&v5, "%s[%s]");
        }
      }

      else
      {
        asprintf(&v5, "%s%s%s");
      }

      free(v3);
LABEL_5:
      a1 = *(a1 + 40);
      if (!a1)
      {
        return v5;
      }
    }
  }

  return result;
}

char *fixPrefixes(char *result)
{
  v1 = *(result + 5);
  if (v1)
  {
    v2 = *(result + 1);
    do
    {
      v3 = *(v1 + 1);
      if (!v3)
      {
        v4 = *v1;
        if (*v1 != 1 && v4 != 4)
        {
          if (v4 == 5 && v2 != 0)
          {
LABEL_15:
            result = strdup(v2);
            *(v1 + 1) = result;
          }

          v3 = v2;
          goto LABEL_17;
        }

        if (v2)
        {
          goto LABEL_15;
        }

        v3 = 0;
      }

LABEL_17:
      v1 = *(v1 + 5);
      v2 = v3;
    }

    while (v1);
  }

  return result;
}

uint64_t appendNode(uint64_t result, uint64_t a2)
{
  do
  {
    v2 = result;
    result = *(result + 40);
  }

  while (result);
  *(v2 + 40) = a2;
  return result;
}

CGPDFDocument *CreateSessionPDFRef(off_t *a1, BOOL *a2)
{
  v7 = *byte_1EF4DCA50;
  v3 = CGDataProviderCreateDirect(a1, a1[2], &v7);
  v4 = CGPDFDocumentCreateWithProvider(v3);
  CFRelease(v3);
  if (v4 && !CGPDFDocumentIsUnlocked(v4))
  {
    CGPDFDocumentRelease(v4);
    v4 = 0;
    v5 = 1;
    if (!a2)
    {
      return v4;
    }

    goto LABEL_4;
  }

  v5 = 0;
  if (a2)
  {
LABEL_4:
    *a2 = v5;
  }

  return v4;
}

uint64_t dpGetBytePointer(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

IIOScanner *dpGetBytesAtPosition(IIOScanner *this, void *__dst, uint64_t a3, size_t __n)
{
  if (this)
  {
    return IIOScanner::getBytesAtOffset(this, __dst, a3, __n);
  }

  return this;
}

CGColorSpaceRef IIO_CreateInputColorSpaceForOutputPoppyProfile()
{
  InputPoppyProfile = ColorSyncCreateInputPoppyProfile();
  error = 0;
  if (!InputPoppyProfile)
  {
    return 0;
  }

  v1 = InputPoppyProfile;
  v2 = ColorSyncProfileCopyData(InputPoppyProfile, &error);
  if (v2)
  {
    v3 = v2;
    v4 = CGColorSpaceCreateWithICCData(v2);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v1);
  return v4;
}

const ColorSyncProfile *IIO_CreateOutputPoppyProfileForImage(CGImageSource *a1, CGImageRef image, CGColorSpaceRef *a3)
{
  ThumbnailAtIndex = a1;
  *a3 = 0;
  if (a1)
  {
    v42 = 0;
    options = 0;
    v44 = 0;
    IIODictionary::IIODictionary(&v42);
    IIONumber::IIONumber(error, 160);
    IIODictionary::setObjectForKey(&v42, error[2], @"kCGImageSourceThumbnailMaxPixelSize");
    IIONumber::~IIONumber(error);
    IIODictionary::setObjectForKey(&v42, *MEMORY[0x1E695E4D0], @"kCGImageSourceCreateThumbnailFromImageIfAbsent");
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(ThumbnailAtIndex, 0, options);
    IIODictionary::~IIODictionary(&v42);
  }

  if ((gIIODebugFlags & 0x8000000000) != 0)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    ImageIOLog("COL image: %p [%d x %d]\n", image, Width, Height);
    if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
    {
      v7 = CGImageGetWidth(ThumbnailAtIndex);
      v8 = CGImageGetHeight(ThumbnailAtIndex);
      ImageIOLog("COL thumb: %p [%d x %d]\n", ThumbnailAtIndex, v7, v8);
      if ((gIIODebugFlags & 0x8000300000) != 0)
      {
        ImageIOLog("COL color: ");
      }
    }

    ColorSpace = CGImageGetColorSpace(image);
    CFShow(ColorSpace);
  }

  if (ThumbnailAtIndex)
  {
    v10 = ThumbnailAtIndex;
  }

  else
  {
    v10 = image;
  }

  error[0] = 0;
  v11 = CGImageGetWidth(v10);
  v12 = CGImageGetHeight(v10);
  v42 = 0;
  options = 0;
  v13 = *MEMORY[0x1E695F0B8];
  IIOColorSpace::IIOColorSpace(&v42, *MEMORY[0x1E695F0B8]);
  if (v11 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    v15 = 24.0 / v14;
    if (v15 >= 1.0)
    {
      v15 = 1.0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 1.0;
  }

  v17 = CGImageGetColorSpace(v10);
  if (CGColorSpaceSupportsOutput(v17))
  {
    v18 = v17;
  }

  else
  {
    v18 = options;
  }

  Property = CGImageGetProperty();
  v20 = Property;
  v21 = vcvtms_u32_f32(v16 * v11);
  v22 = vcvtms_u32_f32(v16 * v12);
  if (!Property || CFStringCompare(Property, @"public.jpeg", 0) && CFStringCompare(v20, @"public.heic", 0))
  {
    goto LABEL_30;
  }

  v23 = CGBitmapContextCreate(0, 2 * v21, 2 * v22, 8uLL, 8 * v21, v18, 5u);
  v24 = v23;
  if (!v23)
  {
    _cg_jpeg_mem_term("IIO_CreateOutputPoppyProfileForImage", 218, "*** ERROR: CGBitmapContextCreate returned NULL\n");
LABEL_30:
    v26 = 0;
    goto LABEL_31;
  }

  v45.size.width = (2 * v21);
  v45.size.height = (2 * v22);
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  CGContextDrawImage(v23, v45, v10);
  v25 = CGBitmapContextCreateImage(v24);
  v26 = v25;
  if (v25)
  {
    v10 = v25;
  }

  CGContextRelease(v24);
LABEL_31:
  v27 = CGBitmapContextCreate(0, v21, v22, 0x10uLL, 8 * v21, v18, 0x1105u);
  if (v27)
  {
    CGContextSetInterpolationQualityRange();
    v46.size.width = v21;
    v46.size.height = v22;
    v46.origin.x = 0.0;
    v46.origin.y = 0.0;
    CGContextDrawImage(v27, v46, v10);
    Data = CGBitmapContextGetData(v27);
    OutputPoppyProfileForRGBData = ColorSyncCreateOutputPoppyProfileForRGBData();
    v30 = OutputPoppyProfileForRGBData;
    if (OutputPoppyProfileForRGBData)
    {
      v31 = ColorSyncProfileCopyData(OutputPoppyProfileForRGBData, error);
      v32 = v31;
      if (v31)
      {
        if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
        {
          Length = CFDataGetLength(v31);
          ImageIOLog("COL IIO_ColorSyncCreateOutputPoppyProfileForRGBData returned poppy profile [%p] data: %ld bytes\n", v30, Length);
        }

        *a3 = CGColorSpaceCreateWithICCData(v32);
        CFRelease(v32);
      }
    }

    else
    {
      v34 = CGImageGetColorSpace(v10);
      v35 = IIO_CGColorSpaceNameMatchesName(v34, v13);
      if ((*(&gIIODebugFlags + 1) & 0x80003000) != 0)
      {
        if (v35)
        {
          ImageIOLog("COL IIO_ColorSyncCreateOutputPoppyProfileForRGBData returned nil - original image is P3\n");
        }

        else
        {
          ImageIOLog("COL IIO_ColorSyncCreateOutputPoppyProfileForRGBData returned nil - original image is not P3\n");
        }
      }

      if ((gIIODebugFlags & 0x8000000000) != 0)
      {
        __filename = 0;
        v36 = IIO_CreateOutputPoppyProfileForImage::tCount++;
        asprintf(&__filename, "/tmp/poppy-thumb_%d w=%ld, h=%ld, rb=%ld, bpc=16, cs=RGB, f=1, bo=16l, a=pl.br2", v36, v21, v22, 8 * v21);
        v37 = fopen(__filename, "w");
        if (v37)
        {
          fwrite(Data, v22, 8 * v21, v37);
          fclose(v37);
        }

        free(__filename);
      }
    }

    CGContextRelease(v27);
  }

  else
  {
    _cg_jpeg_mem_term("IIO_CreateOutputPoppyProfileForImage", 234, "*** ERROR: CGBitmapContextCreate returned NULL\n");
    v30 = 0;
  }

  if (ThumbnailAtIndex)
  {
    CGImageRelease(ThumbnailAtIndex);
  }

  if (v26)
  {
    CGImageRelease(v26);
  }

  IIOColorSpace::~IIOColorSpace(&v42);
  return v30;
}

void sub_1860A0C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  IIOColorSpace::~IIOColorSpace(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_ColorSpaceCreateCopyWithFlexGTCInfo(uint64_t a1, uint64_t a2)
{
  v3 = CGColorSpaceCopyColorSyncProfile();
  v4 = 0;
  if (a2)
  {
    v5 = v3;
    if (v3)
    {
      CopyWithFlexGTC = ColorSyncProfileCreateCopyWithFlexGTC();
      if (CopyWithFlexGTC)
      {
        v7 = CopyWithFlexGTC;
        v4 = 0;
        if (ColorSyncProfileVerify(CopyWithFlexGTC, 0, 0))
        {
          v4 = MEMORY[0x186601190](v7, 0);
        }

        CFRelease(v7);
      }

      else
      {
        v4 = 0;
      }

      CFRelease(v5);
    }
  }

  return v4;
}

uint64_t IIO_ColorSpaceCreateCopyWithAdaptiveSoftClip()
{
  if ((CGColorSpaceGetCICPInfo() & 1) == 0)
  {
    IIO_ColorSpaceCreateCopyWithAdaptiveSoftClip_cold_1();
    return 0;
  }

  v0 = ColorSyncProfileCreateWithAdaptiveSoftClipCurve();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = MEMORY[0x186601190](v0, 0);
  CFRelease(v1);
  return v2;
}

uint64_t IIO_ColorSpaceAddToStream(CGColorSpace *a1, CFWriteStreamRef stream)
{
  buffer[5] = 0;
  *&buffer[6] = 0;
  *&buffer[8] = 0;
  strcpy(buffer, "ICC ");
  CFWriteStreamWrite(stream, buffer, 4);
  if (a1)
  {
    v4 = CGColorSpaceCopyPropertyList(a1);
    if (v4)
    {
      v5 = v4;
      Data = CFPropertyListCreateData(*MEMORY[0x1E695E480], v4, kCFPropertyListXMLFormat_v1_0, 0, 0);
      if (Data)
      {
        v7 = Data;
        *&buffer[4] = CFDataGetLength(Data);
        if (*&buffer[4])
        {
          CFWriteStreamWrite(stream, &buffer[4], 8);
          BytePtr = CFDataGetBytePtr(v7);
          CFWriteStreamWrite(stream, BytePtr, *&buffer[4]);
        }

        CFRelease(v7);
      }

      CFRelease(v5);
    }
  }

  if (!*&buffer[4])
  {
    CFWriteStreamWrite(stream, &buffer[4], 8);
  }

  return 0;
}

CGColorSpaceRef IIO_ColorSpaceCreateFromStream(__CFReadStream *a1)
{
  *v15 = 0;
  *buffer = 0;
  v2 = 0;
  if (CFReadStreamRead(a1, buffer, 4) == 4 && *buffer == 541279049)
  {
    v2 = 0;
    if (CFReadStreamRead(a1, v15, 8) == 8 && *v15 >= 1)
    {
      error = 0;
      v4 = malloc_type_malloc(*v15, 0x100004077774924uLL);
      if (v4)
      {
        v5 = v4;
        v6 = CFReadStreamRead(a1, v4, *v15);
        if (*v15 == v6 && (v7 = *MEMORY[0x1E695E480], (v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v5, v6, *MEMORY[0x1E695E498])) != 0))
        {
          v9 = v8;
          v10 = CFPropertyListCreateWithData(v7, v8, 0, 0, &error);
          if (v10)
          {
            v11 = v10;
            v2 = CGColorSpaceCreateWithPropertyList(v10);
            CFRelease(v11);
          }

          else
          {
            v2 = 0;
          }

          CFRelease(v9);
        }

        else
        {
          v2 = 0;
        }

        free(v5);
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t IIO_ColorSpaceNameAddToStream(const __CFString *a1, CFWriteStreamRef stream)
{
  *buffer = 0;
  if (!a1)
  {
    goto LABEL_6;
  }

  Length = CFStringGetLength(a1);
  *buffer = Length;
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr && Length)
  {
    v6 = CStringPtr;
    CFWriteStreamWrite(stream, buffer, 4);
    CFWriteStreamWrite(stream, v6, *buffer);
    Length = *buffer;
  }

  if (!Length)
  {
LABEL_6:
    CFWriteStreamWrite(stream, buffer, 4);
  }

  return 0;
}

CFStringRef IIO_ColorSpaceNameCreateFromStream(__CFReadStream *a1)
{
  *buffer = 0;
  if (CFReadStreamRead(a1, buffer, 4) != 4 || *buffer == 0)
  {
    return 0;
  }

  IIO_ColorSpaceNameCreateFromStream_cold_1(*buffer, buffer, a1, &v5);
  return v5;
}

void IIOColorSpace::IIOColorSpace(IIOColorSpace *this, __CFString *cf)
{
  *this = &unk_1EF4D3270;
  *(this + 1) = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CGColorSpaceGetTypeID())
    {
      v5 = CGColorSpaceRetain(cf);
    }

    else
    {
      v6 = CFGetTypeID(cf);
      if (v6 != CFStringGetTypeID())
      {
        return;
      }

      v5 = CGColorSpaceCreateWithName(cf);
    }

    *(this + 1) = v5;
  }
}

void IIOColorConverter::createConverterWithColorSpaces(IIOColorConverter *this, vImage_CGImageFormat *a2, vImage_CGImageFormat *a3, CGColorSpaceRef src, CGColorSpaceRef dst)
{
  error = 0;
  v8 = CGColorConversionInfoCreate(src, dst);
  if (v8)
  {
    v9 = v8;
    *(this + 1) = vImageConverter_CreateWithCGColorConversionInfo(v8, a2, a3, 0, 0, &error);
    CFRelease(v9);
  }
}

void IIOColorConverter::IIOColorConverter(IIOColorConverter *this, vImage_CGImageFormat *a2, vImage_CGImageFormat *a3, CGColorSpace *a4, CGColorSpace *a5)
{
  *this = &unk_1EF4DCA88;
  *(this + 1) = 0;
  IIOColorConverter::createConverterWithColorSpaces(this, a2, a3, a4, a5);
}

void IIOColorConverter::IIOColorConverter(IIOColorConverter *this, CGColorSpaceRef src, CGColorSpaceRef dst)
{
  *this = &unk_1EF4DCA88;
  *(this + 1) = 0;
  *&v4.bitsPerComponent = 0x2000000008;
  v4.colorSpace = src;
  v4.bitmapInfo = 8198;
  memset(&v4.version, 0, 20);
  *&v3.bitsPerComponent = 0x2000000008;
  v3.colorSpace = dst;
  v3.bitmapInfo = 8198;
  memset(&v3.version, 0, 20);
  IIOColorConverter::createConverterWithColorSpaces(this, &v4, &v3, src, dst);
}

void IIOColorConverter::~IIOColorConverter(IIOColorConverter *this)
{
  *this = &unk_1EF4DCA88;
  v1 = *(this + 1);
  if (v1)
  {
    vImageConverter_Release(v1);
  }
}

{
  IIOColorConverter::~IIOColorConverter(this);

  JUMPOUT(0x186602850);
}

vImage_Error IIOColorConverter::colorConvert(IIOColorConverter *this, vImage_Buffer *a2, vImage_Buffer *a3)
{
  v3 = *(this + 1);
  if (!v3)
  {
    return -50;
  }

  v4 = iio_vImageConvert_AnyToAny(v3, a2, a3, 0, 0x10u);
  v5 = v4;
  if (v4)
  {
    v6 = IIO_vImageErrorString(v4);
    LogError("colorConvert", 561, "*** ERROR: vImageConvert_AnyToAny - %d - '%s'\n", v5, v6);
  }

  return v5;
}

uint64_t CGImageCreateFromIOSurface(__IOSurface *a1, const __CFDictionary *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  IIOInitDebugFlags();
  memset(v27, 0, sizeof(v27));
  IIODictionary::IIODictionary(v27, a2);
  if (a1)
  {
    PixelFormat = IOSurfaceGetPixelFormat(a1);
    Alpha = IIO_IOSurfaceGetAlpha(a1);
    Width = IOSurfaceGetWidth(a1);
    Height = IOSurfaceGetHeight(a1);
    kdebug_trace();
    if ((gIIODebugFlags & 0x8000) != 0)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      *__str = 0u;
      v29 = 0u;
      v8 = IOSurfaceCopyValue(a1, *MEMORY[0x1E696CF98]);
      memset(v26, 0, sizeof(v26));
      IIOString::IIOString(v26, v8);
      v9 = PixelFormat >> 24;
      v25 = Alpha;
      if ((PixelFormat >> 24) <= 0x7F)
      {
        v10 = *(MEMORY[0x1E69E9830] + 4 * v9 + 60) & 0x40000;
      }

      else
      {
        v10 = __maskrune(PixelFormat >> 24, 0x40000uLL);
      }

      if (v10)
      {
        v11 = v9;
      }

      else
      {
        v11 = 46;
      }

      v12 = PixelFormat << 8 >> 24;
      v24 = v11;
      if (v12 <= 0x7F)
      {
        v13 = *(MEMORY[0x1E69E9830] + 4 * v12 + 60) & 0x40000;
      }

      else
      {
        v13 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
      }

      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 46;
      }

      v15 = PixelFormat >> 8;
      if (v15 <= 0x7F)
      {
        v16 = *(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x40000;
      }

      else
      {
        v16 = __maskrune(PixelFormat >> 8, 0x40000uLL);
      }

      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 46;
      }

      if (PixelFormat <= 0x7F)
      {
        v18 = *(MEMORY[0x1E69E9830] + 4 * PixelFormat + 60) & 0x40000;
      }

      else
      {
        v18 = __maskrune(PixelFormat, 0x40000uLL);
      }

      if (v18)
      {
        v19 = PixelFormat;
      }

      else
      {
        v19 = 46;
      }

      v20 = IIOString::utf8String(v26);
      v21 = IIO_AlphaInfoString(v25);
      snprintf(__str, 0x60uLL, "<IOSurface: %p>  %dx%d '%c%c%c%c' '%s' %s", a1, Width, Height, v24, v14, v17, v19, v20, v21);
      if (v8)
      {
        CFRelease(v8);
      }

      IIOString::~IIOString(v26);
      if (gIIODebugFlags >> 14)
      {
        ImageIODebugOptions(gIIODebugFlags >> 14, "S", "CGImageCreateFromIOSurface", 0, __str, -1, a2);
      }
    }

    CFAbsoluteTimeGetCurrent();
    if (PixelFormat <= 2016686639)
    {
      if (PixelFormat > 875836517)
      {
        if (PixelFormat == 875836518)
        {
          goto LABEL_49;
        }

        if (PixelFormat == 1647534392 || PixelFormat == 1999843442)
        {
          operator new();
        }

        goto LABEL_50;
      }

      if (PixelFormat != 875704422 && PixelFormat != 875704438)
      {
        v22 = 875704934;
        goto LABEL_48;
      }

LABEL_49:
      operator new();
    }

    if (PixelFormat > 2019963439)
    {
      if (PixelFormat == 2019963440 || PixelFormat == 2019963442)
      {
        goto LABEL_49;
      }

      v22 = 2019963956;
    }

    else
    {
      if (PixelFormat == 2016686640 || PixelFormat == 2016686642)
      {
        goto LABEL_49;
      }

      v22 = 2016687156;
    }

LABEL_48:
    if (PixelFormat == v22)
    {
      goto LABEL_49;
    }

LABEL_50:
    operator new();
  }

  IIODictionary::~IIODictionary(v27);
  return 0;
}

void sub_1860A1A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  MEMORY[0x186602850](v16, 0x10B1C403AEDC547);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

void IIOIOSurfaceWrapperBase::IIOIOSurfaceWrapperBase(IIOIOSurfaceWrapperBase *this, __IOSurface *a2, size_t Width, size_t Height, int a5, CGImageAlphaInfo a6, IIODictionary *a7)
{
  *this = &unk_1EF4DCAB8;
  pthread_mutex_init((this + 8), 0);
  *(this + 9) = a2;
  *(this + 19) = 0;
  *(this + 200) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 46) = 0;
  *(this + 110) = -1;
  *(this + 24) = 0;
  IOSurfaceIncrementUseCount(a2);
  IIOFrameBufferRetain(*(this + 9));
  *(this + 142) = 0;
  *(this + 201) = 0;
  *(this + 22) = a5;
  *(this + 10) = IIO_IOSurfaceCopyColorSpace(*(this + 9));
  *(this + 140) = IOSurfaceGetProtectionOptions() != 0;
  PlaneCount = IOSurfaceGetPlaneCount(*(this + 9));
  *(this + 16) = PlaneCount;
  if (PlaneCount < 2)
  {
    if (!Width)
    {
      Width = IOSurfaceGetWidth(*(this + 9));
    }

    *(this + 12) = Width;
    if (!Height)
    {
      Height = IOSurfaceGetHeight(*(this + 9));
    }

    *(this + 13) = Height;
    *(this + 14) = IOSurfaceGetBytesPerRow(*(this + 9));
    BytesPerElement = IOSurfaceGetBytesPerElement(*(this + 9));
  }

  else
  {
    if (!Width)
    {
      Width = IOSurfaceGetWidthOfPlane(*(this + 9), 0);
    }

    *(this + 12) = Width;
    if (!Height)
    {
      Height = IOSurfaceGetHeightOfPlane(*(this + 9), 0);
    }

    *(this + 13) = Height;
    *(this + 14) = IOSurfaceGetBytesPerRowOfPlane(*(this + 9), 0);
    BytesPerElement = IOSurfaceGetBytesPerElementOfPlane(*(this + 9), 0);
  }

  *(this + 15) = BytesPerElement;
  *(this + 34) = a6;
  *(this + 141) = 0;
  if (*(this + 16))
  {
    v16 = 0;
    while (!IOSurfaceGetCompressionTypeOfPlane())
    {
      if (++v16 >= *(this + 16))
      {
        goto LABEL_18;
      }
    }

    *(this + 141) = 1;
  }

LABEL_18:
  *(this + 208) = -1;
  *(this + 53) = 0;
  *(this + 54) = 0;
  if (!a7 || (!IIODictionary::containsKey(a7, @"kCGImageComponentTypeRequest") ? (Uint32ForKey = *(this + 53)) : (*(this + 208) = 1, Uint32ForKey = IIODictionary::getUint32ForKey(a7, @"kCGImageComponentTypeRequest"), *(this + 53) = Uint32ForKey), Uint32ForKey <= 6 ? (v18 = ((1 << Uint32ForKey) & 0x64) == 0) : (v18 = 1), v18))
  {
    *(this + 53) = 1;
  }

  *(this + 202) = -1;
  *(this + 51) = 0;
  if (IIODictionary::containsKey(a7, @"CGImageAlphaInfo"))
  {
    *(this + 202) = 1;
    v19 = IIODictionary::getUint32ForKey(a7, @"CGImageAlphaInfo");
    *(this + 51) = v19;
    if (v19 > 5 || ((1 << v19) & 0x2A) == 0)
    {
      *(this + 51) = _AlphaTogglePosition(v19);
    }
  }

  *(this + 20) = 0;
}

void IIOIOSurfaceWrapperBase::~IIOIOSurfaceWrapperBase(IIOIOSurfaceWrapperBase *this)
{
  *this = &unk_1EF4DCAB8;
  pthread_mutex_destroy((this + 8));
  v2 = *(this + 9);
  if (v2)
  {
    if (*(this + 10))
    {
      CGColorSpaceRelease(*(this + 10));
      v2 = *(this + 9);
    }

    v3 = IOSurfaceCopyValue(v2, @"com.apple.ImageIO.ImageIO_Malloced");
    if (v3)
    {
      IOSurfaceRemoveValue(*(this + 9), @"com.apple.ImageIO.ImageIO_Malloced");
      BaseAddress = IOSurfaceGetBaseAddress(*(this + 9));
      _ImageIO_Free(BaseAddress, 0);
      CFRelease(v3);
    }

    IOSurfaceDecrementUseCount(*(this + 9));
    IIO_IOSurfaceRelease(*(this + 9));
  }
}

{
  IIOIOSurfaceWrapperBase::~IIOIOSurfaceWrapperBase(this);

  JUMPOUT(0x186602850);
}

void IIOIOSurfaceWrapperBase::completeSetup(IIOIOSurfaceWrapperBase *this, IIODictionary *a2, CFStringRef name)
{
  *(this + 40) = *(this + 40) & 0xFFFFFFE0 | *(this + 41);
  if (name && !*(this + 10))
  {
    v4 = CGColorSpaceCreateWithName(name);
    *(this + 10) = v4;
    v5 = *(this + 9);

    IIO_IOSurfaceAddColorSpace(v5, v4);
  }
}

uint64_t IIOIOSurfaceWrapperBase::createBlockSetForCompressedSurface(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, void *a8)
{
  PixelSize = CGImageProviderGetPixelSize();
  v15 = _ImageIO_Malloc(*(a1 + 96) * PixelSize * *(a1 + 104), 64, (a1 + 176), kImageMalloc_IOSurface_Data, 0, 0);
  *(a1 + 168) = v15;
  if (v15)
  {
    if (*(a1 + 216) == 1)
    {
      v16 = 8;
    }

    else
    {
      v16 = 16;
    }

    v17 = CGBitmapContextCreate(v15, *(a1 + 96), *(a1 + 104), v16, *(a1 + 96) * PixelSize, *(a1 + 80), *(a1 + 160));
    if (v17)
    {
      v18 = v17;
      CGContextErase();
      CGContextSetRGBStrokeColor(v18, 1.0, 0.0, 0.0, 1.0);
      v19 = *(a1 + 96);
      if (v19 >= *(a1 + 104))
      {
        v19 = *(a1 + 104);
      }

      v20 = v19;
      CGContextSetLineWidth(v18, v19 / 20.0);
      CGContextAddArc(v18, (*(a1 + 96) >> 1), (*(a1 + 104) >> 1), v20 / 6.0, 3437.74677, -3437.74677, 0);
      CGContextStrokePath(v18);
      CGContextFlush(v18);
      CFRelease(v18);
    }

    CGImageBlockCreate();
    v21 = CGImageBlockSetCreate();
  }

  else
  {
    v21 = 0;
  }

  *a8 = (*(*a1 + 64))(a1, 0, a2, a3, a4, a5);
  return v21;
}

const char *IIOIOSurfaceWrapperBase::ImageBlockReleaseNonCached(const char *result, const void *a2)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    result = IIO_ImageBlockReleased(result, a2);
  }

  if (a2)
  {
    Data = CGImageBlockGetData();

    return _ImageIO_Free(Data, 0);
  }

  return result;
}

const char *IIOIOSurfaceWrapperBase::ImageBlockSetReleaseInfo(const char *this, void *a2)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    return IIO_ImageBlockSetReleased(this);
  }

  return this;
}

unint64_t IIOIOSurfaceWrapperBase::packDebugInfo(IIOIOSurfaceWrapperBase *this, CGRect a2, uint64_t a3)
{
  v3 = (*(this + 54) << 28) | (a3 << 32) | ((*(this + 51) & 0xF) << 24);
  if (*(this + 142))
  {
    v3 |= 0x400000uLL;
  }

  if (*(this + 202) == 1)
  {
    v3 |= 0x100000uLL;
  }

  if (*(this + 208) == 1)
  {
    v3 |= 0x40000uLL;
  }

  if (*(this + 140))
  {
    v3 |= 0x10000uLL;
  }

  if (*(this + 141))
  {
    v3 |= 0x4000uLL;
  }

  if (fmax(a2.origin.x, a2.origin.y) > 0.0)
  {
    v3 |= 0x100uLL;
  }

  if (a2.size.width < *(this + 12) || a2.size.height < *(this + 13))
  {
    v3 |= 0x40uLL;
  }

  if (*(this + 201))
  {
    return v3 | 0x10;
  }

  else
  {
    return v3;
  }
}

void IIOIOSurfaceWrapperBase::syncImageProviderAndSurface(uint64_t a1)
{
  CGImageProviderSetProperty();
  IIONumber::IIONumber(v4, *(a1 + 88));
  CGImageProviderSetProperty();
  IIONumber::~IIONumber(v4);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v3[3] = 132;
  if (!IOSurfaceGetBulkAttachments())
  {
    IIO_LoadHEIFSymbols();
  }

  CGImageProviderSetContentAverageLightLevelNits();
  v2 = IOSurfaceCopyValue(*(a1 + 72), @"IOSurfaceContentHeadroom");
  memset(v3, 0, 24);
  IIONumber::IIONumber(v3, v2);
  IIONumber::floatNum(v3);
  CGImageProviderSetContentHeadroom();
  IIONumber::~IIONumber(v3);
}

void sub_1860A23C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

uint64_t IIOIOSurfaceWrapperBase::preCopyBlockSet(IIOIOSurfaceWrapperBase *this, int a2, CGRect a3, CGSize a4, IIODictionary *a5)
{
  *(this + 200) = 0;
  if (a2 == 8)
  {
    v7 = *MEMORY[0x1E695F288];
    if (IIODictionary::containsKey(a5, *MEMORY[0x1E695F288]))
    {
      v8 = *MEMORY[0x1E695F280];
      ObjectForKey = IIODictionary::getObjectForKey(a5, v7);
      if (CFStringCompare(v8, ObjectForKey, 0) == kCFCompareEqualTo)
      {
        *(this + 200) = 1;
      }
    }
  }

  return 0;
}

uint64_t IIOIOSurfaceWrapperBase::postCopyBlockSet(uint64_t this)
{
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 168) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  return this;
}

uint64_t IIOIOSurfaceWrapperBase::CopyImageBlockSetWithOptionsNoOp(uint64_t a1)
{
  CGImageProviderSetProperty();
  if (*(a1 + 140) == 1)
  {
    LogError("CopyImageBlockSetWithOptionsNoOp", 617, "*** ERROR: cannot copy data from protected IOSurface\n");
  }

  return 0;
}

const char *IIOIOSurfaceWrapperBase::ImageBlockSetReleaseInfoNoCopy(const char *this, void *a2)
{
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    return IIO_ImageBlockSetReleased(this);
  }

  return this;
}

const char *IIOIOSurfaceWrapperBase::ImageBlockReleaseNoCopy(const char *result, const void *a2)
{
  v2 = result;
  if ((gIIODebugFlags & 0xC00) != 0)
  {
    result = IIO_ImageBlockReleased(result, a2);
  }

  if (v2)
  {
    v3 = *(v2 + 9);

    return IOSurfaceUnlock(v3, 1u, 0);
  }

  return result;
}

__IOSurface *IIOIOSurfaceWrapperBase::CopyIOSurface(uint64_t a1, uint64_t a2, const __CFDictionary *a3)
{
  IIOPackCopyCallbackInfo(a3);
  CGImageProviderGetBitmapInfo();
  kdebug_trace();
  memset(v7, 0, sizeof(v7));
  IIODictionary::IIODictionary(v7, a3);
  IIOFrameBufferRetain(*(a1 + 72));
  v5 = *(a1 + 72);
  IOSurfaceGetWidth(v5);
  IOSurfaceGetHeight(v5);
  kdebug_trace();
  IIODictionary::~IIODictionary(v7);
  return v5;
}

void sub_1860A2640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOIOSurfaceWrapperBase::ReleaseInfo(uint64_t this, void *a2)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void IIOIOSurfaceWrapper::IIOIOSurfaceWrapper(IIOIOSurfaceWrapper *this, __IOSurface *a2, size_t a3, size_t a4, int a5, CGImageAlphaInfo a6, IIODictionary *a7)
{
  IIOIOSurfaceWrapperBase::IIOIOSurfaceWrapperBase(this, a2, a3, a4, a5, a6, a7);
  *v7 = &unk_1EF4DCB18;
  IIOIOSurfaceWrapper::completeSetup(v7, v8, v9);
}

void IIOIOSurfaceWrapper::~IIOIOSurfaceWrapper(IIOIOSurfaceWrapper *this)
{
  IIOIOSurfaceWrapperBase::~IIOIOSurfaceWrapperBase(this);

  JUMPOUT(0x186602850);
}

void IIOIOSurfaceWrapper::completeSetup(IIOIOSurfaceWrapper *this, IIODictionary *a2, const __CFString *a3)
{
  v4 = 136;
  if (*(this + 202) == 1)
  {
    v4 = 204;
  }

  v5 = *(this + v4);
  v6 = v5 & 0xFFFFFFFD;
  v7 = *(this + 22);
  if (v7 <= 1278226535)
  {
    if (v7 <= 843264309)
    {
      if (v7 == 843264056)
      {
        v12 = v6 == 1 || v5 == 5;
        *(this + 54) = 1;
        v13 = MEMORY[0x1E695F128];
        goto LABEL_35;
      }

      if (v7 != 843264104)
      {
        goto LABEL_59;
      }

      v9 = v6 == 1 || v5 == 5;
      v10 = 5;
      v11 = MEMORY[0x1E695F0E0];
    }

    else
    {
      if (v7 != 843264310)
      {
        if (v7 == 1111970369)
        {
LABEL_27:
          v12 = v6 == 1 || v5 == 5;
          *(this + 54) = 1;
          v13 = MEMORY[0x1E695F1C0];
LABEL_35:
          v8 = *v13;
          if (!v12)
          {
            v5 = 1;
          }

          *(this + 41) = v5;
          goto LABEL_55;
        }

        if (v7 != 1278226488)
        {
          goto LABEL_59;
        }

        *(this + 54) = 1;
        v8 = *MEMORY[0x1E695F128];
        *(this + 41) = 0;
LABEL_55:
        *(this + 142) = 1;
        goto LABEL_56;
      }

      v9 = v6 == 1 || v5 == 5;
      v10 = 2;
      v11 = MEMORY[0x1E695F128];
    }

LABEL_51:
    *(this + 54) = v10;
    v8 = *v11;
    if (v9)
    {
      v15 = v5;
    }

    else
    {
      v15 = 1;
    }

    *(this + 41) = v15;
    goto LABEL_55;
  }

  if (v7 <= 1380411456)
  {
    switch(v7)
    {
      case 1278226536:
        v14 = 5;
        break;
      case 1278226742:
        v14 = 2;
        break;
      case 1380401729:
        goto LABEL_27;
      default:
        goto LABEL_59;
    }

    *(this + 54) = v14;
    v8 = *MEMORY[0x1E695F128];
    *(this + 41) = 0;
    goto LABEL_55;
  }

  switch(v7)
  {
    case 1815491698:
      v9 = v6 == 1 || v5 == 5;
      v10 = 2;
      goto LABEL_50;
    case 1815162994:
      *(this + 54) = 6;
      v8 = *MEMORY[0x1E695F110];
      *(this + 41) = 6;
      goto LABEL_56;
    case 1380411457:
      v9 = v6 == 1 || v5 == 5;
      v10 = 5;
LABEL_50:
      v11 = MEMORY[0x1E695F1C0];
      goto LABEL_51;
  }

LABEL_59:
  v16 = v7 >> 24;
  if ((v7 >> 24) <= 0x7F)
  {
    v17 = *(MEMORY[0x1E69E9830] + 4 * v16 + 60) & 0x40000;
  }

  else
  {
    v17 = __maskrune(v16, 0x40000uLL);
    v7 = *(this + 22);
  }

  if (v17)
  {
    v18 = (v7 >> 24);
  }

  else
  {
    v18 = 46;
  }

  v19 = v7 << 8 >> 24;
  if (v19 <= 0x7F)
  {
    v20 = *(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x40000;
  }

  else
  {
    v20 = __maskrune(v19, 0x40000uLL);
    v7 = *(this + 22);
  }

  if (v20)
  {
    v21 = (v7 << 8 >> 24);
  }

  else
  {
    v21 = 46;
  }

  v22 = v7 >> 8;
  if (v22 <= 0x7F)
  {
    v23 = *(MEMORY[0x1E69E9830] + 4 * v22 + 60) & 0x40000;
  }

  else
  {
    v23 = __maskrune(v22, 0x40000uLL);
    v7 = *(this + 22);
  }

  if (v23)
  {
    v24 = (v7 >> 8);
  }

  else
  {
    v24 = 46;
  }

  if (v7 <= 0x7F)
  {
    if ((*(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000) != 0)
    {
      goto LABEL_79;
    }

LABEL_81:
    v25 = 46;
    goto LABEL_82;
  }

  if (!__maskrune(v7, 0x40000uLL))
  {
    goto LABEL_81;
  }

LABEL_79:
  v25 = *(this + 88);
LABEL_82:
  LogError("completeSetup", 811, "*** pixelformat '%c%c%c%c' not handled\n", v18, v21, v24, v25);
  v8 = 0;
LABEL_56:

  IIOIOSurfaceWrapperBase::completeSetup(this, a2, v8);
}

uint64_t IIOIOSurfaceWrapper::createImage(IIOIOSurfaceWrapper *this)
{
  v2 = *(this + 22);
  if (v2 <= 1278226535)
  {
    if (v2 <= 843264309)
    {
      v3 = v2 == 843264056;
      v4 = 843264104;
    }

    else
    {
      v3 = v2 == 843264310 || v2 == 1111970369;
      v4 = 1278226488;
    }
  }

  else if (v2 > 1380411456)
  {
    v3 = v2 == 1380411457 || v2 == 1815491698;
    v4 = 1815162994;
  }

  else
  {
    v3 = v2 == 1278226536 || v2 == 1278226742;
    v4 = 1380401729;
  }

  if (!v3 && v2 != v4)
  {
    v7 = v2 >> 24;
    v8 = MEMORY[0x1E69E9830];
    if ((v2 >> 24) <= 0x7F)
    {
      v9 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
    }

    else
    {
      v9 = __maskrune(v7, 0x40000uLL);
      v2 = *(this + 22);
    }

    if (v9)
    {
      v10 = (v2 >> 24);
    }

    else
    {
      v10 = 46;
    }

    v11 = v2 << 8 >> 24;
    if (v11 <= 0x7F)
    {
      v12 = *(v8 + 4 * v11 + 60) & 0x40000;
    }

    else
    {
      v12 = __maskrune(v11, 0x40000uLL);
      v2 = *(this + 22);
    }

    if (v12)
    {
      v13 = (v2 << 8 >> 24);
    }

    else
    {
      v13 = 46;
    }

    v14 = v2 >> 8;
    if (v14 <= 0x7F)
    {
      v15 = *(v8 + 4 * v14 + 60) & 0x40000;
    }

    else
    {
      v15 = __maskrune(v14, 0x40000uLL);
      v2 = *(this + 22);
    }

    if (v15)
    {
      v16 = (v2 >> 8);
    }

    else
    {
      v16 = 46;
    }

    if (v2 <= 0x7F)
    {
      if ((*(v8 + 4 * v2 + 60) & 0x40000) != 0)
      {
        goto LABEL_45;
      }
    }

    else if (__maskrune(v2, 0x40000uLL))
    {
LABEL_45:
      v17 = *(this + 88);
LABEL_48:
      _cg_jpeg_mem_term("createImage", 842, "    CGImageCreateFromIOSurface -- unsupported pixelformat: '%c%c%c%c'\n", v10, v13, v16, v17);
      return 0;
    }

    v17 = 46;
    goto LABEL_48;
  }

  return IIOIOSurfaceWrapper::createImageWithImageProvider(this);
}

uint64_t IIOIOSurfaceWrapper::createImageWithImageProvider(IIOIOSurfaceWrapper *this)
{
  v11[2] = 0;
  v11[3] = 2;
  v2 = IIOIOSurfaceWrapper::CopyImageBlockSetWithOptions;
  if (*(this + 140))
  {
    v2 = IIOIOSurfaceWrapperBase::CopyImageBlockSetWithOptionsNoOp;
  }

  v11[4] = v2;
  v11[5] = IIOIOSurfaceWrapperBase::CopyIOSurface;
  v11[6] = IIOIOSurfaceWrapperBase::ReleaseInfo;
  v11[0] = 0;
  v11[1] = 0;
  IIODictionary::IIODictionary(v11);
  if (*(this + 54) == 6)
  {
    IIONumber::IIONumber(&v8, 204806);
    IIODictionary::setObjectForKey(v11, value, *MEMORY[0x1E695F2D0]);
    IIONumber::~IIONumber(&v8);
  }

  else
  {
    v3 = *(this + 41) - 1;
    if (v3 < 6)
    {
      IIODictionary::setObjectForKey(v11, *MEMORY[0x1E695E4D0], **(&unk_1E6F0BDE0 + v3));
    }
  }

  v4 = *(this + 10);
  v8 = 0;
  v9 = 0;
  IIOColorSpace::IIOColorSpace(&v8, *MEMORY[0x1E695F1C0]);
  if (!v4)
  {
    v4 = v9;
  }

  v5 = CGImageProviderCreate();
  if (v5)
  {
    (*(*this + 72))(this, v5);
    v6 = CGImageCreateWithImageProvider();
    CGImageProviderRelease();
    if (!*(this + 10))
    {
      IIO_IOSurfaceAddColorSpace(*(this + 9), v4);
    }
  }

  else
  {
    v6 = 0;
  }

  IIOColorSpace::~IIOColorSpace(&v8);
  IIODictionary::~IIODictionary(v11);
  return v6;
}

void sub_1860A2E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

uint64_t IIOIOSurfaceWrapper::CopyImageBlockSetWithOptions(uint64_t a1, uint64_t a2, __CFDictionary *a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  memset(v36, 0, sizeof(v36));
  IIODictionary::IIODictionary(v36, a3);
  v18 = *(a1 + 216);
  IIOPackCopyCallbackInfo(a3);
  CGImageProviderGetBitmapInfo();
  kdebug_trace();
  if ((gIIODebugFlags & 0xC000) != 0)
  {
    v20 = *(a1 + 88);
    v21 = v20 >> 24;
    if ((v20 >> 24) <= 0x7F)
    {
      v22 = *(MEMORY[0x1E69E9830] + 4 * v21 + 60) & 0x40000;
    }

    else
    {
      v22 = __maskrune(v20 >> 24, 0x40000uLL);
    }

    if (v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = 46;
    }

    v24 = v20 << 8 >> 24;
    if (v24 <= 0x7F)
    {
      v25 = *(MEMORY[0x1E69E9830] + 4 * v24 + 60) & 0x40000;
    }

    else
    {
      v25 = __maskrune(v20 << 8 >> 24, 0x40000uLL);
    }

    if (v25)
    {
      v26 = v24;
    }

    else
    {
      v26 = 46;
    }

    v27 = v20 >> 8;
    if (v27 <= 0x7F)
    {
      v28 = *(MEMORY[0x1E69E9830] + 4 * v27 + 60) & 0x40000;
    }

    else
    {
      v28 = __maskrune(v20 >> 8, 0x40000uLL);
    }

    v20 = v20;
    if (v20 <= 0x7F)
    {
      v29 = *(MEMORY[0x1E69E9830] + 4 * v20 + 60) & 0x40000;
    }

    else
    {
      v29 = __maskrune(v20, 0x40000uLL);
    }

    if (v28)
    {
      v30 = v27;
    }

    else
    {
      v30 = 46;
    }

    if (v29)
    {
      v31 = v20;
    }

    else
    {
      v31 = 46;
    }

    ImageIOLog("S   CopyImageBlockSetWithOptions-SURF: {%g, %g, %g, %g} {%g, %g} '%c%c%c%c' %s\n", a4, a5, a6, a7, a8, a9, v23, v26, v30, v31, off_1E6F0BD88[v18]);
  }

  v35 = 0;
  if (*(a1 + 141) == 1)
  {
    v32 = IIOIOSurfaceWrapperBase::createBlockSetForCompressedSurface(a1, a4, a5, a6, a7, a2, v19, &v35);
    goto LABEL_39;
  }

  if (v18 > 4)
  {
    if (v18 == 5)
    {
LABEL_36:
      v32 = IIOIOSurfaceWrapper::copyImageBlockSetWithOptions16Bit(a1, a2, v36, &v35, a4, a5, a6, a7, a8, a9);
      goto LABEL_39;
    }

    if (v18 != 6)
    {
LABEL_37:
      LogError("CopyImageBlockSetWithOptions", 1755, "*** unsupported componentType '%s' (%d)\n", gComponentString[v18], v18);
LABEL_41:
      _cg_jpeg_mem_term("CopyImageBlockSetWithOptions", 1765, "*** ERROR: CopyImageBlockSetWithOptions returned NULL\n");
      v33 = 0;
      goto LABEL_42;
    }

    v32 = IIOIOSurfaceWrapper::copyImageBlockSetWithOptions10Bit(a1, a4, a5, a6, a7, a8, a9, a2, v36, &v35);
  }

  else
  {
    if (v18 != 1)
    {
      if (v18 != 2)
      {
        goto LABEL_37;
      }

      goto LABEL_36;
    }

    v32 = IIOIOSurfaceWrapper::copyImageBlockSetWithOptions8Bit(a1, a2, v36, &v35, a4, a5, a6, a7, a8, a9);
  }

LABEL_39:
  v33 = v32;
  if (!v32)
  {
    goto LABEL_41;
  }

  CGImageBlockSetGetRect();
LABEL_42:
  kdebug_trace();
  IIODictionary::~IIODictionary(v36);
  return v33;
}