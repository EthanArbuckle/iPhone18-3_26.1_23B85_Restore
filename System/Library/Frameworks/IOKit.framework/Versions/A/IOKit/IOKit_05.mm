__CFDictionary *IOPMCopyPreferencesOnFile()
{
  Mutable = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    for (i = 0; i != 3; ++i)
    {
      v2 = off_1E74A7978[i];
      v3 = copyPreferencesForSrc(v2);
      TypeID = CFDictionaryGetTypeID();
      if (v3 && CFGetTypeID(v3) == TypeID)
      {
        CFDictionarySetValue(Mutable, v2, v3);
        CFRelease(v3);
      }
    }
  }

  return Mutable;
}

__CFDictionary *IOPMCopyPMPreferences()
{
  v0 = copyPreferencesForSrc(@"AC Power");
  v1 = copyPreferencesForSrc(@"Battery Power");
  v2 = copyPreferencesForSrc(@"UPS Power");
  Mutable = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    SystemProvidedPreferences = getSystemProvidedPreferences();
    if (SystemProvidedPreferences)
    {
      v5 = SystemProvidedPreferences;
      Value = CFDictionaryGetValue(SystemProvidedPreferences, @"AC Power");
      if (Value)
      {
        v7 = Value;
        v8 = CFDictionaryGetValue(v5, @"Battery Power");
        if (v8)
        {
          v9 = v8;
          v10 = CFDictionaryGetValue(v5, @"Battery Power");
          if (v10)
          {
            v11 = v10;
            if (v0)
            {
              Count = CFDictionaryGetCount(v0);
              MutableCopy = CFDictionaryCreateMutableCopy(0, Count, v0);
            }

            else
            {
              MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            v14 = MutableCopy;
            if (MutableCopy)
            {
              mergeDictIntoMutable(MutableCopy, v7, 0);
              CFDictionarySetValue(Mutable, @"AC Power", v14);
              CFRelease(v14);
              if (v1)
              {
                v15 = CFDictionaryGetCount(v1);
                v16 = CFDictionaryCreateMutableCopy(0, v15, v1);
              }

              else
              {
                v16 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              }

              v17 = v16;
              if (v16)
              {
                mergeDictIntoMutable(v16, v9, 0);
                CFDictionarySetValue(Mutable, @"Battery Power", v17);
                CFRelease(v17);
                if (v2)
                {
                  v18 = CFDictionaryGetCount(v2);
                  v19 = CFDictionaryCreateMutableCopy(0, v18, v2);
                }

                else
                {
                  v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                }

                v20 = v19;
                if (v19)
                {
                  mergeDictIntoMutable(v19, v11, 0);
                  CFDictionarySetValue(Mutable, @"UPS Power", v20);
                  CFRelease(v20);
                  IOPMRemoveIrrelevantProperties(Mutable);
                }
              }
            }
          }
        }
      }

      CFRelease(v5);
    }
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  return Mutable;
}

__CFDictionary *getSystemProvidedPreferences()
{
  v0 = getPMRootDomainRef_cached_root_domain;
  if (!getPMRootDomainRef_cached_root_domain)
  {
    v0 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
    getPMRootDomainRef_cached_root_domain = v0;
    if (!v0)
    {
      return 0;
    }
  }

  allocator = *MEMORY[0x1E695E480];
  CFProperty = IORegistryEntryCreateCFProperty(v0, @"SystemPowerProfileOverrideDict", *MEMORY[0x1E695E480], 0);
  TypeID = CFDictionaryGetTypeID();
  v45 = CFProperty;
  if (!CFProperty)
  {
    v16 = 0;
    Copy = 0;
    cf = 0;
LABEL_17:
    v42 = 1;
    goto LABEL_21;
  }

  if (CFGetTypeID(CFProperty) != TypeID)
  {
    v16 = 0;
    Copy = 0;
    cf = 0;
    LODWORD(CFProperty) = 0;
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(CFProperty, @"AC Power");
  v4 = CFDictionaryGetValue(CFProperty, @"Battery Power");
  v5 = CFDictionaryGetValue(CFProperty, @"UPS Power");
  v6 = Value | v4 | v5;
  v7 = v6 != 0;
  if (v6)
  {
    if (Value)
    {
      v8 = v4 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || v5 == 0)
    {
      cf = v5;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      MutableCopy = 0;
      v15 = 0;
      goto LABEL_79;
    }

    Copy = v4;
  }

  else
  {
    Value = CFDictionaryCreateCopy(0, CFProperty);
    Copy = CFDictionaryCreateCopy(0, CFProperty);
    v5 = CFDictionaryCreateCopy(0, CFProperty);
  }

  cf = v5;
  v16 = Value;
  v42 = 0;
  LODWORD(CFProperty) = !v7;
  overridesSet = 1;
LABEL_21:
  v18 = MEMORY[0x1E695E9D8];
  v19 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v21 = CFDictionaryCreateMutable(0, 0, v18, v19);
  v22 = CFDictionaryCreateMutable(0, 0, v18, v19);
  v23 = &unk_1EAF1D170;
  v24 = 27;
  do
  {
    v25 = CFStringCreateWithCString(0, *(v23 - 1), 0);
    if (Mutable)
    {
      v26 = CFNumberCreate(0, kCFNumberSInt32Type, v23 + 4);
      CFDictionarySetValue(Mutable, v25, v26);
      CFRelease(v26);
    }

    if (v21)
    {
      v27 = CFNumberCreate(0, kCFNumberSInt32Type, v23);
      CFDictionarySetValue(v21, v25, v27);
      CFRelease(v27);
    }

    if (v22)
    {
      v28 = CFNumberCreate(0, kCFNumberSInt32Type, v23 + 1);
      CFDictionarySetValue(v22, v25, v28);
      CFRelease(v28);
    }

    CFRelease(v25);
    v23 += 3;
    --v24;
  }

  while (v24);
  if (Mutable)
  {
    CFDictionarySetValue(Mutable, @"Hibernate File", @"/var/vm/sleepimage");
  }

  Value = v16;
  v10 = CFProperty;
  if (v21)
  {
    CFDictionarySetValue(v21, @"Hibernate File", @"/var/vm/sleepimage");
  }

  v4 = Copy;
  CFProperty = v45;
  if (v22)
  {
    CFDictionarySetValue(v22, @"Hibernate File", @"/var/vm/sleepimage");
  }

  v48 = 0;
  if (!IOPSGetSupportedPowerSources(0, &v48, 0) && v48)
  {
    valuePtr = 3;
    v29 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
    if (Mutable)
    {
      CFDictionarySetValue(Mutable, @"Hibernate Mode", v29);
    }

    if (v21)
    {
      CFDictionarySetValue(v21, @"Hibernate Mode", v29);
    }

    if (v22)
    {
      CFDictionarySetValue(v22, @"Hibernate Mode", v29);
    }

    CFRelease(v29);
    v46 = 1;
    v30 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v46);
    if (v30)
    {
      v31 = v30;
      if (Mutable)
      {
        CFDictionarySetValue(Mutable, @"Standby Enabled", v30);
      }

      if (v21)
      {
        CFDictionarySetValue(v21, @"Standby Enabled", v31);
      }

      if (v22)
      {
        CFDictionarySetValue(v22, @"Standby Enabled", v31);
      }

      CFRelease(v31);
    }
  }

  v32 = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = v32;
  if (v32)
  {
    CFDictionaryAddValue(v32, @"AC Power", v21);
    CFDictionaryAddValue(v11, @"Battery Power", Mutable);
    CFDictionaryAddValue(v11, @"UPS Power", v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (!v11)
  {
    v15 = 0;
    MutableCopy = 0;
LABEL_70:
    v13 = 0;
    goto LABEL_71;
  }

  v33 = CFDictionaryGetValue(v11, @"AC Power");
  MutableCopy = v33;
  if (v33)
  {
    Count = CFDictionaryGetCount(v33);
    MutableCopy = CFDictionaryCreateMutableCopy(0, Count, MutableCopy);
    if (!MutableCopy)
    {
      v15 = 0;
      goto LABEL_70;
    }
  }

  v35 = CFDictionaryGetValue(v11, @"Battery Power");
  v13 = v35;
  if (v35)
  {
    v36 = CFDictionaryGetCount(v35);
    v13 = CFDictionaryCreateMutableCopy(0, v36, v13);
    if (!v13)
    {
      v15 = 0;
LABEL_71:
      v12 = 0;
      if (!v45)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }
  }

  v37 = CFDictionaryGetValue(v11, @"UPS Power");
  if (v37)
  {
    v38 = v37;
    v39 = CFDictionaryGetCount(v37);
    v12 = CFDictionaryCreateMutableCopy(0, v39, v38);
    if (!v12)
    {
      v15 = 0;
      if (!v45)
      {
        goto LABEL_80;
      }

      goto LABEL_79;
    }
  }

  else
  {
    v12 = 0;
  }

  if ((v42 & 1) == 0)
  {
    mergeDictIntoMutable(MutableCopy, Value, 1);
    mergeDictIntoMutable(v13, v4, 1);
    mergeDictIntoMutable(v12, cf, 1);
  }

  v40 = CFDictionaryCreateMutable(0, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v15 = v40;
  if (v40)
  {
    CFDictionaryAddValue(v40, @"AC Power", MutableCopy);
    CFDictionaryAddValue(v15, @"Battery Power", v13);
    CFDictionaryAddValue(v15, @"UPS Power", v12);
  }

  if (!v45)
  {
    goto LABEL_80;
  }

LABEL_79:
  CFRelease(CFProperty);
LABEL_80:
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
    if ((v10 & 1) == 0)
    {
      return v15;
    }
  }

  else if (!v10)
  {
    return v15;
  }

  if (Value)
  {
    CFRelease(Value);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v15;
}

uint64_t comparePrefsToDefaults(const __CFDictionary *a1, const void *a2)
{
  value = 0;
  if (!a1)
  {
    return 1;
  }

  Count = CFDictionaryGetCount(a1);
  if (!Count)
  {
    return 1;
  }

  v5 = Count;
  SystemProvidedPreferences = getSystemProvidedPreferences();
  v7 = CFDictionaryGetValue(SystemProvidedPreferences, a2);
  if (v7)
  {
    v8 = v7;
    if (CFDictionaryGetCount(v7))
    {
      v9 = malloc_type_malloc(8 * v5, 0x6004044C4A2DFuLL);
      v10 = malloc_type_malloc(8 * v5, 0xC0040B8AA526DuLL);
      v11 = v10;
      if (v9 && v10)
      {
        CFDictionaryGetKeysAndValues(a1, v9, v10);
        if (v5 < 1)
        {
LABEL_12:
          v14 = 1;
        }

        else
        {
          v12 = v9;
          v13 = v11;
          while (1)
          {
            value = 0;
            if (!CFDictionaryGetValueIfPresent(v8, *v12, &value) || !CFEqual(value, *v13))
            {
              break;
            }

            ++v13;
            ++v12;
            if (!--v5)
            {
              goto LABEL_12;
            }
          }

          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        if (!v9)
        {
LABEL_19:
          if (v11)
          {
            free(v11);
          }

          goto LABEL_21;
        }
      }

      free(v9);
      goto LABEL_19;
    }
  }

  v14 = 0;
LABEL_21:
  if (SystemProvidedPreferences)
  {
    CFRelease(SystemProvidedPreferences);
  }

  return v14;
}

uint64_t IOPMUsingDefaultPreferences(__CFString *a1)
{
  TypeID = CFStringGetTypeID();
  if (a1 && CFGetTypeID(a1) == TypeID)
  {
    v3 = copyPreferencesForSrc(a1);
    v4 = comparePrefsToDefaults(v3, a1);
    goto LABEL_12;
  }

  v5 = copyPreferencesForSrc(@"AC Power");
  v6 = copyPreferencesForSrc(@"Battery Power");
  v3 = copyPreferencesForSrc(@"UPS Power");
  if (!comparePrefsToDefaults(v5, @"AC Power") || !comparePrefsToDefaults(v6, @"Battery Power"))
  {
    v4 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = comparePrefsToDefaults(v3, @"UPS Power");
  if (v5)
  {
LABEL_9:
    CFRelease(v5);
  }

LABEL_10:
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_12:
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

uint64_t IOPMRevertPMPreferences(const __CFArray *a1)
{
  v2 = IOPMCopyPreferencesOnFile();
  if (!v2)
  {
    return 3758097097;
  }

  v3 = v2;
  if (IOPMUsingDefaultPreferences(0))
  {
    v4 = 0;
  }

  else
  {
    if (a1 && (Count = CFArrayGetCount(a1)) != 0)
    {
      if (Count >= 1)
      {
        v6 = 0;
        v7 = Count & 0x7FFFFFFF;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
          TypeID = CFStringGetTypeID();
          if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == TypeID)
          {
            updatePrefsDict(v3, @"AC Power", ValueAtIndex, 0);
            updatePrefsDict(v3, @"Battery Power", ValueAtIndex, 0);
            updatePrefsDict(v3, @"UPS Power", ValueAtIndex, 0);
          }

          ++v6;
        }

        while (v7 != v6);
      }

      v10 = v3;
    }

    else
    {
      v10 = 0;
    }

    v4 = IOPMSetPMPreferences(v10);
  }

  CFRelease(v3);
  return v4;
}

uint64_t IOPMSetPMPreferences(const __CFDictionary *a1)
{
  v2 = 3758097084;
  if (getuid() && geteuid())
  {
    return 3758097089;
  }

  if (!a1)
  {
    setPreferencesForSrc(@"AC Power", 0, 0);
    setPreferencesForSrc(@"Battery Power", 0, 0);
    if ((setPreferencesForSrc(@"UPS Power", 0, 1) & 1) == 0)
    {
      return v2;
    }

LABEL_10:
    notify_post("com.apple.system.powermanagement.prefschange");
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"AC Power");
  v4 = CFDictionaryGetValue(a1, @"Battery Power");
  v5 = CFDictionaryGetValue(a1, @"UPS Power");
  v6 = setPreferencesForSrc(@"AC Power", Value, (v4 | v5) == 0);
  v7 = setPreferencesForSrc(@"Battery Power", v4, v5 == 0);
  v8 = setPreferencesForSrc(@"UPS Power", v5, 1);
  if ((v6 & 1) != 0 || (v7 & 1) != 0 || v8)
  {
    goto LABEL_10;
  }

  return v2;
}

void updatePrefsDict(const __CFDictionary *a1, const void *a2, const void *a3, const void *a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v9 = Value;
    Count = CFDictionaryGetCount(Value);
    MutableCopy = CFDictionaryCreateMutableCopy(0, Count, v9);
    if (MutableCopy)
    {
      v12 = MutableCopy;
      if (a4)
      {
        CFDictionarySetValue(MutableCopy, a3, a4);
      }

      else
      {
        CFDictionaryRemoveValue(MutableCopy, a3);
      }

      CFDictionarySetValue(a1, a2, v12);

      CFRelease(v12);
    }
  }
}

uint64_t IOPMSetPMPreference(const void *a1, const void *a2, __CFString *a3)
{
  v6 = 3758097084;
  v7 = IOPMCopyPreferencesOnFile();
  if (!v7)
  {
    return v6;
  }

  v8 = v7;
  if (a3)
  {
    if (!CFDictionaryContainsKey(v7, a3))
    {
      v6 = 3758097090;
      goto LABEL_11;
    }

    v9 = v8;
    v10 = a3;
    if (!a1)
    {
      CFDictionaryRemoveValue(v8, a3);
LABEL_9:
      v6 = IOPMSetPMPreferences(v8);
LABEL_11:
      CFRelease(v8);
      return v6;
    }

LABEL_8:
    updatePrefsDict(v9, v10, a1, a2);
    goto LABEL_9;
  }

  if (a1)
  {
    updatePrefsDict(v7, @"AC Power", a1, a2);
    updatePrefsDict(v8, @"Battery Power", a1, a2);
    v10 = @"UPS Power";
    v9 = v8;
    goto LABEL_8;
  }

  CFRelease(v7);

  return IOPMSetPMPreferences(0);
}

uint64_t IOPMSetEnergyModePreference(const __CFString *a1, __CFString *cf1)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = 3758097084;
  if (!CFEqual(cf1, @"AC Power") && !CFEqual(cf1, @"Battery Power") || !CFEqual(a1, @"Automatic") && !CFEqual(a1, @"LowPowerMode") && !CFEqual(a1, @"HighPowerMode"))
  {
    v4 = 3758097090;
    goto LABEL_19;
  }

  if (CFEqual(a1, @"LowPowerMode"))
  {
    if ((IOPMFeatureIsAvailable(@"LowPowerMode", cf1) & 1) == 0)
    {
LABEL_14:
      v4 = 3758097126;
      goto LABEL_19;
    }
  }

  else if (CFEqual(a1, @"HighPowerMode") && !IOPMFeatureIsAvailable(@"HighPowerMode", cf1))
  {
    goto LABEL_14;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", global_queue, 0);
  if (mach_service)
  {
    v7 = mach_service;
    xpc_connection_set_target_queue(mach_service, global_queue);
    xpc_connection_set_event_handler(v7, &__block_literal_global_3);
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8)
    {
      v9 = v8;
      CFStringGetCString(a1, buffer, 32, 0x8000100u);
      xpc_dictionary_set_string(v9, "EnergyMode", buffer);
      CFStringGetCString(cf1, buffer, 32, 0x8000100u);
      xpc_dictionary_set_string(v9, "PowerSource", buffer);
      xpc_connection_resume(v7);
      xpc_connection_send_message(v7, v9);
      xpc_release(v9);
      v4 = 0;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      IOPMSetEnergyModePreference_cold_1();
    }

    xpc_release(v7);
  }

LABEL_19:
  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t IOPMFeatureIsAvailable(const void *a1, __CFString *a2)
{
  v4 = getPMRootDomainRef_cached_root_domain;
  if (!getPMRootDomainRef_cached_root_domain)
  {
    v4 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
    getPMRootDomainRef_cached_root_domain = v4;
    if (!v4)
    {
      return 0;
    }
  }

  CFProperty = IORegistryEntryCreateCFProperty(v4, @"Supported Features", *MEMORY[0x1E695E480], 0);
  if (!CFProperty)
  {
    return 0;
  }

  v6 = CFProperty;
  if (CFEqual(a1, @"DarkWakeBackgroundTasks") || CFEqual(a1, @"SleepServices"))
  {
    IsAvailableWithSupportedTable = 1;
  }

  else
  {
    IsAvailableWithSupportedTable = IOPMFeatureIsAvailableWithSupportedTable(a1, a2, v6);
  }

  CFRelease(v6);
  return IsAvailableWithSupportedTable;
}

uint64_t IOPMSetGamingEnergyModePreference(const __CFString *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = 3758097084;
  if (!CFEqual(a1, @"Automatic") && !CFEqual(a1, @"LowPowerMode") && !CFEqual(a1, @"HighPowerMode"))
  {
    v2 = 3758097090;
    goto LABEL_16;
  }

  if (CFEqual(a1, @"LowPowerMode"))
  {
    if ((IOPMFeatureIsAvailable(@"LowPowerMode", @"Battery Power") & 1) == 0)
    {
LABEL_12:
      v2 = 3758097126;
      goto LABEL_16;
    }
  }

  else if (CFEqual(a1, @"HighPowerMode") && !IOPMFeatureIsAvailable(@"HighPowerMode", @"Battery Power"))
  {
    goto LABEL_12;
  }

  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", global_queue, 0);
  if (mach_service)
  {
    v5 = mach_service;
    xpc_connection_set_target_queue(mach_service, global_queue);
    xpc_connection_set_event_handler(v5, &__block_literal_global_94);
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = v6;
      CFStringGetCString(a1, buffer, 32, 0x8000100u);
      xpc_dictionary_set_string(v7, "gamingEnergyMode", buffer);
      xpc_connection_resume(v5);
      xpc_connection_send_message(v5, v7);
      xpc_release(v7);
      v2 = 0;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      IOPMSetEnergyModePreference_cold_1();
    }

    xpc_release(v5);
  }

LABEL_16:
  v8 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t IOPMWriteToPrefs(__CFString *a1, const void *a2, int a3, int a4)
{
  if (getuid() && geteuid())
  {
    return 3758097089;
  }

  if (isA_GenericPref(a1))
  {
    HostPrefsPath = @"com.apple.PowerManagement";
  }

  else
  {
    HostPrefsPath = getHostPrefsPath();
  }

  v10 = *MEMORY[0x1E695E8A0];
  v11 = *MEMORY[0x1E695E8B0];
  CFPreferencesSetValue(a1, a2, HostPrefsPath, *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
  if (a3)
  {
    v12 = CFPreferencesSynchronize(HostPrefsPath, v10, v11);
    if (v12)
    {
      v13 = a4 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      if (!v12)
      {
        return 3758097084;
      }
    }

    else
    {
      notify_post("com.apple.system.powermanagement.prefschange");
    }
  }

  return 0;
}

uint64_t getPMRootDomainRef()
{
  result = getPMRootDomainRef_cached_root_domain;
  if (!getPMRootDomainRef_cached_root_domain)
  {
    result = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
    getPMRootDomainRef_cached_root_domain = result;
  }

  return result;
}

uint64_t IOPMFeatureIsAvailableWithSupportedTable(const void *a1, __CFString *a2, const __CFDictionary *a3)
{
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = @"AC Power";
  }

  if (!a3)
  {
    return 0;
  }

  if (CFEqual(a1, @"Display Sleep Timer") || CFEqual(a1, @"System Sleep Timer") || CFEqual(a1, @"Disk Sleep Timer") || CFEqual(a1, @"TTYSPreventSleep") || CFEqual(a1, @"SleepDisabled") || CFEqual(a1, @"DestroyFVKeyOnStandby") || CFEqual(a1, @"UnifiedSleepSliderPref") || CFEqual(a1, @"PowerNap") || CFEqual(a1, @"SleepServices") || CFEqual(a1, @"Standby Enabled"))
  {
    return 1;
  }

  if (CFEqual(a1, @"RestartAfterKernelPanic") || CFEqual(a1, @"Sleep On Power Button"))
  {
    return 0;
  }

  if (CFEqual(a1, @"ReduceBrightness"))
  {
    v8 = 0;
    IOPSGetSupportedPowerSources(0, &v8 + 1, &v8);
    return HIBYTE(v8) == 1 && !CFEqual(v3, @"AC Power") || v8 == 1 && CFDictionaryGetValue(a3, @"DisplayDims") && !CFEqual(v3, @"AC Power");
  }

  if (CFEqual(a1, @"Carrier Mode") || CFEqual(a1, @"Carrier Mode Low Voltage") || CFEqual(a1, @"Carrier Mode High Voltage"))
  {
    return 1;
  }

  result = supportedNameForPMName(a1);
  if (result)
  {
    v7 = result;
    if (CFEqual(result, @"Hibernation") && overridesSet != 1)
    {
      return 0;
    }

    result = CFDictionaryGetValue(a3, v7);
    if (result)
    {

      return featureSupportsPowerSource(result, v3);
    }
  }

  return result;
}

__CFString *supportedNameForPMName(const void *a1)
{
  if (CFEqual(a1, @"ReduceBrightness") || CFEqual(a1, @"Display Sleep Uses Dim"))
  {
    return @"DisplayDims";
  }

  if (CFEqual(a1, @"Wake On LAN") || CFEqual(a1, @"PrioritizeNetworkReachabilityOverSleep"))
  {
    return @"WakeOnMagicPacket";
  }

  if (CFEqual(a1, @"Mobile Motion Module"))
  {
    return @"MobileMotionModule";
  }

  if (CFEqual(a1, @"Hibernate Mode") || CFEqual(a1, @"Hibernate Free Ratio") || CFEqual(a1, @"Hibernate Free Time") || CFEqual(a1, @"Hibernate File"))
  {
    return @"Hibernation";
  }

  v3 = CFEqual(a1, @"Hibernation");
  result = @"Hibernation";
  if (!v3)
  {
    if (CFEqual(a1, @"Standby Enabled") || CFEqual(a1, @"Standby Delay") || CFEqual(a1, @"High Standby Delay") || CFEqual(a1, @"Standby Battery Threshold"))
    {
      return @"DeepSleep";
    }

    else if (CFEqual(a1, @"AutoPowerOff Enabled") || CFEqual(a1, @"AutoPowerOff Delay"))
    {
      return @"AutoPowerOff";
    }

    else if (CFEqual(a1, @"ProximityDarkWake"))
    {
      return @"ProximityWake";
    }

    else if (CFEqual(a1, @"Carrier Mode"))
    {
      return @"CarrierChargingMode";
    }

    else
    {
      v4 = CFEqual(a1, @"Carrier Mode High Voltage");
      result = @"CarrierChargingMode";
      if (!v4)
      {
        if (CFEqual(a1, @"Carrier Mode Low Voltage"))
        {
          return @"CarrierChargingMode";
        }

        else
        {
          return a1;
        }
      }
    }
  }

  return result;
}

uint64_t featureSupportsPowerSource(const __CFNumber *a1, const void *a2)
{
  valuePtr = 0;
  TypeID = CFNumberGetTypeID();
  if (a1)
  {
    if (CFGetTypeID(a1) == TypeID)
    {
      CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr + 4);
    }

    else
    {
      v5 = CFArrayGetTypeID();
      if (CFGetTypeID(a1) == v5)
      {
        Count = CFArrayGetCount(a1);
        v7 = Count;
        if (Count)
        {
          v8 = 0;
          v9 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
            v11 = CFNumberGetTypeID();
            if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v11)
            {
              CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr);
              v8 |= valuePtr;
              HIDWORD(valuePtr) = v8;
            }

            ++v9;
          }

          while (v7 != v9);
        }
      }
    }
  }

  else
  {
    CFArrayGetTypeID();
  }

  if (!a2)
  {
    return HIDWORD(valuePtr) != 0;
  }

  if (CFEqual(@"AC Power", a2))
  {
    return BYTE4(valuePtr) & 1;
  }

  if (CFEqual(@"Battery Power", a2))
  {
    return (BYTE4(valuePtr) >> 1) & 1;
  }

  result = CFEqual(@"UPS Power", a2);
  if (result)
  {
    return (BYTE4(valuePtr) >> 2) & 1;
  }

  return result;
}

void IOPMRemoveIrrelevantProperties(const __CFDictionary *a1)
{
  v2 = getPMRootDomainRef_cached_root_domain;
  if (getPMRootDomainRef_cached_root_domain || (v2 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain"), (getPMRootDomainRef_cached_root_domain = v2) != 0))
  {
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"Supported Features", *MEMORY[0x1E695E480], 0);
  }

  else
  {
    CFProperty = 0;
  }

  Count = CFDictionaryGetCount(a1);
  v5 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v6 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
  v7 = v6;
  if (!v5 || !v6)
  {
    goto LABEL_33;
  }

  v8 = checkPowerSourceSupported(@"Battery Power");
  v9 = checkPowerSourceSupported(@"UPS Power");
  CFDictionaryGetKeysAndValues(a1, v5, v7);
  if (Count >= 1)
  {
    v22 = v7;
    v23 = 0;
    keys = 0;
    v25 = v5;
    do
    {
      v10 = Count--;
      v11 = &v5[v10 - 1];
      while (1)
      {
        if (!((CFEqual(*v11, @"Battery Power") == 0) | v8 & 1) || !((CFEqual(*v11, @"UPS Power") == 0) | v9 & 1))
        {
          CFDictionaryRemoveValue(a1, *v11);
          goto LABEL_18;
        }

        Value = CFDictionaryGetValue(a1, *v11);
        TypeID = CFDictionaryGetTypeID();
        if (Value)
        {
          if (CFGetTypeID(Value) == TypeID)
          {
            MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
            if (MutableCopy)
            {
              break;
            }
          }
        }

        --Count;
        --v11;
        v15 = __OFSUB__(v10--, 1);
        if ((v10 < 0) ^ v15 | (v10 == 0))
        {
          v5 = v25;
          goto LABEL_29;
        }
      }

      v16 = MutableCopy;
      CFDictionarySetValue(a1, *v11, MutableCopy);
      CFRelease(v16);
      v20 = CFDictionaryGetCount(v16);
      keys = malloc_type_malloc(8 * v20, 0x6004044C4A2DFuLL);
      v17 = malloc_type_malloc(8 * v20, 0x6004044C4A2DFuLL);
      v23 = v17;
      if (keys && v17)
      {
        v21 = CFProperty;
        CFDictionaryGetKeysAndValues(v16, keys, v17);
        if (v20 >= 1)
        {
          v18 = (v20 & 0x7FFFFFFF) + 1;
          v19 = &keys[(v20 & 0x7FFFFFFF) - 1];
          do
          {
            if (!CFEqual(*v19, @"DarkWakeBackgroundTasks") && (IOPMFeatureIsAvailableWithSupportedTable(*v19, *v11, v21) & 1) == 0)
            {
              CFDictionaryRemoveValue(v16, *v19);
            }

            --v18;
            --v19;
          }

          while (v18 > 1);
        }

        free(keys);
        free(v23);
        v23 = 0;
        keys = 0;
        CFProperty = v21;
      }

LABEL_18:
      v5 = v25;
    }

    while (v10 > 1);
LABEL_29:
    if (keys)
    {
      free(keys);
    }

    v7 = v22;
    if (v23)
    {
      free(v23);
    }

LABEL_33:
    if (!v5)
    {
      goto LABEL_35;
    }
  }

  free(v5);
LABEL_35:
  if (v7)
  {
    free(v7);
  }

  if (CFProperty)
  {

    CFRelease(CFProperty);
  }
}

uint64_t checkPowerSourceSupported(const void *a1)
{
  if (CFEqual(a1, @"AC Power"))
  {
    v2 = 1;
  }

  else
  {
    v4 = 0;
    IOPSGetSupportedPowerSources(0, &v4 + 1, &v4);
    if (CFEqual(a1, @"Battery Power"))
    {
      v2 = HIBYTE(v4);
    }

    else if (CFEqual(a1, @"UPS Power"))
    {
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

CFPropertyListRef IOPMCopySystemPowerSettings()
{
  v0 = CFPreferencesCopyValue(@"SystemPowerSettings", @"com.apple.PowerManagement", *MEMORY[0x1E695E8A0], *MEMORY[0x1E695E8B0]);
  TypeID = CFDictionaryGetTypeID();
  if (!v0)
  {
    return 0;
  }

  if (CFGetTypeID(v0) == TypeID)
  {
    return v0;
  }

  return 0;
}

uint64_t doAMaintenanceWake(uint64_t a1, char a2)
{
  v4 = 3758097084;
  outputStruct = 0;
  outputStructCnt = 4;
  connect = 0;
  v5 = CFTimeZoneCreateWithTimeIntervalFromGMT(0, 0.0);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0x19A8DA8D0](a1);
    GregorianDate = CFAbsoluteTimeGetGregorianDate(v7, v6);
    CFRelease(v6);
    inputStruct = GregorianDate.year;
    month = GregorianDate.month;
    day = GregorianDate.day;
    hour = GregorianDate.hour;
    minute = GregorianDate.minute;
    second = GregorianDate.second;
    BYTE1(second) = a2;
    v9 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
    if (v9)
    {
      v10 = v9;
      if (IOServiceOpen(v9, *MEMORY[0x1E69E9A60], 0, &connect))
      {
        v11 = 1;
      }

      else
      {
        v12 = IOConnectCallStructMethod(connect, 8u, &inputStruct, 0xCuLL, &outputStruct, &outputStructCnt);
        IOServiceClose(connect);
        v11 = v12 != 0;
      }

      IOObjectRelease(v10);
      if (outputStruct)
      {
        v13 = 1;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        return 3758097084;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t IOPMCancelAllScheduledPowerEvents()
{
  v1 = 0;
  v2 = -536870199;
  if (_pm_connect(&v1))
  {
    v2 = -536870199;
  }

  else
  {
    io_pm_schedule_power_event(v1, 0, 0, 2, &v2);
  }

  if (v1)
  {
    _pm_disconnect();
  }

  return v2;
}

CFArrayRef IOPMCopyScheduledPowerEvents(void)
{
  v1 = 0;
  _copyPMServerObject(4u, 0, 0, &v1);
  return v1;
}

uint64_t IOHIDSessionFilterGetTypeID()
{
  result = __kIOHIDSessionFilterTypeID;
  if (!__kIOHIDSessionFilterTypeID)
  {
    pthread_once(&__systemFilterClientTypeInit, __IOHIDSessionFilterRegister);
    return __kIOHIDSessionFilterTypeID;
  }

  return result;
}

uint64_t __IOHIDSessionFilterRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOHIDSessionFilterTypeID = result;
  return result;
}

uint64_t IOHIDSessionFilterFilterCopyEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  if ((!v6 || (v7 = *(*v6 + 40)) == 0) && ((v8 = *(a1 + 24)) == 0 || (v7 = *(*v8 + 40)) == 0) || (result = v7()) == 0)
  {
    if (*(a1 + 48) == 1)
    {
      v10 = _IOHIDLogCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        Type = IOHIDEventGetType(a3);
        if (a2)
        {
          SenderID = _IOHIDServiceGetSenderID(a2);
        }

        else
        {
          SenderID = 0;
        }

        v14 = *(a1 + 32);
        v15[0] = 67109634;
        v15[1] = Type;
        v16 = 2048;
        v17 = SenderID;
        v18 = 2112;
        v19 = v14;
        _os_log_debug_impl(&dword_197195000, v10, OS_LOG_TYPE_DEBUG, "Filter Copy Event filtered type:%d service:0x%llx session filter:%@", v15, 0x1Cu);
      }
    }

    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOHIDSessionFilterCopyEvent(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(*v2 + 48);
    if (v3)
    {
      return v3();
    }
  }

  v4 = *(a1 + 24);
  if (v4 && (v3 = *(*v4 + 48)) != 0)
  {
    return v3();
  }

  else
  {
    return 0;
  }
}

uint64_t IOHIDSessionFilterOpen(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(*v1 + 56)) != 0)
  {
    return v2();
  }

  else
  {
    return 1;
  }
}

id IOHIDSessionFilterClose(id result)
{
  v1 = *(result + 2);
  if (v1)
  {
    v2 = *(*v1 + 64);
    if (v2)
    {
      return v2(*(result + 2));
    }
  }

  if (*(result + 7))
  {
    v3 = *(result + 12);
    if (v3)
    {
      return [*(result + 7) v3];
    }
  }

  return result;
}

id IOHIDSessionFilterScheduleWithDispatchQueue(void *a1, dispatch_object_t object)
{
  v4 = a1[16];
  if (v4)
  {
    dispatch_release(v4);
    a1[16] = 0;
  }

  if (object)
  {
    a1[16] = object;
    dispatch_retain(object);
  }

  v5 = a1[2];
  if (v5 && (v6 = *(*v5 + 104)) != 0)
  {
    v7 = a1[16];

    return v6();
  }

  else
  {
    result = a1[7];
    if (result)
    {
      v9 = a1[14];
      if (v9)
      {
        [result v9];
        result = a1[7];
      }

      v10 = a1[11];

      return [result v10];
    }
  }

  return result;
}

void __IOHIDSessionFilterRelease(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[16];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = a1[4];
  if (v7)
  {

    CFRelease(v7);
  }
}

CFStringRef __IOHIDSessionFilterCopyDebugDescription(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = CFCopyDescription(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = CFGetAllocator(a1);
  v5 = &stru_1F0B93200;
  if (v3)
  {
    v5 = v3;
  }

  v6 = CFStringCreateWithFormat(v4, 0, @"IOHIDSessionFilterRef uuid:%@ name:%@ %@", a1[4], a1[5], v5);
  if (v3)
  {
    CFRelease(v3);
  }

  return v6;
}

uint64_t IOPMScheduleRepeatingPowerEvent(const void *a1)
{
  v2 = 3758097090;
  v10 = 0;
  v11 = -536870212;
  TypeID = CFDictionaryGetTypeID();
  if (!a1 || CFGetTypeID(a1) != TypeID)
  {
    return v2;
  }

  if (_pm_connect(&v10))
  {
    v4 = 0;
  }

  else
  {
    Data = CFPropertyListCreateData(0, a1, kCFPropertyListBinaryFormat_v1_0, 0, 0);
    v4 = Data;
    if (!Data)
    {
      v11 = -536870206;
      goto LABEL_6;
    }

    v7 = v10;
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v4);
    if (!io_pm_schedule_repeat_event(v7, BytePtr, Length, 1, &v11))
    {
      goto LABEL_6;
    }
  }

  v11 = -536870199;
LABEL_6:
  if (v10)
  {
    _pm_disconnect();
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v11;
}

CFPropertyListRef IOPMCopyRepeatingPowerEvents()
{
  v1 = 0;
  _copyPMServerObject(5u, 0, 0, &v1);
  return v1;
}

uint64_t IOPMCancelAllRepeatingPowerEvents()
{
  v1 = 0;
  v2 = -536870212;
  if (_pm_connect(&v1))
  {
    return -536870199;
  }

  else
  {
    if (io_pm_cancel_repeat_events(v1, &v2))
    {
      v2 = -536870199;
    }

    if (v1)
    {
      _pm_disconnect();
    }
  }

  return v2;
}

uint64_t IOPMSetUPSShutdownLevels(__CFString *a1, const void *a2)
{
  v2 = 3758097090;
  v7 = 0;
  if (a2)
  {
    valid = _validUPSShutdownSettings(a2);
    if (a1)
    {
      if (valid && _validUPSIdentifier(a1))
      {
        IOPSGetSupportedPowerSources(0, 0, &v7);
        if (v7)
        {
          return IOPMWriteToPrefs(a1, a2, 1, 1);
        }

        else
        {
          return 3758097088;
        }
      }
    }
  }

  return v2;
}

uint64_t _validUPSShutdownSettings(const void *a1)
{
  TypeID = CFDictionaryGetTypeID();
  if (!a1)
  {
    return 0;
  }

  if (CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"UPSShutdownAtLevel");
  if (Value)
  {
    v4 = Value;
    v5 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v4) != v5)
    {
      return 0;
    }

    v6 = CFDictionaryGetValue(v4, @"Value");
    v7 = CFDictionaryGetValue(v4, @"Enabled");
    v8 = CFNumberGetTypeID();
    if (!v6)
    {
      return 0;
    }

    if (CFGetTypeID(v6) != v8)
    {
      return 0;
    }

    v9 = CFBooleanGetTypeID();
    if (!v7 || CFGetTypeID(v7) != v9)
    {
      return 0;
    }
  }

  v10 = CFDictionaryGetValue(a1, @"UPSShutdownAfterMinutes");
  if (v10)
  {
    v11 = v10;
    v12 = CFDictionaryGetTypeID();
    if (CFGetTypeID(v11) != v12)
    {
      return 0;
    }

    v13 = CFDictionaryGetValue(v11, @"Value");
    v14 = CFDictionaryGetValue(v11, @"Enabled");
    v15 = CFNumberGetTypeID();
    if (!v13)
    {
      return 0;
    }

    if (CFGetTypeID(v13) != v15)
    {
      return 0;
    }

    v16 = CFBooleanGetTypeID();
    if (!v14 || CFGetTypeID(v14) != v16)
    {
      return 0;
    }
  }

  v17 = CFDictionaryGetValue(a1, @"UPSShutdownAtMinutesLeft");
  if (!v17)
  {
    return 1;
  }

  v18 = v17;
  v19 = CFDictionaryGetTypeID();
  if (CFGetTypeID(v18) == v19 && (v20 = CFDictionaryGetValue(v18, @"Value"), v21 = CFDictionaryGetValue(v18, @"Enabled"), v22 = CFNumberGetTypeID(), v20) && CFGetTypeID(v20) == v22 && (v23 = CFBooleanGetTypeID(), v21) && CFGetTypeID(v21) == v23)
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

__CFDictionary *IOPMCopyUPSShutdownLevels(__CFString *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0;
  if (!a1 || !_validUPSIdentifier(a1) || (IOPSGetSupportedPowerSources(0, 0, &v18), !v18))
  {
    v12 = 0;
    goto LABEL_16;
  }

  v2 = IOPMCopyFromPrefs(0, a1);
  v3 = MEMORY[0x1E695E480];
  if (!v2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      goto LABEL_6;
    }

LABEL_18:
    v12 = 0;
    if (!v2)
    {
      goto LABEL_16;
    }

LABEL_19:
    CFRelease(v2);
    goto LABEL_16;
  }

  Mutable = CFDictionaryCreateMutableCopy(0, 0, v2);
  if (!Mutable)
  {
    goto LABEL_18;
  }

LABEL_6:
  theDict = Mutable;
  cf = v2;
  v5 = 0;
  value = 0;
  v21 = 0;
  v22 = 0;
  v6 = *v3;
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  v9 = *MEMORY[0x1E695E4C0];
  do
  {
    valuePtr = 0;
    v10 = CFDictionaryCreateMutable(v6, 0, v7, v8);
    v11 = CFNumberCreate(v6, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(v10, @"Value", v11);
    CFRelease(v11);
    CFDictionarySetValue(v10, @"Enabled", v9);
    *(&value + v5) = v10;
    v5 += 8;
  }

  while (v5 != 24);
  v12 = theDict;
  CFDictionaryAddValue(theDict, @"UPSShutdownAtLevel", value);
  CFDictionaryAddValue(theDict, @"UPSShutdownAfterMinutes", v21);
  CFDictionaryAddValue(theDict, @"UPSShutdownAtMinutesLeft", v22);
  for (i = 0; i != 24; i += 8)
  {
    CFRelease(*(&value + i));
  }

  if (!CFDictionaryGetCount(theDict) || (_validUPSShutdownSettings(theDict) & 1) == 0)
  {
    CFRelease(theDict);
    v12 = 0;
  }

  v2 = cf;
  if (cf)
  {
    goto LABEL_19;
  }

LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

IOReturn IONetworkWriteData(io_connect_t conObj, IONDHandle dataHandle, UInt8 *srcBuf, UInt32 inSize)
{
  v4 = -536870206;
  if (srcBuf && inSize)
  {
    input = dataHandle;
    return IOConnectCallMethod(conObj, 1u, &input, 1u, srcBuf, inSize, 0, 0, 0, 0);
  }

  return v4;
}

IOReturn IONetworkReadData(io_connect_t conObj, IONDHandle dataHandle, UInt8 *destBuf, UInt32 *inOutSizeP)
{
  v4 = -536870206;
  if (destBuf && inOutSizeP)
  {
    v7 = *inOutSizeP;
    input = dataHandle;
    v4 = IOConnectCallMethod(conObj, 2u, &input, 1u, 0, 0, 0, 0, destBuf, &v7);
    *inOutSizeP = v7;
  }

  return v4;
}

IOReturn IONetworkGetDataCapacity(io_connect_t conObject, IONDHandle dataHandle, UInt32 *capacityP)
{
  if (!capacityP)
  {
    return -536870206;
  }

  output = *capacityP;
  input = dataHandle;
  outputCnt = 1;
  result = IOConnectCallScalarMethod(conObject, 3u, &input, 1u, &output, &outputCnt);
  *capacityP = output;
  return result;
}

IOReturn IONetworkGetDataHandle(io_connect_t conObject, const char *dataName, IONDHandle *dataHandleP)
{
  result = -536870206;
  if (dataName)
  {
    if (dataHandleP)
    {
      outputStructCnt = 4;
      v7 = strlen(dataName);
      return IOConnectCallStructMethod(conObject, 4u, dataName, v7 + 1, dataHandleP, &outputStructCnt);
    }
  }

  return result;
}

IOReturn IONetworkGetPacketFiltersMask(io_connect_t connect, const io_name_t filterGroup, UInt32 *filtersMask, IOOptionBits options)
{
  v4 = options;
  v25 = *MEMORY[0x1E69E9840];
  service = 0;
  cf = 0;
  values = 0;
  v24 = 0;
  *filtersMask = 0;
  ParentEntry = IOConnectGetService(connect, &service);
  if (ParentEntry)
  {
    goto LABEL_6;
  }

  v8 = service;
  if (v4)
  {
    parent[0] = 0;
    ParentEntry = IORegistryEntryGetParentEntry(service, "IOService", parent);
    if (ParentEntry)
    {
LABEL_6:
      v10 = ParentEntry;
      v11 = 0;
      v12 = 0;
      goto LABEL_7;
    }

    IOObjectRelease(service);
    v8 = parent[0];
    service = parent[0];
  }

  v9 = *MEMORY[0x1E695E480];
  ParentEntry = IORegistryEntryCreateCFProperties(v8, &cf, *MEMORY[0x1E695E480], 0);
  if (ParentEntry)
  {
    goto LABEL_6;
  }

  v10 = -536870211;
  SystemEncoding = CFStringGetSystemEncoding();
  v16 = CFStringCreateWithCString(v9, filterGroup, SystemEncoding);
  v12 = v16;
  if (v16)
  {
    v17 = @"IOPacketFilters";
    if ((v4 & 1) == 0)
    {
      v17 = @"IORequiredPacketFilters";
    }

    values = v17;
    v24 = v16;
    v11 = CFArrayCreate(0, &values, 2, MEMORY[0x1E695E9C0]);
    if (v11)
    {
      v18 = cf;
      TypeID = CFNumberGetTypeID();
      *parent = v18;
      v26.length = CFArrayGetCount(v11);
      v26.location = 0;
      CFArrayApplyFunction(v11, v26, GetDictionaryValueUsingKeysApplier, parent);
      if (*parent && CFGetTypeID(*parent) == TypeID && *parent)
      {
        CFNumberGetValue(*parent, kCFNumberSInt32Type, filtersMask);
        v10 = 0;
      }

      else
      {
        v10 = -536870160;
      }
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (service)
  {
    IOObjectRelease(service);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

IOReturn IONetworkSetPacketFiltersMask(io_connect_t connect, const io_name_t filterGroup, UInt32 filtersMask, IOOptionBits options)
{
  keys[1] = *MEMORY[0x1E69E9840];
  v6 = -536870211;
  valuePtr = filtersMask;
  v7 = *MEMORY[0x1E695E480];
  v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  if (v8)
  {
    v9 = v8;
    SystemEncoding = CFStringGetSystemEncoding();
    v11 = CFStringCreateWithCString(v7, filterGroup, SystemEncoding);
    if (!v11)
    {
      v16 = v9;
LABEL_20:
      CFRelease(v16);
      goto LABEL_21;
    }

    v12 = v11;
    values[0] = @"IONetworkInterfaceProperties";
    values[1] = @"IORequiredPacketFilters";
    values[2] = v11;
    v13 = CFArrayCreate(0, values, 3, MEMORY[0x1E695E9C0]);
    v14 = v13;
    if (v13)
    {
      v27 = 0;
      keys[0] = 0;
      Count = CFArrayGetCount(v13);
      v16 = 0;
      v17 = MEMORY[0x1E695E528];
      v18 = MEMORY[0x1E695E9E8];
      while (Count-- >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v14, Count);
        if (v16)
        {
          v21 = v16;
        }

        else
        {
          v21 = v9;
        }

        v27 = v21;
        keys[0] = ValueAtIndex;
        v22 = CFDictionaryCreate(0, keys, &v27, 1, v17, v18);
        if (v16)
        {
          CFRelease(v16);
        }

        v16 = v22;
        if (!v22)
        {
          goto LABEL_17;
        }
      }

      if (v16)
      {
        v6 = IOConnectSetCFProperties(connect, v16);
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_17:
    CFRelease(v9);
    CFRelease(v12);
    if (v14)
    {
      CFRelease(v14);
    }

    if (v16)
    {
      goto LABEL_20;
    }
  }

LABEL_21:
  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

CFDictionaryRef GetDictionaryValueUsingKeysApplier(const void *a1, CFDictionaryRef *a2)
{
  result = *a2;
  if (*a2)
  {
    v5 = CFGetTypeID(result);
    if (v5 == CFDictionaryGetTypeID())
    {
      result = CFDictionaryGetValue(*a2, a1);
    }

    else
    {
      result = 0;
    }
  }

  *a2 = result;
  return result;
}

NXEventHandle NXOpenEventStatus(void)
{
  *mainPort = 0;
  if (IOMasterPort(0, mainPort))
  {
    return 0;
  }

  result = IORegistryEntryFromPath(mainPort[0], "IOService:/IOResources/IOHIDSystem");
  if (result)
  {
    v1 = result;
    IOServiceOpen(result, *MEMORY[0x1E69E9A60], 1u, &mainPort[1]);
    IOObjectRelease(v1);
    return mainPort[1];
  }

  return result;
}

NXEventSystemInfoType NXEventSystemInfo(NXEventHandle handle, char *flavor, int *evs_info, unsigned int *evs_info_cnt)
{
  v6 = *evs_info_cnt;
  *service = 0;
  if (IOConnectGetService(handle, &service[1]))
  {
    return 0;
  }

  CFProperty = IORegistryEntryCreateCFProperty(service[1], @"NXSystemInfo", *MEMORY[0x1E695E480], 0);
  IOObjectRelease(service[1]);
  if (CFProperty)
  {
    v8 = v6 >> 2;
    Count = CFArrayGetCount(CFProperty);
    if (v8 >= Count)
    {
      v10 = Count;
    }

    else
    {
      v10 = v8;
    }

    if (v10 >= 1)
    {
      v11 = 0;
      v12 = evs_info + 2;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(CFProperty, v11);
        if (ValueAtIndex)
        {
          v14 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, @"HIDKind");
          if (Value)
          {
            CFNumberGetValue(Value, kCFNumberSInt32Type, service);
            *v12 = service[0];
            v16 = CFDictionaryGetValue(v14, @"HIDInterfaceID");
            if (v16)
            {
              CFNumberGetValue(v16, kCFNumberSInt32Type, service);
              v17 = service[0];
            }

            else
            {
              v17 = 0;
              service[0] = 0;
            }

            *(v12 - 2) = v17;
            v18 = CFDictionaryGetValue(v14, @"HIDSubinterfaceID");
            if (v18)
            {
              CFNumberGetValue(v18, kCFNumberSInt32Type, service);
              v19 = service[0];
            }

            else
            {
              v19 = 0;
              service[0] = 0;
            }

            v12[1] = v19;
            *(v12 - 1) = 0;
          }
        }

        ++v11;
        v12 += 4;
      }

      while (v10 != v11);
    }

    CFRelease(CFProperty);
    v20 = 4 * v10;
  }

  else
  {
    v20 = 0;
  }

  *evs_info_cnt = v20;
  return evs_info;
}

uint64_t IOHIDCopyHIDParameterFromEventSystem(io_connect_t a1, const __CFString *a2, void *a3)
{
  v6 = IOHIDEventSystemClientCreateWithType(*MEMORY[0x1E695E480], 2, 0);
  if (v6)
  {
    v7 = v6;
    service = 0;
    if (!IOConnectGetService(a1, &service))
    {
      if (IOObjectConformsTo(service, "IOHIDSystem"))
      {
        v11 = IOHIDEventSystemClientCopyProperty(v7, a2);
      }

      else
      {
        v14 = 0;
        if (IORegistryEntryGetRegistryEntryID(service, &v14) || (v12 = IOHIDEventSystemClientCopyServiceForRegistryID(v7, v14)) == 0)
        {
          v11 = 0;
        }

        else
        {
          v13 = v12;
          v11 = IOHIDServiceClientCopyProperty(v12, a2);
          CFRelease(v13);
        }
      }

      IOObjectRelease(service);
      if (v11)
      {
        *a3 = v11;
        CFRelease(v7);
        return 0;
      }
    }

    CFRelease(v7);
  }

  v8 = 3758097112;
  v9 = _IOHIDLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    IOHIDCopyHIDParameterFromEventSystem_cold_1(v9);
  }

  return v8;
}

uint64_t IOHIDSetHIDParameterToEventSystem(io_connect_t a1, const __CFString *a2, const void *a3)
{
  v6 = 3758097095;
  v7 = IOHIDEventSystemClientCreateWithType(*MEMORY[0x1E695E480], 2, 0);
  if (!v7)
  {
    v6 = 3758097112;
LABEL_14:
    v11 = _IOHIDLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      IOHIDSetHIDParameterToEventSystem_cold_1(v6, v11);
    }

    return v6;
  }

  v8 = v7;
  service = 0;
  if (IOConnectGetService(a1, &service))
  {
    CFRelease(v8);
    goto LABEL_14;
  }

  if (IOObjectConformsTo(service, "IOHIDSystem"))
  {
    IOHIDEventSystemClientSetProperty(v8, a2, a3);
    v6 = 0;
  }

  else
  {
    v13 = 0;
    if (!IORegistryEntryGetRegistryEntryID(service, &v13))
    {
      v9 = IOHIDEventSystemClientCopyServiceForRegistryID(v8, v13);
      if (v9)
      {
        v10 = v9;
        if (IOHIDServiceClientSetProperty(v9, a2, a3))
        {
          v6 = 0;
        }

        else
        {
          v6 = 3758097097;
        }

        CFRelease(v10);
      }
    }
  }

  IOObjectRelease(service);
  CFRelease(v8);
  if (v6)
  {
    goto LABEL_14;
  }

  return v6;
}

kern_return_t IOHIDSetParameter(io_connect_t handle, CFStringRef key, const void *bytes, IOByteCount size)
{
  v4 = -536870212;
  if (!bytes || !size)
  {
    return v4;
  }

  if (size > 8)
  {
    v7 = kCFNumberSInt32Type;
  }

  else
  {
    v7 = qword_19723D818[size - 1];
  }

  v8 = CFNumberCreate(*MEMORY[0x1E695E480], v7, bytes);
  if (!v8)
  {
    return -536870211;
  }

  v9 = v8;
  if (!CFEqual(@"HIDWaitCursorFrameInterval", key))
  {
    IOHIDSetHIDParameterToEventSystem(handle, key, v9);
  }

  v10 = IOConnectSetCFProperty(handle, key, v9);
  CFRelease(v9);
  return v10;
}

kern_return_t IOHIDSetCFTypeParameter(io_connect_t handle, CFStringRef key, CFTypeRef parameter)
{
  if (!parameter)
  {
    return -536870206;
  }

  IOHIDSetHIDParameterToEventSystem(handle, key, parameter);

  return IOConnectSetCFProperty(handle, key, parameter);
}

kern_return_t IOHIDGetParameter(io_connect_t handle, CFStringRef key, IOByteCount maxSize, void *bytes, IOByteCount *actualSize)
{
  parameter = 0;
  v5 = -536870206;
  if (maxSize && bytes)
  {
    v8 = maxSize;
    result = IOHIDCopyCFTypeParameter(handle, key, &parameter);
    if (result)
    {
      return result;
    }

    v10 = parameter;
    if (parameter)
    {
      bzero(bytes, v8);
      v11 = CFGetTypeID(v10);
      TypeID = CFDataGetTypeID();
      v13 = parameter;
      if (v11 == TypeID)
      {
        Length = CFDataGetLength(parameter);
        *actualSize = Length;
        if (Length < v8)
        {
          v8 = Length;
        }

        BytePtr = CFDataGetBytePtr(v13);
        memmove(bytes, BytePtr, v8);
      }

      else
      {
        v16 = CFGetTypeID(parameter);
        if (v16 != CFNumberGetTypeID())
        {
LABEL_20:
          CFRelease(parameter);
          return v5;
        }

        v17 = parameter;
        ByteSize = CFNumberGetByteSize(parameter);
        *actualSize = ByteSize;
        if (ByteSize >= v8)
        {
          v19 = v8;
        }

        else
        {
          v19 = ByteSize;
        }

        v20 = v19 - 1;
        if (v20 > 7)
        {
          v21 = kCFNumberSInt32Type;
        }

        else
        {
          v21 = qword_19723D818[v20];
        }

        CFNumberGetValue(v17, v21, bytes);
      }

      v5 = 0;
      goto LABEL_20;
    }
  }

  return -536870206;
}

kern_return_t IOHIDCopyCFTypeParameter(io_connect_t handle, CFStringRef key, CFTypeRef *parameter)
{
  service = 0;
  if (!parameter)
  {
    return -536870212;
  }

  if (IOConnectGetService(handle, &service))
  {
    goto LABEL_3;
  }

  v8 = *MEMORY[0x1E695E480];
  CFProperty = IORegistryEntryCreateCFProperty(service, @"HIDParameters", *MEMORY[0x1E695E480], 0);
  if (CFProperty)
  {
    v10 = CFProperty;
    Value = CFDictionaryGetValue(CFProperty, key);
    if (Value)
    {
      v12 = Value;
      CFRetain(Value);
      CFRelease(v10);
      v6 = 0;
      *parameter = v12;
      goto LABEL_4;
    }

    CFRelease(v10);
  }

  v13 = IORegistryEntryCreateCFProperty(service, key, v8, 0);
  v6 = 0;
  *parameter = v13;
  if (!v13)
  {
LABEL_3:
    v6 = IOHIDCopyHIDParameterFromEventSystem(handle, key, parameter);
  }

LABEL_4:
  if (service)
  {
    IOObjectRelease(service);
  }

  return v6;
}

void NXResetKeyboard(NXEventHandle handle)
{
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  if (v2)
  {
    v3 = v2;
    IOHIDSetHIDParameterToEventSystem(handle, @"HIDResetKeyboard", v2);
    IOConnectSetCFProperty(handle, @"HIDResetKeyboard", v3);
    CFRelease(v3);
  }
}

double NXKeyRepeatInterval(NXEventHandle handle)
{
  bytes = 0;
  v1 = IOHIDGetParameter(handle, @"HIDKeyRepeat", 8uLL, &bytes, &v3);
  result = 0.0;
  if (!v1)
  {
    return bytes / 1000.0 / 1000.0 / 1000.0;
  }

  return result;
}

double NXKeyRepeatThreshold(NXEventHandle handle)
{
  bytes = 0;
  v1 = IOHIDGetParameter(handle, @"HIDInitialKeyRepeat", 8uLL, &bytes, &v3);
  result = 0.0;
  if (!v1)
  {
    return bytes / 1000.0 / 1000.0 / 1000.0;
  }

  return result;
}

CFDataRef NXSetKeyMapping(io_connect_t a1, const UInt8 **a2)
{
  v2 = *a2;
  if (v2 > 4096)
  {
    return 0;
  }

  result = CFDataCreate(*MEMORY[0x1E695E480], a2[1], v2);
  if (result)
  {
    v6 = result;
    IOHIDSetHIDParameterToEventSystem(a1, @"HIDKeyMapping", result);
    v7 = IOConnectSetCFProperty(a1, @"HIDKeyMapping", v6);
    CFRelease(v6);
    if (v7)
    {
      return 0;
    }

    else
    {
      return a2;
    }
  }

  return result;
}

IOByteCount *NXGetKeyMapping(io_connect_t a1, IOByteCount *actualSize)
{
  if (IOHIDGetParameter(a1, @"HIDKeyMapping", *actualSize, actualSize[1], actualSize))
  {
    return 0;
  }

  else
  {
    return actualSize;
  }
}

void NXResetMouse(NXEventHandle handle)
{
  v2 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, valuePtr);
  if (v2)
  {
    v3 = v2;
    IOHIDSetHIDParameterToEventSystem(handle, @"HIDResetPointer", v2);
    IOConnectSetCFProperty(handle, @"HIDResetPointer", v3);
    CFRelease(v3);
  }
}

double NXClickTime(NXEventHandle handle)
{
  bytes = 0;
  v1 = IOHIDGetParameter(handle, @"HIDClickTime", 8uLL, &bytes, &v3);
  result = 0.0;
  if (!v1)
  {
    return bytes / 1000.0 / 1000.0 / 1000.0;
  }

  return result;
}

void NXSetClickSpace(NXEventHandle handle, NXSize *area)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = vcvt_u32_f32(*area);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v5 = Mutable;
    v6 = 0;
    v7 = v13;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = CFNumberCreate(v3, kCFNumberSInt32Type, v7);
      if (v10)
      {
        v11 = v10;
        CFArraySetValueAtIndex(v5, v6, v10);
        CFRelease(v11);
      }

      v8 = 0;
      v7 = v13 + 4;
      v6 = 1;
    }

    while ((v9 & 1) != 0);
    IOHIDSetHIDParameterToEventSystem(handle, @"HIDClickSpace", v5);
    IOConnectSetCFProperty(handle, @"HIDClickSpace", v5);
    CFRelease(v5);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void NXGetClickSpace(NXEventHandle handle, NXSize *area)
{
  v13[1] = *MEMORY[0x1E69E9840];
  parameter = 0;
  v3 = 0;
  if (!IOHIDCopyCFTypeParameter(handle, @"HIDClickSpace", &parameter))
  {
    if (parameter)
    {
      v5 = CFGetTypeID(parameter);
      if (v5 == CFArrayGetTypeID())
      {
        v6 = parameter;
        Count = CFArrayGetCount(parameter);
        if (Count)
        {
          v8 = 0;
          if (Count == 1)
          {
            v9 = 1;
          }

          else
          {
            v9 = 2;
          }

          v10 = v13;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
            if (ValueAtIndex)
            {
              CFNumberGetValue(ValueAtIndex, kCFNumberIntType, v10);
            }

            ++v8;
            v10 = (v10 + 4);
          }

          while (v9 != v8);
        }

        CFRelease(v6);
        v3 = vcvt_f32_u32(v13[0]);
      }
    }
  }

  *area = v3;
  v4 = *MEMORY[0x1E69E9840];
}

kern_return_t IOHIDGetScrollAcceleration(io_connect_t handle, double *acceleration)
{
  bytes = 0;
  result = IOHIDGetParameter(handle, @"HIDScrollAcceleration", 4uLL, &bytes, &v4);
  if (!result)
  {
    *acceleration = vcvtd_n_f64_u32(bytes, 0x10uLL);
  }

  return result;
}

kern_return_t IOHIDGetMouseAcceleration(io_connect_t handle, double *acceleration)
{
  bytes = 0;
  result = IOHIDGetParameter(handle, @"HIDPointerAcceleration", 4uLL, &bytes, &v4);
  if (!result)
  {
    *acceleration = vcvtd_n_f64_u32(bytes, 0x10uLL);
  }

  return result;
}

kern_return_t IOHIDGetAccelerationWithKey(io_connect_t handle, CFStringRef key, double *acceleration)
{
  bytes = 0;
  result = IOHIDGetParameter(handle, key, 4uLL, &bytes, &v5);
  if (!result)
  {
    *acceleration = vcvtd_n_f64_u32(bytes, 0x10uLL);
  }

  return result;
}

BOOL IOHIDAccessCheckAuditToken(int a1, _OWORD *a2)
{
  if (qword_1ED446AB0 != -1)
  {
    IOHIDAccessCheckAuditToken_cold_1();
  }

  if (qword_1ED446AA8)
  {
    v4 = _checkAuditTokenFunc == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return 1;
  }

  if (!a1)
  {
    v6 = @"kTCCServicePostEvent";
    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v6 = @"kTCCServiceListenEvent";
LABEL_13:
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    return _checkAuditTokenFunc(v6, v8, 0) != 0;
  }

  return 0;
}

kern_return_t IOHIDSetCursorEnable(io_connect_t connect, BOOLean_t enable)
{
  v13 = *MEMORY[0x1E69E9840];
  input = enable;
  v4 = _IOHIDLogCategory(0xAu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = "YES";
    if (!enable)
    {
      v5 = "NO";
    }

    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_INFO, "Set cursor enable:%s", buf, 0xCu);
  }

  v6 = IOConnectCallMethod(connect, 2u, &input, 1u, 0, 0, 0, 0, 0, 0);
  if (v6)
  {
    v7 = _IOHIDLogCategory(0xAu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      IOHIDSetCursorEnable_cold_1();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

kern_return_t IOHIDPostEvent(io_connect_t connect, UInt32 eventType, IOGPoint location, const NXEventData *eventData, UInt32 eventDataVersion, IOOptionBits eventFlags, IOOptionBits options)
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  inputStruct[1] = eventType;
  inputStruct[2] = location;
  v23 = options;
  v24 = eventFlags;
  v11 = options & 6;
  inputStruct[0] = options & 6;
  v25 = getpid();
  if (eventDataVersion > 1)
  {
    v13 = *&eventData->proximity.uniqueID;
    v20 = *&eventData->mouse.subx;
    v21 = v13;
    v22 = *eventData->proximity.reserved2;
    LOBYTE(eventDataVersion) = v11;
  }

  else
  {
    inputStruct[0] = eventDataVersion;
    v12 = *&eventData->proximity.uniqueID;
    v20 = *&eventData->mouse.subx;
    v21 = v12;
    v22 = 0uLL;
  }

  v17 = 1;
  name = 0;
  v14 = *MEMORY[0x1E69E99F8];
  if (bootstrap_look_up2() || (io_pm_hid_event_report_activity(name, eventType, &v17), mach_port_deallocate(*MEMORY[0x1E69E9A60], name), v17))
  {
    if (eventDataVersion & 2 | eventType && IOHIDPostEvent_onceToken != -1)
    {
      IOHIDPostEvent_cold_1();
    }

    result = IOConnectCallMethod(connect, 3u, 0, 0, inputStruct, 0x48uLL, 0, 0, 0, 0);
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOHIDSetCursorBounds(mach_port_t a1, __int16 *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = _IOHIDLogCategory(0xAu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *a2;
      v6 = a2[2];
      v7 = a2[1];
      v8 = a2[3];
      *buf = 67109888;
      v14 = v5;
      v15 = 1024;
      v16 = v6;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v8;
      _os_log_impl(&dword_197195000, v4, OS_LOG_TYPE_INFO, "Set cursor bounds minx:%d miny:%d maxx:%d maxy:%d", buf, 0x1Au);
    }

    v9 = IOConnectCallMethod(a1, 6u, 0, 0, a2, 8uLL, 0, 0, 0, 0);
    if (v9)
    {
      v10 = _IOHIDLogCategory(0xAu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        IOHIDSetCursorBounds_cold_1();
      }
    }
  }

  else
  {
    v9 = 3758097090;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t IOHIDSetOnScreenCursorBounds(mach_port_t a1, __int16 *a2, int16x4_t *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = 3758097090;
  if (a2 && a3)
  {
    v7 = _IOHIDLogCategory(0xAu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *a2;
      v9 = a2[1];
      v10 = a3->i16[0];
      v11 = a3->i16[2];
      v12 = a3->i16[1];
      v13 = a3->i16[3];
      *buf = 67110400;
      *v18 = v8;
      *&v18[4] = 1024;
      *&v18[6] = v9;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      v23 = 1024;
      v24 = v12;
      v25 = 1024;
      v26 = v13;
      _os_log_impl(&dword_197195000, v7, OS_LOG_TYPE_INFO, "Set on screen cursor bounds px:%d py:%d minx:%d miny:%d maxx:%d maxy:%d", buf, 0x26u);
    }

    *buf = *a2;
    *v18 = vuzp1_s16(*a3, vrev32_s16(*a3));
    v3 = IOConnectCallMethod(a1, 0xCu, 0, 0, buf, 0xCuLL, 0, 0, 0, 0);
    if (v3)
    {
      v14 = _IOHIDLogCategory(0xAu);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        IOHIDSetOnScreenCursorBounds_cold_1();
      }
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

kern_return_t IOHIDSetMouseLocation(io_connect_t connect, int x, int y)
{
  memset(&v4, 0, sizeof(v4));
  v5.y = y;
  v5.x = x;
  return IOHIDPostEvent(connect, 0, v5, &v4, 2u, 0xFFFFFFFF, 2u);
}

uint64_t _IOHIDSetFixedMouseLocation(mach_port_t a1, void *inputStruct)
{
  v2 = IOConnectCallMethod(a1, 4u, 0, 0, inputStruct, 0x1CuLL, 0, 0, 0, 0);
  if (v2)
  {
    v3 = _IOHIDLogCategory(0xAu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      _IOHIDSetFixedMouseLocation_cold_1();
    }
  }

  return v2;
}

uint64_t IOHIDSetFixedMouseLocation(mach_port_t a1, int a2, int a3)
{
  v7[0] = 0;
  v7[1] = mach_absolute_time();
  v8 = a2;
  v9 = a3;
  v10 = getpid();
  return _IOHIDSetFixedMouseLocation(a1, v7);
}

uint64_t IOHIDSetFixedMouseLocationWithTimeStamp(mach_port_t a1, int a2, int a3, uint64_t a4)
{
  v8[0] = a4;
  v8[1] = mach_absolute_time();
  v9 = a2;
  v10 = a3;
  v11 = getpid();
  return _IOHIDSetFixedMouseLocation(a1, v8);
}

kern_return_t IOHIDGetButtonEventNum(io_connect_t connect, NXMouseButton button, int *eventNum)
{
  input = button;
  output = 0;
  outputCnt = 1;
  result = IOConnectCallMethod(connect, 5u, &input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  *eventNum = output;
  return result;
}

kern_return_t IOHIDGetStateForSelector(io_connect_t handle, int selector, UInt32 *state)
{
  input[1] = *MEMORY[0x1E69E9840];
  output = 0;
  input[0] = selector;
  outputCnt = 1;
  result = IOConnectCallMethod(handle, 5u, input, 1u, 0, 0, &output, &outputCnt, 0, 0);
  *state = output;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

kern_return_t IOHIDSetStateForSelector(io_connect_t handle, int selector, UInt32 state)
{
  input[2] = *MEMORY[0x1E69E9840];
  outputCnt = 0;
  valuePtr = state;
  input[0] = selector;
  input[1] = state;
  if (selector == 3)
  {
    service = 0;
    v3 = IOConnectGetService(handle, &service);
    if (!v3)
    {
      v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      v4 = IORegistryEntrySetCFProperty(service, @"IOHIDActivityUserIdle", v8);
      if (v4 && (v9 = _IOHIDLogCategory(0), os_log_type_enabled(v9, OS_LOG_TYPE_ERROR)))
      {
        IOHIDSetStateForSelector_cold_2();
        if (!v8)
        {
          goto LABEL_6;
        }
      }

      else if (!v8)
      {
        goto LABEL_6;
      }

      CFRelease(v8);
      goto LABEL_6;
    }

    v4 = v3;
    v5 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      IOHIDSetStateForSelector_cold_1();
    }
  }

  else
  {
    v4 = IOConnectCallMethod(handle, 6u, input, 2u, 0, 0, 0, &outputCnt, 0, 0);
  }

LABEL_6:
  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

kern_return_t IOHIDGetModifierLockState(io_connect_t handle, int selector, BOOL *state)
{
  statea = 0;
  result = IOHIDGetStateForSelector(handle, selector, &statea);
  *state = statea != 0;
  return result;
}

kern_return_t IOHIDSetModifierLockState(io_connect_t handle, int selector, BOOL state)
{
  v3 = -536870212;
  if ((selector - 3) < 0xFFFFFFFE)
  {
    return -536870206;
  }

  v4 = state;
  v6 = IOHIDEventSystemClientCreateWithType(*MEMORY[0x1E695E480], 2, 0);
  if (v6)
  {
    v7 = v6;
    v8 = IOHIDEventSystemClientCopyServices(v6);
    v3 = -536870208;
    if (v8)
    {
      v9 = v8;
      if (CFArrayGetCount(v8))
      {
        if (CFArrayGetCount(v9) >= 1)
        {
          v10 = 0;
          if (selector == 1)
          {
            v11 = @"HIDCapsLockState";
          }

          else
          {
            v11 = @"HIDNumLockState";
          }

          v12 = MEMORY[0x1E695E4C0];
          if (v4)
          {
            v12 = MEMORY[0x1E695E4D0];
          }

          v13 = *v12;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
            if (ValueAtIndex)
            {
              v15 = ValueAtIndex;
              if (IOHIDServiceClientConformsTo(ValueAtIndex, 1u, 6u))
              {
                IOHIDServiceClientSetProperty(v15, v11, v13);
              }
            }

            ++v10;
          }

          while (v10 < CFArrayGetCount(v9));
        }

        v3 = 0;
      }

      CFRelease(v9);
    }

    CFRelease(v7);
  }

  else
  {
    v16 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      IOHIDSetModifierLockState_cold_1();
    }
  }

  return v3;
}

kern_return_t IOHIDRegisterVirtualDisplay(io_connect_t handle, UInt32 *display_token)
{
  output[1] = *MEMORY[0x1E69E9840];
  output[0] = 0;
  outputCnt = 1;
  result = IOConnectCallMethod(handle, 7u, 0, 0, 0, 0, output, &outputCnt, 0, 0);
  *display_token = output[0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

kern_return_t IOHIDUnregisterVirtualDisplay(io_connect_t handle, UInt32 display_token)
{
  input[1] = *MEMORY[0x1E69E9840];
  input[0] = display_token;
  outputCnt = 0;
  result = IOConnectCallMethod(handle, 8u, input, 1u, 0, 0, 0, &outputCnt, 0, 0);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

kern_return_t IOHIDSetVirtualDisplayBounds(io_connect_t handle, UInt32 display_token, const IOGBounds *bounds)
{
  v11 = *MEMORY[0x1E69E9840];
  input = display_token;
  v3 = vmovl_s16(*bounds);
  *&v4 = v3.i32[2];
  *(&v4 + 1) = v3.i32[3];
  v10 = v4;
  *&v4 = v3.i32[0];
  *(&v4 + 1) = v3.i32[1];
  v9 = v4;
  outputCnt = 0;
  result = IOConnectCallMethod(handle, 9u, &input, 5u, 0, 0, 0, &outputCnt, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

kern_return_t IOHIDGetActivityState(io_connect_t handle, BOOL *hidActivityIdle)
{
  output[1] = *MEMORY[0x1E69E9840];
  output[0] = 0;
  outputCnt = 1;
  if (hidActivityIdle)
  {
    result = IOConnectCallMethod(handle, 0xAu, 0, 0, 0, 0, output, &outputCnt, 0, 0);
    *hidActivityIdle = output[0] != 0;
  }

  else
  {
    result = -536870206;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void ____loadTCCFramework_block_invoke()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/TCC.framework/TCC", 5);
  qword_1ED446AA8 = v0;
  if (v0)
  {
    _MergedGlobals_1 = dlsym(v0, "TCCAccessPreflight");
    if (_MergedGlobals_1)
    {
      off_1ED446AA0 = dlsym(qword_1ED446AA8, "TCCAccessRequest");
      if (off_1ED446AA0)
      {
        _checkAuditTokenFunc = dlsym(qword_1ED446AA8, "TCCAccessCheckAuditToken");
        if (!off_1ED446AA0)
        {
          v1 = _IOHIDLogCategory(0);
          if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
          {
            ____loadTCCFramework_block_invoke_cold_1();
          }
        }
      }

      else
      {
        v4 = _IOHIDLogCategory(0);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          ____loadTCCFramework_block_invoke_cold_2();
        }
      }
    }

    else
    {
      v3 = _IOHIDLogCategory(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        ____loadTCCFramework_block_invoke_cold_3();
      }
    }
  }

  else
  {
    v2 = _IOHIDLogCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ____loadTCCFramework_block_invoke_cold_4();
    }
  }
}

uint64_t __OSKextVersionStageForString(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (*result)
    {
      v2 = *v1;
      if (v2 <= 0x60)
      {
        if (v2 <= 0x20 && ((1 << v2) & 0x100002601) != 0)
        {
          return 9;
        }

        return 0;
      }

      if (*v1 <= 0x63u)
      {
        if (v2 == 97)
        {
          v9 = v1[1];
          v8 = v1 + 1;
          if ((v9 - 58) >= 0xFFFFFFF6)
          {
            *result = v8;
            return 3;
          }
        }

        else if (v2 == 98)
        {
          v5 = v1[1];
          v4 = v1 + 1;
          if ((v5 - 58) >= 0xFFFFFFF6)
          {
            *result = v4;
            return 5;
          }
        }

        return 0;
      }

      if (v2 != 102)
      {
        if (v2 == 100)
        {
          v7 = v1[1];
          v6 = v1 + 1;
          if ((v7 - 58) >= 0xFFFFFFF6)
          {
            *result = v6;
            return 1;
          }
        }

        return 0;
      }

      v10 = v1[1];
      if ((v10 - 58) >= 0xFFFFFFF6)
      {
        *result = v1 + 1;
      }

      else
      {
        if (v10 != 99)
        {
          return 0;
        }

        v12 = v1[2];
        v11 = v1 + 2;
        if ((v12 - 58) < 0xFFFFFFF6)
        {
          return 0;
        }

        *result = v11;
      }

      return 7;
    }

    return 0;
  }

  return result;
}

uint64_t OSKextVersionGetString(unint64_t a1, void *a2, unsigned int a3)
{
  result = 0;
  if (a2 && a3 >= 0x14)
  {
    bzero(a2, a3);
    if ((a1 & 0x8000000000000000) == 0)
    {
      if (!a1)
      {
        v17 = "(missing)";
        goto LABEL_17;
      }

      if (a1 < 0x2386F26FC10000)
      {
        v7 = (a1 % 0xE8D4A51000) / 100000000;
        v8 = 1000000000000 * (a1 / 0xE8D4A51000) + 100000000 * v7;
        v9 = a1 - v8;
        v10 = (a1 - v8) / 10000;
        v11 = a1 - (v8 + 10000 * v10);
        v12 = v11 / 1000;
        if (v11 % 1000 < 256)
        {
          v13 = snprintf(a2, a3, "%u", a1 / 0xE8D4A51000);
          *(a2 + v13) = 46;
          v14 = snprintf(a2 + v13 + 1, a3 - (v13 + 1), "%u", v7) + (v13 + 1);
          if (v9 + 9999 >= 0x4E1F)
          {
            *(a2 + v14) = 46;
            LODWORD(v14) = snprintf(a2 + v14 + 1, a3 - (v14 + 1), "%u", v10) + v14 + 1;
          }

          v15 = v12 - 1;
          if (v12 - 1) < 9 && ((0x155u >> v15))
          {
            v16 = (&off_1E74A7A38)[v15];
            if (*v16)
            {
              strlcat(a2, v16, a3);
              LODWORD(v14) = v14 + strlen(v16);
            }

            if (v11 <= 8999)
            {
              snprintf(a2 + v14, a3 - v14, "%u", v11 % 1000);
            }

            return 1;
          }
        }
      }
    }

    v17 = "(invalid)";
LABEL_17:
    strlcpy(a2, v17, a3);
    return 1;
  }

  return result;
}

uint64_t OSKextParseVersionCFString(const __CFString *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (CFStringGetCString(a1, buffer, 20, 0x600u))
  {
    result = OSKextParseVersionString(buffer);
  }

  else
  {
    result = -1;
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void *createUTF8CStringForCFString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_malloc(MaximumSizeForEncoding + 4, 0x100004077774924uLL);
  if (v4 && !CFStringGetCString(a1, v4, MaximumSizeForEncoding + 4, 0x8000100u))
  {
    free(v4);
    return 0;
  }

  return v4;
}

__CFString *createCFStringForData(const __CFData *a1, CFIndex a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    Length = CFDataGetLength(a1);
    CFStringAppend(Mutable, @"<");
    if (Length)
    {
      BytePtr = CFDataGetBytePtr(a1);
      if (Length >= a2)
      {
        v7 = a2;
      }

      else
      {
        v7 = Length;
      }

      if (v7 >= 1)
      {
        v8 = BytePtr;
        v9 = 0;
        do
        {
          v10 = v8[v9];
          if (v9 + 1 >= Length)
          {
            v11 = "";
          }

          else
          {
            v11 = " ";
          }

          if (((v9 + 1) & 3) != 0)
          {
            v12 = "";
          }

          else
          {
            v12 = v11;
          }

          v13 = v9 == 0;
          if (v9)
          {
            ++v9;
          }

          else
          {
            v9 = 1;
          }

          if (v13)
          {
            v12 = "";
          }

          CFStringAppendFormat(Mutable, 0, @"%02x%s", v10, v12);
        }

        while (v9 != v7);
      }

      if (Length > a2)
      {
        CFStringAppendFormat(Mutable, 0, @"...(%u bytes total)", Length);
      }
    }

    CFStringAppend(Mutable, @">");
  }

  return Mutable;
}

void printPList_new(FILE *a1, const void *a2, uint64_t a3)
{
  CFStringForPlist_new = createCFStringForPlist_new(a2, a3);
  if (CFStringForPlist_new)
  {
    v5 = CFStringForPlist_new;
    Length = CFStringGetLength(CFStringForPlist_new);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v8 = malloc_type_malloc(MaximumSizeForEncoding + 4, 0x100004077774924uLL);
    if (v8)
    {
      v9 = v8;
      if (CFStringGetCString(v5, v8, MaximumSizeForEncoding + 4, 0x8000100u))
      {
        fputs(v9, a1);
      }

      CFRelease(v5);

      free(v9);
    }

    else
    {

      CFRelease(v5);
    }
  }
}

__CFString *createCFStringForPlist_new(const void *a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = Mutable;
  if (Mutable)
  {
    _appendPlist(Mutable, a1, a1, a2, 0);
  }

  return v5;
}

void _appendPlist(__CFString *a1, const void *a2, const void *a3, uint64_t a4, int a5)
{
  v62 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    goto LABEL_99;
  }

  v10 = 4 * (a2 != a3);
  v11 = CFGetTypeID(a2);
  if (v11 == CFDictionaryGetTypeID())
  {
    Count = CFDictionaryGetCount(a2);
    v13 = Count < 0;
    v59 = Count;
    if (Count >= 0)
    {
      v14 = Count;
    }

    else
    {
      v14 = -Count;
    }

    if (Count >= 0)
    {
      v15 = 8 * v14;
    }

    else
    {
      v15 = -8 * v14;
    }

    if (!(8 * v14))
    {
      v13 = 0;
    }

    if (!(v14 >> 61) && !v13)
    {
      keys = malloc_type_malloc(v15, 0x6004044C4A2DFuLL);
      if (keys)
      {
        v16 = malloc_type_malloc(v15, 0xC0040B8AA526DuLL);
        if (v16)
        {
          v60 = v16;
          CFDictionaryGetKeysAndValues(a2, keys, v16);
          if (a4 != 2 || a2 != a3)
          {
            if (a4 == 2)
            {
              v17 = "\n";
            }

            else
            {
              v17 = "{\n";
            }

            CFStringAppendCString(a1, v17, 0x8000100u);
          }

          if (v59 >= 1)
          {
            v18 = 0;
            v19 = (v10 + a5);
            if (a4 == 2)
            {
              v20 = "";
            }

            else
            {
              v20 = "";
            }

            v21 = " = ";
            if (a4 == 2)
            {
              v21 = ": ";
            }

            cStr = v21;
            do
            {
              if (v19)
              {
                v22 = v19;
                do
                {
                  CFStringAppendCString(a1, " ", 0x8000100u);
                  --v22;
                }

                while (v22);
              }

              CFStringAppendFormat(a1, 0, @"%s%@%s", v20, keys[v18], v20);
              TypeID = CFBooleanGetTypeID();
              v24 = CFGetTypeID(v60[v18]);
              if (a4 == 2 && TypeID == v24)
              {
                CFStringAppendFormat(a1, 0, @"\n");
                ++v18;
              }

              else
              {
                CFStringAppendCString(a1, cStr, 0x8000100u);
                v25 = CFGetTypeID(v60[v18]);
                if (v25 == CFStringGetTypeID())
                {
                  Length = CFStringGetLength(keys[v18]);
                  if (Length + v19 + CFStringGetLength(v60[v18]) >= 73)
                  {
                    CFStringAppendCString(a1, "\n", 0x8000100u);
                    if (v19 != -4)
                    {
                      v27 = v19 + 4;
                      do
                      {
                        CFStringAppendCString(a1, " ", 0x8000100u);
                        --v27;
                      }

                      while (v27);
                    }
                  }
                }

                _appendPlist(a1, v60[v18++], a3, a4, v19);
                if (a2 == a3 && a4 == 2 && v18 < v59)
                {
                  CFStringAppendCString(a1, "\n", 0x8000100u);
                }
              }
            }

            while (v18 != v59);
          }

          if (a4 != 2)
          {
            for (; a5; --a5)
            {
              CFStringAppendCString(a1, " ", 0x8000100u);
            }

            CFStringAppendCString(a1, "}\n", 0x8000100u);
          }

          free(keys);
          v28 = *MEMORY[0x1E69E9840];
          v29 = v60;
        }

        else
        {
          v50 = *MEMORY[0x1E69E9840];
          v29 = keys;
        }

        free(v29);
        return;
      }
    }

LABEL_99:
    v53 = *MEMORY[0x1E69E9840];
    return;
  }

  if (v11 == CFArrayGetTypeID())
  {
    v30 = CFArrayGetCount(a2);
    if (a4 != 2 || a2 == a3)
    {
      v32 = "(\n";
    }

    else
    {
      v32 = "\n";
    }

    CFStringAppendCString(a1, v32, 0x8000100u);
    if (v30 >= 1)
    {
      v33 = 0;
      v34 = (v10 + a5);
      do
      {
        if (v34)
        {
          v35 = v10 + a5;
          do
          {
            CFStringAppendCString(a1, " ", 0x8000100u);
            --v35;
          }

          while (v35);
        }

        ValueAtIndex = CFArrayGetValueAtIndex(a2, v33);
        _appendPlist(a1, ValueAtIndex, a3, a4, v34);
        ++v33;
      }

      while (v33 != v30);
    }

    if (a4 == 2)
    {
      goto LABEL_99;
    }

    for (; a5; --a5)
    {
      CFStringAppendCString(a1, " ", 0x8000100u);
    }

    v37 = *MEMORY[0x1E69E9840];
    v38 = ")\n";
    goto LABEL_74;
  }

  if (v11 == CFStringGetTypeID())
  {
    if (a5)
    {
      v39 = a4 == 2;
    }

    else
    {
      v39 = 1;
    }

    v40 = "";
    if (v39)
    {
      v40 = "";
    }

    CFStringAppendFormat(a1, 0, @"%s%@%s", v40, a2, v40);
LABEL_73:
    v41 = *MEMORY[0x1E69E9840];
    v38 = "\n";
LABEL_74:

    CFStringAppendCString(a1, v38, 0x8000100u);
    return;
  }

  if (v11 == CFURLGetTypeID())
  {
    v42 = CFURLCopyAbsoluteURL(a2);
    if (v42)
    {
      v43 = v42;
      v44 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
      if (v44)
      {
        v45 = v44;
        CFURLGetFileSystemRepresentation(a2, 1u, buffer, 1024);
        CFStringAppendCString(a1, buffer, 0x8000100u);
        CFRelease(v43);
        v46 = v45;
      }

      else
      {
        v46 = v43;
      }

      CFRelease(v46);
    }

    CFStringAppendCString(a1, "\n", 0x8000100u);
    goto LABEL_99;
  }

  if (v11 != CFDataGetTypeID())
  {
    if (v11 != CFNumberGetTypeID())
    {
      if (v11 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(a2);
        v52 = "true";
        if (!Value)
        {
          v52 = "false";
        }

        CFStringAppendFormat(a1, 0, @"%s\n", v52);
        goto LABEL_99;
      }

      if (v11 == CFDateGetTypeID())
      {
        v55 = *MEMORY[0x1E69E9840];
        v38 = "(date object)\n";
      }

      else
      {
        v56 = *MEMORY[0x1E69E9840];
        v38 = "(unknown object)\n";
      }

      goto LABEL_74;
    }

    CFStringAppendFormat(a1, 0, @"%@", a2);
    goto LABEL_73;
  }

  CFStringForData = createCFStringForData(a2, 16);
  if (!CFStringForData)
  {
    v54 = *MEMORY[0x1E69E9840];
    v38 = "(data object)\n";
    goto LABEL_74;
  }

  v48 = CFStringForData;
  CFStringAppend(a1, CFStringForData);
  CFStringAppendCString(a1, "\n", 0x8000100u);
  v49 = *MEMORY[0x1E69E9840];

  CFRelease(v48);
}

IOPSLowBatteryWarningLevel IOPSGetBatteryWarningLevel(void)
{
  v0 = kIOPSLowBatteryWarningNone;
  valuePtr = kIOPSLowBatteryWarningNone;
  v1 = *MEMORY[0x1E695E480];
  v2 = _io_SCDynamicStoreCreate(*MEMORY[0x1E695E480], @"IOKit Power Source Copy", 0, 0);
  if (v2)
  {
    v3 = v2;
    v4 = _io_SCDynamicStoreKeyCreate(v1, @"%@%@", @"State:", @"/IOKit/LowBatteryWarning");
    if (v4)
    {
      v5 = v4;
      v6 = _io_SCDynamicStoreCopyValue(v3, v4);
      if (v6)
      {
        v7 = v6;
        TypeID = CFNumberGetTypeID();
        if (CFGetTypeID(v7) == TypeID)
        {
          CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
        }

        CFRelease(v7);
      }

      CFRelease(v3);
      CFRelease(v5);
      return valuePtr;
    }

    else
    {
      CFRelease(v3);
    }
  }

  return v0;
}

BOOL IOPSDrawingUnlimitedPower()
{
  out_token = 0;
  v1 = 0;
  if (notify_register_check("com.apple.system.powersources.percent", &out_token))
  {
    return 1;
  }

  notify_get_state(out_token, &v1);
  notify_cancel(out_token);
  return (v1 & 0x90000) != 0x80000;
}

void __IOPSCopyExternalPowerAdapterDetails_block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __IOPSCopyExternalPowerAdapterDetails_block_invoke_cold_1(a2);
  }
}

void IOPSRLSMachPortRelease(void *a1)
{
  if (a1)
  {
    v2 = *(a1 + 4);
    if (v2)
    {
      notify_cancel(v2);
    }

    v3 = *(a1 + 3);
    if (v3)
    {
      CFMachPortInvalidate(v3);
      CFRelease(*(a1 + 3));
    }

    free(a1);
  }
}

uint64_t IOPSRLSMachPortCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (*a4)
    {
      return (*a4)(*(a4 + 8));
    }
  }

  return result;
}

__CFArray *IOPSCopyInternalBatteriesArray(const void *a1)
{
  v2 = IOPSCopyPowerSourcesList(a1);
  if (v2)
  {
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v2) != TypeID)
    {
      Mutable = 0;
LABEL_18:
      CFRelease(v2);
      return Mutable;
    }
  }

  Count = CFArrayGetCount(v2);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (Count >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
        v8 = IOPSGetPowerSourceDescription(a1, ValueAtIndex);
        v9 = CFDictionaryGetTypeID();
        if (v8)
        {
          if (CFGetTypeID(v8) == v9)
          {
            Value = CFDictionaryGetValue(v8, @"Transport Type");
            v11 = CFStringGetTypeID();
            if (Value)
            {
              if (CFGetTypeID(Value) == v11 && CFEqual(Value, @"Internal"))
              {
                CFArrayAppendValue(Mutable, ValueAtIndex);
              }
            }
          }
        }

        ++v6;
      }

      while ((Count & 0x7FFFFFFF) != v6);
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  if (v2)
  {
    goto LABEL_18;
  }

  return Mutable;
}

__CFArray *IOPSCopyUPSArray(const void *a1)
{
  v2 = IOPSCopyPowerSourcesList(a1);
  if (v2)
  {
    TypeID = CFArrayGetTypeID();
    if (CFGetTypeID(v2) != TypeID)
    {
      Mutable = 0;
LABEL_20:
      CFRelease(v2);
      return Mutable;
    }
  }

  Count = CFArrayGetCount(v2);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (Count >= 1)
    {
      v6 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
        v8 = IOPSGetPowerSourceDescription(a1, ValueAtIndex);
        v9 = CFDictionaryGetTypeID();
        if (v8)
        {
          if (CFGetTypeID(v8) == v9)
          {
            Value = CFDictionaryGetValue(v8, @"Transport Type");
            v11 = CFStringGetTypeID();
            if (Value)
            {
              if (CFGetTypeID(Value) == v11 && (CFEqual(Value, @"Serial") || CFEqual(Value, @"USB") || CFEqual(Value, @"Ethernet")))
              {
                CFArrayAppendValue(Mutable, ValueAtIndex);
              }
            }
          }
        }

        ++v6;
      }

      while ((Count & 0x7FFFFFFF) != v6);
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      Mutable = 0;
    }
  }

  if (v2)
  {
    goto LABEL_20;
  }

  return Mutable;
}

__CFArray *IOPSGetActiveUPS(const void *a1)
{
  result = IOPSCopyUPSArray(a1);
  if (result)
  {
    v2 = result;
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
    CFRelease(v2);
    return ValueAtIndex;
  }

  return result;
}

__CFArray *IOPSGetActiveBattery(const void *a1)
{
  result = IOPSCopyInternalBatteriesArray(a1);
  if (result)
  {
    v2 = result;
    ValueAtIndex = CFArrayGetValueAtIndex(result, 0);
    CFRelease(v2);
    return ValueAtIndex;
  }

  return result;
}

uint64_t IOPSPowerSourceSupported(const void *a1, const void *a2)
{
  TypeID = CFStringGetTypeID();
  if (!a2 || CFGetTypeID(a2) != TypeID)
  {
    goto LABEL_17;
  }

  if (CFEqual(a2, @"AC Power"))
  {
    goto LABEL_4;
  }

  if (CFEqual(a2, @"Battery Power"))
  {
    v6 = IORegistryEntryFromPath(0, "IODeviceTree:/product");
    if (v6)
    {
      v7 = v6;
      CFProperty = IORegistryEntryCreateCFProperty(v6, @"builtin-battery", 0, 0);
      IOObjectRelease(v7);
      if (CFProperty)
      {
        v9 = CFGetTypeID(CFProperty);
        if (v9 == CFDataGetTypeID())
        {
          CFDataGetBytePtr(CFProperty);
          if (CFDataGetLength(CFProperty) <= 8)
          {
            CFDataGetLength(CFProperty);
          }

          __memcpy_chk();
          CFRelease(CFProperty);
        }
      }
    }
  }

  if (a1 && (CFEqual(a2, @"Battery Power") && IOPSGetActiveBattery(a1) || CFEqual(a2, @"UPS Power") && IOPSGetActiveUPS(a1)))
  {
LABEL_4:
    v5 = MEMORY[0x1E695E4D0];
  }

  else
  {
LABEL_17:
    v5 = MEMORY[0x1E695E4C0];
  }

  return *v5;
}

dispatch_queue_t _getPSDispatchQueue()
{
  result = _getPSDispatchQueue_psQ;
  if (!_getPSDispatchQueue_psQ)
  {
    result = dispatch_queue_create("Power Management power source queue", 0);
    _getPSDispatchQueue_psQ = result;
  }

  return result;
}

uint64_t IOPSCreatePowerSource(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = _getPSDispatchQueue_psQ;
  if (!_getPSDispatchQueue_psQ)
  {
    v2 = dispatch_queue_create("Power Management power source queue", 0);
    _getPSDispatchQueue_psQ = v2;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __IOPSCreatePowerSource_block_invoke;
  v5[3] = &unk_1E74A7AC8;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __IOPSCreatePowerSource_block_invoke(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = -536870206;
LABEL_9:
    *(v6 + 24) = v7;
    return;
  }

  v2 = malloc_type_calloc(1uLL, 0x10uLL, 0x1060040C2E02434uLL);
  if (!v2)
  {
    v6 = *(*(a1 + 32) + 8);
    v7 = -536870200;
    goto LABEL_9;
  }

  v3 = v2;
  PowerSource = createPowerSource(v2);
  v5 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = PowerSource;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *v5 = 0;

    free(v3);
  }

  else
  {
    *v5 = v3;
    v8 = _getPSDispatchQueue_psQ;
    if (!_getPSDispatchQueue_psQ)
    {
      v8 = dispatch_queue_create("Power Management power source queue", 0);
      _getPSDispatchQueue_psQ = v8;
    }

    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __IOPSCreatePowerSource_block_invoke_2;
    handler[3] = &__block_descriptor_tmp_6;
    handler[4] = v3;
    notify_register_dispatch("com.apple.system.powermanagement.assertionresync", v3 + 3, v8, handler);
  }
}

uint64_t createPowerSource(uint64_t a1)
{
  v5 = 0;
  v4 = _pm_connect(&v5);
  if (v4)
  {
    v2 = -536870195;
  }

  else
  {
    if (!io_ps_new_pspowersource(v5, (a1 + 8), &v4))
    {
      goto LABEL_6;
    }

    v2 = -536870163;
  }

  v4 = v2;
LABEL_6:
  if (v5)
  {
    _pm_disconnect();
  }

  return v4;
}

uint64_t __IOPSCreatePowerSource_block_invoke_2(uint64_t a1)
{
  PowerSource = createPowerSource(*(a1 + 32));
  if (PowerSource)
  {
    asl_log(0, 0, 3, "createPowerSource returned 0x%x\n", PowerSource);
  }

  result = setPowerSourceDetails(*(a1 + 32), **(a1 + 32));
  if (result)
  {
    return asl_log(0, 0, 3, "setPowerSourceDetails returned 0x%x\n", result);
  }

  return result;
}

uint64_t setPowerSourceDetails(uint64_t a1, const void *a2)
{
  v2 = 3758097090;
  v16 = 0;
  if (a1)
  {
    TypeID = CFDictionaryGetTypeID();
    if (a2)
    {
      if (CFGetTypeID(a2) == TypeID)
      {
        if (*(a1 + 8))
        {
          v6 = IOCFSerialize(a2, 0);
          if (v6)
          {
            v7 = v6;
            v17 = _pm_connect(&v16);
            if (v17)
            {
              v17 = -536870195;
            }

            else
            {
              v8 = v16;
              v9 = *(a1 + 8);
              BytePtr = CFDataGetBytePtr(v7);
              Length = CFDataGetLength(v7);
              io_ps_update_pspowersource(v8, v9, BytePtr, Length, &v17);
              if (!v17)
              {
                MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a2);
                v13 = *a1;
                v14 = CFDictionaryGetTypeID();
                if (v13 && CFGetTypeID(v13) == v14)
                {
                  CFRelease(*a1);
                }

                *a1 = MutableCopy;
              }

              _pm_disconnect();
            }

            CFRelease(v7);
            return v17;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t IOPSSetPowerSourceDetails(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v4 = _getPSDispatchQueue_psQ;
  if (!_getPSDispatchQueue_psQ)
  {
    v4 = dispatch_queue_create("Power Management power source queue", 0);
    _getPSDispatchQueue_psQ = v4;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IOPSSetPowerSourceDetails_block_invoke;
  block[3] = &unk_1E74A7AF0;
  block[4] = &v8;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v4, block);
  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __IOPSSetPowerSourceDetails_block_invoke(uint64_t a1)
{
  result = setPowerSourceDetails(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IOPSReleasePowerSource(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = _getPSDispatchQueue_psQ;
  if (!_getPSDispatchQueue_psQ)
  {
    v2 = dispatch_queue_create("Power Management power source queue", 0);
    _getPSDispatchQueue_psQ = v2;
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __IOPSReleasePowerSource_block_invoke;
  v5[3] = &unk_1E74A7B18;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(v2, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __IOPSReleasePowerSource_block_invoke(uint64_t a1)
{
  v4 = 0;
  if (*(a1 + 40))
  {
    if (!_pm_connect(&v4))
    {
      io_ps_release_pspowersource(v4, *(*(a1 + 40) + 8));
      _pm_disconnect();
    }

    notify_cancel(*(*(a1 + 40) + 12));
    v2 = **(a1 + 40);
    TypeID = CFDictionaryGetTypeID();
    if (v2)
    {
      if (CFGetTypeID(v2) == TypeID)
      {
        CFRelease(**(a1 + 40));
      }
    }

    **(a1 + 40) = 0;
    free(*(a1 + 40));
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -536870206;
  }
}

uint64_t IOPSGaugingMitigationGetState(uint64_t *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  uint64 = 3758097085;
  PMQueue = getPMQueue();
  valuePtr = 1;
  if (a1)
  {
    v4 = PMQueue;
    if (PMQueue)
    {
      values = 0;
      keys[0] = 0;
      mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
      if (mach_service)
      {
        v6 = mach_service;
        xpc_connection_set_target_queue(mach_service, v4);
        xpc_connection_set_event_handler(v6, &__block_literal_global_6);
        xpc_connection_resume(v6);
        v7 = xpc_dictionary_create(0, 0, 0);
        if (v7)
        {
          v8 = v7;
          keys[0] = @"batteryGaugingMitigationAction";
          v9 = *MEMORY[0x1E695E480];
          values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
          v10 = CFDictionaryCreate(v9, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v11 = _CFXPCCreateXPCObjectFromCFObject();
          CFRelease(v10);
          CFRelease(values);
          values = 0;
          xpc_dictionary_set_value(v8, "batteryGaugingMitigation", v11);
          v12 = xpc_connection_send_message_with_reply_sync(v6, v8);
          if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
          {
            uint64 = xpc_dictionary_get_uint64(v12, "returnCode");
            if (!uint64)
            {
              xpc_dictionary_get_value(v12, "batteryGaugingMitigationState");
              *a1 = _CFXPCCreateCFObjectFromXPCObject();
            }
          }

          else
          {
            uint64 = 3758097087;
          }

          if (v11)
          {
            xpc_release(v11);
          }

          if (v12)
          {
            xpc_release(v12);
          }

          xpc_release(v8);
        }

        else
        {
          v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v21)
          {
            IOPSGaugingMitigationGetState_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
          }
        }

        xpc_release(v6);
      }

      else
      {
        v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        uint64 = 3758097088;
        if (v13)
        {
          IOPSGaugingMitigationGetState_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
        }
      }
    }

    else
    {
      uint64 = 3758097089;
    }
  }

  else
  {
    uint64 = 3758097090;
  }

  v29 = *MEMORY[0x1E69E9840];
  return uint64;
}

void __IOPSGaugingMitigationGetState_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __IOPSGaugingMitigationGetState_block_invoke_cold_1();
  }
}

uint64_t IOPSLimitBatteryLevelRegister(uint64_t *a1)
{
  keys[1] = *MEMORY[0x1E69E9840];
  uint64 = 3758097084;
  PMQueue = getPMQueue();
  valuePtr = 1;
  if (a1)
  {
    v4 = PMQueue;
    if (PMQueue)
    {
      values = 0;
      keys[0] = 0;
      mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
      if (mach_service)
      {
        v6 = mach_service;
        xpc_connection_set_target_queue(mach_service, v4);
        xpc_connection_set_event_handler(v6, &__block_literal_global_49);
        xpc_connection_resume(v6);
        v7 = xpc_dictionary_create(0, 0, 0);
        if (!v7)
        {
          v21 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          uint64 = 3758097085;
          if (v21)
          {
            IOPSGaugingMitigationGetState_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
          }

          goto LABEL_18;
        }

        v8 = v7;
        keys[0] = @"chargeSocLimitAction";
        v9 = *MEMORY[0x1E695E480];
        values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
        v10 = CFDictionaryCreate(v9, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v11 = _CFXPCCreateXPCObjectFromCFObject();
        CFRelease(v10);
        CFRelease(values);
        xpc_dictionary_set_value(v8, "chargeSocLimit", v11);
        v12 = xpc_connection_send_message_with_reply_sync(v6, v8);
        if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
        {
          uint64 = xpc_dictionary_get_uint64(v12, "returnCode");
          if (uint64)
          {
            goto LABEL_13;
          }

          if (xpc_dictionary_get_value(v12, "chargeSocLimitToken"))
          {
            v31 = _CFXPCCreateCFObjectFromXPCObject();
            uint64 = 3758097084;
            if (v31)
            {
              uint64 = 0;
              *a1 = v31;
            }

            goto LABEL_13;
          }
        }

        uint64 = 3758097084;
LABEL_13:
        if (v11)
        {
          xpc_release(v11);
        }

        if (v12)
        {
          xpc_release(v12);
        }

        xpc_release(v8);
LABEL_18:
        xpc_release(v6);
        goto LABEL_19;
      }

      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v13)
      {
        IOPSGaugingMitigationGetState_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
      }
    }
  }

  else
  {
    uint64 = 3758097090;
  }

LABEL_19:
  v29 = *MEMORY[0x1E69E9840];
  return uint64;
}

void __IOPSLimitBatteryLevelRegister_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __IOPSGaugingMitigationGetState_block_invoke_cold_1();
  }
}

uint64_t IOPSLimitBatteryLevelCancel(const void *a1)
{
  keys[2] = *MEMORY[0x1E69E9840];
  uint64 = 3758097084;
  PMQueue = getPMQueue();
  valuePtr = 2;
  if (a1)
  {
    v4 = PMQueue;
    if (PMQueue)
    {
      mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
      if (mach_service)
      {
        v6 = mach_service;
        xpc_connection_set_target_queue(mach_service, v4);
        xpc_connection_set_event_handler(v6, &__block_literal_global_57);
        xpc_connection_resume(v6);
        v7 = xpc_dictionary_create(0, 0, 0);
        if (v7)
        {
          v8 = v7;
          keys[0] = @"chargeSocLimitAction";
          v9 = *MEMORY[0x1E695E480];
          v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
          keys[1] = @"chargeSocLimitToken";
          values = v10;
          cf = a1;
          CFRetain(a1);
          v11 = CFDictionaryCreate(v9, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v12 = _CFXPCCreateXPCObjectFromCFObject();
          CFRelease(v11);
          CFRelease(values);
          CFRelease(cf);
          xpc_dictionary_set_value(v8, "chargeSocLimit", v12);
          v13 = xpc_connection_send_message_with_reply_sync(v6, v8);
          if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
          {
            uint64 = xpc_dictionary_get_uint64(v13, "returnCode");
          }

          if (v12)
          {
            xpc_release(v12);
          }

          if (v13)
          {
            xpc_release(v13);
          }

          xpc_release(v8);
          xpc_release(v6);
          if (!uint64)
          {
            CFRelease(a1);
          }
        }

        else
        {
          v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v22)
          {
            IOPSGaugingMitigationGetState_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
          }

          xpc_release(v6);
          uint64 = 3758097085;
        }
      }

      else
      {
        v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v14)
        {
          IOPSGaugingMitigationGetState_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
        }
      }
    }
  }

  else
  {
    uint64 = 3758097090;
  }

  v30 = *MEMORY[0x1E69E9840];
  return uint64;
}

void __IOPSLimitBatteryLevelCancel_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __IOPSGaugingMitigationGetState_block_invoke_cold_1();
  }
}

uint64_t IOPSLimitBatteryLevel(void *a1, char a2, char a3, const __CFString *a4)
{
  v50 = *MEMORY[0x1E69E9840];
  uint64 = 3758097084;
  v41 = a2;
  PMQueue = getPMQueue();
  v40 = a3 & 1;
  v39 = (a3 & 2) != 0;
  v38 = (a3 & 4) != 0;
  valuePtr = 3;
  result = 3758097090;
  if (!a1 || !a4)
  {
    goto LABEL_21;
  }

  if (!PMQueue)
  {
LABEL_17:
    result = 3758097084;
    goto LABEL_21;
  }

  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *keys = 0u;
  *values = 0u;
  v43 = 0u;
  v44 = 0u;
  Copy = 0;
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
  if (!mach_service)
  {
    v20 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v20)
    {
      IOPSGaugingMitigationGetState_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    goto LABEL_17;
  }

  v11 = mach_service;
  xpc_connection_set_target_queue(mach_service, PMQueue);
  xpc_connection_set_event_handler(v11, &__block_literal_global_63);
  xpc_connection_resume(v11);
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12)
  {
    v13 = v12;
    keys[0] = @"chargeSocLimitAction";
    v14 = *MEMORY[0x1E695E480];
    v15 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
    keys[1] = @"chargeSocLimitToken";
    values[0] = v15;
    values[1] = a1;
    CFRetain(a1);
    *&v47 = @"chargeSocLimitSoc";
    *&v43 = CFNumberCreate(v14, kCFNumberSInt8Type, &v41);
    *(&v47 + 1) = @"chargeSocLimitDrain";
    *(&v43 + 1) = CFNumberCreate(v14, kCFNumberSInt8Type, &v40);
    *&v48 = @"chargeSocLimitNoChargeToFull";
    *&v44 = CFNumberCreate(v14, kCFNumberSInt8Type, &v39);
    *(&v48 + 1) = @"chargeSocLimitIsEOC";
    *(&v44 + 1) = CFNumberCreate(v14, kCFNumberSInt8Type, &v38);
    v49 = @"chargeSocLimitReason";
    Copy = CFStringCreateCopy(v14, a4);
    v16 = CFDictionaryCreate(v14, keys, values, 7, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v17 = _CFXPCCreateXPCObjectFromCFObject();
    CFRelease(v16);
    for (i = 0; i != 7; ++i)
    {
      CFRelease(values[i]);
    }

    xpc_dictionary_set_value(v13, "chargeSocLimit", v17);
    v19 = xpc_connection_send_message_with_reply_sync(v11, v13);
    if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
    {
      uint64 = xpc_dictionary_get_uint64(v19, "returnCode");
    }

    if (v17)
    {
      xpc_release(v17);
    }

    if (v19)
    {
      xpc_release(v19);
    }

    xpc_release(v13);
  }

  else
  {
    v28 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    uint64 = 3758097085;
    if (v28)
    {
      IOPSGaugingMitigationGetState_cold_1(v28, v29, v30, v31, v32, v33, v34, v35);
    }
  }

  xpc_release(v11);
  result = uint64;
LABEL_21:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

void __IOPSLimitBatteryLevel_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __IOPSGaugingMitigationGetState_block_invoke_cold_1();
  }
}

uint64_t IOPSCopyBatteryLevelLimits()
{
  keys[1] = *MEMORY[0x1E69E9840];
  PMQueue = getPMQueue();
  valuePtr = 4;
  if (PMQueue)
  {
    v1 = PMQueue;
    values = 0;
    keys[0] = 0;
    mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
    if (mach_service)
    {
      v3 = mach_service;
      xpc_connection_set_target_queue(mach_service, v1);
      xpc_connection_set_event_handler(v3, &__block_literal_global_81);
      xpc_connection_resume(v3);
      v4 = xpc_dictionary_create(0, 0, 0);
      if (!v4)
      {
        v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v19)
        {
          IOPSGaugingMitigationGetState_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
        }

        v10 = 0;
        goto LABEL_17;
      }

      v5 = v4;
      keys[0] = @"chargeSocLimitAction";
      v6 = *MEMORY[0x1E695E480];
      values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt8Type, &valuePtr);
      v7 = CFDictionaryCreate(v6, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v8 = _CFXPCCreateXPCObjectFromCFObject();
      CFRelease(v7);
      CFRelease(values);
      xpc_dictionary_set_value(v5, "chargeSocLimit", v8);
      v9 = xpc_connection_send_message_with_reply_sync(v3, v5);
      if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80] && !xpc_dictionary_get_uint64(v9, "returnCode") && xpc_dictionary_get_value(v9, "chargeSocLimit"))
      {
        v10 = _CFXPCCreateCFObjectFromXPCObject();
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v10 = 0;
        if (!v8)
        {
LABEL_8:
          if (v9)
          {
            xpc_release(v9);
          }

          xpc_release(v5);
LABEL_17:
          xpc_release(v3);
          goto LABEL_18;
        }
      }

      xpc_release(v8);
      goto LABEL_8;
    }

    v11 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      IOPSGaugingMitigationGetState_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v10 = 0;
LABEL_18:
  v27 = *MEMORY[0x1E69E9840];
  return v10;
}

void __IOPSCopyBatteryLevelLimits_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __IOPSGaugingMitigationGetState_block_invoke_cold_1();
  }
}

void __IOPSCopyChargeStatus_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __IOPSGaugingMitigationGetState_block_invoke_cold_1();
  }
}

uint64_t IOPSSetBatteryDateOfFirstUse(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  uint64 = 3758097084;
  PMQueue = getPMQueue();
  if (!a1)
  {
    return 3758097090;
  }

  v10 = PMQueue;
  if (PMQueue)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
    if (mach_service)
    {
      v12 = mach_service;
      xpc_connection_set_target_queue(mach_service, v10);
      xpc_connection_set_event_handler(v12, &__block_literal_global_92);
      xpc_connection_resume(v12);
      v13 = xpc_dictionary_create(0, 0, 0);
      if (v13)
      {
        v14 = v13;
        v15 = _CFXPCCreateXPCObjectFromCFObject();
        if (v15)
        {
          v16 = v15;
          xpc_dictionary_set_value(v14, "setBatteryDofu", v15);
          v17 = xpc_connection_send_message_with_reply_sync(v12, v14);
          if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
          {
            uint64 = xpc_dictionary_get_uint64(v17, "returnCode");
          }

          else
          {
            uint64 = 3758097097;
          }

          xpc_release(v16);
          if (v17)
          {
            xpc_release(v17);
          }
        }

        else
        {
          uint64 = 3758097085;
        }

        xpc_release(v14);
      }

      else
      {
        v26 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        uint64 = 3758097085;
        if (v26)
        {
          IOPSGaugingMitigationGetState_cold_1(v26, v27, v28, v29, v30, v31, v32, v33);
        }
      }

      xpc_release(v12);
      if (a2 && a4 && !uint64)
      {
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 0x40000000;
        v35[2] = __IOPSSetBatteryDateOfFirstUse_block_invoke_94;
        v35[3] = &unk_1E74A7C20;
        v35[4] = a4;
        v35[5] = a3;
        dispatch_async(a2, v35);
      }
    }

    else
    {
      v18 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v18)
      {
        IOPSGaugingMitigationGetState_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }
  }

  return uint64;
}

void __IOPSSetBatteryDateOfFirstUse_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __IOPSSetBatteryDateOfFirstUse_block_invoke_cold_1();
  }
}

void __IOPSSetBatteryDateOfFirstUse_block_invoke_94(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 300;
  }

  Current = CFAbsoluteTimeGetCurrent();
  cf = 0;
  if (!IOPSCopyPowerSourcesByTypePrecise(1, &cf))
  {
    v5 = Current + v2;
    while (cf)
    {
      v6 = IOPSCopyPowerSourcesList(cf);
      v4 = v6;
      if (!v6)
      {
        goto LABEL_6;
      }

      if (!CFArrayGetCount(v6))
      {
        goto LABEL_6;
      }

      v7 = cf;
      ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
      v9 = IOPSGetPowerSourceDescription(v7, ValueAtIndex);
      if (!v9 || CFDictionaryGetValue(v9, @"Date of first use") || CFAbsoluteTimeGetCurrent() > v5)
      {
        goto LABEL_6;
      }

      CFRelease(v4);
      CFRelease(cf);
      cf = 0;
      sleep(1u);
      if (IOPSCopyPowerSourcesByTypePrecise(1, &cf))
      {
        v4 = 0;
        goto LABEL_6;
      }
    }
  }

  v4 = 0;
LABEL_6:
  (*(*(a1 + 32) + 16))();
  if (v4)
  {
    CFRelease(v4);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t IOPSGetBatteryHealthState(uint64_t *a1)
{
  uint64 = 3758097085;
  PMQueue = getPMQueue();
  if (!a1)
  {
    return 3758097090;
  }

  v4 = PMQueue;
  if (!PMQueue)
  {
    return 3758097084;
  }

  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", PMQueue, 0);
  if (mach_service)
  {
    v6 = mach_service;
    xpc_connection_set_target_queue(mach_service, v4);
    xpc_connection_set_event_handler(v6, &__block_literal_global_101);
    xpc_connection_resume(v6);
    v7 = xpc_dictionary_create(0, 0, 0);
    if (v7)
    {
      v8 = v7;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v10 = Mutable;
        v11 = _CFXPCCreateXPCObjectFromCFObject();
        if (v11)
        {
          v12 = v11;
          xpc_dictionary_set_value(v8, "getBatteryHealthState", v11);
          v13 = xpc_connection_send_message_with_reply_sync(v6, v8);
          if (MEMORY[0x19A8DC620]() == MEMORY[0x1E69E9E80])
          {
            uint64 = xpc_dictionary_get_uint64(v13, "returnCode");
            if (!uint64)
            {
              xpc_dictionary_get_value(v13, "IOPSPrivateBatteryHealthState");
              *a1 = _CFXPCCreateCFObjectFromXPCObject();
            }
          }

          else
          {
            uint64 = 3758097105;
          }

          if (v13)
          {
            xpc_release(v13);
          }

          xpc_release(v12);
        }

        CFRelease(v10);
      }

      xpc_release(v8);
    }

    else
    {
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        IOPSGaugingMitigationGetState_cold_1(v22, v23, v24, v25, v26, v27, v28, v29);
      }

      CFRelease(v22);
    }

    xpc_release(v6);
  }

  else
  {
    v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    uint64 = 3758097088;
    if (v14)
    {
      IOPSGaugingMitigationGetState_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return uint64;
}

void __IOPSGetBatteryHealthState_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __IOPSSetBatteryDateOfFirstUse_block_invoke_cold_1();
  }
}

void __IOPSCopyPowerSourcesByTypePrecise_block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __IOPSGaugingMitigationGetState_block_invoke_cold_1();
  }
}

uint64_t IOPSGetYearAndWeekOfManufactureFromBatterySerial(const __CFString *a1, void *a2)
{
  if (CFStringGetLength(a1) != 17)
  {
    if (CFStringGetLength(a1) != 18)
    {
      return 0;
    }

    *__str = 0;
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    v6 = 0;
    *__str = *(CStringPtr + 3);
    __str[2] = CStringPtr[5];
    while (1)
    {
      v7 = __str[v6];
      if (v7 > 79)
      {
        break;
      }

      if (v7 >= 74)
      {
        v8 = -1;
        goto LABEL_9;
      }

LABEL_10:
      if (++v6 == 3)
      {
        v9 = strtoull(__str, 0, 34);
        v10 = *MEMORY[0x1E695E480];
        v11 = CFDateCreate(*MEMORY[0x1E695E480], (86400 * v9) - *MEMORY[0x1E695E468]);
        v12 = CFCalendarCreateWithIdentifier(v10, *MEMORY[0x1E695E678]);
        ISO8601Formatter = CFDateFormatterCreateISO8601Formatter(v10, 5uLL);
        StringWithDate = CFDateFormatterCreateStringWithDate(v10, ISO8601Formatter, v11);
        Length = CFStringGetLength(StringWithDate);
        MutableCopy = CFStringCreateMutableCopy(v10, Length, StringWithDate);
        v19.location = 0;
        v19.length = 3;
        CFStringDelete(MutableCopy, v19);
        v4 = 1;
        v20.location = 1;
        v20.length = 1;
        CFStringDelete(MutableCopy, v20);
        *a2 = MutableCopy;
        CFRelease(v11);
        CFRelease(v12);
        CFRelease(ISO8601Formatter);
        CFRelease(StringWithDate);
        return v4;
      }
    }

    v8 = -2;
LABEL_9:
    __str[v6] = v7 + v8;
    goto LABEL_10;
  }

  v21.location = 3;
  v21.length = 3;
  *a2 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], a1, v21);
  return 1;
}

uint64_t getUserActiveValidDict()
{
  result = getUserActiveValidDict__useractiveValid;
  if (!getUserActiveValidDict__useractiveValid)
  {
    if (getUserActiveValidDict__token != -1)
    {
      getUserActiveValidDict_cold_1();
    }

    result = getUserActiveValidDict__useractiveValid;
    if (!getUserActiveValidDict__useractiveValid)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        getUserActiveValidDict_cold_2();
      }

      return 0;
    }
  }

  return result;
}

CFMutableDictionaryRef __getUserActiveValidDict_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  getUserActiveValidDict__useractiveValid = result;
  return result;
}

void *IOPMScheduleUserActiveChangedNotification(NSObject *a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __IOPMScheduleUserActiveChangedNotification_block_invoke;
  v3[3] = &unk_1E74A7CC8;
  v3[4] = a2;
  return IOPMScheduleUserActivityLevelNotificationWithTimeout(a1, -1, v3);
}

void *IOPMScheduleUserActivityLevelNotificationWithTimeout(NSObject *a1, int a2, const void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A00403A6C22E7uLL);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (v6)
  {
    mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", MEMORY[0x1E69E96A0], 0);
    if (!mach_service)
    {
      free(v6);
      goto LABEL_6;
    }

    v8 = mach_service;
    PMQueue = getPMQueue();
    xpc_connection_set_target_queue(v8, PMQueue);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = __IOPMScheduleUserActivityLevelNotificationWithTimeout_block_invoke;
    handler[3] = &__block_descriptor_tmp_18_0;
    handler[4] = v6;
    xpc_connection_set_event_handler(v8, handler);
    v6[6] = v8;
    dispatch_retain(a1);
    *v6 = a1;
    v6[4] = _Block_copy(a3);
    *(v6 + 14) = a2;
    xpc_connection_resume(v8);
    v10 = getPMQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __IOPMScheduleUserActivityLevelNotificationWithTimeout_block_invoke_2;
    block[3] = &unk_1E74A7D78;
    block[4] = &v14;
    block[5] = v6;
    dispatch_sync(v10, block);
    if ((v15[3] & 1) == 0)
    {
      IOPMUnregisterNotification(v6);
LABEL_6:
      v6 = 0;
    }
  }

  _Block_object_dispose(&v14, 8);
  return v6;
}

void IOPMUnregisterNotification(uint64_t a1)
{
  PMQueue = getPMQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IOPMUnregisterNotification_block_invoke;
  block[3] = &__block_descriptor_tmp_9;
  block[4] = a1;
  dispatch_sync(PMQueue, block);
}

void __IOPMUnregisterNotification_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1 || !v1[6])
  {
    goto LABEL_11;
  }

  v2 = CFNumberCreate(0, kCFNumberSInt64Type, v1);
  UserActiveValidDict = getUserActiveValidDict();
  if (!CFDictionaryGetValue(UserActiveValidDict, v2))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __IOPMUnregisterNotification_block_invoke_cold_1();
      if (!v2)
      {
        goto LABEL_11;
      }
    }

    else if (!v2)
    {
      goto LABEL_11;
    }

LABEL_10:
    CFRelease(v2);
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    v6 = v1;
    _os_log_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "IOPMUnregisterNotification: cancelling connection 0x%lx\n", &v5, 0xCu);
  }

  xpc_connection_cancel(v1[6]);
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_11:
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t IOPMGetUserActivityLevel(unint64_t *a1, unint64_t *a2)
{
  out_token = 0;
  v9 = 0;
  v4 = notify_register_check("com.apple.system.powermanagement.useractivity2", &out_token);
  v5 = 0;
  if (!v4)
  {
    notify_get_state(out_token, &v9);
    notify_cancel(out_token);
    v5 = v9;
  }

  if (a1)
  {
    *a1 = v5;
  }

  if (a2)
  {
    v6 = v5 & (1 << __clz(__rbit64(v5)));
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  return 0;
}

BOOL sendUserActivityMsg(uint64_t a1, const char *a2)
{
  PMQueue = getPMQueue();
  dispatch_assert_queue_V2(PMQueue);
  if (!a1 || !*(a1 + 48))
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sendUserActivityMsg_cold_2();
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v7 = v6;
    if (v6)
    {
      xpc_dictionary_set_uint64(v5, "ActivityTimeout", *(a1 + 56));
      xpc_dictionary_set_value(v7, a2, v5);
      xpc_connection_send_message(*(a1 + 48), v7);
      xpc_release(v7);
      xpc_release(v5);
      return 1;
    }
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    sendUserActivityMsg_cold_1();
    return 0;
  }

  return result;
}

BOOL __IOPMScheduleUserActivityLevelNotificationWithTimeout_block_invoke_2(uint64_t a1)
{
  UserActiveValidDict = getUserActiveValidDict();
  v3 = CFNumberCreate(0, kCFNumberSInt64Type, *(a1 + 40));
  CFDictionarySetValue(UserActiveValidDict, v3, *MEMORY[0x1E695E4D0]);
  if (v3)
  {
    CFRelease(v3);
  }

  result = sendUserActivityMsg(*(a1 + 40), "userActivityRegister");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IOPMSetUserActivityIdleTimeout(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = -536870199;
  PMQueue = getPMQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IOPMSetUserActivityIdleTimeout_block_invoke;
  block[3] = &unk_1E74A7DA0;
  block[4] = &v9;
  block[5] = a1;
  v8 = a2;
  dispatch_sync(PMQueue, block);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __IOPMSetUserActivityIdleTimeout_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result && *(result + 48))
  {
    *(result + 56) = *(a1 + 48);
    result = sendUserActivityMsg(result, "userActivityTimeout");
    if (!result)
    {
      return result;
    }

    v3 = 0;
  }

  else
  {
    v3 = -536870206;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  return result;
}

int *IOPMScheduleUserActivityLevelNotification(NSObject *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A00403A6C22E7uLL);
  v5 = v4;
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __IOPMScheduleUserActivityLevelNotification_block_invoke;
    v7[3] = &unk_1E74A7DC8;
    v7[4] = a2;
    v7[5] = v4;
    if (notify_register_dispatch("com.apple.system.powermanagement.useractivity2", v4 + 10, a1, v7))
    {
      free(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t IOPMAllowRemotePowerChange(uint64_t a1, int a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  if (a1)
  {
    PMQueue = getPMQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __IOPMAllowRemotePowerChange_block_invoke;
    block[3] = &unk_1E74A7DF0;
    v8 = a2;
    block[4] = &v9;
    block[5] = a1;
    dispatch_sync(PMQueue, block);
    v5 = *(v10 + 6);
  }

  else
  {
    v5 = 3758097090;
  }

  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __IOPMAllowRemotePowerChange_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  input = *(v2 + 48);
  if (*(a1 + 48) == *(v2 + 40))
  {
    result = IOConnectCallScalarMethod(*(v2 + 24), 3u, &input, 1u, 0, 0);
  }

  else
  {
    result = 3758097090;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void _systemPowerCallback(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  *(a1 + 40) = a3;
  *(a1 + 48) = a4;
  v4 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___systemPowerCallback_block_invoke;
  v5[3] = &__block_descriptor_tmp_44;
  v5[4] = a1;
  v6 = a3;
  dispatch_async(v4, v5);
}

io_object_t *IOPMRegisterForRemoteSystemPower(NSObject *a1, const void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040A50803A1uLL);
  if (v4)
  {
    dispatch_retain(a1);
    *(v4 + 4) = a1;
    *v4 = _Block_copy(a2);
    v5 = IONotificationPortCreate(0);
    *(v4 + 2) = v5;
    if (v5)
    {
      v6 = v5;
      PMQueue = getPMQueue();
      IONotificationPortSetDispatchQueue(v6, PMQueue);
    }

    v8 = IOServiceMatching("AppleEmbeddedSleepWakeHandler");
    MatchingService = IOServiceGetMatchingService(0, v8);
    if (MatchingService)
    {
      v10 = MatchingService;
      if (IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, v4 + 6) || !v4[6])
      {
        IOObjectRelease(v10);
      }

      else
      {
        v12 = IOServiceAddInterestNotification(*(v4 + 2), v10, "IOGeneralInterest", _systemPowerCallback, v4, v4 + 2);
        IOObjectRelease(v10);
        if (!v12)
        {
          return v4;
        }
      }
    }

    IODeregisterForRemoteSystemPower(v4);
    return 0;
  }

  return v4;
}

void IODeregisterForRemoteSystemPower(uint64_t a1)
{
  if (a1)
  {
    PMQueue = getPMQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __IODeregisterForRemoteSystemPower_block_invoke;
    block[3] = &__block_descriptor_tmp_47_0;
    block[4] = a1;
    dispatch_sync(PMQueue, block);
  }
}

void __IODeregisterForRemoteSystemPower_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    dispatch_release(v3);
    v2 = *(a1 + 32);
  }

  if (*v2)
  {
    _Block_release(*v2);
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    IONotificationPortDestroy(v4);
    v2 = *(a1 + 32);
  }

  v5 = *(v2 + 8);
  if (v5)
  {
    IOObjectRelease(v5);
    v2 = *(a1 + 32);
  }

  v6 = *(v2 + 24);
  if (v6)
  {
    IOServiceClose(v6);
    v2 = *(a1 + 32);
  }

  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  v7 = *(a1 + 32);

  free(v7);
}

uint64_t IOPMCopyHIDPostEventHistory(CFPropertyListRef *a1)
{
  v7 = 0;
  v8 = 0;
  v2 = 3758097084;
  v6 = 0;
  if (!_pm_connect(&v6 + 1) && !io_pm_hid_event_copy_history(SHIDWORD(v6), &v8, &v7, &v6))
  {
    v3 = CFDataCreate(0, v8, v7);
    if (v3)
    {
      v4 = v3;
      *a1 = CFPropertyListCreateWithData(0, v3, 0, 0, 0);
      CFRelease(v4);
    }

    if (*a1)
    {
      v2 = 0;
    }

    else
    {
      v2 = 3758097084;
    }

    mach_vm_deallocate(*MEMORY[0x1E69E9A60], v8, v7);
  }

  return v2;
}

uint64_t IOPMCopyPowerHistory(__CFArray **a1)
{
  v2 = 3758097084;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v4 = opendir("/System/Library/PowerEvents");
  if (v4)
  {
    v5 = v4;
    __stringp = 0;
    v21 = 0;
    v6 = readdir(v4);
    if (!v6)
    {
      closedir(v5);
      Mutable = 0;
      goto LABEL_26;
    }

    v7 = v6;
    v19 = a1;
    v8 = 0;
    v9 = *MEMORY[0x1E695E480];
    while (1)
    {
      while (v7->d_name[0] == 46 && (!v7->d_name[1] || v7->d_name[1] == 46 && !v7->d_name[2]))
      {
        v7 = readdir(v5);
        if (!v7)
        {
          closedir(v5);
          if (v8)
          {
LABEL_24:
            v2 = 0;
            a1 = v19;
LABEL_27:
            *a1 = Mutable;
            return v2;
          }

          Mutable = 0;
          a1 = v19;
LABEL_26:
          v2 = 3758097136;
          goto LABEL_27;
        }
      }

      v10 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11 = strdup(v7->d_name);
      __stringp = v11;
      v12 = strsep(&__stringp, "_");
      v21 = v12;
      if (v12)
      {
        break;
      }

LABEL_20:
      ++v8;
      CFArrayAppendValue(Mutable, v10);
      CFRelease(v10);
      free(v11);
      v7 = readdir(v5);
      if (!v7)
      {
        closedir(v5);
        goto LABEL_24;
      }
    }

    v13 = v12;
    v14 = 1;
    while (1)
    {
      if (v14 == 3)
      {
        v21 = strsep(&v21, ".");
        v15 = CFStringCreateWithCString(v9, v21, 0x8000100u);
        v16 = v10;
        v17 = @"ClearTime";
        goto LABEL_18;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = CFStringCreateWithCString(v9, v13, 0x8000100u);
        v16 = v10;
        v17 = @"Timestamp";
LABEL_18:
        CFDictionarySetValue(v16, v17, v15);
        CFRelease(v15);
      }

      ++v14;
      v13 = strsep(&__stringp, "_");
      v21 = v13;
      if (!v13)
      {
        goto LABEL_20;
      }
    }

    v15 = CFStringCreateWithCString(v9, v13, 0x8000100u);
    v16 = v10;
    v17 = @"UUID";
    goto LABEL_18;
  }

  return v2;
}

uint64_t IOPMCopyPowerHistoryDetailed(const __CFString *a1, CFPropertyListRef *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  resourceData = 0;
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 255);
  CFStringAppend(Mutable, @"/System/Library/PowerEvents");
  CFStringAppend(Mutable, @"/");
  v6 = 3758097090;
  if (!a1 || !a2)
  {
    goto LABEL_20;
  }

  *a2 = 0;
  if (!CFStringGetCString(a1, buffer, 128, 0))
  {
    v6 = 3758097090;
    goto LABEL_20;
  }

  v7 = opendir("/System/Library/PowerEvents");
  if (!v7)
  {
LABEL_19:
    v6 = 3758097084;
    goto LABEL_20;
  }

  v8 = v7;
  v9 = readdir(v7);
  if (!v9)
  {
    closedir(v8);
    goto LABEL_19;
  }

  v10 = v9;
  v11 = 0;
  do
  {
    if (strstr(v10->d_name, buffer))
    {
      v12 = CFStringCreateWithCString(v4, v10->d_name, 0x8000100u);
      CFStringAppend(Mutable, v12);
      if (v11)
      {
        CFRelease(v11);
      }

      v11 = CFURLCreateWithFileSystemPath(v4, Mutable, kCFURLPOSIXPathStyle, 0);
      CFRelease(v12);
    }

    v10 = readdir(v8);
  }

  while (v10);
  closedir(v8);
  v6 = 3758097084;
  if (v11)
  {
    errorCode = 0;
    v13 = CFURLCreateDataAndPropertiesFromResource(v4, v11, &resourceData, 0, 0, &errorCode);
    if (resourceData && v13)
    {
      *a2 = CFPropertyListCreateWithData(0, resourceData, 0, 0, 0);
      CFRelease(resourceData);
    }

    CFRelease(v11);
    v6 = 0;
  }

LABEL_20:
  CFRelease(Mutable);
  v14 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t IOPMSetSleepServicesWakeTimeCap(double a1)
{
  v3 = -1;
  v4 = 0;
  result = _pm_connect(&v4);
  if (!result)
  {
    LODWORD(result) = io_pm_set_sleepservice_wake_time_cap(v4, a1, &v3);
    if (v3)
    {
      return v3;
    }

    else
    {
      return result;
    }
  }

  return result;
}

uint64_t IOPMSleepWakeSetUUID(const void *a1)
{
  result = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E695E4C0];
    if (a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *MEMORY[0x1E695E4C0];
    }

    v6 = IORegistryEntrySetCFProperty(result, @"SleepWakeUUID", v5);
    IOObjectRelease(v3);
    return v6;
  }

  return result;
}

BOOL IOPMGetUUID(int a1, char *a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1 != 1001)
  {
    if (a1 == 1000)
    {
      v5 = IOPMSleepWakeCopyUUID();
      v6 = v5;
      if (v5)
      {
        CString = CFStringGetCString(v5, a2, a3, 0x8000100u);
        CFRelease(v6);
        v6 = CString != 0;
      }

      goto LABEL_7;
    }

LABEL_6:
    v6 = 0;
    goto LABEL_7;
  }

  v11 = -1;
  v12 = 0;
  if (_pm_connect(&v12))
  {
    goto LABEL_6;
  }

  bzero(__src, 0x400uLL);
  uuid = io_pm_get_uuid(v12, 1001, __src, &v11);
  v6 = (uuid | v11) == 0;
  if (!(uuid | v11))
  {
    bzero(a2, a3);
    strncpy(a2, __src, a3 - 1);
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t IOPMLogWakeProgress(int a1, int a2)
{
  valuePtr = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    IOPMLogWakeProgress_cold_1();
  }

  v3 = 3758097084;
  if ((a1 - 1) > 2)
  {
    return 3758097090;
  }

  v4 = off_1E74A80F0[a1 - 1];
  v5 = IORegistryEntryFromPath(0, "IOPower:/IOPowerConnection/IOPMrootDomain");
  if (v5)
  {
    v6 = v5;
    v7 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (v7)
    {
      v8 = v7;
      v3 = IORegistryEntrySetCFProperty(v6, v4, v7);
      CFRelease(v8);
    }

    IOObjectRelease(v6);
  }

  return v3;
}

uint64_t (*IOPMCopySleepWakeFailure())(uint64_t, uint64_t)
{
  v0 = _io_SCDynamicStoreCreate(0, @"IOPMSleepFailure", 0, 0);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = _io_SCDynamicStoreKeyCreate(*MEMORY[0x1E695E480], @"%@%@/%@", @"State:", @"PowerManagement", @"SleepFailure");
  if (v2)
  {
    v3 = v2;
    v4 = _io_SCDynamicStoreCopyValue(v1, v2);
    if (v4)
    {
      TypeID = CFDictionaryGetTypeID();
      if (CFGetTypeID(v4) != TypeID)
      {
        CFRelease(v4);
        v4 = 0;
      }
    }

    CFRelease(v1);
  }

  else
  {
    v4 = 0;
    v3 = v1;
  }

  CFRelease(v3);
  return v4;
}

void IOPMClaimSystemWakeEvent(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", global_queue, 0);
  if (mach_service)
  {
    v8 = mach_service;
    xpc_connection_set_target_queue(mach_service, global_queue);
    xpc_connection_set_event_handler(v8, &__block_literal_global_95);
    v9 = xpc_dictionary_create(0, 0, 0);
    if (v9)
    {
      if (a1)
      {
        CFStringGetCString(a1, buffer, 255, 0x8000100u);
        xpc_dictionary_set_string(v9, "identity", buffer);
      }

      if (a2)
      {
        CFStringGetCString(a2, buffer, 255, 0x8000100u);
        xpc_dictionary_set_string(v9, "reason", buffer);
      }

      if (a3)
      {
        v10 = _CFXPCCreateXPCObjectFromCFObject();
        if (v10)
        {
          v11 = v10;
          xpc_dictionary_set_value(v9, "description", v10);
          xpc_release(v11);
        }
      }
    }

    v12 = xpc_dictionary_create(0, 0, 0);
    if (v12)
    {
      v13 = v12;
      xpc_dictionary_set_value(v12, "claimSystemWakeEvent", v9);
      xpc_connection_resume(v8);
      xpc_connection_send_message(v8, v13);
      xpc_release(v13);
    }

    if (v9)
    {
      xpc_release(v9);
    }

    xpc_release(v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t IOPMSetValueInt(int a1, int a2)
{
  v5 = -536870212;
  v6 = 0;
  if (_pm_connect(&v6))
  {
    return 3758097112;
  }

  io_pm_set_value_int(v6, a1, a2, &v5);
  return v5;
}

uint64_t IOPMGetActivePushConnectionState(BOOL *a1)
{
  if (!a1)
  {
    return 3758097090;
  }

  v2 = IOPMGetValueInt(11);
  result = 0;
  *a1 = v2 != 0;
  return result;
}

uint64_t IOPMGetValueInt(int a1)
{
  v4 = 0;
  v2 = _pm_connect(&v4 + 1);
  result = 0;
  if (!v2)
  {
    if (io_pm_get_value_int(SHIDWORD(v4), a1, &v4))
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t IOPMConnectionSetNotification(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 3758097090;
  if (a1)
  {
    if (a3)
    {
      result = 0;
      *(a1 + 56) = a3;
      *(a1 + 64) = a2;
    }
  }

  return result;
}

uint64_t IOPMConnectionScheduleWithRunLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = -536870212;
  v3 = 3758097090;
  if (a1 && a2 && a3)
  {
    PMQueue = getPMQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __IOPMConnectionScheduleWithRunLoop_block_invoke;
    v9[3] = &unk_1E74A7E78;
    v9[4] = &v10;
    v9[5] = a1;
    v9[6] = a2;
    v9[7] = a3;
    dispatch_sync(PMQueue, v9);
    v3 = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return v3;
}

uint64_t __IOPMConnectionScheduleWithRunLoop_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  context.version = 1;
  context.info = v2;
  memset(&context.retain, 0, 24);
  if (!*(v2 + 40))
  {
    v3 = *MEMORY[0x1E695E480];
    *(*(a1 + 40) + 40) = CFMachPortCreate(*MEMORY[0x1E695E480], iopm_mach_port_callback, &context, 0);
    v2 = *(a1 + 40);
    v4 = *(v2 + 40);
    if (v4)
    {
      *(*(a1 + 40) + 48) = CFMachPortCreateRunLoopSource(v3, v4, 0);
      v2 = *(a1 + 40);
    }
  }

  v5 = *(v2 + 48);
  if (v5)
  {
    ++*(v2 + 72);
    CFRunLoopAddSource(*(a1 + 48), v5, *(a1 + 56));
    result = *(a1 + 40);
    if (*(result + 72) != 1)
    {
      return result;
    }

    if (*(result + 40))
    {
      Port = CFMachPortGetPort(*(result + 40));
      result = *(a1 + 40);
    }

    else
    {
      Port = 0;
    }

    result = _conveyMachPortToPowerd(result, Port, 1);
  }

  else
  {
    result = 3758097097;
  }

  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t iopm_mach_port_callback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 56);
    if (v4)
    {
      return v4(*(a4 + 64), a4, *(a2 + 32), *(a2 + 28));
    }
  }

  return result;
}

uint64_t _conveyMachPortToPowerd(int *a1, int a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0;
  if (_pm_connect(&v10 + 1))
  {
    v6 = 0;
  }

  else if (io_pm_connection_schedule_notification(SHIDWORD(v10), *a1, a2, a3 ^ 1u, &v10))
  {
    v6 = 3758097097;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      _conveyMachPortToPowerd_cold_1(a1);
    }
  }

  else
  {
    v6 = v10;
    if (v10 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = *a1;
      *buf = 67109376;
      v12 = v9;
      v13 = 1024;
      v14 = v6;
      _os_log_error_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to update machport for IOPMConnection id 0x%x. rc:0x%x\n", buf, 0xEu);
      v6 = v10;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t IOPMConnectionUnscheduleFromRunLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v3 = 3758097090;
  if (a1 && a2 && a3)
  {
    PMQueue = getPMQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __IOPMConnectionUnscheduleFromRunLoop_block_invoke;
    v9[3] = &unk_1E74A7EA0;
    v9[6] = a2;
    v9[7] = a3;
    v9[4] = &v10;
    v9[5] = a1;
    dispatch_sync(PMQueue, v9);
    v3 = *(v11 + 6);
  }

  _Block_object_dispose(&v10, 8);
  return v3;
}

void __IOPMConnectionUnscheduleFromRunLoop_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(v2 + 40))
  {
    CFRunLoopRemoveSource(*(a1 + 48), *(v2 + 48), *(a1 + 56));
    v2 = *(a1 + 40);
  }

  v3 = *(v2 + 72) - 1;
  *(v2 + 72) = v3;
  if (!v3)
  {
    v4 = *(v2 + 48);
    if (v4)
    {
      CFRelease(v4);
      v2 = *(a1 + 40);
    }

    v5 = *(v2 + 40);
    if (v5)
    {
      Port = CFMachPortGetPort(v5);
      v7 = _conveyMachPortToPowerd(*(a1 + 40), Port, 0);
      v8 = *(a1 + 40);
      *(*(*(a1 + 32) + 8) + 24) = v7;
      CFMachPortInvalidate(*(v8 + 40));
      v9 = *(*(a1 + 40) + 40);

      CFRelease(v9);
    }
  }
}

void setDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a2)
  {
    v4 = MEMORY[0x1E69E9A60];
    if (!mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, (a1 + 24)))
    {
      mach_port_insert_right(*v4, *(a1 + 24), *(a1 + 24), 0x14u);
      v5 = dispatch_source_create(MEMORY[0x1E69E96D8], *(a1 + 24), 0, a2);
      *(a1 + 32) = v5;
      if (v5)
      {
        v6 = *(a1 + 24);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 0x40000000;
        handler[2] = __setDispatchQueue_block_invoke;
        handler[3] = &__block_descriptor_tmp_102;
        handler[4] = v5;
        v10 = v6;
        dispatch_source_set_cancel_handler(v5, handler);
        v7 = *(a1 + 32);
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 0x40000000;
        v8[2] = __setDispatchQueue_block_invoke_2;
        v8[3] = &__block_descriptor_tmp_103;
        v8[4] = a1;
        dispatch_source_set_event_handler(v7, v8);
        dispatch_resume(*(a1 + 32));
        _conveyMachPortToPowerd(a1, *(a1 + 24), 1);
      }

      else
      {
        mach_port_deallocate(*v4, *(a1 + 24));
        mach_port_mod_refs(*v4, *(a1 + 24), 1u, -1);
        *(a1 + 24) = 0;
      }
    }
  }

  else if (*(a1 + 32))
  {
    _conveyMachPortToPowerd(a1, *(a1 + 24), 0);
    dispatch_source_cancel(*(a1 + 32));
    *(a1 + 32) = 0;
  }
}

uint64_t __setDispatchQueue_block_invoke(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  v2 = MEMORY[0x1E69E9A60];
  mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 40), 1u, -1);
  v3 = *v2;
  v4 = *(a1 + 40);

  return mach_port_deallocate(v3, v4);
}

uint64_t __setDispatchQueue_block_invoke_2(uint64_t a1)
{
  memset(v6, 0, 44);
  result = mach_msg(v6, 258, 0, 0x2Cu, *(*(a1 + 32) + 24), 0, 0);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
    if (v4)
    {
      v5 = result == 0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      return v4(*(v3 + 64), v3, v6[1].msgh_remote_port, v6[1].msgh_size);
    }
  }

  return result;
}

void IOPMConnectionSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  if (a1)
  {
    setDispatchQueue(a1, a2);
  }
}

uint64_t IOPMConnectionCreate(const __CFString *a1, int a2, uint64_t a3)
{
  v3 = 3758097090;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = -536870212;
  if (a1 && a2 && a3 && CFStringGetLength(a1) <= 128)
  {
    PMQueue = getPMQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __IOPMConnectionCreate_block_invoke;
    v9[3] = &unk_1E74A7F28;
    v9[4] = &v11;
    v9[5] = a3;
    v9[6] = a1;
    v10 = a2;
    dispatch_sync(PMQueue, v9);
    v3 = *(v12 + 6);
  }

  _Block_object_dispose(&v11, 8);
  return v3;
}

void __IOPMConnectionCreate_block_invoke(uint64_t a1)
{
  **(a1 + 40) = 0;
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x10E0040A93DF132uLL);
  if (v2)
  {
    v3 = v2;
    v2[5] = -1;
    v4 = v2 + 5;
    CFRetain(*(a1 + 48));
    *(v3 + 8) = *(a1 + 48);
    *(v3 + 16) = *(a1 + 56);
    *(*(*(a1 + 32) + 8) + 24) = _connectionCreate(v3);
    if (*(*(*(a1 + 32) + 8) + 24))
    {
      CFRelease(*(a1 + 48));

      free(v3);
    }

    else
    {
      PMQueue = getPMQueue();
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __IOPMConnectionCreate_block_invoke_2;
      handler[3] = &__block_descriptor_tmp_105;
      handler[4] = v3;
      if (notify_register_dispatch("com.apple.system.powermanagement.assertionresync", v4, PMQueue, handler) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __IOPMConnectionCreate_block_invoke_cold_1();
      }

      **(a1 + 40) = v3;
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -536870199;
  }
}

uint64_t _connectionCreate(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v5 = 0;
  v6 = _pm_connect(&v7);
  if (!v6)
  {
    CFStringGetCString(*(a1 + 8), buffer, 128, 0);
    if (io_pm_connection_create(v7, buffer, *(a1 + 16), &v5, &v6))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _connectionCreate_cold_1();
      }

      v6 = -536870199;
    }

    else if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        _connectionCreate_cold_2();
      }
    }

    else
    {
      v2 = v5;
      *a1 = v5;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        v9 = v2;
        _os_log_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Created IOPMConnection with id 0x%x\n", buf, 8u);
      }
    }
  }

  result = v6;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __IOPMConnectionCreate_block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = *v1;
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&dword_197195000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Recreating IOPMConnection id 0x%x\n", v6, 8u);
  }

  _connectionCreate(v1);
  v3 = *(v1 + 24);
  if (v3 || (result = *(v1 + 40)) != 0 && (result = CFMachPortGetPort(result), (v3 = result) != 0))
  {
    result = _conveyMachPortToPowerd(v1, v3, 1);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOPMConnectionRelease(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = -536870212;
  PMQueue = getPMQueue();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __IOPMConnectionRelease_block_invoke;
  v5[3] = &unk_1E74A7F50;
  v5[4] = &v6;
  v5[5] = a1;
  dispatch_sync(PMQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __IOPMConnectionRelease_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v5 = 0;
  if (notify_is_valid_token(*(v2 + 20)))
  {
    notify_cancel(*(v2 + 20));
  }

  v3 = *(v2 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  if (_pm_connect(&v5))
  {
    *(*(*(a1 + 32) + 8) + 24) = -536870199;
  }

  else
  {
    v4 = io_pm_connection_release(v5, *v2, (*(*(a1 + 32) + 8) + 24));
    if (v4)
    {
      *(*(*(a1 + 32) + 8) + 24) = v4;
    }

    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 32) = 0u;
    *v2 = 0u;
    free(v2);
  }
}

uint64_t IOPMCopyConnectionStatus(uint64_t a1, void *a2)
{
  result = _pm_connect(&v4);
  if (result)
  {
    return 3758097097;
  }

  *a2 = 0;
  return result;
}

BOOL IOPMGetCapabilitiesDescription(char *a1, int a2, char a3)
{
  if (a3)
  {
    if ((a3 & 3) == 1)
    {
      v3 = "DarkWake";
    }

    else
    {
      v3 = "FullWake";
      if ((a3 & 2) == 0)
      {
        v3 = "Unknown";
      }
    }
  }

  else
  {
    v3 = "Sleep";
  }

  v4 = "cpu ";
  if ((a3 & 1) == 0)
  {
    v4 = "<off> ";
  }

  v5 = "disk ";
  if ((a3 & 0x10) == 0)
  {
    v5 = "";
  }

  v6 = "net ";
  if ((a3 & 8) == 0)
  {
    v6 = "";
  }

  v7 = "aud ";
  if ((a3 & 4) == 0)
  {
    v7 = "";
  }

  v8 = "vid ";
  if ((a3 & 2) == 0)
  {
    v8 = "";
  }

  v9 = "push ";
  if ((a3 & 0x20) == 0)
  {
    v9 = "";
  }

  if ((a3 & 0x40) != 0)
  {
    v10 = "bg ";
  }

  else
  {
    v10 = "";
  }

  return snprintf(a1, a2, "%s:%s%s%s%s%s%s%s", v3, v4, v5, v6, v7, v8, v9, v10) <= a2;
}

uint64_t IOPMGetSleepServicesActive()
{
  out_token = 0;
  v2 = 0;
  v0 = notify_register_check("com.apple.powermanagement.sleepservices", &out_token);
  result = 0;
  if (!v0)
  {
    notify_get_state(out_token, &v2);
    notify_cancel(out_token);
    return v2 & 1;
  }

  return result;
}

uint64_t IOPMSetDebugFlags(int a1, _DWORD *a2)
{
  v7 = 0;
  v6 = _pm_connect(&v7);
  if (!v7)
  {
    return 3758097112;
  }

  v4 = io_pm_set_debug_flags(v7, a1, 2, &v6 + 1, &v6);
  result = v6;
  if (!(v4 | v6))
  {
    result = 0;
    if (a2)
    {
      *a2 = HIDWORD(v6);
    }
  }

  return result;
}

uint64_t IOPMChangeSystemActivityAssertionBehavior(int a1, _DWORD *a2)
{
  v7 = 0;
  v6 = _pm_connect(&v7);
  if (!v7)
  {
    return 3758097112;
  }

  v4 = io_pm_change_sa_assertion_behavior(v7, a1, &v6 + 1, &v6);
  result = v6;
  if (!(v4 | v6))
  {
    result = 0;
    if (HIDWORD(v6))
    {
      *a2 = HIDWORD(v6);
    }
  }

  return result;
}

uint64_t IOPMCtlAssertionType(const char *a1, int a2)
{
  v6 = 0;
  v5 = _pm_connect(&v6);
  if (!v6)
  {
    return 3758097112;
  }

  io_pm_ctl_assertion_type(v6, a1, a2, &v5);
  return v5;
}

uint64_t IOPMCopyPowerStateInfo(__int16 a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return -536870211;
  }

  v3 = Mutable;
  valuePtr = a1 & 0xF;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v4)
  {
    v5 = v4;
    CFDictionarySetValue(v3, @"CurrentState", v4);
    CFRelease(v5);
  }

  valuePtr = a1 >> 4;
  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(v3, @"MaxState", v6);
    CFRelease(v7);
  }

  v8 = *MEMORY[0x1E695E4C0];
  v9 = *MEMORY[0x1E695E4D0];
  if ((a1 & 0x100) != 0)
  {
    v10 = *MEMORY[0x1E695E4D0];
  }

  else
  {
    v10 = *MEMORY[0x1E695E4C0];
  }

  CFDictionarySetValue(v3, @"IsPowerOn", v10);
  if ((a1 & 0x200) != 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  CFDictionarySetValue(v3, @"IsDeviceUsable", v11);
  if ((a1 & 0x400) != 0)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  CFDictionarySetValue(v3, @"IsLowPower", v12);
  return v3;
}

uint64_t IOPMAssertionNotify(const char *a1, int a2)
{
  v6 = 0;
  v5 = _pm_connect(&v6);
  if (!v6)
  {
    return 3758097112;
  }

  io_pm_assertion_notify(v6, a1, a2, &v5);
  return v5;
}

uint64_t copyBatteryData(const char *a1, int a2, uint64_t a3, uint64_t a4)
{
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", MEMORY[0x1E69E96A0], 0);
  if (mach_service)
  {
    v9 = 0;
  }

  else
  {
    v9 = 3758097084;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      copyBatteryData_cold_1();
    }
  }

  xpc_connection_set_target_queue(mach_service, MEMORY[0x1E69E96A0]);
  xpc_connection_set_event_handler(mach_service, &__block_literal_global_188);
  xpc_connection_resume(mach_service);
  v10 = xpc_dictionary_create(0, 0, 0);
  if (v10)
  {
    v11 = v10;
    xpc_dictionary_set_uint64(v10, a1, a2);
    PMQueue = getPMQueue();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __copyBatteryData_block_invoke_189;
    v14[3] = &unk_1E74A80D0;
    v14[4] = a4;
    v14[5] = a3;
    v14[6] = a1;
    v14[7] = mach_service;
    xpc_connection_send_message_with_reply(mach_service, v11, PMQueue, v14);
    xpc_release(v11);
    if (!mach_service)
    {
      return v9;
    }

    goto LABEL_10;
  }

  v9 = 3758097084;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    copyBatteryData_cold_2();
    if (!mach_service)
    {
      return v9;
    }

    goto LABEL_10;
  }

  if (mach_service)
  {
LABEL_10:
    xpc_release(mach_service);
  }

  return v9;
}

uint64_t IOPMSetDesktopModeWithOptions(BOOL a1, const __CFDictionary *a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", global_queue, 0);
  if (!mach_service)
  {
    return 3758097084;
  }

  v6 = mach_service;
  xpc_connection_set_target_queue(mach_service, global_queue);
  xpc_connection_set_event_handler(v6, &__block_literal_global_162);
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    xpc_dictionary_set_BOOL(v7, "DesktopMode", a1);
    if (a2)
    {
      if (CFDictionaryContainsKey(a2, @"DesktopModeAppliesOnBatteryPower"))
      {
        v9 = CFDictionaryGetValue(a2, @"DesktopModeAppliesOnBatteryPower") != 0;
        xpc_dictionary_set_BOOL(v8, "DesktopModeAppliesOnBatteryPower", v9);
      }
    }

    xpc_connection_resume(v6);
    xpc_connection_send_message(v6, v8);
    xpc_release(v8);
  }

  xpc_release(v6);
  return 0;
}

uint64_t IOPMSkylightCheckInWithCapability(BOOL a1, uint64_t a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", global_queue, 0);
  if (!mach_service)
  {
    return 3758097084;
  }

  v6 = mach_service;
  xpc_connection_set_target_queue(mach_service, global_queue);
  xpc_connection_set_event_handler(v6, &__block_literal_global_170);
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    xpc_dictionary_set_BOOL(v7, "SLCheckIn", a1);
    xpc_dictionary_set_uint64(v8, "SLCheckInCapability", a2);
    xpc_connection_resume(v6);
    xpc_connection_send_message(v6, v8);
    xpc_release(v8);
  }

  xpc_release(v6);
  return 0;
}

uint64_t IOPMSetSystemAssertionTimeout(unsigned int a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", global_queue, 0);
  if (!mach_service)
  {
    return 3758097084;
  }

  v4 = mach_service;
  xpc_connection_set_target_queue(mach_service, global_queue);
  xpc_connection_set_event_handler(v4, &__block_literal_global_175);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = v5;
    xpc_dictionary_set_uint64(v5, "systemAssertionTimeout", a1);
    xpc_connection_resume(v4);
    xpc_connection_send_message(v4, v6);
    xpc_release(v6);
  }

  xpc_release(v4);
  return 0;
}

uint64_t IOPMUpdateDominoState(BOOL a1, BOOL a2)
{
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", global_queue, 0);
  if (!mach_service)
  {
    return 3758097084;
  }

  v6 = mach_service;
  xpc_connection_set_target_queue(mach_service, global_queue);
  xpc_connection_set_event_handler(v6, &__block_literal_global_179);
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7)
  {
    v8 = v7;
    xpc_dictionary_set_BOOL(v7, "dominoState", a1);
    xpc_dictionary_set_BOOL(v8, "dominoMainDisplay", a2);
    xpc_connection_resume(v6);
    xpc_connection_send_message(v6, v8);
    xpc_release(v8);
  }

  xpc_release(v6);
  return 0;
}

uint64_t IOPMUpdateOnenessState(BOOL a1)
{
  global_queue = dispatch_get_global_queue(0, 0);
  mach_service = xpc_connection_create_mach_service("com.apple.iokit.powerdxpc", global_queue, 0);
  if (!mach_service)
  {
    return 3758097084;
  }

  v4 = mach_service;
  xpc_connection_set_target_queue(mach_service, global_queue);
  xpc_connection_set_event_handler(v4, &__block_literal_global_184);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5)
  {
    v6 = v5;
    xpc_dictionary_set_BOOL(v5, "onenessState", a1);
    xpc_connection_resume(v4);
    xpc_connection_send_message(v4, v6);
    xpc_release(v6);
  }

  xpc_release(v4);
  return 0;
}

void __copyBatteryData_block_invoke_189(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x19A8DC620](a2) == MEMORY[0x1E69E9E80])
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __copyBatteryData_block_invoke_2;
    v5[3] = &unk_1E74A80A8;
    v4 = *(a1 + 40);
    v5[4] = *(a1 + 32);
    v5[5] = v3;
    dispatch_async(v4, v5);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __copyBatteryData_block_invoke_189_cold_1(a1);
  }

  xpc_connection_cancel(*(a1 + 56));
}

uint64_t IOAVControlInterfaceGetTypeID()
{
  result = __kIOAVControlInterfaceTypeID;
  if (!__kIOAVControlInterfaceTypeID)
  {
    pthread_once(&__interfaceTypeInit, __IOAVControlInterfaceRegister);
    return __kIOAVControlInterfaceTypeID;
  }

  return result;
}

uint64_t __IOAVControlInterfaceRegister()
{
  result = _CFRuntimeRegisterClass();
  __kIOAVControlInterfaceTypeID = result;
  return result;
}

uint64_t IOAVControlInterfaceCreate(uint64_t a1)
{
  if (*MEMORY[0x1E695E480] == a1)
  {
    return __IOAVCopyFirstMatchingIOAVObjectOfType("IOAVControlInterface", IOAVControlInterfaceCreateWithService, 0, 2u, -1);
  }

  else
  {
    return 0;
  }
}

io_connect_t *IOAVControlInterfaceGetService(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result)
  {
    parent = 0;
    if (IORegistryEntryGetParentEntry(*(a1 + 16), "IOService", &parent))
    {
      result = IOAVServiceCreateWithService(*MEMORY[0x1E695E480], parent);
      *(a1 + 32) = result;
    }

    else
    {
      return *(a1 + 32);
    }
  }

  return result;
}

uint64_t IOAVControlInterfaceSetLogLevel(uint64_t a1, unsigned int a2)
{
  input[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 20);
  input[0] = a2;
  result = IOConnectCallMethod(v2, 0, input, 1u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t IOAVControlInterfaceSetLogLevelMask(uint64_t a1, unsigned int a2, unsigned int a3)
{
  input[2] = *MEMORY[0x1E69E9840];
  input[0] = a2;
  input[1] = a3;
  result = IOConnectCallMethod(*(a1 + 20), 1u, input, 2u, 0, 0, 0, 0, 0, 0);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void __IOAVControlInterfaceFree(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    IOServiceClose(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    IOObjectRelease(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {

    CFRelease(v4);
  }
}

uint64_t (*_io_SCDynamicStoreAddWatchedKey(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t, uint64_t)
{
  v6 = _io_SCDynamicStoreAddWatchedKey_dyfunc;
  if (_io_SCDynamicStoreAddWatchedKey_dyfunc || (result = symAddrInSC("SCDynamicStoreAddWatchedKey"), v6 = result, (_io_SCDynamicStoreAddWatchedKey_dyfunc = result) != 0))
  {

    return v6(a1, a2, a3);
  }

  return result;
}

void *symAddrInSC(char *__symbol)
{
  v8 = *MEMORY[0x1E69E9840];
  result = symAddrInSC_handle;
  if (symAddrInSC_handle)
  {
    goto LABEL_10;
  }

  memset(&v6, 0, sizeof(v6));
  v3 = getenv("DYLD_IMAGE_SUFFIX");
  __strlcpy_chk();
  if (v3)
  {
    __strlcat_chk();
  }

  if (stat(v7, &v6) < 0)
  {
    v4 = "/System/Library/Frameworks/SystemConfiguration.framework/SystemConfiguration";
  }

  else
  {
    v4 = v7;
  }

  result = dlopen(v4, 1);
  if (result)
  {
    symAddrInSC_handle = result;
LABEL_10:
    result = dlsym(result, __symbol);
    goto LABEL_11;
  }

  result = symAddrInSC_handle;
  if (symAddrInSC_handle)
  {
    goto LABEL_10;
  }

LABEL_11:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _io_SCError()
{
  v0 = _io_SCError_dyfunc;
  if (!_io_SCError_dyfunc)
  {
    v0 = symAddrInSC("SCError");
    _io_SCError_dyfunc = v0;
    if (!v0)
    {
      return 1001;
    }
  }

  return (v0)();
}

uint64_t (*_io_SCDynamicStoreCopyMultiple(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t, uint64_t)
{
  v6 = _io_SCDynamicStoreCopyMultiple_dyfunc;
  if (_io_SCDynamicStoreCopyMultiple_dyfunc || (result = symAddrInSC("SCDynamicStoreCopyMultiple"), v6 = result, (_io_SCDynamicStoreCopyMultiple_dyfunc = result) != 0))
  {

    return v6(a1, a2, a3);
  }

  return result;
}

uint64_t (*_io_SCDynamicStoreCopyValue(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v4 = _io_SCDynamicStoreCopyValue_dyfunc;
  if (_io_SCDynamicStoreCopyValue_dyfunc || (result = symAddrInSC("SCDynamicStoreCopyValue"), v4 = result, (_io_SCDynamicStoreCopyValue_dyfunc = result) != 0))
  {

    return v4(a1, a2);
  }

  return result;
}

uint64_t (*_io_SCDynamicStoreCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t, uint64_t, uint64_t)
{
  v8 = _io_SCDynamicStoreCreate_dyfunc;
  if (_io_SCDynamicStoreCreate_dyfunc || (result = symAddrInSC("SCDynamicStoreCreate"), v8 = result, (_io_SCDynamicStoreCreate_dyfunc = result) != 0))
  {

    return v8(a1, a2, a3, a4);
  }

  return result;
}

uint64_t (*_io_SCDynamicStoreCreateRunLoopSource(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t, uint64_t)
{
  v6 = _io_SCDynamicStoreCreateRunLoopSource_dyfunc;
  if (_io_SCDynamicStoreCreateRunLoopSource_dyfunc || (result = symAddrInSC("SCDynamicStoreCreateRunLoopSource"), v6 = result, (_io_SCDynamicStoreCreateRunLoopSource_dyfunc = result) != 0))
  {

    return v6(a1, a2, a3);
  }

  return result;
}

uint64_t (*_io_SCDynamicStoreKeyCreatePreferences(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t, uint64_t)
{
  v6 = _io_SCDynamicStoreKeyCreatePreferences_dyfunc;
  if (_io_SCDynamicStoreKeyCreatePreferences_dyfunc || (result = symAddrInSC("SCDynamicStoreKeyCreatePreferences"), v6 = result, (_io_SCDynamicStoreKeyCreatePreferences_dyfunc = result) != 0))
  {

    return v6(a1, a2, a3);
  }

  return result;
}

uint64_t (*_io_SCDynamicStoreSetNotificationKeys(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t, uint64_t)
{
  v6 = _io_SCDynamicStoreSetNotificationKeys_dyfunc;
  if (_io_SCDynamicStoreSetNotificationKeys_dyfunc || (result = symAddrInSC("SCDynamicStoreSetNotificationKeys"), v6 = result, (_io_SCDynamicStoreSetNotificationKeys_dyfunc = result) != 0))
  {

    return v6(a1, a2, a3);
  }

  return result;
}

uint64_t (*_io_SCDynamicStoreNotifyValue(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v4 = _io_SCDynamicStoreNotifyValue_dyfunc;
  if (_io_SCDynamicStoreNotifyValue_dyfunc || (result = symAddrInSC("SCDynamicStoreNotifyValue"), v4 = result, (_io_SCDynamicStoreNotifyValue_dyfunc = result) != 0))
  {

    return v4(a1, a2);
  }

  return result;
}

uint64_t (*_io_SCDynamicStoreSetValue(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t, uint64_t)
{
  v6 = _io_SCDynamicStoreSetValue_dyfunc;
  if (_io_SCDynamicStoreSetValue_dyfunc || (result = symAddrInSC("SCDynamicStoreSetValue"), v6 = result, (_io_SCDynamicStoreSetValue_dyfunc = result) != 0))
  {

    return v6(a1, a2, a3);
  }

  return result;
}

uint64_t (*_io_SCPreferencesApplyChanges(uint64_t a1))(uint64_t)
{
  v2 = _io_SCPreferencesApplyChanges_dyfunc;
  if (_io_SCPreferencesApplyChanges_dyfunc || (result = symAddrInSC("SCPreferencesApplyChanges"), v2 = result, (_io_SCPreferencesApplyChanges_dyfunc = result) != 0))
  {

    return v2(a1);
  }

  return result;
}

uint64_t (*_io_SCPreferencesCommitChanges(uint64_t a1))(uint64_t)
{
  v2 = _io_SCPreferencesCommitChanges_dyfunc;
  if (_io_SCPreferencesCommitChanges_dyfunc || (result = symAddrInSC("SCPreferencesCommitChanges"), v2 = result, (_io_SCPreferencesCommitChanges_dyfunc = result) != 0))
  {

    return v2(a1);
  }

  return result;
}

uint64_t (*_io_SCPreferencesCreate(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t, uint64_t)
{
  v6 = _io_SCPreferencesCreate_dyfunc;
  if (_io_SCPreferencesCreate_dyfunc || (result = symAddrInSC("SCPreferencesCreate"), v6 = result, (_io_SCPreferencesCreate_dyfunc = result) != 0))
  {

    return v6(a1, a2, a3);
  }

  return result;
}

uint64_t (*_io_SCPreferencesCreateWithAuthorization(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t, uint64_t, uint64_t, uint64_t)
{
  v8 = _io_SCPreferencesCreateWithAuthorization_dyfunc;
  if (_io_SCPreferencesCreateWithAuthorization_dyfunc || (result = symAddrInSC("SCPreferencesCreateWithAuthorization"), v8 = result, (_io_SCPreferencesCreateWithAuthorization_dyfunc = result) != 0))
  {

    return v8(a1, a2, a3, a4);
  }

  return result;
}

uint64_t (*_io_SCPreferencesGetValue(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v4 = _io_SCPreferencesGetValue_dyfunc;
  if (_io_SCPreferencesGetValue_dyfunc || (result = symAddrInSC("SCPreferencesGetValue"), v4 = result, (_io_SCPreferencesGetValue_dyfunc = result) != 0))
  {

    return v4(a1, a2);
  }

  return result;
}

uint64_t (*_io_SCPreferencesLock(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v4 = _io_SCPreferencesLock_dyfunc;
  if (_io_SCPreferencesLock_dyfunc || (result = symAddrInSC("SCPreferencesLock"), v4 = result, (_io_SCPreferencesLock_dyfunc = result) != 0))
  {

    return v4(a1, a2);
  }

  return result;
}

uint64_t (*_io_SCPreferencesRemoveValue(uint64_t a1, uint64_t a2))(uint64_t, uint64_t)
{
  v4 = _io_SCPreferencesRemoveValue_dyfunc;
  if (_io_SCPreferencesRemoveValue_dyfunc || (result = symAddrInSC("SCPreferencesRemoveValue"), v4 = result, (_io_SCPreferencesRemoveValue_dyfunc = result) != 0))
  {

    return v4(a1, a2);
  }

  return result;
}

uint64_t (*_io_SCPreferencesSetValue(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t, uint64_t, uint64_t)
{
  v6 = _io_SCPreferencesSetValue_dyfunc;
  if (_io_SCPreferencesSetValue_dyfunc || (result = symAddrInSC("SCPreferencesSetValue"), v6 = result, (_io_SCPreferencesSetValue_dyfunc = result) != 0))
  {

    return v6(a1, a2, a3);
  }

  return result;
}

uint64_t (*_io_SCPreferencesUnlock(uint64_t a1))(uint64_t)
{
  v2 = _io_SCPreferencesUnlock_dyfunc;
  if (_io_SCPreferencesUnlock_dyfunc || (result = symAddrInSC("SCPreferencesUnlock"), v2 = result, (_io_SCPreferencesUnlock_dyfunc = result) != 0))
  {

    return v2(a1);
  }

  return result;
}

uint64_t __IOHIDValueRegister()
{
  result = _CFRuntimeRegisterClass();
  __valueTypeID = result;
  return result;
}

CFTypeID IOHIDValueGetTypeID(void)
{
  result = __valueTypeID;
  if (!__valueTypeID)
  {
    pthread_once(&__valueTypeInit, __IOHIDValueRegister);
    return __valueTypeID;
  }

  return result;
}

uint64_t _IOHIDValueCreateWithStruct(uint64_t a1, const void *a2, uint64_t a3)
{
  Private = 0;
  if (a2 && a3)
  {
    v7 = *(a3 + 24) && *(a3 + 20) != 0;
    Length = _IOHIDElementGetLength(a2);
    Private = __IOHIDValueCreatePrivate(a1, Length);
    if (Private)
    {
      *(Private + 16) = CFRetain(a2);
      v9 = *(a3 + 12);
      *(Private + 32) = v9;
      if (dynLinkrosetta_is_current_process_translated[0])
      {
        v10 = dynLinkrosetta_is_current_process_translated[0]();
        v9 = *(Private + 32);
        if (v10)
        {
          if (dynLinkrosetta_convert_to_system_absolute_time[0])
          {
            v9 = (dynLinkrosetta_convert_to_system_absolute_time[0])(v9);
          }
        }
      }

      *(Private + 32) = v9;
      *(Private + 40) = Length;
      if (v7)
      {
        v11 = *(a3 + 24);
        v12 = (Private + 56);
        v13 = Length;
      }

      else
      {
        if (Length >= 4uLL)
        {
          v13 = 4;
        }

        else
        {
          v13 = Length;
        }

        v12 = (Private + 56);
        v11 = (a3 + 8);
      }

      memmove(v12, v11, v13);
    }
  }

  return Private;
}

IOHIDValueRef IOHIDValueCreateWithIntegerValue(CFAllocatorRef allocator, IOHIDElementRef element, uint64_t timeStamp, CFIndex value)
{
  if (!element)
  {
    return 0;
  }

  Length = _IOHIDElementGetLength(element);
  Private = __IOHIDValueCreatePrivate(allocator, Length);
  if (Private)
  {
    *(Private + 16) = CFRetain(element);
    *(Private + 32) = timeStamp;
    if (dynLinkrosetta_is_current_process_translated[0])
    {
      v10 = dynLinkrosetta_is_current_process_translated[0]();
      timeStamp = *(Private + 32);
      if (v10)
      {
        if (dynLinkrosetta_convert_to_system_absolute_time[0])
        {
          timeStamp = (dynLinkrosetta_convert_to_system_absolute_time[0])(*(Private + 32));
        }
      }
    }

    *(Private + 32) = timeStamp;
    *(Private + 40) = Length;
    __src = value;
    if (Length >= 8uLL)
    {
      v11 = 8;
    }

    else
    {
      v11 = Length;
    }

    memmove((Private + 56), &__src, v11);
  }

  return Private;
}

IOHIDValueRef IOHIDValueCreateWithBytes(CFAllocatorRef allocator, IOHIDElementRef element, uint64_t timeStamp, const uint8_t *bytes, CFIndex length)
{
  Private = 0;
  if (element)
  {
    if (bytes)
    {
      if (length)
      {
        v11 = _IOHIDElementGetLength(element);
        Private = __IOHIDValueCreatePrivate(allocator, v11);
        if (Private)
        {
          *(Private + 16) = CFRetain(element);
          *(Private + 32) = timeStamp;
          if (dynLinkrosetta_is_current_process_translated[0])
          {
            v12 = dynLinkrosetta_is_current_process_translated[0]();
            timeStamp = *(Private + 32);
            if (v12)
            {
              if (dynLinkrosetta_convert_to_system_absolute_time[0])
              {
                timeStamp = (dynLinkrosetta_convert_to_system_absolute_time[0])(*(Private + 32));
              }
            }
          }

          *(Private + 32) = timeStamp;
          *(Private + 40) = v11;
          if (v11 >= length)
          {
            v13 = length;
          }

          else
          {
            v13 = v11;
          }

          memmove((Private + 56), bytes, v13);
        }
      }
    }
  }

  return Private;
}

IOHIDValueRef IOHIDValueCreateWithBytesNoCopy(CFAllocatorRef allocator, IOHIDElementRef element, uint64_t timeStamp, const uint8_t *bytes, CFIndex length)
{
  Private = 0;
  if (element)
  {
    if (bytes)
    {
      v7 = length;
      if (length)
      {
        Private = __IOHIDValueCreatePrivate(allocator, 0);
        if (Private)
        {
          *(Private + 16) = CFRetain(element);
          *(Private + 32) = timeStamp;
          if (dynLinkrosetta_is_current_process_translated[0])
          {
            v10 = dynLinkrosetta_is_current_process_translated[0]();
            timeStamp = *(Private + 32);
            if (v10)
            {
              if (dynLinkrosetta_convert_to_system_absolute_time[0])
              {
                timeStamp = (dynLinkrosetta_convert_to_system_absolute_time[0])(*(Private + 32));
              }
            }
          }

          *(Private + 32) = timeStamp;
          if (_IOHIDElementGetLength(element) <= v7)
          {
            LODWORD(v7) = _IOHIDElementGetLength(element);
          }

          *(Private + 40) = v7;
          *(Private + 48) = bytes;
        }
      }
    }
  }

  return Private;
}

uint64_t _IOHIDValueCreateWithValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Private = __IOHIDValueCreatePrivate(a1, *(a2 + 40));
  v6 = Private;
  if (Private)
  {
    *(Private + 16) = a3;
    *(Private + 24) = 1;
    *(Private + 32) = *(a2 + 32);
    v7 = *(a2 + 40);
    *(Private + 40) = v7;
    memmove((Private + 56), (a2 + 56), v7);
  }

  return v6;
}

CFIndex IOHIDValueGetIntegerValue(IOHIDValueRef value)
{
  v1 = *(value + 2);
  if (*(value + 6))
  {
    v2 = *(value + 6);
  }

  v3 = *(value + 10);
  if (IOHIDElementGetLogicalMin(*(value + 2)) < 0)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = IOHIDElementGetLogicalMax(v1) >> 63;
  }

  __memmove_chk();
  if (v3 && (v4 & 1) != 0)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

double_t IOHIDValueGetScaledValue(IOHIDValueRef value, IOHIDValueScaleType type)
{
  v3 = *(value + 2);
  IntegerValue = IOHIDValueGetIntegerValue(value);
  LogicalMin = IOHIDElementGetLogicalMin(v3);
  LogicalMax = IOHIDElementGetLogicalMax(v3);
  PhysicalMin = IOHIDElementGetPhysicalMin(v3);
  PhysicalMax = IOHIDElementGetPhysicalMax(v3);
  v9 = 0.0;
  if (type == 2)
  {
    v17 = IOHIDElementGetUnitExponent(v3) & 0xF;
    if (v17 > 7)
    {
      v19 = __exp10((16 - v17));
      v18 = 0.0;
      v9 = 1.0 / v19;
      goto LABEL_25;
    }

    v9 = __exp10(v17);
    goto LABEL_16;
  }

  if (type || (CalibrationInfo = _IOHIDElementGetCalibrationInfo(v3)) == 0)
  {
LABEL_16:
    v18 = 0.0;
    goto LABEL_25;
  }

  v11 = *(CalibrationInfo + 32);
  v12 = *(CalibrationInfo + 40);
  if (v11 == v12)
  {
    PhysicalMin = -1;
  }

  else
  {
    PhysicalMin = *(CalibrationInfo + 32);
  }

  if (v11 == v12)
  {
    PhysicalMax = 1;
  }

  else
  {
    PhysicalMax = *(CalibrationInfo + 40);
  }

  v13 = *(CalibrationInfo + 8);
  if (*CalibrationInfo != v13)
  {
    if (IntegerValue <= *CalibrationInfo)
    {
      return PhysicalMin;
    }

    if (IntegerValue >= v13)
    {
      return PhysicalMax;
    }

    LogicalMax = *(CalibrationInfo + 8);
    LogicalMin = *CalibrationInfo;
  }

  v15 = *(CalibrationInfo + 16);
  v14 = *(CalibrationInfo + 24);
  if (v15 != v14)
  {
    result = vcvtd_n_f64_s64(PhysicalMax - PhysicalMin, 1uLL) + PhysicalMin;
    if (IntegerValue >= v15)
    {
      if (IntegerValue <= v14)
      {
        return result;
      }

      PhysicalMin = result;
      LogicalMin = *(CalibrationInfo + 24);
    }

    else
    {
      PhysicalMax = result;
      LogicalMax = *(CalibrationInfo + 16);
    }
  }

  v18 = *(CalibrationInfo + 48);
LABEL_25:
  result = (PhysicalMax - PhysicalMin) * (IntegerValue - LogicalMin) / (LogicalMax - LogicalMin) + PhysicalMin;
  if (v9 != 0.0)
  {
    result = v9 * result;
  }

  if (v18 != 0.0)
  {
    return v18 * llround(result / v18);
  }

  return result;
}

void *_IOHIDValueCopyToElementValuePtr(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  if (IOHIDElementGetLogicalMin(v4) < 0)
  {
    LODWORD(v7) = 1;
  }

  else
  {
    v7 = IOHIDElementGetLogicalMax(v4) >> 63;
  }

  if (v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = (a1 + 56);
  }

  return __IOHIDValueConvertByteToWord(v8, (a2 + 20), v6, v7);
}

void *__IOHIDValueConvertByteToWord(void *__src, void *__dst, size_t __len, int a4)
{
  v5 = __len;
  result = memmove(__dst, __src, __len);
  if (v5)
  {
    if (a4)
    {
      v8 = v5 & 3;
      if ((v5 & 3) != 0)
      {
        v9 = *(__dst + (v5 >> 2));
        if ((v9 >> (8 * v8 - 1)))
        {
          *(__dst + (v5 >> 2)) = v9 | (-1 << (8 * v8));
        }
      }
    }
  }

  return result;
}

void *_IOHIDValueCopyToElementValueHeader(uint64_t a1, IOHIDElementCookie *a2)
{
  v4 = *(a1 + 16);
  *a2 = IOHIDElementGetCookie(v4);
  v5 = *(a1 + 40);
  a2[1] = v5;
  v6 = *(a1 + 48);
  if (IOHIDElementGetLogicalMin(v4) < 0)
  {
    LODWORD(v7) = 1;
  }

  else
  {
    v7 = IOHIDElementGetLogicalMax(v4) >> 63;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = (a1 + 56);
  }

  return __IOHIDValueConvertByteToWord(v8, a2 + 2, v5, v7);
}

uint64_t initrosetta_convert_to_system_absolute_time(uint64_t a1)
{
  v2 = RosettaLibrary_libLibrary;
  if (!RosettaLibrary_libLibrary)
  {
    v2 = dlopen("/usr/lib/libRosetta.dylib", 2);
    RosettaLibrary_libLibrary = v2;
  }

  v3 = dlsym(v2, "rosetta_convert_to_system_absolute_time");
  dynLinkrosetta_convert_to_system_absolute_time[0] = v3;
  if (!v3)
  {
    return a1;
  }

  return (v3)(a1);
}

uint64_t initrosetta_convert_to_rosetta_absolute_time(uint64_t a1)
{
  v2 = RosettaLibrary_libLibrary;
  if (!RosettaLibrary_libLibrary)
  {
    v2 = dlopen("/usr/lib/libRosetta.dylib", 2);
    RosettaLibrary_libLibrary = v2;
  }

  v3 = dlsym(v2, "rosetta_convert_to_rosetta_absolute_time");
  dynLinkrosetta_convert_to_rosetta_absolute_time[0] = v3;
  if (!v3)
  {
    return a1;
  }

  return (v3)(a1);
}

void _IOHIDElementReleasePrivate(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    CFRelease(v2);
    a1[7] = 0;
  }

  v3 = a1[8];
  if (v3)
  {
    CFRelease(v3);
    a1[8] = 0;
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
    a1[9] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[10];
  if (v6)
  {
    CFRelease(v6);
    a1[10] = 0;
  }

  v7 = a1[12];
  if (v7)
  {
    CFRelease(v7);
    a1[12] = 0;
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
    a1[13] = 0;
  }

  v9 = a1[3];
  if (v9)
  {
    CFRelease(v9);
    a1[3] = 0;
  }

  v10 = a1[11];
  if (v10)
  {
    free(v10);
  }

  a1[11] = 0;
}

uint64_t _IOHIDElementCreateWithParentAndData(uint64_t a1, const void *a2, const void *a3, uint64_t a4, int a5)
{
  if (!a4)
  {
    return 0;
  }

  Private = _IOHIDElementCreatePrivate();
  if (Private)
  {
    *(Private + 48) = CFRetain(a3);
    *(Private + 32) = a4;
    *(Private + 40) = a5;
    if (a2)
    {
      v10 = CFRetain(a2);
    }

    else
    {
      v10 = 0;
    }

    *(Private + 72) = v10;
  }

  return Private;
}

uint64_t _IOHIDElementCreateWithElement(const __CFAllocator *a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  Private = _IOHIDElementCreatePrivate();
  v9 = Private;
  if (Private)
  {
    *(Private + 40) = 0;
    *(Private + 80) = CFRetain(a2);
    Mutable = CFDataCreateMutable(a1, 96);
    *(v9 + 48) = Mutable;
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    *(v9 + 32) = MutableBytePtr;
    memmove(MutableBytePtr, *(a2 + 32), 0x60uLL);
    v12 = -*(a2 + 40) - **(a2 + 32);
    v13 = *(v9 + 32);
    *v13 = v12;
    v13[1] = v12;
    v13[6] = a3;
    v13[7] = a4;
    v13[8] = a4;
    v13[19] = 0;
    v13[20] = 0;
  }

  return v9;
}

IOHIDElementRef IOHIDElementCreateWithDictionary(CFAllocatorRef allocator, CFDictionaryRef dictionary)
{
  if (!dictionary)
  {
    return 0;
  }

  Private = _IOHIDElementCreatePrivate();
  v4 = Private;
  if (Private)
  {
    *(Private + 40) = 0;
    Mutable = CFDataCreateMutable(allocator, 96);
    *(v4 + 6) = Mutable;
    if (Mutable)
    {
      *(v4 + 4) = CFDataGetMutableBytePtr(Mutable);
      return v4;
    }

    CFRelease(v4);
    return 0;
  }

  return v4;
}

uint32_t IOHIDElementGetUsage(IOHIDElementRef element)
{
  v1 = *(element + 4);
  v2 = *(v1 + 28);
  if (v2 == *(v1 + 32))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(element + 10);
  }

  return v3 + v2;
}

CFStringRef IOHIDElementGetName(IOHIDElementRef element)
{
  result = *(element + 12);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"Name");
    if (result)
    {
      v2 = result;
      v3 = CFGetTypeID(result);
      if (v3 == CFStringGetTypeID())
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CFTypeRef IOHIDElementGetProperty(IOHIDElementRef element, CFStringRef key)
{
  result = *(element + 12);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

uint32_t IOHIDElementGetReportCount(IOHIDElementRef element)
{
  v2 = *(element + 4);
  result = *(v2 + 92);
  if (*(v2 + 76))
  {
    if (*(element + 10))
    {
      return 1;
    }
  }

  return result;
}

uint64_t IOHIDElementGetDuplicateIndex(uint64_t a1)
{
  if (!*(*(a1 + 32) + 76))
  {
    return 0;
  }

  v1 = *(a1 + 40);
  v2 = v1 != 0;
  v3 = v1 - 1;
  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

IOHIDElementRef IOHIDElementGetParent(IOHIDElementRef element)
{
  result = *(element + 9);
  if (!result)
  {
    if (*(element + 1))
    {
      theArray = 0;
      v3 = CFGetAllocator(element);
      Mutable = CFDictionaryCreateMutable(v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v5 = Mutable;
        valuePtr = *(*(element + 4) + 8);
        v6 = CFGetAllocator(element);
        v7 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(v5, @"ElementCookie", v7);
        CFRelease(v7);
        (*(**(element + 1) + 72))(*(element + 1), v5, &theArray, 0);
        if (theArray)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
          *(element + 9) = CFRetain(ValueAtIndex);
          CFRelease(theArray);
        }

        CFRelease(v5);
      }

      return *(element + 9);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFArrayRef IOHIDElementGetChildren(IOHIDElementRef element)
{
  v8 = 0;
  result = *(element + 8);
  if (!result)
  {
    if (*(element + 1))
    {
      v3 = CFGetAllocator(element);
      result = CFDictionaryCreateMutable(v3, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (result)
      {
        v4 = result;
        valuePtr = *(element + 10) + **(element + 4);
        v5 = CFGetAllocator(element);
        v6 = CFNumberCreate(v5, kCFNumberIntType, &valuePtr);
        CFDictionarySetValue(v4, @"CollectionCookie", v6);
        CFRelease(v6);
        (*(**(element + 1) + 72))(*(element + 1), v4, &v8, 0);
        if (v8)
        {
          *(element + 8) = v8;
        }

        CFRelease(v4);
        return v8;
      }
    }
  }

  return result;
}

void IOHIDElementAttach(IOHIDElementRef element, IOHIDElementRef toAttach)
{
  v3 = 0;
  v4 = MEMORY[0x1E695E9C0];
  do
  {
    v5 = v3;
    v6 = element;
    Mutable = *(element + 7);
    if (!Mutable)
    {
      v8 = CFGetAllocator(element);
      Mutable = CFArrayCreateMutable(v8, 0, v4);
      v6[7] = Mutable;
      if (!Mutable)
      {
        break;
      }
    }

    v9.length = CFArrayGetCount(Mutable);
    v9.location = 0;
    if (CFArrayGetFirstIndexOfValue(Mutable, v9, toAttach) != -1)
    {
      break;
    }

    CFArrayAppendValue(v6[7], toAttach);
    v3 = 1;
    element = toAttach;
    toAttach = v6;
  }

  while ((v5 & 1) == 0);
}

void IOHIDElementDetach(IOHIDElementRef element, IOHIDElementRef toDetach)
{
  v3 = 0;
  do
  {
    v4 = *(element + 7);
    if (!v4)
    {
      break;
    }

    v5 = v3;
    v6 = element;
    v8.length = CFArrayGetCount(*(element + 7));
    v8.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v4, v8, toDetach);
    if (FirstIndexOfValue == -1)
    {
      break;
    }

    CFArrayRemoveValueAtIndex(v6[7], FirstIndexOfValue);
    v3 = 1;
    element = toDetach;
    toDetach = v6;
  }

  while ((v5 & 1) == 0);
}

CFArrayRef IOHIDElementCopyAttached(IOHIDElementRef element)
{
  if (!*(element + 7))
  {
    return 0;
  }

  v2 = CFGetAllocator(element);
  v3 = *(element + 7);

  return CFArrayCreateCopy(v2, v3);
}

void _IOHIDElementSetValue(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3 != a2)
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 24) = 0;
    }

    if (a2)
    {
      *(a1 + 24) = _IOHIDValueCreateWithValue(*MEMORY[0x1E695E480], a2, a1);
    }
  }
}

Boolean IOHIDElementSetProperty(IOHIDElementRef element, CFStringRef key, CFTypeRef property)
{
  if (*(element + 12) || (v6 = CFGetAllocator(element), Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]), (*(element + 12) = Mutable) != 0))
  {
    *(element + 112) = 1;
    v8 = CFGetTypeID(property);
    if (v8 == CFNumberGetTypeID())
    {
      v9 = CFEqual(key, @"CalibrationMin");
      if (v9)
      {
        v10 = 0;
LABEL_8:
        v12 = 0;
LABEL_9:
        v13 = 0;
LABEL_10:
        v14 = 0;
LABEL_11:
        v15 = 0;
LABEL_12:
        v16 = 0;
LABEL_13:
        if (*(element + 11) || (v17 = malloc_type_malloc(0x38uLL, 0x100004021716A34uLL), *(element + 11) = v17, *v17 = 0u, v17[1] = 0u, v17[2] = 0u, *(v17 + 6) = 0, *(element + 11)))
        {
          valuePtr = 0;
          CFNumberGetValue(property, kCFNumberCFIndexType, &valuePtr);
          if (v9)
          {
            *(*(element + 11) + 32) = valuePtr;
          }

          else if (v10)
          {
            *(*(element + 11) + 40) = valuePtr;
          }

          else if (v12)
          {
            **(element + 11) = valuePtr;
          }

          else if (v13)
          {
            *(*(element + 11) + 8) = valuePtr;
          }

          else if (v14)
          {
            *(*(element + 11) + 16) = valuePtr;
          }

          else if (v15)
          {
            *(*(element + 11) + 24) = valuePtr;
          }

          else if (v16)
          {
            CFNumberGetValue(property, kCFNumberFloat64Type, (*(element + 11) + 48));
          }
        }

        goto LABEL_39;
      }

      v11 = CFEqual(key, @"CalibrationMax");
      if (v11)
      {
        v10 = v11;
        goto LABEL_8;
      }

      v18 = CFEqual(key, @"CalibrationSaturationMin");
      if (v18)
      {
        v12 = v18;
        v10 = 0;
        goto LABEL_9;
      }

      v19 = CFEqual(key, @"CalibrationSaturationMax");
      if (v19)
      {
        v13 = v19;
        v10 = 0;
        v12 = 0;
        goto LABEL_10;
      }

      v20 = CFEqual(key, @"CalibrationDeadZoneMin");
      if (v20)
      {
        v14 = v20;
        v10 = 0;
        v12 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v21 = CFEqual(key, @"CalibrationDeadZoneMax");
      if (v21)
      {
        v15 = v21;
        v10 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        goto LABEL_12;
      }

      v22 = CFEqual(key, @"CalibrationGranularity");
      if (v22)
      {
        v16 = v22;
        v10 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        goto LABEL_13;
      }
    }

LABEL_39:
    CFDictionarySetValue(*(element + 12), key, property);
    LOBYTE(Mutable) = 1;
  }

  return Mutable;
}

CFStringRef __IOHIDElementGetRootKey(uint64_t a1)
{
  result = *(a1 + 104);
  if (!result)
  {
    UUIDKey = __IOHIDDeviceGetUUIDKey(*(a1 + 16));
    v4 = *(a1 + 32);
    v5 = v4[7];
    if (v5 == v4[8])
    {
      v6 = 0;
    }

    else
    {
      v6 = *(a1 + 40);
    }

    result = CFStringCreateWithFormat(0, 0, @"%@#%04lx#%04lx#%016lx#%ld", UUIDKey, v4[6], (v6 + v5), (*(a1 + 40) + *v4), v4[3]);
    *(a1 + 104) = result;
  }

  return result;
}

void __IOHIDElementSaveProperties(uint64_t a1, CFStringRef *a2)
{
  if (*(a1 + 112))
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      RootKey = __IOHIDElementGetRootKey(a1);
      __IOHIDPropertySaveToKeyWithSpecialKeys(v3, RootKey, __KIOHIDElementSpecialKeys, a2);
      *(a1 + 112) = 0;
    }
  }
}

CFTypeID __IOHIDElementLoadProperties(uint64_t a1)
{
  RootKey = __IOHIDElementGetRootKey(a1);
  result = __IOHIDPropertyLoadFromKeyWithSpecialKeys(RootKey, __KIOHIDElementSpecialKeys);
  if (result)
  {
    v4 = result;
    v5 = *(a1 + 96);
    if (v5)
    {
      CFRelease(v5);
    }

    *(a1 + 96) = v4;
    Value = CFDictionaryGetValue(v4, @"CalibrationMin");
    if (Value)
    {
      v7 = Value;
      v8 = CFGetTypeID(Value);
      if (v8 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v7, kCFNumberCFIndexType, (*(a1 + 88) + 32));
      }
    }

    v9 = CFDictionaryGetValue(*(a1 + 96), @"CalibrationMax");
    if (v9)
    {
      v10 = v9;
      v11 = CFGetTypeID(v9);
      if (v11 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v10, kCFNumberCFIndexType, (*(a1 + 88) + 40));
      }
    }

    v12 = CFDictionaryGetValue(*(a1 + 96), @"CalibrationSaturationMin");
    if (v12)
    {
      v13 = v12;
      v14 = CFGetTypeID(v12);
      if (v14 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v13, kCFNumberCFIndexType, *(a1 + 88));
      }
    }

    v15 = CFDictionaryGetValue(*(a1 + 96), @"CalibrationSaturationMax");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v16, kCFNumberCFIndexType, (*(a1 + 88) + 8));
      }
    }

    v18 = CFDictionaryGetValue(*(a1 + 96), @"CalibrationDeadZoneMin");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v19, kCFNumberCFIndexType, (*(a1 + 88) + 16));
      }
    }

    v21 = CFDictionaryGetValue(*(a1 + 96), @"CalibrationDeadZoneMax");
    if (v21)
    {
      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v22, kCFNumberCFIndexType, (*(a1 + 88) + 24));
      }
    }

    result = CFDictionaryGetValue(*(a1 + 96), @"CalibrationGranularity");
    if (result)
    {
      v24 = result;
      v25 = CFGetTypeID(result);
      result = CFNumberGetTypeID();
      if (v25 == result)
      {
        result = CFNumberGetValue(v24, kCFNumberFloat64Type, (*(a1 + 88) + 48));
      }
    }

    *(a1 + 112) = 0;
  }

  return result;
}

void __IOHIDSaveElementSet(uint64_t a1, CFStringRef *a2)
{
  if (a1)
  {
    __IOHIDElementSaveProperties(a1, a2);
  }
}

uint64_t __IOHIDLoadElementSet(uint64_t a1)
{
  if (a1)
  {
    return __IOHIDElementLoadProperties(a1);
  }

  return a1;
}

_OWORD *fat_iterator_open(const char *a1, int a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = open(a1, 0);
  if (v3 == -1)
  {
    return 0;
  }

  v4 = v3;
  memset(&v10, 0, sizeof(v10));
  v5 = 0;
  v6 = -1;
  if (fstat(v3, &v10) != -1 && v10.st_size >= 28)
  {
    v6 = mmap(0, v10.st_size, 1, 2, v4, 0);
    if (v6 == -1 || (BYTE8(v13) = 1, __fat_iterator_init(&v11, v6, v6 + v10.st_size, a2) == -1))
    {
      v5 = 0;
    }

    else
    {
      v7 = malloc_type_malloc(0x30uLL, 0x10A0040D39FF539uLL);
      v5 = v7;
      if (v7)
      {
        v8 = v12;
        *v7 = v11;
        v7[1] = v8;
        v7[2] = v13;
      }
    }
  }

  close(v4);
  if (!v5 && v6 != -1)
  {
    munmap(v6, v10.st_size);
    return 0;
  }

  return v5;
}

uint64_t __fat_iterator_init(uint64_t a1, int *a2, unint64_t a3, int a4)
{
  v4 = a3 - a2;
  if (a3 - a2 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  *a1 = a2;
  *(a1 + 8) = a3;
  v5 = *a2;
  if (*a2 > -17958195)
  {
    if ((v5 + 17958194) >= 2)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (v4 < 0x1C)
    {
      return 0xFFFFFFFFLL;
    }

    *(a1 + 40) |= 2u;
    *(a1 + 32) = 1;
    return 0;
  }

  if (v5 != -1095041334)
  {
    if (v5 != -822415874 && v5 != -805638658)
    {
LABEL_6:
      if (!a4)
      {
        return 0;
      }

      return 0xFFFFFFFFLL;
    }

    goto LABEL_9;
  }

  if (v4 < 8)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 16) = a2;
  *(a1 + 24) = a2 + 2;
  v8 = bswap32(a2[1]);
  *(a1 + 32) = v8;
  v6 = 0xFFFFFFFFLL;
  if (v8 <= 0x20 && &a2[5 * v8 + 2] <= a3)
  {
    *(a1 + 40) |= 2u;
    return 0;
  }

  return v6;
}

_OWORD *fat_iterator_for_data(int *a1, unint64_t a2, int a3)
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  if (__fat_iterator_init(&v5, a1, a2, a3) == -1)
  {
    return 0;
  }

  result = malloc_type_malloc(0x30uLL, 0x10A0040D39FF539uLL);
  if (result)
  {
    v4 = v6;
    *result = v5;
    result[1] = v4;
    result[2] = v7;
  }

  return result;
}

void fat_iterator_close(void **a1)
{
  if (a1[5])
  {
    v2 = *a1;
    if (*a1)
    {
      munmap(v2, a1[1] - v2);
    }
  }

  free(a1);
}

uint64_t fat_iterator_next_arch(uint64_t *a1, unint64_t *a2)
{
  v2 = *(a1 + 9);
  if (a1[2])
  {
    v3 = *(a1 + 8);
    if (v2 < v3)
    {
      v4 = a1[3] + 20 * v2;
      v5 = *(v4 + 12);
      v6 = *a1 + bswap32(*(v4 + 8));
      v7 = v6 + bswap32(v5);
      if (v7 <= a1[1])
      {
        if (a2)
        {
          *a2 = v7;
        }

        v3 = v2 + 1;
      }

      else
      {
        v6 = 0;
      }

LABEL_13:
      *(a1 + 9) = v3;
      return v6;
    }
  }

  else if (!v2)
  {
    v6 = *a1;
    if (a2)
    {
      *a2 = a1[1];
    }

    v3 = 1;
    goto LABEL_13;
  }

  return 0;
}

uint64_t fat_iterator_find_fat_arch(int **a1, cpu_type_t a2, cpu_subtype_t a3, uint64_t a4)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  if (a1[2])
  {
    v8 = *(a1 + 8);
    v9 = malloc_type_malloc((20 * v8), 0x1000040A86A77D5uLL);
    if (!v9)
    {
      return 0;
    }

    v10 = v9;
    memcpy(v9, a1[3], (20 * v8));
    if (v8)
    {
      p_align = &v10->align;
      v12 = v8;
      do
      {
        *(p_align - 1) = vrev32q_s8(*(p_align - 1));
        *p_align = bswap32(*p_align);
        p_align += 5;
        --v12;
      }

      while (v12);
    }

    v13 = v10;
  }

  else
  {
    v14 = *a1;
    v16 = **a1;
    v15 = (*a1)[1];
    LODWORD(v22) = 0;
    if ((v16 & 0xFEFFFFFF) == 0xCEFAEDFE)
    {
      LODWORD(v22) = bswap32(v15);
      v17 = bswap32(v14[2]);
    }

    else
    {
      LODWORD(v22) = v15;
      v17 = v14[2];
    }

    v13 = 0;
    HIDWORD(v22) = v17;
    LODWORD(v23) = 0;
    LODWORD(v8) = 1;
    HIDWORD(v23) = *(a1 + 2) - v14;
    v24 = 1;
    v10 = &v22;
  }

  v19 = NXFindBestFatArch(a2, a3, v10, v8);
  if (!v19)
  {
    v18 = 0;
    if (!v13)
    {
      return v18;
    }

    goto LABEL_16;
  }

  if (a4)
  {
    v20 = *&v19->cputype;
    *(a4 + 16) = v19->align;
    *a4 = v20;
  }

  v18 = 1;
  if (v13)
  {
LABEL_16:
    free(v13);
  }

  return v18;
}

char *fat_iterator_find_arch(int **a1, cpu_type_t a2, cpu_subtype_t a3, void *a4)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  if (!fat_iterator_find_fat_arch(a1, a2, a3, &v7))
  {
    return 0;
  }

  result = *a1 + v8;
  if (a4)
  {
    *a4 = &result[HIDWORD(v8)];
  }

  return result;
}

char *fat_iterator_find_host_arch(int **a1, void *a2)
{
  result = NXGetLocalArchInfo();
  if (result)
  {
    v5 = *(result + 2);
    v6 = *(result + 3);

    return fat_iterator_find_arch(a1, v5, v6, a2);
  }

  return result;
}

uint64_t macho_find_symbol(int *a1, unint64_t a2, char *a3, _BYTE *a4, void *a5)
{
  if (a5)
  {
    *a5 = 0;
  }

  v54 = 0;
  if (macho_scan_load_commands(a1, a2, __macho_lc_is_symtab, &v54))
  {
    return 2;
  }

  v10.i32[0] = 0;
  v13 = *a1;
  v53 = (*a1 + 822415874) & 0xFEFFFFFF;
  v11.i32[0] = v53;
  v14 = vbsl_s8(vdup_lane_s32(vceq_s32(v11, v10), 0), vrev32_s8(*(v54 + 12)), *(v54 + 12));
  v15 = *(v54 + 8);
  v16 = bswap32(v15);
  if (v53)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 == -805638658 || v13 == -17958193;
  v19 = v14.u32[0];
  LODWORD(v20) = 16 * v14.i32[0];
  if (v18)
  {
    v20 = v20;
  }

  else
  {
    v20 = (12 * v14.i32[0]);
  }

  v51 = a1 + v14.u32[1];
  v52 = a1 + v17;
  if (a1 + v17 + v20 > a2 || a1 + v14.u32[1] > a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v14.i32[0])
  {
    return 2;
  }

  v49 = a4;
  __s1 = a3;
  v48 = a5;
  v22 = 0;
  for (i = v17; ; i += 12)
  {
    if (v13 == -17958193 || v13 == -805638658)
    {
      v25 = *(a1 + v17);
      v26 = &v52[16 * v22];
      if (v53)
      {
        v27 = (v26 + 4);
        v28 = v26 + 5;
        v29 = *(a1 + v17 + 8);
      }

      else
      {
        v28 = v26 + 5;
        v27 = (v26 + 4);
        v25 = bswap32(v25);
        v29 = bswap64(*(a1 + v17 + 8));
      }
    }

    else
    {
      v30 = a1 + i;
      v25 = *(a1 + i);
      v31 = *(a1 + i + 8);
      v32 = bswap32(v25);
      v33 = bswap32(v31);
      if (v53)
      {
        v29 = v31;
      }

      else
      {
        v25 = v32;
        v29 = v33;
      }

      v27 = (v30 + 4);
      v28 = v30 + 5;
    }

    v34 = *v27;
    if (v25)
    {
      v35 = v34 > 0x1F;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      goto LABEL_46;
    }

    v36 = &v51[v25];
    if (v36 > a2)
    {
      return 0xFFFFFFFFLL;
    }

    v37 = *v28;
    if (strcmp(__s1, v36))
    {
      goto LABEL_46;
    }

    if (v49)
    {
      *v49 = v34;
    }

    v38 = (v34 >> 1) & 7;
    if (v38 != 7)
    {
      break;
    }

    section_numbered = macho_find_section_numbered(a1, a2, v37);
    v40 = section_numbered;
    if (v48 && section_numbered)
    {
      if (v13 == -17958193 || v13 == -805638658)
      {
        result = 0;
        v41 = *(v40 + 32);
        LODWORD(v40) = *(v40 + 48);
        v42 = bswap64(v41);
        v43 = bswap32(v40);
        if (v53)
        {
          v40 = v40;
        }

        else
        {
          v41 = v42;
          v40 = v43;
        }

        v44 = a1 + v29 - v41 + v40;
      }

      else
      {
        result = 0;
        LODWORD(v45) = *(v40 + 32);
        LODWORD(v40) = *(v40 + 40);
        v46 = bswap32(v45);
        v47 = bswap32(v40);
        if (v53)
        {
          v45 = v45;
        }

        else
        {
          v45 = v46;
        }

        if (v53)
        {
          v40 = v40;
        }

        else
        {
          v40 = v47;
        }

        v44 = a1 + v40 + v29 - v45;
      }

      *v48 = v44;
      return result;
    }

    if (section_numbered)
    {
      return 0;
    }

LABEL_46:
    ++v22;
    v17 += 16;
    if (!--v19)
    {
      return 2;
    }
  }

  if (v38 <= 5 && ((1 << v38) & 0x23) != 0)
  {
    return 1;
  }

  return 2;
}

uint64_t macho_find_symtab(int *a1, unint64_t a2, void *a3)
{
  v5 = 0;
  if (!a3)
  {
    return macho_scan_load_commands(a1, a2, __macho_lc_is_symtab, &v5);
  }

  *a3 = 0;
  result = macho_scan_load_commands(a1, a2, __macho_lc_is_symtab, &v5);
  if (!result)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t macho_find_section_numbered(int *a1, unint64_t a2, char a3)
{
  v5 = 0;
  v6 = 0;
  BYTE1(v5) = a3;
  if (*a1 == -17958193 || *a1 == -805638658)
  {
    LOBYTE(v5) = 1;
  }

  if (macho_scan_load_commands(a1, a2, __macho_sect_in_lc, &v5))
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t macho_scan_load_commands(int *a1, unint64_t a2, uint64_t (*a3)(int *, unint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v7 = *a1;
  v8 = 0xFFFFFFFFLL;
  if (*a1 <= -17958195)
  {
    if (v7 != -822415874)
    {
      if (v7 != -805638658)
      {
        return v8;
      }

      v9 = 0;
      v10 = 1;
      goto LABEL_7;
    }

    v9 = 0;
    v10 = 1;
LABEL_9:
    v11 = 3;
    v12 = 7;
    goto LABEL_10;
  }

  v10 = 0;
  v9 = 1;
  if (v7 == -17958194)
  {
    goto LABEL_9;
  }

  if (v7 != -17958193)
  {
    return v8;
  }

LABEL_7:
  v11 = 7;
  v12 = 8;
LABEL_10:
  if (a1 < a2)
  {
    v13 = &a1[v12];
    if (v13 <= a2)
    {
      v14 = a1[5];
      v15 = bswap32(a1[4]);
      v16 = bswap32(v14);
      if (v9)
      {
        v17 = a1[4];
      }

      else
      {
        v17 = v15;
      }

      if (v9)
      {
        v18 = v14;
      }

      else
      {
        v18 = v16;
      }

      v19 = (v13 + v18);
      if (v13 + v18 <= a2)
      {
        if (!v17)
        {
          return 2;
        }

        while (1)
        {
          LODWORD(v20) = v13[1];
          v21 = bswap32(v20);
          v20 = v9 ? v20 : v21;
          v22 = (v13 + v20);
          if ((v20 & v11) != 0 || v22 > v19)
          {
            break;
          }

          v24 = a3(v13, a2, v10, a4);
          if (v24 != 2)
          {
            if (v24 == 3)
            {
              LODWORD(v8) = 2;
            }

            else
            {
              LODWORD(v8) = -1;
            }

            if (v24)
            {
              return v8;
            }

            else
            {
              return 0;
            }
          }

          v8 = 2;
          v13 = v22;
          if (!--v17)
          {
            return v8;
          }
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v8;
}