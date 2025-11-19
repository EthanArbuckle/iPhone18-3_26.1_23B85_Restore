MACaptionAppearanceDisplayType MACaptionAppearanceGetDisplayType(MACaptionAppearanceDomain domain)
{
  v1 = MACaptionAppearancePrefCopyDisplayType();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  valuePtr = 0;
  if (CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr))
  {
    v3 = valuePtr;
  }

  else
  {
    v3 = kMACaptionAppearanceDisplayTypeForcedOnly;
  }

  CFRelease(v2);
  return v3;
}

CFNumberRef MACaptionAppearancePrefCopyDisplayType()
{
  v0 = MAPreferencesCopyNumber(@"MACaptionDisplayType");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  valuePtr = 0;
  if (CFNumberGetValue(v0, kCFNumberSInt32Type, &valuePtr))
  {
    if (valuePtr == 2)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2 * (valuePtr == 3);
    }

    valuePtr = v2;
    v3 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v1);
  return v3;
}

BOOL _preferenceAccessRequiresXPC(void *value)
{
  if (_MADomainOverride)
  {
    return 0;
  }

  v3 = 0x1ED61B000uLL;
  v4 = MAPublicWriteableKeys;
  if (!MAPublicWriteableKeys)
  {
    if (MAPreferenceInitializeIfNeeded_onceToken != -1)
    {
      v5 = value;
      MAPreferenceInitializeIfNeeded_cold_1();
      v3 = 0x1ED61B000;
      value = v5;
    }

    v4 = *(v3 + 4024);
    if (!v4)
    {
      return 0;
    }
  }

  return CFSetContainsValue(v4, value) != 0;
}

const void *MAPreferencesCopyNumber(__CFString *a1)
{
  TypeID = CFNumberGetTypeID();

  return MAPreferencesCopyProfileValueWithExpectedType(0, a1, TypeID);
}

const void *MAPreferencesCopyProfileValueWithExpectedType(const __CFString *a1, __CFString *a2, uint64_t a3)
{
  v4 = MAPreferencesCopyProfileValue(a1, a2);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 != a3)
    {
      v7 = v6;
      valuePtr = 0;
      if (CFBooleanGetTypeID() == a3 && v7 == CFNumberGetTypeID() && CFNumberGetValue(v5, kCFNumberSInt8Type, &valuePtr))
      {
        CFRelease(v5);
        v8 = MEMORY[0x1E695E4D0];
        if (!valuePtr)
        {
          v8 = MEMORY[0x1E695E4C0];
        }

        return *v8;
      }

      else
      {
        CFRelease(v5);
        return 0;
      }
    }
  }

  return v5;
}

NSObject *_copyResultPreferenceXPCCall(const void *a1, char a2, const void *a3)
{
  v6 = dispatch_semaphore_create(0);
  global_queue = dispatch_get_global_queue(0, 0);
  v8 = dispatch_group_create();
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2000000000;
  v19 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  dispatch_retain(v6);
  CFRetain(a1);
  if (a3)
  {
    CFRetain(a3);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___copyResultPreferenceXPCCall_block_invoke;
  block[3] = &unk_1E7A943E0;
  v13 = a2;
  block[6] = a1;
  block[7] = a3;
  block[4] = &v14;
  block[5] = v18;
  block[8] = v6;
  dispatch_group_async(v8, global_queue, block);
  v9 = dispatch_time(0, 200000000);
  if (dispatch_semaphore_wait(v6, v9))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 0x40000000;
    v11[2] = ___copyResultPreferenceXPCCall_block_invoke_2;
    v11[3] = &unk_1E7A94408;
    v11[4] = &v14;
    dispatch_group_notify(v8, global_queue, v11);
    if (v8)
    {
      dispatch_release(v8);
    }

    if (v6)
    {
      dispatch_release(v6);
      v6 = 0;
    }
  }

  else
  {
    if (v8)
    {
      dispatch_release(v8);
    }

    if (v6)
    {
      dispatch_release(v6);
    }

    v6 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(v18, 8);
  return v6;
}

void *MAPreferencesCopyProfileValue(CFStringRef theString, __CFString *value)
{
  if (!value)
  {
    return 0;
  }

  if (theString && CFStringGetLength(theString))
  {
    TypeID = CFDictionaryGetTypeID();
    v5 = MAPreferencesCopyProfileValueWithExpectedType(0, theString, TypeID);
    if (v5)
    {
      v6 = v5;
      v7 = CFDictionaryGetValue(v5, value);
      v8 = v7;
      if (v7)
      {
        CFRetain(v7);
      }

      CFRelease(v6);
      return v8;
    }

    return 0;
  }

  if (_preferenceAccessRequiresXPC(value) && !CFEqual(value, @"MACaptionActiveProfile"))
  {
    v10 = _copyResultPreferenceXPCCall(value, 0, 0);
  }

  else
  {
    if (_MADomainOverride)
    {
      v9 = _MADomainOverride;
    }

    else
    {
      v9 = @"com.apple.mediaaccessibility";
    }

    v10 = CFPreferencesCopyAppValue(value, v9);
  }

  v8 = v10;
  if (!v10)
  {
    v11 = _preferencesDefaults();
    if (!v11)
    {
      return 0;
    }

    v12 = CFDictionaryGetValue(v11, value);
    v8 = v12;
    if (v12)
    {
      CFRetain(v12);
    }
  }

  return v8;
}

uint64_t _preferencesDefaults()
{
  if ((_preferencesDefaults__DidSet & 1) == 0)
  {
    v0 = MAUtilitiesCopyResourceDictionary(@"Defaults");
    pthread_mutex_lock(&_preferencesDefaults__Lock);
    if (_preferencesDefaults__DidSet)
    {
      pthread_mutex_unlock(&_preferencesDefaults__Lock);
      if (v0)
      {
        CFRelease(v0);
      }
    }

    else
    {
      _preferencesDefaults__Defaults = v0;
      _preferencesDefaults__DidSet = 1;
      pthread_mutex_unlock(&_preferencesDefaults__Lock);
    }
  }

  return _preferencesDefaults__Defaults;
}

void ___copyResultPreferenceXPCCall_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 40) + 8);
  *(v5 + 24) = 0;
  if (v3)
  {
    if (_xpcConnection_onceToken != -1)
    {
      MASetCaptionCallStatus_cold_1();
    }

    v6 = _xpcConnection__XpcConnection;
    buffer[0] = 0;
    CFStringGetCString(v3, buffer, 1024, 0x600u);
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, "preferenceName", buffer);
    if (v2)
    {
      v8 = MAXCreateXPCObjectFromCF(v4);
      if (v8)
      {
        v9 = v8;
        xpc_dictionary_set_value(v7, "preferenceValue", v8);
        CFRelease(v9);
      }

      v10 = "set";
    }

    else
    {
      v10 = "get";
    }

    xpc_dictionary_set_string(v7, "getOrSet", v10);
    v12 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v12, "reqiestTypePreferences", v7);
    v13 = xpc_connection_send_message_with_reply_sync(v6, v12);
    v14 = v13;
    v11 = 0;
    if (v13 != MEMORY[0x1E69E9E20] && v13 != MEMORY[0x1E69E9E18])
    {
      if (MEMORY[0x1B2722470](v13) == MEMORY[0x1E69E9E80] && (*(v5 + 24) = xpc_dictionary_get_BOOL(v14, "success"), (value = xpc_dictionary_get_value(v14, "result")) != 0))
      {
        v11 = MAXCreateCFObjectFromXPC(value);
      }

      else
      {
        v11 = 0;
      }
    }

    xpc_release(v14);
    xpc_release(v12);
    xpc_release(v7);
  }

  else
  {
    v11 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v11;
  v16 = *(a1 + 48);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    CFRelease(v17);
  }

  dispatch_semaphore_signal(*(a1 + 64));
  dispatch_release(*(a1 + 64));
  v18 = *MEMORY[0x1E69E9840];
}

uint64_t MACaptionAppearancePrefIsProfileEditable(const __CFString *a1)
{
  TypeID = CFBooleanGetTypeID();
  v3 = MAPreferencesCopyProfileValueWithExpectedType(a1, @"MAIsEditable", TypeID);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = CFEqual(*MEMORY[0x1E695E4C0], v3) == 0;
  CFRelease(v4);
  return v5;
}

CFTypeRef MACaptionAppearancePrefCopyActiveProfileID()
{
  v1 = _MACaptionAppearanceTempProfileID;
  if (!_MACaptionAppearanceTempProfileID)
  {
    ValueAtIndex = MAPreferencesCopyString(@"MACaptionActiveProfile");
    v4 = _AllowNullProfile;
    if (ValueAtIndex || _AllowNullProfile)
    {
LABEL_18:
      if (!ValueAtIndex && !v4)
      {
        v10 = MAPreferencesCopyProfileIDs(@"MACaptionProfile-");
        if (v10)
        {
          v11 = v10;
          if (CFArrayGetCount(v10) < 1)
          {
            ValueAtIndex = 0;
          }

          else
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
            CFRetain(ValueAtIndex);
          }

          CFRelease(v11);
        }

        else
        {
          return 0;
        }
      }

      return ValueAtIndex;
    }

    v5 = MACaptionAppearancePrefCopySystemLanguage();
    if (v5)
    {
      v6 = v5;
      LowercaseString = MAUtilitiesCreateLowercaseString(v5);
      if (LowercaseString)
      {
        v8 = LowercaseString;
        if (_languagesUsingAlternateDefaults_onceToken != -1)
        {
          MACaptionAppearancePrefCopyActiveProfileID_cold_1();
        }

        if (_languagesUsingAlternateDefaults__alternateDefaultLanguages)
        {
          v9 = CFSetContainsValue(_languagesUsingAlternateDefaults__alternateDefaultLanguages, v8);
          CFRelease(v8);
          CFRelease(v6);
          if (v9)
          {
            ValueAtIndex = MAPreferencesCopyString(@"MACaptionDefaultAlternateActiveProfile");
            if (ValueAtIndex)
            {
              return ValueAtIndex;
            }
          }

          goto LABEL_17;
        }

        CFRelease(v8);
      }

      CFRelease(v6);
    }

LABEL_17:
    ValueAtIndex = MAPreferencesCopyString(@"MACaptionDefaultActiveProfile");
    v4 = _AllowNullProfile;
    goto LABEL_18;
  }

  return CFRetain(v1);
}

const void *MAPreferencesCopyString(__CFString *a1)
{
  TypeID = CFStringGetTypeID();

  return MAPreferencesCopyProfileValueWithExpectedType(0, a1, TypeID);
}

const __CFArray *MACaptionAppearancePrefCopySystemLanguage()
{
  Copy = _SystemLanguageOverride;
  if (_SystemLanguageOverride)
  {
    goto LABEL_2;
  }

  Bundle = MAUtiltiesGetBundle();
  if (!Bundle)
  {
    return 0;
  }

  v4 = CFBundleCopyBundleLocalizations(Bundle);
  if (!v4)
  {
    return 0;
  }

  v2 = v4;
  v5 = CFBundleCopyPreferredLocalizationsFromArray(v4);
  LowercaseString = v5;
  if (!v5)
  {
    goto LABEL_3;
  }

  if (CFArrayGetCount(v5) < 1)
  {
    goto LABEL_14;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(LowercaseString, 0);
  Copy = ValueAtIndex;
  if (!ValueAtIndex)
  {
    goto LABEL_15;
  }

  v7 = CFGetTypeID(ValueAtIndex);
  if (v7 == CFStringGetTypeID() && (CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, Copy)) != 0)
  {
    v9 = CanonicalLanguageIdentifierFromString;
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, CanonicalLanguageIdentifierFromString);
    if (ComponentsFromLocaleIdentifier)
    {
      v11 = ComponentsFromLocaleIdentifier;
      Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, *MEMORY[0x1E695E6F0]);
      if (Value)
      {
        Copy = CFStringCreateCopy(0, Value);
      }

      else
      {
        Copy = 0;
      }

      CFRelease(v11);
    }

    else
    {
      Copy = 0;
    }

    CFRelease(v9);
  }

  else
  {
LABEL_14:
    Copy = 0;
  }

LABEL_15:
  CFRelease(LowercaseString);
  CFRelease(v2);
  if (!Copy)
  {
    return 0;
  }

LABEL_2:
  LowercaseString = MAUtilitiesCreateLowercaseString(Copy);
  v2 = Copy;
LABEL_3:
  CFRelease(v2);
  return LowercaseString;
}

const __CFString *MAUtilitiesCreateLowercaseString(CFStringRef theString)
{
  v1 = theString;
  if (theString)
  {
    Length = CFStringGetLength(theString);
    MutableCopy = CFStringCreateMutableCopy(0, Length, v1);
    v1 = MutableCopy;
    if (MutableCopy)
    {
      CFStringLowercase(MutableCopy, 0);
    }
  }

  return v1;
}

void __MAPreferenceInitializeIfNeeded_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _settingsChangedNotificationHandler, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, _settingsChangedNotificationHandler, @"com.apple.mediaaccessibility.audibleMediaSettingsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  MAPreferenceAddPublicWriteableKey(@"MACaptionPreferredLanguages");
  MAPreferenceAddPublicWriteableKey(@"MACaptionDisplayType");

  MAPreferenceAddPublicWriteableKey(@"MACaptionActiveProfile");
}

void MAPreferenceAddPublicWriteableKey(void *value)
{
  Mutable = MAPublicWriteableKeys;
  if (!MAPublicWriteableKeys)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
    MAPublicWriteableKeys = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

void ___xpcConnection_block_invoke()
{
  _xpcConnection__XpcConnection = xpc_connection_create_mach_service("com.apple.accessibility.mediaaccessibilityd", 0, 0);
  xpc_connection_set_event_handler(_xpcConnection__XpcConnection, &__block_literal_global_52);
  v0 = _xpcConnection__XpcConnection;

  xpc_connection_resume(v0);
}

const void *MAUtilitiesCopyResourceDictionary(const __CFString *a1)
{
  BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.MediaAccessibility");
  if (!BundleWithIdentifier)
  {
    return 0;
  }

  v3 = CFBundleCopyResourceURL(BundleWithIdentifier, a1, @"plist", 0);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  propertyValueTypeRefPtr = 0;
  v5 = 0;
  if (CFURLCopyResourcePropertyForKey(v3, *MEMORY[0x1E695EAF0], &propertyValueTypeRefPtr, 0))
  {
    v6 = propertyValueTypeRefPtr == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    valuePtr = 0;
    if (CFNumberGetValue(propertyValueTypeRefPtr, kCFNumberCFIndexType, &valuePtr))
    {
      Mutable = CFDataCreateMutable(0, valuePtr);
      CFDataSetLength(Mutable, valuePtr);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      v9 = CFReadStreamCreateWithFile(0, v4);
      if (v9)
      {
        v10 = v9;
        if (CFReadStreamOpen(v9) && valuePtr >= 1)
        {
          v11 = &MutableBytePtr[valuePtr];
          while (1)
          {
            v12 = CFReadStreamRead(v10, MutableBytePtr, (v11 - MutableBytePtr));
            if ((v12 + 1) < 2)
            {
              break;
            }

            MutableBytePtr += v12;
            if (MutableBytePtr >= v11)
            {
              error = 0;
              v13 = CFPropertyListCreateWithData(0, Mutable, 0, 0, &error);
              v5 = v13;
              if (v13)
              {
                v14 = CFGetTypeID(v13);
                if (v14 != CFDictionaryGetTypeID())
                {
                  CFRelease(v5);
                  break;
                }
              }

              goto LABEL_18;
            }
          }
        }

        v5 = 0;
LABEL_18:
        CFReadStreamClose(v10);
        CFRelease(v10);
      }

      else
      {
        v5 = 0;
      }

      CFRelease(Mutable);
    }

    else
    {
      v5 = 0;
    }

    CFRelease(propertyValueTypeRefPtr);
  }

  CFRelease(v4);
  return v5;
}

CFArrayRef MACaptionAppearanceCopySelectedLanguages(MACaptionAppearanceDomain domain)
{
  MAPreferenceInitializeIfNeeded();
  OrderedCanonicalLanguageIdentifiersFromString = MACaptionAppearancePrefCopyPreferredLanguages();
  v2 = MACaptionAppearancePrefCopyPreferAccessibleCaptions();
  if (v2)
  {
    v3 = v2;
    v4 = CFBooleanGetValue(v2) != 0;
    CFRelease(v3);
    if (!OrderedCanonicalLanguageIdentifiersFromString)
    {
      goto LABEL_8;
    }

LABEL_5:
    Count = CFArrayGetCount(OrderedCanonicalLanguageIdentifiersFromString);
    v6 = Count;
    if (Count == 0 || v4)
    {
      if (!Count)
      {
        CFRelease(OrderedCanonicalLanguageIdentifiersFromString);
        goto LABEL_8;
      }
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(OrderedCanonicalLanguageIdentifiersFromString, 0);
      LanguageFromLocaleIdentifier = MAXUtilitiesCreateLanguageFromLocaleIdentifier(ValueAtIndex);
      if (LanguageFromLocaleIdentifier)
      {
        v14 = LanguageFromLocaleIdentifier;
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(Mutable, ValueAtIndex);
        if (v6 >= 2)
        {
          for (i = 1; i != v6; ++i)
          {
            v17 = CFArrayGetValueAtIndex(OrderedCanonicalLanguageIdentifiersFromString, i);
            v18 = MAXUtilitiesCreateLanguageFromLocaleIdentifier(v17);
            if (v18)
            {
              v19 = v18;
              if (CFStringCompare(v18, v14, 1uLL) == kCFCompareEqualTo)
              {
                CFArrayAppendValue(Mutable, v17);
              }

              CFRelease(v19);
            }
          }
        }

        CFRelease(v14);
        if (!Mutable)
        {
          goto LABEL_25;
        }

        CFRelease(OrderedCanonicalLanguageIdentifiersFromString);
        return Mutable;
      }
    }

    return OrderedCanonicalLanguageIdentifiersFromString;
  }

  v4 = 0;
  if (OrderedCanonicalLanguageIdentifiersFromString)
  {
    goto LABEL_5;
  }

LABEL_8:
  v7 = CFLocaleCopyCurrent();
  if (!v7)
  {
    goto LABEL_27;
  }

  v8 = v7;
  v9 = MEMORY[0x1B2721A90]();
  if (v9 && (CanonicalLanguageIdentifierFromString = MAUtilitiesCreateCanonicalLanguageIdentifierFromString(v9)) != 0)
  {
    v11 = CanonicalLanguageIdentifierFromString;
    OrderedCanonicalLanguageIdentifiersFromString = MAUtilitiesCreateOrderedCanonicalLanguageIdentifiersFromString(CanonicalLanguageIdentifierFromString);
    CFRelease(v11);
  }

  else
  {
    OrderedCanonicalLanguageIdentifiersFromString = 0;
  }

  CFRelease(v8);
LABEL_25:
  Mutable = OrderedCanonicalLanguageIdentifiersFromString;
  if (OrderedCanonicalLanguageIdentifiersFromString)
  {
    return Mutable;
  }

LABEL_27:
  v21 = MEMORY[0x1E695E9C0];

  return CFArrayCreate(0, 0, 0, v21);
}

const __CFArray *MACaptionAppearancePrefCopyPreferredLanguages()
{
  TypeID = CFArrayGetTypeID();
  v1 = MAPreferencesCopyProfileValueWithExpectedType(0, @"MACaptionPreferredLanguages", TypeID);
  v2 = v1;
  if (v1)
  {
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
        v7 = CFGetTypeID(ValueAtIndex);
        if (v7 != CFStringGetTypeID())
        {
          break;
        }

        if (v4 == ++v5)
        {
          return v2;
        }
      }

      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

void MAPreferenceInitializeIfNeeded()
{
  if (MAPreferenceInitializeIfNeeded_onceToken != -1)
  {
    MAPreferenceInitializeIfNeeded_cold_1();
  }
}

const void *MAPreferencesCopyBoolean(__CFString *a1)
{
  TypeID = CFBooleanGetTypeID();

  return MAPreferencesCopyProfileValueWithExpectedType(0, a1, TypeID);
}

const __CFString *MAUtilitiesCreateCanonicalLanguageIdentifierFromString(CFStringRef localeIdentifier)
{
  v9 = *MEMORY[0x1E69E9840];
  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(0, localeIdentifier);
  if (CanonicalLanguageIdentifierFromString)
  {
    v2 = CanonicalLanguageIdentifierFromString;
    Length = CFStringGetLength(CanonicalLanguageIdentifierFromString);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v5 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (CFStringGetCString(v2, v5, MaximumSizeForEncoding + 1, 0x8000100u) && uloc_toLanguageTag() >= 1)
    {
      CFRetain(v2);
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    free(v5);
    CFRelease(v2);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

__CFArray *MAUtilitiesCreateOrderedCanonicalLanguageIdentifiersFromString(const __CFString *a1)
{
  CanonicalLanguageIdentifierFromString = MAUtilitiesCreateCanonicalLanguageIdentifierFromString(a1);
  if (!CanonicalLanguageIdentifierFromString)
  {
    return 0;
  }

  v2 = CanonicalLanguageIdentifierFromString;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, v2);
  LanguageFromLocaleIdentifier = MAXUtilitiesCreateLanguageFromLocaleIdentifier(v2);
  if (LanguageFromLocaleIdentifier)
  {
    v5 = LanguageFromLocaleIdentifier;
    if (!CFEqual(LanguageFromLocaleIdentifier, @"zh"))
    {
      CFArrayAppendValue(Mutable, v5);
    }

    CFRelease(v5);
  }

  CFRelease(v2);
  return Mutable;
}

const void *MAXUtilitiesCreateLanguageFromLocaleIdentifier(CFLocaleIdentifier localeID)
{
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, localeID);
  if (!ComponentsFromLocaleIdentifier)
  {
    return 0;
  }

  v2 = ComponentsFromLocaleIdentifier;
  Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, *MEMORY[0x1E695E6F0]);
  v4 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v2);
  return v4;
}

BOOL MADimFlashingLightsEnabled(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_AXSPhotosensitiveMitigationEnabledSymbolLoc_ptr;
  v6 = get_AXSPhotosensitiveMitigationEnabledSymbolLoc_ptr;
  if (!get_AXSPhotosensitiveMitigationEnabledSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __get_AXSPhotosensitiveMitigationEnabledSymbolLoc_block_invoke;
    v2[3] = &unk_1E7A93FF8;
    v2[4] = &v3;
    __get_AXSPhotosensitiveMitigationEnabledSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    MADimFlashingLightsEnabled_cold_1();
  }

  return v0() != 0;
}

void sub_1B0220A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0220C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFString *MACaptionAppearancePrefCopyProfileName(const __CFString *a1)
{
  TypeID = CFStringGetTypeID();
  v3 = MAPreferencesCopyProfileValueWithExpectedType(a1, @"MACaptionProfileName", TypeID);
  if (v3)
  {
    if (!MACaptionAppearancePrefIsProfileEditable(a1))
    {
      if (CFStringHasPrefix(v3, @"MALocalize-"))
      {
        Bundle = MAUtiltiesGetBundle();
        if (Bundle)
        {
          v6 = CFBundleCopyLocalizedString(Bundle, v3, 0, @"ProfileNames");
          if (v6)
          {
            v7 = v6;
            CFRelease(v3);
            return v7;
          }
        }
      }
    }
  }

  return v3;
}

double MACaptionAppearanceGetRelativeCharacterSizeForLanguage(uint64_t a1, void *a2, const __CFString *a3)
{
  number = 0;
  _copyValue(_copyCharSizeFromPrefsAsNumber, MACaptionAppearancePrefCopyVideoOverrideRelativeCharSize, a1, &number, a2);
  if (number)
  {
    v11 = 40;
    v5 = 1.0;
    if (CFNumberGetValue(number, kCFNumberCFIndexType, &v11))
    {
      if (v11 > 49)
      {
        switch(v11)
        {
          case '2':
            v5 = 1.5;
            break;
          case '<':
            v5 = 2.0;
            break;
          case 'F':
            v5 = 2.5;
            break;
        }
      }

      else
      {
        switch(v11)
        {
          case 10:
            v5 = 0.2;
            break;
          case 20:
            v5 = 0.35;
            break;
          case 30:
            v5 = 0.6;
            break;
        }
      }
    }

    CFRelease(number);
  }

  else
  {
    v5 = 1.0;
  }

  if (a1 == 1)
  {
    v6 = MACaptionAppearancePrefCopyActiveProfileID();
    if (!v6)
    {
      return v5;
    }
  }

  else
  {
    v6 = @"MACaptionSystemDefaultProfile";
    CFRetain(@"MACaptionSystemDefaultProfile");
  }

  IsProfileEditable = MACaptionAppearancePrefIsProfileEditable(v6);
  v9 = v5 < 1.5 && a3 != 0 && IsProfileEditable == 0;
  if (v9 && MAUtilitiesLanguageStringMatchesLanguage(a3, @"ko"))
  {
    v5 = 1.5;
  }

  CFRelease(v6);
  return v5;
}

void _copyValue(uint64_t (*a1)(__CFString *), uint64_t (*a2)(__CFString *), uint64_t a3, void *a4, void *a5)
{
  MAPreferenceInitializeIfNeeded();
  if (a3 == 1)
  {
    v10 = MACaptionAppearancePrefCopyActiveProfileID();
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v10 = @"MACaptionSystemDefaultProfile";
    CFRetain(@"MACaptionSystemDefaultProfile");
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  *a5 = 0;
  if (a2)
  {
    if (a3)
    {
      v11 = a2(v10);
      if (v11)
      {
        v12 = v11;
        if (CFBooleanGetValue(v11))
        {
          *a5 = 1;
        }

        CFRelease(v12);
      }
    }
  }

LABEL_11:
  if (a4)
  {
    *a4 = a1(v10);
  }

  if (v10)
  {

    CFRelease(v10);
  }
}

const void *MAPreferencesCopyProfileBoolean(const __CFString *a1, __CFString *a2)
{
  TypeID = CFBooleanGetTypeID();

  return MAPreferencesCopyProfileValueWithExpectedType(a1, a2, TypeID);
}

const void *MAPreferencesCopyProfileNumber(const __CFString *a1, __CFString *a2)
{
  TypeID = CFNumberGetTypeID();

  return MAPreferencesCopyProfileValueWithExpectedType(a1, a2, TypeID);
}

uint64_t MACaptionAppearancePrefGetRelativeCharSize(const __CFString *a1)
{
  v2 = MAPreferencesCopyProfileNumber(a1, @"MACaptionCharScaleEnum");
  if (v2)
  {
    v3 = v2;
    valuePtr = 0.0;
    if (CFNumberGetValue(v2, kCFNumberCFIndexType, &valuePtr))
    {
      v4 = *&valuePtr;
      if ((*&valuePtr - 10) <= 0x3C && ((1 << (LOBYTE(valuePtr) - 10)) & 0x1004010040100401) != 0)
      {
        v6 = v3;
LABEL_19:
        CFRelease(v6);
        return v4;
      }
    }

    CFRelease(v3);
  }

  v7 = MAPreferencesCopyProfileNumber(a1, @"MACaptionCharScale");
  if (v7)
  {
    v8 = v7;
    valuePtr = 0.0;
    if (CFNumberGetValue(v7, kCFNumberCGFloatType, &valuePtr))
    {
      if (valuePtr < 0.5)
      {
        v4 = 20;
LABEL_18:
        v6 = v8;
        goto LABEL_19;
      }

      if (valuePtr < 0.9)
      {
        v4 = 30;
        goto LABEL_18;
      }

      if (valuePtr >= 1.2)
      {
        if (valuePtr >= 1.9)
        {
          if (valuePtr >= 2.1)
          {
            v4 = 40;
          }

          else
          {
            v4 = 60;
          }
        }

        else
        {
          v4 = 50;
        }

        goto LABEL_18;
      }
    }

    v4 = 40;
    goto LABEL_18;
  }

  return 40;
}

CTFontDescriptorRef MACaptionAppearanceCopyFontDescriptorWithStrokeForStyle(MACaptionAppearanceDomain a1, void *a2, unint64_t a3, const __CFString *a4, double *a5, double a6)
{
  MAPreferenceInitializeIfNeeded();
  if (a1 == kMACaptionAppearanceDomainUser)
  {
    v12 = MACaptionAppearancePrefCopyActiveProfileID();
    if (!a2)
    {
      goto LABEL_10;
    }

    *a2 = 0;
  }

  else
  {
    v12 = @"MACaptionSystemDefaultProfile";
    CFRetain(@"MACaptionSystemDefaultProfile");
    if (!a2)
    {
      goto LABEL_10;
    }

    *a2 = 0;
    if (a1 == kMACaptionAppearanceDomainDefault)
    {
      goto LABEL_10;
    }
  }

  v13 = MACaptionAppearancePrefCopyVideoOverrideFontForStyle(v12, a3);
  if (v13)
  {
    v14 = v13;
    if (CFBooleanGetValue(v13))
    {
      *a2 = 1;
    }

    CFRelease(v14);
  }

LABEL_10:
  v15 = MACaptionAppearancePrefCopyFontDescriptorForStyle(v12, a3);
  CTFontDescriptorWithName = v15;
  if (a1 && !v15)
  {
    if (v12)
    {
      CFRelease(v12);
    }

    v12 = @"MACaptionSystemDefaultProfile";
    CFRetain(@"MACaptionSystemDefaultProfile");
    CTFontDescriptorWithName = MACaptionAppearancePrefCopyFontDescriptorForStyle(@"MACaptionSystemDefaultProfile", a3);
  }

  if (a4 && CTFontDescriptorWithName)
  {
    v17 = MAUtilitiesCopyFontOverideLanguage(a4);
    if (!v17)
    {
      if (MAUtilitiesFontSupportsLanguage(CTFontDescriptorWithName, a4))
      {
        goto LABEL_35;
      }

      CFRelease(CTFontDescriptorWithName);
      v22 = (a3 - 1 > 6 ? MEMORY[0x1E6965660] : qword_1E7A94088[a3 - 1]);
      v25 = *v22;
      CTFontDescriptorWithName = CTFontDescriptorCreateForCSSFamily();
      if (CTFontDescriptorWithName)
      {
        goto LABEL_35;
      }

      goto LABEL_23;
    }

    v18 = v17;
    if (!MAUtilitiesFontSupportsLanguage(CTFontDescriptorWithName, v17))
    {
      PreferredPostScriptNameForLanguage = MAUtilitiesCreatePreferredPostScriptNameForLanguage(v18);
      if (PreferredPostScriptNameForLanguage)
      {
        v20 = PreferredPostScriptNameForLanguage;
        CFRelease(CTFontDescriptorWithName);
        CTFontDescriptorWithName = MAUtilitiesCreateCTFontDescriptorWithName(v20);
        CFRelease(v20);
      }
    }

    CFRelease(v18);
  }

  if (CTFontDescriptorWithName)
  {
    goto LABEL_35;
  }

LABEL_23:
  v21 = MAUtilitiesCreateCTFontDescriptorWithName(@".AXAppleSystemFont");
  if (v21 || (v21 = MAUtilitiesCreateCTFontDescriptorWithName(@"Helvetica")) != 0)
  {
    CTFontDescriptorWithName = v21;
  }

  else
  {
    v23 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CopyWithAttributes = v23;
    if (!v23)
    {
      goto LABEL_48;
    }

    CTFontDescriptorWithName = CTFontDescriptorCreateWithAttributes(v23);
    CFRelease(CopyWithAttributes);
    if (!CTFontDescriptorWithName)
    {
      CopyWithAttributes = 0;
      if (!v12)
      {
        goto LABEL_50;
      }

LABEL_49:
      CFRelease(v12);
      goto LABEL_50;
    }
  }

LABEL_35:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = 1065353216;
  TextEdgeStyle = MACaptionAppearanceGetTextEdgeStyle(a1, 0);
  if (TextEdgeStyle < kMACaptionAppearanceTextEdgeStyleUniform)
  {
    valuePtr = 0;
    goto LABEL_42;
  }

  if (TextEdgeStyle == kMACaptionAppearanceTextEdgeStyleUniform)
  {
    v28 = 1077936128;
  }

  else
  {
    if (TextEdgeStyle != kMACaptionAppearanceTextEdgeStyleDropShadow)
    {
      goto LABEL_42;
    }

    v28 = 1065353216;
  }

  valuePtr = v28;
LABEL_42:
  v29 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  CFDictionarySetValue(Mutable, @"MACaptionFontAttributeStrokeWidth", v29);
  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(CTFontDescriptorWithName, Mutable);
  if (v29)
  {
    CFRelease(v29);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (CopyWithAttributes)
  {
    CFRelease(CTFontDescriptorWithName);
LABEL_48:
    if (!v12)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  CopyWithAttributes = CTFontDescriptorWithName;
  if (v12)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (a5)
  {
    v30 = MACaptionAppearanceGetTextEdgeStyle(a1, 0);
    v31 = 0.0972222222;
    if (v30 != kMACaptionAppearanceTextEdgeStyleUniform)
    {
      v31 = 0.0;
    }

    if (v30 == kMACaptionAppearanceTextEdgeStyleDropShadow)
    {
      v31 = 0.0277777778;
    }

    if (a6 <= 60.0)
    {
      v32 = v31 * a6;
    }

    else
    {
      v32 = v31 * 60.0 + (a6 + -60.0) * (v31 * 0.125);
    }

    *a5 = v32;
  }

  return CopyWithAttributes;
}

const void *MACaptionAppearancePrefCopyVideoOverrideFontForStyle(const __CFString *a1, unint64_t a2)
{
  v3 = _keyForFontStyle(a2);
  if (!v3)
  {
    return *MEMORY[0x1E695E4C0];
  }

  v4 = v3;
  v5 = *MEMORY[0x1E695E480];
  Length = CFStringGetLength(@"MACaptionVideOverrideFont");
  MutableCopy = CFStringCreateMutableCopy(v5, Length, @"MACaptionVideOverrideFont");
  CFStringAppend(MutableCopy, v4);
  v8 = MAPreferencesCopyProfileBoolean(a1, MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v8;
}

__CFString *_keyForFontStyle(unint64_t a1)
{
  if (a1 > 7)
  {
    return 0;
  }

  else
  {
    return off_1E7A94338[a1];
  }
}

const __CFString *MAPreferencesCopyProfileFontDescriptor(const __CFString *a1, __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  result = MAPreferencesCopyProfileValueWithExpectedType(a1, a2, TypeID);
  if (result)
  {
    v6 = result;
    CTFontDescriptorWithName = MAUtilitiesCreateCTFontDescriptorWithName(result);
    CFRelease(v6);
    return CTFontDescriptorWithName;
  }

  return result;
}

const __CFString *MACaptionAppearancePrefCopyFontDescriptorForStyle(const __CFString *a1, unint64_t a2)
{
  v3 = _keyForFontStyle(a2);

  return MAPreferencesCopyProfileFontDescriptor(a1, v3);
}

const __CTFontDescriptor *MAUtilitiesCreateCTFontDescriptorWithName(const __CFString *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0;
  }

  v3 = Mutable;
  v4 = *MEMORY[0x1E6965808];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E6965808], a1);
  SystemFontType = MACaptionAppearancePrefGetSystemFontType(a1);
  if (a1 && CFStringGetLength(a1) > 1)
  {
    buffer = 0;
    v17.location = 0;
    v17.length = 1;
    CFStringGetCharacters(a1, v17, &buffer);
    v6 = buffer;
    CTFontDescriptorForSystemFontType = _MAUtilitiesCreateCTFontDescriptorForSystemFontType(SystemFontType);
    v8 = CTFontDescriptorForSystemFontType;
    if (v6 != 46 || CTFontDescriptorForSystemFontType)
    {
      goto LABEL_9;
    }

    v9 = CTFontDescriptorCreateWithAttributesAndOptions();
  }

  else
  {
    v9 = _MAUtilitiesCreateCTFontDescriptorForSystemFontType(SystemFontType);
  }

  v8 = v9;
LABEL_9:
  if (!v8)
  {
    v8 = CTFontDescriptorCreateWithAttributes(v3);
    if (!v8)
    {
      v14 = 0;
LABEL_23:
      CFRelease(v3);
      return v14;
    }
  }

  v10 = CFSetCreateMutable(0, 1, MEMORY[0x1E695E9F8]);
  if (v10)
  {
    v11 = v10;
    CFSetAddValue(v10, v4);
    MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v8, v11);
    CFRelease(v11);
  }

  else
  {
    MatchingFontDescriptor = 0;
  }

  CFRelease(v8);
  CFRelease(v3);
  if (MatchingFontDescriptor)
  {
    v13 = CTFontDescriptorCopyAttribute(MatchingFontDescriptor, v4);
    if (v13)
    {
      v3 = v13;
    }

    else
    {
      v3 = MatchingFontDescriptor;
    }

    if (v13)
    {
      v14 = MatchingFontDescriptor;
    }

    else
    {
      v14 = 0;
    }

    goto LABEL_23;
  }

  return 0;
}

uint64_t MACaptionAppearancePrefGetSystemFontType(const void *a1)
{
  v2 = CFEqual(a1, @".AXAppleSystemFontMono");
  v3 = CFEqual(a1, @".AXAppleSystemFontBold");
  v4 = CFEqual(a1, @".AXAppleSystemFont");
  v5 = 2;
  v6 = -1;
  if (v3)
  {
    v6 = 1;
  }

  if (!v2)
  {
    v5 = v6;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

CTFontDescriptorRef _MAUtilitiesCreateCTFontDescriptorForSystemFontType(uint64_t a1)
{
  if (a1 == -1)
  {
    return 0;
  }

  valuePtr = *MEMORY[0x1E6965950];
  v2 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = *MEMORY[0x1E69658E0];
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69658E0], *MEMORY[0x1E69658B8]);
  if (a1 == 2)
  {
    v7 = *MEMORY[0x1E69658C0];
    v6 = Mutable;
    v5 = v4;
    goto LABEL_7;
  }

  if (a1 == 1)
  {
    v5 = *MEMORY[0x1E6965970];
    v6 = Mutable;
    v7 = v2;
LABEL_7:
    CFDictionarySetValue(v6, v5, v7);
  }

  v9 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v9, *MEMORY[0x1E6965898], Mutable);
  v8 = CTFontDescriptorCreateWithAttributes(v9);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v8;
}

MACaptionAppearanceTextEdgeStyle MACaptionAppearanceGetTextEdgeStyle(MACaptionAppearanceDomain domain, MACaptionAppearanceBehavior *behavior)
{
  MAPreferenceInitializeIfNeeded();
  if (domain == kMACaptionAppearanceDomainUser)
  {
    v4 = MACaptionAppearancePrefCopyActiveProfileID();
    if (!behavior)
    {
      goto LABEL_10;
    }

    *behavior = kMACaptionAppearanceBehaviorUseValue;
  }

  else
  {
    v4 = @"MACaptionSystemDefaultProfile";
    CFRetain(@"MACaptionSystemDefaultProfile");
    if (!behavior)
    {
      goto LABEL_10;
    }

    *behavior = kMACaptionAppearanceBehaviorUseValue;
    if (domain == kMACaptionAppearanceDomainDefault)
    {
      goto LABEL_10;
    }
  }

  v5 = MACaptionAppearancePrefCopyVideoOverrideTextEdgeStyle(v4);
  if (v5)
  {
    v6 = v5;
    if (CFBooleanGetValue(v5))
    {
      *behavior = kMACaptionAppearanceBehaviorUseContentIfAvailable;
    }

    CFRelease(v6);
  }

LABEL_10:
  v7 = MACaptionAppearancePrefCopyTextEdgeStyle(v4);
  if (!v7)
  {
    v9 = kMACaptionAppearanceTextEdgeStyleUndefined;
    if (!v4)
    {
      return v9;
    }

    goto LABEL_15;
  }

  v8 = v7;
  valuePtr = 0;
  if (CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr))
  {
    v9 = valuePtr;
  }

  else
  {
    v9 = kMACaptionAppearanceTextEdgeStyleUndefined;
  }

  CFRelease(v8);
  if (v4)
  {
LABEL_15:
    CFRelease(v4);
  }

  return v9;
}

CFNumberRef MACaptionAppearancePrefCopyTextEdgeStyle(const __CFString *a1)
{
  v1 = MAPreferencesCopyProfileNumber(a1, @"MACaptionTextEdgeStyle");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  valuePtr = 0;
  if (CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr))
  {
    v3 = valuePtr;
    if ((valuePtr - 1) >= 5)
    {
      v3 = 0;
    }

    valuePtr = v3;
    v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

CFStringRef MAXCreateCFObjectFromXPC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = MEMORY[0x1B2722470]();
  if (v2 == MEMORY[0x1E69E9EB0])
  {
    valuePtr[0] = xpc_int64_get_value(a1);
    return CFNumberCreate(0, kCFNumberSInt64Type, valuePtr);
  }

  if (v2 == MEMORY[0x1E69E9F10])
  {
    string_ptr = xpc_string_get_string_ptr(a1);

    return CFStringCreateWithCString(0, string_ptr, 0x8000100u);
  }

  else
  {
    if (v2 == MEMORY[0x1E69E9E50])
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      count = xpc_array_get_count(a1);
      if (count)
      {
        v7 = count;
        for (i = 0; i != v7; ++i)
        {
          value = xpc_array_get_value(a1, i);
          v10 = MAXCreateCFObjectFromXPC(value);
          if (v10)
          {
            v11 = v10;
            CFArrayAppendValue(Mutable, v10);
            CFRelease(v11);
          }
        }
      }

      return Mutable;
    }

    if (v2 == MEMORY[0x1E69E9E80])
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      valuePtr[0] = MEMORY[0x1E69E9820];
      valuePtr[1] = 0x40000000;
      valuePtr[2] = ___createCFDictionaryFromXPCDictionary_block_invoke;
      valuePtr[3] = &__block_descriptor_tmp;
      valuePtr[4] = Mutable;
      xpc_dictionary_apply(a1, valuePtr);
      return Mutable;
    }

    if (v2 != MEMORY[0x1E69E9E58])
    {
      return 0;
    }

    v12 = xpc_BOOL_get_value(a1);
    v13 = MEMORY[0x1E695E4D0];
    if (!v12)
    {
      v13 = MEMORY[0x1E695E4C0];
    }

    v14 = *v13;

    return CFRetain(v14);
  }
}

xpc_object_t MAXCreateXPCObjectFromCF(const __CFString *a1)
{
  valuePtr[256] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_18;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == CFNumberGetTypeID())
  {
    valuePtr[0] = 0;
    CFNumberGetValue(a1, kCFNumberSInt64Type, valuePtr);
    v3 = xpc_int64_create(valuePtr[0]);
LABEL_6:
    v4 = v3;
LABEL_19:
    v13 = *MEMORY[0x1E69E9840];
    return v4;
  }

  if (v2 == CFStringGetTypeID())
  {
    LOBYTE(valuePtr[0]) = 0;
    CFStringGetCString(a1, valuePtr, 2048, 0x8000100u);
    v3 = xpc_string_create(valuePtr);
    goto LABEL_6;
  }

  if (v2 == CFArrayGetTypeID())
  {
    v4 = xpc_array_create(0, 0);
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v9 = MAXCreateXPCObjectFromCF(ValueAtIndex);
        if (v9)
        {
          v10 = v9;
          xpc_array_append_value(v4, v9);
          CFRelease(v10);
        }
      }
    }

    goto LABEL_19;
  }

  if (v2 != CFDictionaryGetTypeID())
  {
LABEL_18:
    v4 = 0;
    goto LABEL_19;
  }

  v11 = *MEMORY[0x1E69E9840];

  return _createXPCObjectFromCFDictionary(a1);
}

xpc_object_t _createXPCObjectFromCFDictionary(const __CFDictionary *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = xpc_dictionary_create(0, 0, 0);
  Count = CFDictionaryGetCount(a1);
  v4 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  v5 = malloc_type_calloc(Count, 8uLL, 0xC0040B8AA526DuLL);
  CFDictionaryGetKeysAndValues(a1, v4, v5);
  if (Count >= 1)
  {
    do
    {
      v6 = *v4;
      if (*v4)
      {
        v7 = CFGetTypeID(*v4);
        if (v7 == CFStringGetTypeID())
        {
          buffer[0] = 0;
          if (CFStringGetCString(v6, buffer, 2048, 0x8000100u))
          {
            v8 = MAXCreateXPCObjectFromCF(*v5);
            if (v8)
            {
              v9 = v8;
              xpc_dictionary_set_value(v2, buffer, v8);
              CFRelease(v9);
            }
          }
        }
      }

      --Count;
    }

    while (Count);
  }

  free(v4);
  free(v5);
  v10 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t ___createCFDictionaryFromXPCDictionary_block_invoke(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2)
  {
    if (a3)
    {
      v5 = CFStringCreateWithCString(0, a2, 0x8000100u);
      if (v5)
      {
        v6 = v5;
        v7 = MAXCreateCFObjectFromXPC(a3);
        if (v7)
        {
          v8 = v7;
          CFDictionarySetValue(*(a1 + 32), v6, v7);
          CFRelease(v8);
        }

        CFRelease(v6);
      }
    }
  }

  return 1;
}

uint64_t MAImageCaptioningSetCaptionIntoMetadata(void *a1, __CFString *a2, CFErrorRef *a3)
{
  userInfoKeys = *MEMORY[0x1E695E620];
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CGImageMetadataGetTypeID()))
  {
    if (a3)
    {
      userInfoValues = @"Invalid metadata";
      v14 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], @"com.apple.media.accessibility", 0, &userInfoKeys, &userInfoValues, 1);
      result = 0;
      *a3 = v14;
      return result;
    }

    return 0;
  }

  if (!a2)
  {
    a2 = &stru_1F264B7C0;
  }

  v7 = *MEMORY[0x1E696D388];
  v8 = *MEMORY[0x1E696D398];
  CGImageMetadataRegisterNamespaceForPrefix(a1, *MEMORY[0x1E696D388], *MEMORY[0x1E696D398], 0);
  v9 = *MEMORY[0x1E696DDA8];
  v10 = CGImageMetadataTagCreate(v7, v8, *MEMORY[0x1E696DDA8], kCGImageMetadataTypeString, a2);
  v11 = *MEMORY[0x1E695E480];
  v12 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@", v8, v9);
  if (!CGImageMetadataSetTagWithPath(a1, 0, v12, v10))
  {
    if (a3)
    {
      userInfoValues = @"Error setting metadata";
      *a3 = CFErrorCreateWithUserInfoKeysAndValues(v11, @"com.apple.media.accessibility", 0, &userInfoKeys, &userInfoValues, 1);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    return 0;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return 1;
}

const CGImageMetadata *MAImageCaptioningCopyCaptionWithSource(CGImageSource *a1, CFErrorRef *a2)
{
  userInfoKeys = *MEMORY[0x1E695E620];
  if (a1)
  {
    v2 = CGImageSourceCopyMetadataAtIndex(a1, 0, 0);
    if (v2)
    {
      userInfoValues = 0;
      p_userInfoValues = &userInfoValues;
      v14 = 0x2000000000;
      v15 = 0;
      v3 = *MEMORY[0x1E696D398];
      v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@:%@", *MEMORY[0x1E696D398], *MEMORY[0x1E696DDA8]);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __MAImageCaptioningCopyCaptionWithSource_block_invoke;
      block[3] = &unk_1E7A93FC8;
      block[4] = &userInfoValues;
      block[5] = v4;
      CGImageMetadataEnumerateTagsUsingBlock(v2, 0, 0, block);
      CFRelease(v2);
      if (v4)
      {
        CFRelease(v4);
      }

      v5 = p_userInfoValues[3];
      if (!v5)
      {
        v2 = 0;
        goto LABEL_15;
      }

      if (CGImageMetadataTagGetType(v5) == kCGImageMetadataTypeString)
      {
        v6 = CGImageMetadataTagCopyValue(p_userInfoValues[3]);
        v2 = v6;
        if (!v6 || CFStringGetLength(v6))
        {
          goto LABEL_11;
        }

        CFRelease(v2);
      }

      v2 = 0;
LABEL_11:
      CFRelease(p_userInfoValues[3]);
LABEL_15:
      _Block_object_dispose(&userInfoValues, 8);
    }
  }

  else if (a2)
  {
    v8 = *MEMORY[0x1E695E480];
    userInfoValues = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Invalid image source");
    v9 = CFErrorCreateWithUserInfoKeysAndValues(v8, @"com.apple.media.accessibility", 0, &userInfoKeys, &userInfoValues, 1);
    v2 = 0;
    *a2 = v9;
  }

  else
  {
    return 0;
  }

  return v2;
}

BOOL __MAImageCaptioningCopyCaptionWithSource_block_invoke(uint64_t a1, CFTypeRef cf1, uint64_t a3)
{
  v5 = CFEqual(cf1, *(a1 + 40));
  if (v5)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    CFRetain(*(*(*(a1 + 32) + 8) + 24));
  }

  return v5 == 0;
}

CFStringRef MAImageCaptioningCopyCaption(CFURLRef url, CFErrorRef *error)
{
  userInfoKeys = *MEMORY[0x1E695E620];
  if (url)
  {
    v4 = CGImageSourceCreateWithURL(url, 0);
    if (v4)
    {
      v5 = v4;
      v6 = MAImageCaptioningCopyCaptionWithSource(v4, error);
      CFRelease(v5);
      return v6;
    }

    if (error)
    {
      v9 = *MEMORY[0x1E695E480];
      userInfoValues = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Invalid url: %@", url);
      v8 = v9;
      goto LABEL_8;
    }
  }

  else if (error)
  {
    userInfoValues = @"Missing url";
    v8 = *MEMORY[0x1E695E480];
LABEL_8:
    *error = CFErrorCreateWithUserInfoKeysAndValues(v8, @"com.apple.media.accessibility", 0, &userInfoKeys, &userInfoValues, 1);
  }

  return 0;
}

BOOL MAImageCaptioningSetCaption(CFURLRef url, CFStringRef string, CFErrorRef *error)
{
  userInfoKeys = *MEMORY[0x1E695E620];
  if (!url)
  {
    if (error)
    {
      v16 = @"Missing url";
      LOBYTE(Mutable) = 0;
      *error = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], @"com.apple.media.accessibility", 0, &userInfoKeys, &v16, 1);
      return Mutable;
    }

LABEL_22:
    LOBYTE(Mutable) = 0;
    return Mutable;
  }

  Mutable = CGImageMetadataCreateMutable();
  if ((MAImageCaptioningSetCaptionIntoMetadata(Mutable, string, error) & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = CGImageSourceCreateWithURL(url, 0);
  if (!v7)
  {
    if (error)
    {
      v16 = @"Could not create image source";
      *error = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], @"com.apple.media.accessibility", 0, &userInfoKeys, &v16, 1);
    }

LABEL_14:
    if (!Mutable)
    {
      return Mutable;
    }

    v14 = Mutable;
    goto LABEL_21;
  }

  v8 = v7;
  Type = CGImageSourceGetType(v7);
  Count = CGImageSourceGetCount(v8);
  v11 = CGImageDestinationCreateWithURL(url, Type, Count, 0);
  if (!v11)
  {
    if (error)
    {
      v16 = @"Could not create image destination";
      *error = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], @"com.apple.media.accessibility", 0, &userInfoKeys, &v16, 1);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v14 = v8;
LABEL_21:
    CFRelease(v14);
    goto LABEL_22;
  }

  v12 = v11;
  v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v13, *MEMORY[0x1E696D340], *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(v13, *MEMORY[0x1E696D348], Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  LOBYTE(Mutable) = CGImageDestinationCopyImageSource(v12, v8, v13, error);
  if (v13)
  {
    CFRelease(v13);
  }

  CFRelease(v12);
  CFRelease(v8);
  return Mutable;
}

uint64_t __libAccessibilityLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL MACaptionAppearanceAddSelectedLanguage(MACaptionAppearanceDomain domain, CFStringRef language)
{
  MAPreferenceInitializeIfNeeded();
  OrderedCanonicalLanguageIdentifiersFromString = MAUtilitiesCreateOrderedCanonicalLanguageIdentifiersFromString(language);
  if (OrderedCanonicalLanguageIdentifiersFromString)
  {
    v4 = MACaptionAppearancePrefCopyPreferredLanguages();
    if (v4)
    {
      v5 = v4;
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v8.length = Count;
        v8.location = 0;
        CFArrayAppendArray(OrderedCanonicalLanguageIdentifiersFromString, v5, v8);
      }

      if (CFArrayGetCount(OrderedCanonicalLanguageIdentifiersFromString) >= 1)
      {
        MACaptionAppearancePrefSetPreferredLanguages(OrderedCanonicalLanguageIdentifiersFromString);
      }

      CFRelease(v5);
    }

    else if (CFArrayGetCount(OrderedCanonicalLanguageIdentifiersFromString) >= 1)
    {
      MACaptionAppearancePrefSetPreferredLanguages(OrderedCanonicalLanguageIdentifiersFromString);
    }

    CFRelease(OrderedCanonicalLanguageIdentifiersFromString);
  }

  return OrderedCanonicalLanguageIdentifiersFromString != 0;
}

void MACaptionAppearanceSetDisplayType(MACaptionAppearanceDomain domain, MACaptionAppearanceDisplayType displayType)
{
  valuePtr = displayType;
  v2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  if (v2)
  {
    v3 = v2;
    MACaptionAppearancePrefSetDisplayType(v2);
    CFRelease(v3);
  }
}

CFArrayRef MACaptionAppearanceCopyPreferredCaptioningMediaCharacteristics(MACaptionAppearanceDomain domain)
{
  v7 = *MEMORY[0x1E69E9840];
  MAPreferenceInitializeIfNeeded();
  v1 = MACaptionAppearancePrefCopyPreferAccessibleCaptions();
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = v1;
  if (!CFBooleanGetValue(v1))
  {
    CFRelease(v2);
LABEL_6:
    v3 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_7;
  }

  v6 = xmmword_1E7A94078;
  v3 = CFArrayCreate(0, &v6, 2, MEMORY[0x1E695E9C0]);
  CFRelease(v2);
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL MACaptionAppearanceIsCustomized(uint64_t a1)
{
  if (a1 != 1)
  {
    return 0;
  }

  v1 = MACaptionAppearancePrefCopyActiveProfileID();
  v2 = MACaptionAppearancePrefIsProfileEditable(v1) != 0;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2;
}

CGColorRef MACaptionAppearanceCopyForegroundColor(MACaptionAppearanceDomain domain, MACaptionAppearanceBehavior *behavior)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  _copyValue(MACaptionAppearancePrefCopyForegroundColor, MACaptionAppearancePrefCopyVideoOverrideForegroundColor, domain, &v7, behavior);
  result = v7;
  if (domain && !v7)
  {
    _copyValue(MACaptionAppearancePrefCopyForegroundColor, MACaptionAppearancePrefCopyVideoOverrideForegroundColor, 0, &v7, behavior);
    result = v7;
  }

  if (!result)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = xmmword_1B022ED28;
    v9 = unk_1B022ED38;
    result = CGColorCreate(DeviceRGB, components);
    v7 = result;
    if (DeviceRGB)
    {
      CFRelease(DeviceRGB);
      result = v7;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CGColorRef MACaptionAppearanceCopyBackgroundColor(MACaptionAppearanceDomain domain, MACaptionAppearanceBehavior *behavior)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  _copyValue(MACaptionAppearancePrefCopyBackgroundColor, MACaptionAppearancePrefCopyVideoOverrideBackgroundColor, domain, &v7, behavior);
  result = v7;
  if (domain && !v7)
  {
    _copyValue(MACaptionAppearancePrefCopyBackgroundColor, MACaptionAppearancePrefCopyVideoOverrideBackgroundColor, 0, &v7, behavior);
    result = v7;
  }

  if (!result)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = 0u;
    v9 = 0u;
    result = CGColorCreate(DeviceRGB, components);
    v7 = result;
    if (DeviceRGB)
    {
      CFRelease(DeviceRGB);
      result = v7;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CGColorRef MACaptionAppearanceCopyStrokeColor()
{
  v5 = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v4[0] = xmmword_1B022ED48;
  v4[1] = unk_1B022ED58;
  v1 = CGColorCreate(DeviceRGB, v4);
  if (DeviceRGB)
  {
    CFRelease(DeviceRGB);
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

CGColorRef MACaptionAppearanceCopyWindowColor(MACaptionAppearanceDomain domain, MACaptionAppearanceBehavior *behavior)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  _copyValue(MACaptionAppearancePrefCopyWindowColor, MACaptionAppearancePrefCopyVideoOverrideWindowColor, domain, &v7, behavior);
  result = v7;
  if (domain && !v7)
  {
    _copyValue(MACaptionAppearancePrefCopyWindowColor, MACaptionAppearancePrefCopyVideoOverrideWindowColor, 0, &v7, behavior);
    result = v7;
  }

  if (!result)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *components = 0u;
    v9 = 0u;
    result = CGColorCreate(DeviceRGB, components);
    v7 = result;
    if (DeviceRGB)
    {
      CFRelease(DeviceRGB);
      result = v7;
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CGFloat MACaptionAppearanceGetForegroundOpacity(MACaptionAppearanceDomain domain, MACaptionAppearanceBehavior *behavior)
{
  number = 0;
  valuePtr = 1.0;
  _copyValue(MACaptionAppearancePrefCopyForegroundOpacity, MACaptionAppearancePrefCopyVideoOverrideForegroundOpacity, domain, &number, behavior);
  if (!number)
  {
    return 1.0;
  }

  CFNumberGetValue(number, kCFNumberCGFloatType, &valuePtr);
  CFRelease(number);
  return valuePtr;
}

CGFloat MACaptionAppearanceGetBackgroundOpacity(MACaptionAppearanceDomain domain, MACaptionAppearanceBehavior *behavior)
{
  number = 0;
  valuePtr = 1.0;
  _copyValue(MACaptionAppearancePrefCopyBackgroundOpacity, MACaptionAppearancePrefCopyVideoOverrideBackgroundOpacity, domain, &number, behavior);
  if (!number)
  {
    return 1.0;
  }

  CFNumberGetValue(number, kCFNumberCGFloatType, &valuePtr);
  CFRelease(number);
  return valuePtr;
}

CGFloat MACaptionAppearanceGetWindowOpacity(MACaptionAppearanceDomain domain, MACaptionAppearanceBehavior *behavior)
{
  number = 0;
  valuePtr = 1.0;
  _copyValue(MACaptionAppearancePrefCopyWindowOpacity, MACaptionAppearancePrefCopyVideoOverrideWindowOpacity, domain, &number, behavior);
  if (!number)
  {
    return 1.0;
  }

  CFNumberGetValue(number, kCFNumberCGFloatType, &valuePtr);
  CFRelease(number);
  return valuePtr;
}

CGFloat MACaptionAppearanceGetWindowRoundedCornerRadius(MACaptionAppearanceDomain domain, MACaptionAppearanceBehavior *behavior)
{
  number = 0;
  valuePtr = 0.0;
  _copyValue(MACaptionAppearancePrefCopyWindowRoundedCornerRadius, 0, domain, &number, behavior);
  if (number)
  {
    CFNumberGetValue(number, kCFNumberCGFloatType, &valuePtr);
    CFRelease(number);
  }

  RelativeCharacterSizeForLanguage = MACaptionAppearanceGetRelativeCharacterSizeForLanguage(domain, 0, 0);
  if (RelativeCharacterSizeForLanguage <= 0.0)
  {
    result = valuePtr;
  }

  else
  {
    result = RelativeCharacterSizeForLanguage * valuePtr;
  }

  if (result > 10.0)
  {
    return 10.0;
  }

  return result;
}

CFStringRef MACaptionAppearanceCopyPreviewText(uint64_t a1, const void *a2)
{
  Bundle = MAUtiltiesGetBundle();
  if (Bundle)
  {
    v4 = Bundle;
    if (a2)
    {
      Mutable = CFArrayCreateMutable(0, 1, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, a2);
      v6 = CFBundleCopyLocalizedStringForLocalizations();
      CFRelease(Mutable);
      if (v6)
      {
        return v6;
      }
    }

    v7 = CFBundleCopyLocalizedString(v4, @"caption.preview.text", 0, @"Localizable");
    if (v7)
    {
      return v7;
    }
  }

  return CFRetain(&stru_1F264B7C0);
}

void MACaptionAppearanceExecuteBlockForProfileID(const void *a1, uint64_t a2)
{
  MACaptionAppearancePrefSetTempProfileID(a1);
  (*(a2 + 16))(a2);

  MACaptionAppearancePrefSetTempProfileID(0);
}

void MACaptionAppearanceDidDisplayCaptions(CFArrayRef strings)
{
  if (strings)
  {
    v2 = CFGetTypeID(strings);
    if (v2 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(strings);
      Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
      if (Mutable)
      {
        v5 = Mutable;
        TypeID = CFAttributedStringGetTypeID();
        v7 = CFStringGetTypeID();
        if (Count >= 1)
        {
          v8 = v7;
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(strings, i);
            v11 = CFGetTypeID(ValueAtIndex);
            if (v11 == TypeID)
            {
              CFArrayAppendValue(v5, ValueAtIndex);
            }

            else if (v11 == v8)
            {
              v12 = CFAttributedStringCreate(0, ValueAtIndex, 0);
              if (v12)
              {
                v13 = v12;
                CFArrayAppendValue(v5, v12);
                CFRelease(v13);
              }
            }
          }
        }

        if (CFArrayGetCount(v5) >= 1 && _DidDisplayCaptionsCallback)
        {
          _DidDisplayCaptionsCallback(strings);
        }

        CFRelease(v5);
      }
    }
  }
}

void MAAudibleMediaPrefSetPreferDescriptiveVideo(const void *a1)
{
  v2 = MAPreferencesCopyBoolean(@"MAAudibleMediaPrefPreferDescriptiveVideo");
  MAPreferencesSetValue(@"MAAudibleMediaPrefPreferDescriptiveVideo", a1);
  MAPreferencesPostChangeNotificationIfNeeded(v2, a1, @"com.apple.mediaaccessibility.audibleMediaSettingsChanged");
  if (v2)
  {

    CFRelease(v2);
  }
}

CFArrayRef MAAudibleMediaCopyPreferredCharacteristics(void)
{
  v5[1] = *MEMORY[0x1E69E9840];
  MAPreferenceInitializeIfNeeded();
  v0 = MAAudibleMediaPrefCopyPreferDescriptiveVideo();
  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = v0;
  if (!CFBooleanGetValue(v0))
  {
    CFRelease(v1);
LABEL_6:
    v2 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    goto LABEL_7;
  }

  v5[0] = @"public.accessibility.describes-video";
  v2 = CFArrayCreate(0, v5, 1, MEMORY[0x1E695E9C0]);
  CFRelease(v1);
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_7:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

id getAXSettingsClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXSettingsClass_softClass;
  v7 = getAXSettingsClass_softClass;
  if (!getAXSettingsClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXSettingsClass_block_invoke;
    v3[3] = &unk_1E7A93FF8;
    v3[4] = &v4;
    __getAXSettingsClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B02237C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t soft_AXSHapticMusicEnabled()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = get_AXSHapticMusicEnabledSymbolLoc_ptr;
  v6 = get_AXSHapticMusicEnabledSymbolLoc_ptr;
  if (!get_AXSHapticMusicEnabledSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __get_AXSHapticMusicEnabledSymbolLoc_block_invoke;
    v2[3] = &unk_1E7A93FF8;
    v2[4] = &v3;
    __get_AXSHapticMusicEnabledSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  if (!v0)
  {
    soft_AXSHapticMusicEnabled_cold_1();
  }

  return v0();
}

void sub_1B022392C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B0223BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id HMLog()
{
  if (HMLog_onceToken != -1)
  {
    HMLog_cold_1();
  }

  v1 = HMLog__HMLog;

  return v1;
}

id getAXAccessQueueClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getAXAccessQueueClass_softClass;
  v7 = getAXAccessQueueClass_softClass;
  if (!getAXAccessQueueClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getAXAccessQueueClass_block_invoke;
    v3[3] = &unk_1E7A93FF8;
    v3[4] = &v4;
    __getAXAccessQueueClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B0223F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getAXSettingsClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A941E8;
    v6 = 0;
    AccessibilityUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccessibilityUtilitiesLibraryCore_frameworkLibrary)
  {
    __getAXSettingsClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXSettingsClass_block_invoke_cold_1();
  }

  getAXSettingsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B02255CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __libAccessibilityLibraryCore_block_invoke_0(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libAccessibilityLibraryCore_frameworkLibrary_0 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class __getAXUIClientClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AccessibilityUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AccessibilityUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A94238;
    v6 = 0;
    AccessibilityUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AccessibilityUILibraryCore_frameworkLibrary)
  {
    __getAXUIClientClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("AXUIClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXUIClientClass_block_invoke_cold_1();
  }

  getAXUIClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AccessibilityUILibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AccessibilityUILibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __HMLog_block_invoke()
{
  HMLog__HMLog = os_log_create("com.apple.Accessibility", "AXHapticMusic");

  return MEMORY[0x1EEE66BB8]();
}

Class __getAXAccessQueueClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AXCoreUtilitiesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AXCoreUtilitiesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A94250;
    v6 = 0;
    AXCoreUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!AXCoreUtilitiesLibraryCore_frameworkLibrary)
  {
    __getAXAccessQueueClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("AXAccessQueue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getAXAccessQueueClass_block_invoke_cold_1();
  }

  getAXAccessQueueClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __AXCoreUtilitiesLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  AXCoreUtilitiesLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void MALegibleOutputDidOutputAttributedStrings(CFArrayRef theArray, uint64_t a2, CFDictionaryRef a3)
{
  if (!_Callback)
  {
    return;
  }

  v5 = theArray;
  if (!theArray)
  {
LABEL_9:
    v11 = CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
    v5 = v11;
    if (a3)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != CFAttributedStringGetTypeID())
      {
        goto LABEL_9;
      }
    }

    while (v7 != ++v8);
  }

  v11 = 0;
  if (a3)
  {
LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

LABEL_8:
  v12 = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  a3 = v12;
LABEL_11:
  _Callback(v5, a2, a3);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {

    CFRelease(v12);
  }
}

__CFArray *MADisplayFilterPrefCopyCategoriesForCurrentPlatform()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  valuePtr = 1;
  v1 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v1)
  {
    v2 = v1;
    CFArrayAppendValue(Mutable, v1);
    CFRelease(v2);
  }

  valuePtr = 2;
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(Mutable, v3);
    CFRelease(v4);
  }

  valuePtr = 3;
  v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(Mutable, v5);
    CFRelease(v6);
  }

  valuePtr = 4;
  v7 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v7)
  {
    v8 = v7;
    CFArrayAppendValue(Mutable, v7);
    CFRelease(v8);
  }

  valuePtr = 5;
  v9 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
  if (v9)
  {
    v10 = v9;
    CFArrayAppendValue(Mutable, v9);
    CFRelease(v10);
  }

  return Mutable;
}

CFStringRef MACreatePrefCategoryKey(uint64_t a1, CFTypeRef cf)
{
  if ((a1 - 1) <= 4)
  {
    return CFStringCreateWithFormat(0, 0, @"%@.%@", off_1E7A942B8[a1 - 1], cf, v2, v3);
  }

  return CFRetain(cf);
}

uint64_t MADisplayFilterPrefPossibleTypesForCategory(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return qword_1B022EE10[a1 - 1];
  }
}

uint64_t MADisplayFilterPrefGetType(uint64_t a1)
{
  valuePtr = 0;
  v2 = _copyPrefFilterType(a1);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberSInt64Type, &valuePtr);
    }

    CFRelease(v3);
    v5 = valuePtr;
  }

  else
  {
    v5 = 0;
  }

  v6 = a1 - 1;
  if ((a1 - 1) > 4)
  {
    v7 = 0;
  }

  else
  {
    v7 = qword_1B022EE10[v6];
  }

  v8 = 0;
  result = v7 & v5;
  do
  {
    if (((1 << v8) & ~result) == 0)
    {
      return 1 << v8;
    }

    ++v8;
  }

  while (v8 != 64);
  if (!result)
  {
    if (v6 > 4)
    {
      return 0;
    }

    else
    {
      return qword_1B022EE38[v6];
    }
  }

  return result;
}

__CFString *_copyPrefFilterType(uint64_t a1)
{
  result = MACreatePrefCategoryKey(a1, @"MADisplayFilterType");
  if (result)
  {
    v2 = result;
    v3 = MAPreferencesCopyNumber(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

void MADisplayFilterPrefSetType(uint64_t a1, uint64_t a2)
{
  valuePtr = a2;
  v3 = MACreatePrefCategoryKey(a1, @"MADisplayFilterType");
  if (v3)
  {
    v4 = v3;
    v5 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v5)
    {
      v6 = v5;
      v7 = _copyPrefFilterType(a1);
      _setPreferenceValueWithOldValue(v4, v6, v7, 1);
      if (v7)
      {
        CFRelease(v7);
      }

      CFRelease(v6);
    }

    CFRelease(v4);
  }
}

void _setPreferenceValueWithOldValue(const void *a1, void *a2, unint64_t a3, int a4)
{
  v7 = CFRetain(a1);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = CFGetTypeID(a2);
  if (v9 == CGColorGetTypeID())
  {
    MAPreferencesSetColor(v8, a2);
    if (!a4)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!_NotificationsSuspended)
    {
      MAPreferencesPostChangeNotificationIfNeeded(a3, a2, @"com.apple.mediaaccessibility.displayFilterSettingsChanged");
    }

    goto LABEL_9;
  }

  MAPreferencesSetValue(v8, a2);
  if (a4)
  {
    goto LABEL_7;
  }

LABEL_9:

  CFRelease(v8);
}

void MADisplayFilterPrefSetCategoryEnabled(uint64_t a1, int a2)
{
  v4 = MACreatePrefCategoryKey(a1, @"MADisplayFilterCategoryEnabled");
  if (v4)
  {
    v5 = v4;
    valuePtr = a2 != 0;
    v6 = CFNumberCreate(0, kCFNumberSInt64Type, &valuePtr);
    if (v6)
    {
      v7 = v6;
      v8 = _copyPrefCategoryEnabled(a1);
      _setPreferenceValueWithOldValue(v5, v7, v8, 1);
      if (v8)
      {
        CFRelease(v8);
      }

      CFRelease(v7);
    }

    CFRelease(v5);
  }
}

__CFString *_copyPrefCategoryEnabled(uint64_t a1)
{
  result = MACreatePrefCategoryKey(a1, @"MADisplayFilterCategoryEnabled");
  if (result)
  {
    v2 = result;
    v3 = MAPreferencesCopyNumber(result);
    CFRelease(v2);
    return v3;
  }

  return result;
}

BOOL MADisplayFilterPrefGetCategoryEnabled(uint64_t a1)
{
  v1 = _copyPrefCategoryEnabled(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFNumberGetTypeID())
  {
    valuePtr = 0;
    CFNumberGetValue(v2, kCFNumberSInt64Type, &valuePtr);
    v4 = valuePtr != 0;
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v2);
  return v4;
}

void _getIntensity(uint64_t (*a1)(void), double a2, double a3)
{
  v3 = a3;
  valuePtr = a3;
  v5 = a1();
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    if (v7 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v6, kCFNumberCGFloatType, &valuePtr);
      v3 = valuePtr;
    }
  }

  if (v3 <= 1.0)
  {
    v8 = v3;
  }

  else
  {
    v8 = 1.0;
  }

  if (v8 >= a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2;
  }

  if (v3 > 1.0 || v8 < a2)
  {
    valuePtr = v9;
  }

  if (v6)
  {
    CFRelease(v6);
  }
}

__CFString *_copyPrefRedColorCorrectionIntensity()
{
  result = CFRetain(@"MADisplayFilterRedColorCorrectionIntensity");
  if (result)
  {
    v1 = result;
    v2 = MAPreferencesCopyNumber(result);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void _setIntensity(const void *a1, uint64_t (*a2)(void), double a3)
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = a2();
      _setPreferenceValueWithOldValue(a1, v6, v7, 1);
      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      _setPreferenceValueWithOldValue(a1, v5, 0, 0);
    }

    CFRelease(v6);
  }
}

__CFString *_copyPrefGreenColorCorrectionIntensity()
{
  result = CFRetain(@"MADisplayFilterGreenColorCorrectionIntensity");
  if (result)
  {
    v1 = result;
    v2 = MAPreferencesCopyNumber(result);
    CFRelease(v1);
    return v2;
  }

  return result;
}

__CFString *_copyPrefBlueColorCorrectionIntensity()
{
  result = CFRetain(@"MADisplayFilterBlueColorCorrectionIntensity");
  if (result)
  {
    v1 = result;
    v2 = MAPreferencesCopyNumber(result);
    CFRelease(v1);
    return v2;
  }

  return result;
}

__CFString *_copyPrefGrayscaleCorrectionIntensity()
{
  result = CFRetain(@"MADisplayFilterGrayscaleCorrectionIntensity");
  if (result)
  {
    v1 = result;
    v2 = MAPreferencesCopyNumber(result);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void *_copyPrefBrightnessIntensity()
{
  v0 = CFRetain(@"MADisplayFilterBrightnessIntensity");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = MAPreferencesCopyNumber(v0);
  if (!v2)
  {
    valuePtr = 0x3F9EB851EB851EB8;
    v2 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  }

  CFRelease(v1);
  return v2;
}

void *_copyPrefWarmthIntensity()
{
  v0 = CFRetain(@"MADisplayFilterWarmthIntensity");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = MAPreferencesCopyNumber(v0);
  if (!v2)
  {
    valuePtr = 0x3FF0000000000000;
    v2 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  }

  CFRelease(v1);
  return v2;
}

void *_copyPrefReduceWhitePointIntensity()
{
  v0 = CFRetain(@"MADisplayFilterReduceWhitePointIntensity");
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = MAPreferencesCopyNumber(v0);
  if (!v2)
  {
    valuePtr = 0x3FE999999999999ALL;
    v2 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  }

  CFRelease(v1);
  return v2;
}

CFNumberRef _copyPrefSingleColorIntensity()
{
  v0 = CFRetain(@"MADisplayFilterSingleColorIntensity");
  if (v0)
  {
    v1 = v0;
    v2 = MAPreferencesCopyNumber(v0);
    CFRelease(v1);
    return v2;
  }

  else
  {
    valuePtr = 0;
    return CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  }
}

__CFString *_copyPrefSingleColorHue()
{
  result = CFRetain(@"MADisplayFilterSingleColorHue");
  if (result)
  {
    v1 = result;
    v2 = MAPreferencesCopyNumber(result);
    CFRelease(v1);
    return v2;
  }

  return result;
}

void MADisplayFilterPrefResetAll()
{
  v0 = CFRetain(@"MADisplayFilterType");
  if (v0)
  {
    v1 = v0;
    MAPreferencesSetValue(v0, 0);
    CFRelease(v1);
  }

  v2 = CFRetain(@"MADisplayFilterRedColorCorrectionIntensity");
  if (v2)
  {
    v3 = v2;
    MAPreferencesSetValue(v2, 0);
    CFRelease(v3);
  }

  v4 = CFRetain(@"MADisplayFilterGreenColorCorrectionIntensity");
  if (v4)
  {
    v5 = v4;
    MAPreferencesSetValue(v4, 0);
    CFRelease(v5);
  }

  v6 = CFRetain(@"MADisplayFilterBlueColorCorrectionIntensity");
  if (v6)
  {
    v7 = v6;
    MAPreferencesSetValue(v6, 0);
    CFRelease(v7);
  }

  v8 = CFRetain(@"MADisplayFilterSingleColorHue");
  if (v8)
  {
    v9 = v8;
    MAPreferencesSetValue(v8, 0);
    CFRelease(v9);
  }

  v10 = MADisplayFilterPrefCopyCategoriesForCurrentPlatform();
  if (v10)
  {
    v11 = v10;
    Count = CFArrayGetCount(v10);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
        v16 = MACreatePrefCategoryKey(valuePtr, @"MADisplayFilterCategoryEnabled");
        if (v16)
        {
          v17 = v16;
          MAPreferencesSetValue(v16, 0);
          CFRelease(v17);
        }

        v18 = MACreatePrefCategoryKey(valuePtr, @"MADisplayFilterType");
        if (v18)
        {
          v19 = v18;
          MAPreferencesSetValue(v18, 0);
          CFRelease(v19);
        }
      }
    }

    CFRelease(v11);
  }

  MAPreferencesPostChangeNotification(@"com.apple.mediaaccessibility.displayFilterSettingsChanged");
}

void MACaptionAppearancePrefSaveState()
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  if (_SavedState)
  {
    CFRelease(_SavedState);
    _SavedState = 0;
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v1 = MAPreferencesCopyProfileIDs(@"MACaptionProfile-");
  if (v1)
  {
    v2 = v1;
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, i);
        if (MACaptionAppearancePrefIsProfileEditable(ValueAtIndex))
        {
          CFArrayAppendValue(Mutable, ValueAtIndex);
        }
      }
    }

    if (CFArrayGetCount(Mutable) >= 1)
    {
      _SavedState = MAPreferencesCopyMultipleProfiles(Mutable);
    }

    CFRelease(v2);
  }

  CFRelease(Mutable);
}

void MACaptionAppearancePrefRestoreState()
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  if (_SavedState)
  {
    MAPreferencesSetMultipleProfiles(_SavedState);
    MAPreferencesPostChangeNotification(@"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
    CFRelease(_SavedState);
    _SavedState = 0;
  }
}

void MACaptionAppearancePrefSetActiveProfileID(CFStringRef theString)
{
  if (!theString || !CFStringGetLength(theString))
  {
    MAPreferencesSetValue(@"MACaptionActiveProfile", theString);
LABEL_11:

    MAPreferencesPostChangeNotification(@"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
    return;
  }

  if (!CFStringHasPrefix(theString, @"MACaptionProfile-"))
  {
    return;
  }

  v2 = MAPreferencesCopyProfileIDs(@"MACaptionProfile-");
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v7.length = CFArrayGetCount(v2);
  v7.location = 0;
  if (CFArrayContainsValue(v3, v7, theString))
  {
    v4 = MACaptionAppearancePrefCopyActiveProfileID();
    if (v4)
    {
      v5 = v4;
      if (!CFEqual(v4, theString))
      {
        MAPreferencesSetValue(@"MACaptionActiveProfile", theString);
      }

      CFRelease(v5);
    }

    else
    {
      MAPreferencesSetValue(@"MACaptionActiveProfile", theString);
    }

    CFRelease(v3);
    goto LABEL_11;
  }

  CFRelease(v3);
}

void MACaptionAppearancePrefSetSystemLanguageOverride(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (_SystemLanguageOverride)
  {
    CFRelease(_SystemLanguageOverride);
  }

  _SystemLanguageOverride = cf;
}

void MACaptionAppearancePrefSetTempProfileID(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = cf;
}

const void *MACaptionAppearancePrefCopyProfileOrder(const __CFString *a1)
{
  TypeID = CFNumberGetTypeID();

  return MAPreferencesCopyProfileValueWithExpectedType(a1, @"MACaptionProfileOrder", TypeID);
}

void MACaptionAppearancePrefSetProfileOrder(__CFString *a1, const void *a2)
{
  if (MACaptionAppearancePrefIsProfileEditable(a1))
  {

    MAPreferencesSetProfileValue(a1, @"MACaptionProfileOrder", a2);
  }
}

void MACaptionAppearancePrefSetProfileName(__CFString *a1, const void *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  if (MACaptionAppearancePrefIsProfileEditable(a1))
  {

    MAPreferencesSetProfileValue(a1, @"MACaptionProfileName", a2);
  }
}

CFStringRef MACaptionAppearancePrefCreateNewProfileID()
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  v0 = CFUUIDCreate(0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFUUIDCreateString(0, v0);
  if (v2)
  {
    v3 = v2;
    v4 = CFStringCreateWithFormat(0, 0, @"%@-%@", @"MACaptionProfile", v2);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v1);
  return v4;
}

__CFString *MACaptionAppearancePrefCreateNewProfileFromProfile(__CFString *a1)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  NewProfileID = MACaptionAppearancePrefCreateNewProfileID();
  _copyProfileToProfile(a1, NewProfileID, 0);
  return NewProfileID;
}

void _copyProfileToProfile(__CFString *a1, __CFString *a2, char a3)
{
  _NotificationsSuspended_0 = 1;
  _copySetting(a1, MACaptionAppearancePrefCopyTextEdgeStyle, a2, MACaptionAppearancePrefSetTextEdgeStyle, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyVideoOverrideTextEdgeStyle, a2, MACaptionAppearancePrefSetVideoOverrideTextEdgeStyle, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyForegroundColor, a2, MACaptionAppearancePrefSetForegroundColor, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyVideoOverrideForegroundColor, a2, MACaptionAppearancePrefSetVideoOverrideForegroundColor, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyBackgroundColor, a2, MACaptionAppearancePrefSetBackgroundColor, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyVideoOverrideBackgroundColor, a2, MACaptionAppearancePrefSetVideoOverrideBackgroundColor, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyWindowColor, a2, MACaptionAppearancePrefSetWindowColor, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyVideoOverrideWindowColor, a2, MACaptionAppearancePrefSetVideoOverrideWindowColor, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyForegroundOpacity, a2, MACaptionAppearancePrefSetForegroundOpacity, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyVideoOverrideForegroundOpacity, a2, MACaptionAppearancePrefSetVideoOverrideForegroundOpacity, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyBackgroundOpacity, a2, MACaptionAppearancePrefSetBackgroundOpacity, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyVideoOverrideBackgroundOpacity, a2, MACaptionAppearancePrefSetVideoOverrideBackgroundOpacity, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyWindowOpacity, a2, MACaptionAppearancePrefSetWindowOpacity, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyVideoOverrideWindowOpacity, a2, MACaptionAppearancePrefSetVideoOverrideWindowOpacity, a3);
  _copySetting(a1, _MACaptionAppearancePrefCopyRelativeCharSize, a2, _MACaptionAppearancePrefSetRelativeCharSize, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyRelativeCharacterSize, a2, MACaptionAppearancePrefSetRelativeCharacterSize, a3);
  _copySetting(a1, MACaptionAppearancePrefCopyVideoOverrideRelativeCharSize, a2, MACaptionAppearancePrefSetVideoOverrideRelativeCharSize, a3);
  _copyFontSetting(a1, MACaptionAppearancePrefCopyFontDescriptorForStyle, a2, MACaptionAppearancePrefSetFontDescriptorForStyle, a3);
  _copyFontSetting(a1, MACaptionAppearancePrefCopyFontSpecifiedByUserForStyle, a2, MACaptionAppearancePrefSetFontSpecifiedByUserForStyle, a3);
  for (i = 0; i != 8; ++i)
  {
    if (a1)
    {
      v7 = MACaptionAppearancePrefCopyVideoOverrideFontForStyle(a1, i);
      if (a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0;
      if (a3)
      {
        goto LABEL_8;
      }
    }

    if (!v7)
    {
      v7 = MACaptionAppearancePrefCopyVideoOverrideFontForStyle(@"MACaptionSystemDefaultProfile", i);
    }

LABEL_8:
    MACaptionAppearancePrefSetVideoOverrideFontForStyle(a2, i, v7);
    if (v7)
    {
      CFRelease(v7);
    }
  }

  _copySetting(a1, MACaptionAppearancePrefCopyWindowRoundedCornerRadius, a2, MACaptionAppearancePrefSetWindowRoundedCornerRadius, a3);
  for (j = 0; j != 8; ++j)
  {
    v9 = -1;
    if (a1 && MACaptionAppearancePrefIsSystemFont(a1, j, &v9))
    {
      MACaptionAppearancePrefSetIsSystemFont(a2, 1, j, v9);
    }
  }

  _NotificationsSuspended_0 = 0;
  MAPreferencesPostChangeNotification(@"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
}

void MACaptionAppearancePrefRemoveProfile(__CFString *a1)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  if (MACaptionAppearancePrefIsProfileEditable(a1))
  {

    MAPreferencesRemoveProfile(a1);
  }
}

void MACaptionAppearancePrefResetProfile(__CFString *a1)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _copyProfileToProfile(0, a1, 1);
}

void MACaptionAppearancePrefResetAll()
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  MACaptionAppearancePrefResetProfile(0);
  v0 = MAPreferencesCopyProfileIDs(@"MACaptionProfile-");
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    if (Count >= 1)
    {
      v3 = Count;
      for (i = 0; i != v3; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        if (MACaptionAppearancePrefIsProfileEditable(ValueAtIndex))
        {
          MAPreferencesRemoveProfile(ValueAtIndex);
        }
      }
    }

    CFRelease(v1);
  }

  MAPreferencesSetValue(@"MACaptionShowCaptions", 0);
  MACaptionAppearancePrefSetDisplayType(0);
  MACaptionAppearancePrefSetPreferAccessibleCaptions(0);

  MACaptionAppearancePrefSetPreferredLanguages(0);
}

void MACaptionAppearancePrefSetDisplayType(const __CFNumber *a1)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  v2 = MAPreferencesCopyNumber(@"MACaptionDisplayType");
  if (a1)
  {
    valuePtr = 0;
    if (CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr) && valuePtr <= 2)
    {
      ++valuePtr;
      a1 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    }

    else
    {
      a1 = 0;
    }
  }

  MAPreferencesSetValue(@"MACaptionDisplayType", a1);
  if ((_NotificationsSuspended_0 & 1) == 0)
  {
    MAPreferencesPostChangeNotificationIfNeeded(v2, a1, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if (a1)
  {
    CFRelease(a1);
  }
}

void MACaptionAppearancePrefSetPreferAccessibleCaptions(const void *a1)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  v2 = MAPreferencesCopyBoolean(@"MACaptionPreferAccessibleCaptions");
  MAPreferencesSetValue(@"MACaptionPreferAccessibleCaptions", a1);
  if ((_NotificationsSuspended_0 & 1) == 0)
  {
    MAPreferencesPostChangeNotificationIfNeeded(v2, a1, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void MACaptionAppearancePrefSetPreferredLanguages(CFArrayRef theArray)
{
  if (theArray)
  {
    MutableCopy = CFArrayCreateMutableCopy(0, 0, theArray);
    if (MutableCopy)
    {
      Copy = CFArrayCreateCopy(0, MutableCopy);
      CFArrayRemoveAllValues(MutableCopy);
      Count = CFArrayGetCount(Copy);
      if (Count >= 1)
      {
        v4 = Count;
        for (i = 0; i != v4; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Copy, i);
          if (ValueAtIndex)
          {
            CanonicalLanguageIdentifierFromString = MAUtilitiesCreateCanonicalLanguageIdentifierFromString(ValueAtIndex);
            if (CanonicalLanguageIdentifierFromString)
            {
              v8 = CanonicalLanguageIdentifierFromString;
              if (CFStringGetLength(CanonicalLanguageIdentifierFromString) >= 1)
              {
                CFArrayAppendValue(MutableCopy, v8);
              }

              CFRelease(v8);
            }
          }
        }
      }

      CFRelease(Copy);
      v9 = CFArrayCreateCopy(0, MutableCopy);
      v10 = CFArrayGetCount(v9);
      CFArrayRemoveAllValues(MutableCopy);
      if (v10 >= 1)
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = CFArrayGetValueAtIndex(v9, j);
          v18.length = CFArrayGetCount(MutableCopy);
          v18.location = 0;
          if (!CFArrayContainsValue(MutableCopy, v18, v12))
          {
            CFArrayAppendValue(MutableCopy, v12);
          }
        }
      }

      CFRelease(v9);
      v13 = CFArrayGetCount(MutableCopy);
      if (v13 >= 21)
      {
        v14 = v13 + 1;
        do
        {
          CFArrayRemoveValueAtIndex(MutableCopy, v14 - 2);
          --v14;
        }

        while (v14 > 0x15);
      }
    }
  }

  else
  {
    MutableCopy = 0;
  }

  TypeID = CFArrayGetTypeID();
  v16 = MAPreferencesCopyProfileValueWithExpectedType(0, @"MACaptionPreferredLanguages", TypeID);
  MAPreferencesSetProfileValue(0, @"MACaptionPreferredLanguages", MutableCopy);
  if ((_NotificationsSuspended_0 & 1) == 0)
  {
    MAPreferencesPostChangeNotificationIfNeeded(v16, MutableCopy, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v16)
  {

    CFRelease(v16);
  }
}

uint64_t MACaptionAppearancePrefCopyShowCaptionsWhenAvailable()
{
  v0 = *MEMORY[0x1E695E4C0];
  v1 = MAPreferencesCopyNumber(@"MACaptionDisplayType");
  if (v1)
  {
    v2 = v1;
    valuePtr = 0;
    Value = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
    v4 = valuePtr != 3 || Value == 0;
    v5 = *MEMORY[0x1E695E4D0];
    if (!v4)
    {
      v0 = *MEMORY[0x1E695E4D0];
    }

    CFRelease(v2);
  }

  return v0;
}

void MACaptionAppearancePrefSetShowCaptionsWhenAvailable(const __CFBoolean *a1)
{
  if (a1)
  {
    valuePtr = 0;
    if (CFBooleanGetValue(a1))
    {
      valuePtr = 2;
    }

    v2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    if (v2)
    {
      v3 = v2;
      MACaptionAppearancePrefSetDisplayType(v2);
      CFRelease(v3);
    }
  }

  else
  {

    MACaptionAppearancePrefSetDisplayType(0);
  }
}

void MACaptionAppearancePrefSetForegroundColor(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionForegroundColor", a2, MACaptionAppearancePrefCopyForegroundColor);
}

void _setPreferenceValue(__CFString *a1, __CFString *a2, CGColor *a3, uint64_t (*a4)(__CFString *))
{
  if (MACaptionAppearancePrefIsProfileEditable(a1))
  {
    v8 = a4(a1);
    if (a3 && (v9 = CFGetTypeID(a3), v9 == CGColorGetTypeID()))
    {
      MAPreferencesSetProfileColor(a1, a2, a3);
    }

    else
    {
      MAPreferencesSetProfileValue(a1, a2, a3);
    }

    if ((_NotificationsSuspended_0 & 1) == 0)
    {
      MAPreferencesPostChangeNotificationIfNeeded(v8, a3, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
    }

    if (v8)
    {

      CFRelease(v8);
    }
  }
}

void MACaptionAppearancePrefSetBackgroundColor(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionBackgroundColor", a2, MACaptionAppearancePrefCopyBackgroundColor);
}

void MACaptionAppearancePrefSetWindowColor(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionWindowColor", a2, MACaptionAppearancePrefCopyWindowColor);
}

void MACaptionAppearancePrefSetForegroundOpacity(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionForegroundOpacity", a2, MACaptionAppearancePrefCopyForegroundOpacity);
}

void MACaptionAppearancePrefSetBackgroundOpacity(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionBackgroundOpacity", a2, MACaptionAppearancePrefCopyBackgroundOpacity);
}

void MACaptionAppearancePrefSetWindowOpacity(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionWindowOpacity", a2, MACaptionAppearancePrefCopyWindowOpacity);
}

BOOL MACaptionAppearancePrefIsSystemFont(const __CFString *a1, unint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    *a3 = -1;
  }

  v5 = _keyForFontStyle(a2);
  TypeID = CFStringGetTypeID();
  v7 = MAPreferencesCopyProfileValueWithExpectedType(a1, v5, TypeID);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  SystemFontType = MACaptionAppearancePrefGetSystemFontType(v7);
  v10 = SystemFontType != -1;
  if (a3)
  {
    *a3 = SystemFontType;
  }

  CFRelease(v8);
  return v10;
}

void MACaptionAppearancePrefSetIsSystemFont(__CFString *a1, int a2, unint64_t a3, unint64_t a4)
{
  v8 = _keyForFontStyle(a3);
  if (a2)
  {
    v9 = @".AXAppleSystemFont";
    if (a4 == 2)
    {
      v9 = @".AXAppleSystemFontMono";
    }

    if (a4 == 1)
    {
      v10 = @".AXAppleSystemFontBold";
    }

    else
    {
      v10 = v9;
    }
  }

  else
  {
    FallbackPSFontNameForSystemFontType = MAUtilitiesGetFallbackPSFontNameForSystemFontType(a4);
    if (FallbackPSFontNameForSystemFontType)
    {
      v10 = FallbackPSFontNameForSystemFontType;
    }

    else
    {
      v10 = @"Helvetica";
    }
  }

  TypeID = CFStringGetTypeID();
  v13 = MAPreferencesCopyProfileValueWithExpectedType(a1, v8, TypeID);
  MAPreferencesSetProfileValue(a1, v8, v10);
  if (v10 != v13 && (!v13 || !CFEqual(v10, v13)))
  {
    MACaptionAppearancePrefSetFontSpecifiedByUserForStyle(a1, *MEMORY[0x1E695E4D0], a3);
  }

  if ((_NotificationsSuspended_0 & 1) == 0)
  {
    MAPreferencesPostChangeNotificationIfNeeded(v13, v10, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
  }

  if (v13)
  {

    CFRelease(v13);
  }
}

void MACaptionAppearancePrefSetFontSpecifiedByUserForStyle(__CFString *a1, const void *a2, unint64_t a3)
{
  if (MACaptionAppearancePrefIsProfileEditable(a1))
  {
    v6 = _keyForFontStyle(a3);
    if (v6)
    {
      v7 = v6;
      v8 = *MEMORY[0x1E695E480];
      Length = CFStringGetLength(@"MACaptionFontSpecifiedByUser");
      MutableCopy = CFStringCreateMutableCopy(v8, Length, @"MACaptionFontSpecifiedByUser");
      CFStringAppend(MutableCopy, v7);
      v11 = MACaptionAppearancePrefCopyFontSpecifiedByUserForStyle(a1, a3);
      MAPreferencesSetProfileValue(a1, MutableCopy, a2);
      if (v11)
      {
        CFRelease(v11);
      }

      if (MutableCopy)
      {

        CFRelease(MutableCopy);
      }
    }
  }
}

BOOL MACaptionAppearancePrefIsFontSystemForStyle(const __CFString *a1, unint64_t a2, BOOL *a3)
{
  v5 = 0;
  result = MACaptionAppearancePrefIsSystemFont(a1, a2, &v5);
  if (a3)
  {
    *a3 = v5 == 2;
  }

  return result;
}

const __CFString *MACaptionAppearancePrefCopyFontForStyle(const __CFString *a1, unint64_t a2)
{
  v3 = _keyForFontStyle(a2);

  return MAPreferencesCopyProfileFont(a1, v3);
}

void MACaptionAppearancePrefSetFontForStyle(__CFString *a1, CGFont *a2, unint64_t a3)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  if (MACaptionAppearancePrefIsProfileEditable(a1))
  {
    v6 = _keyForFontStyle(a3);
    v7 = MAPreferencesCopyProfileFont(a1, v6);
    MAPreferencesSetProfileFont(a1, v6, a2);
    if (v7 != a2 && (!a2 || !v7 || !CFEqual(a2, v7)))
    {
      MACaptionAppearancePrefSetFontSpecifiedByUserForStyle(a1, *MEMORY[0x1E695E4D0], a3);
    }

    if ((_NotificationsSuspended_0 & 1) == 0)
    {
      MAPreferencesPostChangeNotificationIfNeeded(v7, a2, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
    }

    if (v7)
    {

      CFRelease(v7);
    }
  }
}

void MACaptionAppearancePrefSetFontDescriptorForStyle(__CFString *a1, const __CTFontDescriptor *a2, unint64_t a3)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  if (MACaptionAppearancePrefIsProfileEditable(a1))
  {
    v6 = _keyForFontStyle(a3);
    v7 = MAPreferencesCopyProfileFontDescriptor(a1, v6);
    MAPreferencesSetProfileFontDescriptor(a1, v6, a2);
    if (v7 != a2 && !MAUtilitiesFontsUseSamePostScriptName(a2, v7))
    {
      MACaptionAppearancePrefSetFontSpecifiedByUserForStyle(a1, *MEMORY[0x1E695E4D0], a3);
    }

    if ((_NotificationsSuspended_0 & 1) == 0)
    {
      MAPreferencesPostChangeNotificationIfNeeded(v7, a2, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
    }

    if (v7)
    {

      CFRelease(v7);
    }
  }
}

void MACaptionAppearancePrefSetRelativeCharSize(__CFString *a1, uint64_t a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;
  valuePtr = a2;
  v4 = CFNumberCreate(0, kCFNumberCFIndexType, &valuePtr);
  _MACaptionAppearancePrefSetRelativeCharSize(a1, v4);
}

void _MACaptionAppearancePrefSetRelativeCharSize(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionCharScaleEnum", a2, _MACaptionAppearancePrefCopyRelativeCharSize);
}

void MACaptionAppearancePrefSetRelativeCharacterSize(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionCharScale", a2, MACaptionAppearancePrefCopyRelativeCharacterSize);
}

void MACaptionAppearancePrefSetWindowRoundedCornerRadius(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionWindowRoundedCorners", a2, MACaptionAppearancePrefCopyWindowRoundedCornerRadius);
}

void MACaptionAppearancePrefSetUsesAppleLookAndFeel(__CFString *a1, CGColor *a2)
{
  if (_MACaptionAppearanceTempProfileID)
  {
    CFRelease(_MACaptionAppearanceTempProfileID);
  }

  _MACaptionAppearanceTempProfileID = 0;

  _setPreferenceValue(a1, @"MACaptionAppleLookAndFeel", a2, MACaptionAppearancePrefCopyUsesAppleLookAndFeel);
}

void MACaptionAppearancePrefSetTextEdgeStyle(__CFString *a1, const __CFNumber *a2)
{
  if (MACaptionAppearancePrefIsProfileEditable(a1))
  {
    v4 = MACaptionAppearancePrefCopyTextEdgeStyle(a1);
    if (a2)
    {
      valuePtr = 0;
      if (CFNumberGetValue(a2, kCFNumberSInt32Type, &valuePtr) && (valuePtr - 1) <= 4)
      {
        a2 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      }

      else
      {
        a2 = 0;
      }
    }

    MAPreferencesSetProfileValue(a1, @"MACaptionTextEdgeStyle", a2);
    if ((_NotificationsSuspended_0 & 1) == 0)
    {
      MAPreferencesPostChangeNotificationIfNeeded(v4, a2, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
    }

    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      CFRelease(a2);
    }
  }
}

const void *MACaptionAppearancePrefCopyFontSpecifiedByUserForStyle(const __CFString *a1, unint64_t a2)
{
  v3 = _keyForFontStyle(a2);
  if (!v3)
  {
    return *MEMORY[0x1E695E4C0];
  }

  v4 = v3;
  v5 = *MEMORY[0x1E695E480];
  Length = CFStringGetLength(@"MACaptionFontSpecifiedByUser");
  MutableCopy = CFStringCreateMutableCopy(v5, Length, @"MACaptionFontSpecifiedByUser");
  CFStringAppend(MutableCopy, v4);
  v8 = MAPreferencesCopyProfileBoolean(a1, MutableCopy);
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v8;
}

void MACaptionAppearancePrefSetVideoOverrideFontForStyle(__CFString *a1, unint64_t a2, const void *a3)
{
  if (MACaptionAppearancePrefIsProfileEditable(a1))
  {
    v6 = _keyForFontStyle(a2);
    if (v6)
    {
      v7 = v6;
      v8 = *MEMORY[0x1E695E480];
      Length = CFStringGetLength(@"MACaptionVideOverrideFont");
      MutableCopy = CFStringCreateMutableCopy(v8, Length, @"MACaptionVideOverrideFont");
      CFStringAppend(MutableCopy, v7);
      v11 = MACaptionAppearancePrefCopyVideoOverrideFontForStyle(a1, a2);
      MAPreferencesSetProfileValue(a1, MutableCopy, a3);
      if ((_NotificationsSuspended_0 & 1) == 0)
      {
        MAPreferencesPostChangeNotificationIfNeeded(v11, a3, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged");
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (MutableCopy)
      {

        CFRelease(MutableCopy);
      }
    }
  }
}

const void *MAXCaptionAppearancePrefCopyProfileOrder(const __CFString *a1)
{
  TypeID = CFNumberGetTypeID();

  return MAPreferencesCopyProfileValueWithExpectedType(a1, @"MACaptionProfileOrder", TypeID);
}

const __CFString *MAXCaptionAppearancePrefCopyFontForStyle(const __CFString *a1, unint64_t a2)
{
  v3 = _keyForFontStyle(a2);

  return MAPreferencesCopyProfileFont(a1, v3);
}

void MACaptionAppearanceMacBuddySettingsToTransfer(__CFDictionary *a1)
{
  v2 = MAPreferencesCopyBoolean(@"MACaptionPreferAccessibleCaptions");
  if (v2)
  {
    v3 = v2;
    if (CFBooleanGetValue(v2))
    {
      CFDictionarySetValue(a1, @"MACaptionPreferAccessibleCaptions", *MEMORY[0x1E695E4D0]);
      valuePtr = 3;
      v4 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      if (v4)
      {
        v5 = v4;
        CFDictionarySetValue(a1, @"MACaptionDisplayType", v4);
        CFRelease(v5);
      }
    }

    CFRelease(v3);
  }
}

void ___languagesUsingAlternateDefaults_block_invoke()
{
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  CFSetAddValue(Mutable, @"ja");
  _languagesUsingAlternateDefaults__alternateDefaultLanguages = Mutable;
}

void _copySetting(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t, const void *), char a5)
{
  if (a1)
  {
    v9 = a2();
    if (a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
    if (a5)
    {
      goto LABEL_7;
    }
  }

  if (!v9)
  {
    v9 = (a2)(@"MACaptionSystemDefaultProfile");
  }

LABEL_7:
  a4(a3, v9);
  if (v9)
  {

    CFRelease(v9);
  }
}

void _copyFontSetting(__CFString *a1, uint64_t (*a2)(__CFString *, uint64_t), uint64_t a3, void (*a4)(uint64_t, const void *, uint64_t), char a5)
{
  for (i = 0; i != 8; ++i)
  {
    if (a1)
    {
      v11 = a2(a1, i);
      if (a5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
      if (a5)
      {
        goto LABEL_8;
      }
    }

    if (!v11)
    {
      v11 = a2(@"MACaptionSystemDefaultProfile", i);
    }

LABEL_8:
    a4(a3, v11, i);
    if (v11)
    {
      CFRelease(v11);
    }
  }
}

void sub_1B022921C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

Class __getPSEVideoProcessorClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!PhotosensitivityProcessingLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __PhotosensitivityProcessingLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7A943A0;
    v6 = 0;
    PhotosensitivityProcessingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PhotosensitivityProcessingLibraryCore_frameworkLibrary)
  {
    __getPSEVideoProcessorClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("PSEVideoProcessor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPSEVideoProcessorClass_block_invoke_cold_1();
  }

  getPSEVideoProcessorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __PhotosensitivityProcessingLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  PhotosensitivityProcessingLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t MADisplayFilterGetTypeID()
{
  if ((__MADisplayFilterInitialized & 1) == 0)
  {
    __MADisplayFilterInitialize();
  }

  return __kMADisplayFilterTypeID;
}

uint64_t __MADisplayFilterInitialize(void)
{
  pthread_mutex_lock(&sInitLock);
  if ((__MADisplayFilterInitialized & 1) == 0)
  {
    __kMADisplayFilterTypeID = _CFRuntimeRegisterClass();
    __MADisplayFilterInitialized = 1;
  }

  return pthread_mutex_unlock(&sInitLock);
}

double MADisplayFilterGetPostOffsets(uint64_t a1)
{
  result = *(a1 + 40);
  v2 = *(a1 + 72);
  v3 = *(a1 + 104);
  return result;
}

double *MADisplayFilterSetPostOffsets(double *result, double a2, double a3, double a4)
{
  if (result)
  {
    result[5] = a2;
    result[9] = a3;
    result[13] = a4;
  }

  return result;
}

uint64_t MADisplayFilterSetGain(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

uint64_t MADisplayFilterSetReduceWhitePoint(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 152) = a2;
  }

  return result;
}

__n128 MADisplayFilterGetMatrix@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 96);
  *a2 = *(a1 + 16);
  *(a2 + 16) = v2;
  *(a2 + 24) = *(a1 + 48);
  *(a2 + 40) = v3;
  result = *(a1 + 80);
  *(a2 + 48) = result;
  *(a2 + 64) = v4;
  return result;
}

double MADisplayFilterSetMatrix(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 16) = *a2;
    *(a1 + 32) = *(a2 + 16);
    *(a1 + 48) = *(a2 + 24);
    *(a1 + 64) = *(a2 + 40);
    *(a1 + 80) = *(a2 + 48);
    result = *(a2 + 64);
    *(a1 + 96) = result;
  }

  return result;
}

uint64_t MADisplayFilterCopySystemFilter(int a1, int a2, int a3)
{
  v6 = MADisplayFilterPrefCopyCategoriesForCurrentPlatform();
  if (!v6)
  {
    goto LABEL_23;
  }

  v7 = v6;
  Count = CFArrayGetCount(v6);
  if (Count < 1)
  {
    CFRelease(v7);
LABEL_23:
    v35 = 0;
    *&v36 = 0;
    *&v38 = 0;
    v34 = 0x3FF0000000000000uLL;
    *(&v36 + 1) = 0x3FF0000000000000;
    v37 = 0uLL;
    *(&v38 + 1) = 0x3FF0000000000000;
    return _MADisplayFilterCreateWithPostOffset(&v34, 0.0, 0.0, 0.0);
  }

  v9 = Count;
  v10 = 0;
  for (i = 0; i != v9; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
    v34.i64[0] = 0;
    CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &v34);
    if (MADisplayFilterPrefGetCategoryEnabled(v34.i64[0]))
    {
      v10 |= MADisplayFilterPrefGetType(v34.i64[0]);
    }
  }

  CFRelease(v7);
  if (!v10)
  {
    goto LABEL_23;
  }

  v35 = 0;
  *&v36 = 0;
  *&v38 = 0;
  v34 = 0x3FF0000000000000uLL;
  *(&v36 + 1) = 0x3FF0000000000000;
  v37 = 0uLL;
  *(&v38 + 1) = 0x3FF0000000000000;
  v13 = _MADisplayFilterCreateWithPostOffset(&v34, 0.0, 0.0, 0.0);
  v14 = v13;
  if (a1 && (v10 & 0x20) != 0)
  {
    if (v13)
    {
      CFRelease(v13);
    }

    v34 = vdupq_n_s64(0xBFD51EB851EB851FLL);
    v35 = 0xBFD51EB851EB851FLL;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = _MADisplayFilterCreateWithPostOffset(&v34, 0.0, 0.0, 0.0);
    *(v14 + 40) = 0x3FF0000000000000;
  }

  if ((v10 & 0x10) != 0)
  {
    MADisplayFilterPrefGetSingleColorHue();
    v16 = v15;
    MADisplayFilterPrefGetSingleColorIntensity();
    SingleColor = MADisplayFilterCreateSingleColor(v16, v18, v19, v17);
    MADisplayFilterCombine(v14, SingleColor);
    if (SingleColor)
    {
      CFRelease(SingleColor);
    }
  }

  if ((v10 & 2) != 0)
  {
    MADisplayFilterPrefGetRedColorCorrectionIntensity();
    RedColorCorrection = MADisplayFilterCreateRedColorCorrection(v24);
    goto LABEL_28;
  }

  if ((v10 & 4) != 0)
  {
    MADisplayFilterPrefGetGreenColorCorrectionIntensity();
    RedColorCorrection = MADisplayFilterCreateGreenColorCorrection(v25);
    goto LABEL_28;
  }

  if ((v10 & 8) != 0)
  {
    MADisplayFilterPrefGetBlueColorCorrectionIntensity();
    RedColorCorrection = MADisplayFilterCreateBlueColorCorrection(v26);
LABEL_28:
    v27 = RedColorCorrection;
    MADisplayFilterCombine(v14, RedColorCorrection);
    if (v27)
    {
      CFRelease(v27);
    }

    goto LABEL_30;
  }

  if (a2 && (v10 & 1) != 0)
  {
    MADisplayFilterPrefGetGrayscaleCorrectionIntensity();
    RedColorCorrection = MADisplayFilterCreateGrayscale(v21);
    goto LABEL_28;
  }

LABEL_30:
  if ((v10 & 0x100) != 0)
  {
    MADisplayFilterPrefGetWarmthIntensity();
    MADisplayFilterCreateBrightnessAdjust(a3, v28);
    v30 = v29;
    MADisplayFilterCombine(v14, v29);
    if (v30)
    {
      CFRelease(v30);
    }
  }

  if ((v10 & 0x40) != 0)
  {
    MADisplayFilterPrefGetBrightnessIntensity();
    MADisplayFilterCreateBrightnessAdjust(a3, v31);
    v33 = v32;
    MADisplayFilterCombine(v14, v32);
    if (v33)
    {
      CFRelease(v33);
    }
  }

  return v14;
}

uint64_t MADisplayFilterCreateIdentity()
{
  v1[0] = 0x3FF0000000000000;
  memset(&v1[1], 0, 24);
  v1[4] = 0x3FF0000000000000;
  memset(&v1[5], 0, 24);
  v1[8] = 0x3FF0000000000000;
  return _MADisplayFilterCreateWithPostOffset(v1, 0.0, 0.0, 0.0);
}

uint64_t MADisplayFilterCreateRedNightMode()
{
  v1 = vdupq_n_s64(0xBFD51EB851EB851FLL);
  v2 = 0xBFD51EB851EB851FLL;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  result = _MADisplayFilterCreateWithPostOffset(&v1, 0.0, 0.0, 0.0);
  *(result + 40) = 0x3FF0000000000000;
  return result;
}

uint64_t MADisplayFilterCreateSingleColor(double a1, double a2, double a3, double a4)
{
  v6 = MAUtilitiesDoubleAlmostEqual(1.0, 0.0);
  v7 = 1.0;
  v8 = 1.0;
  v9 = 1.0;
  if (!v6)
  {
    v12 = a1 * 359.9 / 60.0;
    v13 = vcvtmd_s64_f64(v12);
    v14 = v12 - v13;
    v9 = 1.0;
    v15 = 1.0 - v14;
    v16 = 1.0 - (1.0 - v14);
    if (v13 <= 1)
    {
      if (!v13)
      {
        v7 = 0.0;
        v8 = v16;
        goto LABEL_2;
      }

      if (v13 == 1)
      {
        v7 = 0.0;
        v9 = v15;
        goto LABEL_2;
      }
    }

    else
    {
      switch(v13)
      {
        case 2:
          v9 = 0.0;
          v7 = 1.0 - (1.0 - v14);
          goto LABEL_2;
        case 3:
          v9 = 0.0;
          v7 = 1.0;
          v8 = v15;
          goto LABEL_2;
        case 4:
          v8 = 0.0;
          v7 = 1.0;
          v9 = v16;
          goto LABEL_2;
      }
    }

    v8 = 0.0;
    v7 = 1.0 - v14;
  }

LABEL_2:
  v17 = 1.0 - a4 + v9 * a4;
  v18 = a4 * 0.0 + (1.0 - a4) * 0.0;
  v19 = v18;
  v20 = v18;
  v21 = 1.0 - a4 + v8 * a4;
  v22 = v18;
  v23 = v18;
  v24 = v18;
  v25 = 1.0 - a4 + v7 * a4;
  v10 = _MADisplayFilterCreateWithPostOffset(&v17, 0.0, 0.0, 0.0);
  MADisplayFilterNormalize(v10);
  return v10;
}

double *MADisplayFilterCombine(double *result, double *a2)
{
  if (result && a2)
  {
    v2 = result[2];
    v3 = result[3];
    v5 = result[4];
    v4 = result[5];
    v6 = result[6];
    v7 = result[7];
    v9 = result[8];
    v8 = result[9];
    v10 = result[10];
    v11 = result[11];
    v13 = result[14];
    v12 = result[15];
    v14 = a2[2];
    v15 = a2[3];
    v16 = a2[4];
    v17 = a2[5];
    v19 = a2[6];
    v18 = a2[7];
    v20 = a2[8];
    v21 = a2[9];
    v23 = a2[10];
    v22 = a2[11];
    v24 = a2[12];
    v25 = a2[13];
    v27 = a2[14];
    v26 = a2[15];
    v28 = a2[16];
    v29 = a2[17];
    v30 = v6 * v15 + v2 * v14 + v10 * v16 + v13 * v17;
    v62 = v6 * v18 + v2 * v19 + v10 * v20 + v13 * v21;
    v31 = v6 * v22 + v2 * v23 + v10 * v24 + v13 * v25;
    v32 = v6 * v26 + v2 * v27 + v10 * v28 + v13 * v29;
    v33 = v7 * v15 + v3 * v14 + v11 * v16 + v12 * v17;
    v34 = v7 * v18 + v3 * v19 + v11 * v20 + v12 * v21;
    v35 = v7 * v22 + v3 * v23 + v11 * v24 + v12 * v25;
    v36 = v7 * v26 + v3 * v27 + v11 * v28 + v12 * v29;
    v37 = v9 * v15 + v5 * v14;
    v38 = v9 * v18 + v5 * v19;
    v39 = v9 * v22 + v5 * v23;
    v40 = v9 * v26 + v5 * v27;
    v41 = result[12];
    v42 = result[13];
    v43 = v37 + v41 * v16;
    v44 = v38 + v41 * v20;
    v45 = v39 + v41 * v24;
    v46 = v40 + v41 * v28;
    v48 = result[16];
    v47 = result[17];
    v49 = v43 + v48 * v17;
    v50 = v44 + v48 * v21;
    v51 = v45 + v48 * v25;
    v52 = v46 + v48 * v29;
    v53 = v8 * v15 + v4 * v14 + v42 * v16 + v47 * v17;
    v54 = v8 * v18 + v4 * v19 + v42 * v20 + v47 * v21;
    v55 = v8 * v22 + v4 * v23 + v42 * v24 + v47 * v25;
    v56 = v8 * v26 + v4 * v27 + v42 * v28 + v47 * v29;
    v57 = result[18];
    if (v57 < a2[18] == fmax(v57, a2[18]) > 1.0)
    {
      v57 = a2[18];
    }

    v58 = result[19] + a2[19];
    result[2] = v30;
    result[3] = v33;
    result[4] = v49;
    result[5] = v53;
    if (v57 >= 0.0)
    {
      v59 = v57;
    }

    else
    {
      v59 = 1.0;
    }

    v60 = 0.0;
    if (v58 >= 0.0)
    {
      v60 = v58;
    }

    result[6] = v62;
    result[7] = v34;
    result[8] = v50;
    result[9] = v54;
    result[10] = v31;
    result[11] = v35;
    result[12] = v51;
    result[13] = v55;
    result[14] = v32;
    result[15] = v36;
    result[16] = v52;
    result[17] = v56;
    if (v60 <= 1.0)
    {
      v61 = v60;
    }

    else
    {
      v61 = 1.0;
    }

    result[18] = v59;
    result[19] = v61;
  }

  return result;
}

uint64_t MADisplayFilterCreateRedColorCorrection(double a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  v3 = a1 * 0.123284686 + 1.0;
  v4 = vmulq_n_f64(xmmword_1B022EF30, a1);
  v5 = a1 * -0.120003647;
  v6 = a1 * 0.120002868 + 1.0;
  v7 = vmulq_n_f64(xmmword_1B022EF40, a1);
  v8 = a1 * -0.732505139;
  v9 = a1 * 0.000000990726569 + 1.0;
  v1 = _MADisplayFilterCreateWithPostOffset(&v3, 0.0, 0.0, 0.0);
  MADisplayFilterNormalize(v1);
  return v1;
}

uint64_t MADisplayFilterCreateGreenColorCorrection(double a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  v3 = a1 * -0.235688939 + 1.0;
  v4 = vmulq_n_f64(xmmword_1B022EF50, a1);
  v5 = a1 * -0.0719766168;
  v6 = a1 * 0.130708203 + 1.0;
  v7 = vmulq_n_f64(xmmword_1B022EF60, a1);
  v8 = a1 * -0.8926484;
  v9 = a1 * 0.0625030946 + 1.0;
  v1 = _MADisplayFilterCreateWithPostOffset(&v3, 0.0, 0.0, 0.0);
  MADisplayFilterNormalize(v1);
  return v1;
}

uint64_t MADisplayFilterCreateBlueColorCorrection(double a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  v3[0] = a1 * 0.1332794 + 1.0;
  v3[1] = 0.0;
  v3[2] = a1 * -0.1332794;
  v3[3] = 0.0;
  v3[4] = a1 * 0.52448918 + 1.0;
  v3[5] = a1 * -0.52448918;
  v3[6] = 0.0;
  v3[7] = 0.0;
  v3[8] = 1.0;
  v1 = _MADisplayFilterCreateWithPostOffset(v3, 0.0, 0.0, 0.0);
  MADisplayFilterNormalize(v1);
  return v1;
}

uint64_t MADisplayFilterCreateGrayscale(double a1)
{
  if (a1 < 0.0)
  {
    a1 = 0.0;
  }

  if (a1 > 1.0)
  {
    a1 = 1.0;
  }

  v1 = 1.0 - a1;
  v2 = a1 * 0.3;
  v3 = 1.0 - a1 + a1 * 0.3;
  v4 = a1 * 0.59;
  v5 = a1 * 0.59 + (1.0 - a1) * 0.0;
  v6 = a1 * 0.11;
  *v9 = v3;
  *&v9[1] = v5;
  v10 = v6 + v1 * 0.0;
  v11 = v2 + v1 * 0.0;
  v12 = v1 + v4;
  v13 = v10;
  v14 = v11;
  v15 = v5;
  v16 = v1 + v6;
  v7 = _MADisplayFilterCreateWithPostOffset(v9, 0.0, 0.0, 0.0);
  MADisplayFilterNormalize(v7);
  return v7;
}

void MADisplayFilterCreateBrightnessAdjust(int a1, double a2)
{
  v2 = 1.0 - a2;
  v3 = (1.0 - a2) * 0.75;
  if (a1)
  {

    MADisplayFilterCreateSaturation(v3 + 0.13);
  }

  else
  {
    memset(v21, 0, 72);
    *v22 = 0x3FDA76D18D7F43A8;
    memset(&v22[8], 0, 24);
    *v23 = 0x3FD19F36016628F6;
    memset(&v23[8], 0, 24);
    v24 = 0.0470198675;
    v16 = xmmword_1B022EF70;
    v17 = xmmword_1B022EF80;
    v18 = xmmword_1B022EF90;
    v19 = xmmword_1B022EFA0;
    v20 = 0x3FF779335D249E45;
    MAFilterMatrix3Multiply(v22, &v16, v21);
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    *v22 = xmmword_1B022EFB0;
    *&v22[16] = xmmword_1B022EFC0;
    *v23 = xmmword_1B022EFD0;
    *&v23[16] = xmmword_1B022EFE0;
    v24 = 0.693513;
    MAFilterMatrix3Multiply(v22, v21, &v16);
    v8 = v16;
    v9 = 0;
    v10 = 0;
    v11 = v18;
    v13 = 0;
    v14 = 0;
    v12 = 0;
    v15 = v20;
    MAFilterMatrix3IOMFBNormalize(&v8, v22);
    v4 = vdupq_lane_s64(COERCE__INT64(v3 * 0.0), 0);
    *&v22[8] = vmlaq_n_f64(v4, *&v22[8], 1.0 - v3);
    *v22 = v3 + *v22 * (1.0 - v3);
    *&v22[24] = v3 * 0.0 + *&v22[24] * (1.0 - v3);
    *v23 = v3 + *v23 * (1.0 - v3);
    *&v23[8] = vmlaq_n_f64(v4, *&v23[8], 1.0 - v3);
    *&v23[24] = v3 * 0.0 + *&v23[24] * (1.0 - v3);
    v24 = v3 + v24 * (1.0 - v3);
    v5 = _MADisplayFilterCreateWithPostOffset(v22, 0.0, 0.0, 0.0);
    if (v5)
    {
      v6 = 0.3;
      v7 = v2 * 0.7 + 0.3;
      if (v7 < 0.3)
      {
        v7 = 0.3;
      }

      if (v7 <= 1.0)
      {
        v6 = v7;
      }

      *(v5 + 144) = v6;
    }

    MADisplayFilterNormalize(v5);
  }
}

double MADisplayFilterNormalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v4 = *(a1 + 96);
  v10 = *(a1 + 16);
  v11 = v2;
  v12 = *(a1 + 48);
  v13 = v3;
  v14 = *(a1 + 80);
  v15 = v4;
  MAFilterMatrix3IOMFBNormalize(&v10, &v16);
  result = v17;
  v6 = v19;
  v7 = v21;
  v8 = v18;
  v9 = v20;
  *(a1 + 16) = v16;
  *(a1 + 32) = result;
  *(a1 + 48) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v9;
  *(a1 + 96) = v7;
  return result;
}

double MAFilterMatrix3Multiply@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = a1[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a1[6];
  v11 = a1[7];
  v12 = v5 * v4 + *a1 * *a2 + v10 * v8;
  v13 = a2[4];
  v14 = a2[5];
  v15 = v5 * v13 + *a1 * v9 + v10 * v14;
  v16 = a2[6];
  v17 = a2[7];
  v18 = a2[8];
  v19 = v5 * v17 + *a1 * v16 + v10 * v18;
  v20 = a1[4];
  v21 = a1[5];
  v22 = v4 * v20 + v7 * *a2 + v11 * v8;
  *a3 = v12;
  a3[1] = v22;
  a3[6] = v19;
  a3[7] = v17 * v20 + v7 * v16 + v11 * v18;
  v23 = v4 * v21 + v6 * v3;
  v24 = a1[8];
  a3[2] = v23 + v24 * v8;
  a3[3] = v15;
  a3[4] = v13 * v20 + v7 * v9 + v11 * v14;
  a3[5] = v13 * v21 + v6 * v9 + v24 * v14;
  result = v17 * v21 + v6 * v16 + v24 * v18;
  a3[8] = result;
  return result;
}

__int128 *MAFilterMatrix3IOMFBNormalize@<X0>(__int128 *result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v21 = *MEMORY[0x1E69E9840];
  v3 = *result;
  v4 = result[1];
  v16 = *result;
  v17 = v4;
  v5 = result[2];
  v6 = result[3];
  v18 = v5;
  v19 = v6;
  v7 = *(result + 8);
  v20 = v7;
  v8 = 0.0;
  v9 = &v16;
  do
  {
    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + *(v9 + v10);
      v10 += 8;
    }

    while (v10 != 24);
    if (v11 > v8)
    {
      v8 = v11;
    }

    ++v2;
    v9 = (v9 + 24);
  }

  while (v2 != 3);
  if (v8 < 1.0)
  {
    v12 = 0;
    v13 = &v16;
    do
    {
      for (i = 0; i != 24; i += 8)
      {
        *(v13 + i) = 1.0 / v8 * *(v13 + i);
      }

      ++v12;
      v13 = (v13 + 24);
    }

    while (v12 != 3);
    v3 = v16;
    v4 = v17;
    v5 = v18;
    v6 = v19;
    v7 = v20;
  }

  *a2 = v3;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = v7;
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

float64x2_t MADisplayFilterCreateSaturation(double a1)
{
  Grayscale = MADisplayFilterCreateGrayscale(1.0);
  v3 = (1.0 - a1) * *(Grayscale + 48);
  v4 = a1 + (1.0 - a1) * *(Grayscale + 56);
  v5 = (1.0 - a1) * *(Grayscale + 64);
  v6 = a1 + (1.0 - a1) * *(Grayscale + 96);
  *(Grayscale + 16) = a1 + (1.0 - a1) * *(Grayscale + 16);
  *(Grayscale + 24) = vmulq_n_f64(*(Grayscale + 24), 1.0 - a1);
  *(Grayscale + 48) = v3;
  *(Grayscale + 56) = v4;
  *(Grayscale + 64) = v5;
  result = vmulq_n_f64(*(Grayscale + 80), 1.0 - a1);
  *(Grayscale + 80) = result;
  *(Grayscale + 96) = v6;
  return result;
}

void *MADisplayFilterInversionCompensationForNightShift()
{
  v1[0] = 0x3FF0000000000000;
  memset(&v1[1], 0, 24);
  v1[4] = 0x3FF0000000000000;
  memset(&v1[5], 0, 24);
  v1[8] = 0x3FF0000000000000;
  result = _MADisplayFilterCreateWithPostOffset(v1, 0.0, 0.0, 0.0);
  result[2] = 0x3FE6666666666666;
  result[7] = 0x3FF0000000000000;
  result[12] = 0x4000000000000000;
  return result;
}

uint64_t MADisplayFilterCreateTwoColor(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v7[0] = (a4 - a1) * 0.33333333;
  v7[1] = v7[0];
  v7[2] = v7[0];
  v8 = (a5 - a2) * 0.33333333;
  v9 = v8;
  v10 = v8;
  v11 = (a6 - a3) * 0.33333333;
  v12 = v11;
  v13 = v11;
  return _MADisplayFilterCreateWithPostOffset(v7, a1, a2, a3);
}

uint64_t _MADisplayFilterCreateWithPostOffset(uint64_t a1, double a2, double a3, double a4)
{
  if ((__MADisplayFilterInitialized & 1) == 0)
  {
    __MADisplayFilterInitialize();
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    v9 = *(a1 + 16);
    v10 = *(a1 + 40);
    v11 = *(a1 + 64);
    v12 = *(a1 + 24);
    v13 = *(a1 + 48);
    *(result + 16) = *a1;
    *(result + 48) = v12;
    *(result + 80) = v13;
    *(result + 32) = v9;
    *(result + 40) = a2;
    *(result + 64) = v10;
    *(result + 72) = a3;
    *(result + 96) = v11;
    *(result + 104) = a4;
    *(result + 152) = 0;
    __asm { FMOV            V0.2D, #1.0 }

    *(result + 136) = _Q0;
  }

  return result;
}

uint64_t MADisplayFilterCreateYellowBlue()
{
  v1[0] = vdupq_n_s64(0xBFD5555551C112DALL);
  v1[1] = v1[0];
  v1[2] = v1[0];
  v1[3] = vdupq_n_s64(0x3FD5555551C112DAuLL);
  v2 = 0x3FD5555551C112DALL;
  return _MADisplayFilterCreateWithPostOffset(v1, 1.0, 1.0, 0.0);
}

uint64_t MADisplayFilterCreateYellowBlack()
{
  v1[0] = vdupq_n_s64(0xBFD5555551C112DALL);
  v1[1] = v1[0];
  v1[2] = v1[0];
  v3 = 0;
  v4 = 0;
  v2 = 0;
  return _MADisplayFilterCreateWithPostOffset(v1, 1.0, 1.0, 0.0);
}

uint64_t MADisplayFilterCreateRedBlack()
{
  v1 = vdupq_n_s64(0xBFD5555551C112DALL);
  v2 = 0xBFD5555551C112DALL;
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  return _MADisplayFilterCreateWithPostOffset(&v1, 1.0, 0.0, 0.0);
}

double MADisplayFilterCreateInterpolated(float64x2_t *a1, float64x2_t *a2, double a3)
{
  v16[0] = 0x3FF0000000000000;
  memset(&v16[1], 0, 24);
  v16[4] = 0x3FF0000000000000;
  memset(&v16[5], 0, 24);
  v16[8] = 0x3FF0000000000000;
  v5 = _MADisplayFilterCreateWithPostOffset(v16, 0.0, 0.0, 0.0);
  if (a1)
  {
    if (a2)
    {
      result = 1.0 - a3;
      v7 = vmlaq_n_f64(vmulq_n_f64(a2[2], a3), a1[2], 1.0 - a3);
      v8 = vmlaq_n_f64(vmulq_n_f64(a2[3], a3), a1[3], 1.0 - a3);
      v9 = vmlaq_n_f64(vmulq_n_f64(a2[4], a3), a1[4], 1.0 - a3);
      v10 = vmlaq_n_f64(vmulq_n_f64(a2[5], a3), a1[5], 1.0 - a3);
      v11 = vmlaq_n_f64(vmulq_n_f64(a2[6], a3), a1[6], 1.0 - a3);
      v12 = vmlaq_n_f64(vmulq_n_f64(a2[7], a3), a1[7], 1.0 - a3);
      v13 = vmlaq_n_f64(vmulq_n_f64(a2[8], a3), a1[8], 1.0 - a3);
      v14 = vmlaq_n_f64(vmulq_n_f64(a2[9], a3), a1[9], 1.0 - a3);
      *(v5 + 16) = vmlaq_n_f64(vmulq_n_f64(a2[1], a3), a1[1], 1.0 - a3);
      *(v5 + 32) = v7;
      *(v5 + 48) = v8;
      *(v5 + 64) = v9;
      *(v5 + 80) = v10;
      *(v5 + 96) = v11;
      *(v5 + 112) = v12;
      *(v5 + 128) = v13;
      *(v5 + 144) = v14;
    }
  }

  return result;
}

BOOL __MADisplayFilterEqual(double *cf, double *a2)
{
  if ((__MADisplayFilterInitialized & 1) == 0)
  {
    __MADisplayFilterInitialize();
  }

  v4 = __kMADisplayFilterTypeID;
  return (!cf || a2) && (cf || !a2) && (cf == a2 || v4 == CFGetTypeID(cf) && v4 == CFGetTypeID(a2) && MAUtilitiesDoubleAlmostEqual(cf[2], a2[2]) && MAUtilitiesDoubleAlmostEqual(cf[3], a2[3]) && MAUtilitiesDoubleAlmostEqual(cf[4], a2[4]) && MAUtilitiesDoubleAlmostEqual(cf[5], a2[5]) && MAUtilitiesDoubleAlmostEqual(cf[6], a2[6]) && MAUtilitiesDoubleAlmostEqual(cf[7], a2[7]) && MAUtilitiesDoubleAlmostEqual(cf[8], a2[8]) && MAUtilitiesDoubleAlmostEqual(cf[9], a2[9]) && MAUtilitiesDoubleAlmostEqual(cf[10], a2[10]) && MAUtilitiesDoubleAlmostEqual(cf[11], a2[11]) && MAUtilitiesDoubleAlmostEqual(cf[12], a2[12]) && MAUtilitiesDoubleAlmostEqual(cf[13], a2[13]) && MAUtilitiesDoubleAlmostEqual(cf[14], a2[14]) && MAUtilitiesDoubleAlmostEqual(cf[15], a2[15]) && MAUtilitiesDoubleAlmostEqual(cf[16], a2[16]) && MAUtilitiesDoubleAlmostEqual(cf[17], a2[17]) && MAUtilitiesDoubleAlmostEqual(cf[18], a2[18]) && MAUtilitiesDoubleAlmostEqual(cf[19], a2[19]));
}

void MAPreferencesPostChangeNotification(const __CFString *a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {

    CFNotificationCenterPostNotification(DarwinNotifyCenter, a1, 0, 0, 1u);
  }
}

void MAPreferencesPostChangeNotificationIfNeeded(unint64_t a1, unint64_t a2, const __CFString *a3)
{
  if (a1 && a2)
  {
    if (CFEqual(a1, a2))
    {
      return;
    }
  }

  else if (!(a1 | a2))
  {
    return;
  }

  MAPreferencesPostChangeNotification(a3);
}

void _settingsChangedNotificationHandler(uint64_t a1, uint64_t a2, const void *a3)
{
  if (_MADomainOverride)
  {
    v4 = _MADomainOverride;
  }

  else
  {
    v4 = @"com.apple.mediaaccessibility";
  }

  CFPreferencesAppSynchronize(v4);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  if (CFEqual(a3, @"com.apple.mediaaccessibility.captionAppearanceSettingsChanged"))
  {
    v6 = &kMACaptionAppearanceSettingsChangedNotification;
  }

  else
  {
    if (!CFEqual(a3, @"com.apple.mediaaccessibility.audibleMediaSettingsChanged"))
    {
      return;
    }

    v6 = &kMAAudibleMediaSettingsChangedNotification;
  }

  v7 = *v6;

  CFNotificationCenterPostNotification(LocalCenter, v7, 0, 0, 1u);
}

__CFDictionary *MAPreferencesCopyMultipleProfiles(const __CFArray *a1)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v4 = Count;
    for (i = 0; i != v4; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v7 = ValueAtIndex;
      if (_MADomainOverride)
      {
        v8 = _MADomainOverride;
      }

      else
      {
        v8 = @"com.apple.mediaaccessibility";
      }

      v9 = CFPreferencesCopyAppValue(ValueAtIndex, v8);
      if (v9)
      {
        v10 = v9;
        CFDictionarySetValue(Mutable, v7, v9);
        CFRelease(v10);
      }
    }
  }

  return Mutable;
}

void MAPreferencesSetMultipleProfiles(const __CFDictionary *a1)
{
  Count = CFDictionaryGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    v4 = malloc_type_calloc(8uLL, Count, 0x6004044C4A2DFuLL);
    v5 = malloc_type_calloc(8uLL, v3, 0xC0040B8AA526DuLL);
    CFDictionaryGetKeysAndValues(a1, v4, v5);
    for (i = 0; i != v3; ++i)
    {
      v7 = v5[i];
      v8 = v4[i];
      if (v7)
      {
        v9 = v8 == 0;
      }

      else
      {
        v9 = 1;
      }

      if (!v9)
      {
        if (_MADomainOverride)
        {
          v10 = _MADomainOverride;
        }

        else
        {
          v10 = @"com.apple.mediaaccessibility";
        }

        CFPreferencesSetAppValue(v8, v7, v10);
      }
    }

    free(v4);

    free(v5);
  }
}

void MAPreferencesRemoveProfile(__CFString *a1)
{
  if (a1)
  {
    _preferencesSetValue(a1, 0);
  }
}

__CFArray *MAPreferencesCopyProfileIDs(const __CFString *a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v3 = _preferencesDefaults();
  if (v3)
  {
    v4 = v3;
    Count = CFDictionaryGetCount(v3);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(v4, v7, 0);
      for (i = 0; i != v6; ++i)
      {
        v23.length = CFArrayGetCount(Mutable);
        v23.location = 0;
        if (!CFArrayContainsValue(Mutable, v23, v7[i]))
        {
          CFArrayAppendValue(Mutable, v7[i]);
        }
      }

      free(v7);
    }
  }

  v9 = _CFPrefsCopyAppDictionaryWithContainer();
  if (v9)
  {
    v10 = v9;
    v11 = CFDictionaryGetCount(v9);
    if (v11 >= 1)
    {
      v12 = v11;
      v13 = malloc_type_calloc(8uLL, v11, 0x6004044C4A2DFuLL);
      CFDictionaryGetKeysAndValues(v10, v13, 0);
      for (j = 0; j != v12; ++j)
      {
        v15 = v13[j];
        if (v15)
        {
          v24.length = CFArrayGetCount(Mutable);
          v24.location = 0;
          if (!CFArrayContainsValue(Mutable, v24, v15))
          {
            CFArrayAppendValue(Mutable, v15);
          }
        }
      }

      free(v13);
    }

    CFRelease(v10);
  }

  if (!Mutable)
  {
    return 0;
  }

  if (a1)
  {
    v16 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v17 = CFArrayGetCount(Mutable);
    if (v17 >= 1)
    {
      v18 = v17;
      for (k = 0; k != v18; ++k)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, k);
        v21 = CFGetTypeID(ValueAtIndex);
        if (v21 == CFStringGetTypeID() && CFStringHasPrefix(ValueAtIndex, a1))
        {
          CFArrayAppendValue(v16, ValueAtIndex);
        }
      }
    }
  }

  else
  {
    v16 = CFRetain(Mutable);
  }

  CFRelease(Mutable);
  return v16;
}

void MAPreferencesSetProfileValue(__CFString *theString, __CFString *a2, const void *a3)
{
  if (a2)
  {
    if (theString && CFStringGetLength(theString))
    {
      TypeID = CFDictionaryGetTypeID();
      v7 = MAPreferencesCopyProfileValueWithExpectedType(0, theString, TypeID);
      if (v7)
      {
        v8 = v7;
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v7);
        CFRelease(v8);
        if (!MutableCopy)
        {
          return;
        }
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (!MutableCopy)
        {
          return;
        }
      }

      if (a3)
      {
        CFDictionarySetValue(MutableCopy, a2, a3);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, a2);
      }

      _preferencesSetValue(theString, MutableCopy);

      CFRelease(MutableCopy);
    }

    else
    {

      _preferencesSetValue(a2, a3);
    }
  }
}

void _preferencesSetValue(__CFString *a1, const void *a2)
{
  if (_preferenceAccessRequiresXPC(a1))
  {
    v4 = _copyResultPreferenceXPCCall(a1, 1, a2);
    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {
    if (_MADomainOverride)
    {
      v5 = _MADomainOverride;
    }

    else
    {
      v5 = @"com.apple.mediaaccessibility";
    }

    CFPreferencesSetAppValue(a1, a2, v5);
    if (_MADomainOverride)
    {
      v6 = _MADomainOverride;
    }

    else
    {
      v6 = @"com.apple.mediaaccessibility";
    }

    CFPreferencesAppSynchronize(v6);
  }
}

CGColorRef MAPreferencesCopyProfileColor(const __CFString *a1, __CFString *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  TypeID = CFDictionaryGetTypeID();
  v5 = MAPreferencesCopyProfileValueWithExpectedType(a1, a2, TypeID);
  if (v5)
  {
    v6 = v5;
    Value = CFDictionaryGetValue(v5, @"Red");
    v8 = CFDictionaryGetValue(v6, @"Green");
    v9 = CFDictionaryGetValue(v6, @"Blue");
    v10 = CFDictionaryGetValue(v6, @"Alpha");
    v11 = CFNumberGetTypeID();
    v12 = 0;
    if (Value && v8 && v9 && v10)
    {
      v13 = v11;
      if (CFGetTypeID(Value) == v11 && CFGetTypeID(v8) == v13 && CFGetTypeID(v9) == v13 && CFGetTypeID(v10) == v13 && CFNumberGetValue(Value, kCFNumberFloatType, &v18) && CFNumberGetValue(v8, kCFNumberFloatType, &v18 + 4) && CFNumberGetValue(v9, kCFNumberFloatType, &v19) && CFNumberGetValue(v10, kCFNumberFloatType, &v19 + 4) && (*components = vcvtq_f64_f32(v18), v21 = vcvtq_f64_f32(v19), (DeviceRGB = CGColorSpaceCreateDeviceRGB()) != 0))
      {
        v15 = DeviceRGB;
        v12 = CGColorCreate(DeviceRGB, components);
        CFRelease(v15);
      }

      else
      {
        v12 = 0;
      }
    }

    CFRelease(v6);
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

void MAPreferencesSetProfileColor(__CFString *theString, __CFString *a2, CGColor *a3)
{
  if (a3)
  {
    v21 = 0.0;
    v22 = 0.0;
    v19 = 0.0;
    v20 = 0.0;
    if (!MAUtilitiesRGBValuesForColor(a3, &v22, &v21, &v20, &v19))
    {
      return;
    }

    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = v22;
    v7 = v20;
    v17 = v7;
    valuePtr = v6;
    v8 = v21;
    v9 = v19;
    v15 = v9;
    v16 = v8;
    v10 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v11 = CFNumberCreate(0, kCFNumberFloatType, &v17);
    v12 = CFNumberCreate(0, kCFNumberFloatType, &v16);
    v13 = CFNumberCreate(0, kCFNumberFloatType, &v15);
    v14 = v13;
    if (v10 && v12 && v11 && v13)
    {
      CFDictionarySetValue(Mutable, @"Red", v10);
      CFDictionarySetValue(Mutable, @"Blue", v11);
      CFDictionarySetValue(Mutable, @"Green", v12);
      CFDictionarySetValue(Mutable, @"Alpha", v14);
      MAPreferencesSetProfileValue(theString, a2, Mutable);
    }

    else if (!v10)
    {
LABEL_13:
      if (v12)
      {
        CFRelease(v12);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      if (v14)
      {
        CFRelease(v14);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      return;
    }

    CFRelease(v10);
    goto LABEL_13;
  }

  MAPreferencesSetProfileValue(theString, a2, 0);
}

const __CFString *MAPreferencesCopyProfileFont(const __CFString *a1, __CFString *a2)
{
  TypeID = CFStringGetTypeID();
  result = MAPreferencesCopyProfileValueWithExpectedType(a1, a2, TypeID);
  if (result)
  {
    v6 = result;
    CGFontWithName = MAUtilitiesCreateCGFontWithName(result);
    CFRelease(v6);
    return CGFontWithName;
  }

  return result;
}

void MAPreferencesSetProfileFont(__CFString *theString, __CFString *a2, CGFontRef font)
{
  if (font)
  {
    v5 = CGFontCopyPostScriptName(font);
    if (v5)
    {
      v6 = v5;
      MAPreferencesSetProfileValue(theString, a2, v5);

      CFRelease(v6);
    }
  }

  else
  {

    MAPreferencesSetProfileValue(theString, a2, 0);
  }
}

void MAPreferencesSetProfileFontDescriptor(__CFString *theString, __CFString *a2, const __CTFontDescriptor *a3)
{
  if (a3)
  {
    PostScriptNameFromFontDescriptor = MAUtilitiesCreatePostScriptNameFromFontDescriptor(a3);
    if (PostScriptNameFromFontDescriptor)
    {
      v6 = PostScriptNameFromFontDescriptor;
      MAPreferencesSetProfileValue(theString, a2, PostScriptNameFromFontDescriptor);

      CFRelease(v6);
    }
  }

  else
  {

    MAPreferencesSetProfileValue(theString, a2, 0);
  }
}

void MAPreferencesSetValue(__CFString *a1, const void *a2)
{
  if (a1)
  {
    _preferencesSetValue(a1, a2);
  }
}

void MASetCaptionCallStatus(int a1)
{
  if (_xpcConnection_onceToken != -1)
  {
    MASetCaptionCallStatus_cold_1();
  }

  v2 = _xpcConnection__XpcConnection;
  if (_xpcConnection__XpcConnection)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v3, "getOrSet", "set");
    xpc_dictionary_set_BOOL(v3, "preferenceValue", a1 != 0);
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v4, "callStatus", v3);
    xpc_connection_send_message(v2, v4);
    if (v3)
    {
      CFRelease(v3);
    }

    if (v4)
    {

      CFRelease(v4);
    }
  }

  else
  {
    v5 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v5)
    {
      MASetCaptionCallStatus_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

BOOL MAGetCaptionCallStatus()
{
  if (_xpcConnection_onceToken != -1)
  {
    MASetCaptionCallStatus_cold_1();
  }

  v0 = _xpcConnection__XpcConnection;
  if (_xpcConnection__XpcConnection)
  {
    v1 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v1, "getOrSet", "get");
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v2, "callStatus", v1);
    v3 = xpc_connection_send_message_with_reply_sync(v0, v2);
    v4 = v3;
    if (v3 == MEMORY[0x1E69E9E20])
    {
      v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v14)
      {
        MAGetCaptionCallStatus_cold_3(v14, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    else
    {
      if (v3 != MEMORY[0x1E69E9E18])
      {
        if (MEMORY[0x1B2722470](v3) == MEMORY[0x1E69E9E80])
        {
          v5 = xpc_dictionary_get_BOOL(v4, "result");
          if (!v4)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v5 = 0;
          if (!v4)
          {
            goto LABEL_18;
          }
        }

LABEL_17:
        CFRelease(v4);
LABEL_18:
        if (v1)
        {
          CFRelease(v1);
        }

        if (v2)
        {
          CFRelease(v2);
        }

        return v5;
      }

      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        MAGetCaptionCallStatus_cold_2(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    v5 = 0;
    goto LABEL_17;
  }

  v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v6)
  {
    MAGetCaptionCallStatus_cold_4(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  return 0;
}

void MAPreferencesOpenSettings()
{
  if (_xpcConnection_onceToken != -1)
  {
    MASetCaptionCallStatus_cold_1();
  }

  v0 = _xpcConnection__XpcConnection;
  if (_xpcConnection__XpcConnection)
  {
    v1 = xpc_string_create("openSettings");
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_value(v2, "openSettings", v1);
    xpc_connection_send_message(v0, v2);
    if (v1)
    {
      CFRelease(v1);
    }

    if (v2)
    {

      CFRelease(v2);
    }
  }

  else
  {
    v3 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v3)
    {
      MAPreferencesOpenSettings_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void MAMacBuddySettingsToTransfer(const __CFDictionary *a1)
{
  if (a1)
  {
    v2 = MACaptionAppearancePrefCopyPreferAccessibleCaptions();
    if (v2)
    {
      v3 = v2;
      if (CFBooleanGetValue(v2))
      {
        if (_MADomainOverride)
        {
          v4 = _MADomainOverride;
        }

        else
        {
          v4 = @"com.apple.mediaaccessibility";
        }

        Value = CFDictionaryGetValue(a1, v4);
        if (Value)
        {
          Mutable = Value;
          CFRetain(Value);
        }

        else
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          if (_MADomainOverride)
          {
            v7 = _MADomainOverride;
          }

          else
          {
            v7 = @"com.apple.mediaaccessibility";
          }

          CFDictionarySetValue(a1, v7, Mutable);
        }

        MACaptionAppearanceMacBuddySettingsToTransfer(Mutable);
        CFRelease(Mutable);
      }

      CFRelease(v3);
    }
  }
}

void MAPreferencesSetDomainOverride(const __CFString *a1)
{
  v1 = _MADomainOverride;
  if (a1)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, @"com.apple.mediaaccessibility");
    CFStringAppend(MutableCopy, @"-");
    CFStringAppend(MutableCopy, a1);
  }

  else
  {
    MutableCopy = 0;
  }

  _MADomainOverride = MutableCopy;
  if (v1)
  {

    CFRelease(v1);
  }
}

void ___copyResultPreferenceXPCCall_block_invoke_2(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t MAUtilitiesFontsUseSamePostScriptName(const __CTFontDescriptor *a1, const __CTFontDescriptor *a2)
{
  PostScriptNameFromFontDescriptor = MAUtilitiesCreatePostScriptNameFromFontDescriptor(a1);
  v4 = MAUtilitiesCreatePostScriptNameFromFontDescriptor(a2);
  if (!(PostScriptNameFromFontDescriptor | v4))
  {
    return 1;
  }

  v6 = v4;
  if (PostScriptNameFromFontDescriptor && v4)
  {
    v7 = CFEqual(PostScriptNameFromFontDescriptor, v4);
  }

  else
  {
    v7 = 0;
    v5 = 0;
    if (!PostScriptNameFromFontDescriptor)
    {
      goto LABEL_8;
    }
  }

  CFRelease(PostScriptNameFromFontDescriptor);
  v5 = v7;
LABEL_8:
  if (v6)
  {
    CFRelease(v6);
  }

  return v5;
}

const void *MAUtilitiesCreatePostScriptNameFromFontDescriptor(const __CTFontDescriptor *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = CTFontDescriptorCopyAttribute(a1, *MEMORY[0x1E6965808]);
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 != CFStringGetTypeID())
    {
      CFRelease(v2);
      return 0;
    }
  }

  return v2;
}

__CFArray *MAUtilitiesFontSupportsLanguage(const __CTFontDescriptor *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!a1)
  {
    return 0;
  }

  result = MAUtilitiesCreateOrderedCanonicalLanguageIdentifiersFromString(a2);
  if (!result)
  {
    return result;
  }

  v4 = result;
  Count = CFArrayGetCount(result);
  if (!Count)
  {
    CFRelease(v4);
    return 0;
  }

  v6 = Count;
  v7 = CTFontDescriptorCopyAttribute(a1, *MEMORY[0x1E69657E8]);
  if (v7)
  {
    v8 = v7;
    v9 = CFGetTypeID(v7);
    TypeID = CFArrayGetTypeID();
    v11 = v9 != TypeID;
    if (v9 == TypeID)
    {
      v12 = CFArrayGetCount(v8);
      if (v12 < 1)
      {
        v11 = 0;
      }

      else
      {
        v13 = v12;
        v14 = 0;
        v11 = 1;
        v24 = v12;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v8, v14);
          if (ValueAtIndex)
          {
            v16 = ValueAtIndex;
            v17 = CFGetTypeID(ValueAtIndex);
            if (v17 == CFStringGetTypeID())
            {
              v18 = CFLocaleCreate(0, v16);
              if (v6 < 1)
              {
                v20 = 0;
              }

              else
              {
                v19 = 0;
                v20 = 1;
                do
                {
                  v21 = CFArrayGetValueAtIndex(v4, v19);
                  v22 = CFLocaleCreate(0, v21);
                  v23 = CFEqual(v18, v22);
                  if (v22)
                  {
                    CFRelease(v22);
                  }

                  if (v23)
                  {
                    break;
                  }

                  v20 = ++v19 < v6;
                }

                while (v6 != v19);
              }

              if (v18)
              {
                CFRelease(v18);
              }

              v13 = v24;
              if (v20)
              {
                break;
              }
            }
          }

          v11 = ++v14 < v13;
        }

        while (v14 != v13);
      }
    }

    CFRelease(v4);
  }

  else
  {
    v11 = 1;
    v8 = v4;
  }

  CFRelease(v8);
  return v11;
}

__CFString *MAUtilitiesGetFallbackPSFontNameForSystemFontType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7A94488[a1];
  }
}

CGFontRef MAUtilitiesCreateCGFontWithName(const __CFString *a1)
{
  SystemFontType = MACaptionAppearancePrefGetSystemFontType(a1);
  CTFontDescriptorForSystemFontType = _MAUtilitiesCreateCTFontDescriptorForSystemFontType(SystemFontType);
  if (CTFontDescriptorForSystemFontType)
  {
    v4 = CTFontDescriptorForSystemFontType;
    v5 = CTFontCreateWithFontDescriptor(CTFontDescriptorForSystemFontType, 0.0, 0);
    if (v5)
    {
      v6 = v5;
      v7 = CTFontCopyGraphicsFont(v5, 0);
      CFRelease(v6);
      CFRelease(v4);
      if (v7)
      {
        return v7;
      }
    }

    else
    {
      CFRelease(v4);
    }
  }

  return CGFontCreateWithFontName(a1);
}

CGColor *MAUtilitiesRGBValuesForColor(CGColor *result, void *a2, void *a3, void *a4, void *a5)
{
  if (result)
  {
    v9 = result;
    result = CGColorGetColorSpace(result);
    if (result)
    {
      if (CGColorSpaceGetModel(result) == kCGColorSpaceModelRGB)
      {
        Components = CGColorGetComponents(v9);
        if (a2)
        {
          *a2 = *Components;
        }

        if (a3)
        {
          *a3 = *(Components + 1);
        }

        if (a4)
        {
          *a4 = *(Components + 2);
        }

        if (a5)
        {
          *a5 = *(Components + 3);
        }

        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFArrayRef __MAUtilitiesCustomizedFontLanguages_block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = @"ja";
  result = CFArrayCreate(0, v2, 1, MEMORY[0x1E695E9C0]);
  MAUtilitiesCustomizedFontLanguages_customizedLanguages = result;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL MAUtilitiesLanguageStringMatchesLanguage(const __CFString *a1, const __CFString *a2)
{
  CanonicalLanguageIdentifierFromString = MAUtilitiesCreateCanonicalLanguageIdentifierFromString(a1);
  if (!CanonicalLanguageIdentifierFromString)
  {
    return 0;
  }

  v4 = CanonicalLanguageIdentifierFromString;
  LanguageFromLocaleIdentifier = MAXUtilitiesCreateLanguageFromLocaleIdentifier(CanonicalLanguageIdentifierFromString);
  if (LanguageFromLocaleIdentifier)
  {
    v6 = LanguageFromLocaleIdentifier;
    v7 = CFStringCompare(LanguageFromLocaleIdentifier, a2, 1uLL) == kCFCompareEqualTo;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v4);
  return v7;
}

CFTypeRef MAUtilitiesCopyFontOverideLanguage(const __CFString *a1)
{
  if (MAUtilitiesCustomizedFontLanguages_onceToken != -1)
  {
    MAUtilitiesCopyFontOverideLanguage_cold_1();
  }

  v2 = MAUtilitiesCustomizedFontLanguages_customizedLanguages;
  if (!MAUtilitiesCustomizedFontLanguages_customizedLanguages)
  {
    return 0;
  }

  Count = CFArrayGetCount(MAUtilitiesCustomizedFontLanguages_customizedLanguages);
  if (Count < 1)
  {
    return 0;
  }

  v4 = Count;
  v5 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    if (MAUtilitiesLanguageStringMatchesLanguage(a1, ValueAtIndex))
    {
      break;
    }

    if (v4 == ++v5)
    {
      return 0;
    }
  }

  return CFRetain(ValueAtIndex);
}

CFTypeRef MAUtilitiesCreatePreferredPostScriptNameForLanguage(const __CFString *a1)
{
  if (!a1 || !MAUtilitiesLanguageStringMatchesLanguage(a1, @"ja"))
  {
    return 0;
  }

  return CFRetain(@"HiraMaruProN-W4");
}

BOOL MACaptionAppearanceGetShowCaptions()
{
  v0 = MACaptionAppearancePrefCopyShowCaptionsWhenAvailable();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFBooleanGetValue(v0) != 0;
  CFRelease(v1);
  return v2;
}

void MACaptionAppearanceSetShowCaptions(uint64_t a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  MACaptionAppearancePrefSetShowCaptionsWhenAvailable(*v2);
}

uint64_t MAXCaptionAppearanceBehaviorCopyForegroundColor(MACaptionAppearanceDomain domain, CGColorRef *a2)
{
  behavior = kMACaptionAppearanceBehaviorUseValue;
  v3 = MACaptionAppearanceCopyForegroundColor(domain, &behavior);
  if (a2)
  {
    *a2 = v3;
  }

  else if (v3)
  {
    CFRelease(v3);
  }

  return behavior;
}

uint64_t MAXCaptionAppearanceBehaviorCopyBackgroundColor(MACaptionAppearanceDomain domain, CGColorRef *a2)
{
  behavior = kMACaptionAppearanceBehaviorUseValue;
  v3 = MACaptionAppearanceCopyBackgroundColor(domain, &behavior);
  if (a2)
  {
    *a2 = v3;
  }

  else if (v3)
  {
    CFRelease(v3);
  }

  return behavior;
}

uint64_t MAXCaptionAppearanceBehaviorCopyWindowColor(MACaptionAppearanceDomain domain, CGColorRef *a2)
{
  behavior = kMACaptionAppearanceBehaviorUseValue;
  v3 = MACaptionAppearanceCopyWindowColor(domain, &behavior);
  if (a2)
  {
    *a2 = v3;
  }

  else if (v3)
  {
    CFRelease(v3);
  }

  return behavior;
}

uint64_t MAXCaptionAppearanceBehaviorCopyForegroundOpacity(MACaptionAppearanceDomain domain, CFNumberRef *a2)
{
  behavior = kMACaptionAppearanceBehaviorUseValue;
  ForegroundOpacity = MACaptionAppearanceGetForegroundOpacity(domain, &behavior);
  if (a2)
  {
    *a2 = CFNumberCreate(0, kCFNumberCGFloatType, &ForegroundOpacity);
  }

  return behavior;
}

uint64_t MAXCaptionAppearanceBehaviorCopyBackgroundOpacity(MACaptionAppearanceDomain domain, CFNumberRef *a2)
{
  behavior = kMACaptionAppearanceBehaviorUseValue;
  BackgroundOpacity = MACaptionAppearanceGetBackgroundOpacity(domain, &behavior);
  if (a2)
  {
    *a2 = CFNumberCreate(0, kCFNumberCGFloatType, &BackgroundOpacity);
  }

  return behavior;
}

uint64_t MAXCaptionAppearanceBehaviorCopyWindowOpacity(MACaptionAppearanceDomain domain, CFNumberRef *a2)
{
  behavior = kMACaptionAppearanceBehaviorUseValue;
  WindowOpacity = MACaptionAppearanceGetWindowOpacity(domain, &behavior);
  if (a2)
  {
    *a2 = CFNumberCreate(0, kCFNumberCGFloatType, &WindowOpacity);
  }

  return behavior;
}

uint64_t MAXCaptionAppearanceBehaviorCopyWindowRoundedCornerRadius(MACaptionAppearanceDomain domain, CFNumberRef *a2)
{
  behavior = kMACaptionAppearanceBehaviorUseValue;
  WindowRoundedCornerRadius = MACaptionAppearanceGetWindowRoundedCornerRadius(domain, &behavior);
  if (a2)
  {
    *a2 = CFNumberCreate(0, kCFNumberCGFloatType, &WindowRoundedCornerRadius);
  }

  return behavior;
}

uint64_t MAXCaptionAppearanceBehaviorCopyFontForStyle(unsigned int a1, unsigned int a2, const __CFString **a3)
{
  v6 = 0;
  v4 = MACaptionAppearanceCopyFontForStyle(a1, &v6, a2);
  if (a3)
  {
    *a3 = v4;
  }

  else if (v4)
  {
    CFRelease(v4);
  }

  return v6;
}

const __CFString *MACaptionAppearanceCopyFontForStyle(uint64_t a1, void *a2, unint64_t a3)
{
  if (a1 == 1)
  {
    v5 = MACaptionAppearancePrefCopyActiveProfileID();
    if (!a2)
    {
      goto LABEL_11;
    }

    *a2 = 0;
LABEL_7:
    v7 = MACaptionAppearancePrefCopyVideoOverrideFontForStyle(v5, a3);
    if (v7)
    {
      v8 = v7;
      if (CFBooleanGetValue(v7))
      {
        *a2 = 1;
      }

      CFRelease(v8);
    }

LABEL_11:
    v9 = MACaptionAppearancePrefCopyFontForStyle(v5, a3);
    if (!v5)
    {
      return v9;
    }

    goto LABEL_14;
  }

  CFRetain(@"MACaptionSystemDefaultProfile");
  if (a2)
  {
    *a2 = 0;
    if (a1)
    {
      v5 = @"MACaptionSystemDefaultProfile";
      goto LABEL_7;
    }
  }

  v5 = @"MACaptionSystemDefaultProfile";
  v9 = MACaptionAppearancePrefCopyFontForStyle(@"MACaptionSystemDefaultProfile", a3);
LABEL_14:
  CFRelease(v5);
  return v9;
}

uint64_t MAXCaptionAppearanceBehaviorCopyRelativeCharacterSize(MACaptionAppearanceDomain domain, CFNumberRef *a2)
{
  behavior = kMACaptionAppearanceBehaviorUseValue;
  RelativeCharacterSize = MACaptionAppearanceGetRelativeCharacterSize(domain, &behavior);
  if (a2)
  {
    *a2 = CFNumberCreate(0, kCFNumberCGFloatType, &RelativeCharacterSize);
  }

  return behavior;
}

uint64_t MAXCaptionAppearanceBehaviorGetTextEdgeStyle(MACaptionAppearanceDomain domain, _DWORD *a2)
{
  behavior = kMACaptionAppearanceBehaviorUseValue;
  TextEdgeStyle = MACaptionAppearanceGetTextEdgeStyle(domain, &behavior);
  if (a2)
  {
    *a2 = TextEdgeStyle;
  }

  return behavior;
}

CGColorRef MAXCaptionAppearanceCopyForegroundColor()
{
  v0 = MACaptionAppearancePrefCopyActiveProfileID();
  v1 = MACaptionAppearancePrefCopyForegroundColor(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

CGColorRef MAXCaptionAppearanceCopyBackgroundColor()
{
  v0 = MACaptionAppearancePrefCopyActiveProfileID();
  v1 = MACaptionAppearancePrefCopyBackgroundColor(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

CGColorRef MAXCaptionAppearanceCopyWindowColor()
{
  v0 = MACaptionAppearancePrefCopyActiveProfileID();
  v1 = MACaptionAppearancePrefCopyWindowColor(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

BOOL MAXCaptionAppearanceGetForegroundOpacity(void *a1)
{
  v2 = MACaptionAppearancePrefCopyActiveProfileID();
  v3 = MACaptionAppearancePrefCopyForegroundOpacity(v2);
  if (!v3)
  {
    v5 = 0;
    if (!v2)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v4 = v3;
  if (a1)
  {
    v5 = CFNumberGetValue(v3, kCFNumberCGFloatType, a1) != 0;
  }

  else
  {
    v5 = 1;
  }

  CFRelease(v4);
  if (v2)
  {
LABEL_8:
    CFRelease(v2);
  }

  return v5;
}

BOOL MAXCaptionAppearanceGetBackgroundOpacity(void *a1)
{
  v2 = MACaptionAppearancePrefCopyActiveProfileID();
  v3 = MACaptionAppearancePrefCopyBackgroundOpacity(v2);
  if (!v3)
  {
    v5 = 0;
    if (!v2)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v4 = v3;
  if (a1)
  {
    v5 = CFNumberGetValue(v3, kCFNumberCGFloatType, a1) != 0;
  }

  else
  {
    v5 = 1;
  }

  CFRelease(v4);
  if (v2)
  {
LABEL_8:
    CFRelease(v2);
  }

  return v5;
}

BOOL MAXCaptionAppearanceGetWindowOpacity(void *a1)
{
  v2 = MACaptionAppearancePrefCopyActiveProfileID();
  v3 = MACaptionAppearancePrefCopyWindowOpacity(v2);
  if (!v3)
  {
    v5 = 0;
    if (!v2)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v4 = v3;
  if (a1)
  {
    v5 = CFNumberGetValue(v3, kCFNumberCGFloatType, a1) != 0;
  }

  else
  {
    v5 = 1;
  }

  CFRelease(v4);
  if (v2)
  {
LABEL_8:
    CFRelease(v2);
  }

  return v5;
}

BOOL MAXCaptionAppearanceGetWindowRoundedCornerRadius(void *a1)
{
  v2 = MACaptionAppearancePrefCopyActiveProfileID();
  v3 = MACaptionAppearancePrefCopyWindowRoundedCornerRadius(v2);
  if (!v3)
  {
    v5 = 0;
    if (!v2)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v4 = v3;
  if (a1)
  {
    v5 = CFNumberGetValue(v3, kCFNumberCGFloatType, a1) != 0;
  }

  else
  {
    v5 = 1;
  }

  CFRelease(v4);
  if (v2)
  {
LABEL_8:
    CFRelease(v2);
  }

  return v5;
}

const __CFString *MAXCaptionAppearanceCopyFontForStyle(unsigned int a1)
{
  v2 = MACaptionAppearancePrefCopyActiveProfileID();
  v3 = MACaptionAppearancePrefCopyFontForStyle(v2, a1);
  if (v2)
  {
    CFRelease(v2);
  }

  return v3;
}

BOOL MAXCaptionAppearanceGetRelativeCharacterSize(void *a1)
{
  v2 = MACaptionAppearancePrefCopyActiveProfileID();
  v3 = MACaptionAppearancePrefCopyRelativeCharacterSize(v2);
  if (!v3)
  {
    v5 = 0;
    if (!v2)
    {
      return v5;
    }

    goto LABEL_8;
  }

  v4 = v3;
  if (a1)
  {
    v5 = CFNumberGetValue(v3, kCFNumberCGFloatType, a1) != 0;
  }

  else
  {
    v5 = 1;
  }

  CFRelease(v4);
  if (v2)
  {
LABEL_8:
    CFRelease(v2);
  }

  return v5;
}

uint64_t MAXCaptionAppearanceGetTextEdgeStyle()
{
  v0 = MACaptionAppearancePrefCopyActiveProfileID();
  v1 = MACaptionAppearancePrefCopyTextEdgeStyle(v0);
  if (!v1)
  {
    v3 = 0;
    if (!v0)
    {
      return v3;
    }

    goto LABEL_6;
  }

  v2 = v1;
  valuePtr = 0;
  if (CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr))
  {
    v3 = valuePtr;
  }

  else
  {
    v3 = 0;
  }

  CFRelease(v2);
  if (v0)
  {
LABEL_6:
    CFRelease(v0);
  }

  return v3;
}

void type metadata accessor for OptionKey()
{
  if (!qword_1EB6D0370)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB6D0370);
    }
  }
}

uint64_t sub_1B022CB4C()
{
  v1 = *v0;
  v2 = sub_1B022DB0C();
  v3 = MEMORY[0x1B2721790](v2);

  return v3;
}

uint64_t sub_1B022CB88()
{
  v1 = *v0;
  sub_1B022DB0C();
  sub_1B022DB1C();
}

uint64_t sub_1B022CBDC()
{
  v1 = *v0;
  sub_1B022DB0C();
  sub_1B022DB5C();
  sub_1B022DB1C();
  v2 = sub_1B022DB6C();

  return v2;
}

uint64_t sub_1B022CC58(uint64_t a1, id *a2)
{
  result = sub_1B022DAEC();
  *a2 = 0;
  return result;
}

uint64_t sub_1B022CCD0(uint64_t a1, id *a2)
{
  v3 = sub_1B022DAFC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B022CD50@<X0>(uint64_t *a1@<X8>)
{
  sub_1B022DB0C();
  v2 = sub_1B022DADC();

  *a1 = v2;
  return result;
}

uint64_t sub_1B022CD94(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1B022DB0C();
  v6 = v5;
  if (v4 == sub_1B022DB0C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B022DB4C();
  }

  return v9 & 1;
}

uint64_t sub_1B022CE1C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B022DADC();

  *a2 = v5;
  return result;
}

uint64_t sub_1B022CE64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_1B022DB0C();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1B022CE90(uint64_t a1)
{
  v2 = sub_1B022CFC4(&qword_1EB6D0390);
  v3 = sub_1B022CFC4(&qword_1EB6D0398);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B022CFC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OptionKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void MAFlashingLightsProcessor.processSurface(_:outSurface:timestamp:options:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a3;
  v8 = *a2;
  if (a3)
  {
    type metadata accessor for OptionKey();
    sub_1B022D114();
    v5 = sub_1B022DACC();
  }

  v9 = [v4 processSurface:a1 outSurface:v8 timestamp:v5 options:?];

  v10 = [v9 surfaceProcessed];
  [v9 mitigationLevel];
  v12 = v11;
  [v9 intensityLevel];
  v14 = v13;

  *a4 = v10;
  *(a4 + 4) = v12;
  *(a4 + 8) = v14;
}

unint64_t sub_1B022D114()
{
  result = qword_1EB6D0390;
  if (!qword_1EB6D0390)
  {
    type metadata accessor for OptionKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6D0390);
  }

  return result;
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s6ResultVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
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

uint64_t _s6ResultVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void MADimFlashingLightsEnabled_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean soft_AXSPhotosensitiveMitigationEnabled(void)"];
  [v0 handleFailureInFunction:v1 file:@"MAVideoAccommodations.m" lineNumber:13 description:{@"%s", dlerror()}];

  __break(1u);
}

void soft_AXSHapticMusicEnabled_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Boolean soft_AXSHapticMusicEnabled(void)"];
  [v0 handleFailureInFunction:v1 file:@"MAMusicHaptics.m" lineNumber:16 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getAXSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MAMusicHaptics.m" lineNumber:21 description:{@"Unable to find class %s", "AXSettings"}];

  __break(1u);
}

void __getAXSettingsClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MAMusicHaptics.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXUIClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXUIClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MAMusicHaptics.m" lineNumber:27 description:{@"Unable to find class %s", "AXUIClient"}];

  __break(1u);
}

void __getAXUIClientClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AccessibilityUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MAMusicHaptics.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void __getAXAccessQueueClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAXAccessQueueClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MAMusicHaptics.m" lineNumber:32 description:{@"Unable to find class %s", "AXAccessQueue"}];

  __break(1u);
}

void __getAXAccessQueueClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AXCoreUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MAMusicHaptics.m" lineNumber:31 description:{@"%s", *a1}];

  __break(1u);
}

void __getPSEVideoProcessorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPSEVideoProcessorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"MAFlashingLightsProcessing.m" lineNumber:14 description:{@"Unable to find class %s", "PSEVideoProcessor"}];

  __break(1u);
}

void __getPSEVideoProcessorClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotosensitivityProcessingLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"MAFlashingLightsProcessing.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}