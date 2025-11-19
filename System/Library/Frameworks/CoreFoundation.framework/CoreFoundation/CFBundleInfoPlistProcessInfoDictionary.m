@interface CFBundleInfoPlistProcessInfoDictionary
@end

@implementation CFBundleInfoPlistProcessInfoDictionary

void ___CFBundleInfoPlistProcessInfoDictionary_block_invoke(CFMutableArrayRef *a1, const __CFString *cf)
{
  v41[6] = *MEMORY[0x1E69E9840];
  if (CFGetTypeID(cf) == 7)
  {
    if (!cf)
    {
      goto LABEL_83;
    }

    v4 = CFStringFind(cf, @"#", 4uLL);
    if (v4.location > 0)
    {
      Length = CFStringGetLength(cf);
      v45.location = v4.location + v4.length;
      v45.length = Length - (v4.location + v4.length);
      v6 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v45);
      if (CFEqual(v6, @"CH"))
      {
        if (_isValidSpecialCase_onceToken != -1)
        {
          ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_1();
        }

        if (_isValidSpecialCase_useSpecialCase)
        {
LABEL_8:
          v46.location = 0;
          v46.length = v4.location;
          v7 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v46);
          v8 = a1[5];
          Value = CFDictionaryGetValue(a1[6], cf);
          CFDictionarySetValue(v8, v7, Value);
          CFArrayAppendValue(a1[4], cf);
          CFRelease(v7);
          if (v6)
          {
            v10 = *MEMORY[0x1E69E9840];

            CFRelease(v6);
            return;
          }

LABEL_83:
          v39 = *MEMORY[0x1E69E9840];
          return;
        }
      }

      else if (CFEqual(v6, @"override"))
      {
        goto LABEL_8;
      }

      if (v6)
      {
        CFRelease(v6);
      }
    }

    v13 = CFStringFind(cf, @"-", 4uLL);
    location = v13.location;
    v15 = CFStringFind(cf, @"~", 4uLL);
    if (v13.location == -1 && v15.location == -1)
    {
      goto LABEL_83;
    }

    if (v13.location != -1 && v15.location != -1 && v15.location <= v13.location)
    {
      goto LABEL_83;
    }

    v16 = CFStringGetLength(cf);
    v17 = v15.location == -1 ? v16 : v15.location;
    v18 = v15.location == -1 ? -1 : v15.location + v15.length;
    v19 = v15.location == -1 ? 0 : v16 - (v15.location + v15.length);
    if (v13.location == -1)
    {
      location = v15.location;
      v20 = -1;
    }

    else
    {
      v20 = v13.location + v13.length;
    }

    v21 = v13.location == -1 ? 0 : v17 - (v13.location + v13.length);
    if (location < 1 || v20 != -1 && v21 < 1 || v18 != -1 && v19 < 1)
    {
      goto LABEL_83;
    }

    if (v20 != -1 || v18 == -1)
    {
      if (v20 == -1 || v18 != -1)
      {
        v44.location = v18;
        v44.length = v19;
        v22 = _CFBundleSupportedProductName(cf, v44);
        if (v22)
        {
          v48.location = v20;
          v48.length = v21;
          v22 = CFStringFindWithOptions(cf, @"iphoneos", v48, 8uLL, 0) != 0;
        }
      }

      else
      {
        v47.location = v20;
        v47.length = v21;
        v22 = CFStringFindWithOptions(cf, @"iphoneos", v47, 8uLL, 0);
      }
    }

    else
    {
      v43.location = v18;
      v43.length = v19;
      v22 = _CFBundleSupportedProductName(cf, v43);
    }

    if (!v22)
    {
      goto LABEL_83;
    }

    v49.location = 0;
    v49.length = location;
    v23 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v49);
    if (v20 == -1)
    {
      v24 = 0;
    }

    else
    {
      v50.location = v20;
      v50.length = v21;
      v24 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v50);
    }

    if (v18 == -1)
    {
      v25 = 0;
    }

    else
    {
      v51.location = v18;
      v51.length = v19;
      v25 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, cf, v51);
    }

    if (!(v24 | v25))
    {
      v24 = 0;
      goto LABEL_72;
    }

    if (v24)
    {
      if (v25)
      {
        if (_CFGetProductName_onceToken != -1)
        {
          ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_3();
        }

        v26 = CFEqual(_CFGetProductName__cfBundlePlatform, v25);
        if (v26)
        {
          v26 = CFEqual(@"iphoneos", v24) != 0;
        }

LABEL_71:
        if (!v26)
        {
          CFArrayAppendValue(a1[4], cf);
          if (!v24)
          {
            goto LABEL_80;
          }

          goto LABEL_79;
        }

LABEL_72:
        v40 = a1[6];
        Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
        if (_CFGetProductName_onceToken != -1)
        {
          ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_4();
        }

        v30 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@-%@~%@", v23, @"iphoneos", _CFGetProductName__cfBundlePlatform);
        if (_CFGetProductName_onceToken != -1)
        {
          ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_5();
        }

        v31 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@~%@", v23, _CFGetProductName__cfBundlePlatform);
        v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@-%@", v23, @"iphoneos");
        CFArrayAppendValue(Mutable, v30);
        CFArrayAppendValue(Mutable, v31);
        CFArrayAppendValue(Mutable, v32);
        CFRelease(v30);
        CFRelease(v31);
        CFRelease(v32);
        v33 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
        Count = CFArrayGetCount(Mutable);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 0x40000000;
        v41[2] = ___CopySortedOverridesForBaseKey_block_invoke;
        v41[3] = &__block_descriptor_tmp_87;
        v41[4] = v40;
        v41[5] = v33;
        CFArrayApply(Mutable, 0, Count, v41);
        CFRelease(Mutable);
        ValueAtIndex = CFArrayGetValueAtIndex(v33, 0);
        v36 = a1[5];
        v37 = CFDictionaryGetValue(a1[6], ValueAtIndex);
        CFDictionarySetValue(v36, v23, v37);
        v38 = CFArrayGetCount(v33);
        if (v38 >= 1)
        {
          v52.location = 1;
          v52.length = v38 - 1;
          CFArrayAppendArray(a1[4], v33, v52);
        }

        CFRelease(v33);
        if (!v24)
        {
          goto LABEL_80;
        }

LABEL_79:
        CFRelease(v24);
LABEL_80:
        if (v25)
        {
          CFRelease(v25);
        }

        CFRelease(v23);
        goto LABEL_83;
      }

      v27 = @"iphoneos";
      v28 = v24;
    }

    else
    {
      if (_CFGetProductName_onceToken != -1)
      {
        ___CFBundleInfoPlistProcessInfoDictionary_block_invoke_cold_2();
      }

      v27 = _CFGetProductName__cfBundlePlatform;
      v28 = v25;
    }

    v26 = CFEqual(v27, v28);
    goto LABEL_71;
  }

  v11 = a1[4];
  v12 = *MEMORY[0x1E69E9840];

  CFArrayAppendValue(v11, cf);
}

@end