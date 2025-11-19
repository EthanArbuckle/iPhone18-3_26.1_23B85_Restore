uint64_t _LSCopyUserActivityDomainNamesForBundleID(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1 && _LSIsSWCAvailable())
  {
    v2 = objc_alloc(_LSSWCServiceSpecifierClass());
    v3 = _LSSWCServiceTypeActivityContinuation();
    v4 = [v2 initWithServiceType:v3 applicationIdentifier:a1 domain:0];

    v25 = 0;
    v5 = [_LSSWCServiceDetailsClass() serviceDetailsWithServiceSpecifier:v4 error:&v25];
    v6 = v25;
    v20 = v6;
    if (v5)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v9)
      {
        v10 = *v22;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v22 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v21 + 1) + 8 * i);
            if ([v12 isApproved])
            {
              v13 = [v12 serviceSpecifier];
              v14 = [v13 domain];
              v15 = [v14 lowercaseString];

              if ([v15 length])
              {
                [v7 addObject:v15];
              }
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
        }

        while (v9);
      }

      v16 = [v7 copy];
    }

    else
    {
      v17 = v6;
      v7 = _LSDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        _LSCopyUserActivityDomainNamesForBundleID_cold_1(v17, v7);
      }

      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

CFArrayRef _LSCopyActivityTypesClaimedHashedAdvertisingStrings(uint64_t a1, __CFString *a2, const __CFDictionary *a3, const __CFDictionary *a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (a1)
  {
    v10 = &stru_1EEF65710;
    if (a2)
    {
      v10 = a2;
    }

    v11 = CFStringCreateWithFormat(v8, 0, @"%@#%@:%@", @"NOTIFICATION", v10, a1);
    appendStringAndHashedBytesOfType(Mutable, 4, v11);
    CFRelease(v11);
  }

  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"NSUserActivityTypes");
    if (Value)
    {
      v13 = Value;
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v13) && CFArrayGetCount(v13) >= 1)
      {
        v15 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v15);
          if (ValueAtIndex)
          {
            v17 = ValueAtIndex;
            v18 = CFStringGetTypeID();
            if (v18 == CFGetTypeID(v17))
            {
              v19 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType(v8, a2, v17);
              if (v19)
              {
                v20 = v19;
                appendStringAndHashedBytesOfType(Mutable, 1, v19);
                CFRelease(v20);
              }
            }
          }

          ++v15;
        }

        while (v15 < CFArrayGetCount(v13));
      }
    }

    v21 = CFDictionaryGetValue(a3, *MEMORY[0x1E695E128]);
    if (v21)
    {
      v22 = v21;
      v23 = CFArrayGetTypeID();
      if (v23 == CFGetTypeID(v22))
      {
        Count = CFArrayGetCount(v22);
        if (Count >= 1)
        {
          v25 = Count;
          for (i = 0; i != v25; ++i)
          {
            v27 = CFArrayGetValueAtIndex(v22, i);
            if (v27)
            {
              v28 = v27;
              v29 = CFDictionaryGetTypeID();
              if (v29 == CFGetTypeID(v28))
              {
                v30 = CFDictionaryGetValue(v28, @"NSUbiquitousDocumentUserActivityType");
                if (v30)
                {
                  v31 = v30;
                  v32 = CFStringGetTypeID();
                  if (v32 == CFGetTypeID(v31))
                  {
                    v33 = _LSCopyAdvertisementStringForTeamIdentifierAndActivityType(v8, a2, v31);
                    if (v33)
                    {
                      v34 = v33;
                      appendStringAndHashedBytesOfType(Mutable, 1, v33);
                      CFRelease(v34);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (a4 && _LSIsSWCAvailable())
  {
    v35 = objc_autoreleasePoolPush();
    v36 = CFDictionaryGetValue(a4, @"com.apple.developer.associated-domains");
    if (v36)
    {
      v37 = _LSSWCServiceSpecifierClass();
      v38 = _LSSWCServiceTypeActivityContinuation();
      v39 = [v37 serviceSpecifiersWithEntitlementValue:v36 serviceType:v38 error:0];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v40 = v39;
      v41 = [v40 countByEnumeratingWithState:&v52 objects:v56 count:16];
      if (v41)
      {
        v42 = *v53;
        do
        {
          v43 = 0;
          do
          {
            if (*v53 != v42)
            {
              objc_enumerationMutation(v40);
            }

            v44 = [*(*(&v52 + 1) + 8 * v43) domain];
            v45 = [v44 lowercaseString];

            appendStringAndHashedBytesOfType(Mutable, 2, v45);
            ++v43;
          }

          while (v41 != v43);
          v41 = [v40 countByEnumeratingWithState:&v52 objects:v56 count:16];
        }

        while (v41);
      }
    }

    objc_autoreleasePoolPop(v35);
  }

  if (Mutable)
  {
    if (CFSetGetCount(Mutable) < 1)
    {
      v48 = 0;
    }

    else
    {
      if (CFSetGetCount(Mutable))
      {
        v46 = CFSetGetCount(Mutable);
        v47 = malloc_type_malloc(8 * v46, 0xC0040B8AA526DuLL);
      }

      else
      {
        v47 = v57;
      }

      memset(v57, 0, 512);
      CFSetGetValues(Mutable, v47);
      v49 = CFSetGetCount(Mutable);
      v48 = CFArrayCreate(v8, v47, v49, MEMORY[0x1E695E9C0]);
      if (v47 != v57)
      {
        free(v47);
      }
    }

    CFRelease(Mutable);
  }

  else
  {
    v48 = 0;
  }

  v50 = *MEMORY[0x1E69E9840];
  return v48;
}

void appendStringAndHashedBytesOfType(__CFSet *a1, uint64_t a2, CFStringRef theString)
{
  v5 = _LSCreateHashedBytesForAdvertisingFromString(a2, theString);
  if (v5)
  {
    v6 = v5;
    v7 = _LSCreateDatabaseLookupStringFromHashedBytesForAdvertising(v5);
    if (v7)
    {
      v8 = v7;
      CFSetAddValue(a1, theString);
      CFSetAddValue(a1, v8);
      CFRelease(v8);
    }

    CFRelease(v6);
  }
}

uint64_t _LSDatabaseCopyURLForUser(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [__LSDefaultsGetSharedInstance() databaseStoreFileURLWithUID:a1];
  objc_autoreleasePoolPop(v2);
  return v3;
}

BOOL _LSDisplayData(FILE *a1, const char *a2, unsigned int *a3, void *a4, CFArrayRef theArray, void *a6, uint64_t a7, void *a8)
{
  v12 = a4;
  if (a4)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a4];
  }

  if (theArray)
  {
    theArray = XCFSetCreateWithArray(*MEMORY[0x1E695E480], theArray, &kXCFCaseInsensitiveStringSetCallBacks);
  }

  v16 = a6;
  if (!a2)
  {
    v48 = 0;
    if (a3)
    {
      v24 = [[_LSDServiceDomain alloc] initWithUID:?];
    }

    else
    {
      v24 = +[_LSDServiceDomain defaultServiceDomain];
    }

    v26 = v24;
    v46 = 0;
    v27 = _LSContextInitWithOptions(&v48, v24, 0, &v46);
    v23 = v46;

    if (!v27)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  v18 = [v17 lowercaseString];
  v19 = [v18 hasSuffix:@".csstoredump"];

  if (!v19)
  {
    v47 = 0;
    v48 = 0;
    v25 = _LSContextInitWithPath(&v48, a2, &v47);
    v23 = v47;
    if (!v25)
    {
LABEL_13:
      v22 = 0;
      goto LABEL_20;
    }

LABEL_16:
    if (a7)
    {
      v45 = v23;
      v28 = &v45;
      v29 = _LSDisplayMachineReadableData(&v48, a1, v12, v16, a7, &v45);
    }

    else
    {
      v44 = v23;
      v28 = &v44;
      v29 = _LSDisplayHumanReadableData(&v48, a1, v12, theArray, v16, a7, &v44);
    }

    v22 = v29;
    v30 = *v28;

    v23 = v30;
    _LSContextDestroy(&v48);
LABEL_20:

    if ((a7 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v20 = fopen(a2, "rb");
  v21 = v20;
  if (v20)
  {
    v49 = 0;
    v22 = _LSDisplayHumanReadableCopyOfMachineReadableData(v20, a1, v12, theArray, v16, a7, &v49);
    v23 = v49;
    fclose(v21);
    if ((a7 & 4) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v37 = __error();
    v23 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v37, 0, "_LSDisplayData", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSExternalPriv.mm", 2593);
    v22 = 0;
    if ((a7 & 4) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_21:
  if (!v22)
  {
    v31 = objc_opt_new();
    v32 = v31;
    if (v31)
    {
      v38 = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = ___LSDisplayData_block_invoke;
      v41 = &unk_1E6A1ABE8;
      v33 = v31;
      v42 = v33;
      v43 = v23;
      [v33 withWarningColors:&v38];
      v34 = [v33 attributedString];
      [v34 cs_writeToFileHandle:*MEMORY[0x1E69E9848]];
    }
  }

LABEL_25:
  if (a8)
  {
    v35 = v22;
  }

  else
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    *a8 = v23;
  }

  return v22;
}

void ___ZL22initActivationObserverv_block_invoke()
{
  if (getkNotificationActivationStateChanged())
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v1 = getkNotificationActivationStateChanged();

    CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, handleActivationStateChanged, v1, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  else
  {
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      ___ZL22initActivationObserverv_block_invoke_cold_1();
    }
  }
}

uint64_t initkNotificationActivationStateChanged(void)
{
  v0 = MobileActivationLibrary(void)::frameworkLibrary;
  if (!MobileActivationLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/MobileActivation.framework/MobileActivation", 2);
    MobileActivationLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "kNotificationActivationStateChanged");
  constantkNotificationActivationStateChanged = result;
  getkNotificationActivationStateChanged = kNotificationActivationStateChangedFunction;
  return result;
}

uint64_t (*initMAECopyActivationRecordWithError(uint64_t a1))()
{
  v2 = MobileActivationLibrary(void)::frameworkLibrary;
  if (!MobileActivationLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/MobileActivation.framework/MobileActivation", 2);
    MobileActivationLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "MAECopyActivationRecordWithError");
  softLinkMAECopyActivationRecordWithError[0] = v3;
  if (v3)
  {
    v3 = (v3)(a1);
  }

  return v3;
}

void sub_1817436A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21)
{
  LaunchServices::notifyd::NotifyToken::~NotifyToken((v24 - 84));

  _Unwind_Resume(a1);
}

void sub_181743BFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _LSInProcessSettingsStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_181743D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181745338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _LSClientSettingsStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_181745604(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_181745B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 144), 8);

  _Block_object_dispose((v13 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_181746010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v31 - 192), 8);

  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_181746510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 160), 8);

  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

id ___ZL29pluginKitUserElectionStoreURLv_block_invoke()
{
  v5 = 1;
  v0 = container_create_or_lookup_path_for_current_user();
  if (v0)
  {
    v1 = v0;
    v2 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v0 isDirectory:1 relativeToURL:0];
    free(v1);
  }

  else
  {
    v3 = _LSExtensionsLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      ___ZL29pluginKitUserElectionStoreURLv_block_invoke_cold_1(&v5, v3);
    }

    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"unable to locate user container: error %llu", v5}];
    v2 = 0;
  }

  return v2;
}

void ___ZL29pluginKitUserElectionStoreURLv_block_invoke_250(uint64_t a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v19 = *MEMORY[0x1E696A370];
  v20[0] = &unk_1EEF8EFF0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  if (getUMUserManagerClass() && ([getUMUserManagerClass() sharedManager], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isMultiUser"), v3, v4))
  {
    v5 = (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/db/PlugInKit-Annotations"];
  }

  v6 = v5;
  v7 = [v5 URLByAppendingPathComponent:@"com.apple.pluginkit/"];
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v17 = 0;
  v9 = [v8 createDirectoryAtURL:v7 withIntermediateDirectories:1 attributes:v2 error:&v17];
  v10 = v17;

  if ((v9 & 1) == 0)
  {
    v11 = _LSExtensionsLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ___ZL29pluginKitUserElectionStoreURLv_block_invoke_250_cold_1();
    }
  }

  v12 = [v7 URLByAppendingPathComponent:@"Annotations"];
  v13 = pluginKitUserElectionStoreURL(void)::annotations;
  pluginKitUserElectionStoreURL(void)::annotations = v12;

  v14 = _LSExtensionsLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [pluginKitUserElectionStoreURL(void)::annotations path];
    ___ZL29pluginKitUserElectionStoreURLv_block_invoke_250_cold_2(v15, v18);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_8_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

uint64_t LSBundleMeetsBasicDefaultAppRequirements(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = v4;
  if ((*(a3 + 174) & 4) != 0)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LSBundleMeetsBasicDefaultAppRequirements_cold_1();
    }
  }

  else if (*(a3 + 168) == 2)
  {
    if (_LSBundleDataIsInUnsupportedLocation(v4, a3))
    {
      v6 = _LSDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LSBundleMeetsBasicDefaultAppRequirements_cold_3();
      }
    }

    else
    {
      if (!_LSBundleDataGetUnsupportedFormatFlag())
      {
        v7 = 1;
        goto LABEL_11;
      }

      v6 = _LSDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        LSBundleMeetsBasicDefaultAppRequirements_cold_4();
      }
    }
  }

  else
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LSBundleMeetsBasicDefaultAppRequirements_cold_2();
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

uint64_t LSEnumerateDefaultAppCategories(uint64_t a1)
{
  v2 = 0;
  v5 = 0;
  v3 = &LSDefaultAppCategoryInfos;
  do
  {
    result = (*(a1 + 16))(a1, v3, &v5);
    if (v2 > 8)
    {
      break;
    }

    ++v2;
    v3 += 64;
  }

  while ((v5 & 1) == 0);
  return result;
}

__CFString *LSDefaultAppCategoryCopyName(unint64_t a1)
{
  if (a1 < 0xB && ((0x6FFu >> a1) & 1) != 0)
  {
    return off_1E6A1D150[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *LSDefaultAppCategoryCopyName(LSDefaultAppCategory)"];
  [v3 handleFailureInFunction:v4 file:@"LSDefaultAppsCore.mm" lineNumber:464 description:{@"bogus app category %lu", a1}];

  [MEMORY[0x1E696AEC0] stringWithFormat:@"appCategory(%ld)", a1];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t LSDefaultAppCategoryGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"LSDefaultAppCategoryInvalid"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryWebBrowser"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryMailClient"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryMessaging"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryPhoneCalls"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryNavigation"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryTranslation"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryInvalidPlaceholder"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryDialing"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryCarrierMessaging"])
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *LSDefaultAppCategoryGetInfoFromTypeIdentifier(uint64_t a1)
{
  v2 = &LSDefaultAppCategoryInfos;
  v3 = 640;
  while (![v2[1] isEqualToString:a1])
  {
    v2 += 8;
    v3 -= 64;
    if (!v3)
    {
      return 0;
    }
  }

  return v2;
}

BOOL LSIdentifierIsDefaultAppTypeIdentifier(void *a1)
{
  v1 = a1;
  if (([(__CFString *)v1 isEqualToString:@"com.apple.default-app-category"]& 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    v3 = 8u;
    do
    {
      v4 = UTTypeEqual(*(&LSDefaultAppCategoryInfos + v3), v1);
      v2 = v4 != 0;
      if (v4)
      {
        break;
      }

      v5 = v3 == 584;
      v3 += 64;
    }

    while (!v5);
  }

  return v2;
}

id LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  v5 = v4;
  if (v4)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v4 = __LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes_block_invoke(v4, v8);
        if (v4)
        {
          v4 = [v2 addObject:{v8, v11}];
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = v4;
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t __LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v3 = v2;
  v4 = objc_opt_class();
  v5 = [v3 objectForKey:@"LSItemContentTypes"];
  v6 = v5;
  if (v4 && v5)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_18;
    }

LABEL_8:
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && LSIdentifierIsDefaultAppTypeIdentifier(v12))
          {
            v13 = _LSDefaultLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              __LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes_block_invoke_cold_1();
            }

            v7 = 0;
            goto LABEL_22;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_18:
  v7 = 1;
LABEL_22:

LABEL_23:
  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t LSCopyDefaultAppsClaimForBundle(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  if (LSBundleMeetsBasicDefaultAppRequirements(v7, a2, a3))
  {
    v27 = 0;
    v28 = 0;
    v9 = 640;
    v10 = &off_1EEF63350;
    v29 = 0;
    do
    {
      if ((*v10)(v7, a2, a3, v8, 1))
      {
        v11 = *(v10 - 3);
        v12 = v28;
        if (v28 >= v29)
        {
          v14 = v28 - v27;
          if ((v14 + 1) >> 61)
          {
            std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
          }

          v15 = (v29 - v27) >> 2;
          if (v15 <= v14 + 1)
          {
            v15 = v14 + 1;
          }

          if (v29 - v27 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          v34 = &v27;
          if (v16)
          {
            std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](&v27, v16);
          }

          v30 = 0;
          v31 = (8 * v14);
          v33 = 0;
          *v31 = v11;
          v32 = 8 * v14 + 8;
          std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer(&v27, &v30);
          v13 = v28;
          std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(&v30);
        }

        else
        {
          *v28 = v11;
          v13 = v12 + 1;
        }

        v28 = v13;
      }

      v10 += 8;
      v9 -= 64;
    }

    while (v9);
    if (v28 == v27)
    {
      v21 = 0;
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x1E695DF70]);
      v18 = [v17 initWithCapacity:v28 - v27];
      v19 = v27;
      v20 = v28;
      while (v19 != v20)
      {
        [v18 addObject:*v19++];
      }

      v35[0] = @"LSItemContentTypes";
      v22 = [v18 copy];
      v23 = *MEMORY[0x1E695E178];
      v36[0] = v22;
      v36[1] = @"Viewer";
      v24 = *MEMORY[0x1E695E170];
      v35[1] = v23;
      v35[2] = v24;
      v36[2] = @"Default Apps Claim";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
    }

    v30 = &v27;
    std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v30);
  }

  else
  {
    v21 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v21;
}

void sub_181747670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a12);

  _Unwind_Resume(a1);
}

uint64_t LSGetDefaultAppsClaimUnitIDForBundle(void *a1, int a2)
{
  v3 = a1;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v4 = _LSBundleGet(v3, a2);
  if (v4)
  {
    [(_LSDatabase *)v3 store];
    v5 = *(v4 + 472);
    v8 = v3;
    _CSArrayEnumerateAllValues();
  }

  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);

  return v6;
}

void sub_1817477E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LSGetDefaultAppsClaimUnitIDForBundle_block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  result = _LSClaimGet(*(a1 + 32));
  if (result)
  {
    if ((*(result + 9) & 0x20) != 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t _LSServer_LSRemoveDefaultApp(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  _LSAssertRunningInServer("OSStatus _LSServer_LSRemoveDefaultApp(LSDefaultAppCategory)");
  v2 = LSGetDefaultAppCategoryInfoForCategory(a1);
  v3 = (v2 + 8);
  v4 = _LSServer_RemoveContentTypeHandler(*(v2 + 1), 14);
  if (!v4)
  {
    if (!*(v2 + 6))
    {
      v5 = 0;
      goto LABEL_5;
    }

    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = *(v2 + 5) + v9;
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v11 + 8)];
      v13 = v12;
      if (!*v11)
      {
        break;
      }

      if (*v11 == 1)
      {
        v14 = _LSServer_RemoveContentTypeHandler(v12, 14);
        goto LABEL_12;
      }

      v5 = 0;
LABEL_17:

      if (!v5)
      {
        v9 += 24;
        if (v10++ < *(v2 + 6))
        {
          continue;
        }
      }

      goto LABEL_5;
    }

    v14 = _LSServer_RemoveSchemeHandler(v12);
LABEL_12:
    v5 = v14;
    if (v14)
    {
      v15 = _LSDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v13;
        v19 = 2048;
        v20 = v5;
        _os_log_error_impl(&dword_18162D000, v15, OS_LOG_TYPE_ERROR, "Couldn't remove handler for subordinate claim %@: %ld", buf, 0x16u);
      }
    }

    goto LABEL_17;
  }

  v5 = v4;
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    _LSServer_LSRemoveDefaultApp_cold_1(v3);
  }

LABEL_5:
  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _LSServer_LSSetDefaultAppByTypeIdentifier(uint64_t a1, void *a2, _OWORD *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  _LSAssertRunningInServer("OSStatus _LSServer_LSSetDefaultAppByTypeIdentifier(LSDefaultAppCategory, NSString *__strong _Nonnull, LSVersionNumber)");
  if (!LSDefaultAppCategoryMayBeChanged(a1))
  {
    v21 = _LSDefaultLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _LSServer_LSSetDefaultAppByTypeIdentifier_cold_1();
    }

    v6 = 0;
    v9 = 4294967246;
LABEL_19:
    v14 = _LSDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      if (v6)
      {
        v24 = *(v6 + 1);
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"category %lu", a1];
      }

      *buf = 138412546;
      *&buf[4] = v24;
      *&buf[12] = 2048;
      *&buf[14] = v9;
      _os_log_error_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "Couldn't set handler for %@: %ld", buf, 0x16u);
      if (!v6)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_20;
  }

  v6 = LSGetDefaultAppCategoryInfoForCategory(a1);
  v7 = *(v6 + 1);
  v8 = a3[1];
  *buf = *a3;
  *&buf[16] = v8;
  v9 = _LSServer_SetContentTypeHandler(v7, 14, v5, buf);
  if (v9)
  {
    goto LABEL_19;
  }

  if (!*(v6 + 6))
  {
LABEL_11:
    _LSAssertRunningInServer("void _LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)");
    v19 = LaunchServices::_LSServer_DefaultAppsExtraStateManager(v18);
    *buf = &unk_1EEF635C0;
    *&buf[8] = a1;
    *&buf[24] = buf;
    v14 = LaunchServices::LSDefaultAppsExtraStateManager::modify(v19, buf);
    std::__function::__value_func<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::~__value_func[abi:nn200100](buf);
    if (v14)
    {
      v20 = _LSDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        _LSServer_LSSetDefaultAppByTypeIdentifier_cold_2();
      }
    }

    v9 = 0;
    goto LABEL_20;
  }

  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = *(v6 + 5);
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v12 + v10 + 8)];
    v14 = v13;
    if (!*(v12 + v10))
    {
      break;
    }

    if (*(v12 + v10) == 1)
    {
      v15 = a3[1];
      *buf = *a3;
      *&buf[16] = v15;
      v16 = _LSServer_SetContentTypeHandler(v13, 14, v5, buf);
      goto LABEL_9;
    }

LABEL_10:

    ++v11;
    v10 += 24;
    if (v11 >= *(v6 + 6))
    {
      goto LABEL_11;
    }
  }

  v17 = a3[1];
  *buf = *a3;
  *&buf[16] = v17;
  v16 = _LSServer_SetSchemeHandler(v13, v5, buf);
LABEL_9:
  v9 = v16;
  if (!v16)
  {
    goto LABEL_10;
  }

  v24 = _LSDefaultLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = v9;
    _os_log_error_impl(&dword_18162D000, v24, OS_LOG_TYPE_ERROR, "Couldn't set handler for %@: %ld", buf, 0x16u);
  }

LABEL_28:

LABEL_20:
  v22 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _LSServer_LSMigratePreferencesForDefaultApps(void **a1)
{
  v26 = *MEMORY[0x1E69E9840];
  _LSAssertRunningInServer("NSError * _Nullable _LSServer_LSMigratePreferencesForDefaultApps(LSContext * _Nonnull)");
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf._opaque = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Migrating preferences for default apps", buf._opaque, 2u);
  }

  v22 = 0;
  for (i = 0; i != 640; i += 64)
  {
    v4 = &LSDefaultAppCategoryInfos + i;
    v5 = *(&LSDefaultAppCategoryInfos + i + 8);
    StringForCFString = _LSDatabaseGetStringForCFString(*a1, v5, 1);
    if (StringForCFString && LSHandlerPref::GetHandlerPref(*a1, StringForCFString, 0, 0))
    {
      continue;
    }

    memset(&buf, 0, sizeof(buf));
    v6 = *(v4 + 6);
    if (!v6)
    {
      continue;
    }

    v7 = (*(v4 + 5) + 8);
    v8 = 1;
    do
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*v7];
      v10 = _LSDatabaseGetStringForCFString(*a1, v9, 1);
      if (!v10)
      {
        goto LABEL_17;
      }

      if (*(v7 - 8))
      {
        v11 = 0;
        v12 = 0;
        if (*(v7 - 8) != 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v11 = 5;
      }

      HandlerPref = LSHandlerPref::GetHandlerPref(*a1, v10, v11, 0);
      if (HandlerPref)
      {
        v12 = LSHandlerPref::roleHandler(HandlerPref, 0xEu, &buf);
        [(_LSDatabase *)*a1 store];
        v14 = _CSStringCopyCFString();
        v15 = _LSDefaultLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v24._opaque = 138412802;
          *&v24._opaque[4] = v14;
          *&v24._opaque[12] = 2112;
          *&v24._opaque[14] = v9;
          *&v24._opaque[22] = 2112;
          *&v24._opaque[24] = v5;
          _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "found handler %@ for subordinate claim %@; will set handler for %@", v24._opaque, 0x20u);
        }
      }

      else
      {
LABEL_17:
        v12 = 0;
      }

LABEL_18:

      if (v8 >= v6)
      {
        break;
      }

      ++v8;
      v7 += 3;
    }

    while (!v12);
    if (v12)
    {
      v16 = *a1;
      v17 = _LSEffectivePreferenceRolesMaskForMask(14);
      v24 = buf;
      LSHandlerPref::SetRoleHandlerForTag(v16, StringForCFString, 0, v17, v12, &v24);
      v22 = 1;
    }
  }

  v18 = _LSDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf._opaque = 67109120;
    *&buf._opaque[4] = v22 & 1;
    _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Done migrating preferences for default apps, made changes? %{BOOL}d", buf._opaque, 8u);
  }

  if (v22)
  {
    LSHandlerPref::Save(*a1, v19);
    _LSDatabaseCommit(*a1);
  }

  v20 = *MEMORY[0x1E69E9840];
  return 0;
}

id LSDefaultAppCategoryPreferenceGetLastSetDate(uint64_t a1, void *a2)
{
  v3 = LSGetDefaultAppCategoryInfoForCategory(a1);
  v21 = -1;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = LaunchServices::Database::Context::_get(&v17, v4, 0);

  if (!v5)
  {
    if (a2)
    {
      v10 = +[_LSDServiceDomain defaultServiceDomain];
      v11 = LaunchServices::Database::Context::_get(&v17, v10, 0);

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v20;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  TagForContentType = LSHandlerPref::GetTagForContentType(*v5, *(v3 + 1), &v21);
  if (!TagForContentType)
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 109, 0, "LSDefaultAppCategoryPreferenceGetLastSetDate", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/DefaultApps/LSDefaultAppsCore.mm", 823);
LABEL_15:
    v12 = v13;
LABEL_18:
    v9 = 0;
    *a2 = v12;
    goto LABEL_19;
  }

  HandlerPref = LSHandlerPref::GetHandlerPref(*v5, TagForContentType, v21, 0);
  if (!HandlerPref)
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 113, 0, "LSDefaultAppCategoryPreferenceGetLastSetDate", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/DefaultApps/LSDefaultAppsCore.mm", 819);
    goto LABEL_15;
  }

  v8 = *(HandlerPref + 232);
  if (!v8)
  {
    if (a2)
    {
      v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 113, 0, "LSDefaultAppCategoryPreferenceGetLastSetDate", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/DefaultApps/LSDefaultAppsCore.mm", 815);
      goto LABEL_15;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v8];
LABEL_19:
  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v14 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v15 = v20;
  v20 = 0;

  return v9;
}

uint64_t _LSServer_HasPreferenceEverBeenSetForDefaultAppCategory(uint64_t a1)
{
  _LSAssertRunningInServer("BOOL _LSServer_HasPreferenceEverBeenSetForDefaultAppCategory(LSDefaultAppCategory)");
  v3 = LaunchServices::_LSServer_DefaultAppsExtraStateManager(v2);
  v10 = 0;
  LaunchServices::LSDefaultAppsExtraStateManager::read(v3, &v10, &v11);
  v4 = v10;
  v5 = v4;
  if (v12 == 1)
  {
    hasCategoryBeenSet = LaunchServices::LSDefaultAppsExtraState::hasCategoryBeenSet(&v11, a1);
  }

  else
  {
    LaunchServices::_LSServer_DefaultAppsExtraStateManager(v4);
    v9 = [MEMORY[0x1E695DFD8] set];
    hasCategoryBeenSet = LaunchServices::LSDefaultAppsExtraState::hasCategoryBeenSet(&v9, a1);

    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _LSServer_HasPreferenceEverBeenSetForDefaultAppCategory_cold_1();
    }
  }

  if (v12 == 1)
  {
  }

  return hasCategoryBeenSet;
}

void sub_1817484AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12)
{
  if (a12 == 1)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t LaunchServices::LSDefaultAppsExtraState::hasCategoryBeenSet(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t LSDefaultAppCategoryMaskForCategory(uint64_t a1)
{
  if (a1)
  {
    return 1 << a1;
  }

  else
  {
    return 0;
  }
}

BOOL BundleIsWebBrowserCandidate(_LSDatabase *a1, int a2, const LSBundleData *a3, NSDictionary *a4, int a5)
{
  v9 = a1;
  v10 = a4;
  v11 = v9;
  v12 = v11;
  v15 = v11;
  v13 = (!a5 || (BundleHasEntitlementWithMaybePreloadedEntitlements(v11, a3, v10, &cfstr_ComAppleDevelo_4.isa) & 1) != 0) && _LSCanBundleHandleNodeOrSchemeOrUTI(&v15, a2, 0, @"https", 0, 14) && _LSCanBundleHandleNodeOrSchemeOrUTI(&v15, a2, 0, @"http", 0, 14) != 0;

  return v13;
}

BOOL BundleIsMailClientCandidate(_LSDatabase *a1, int a2, const LSBundleData *a3, NSDictionary *a4, int a5)
{
  v9 = a1;
  v10 = a4;
  v11 = v9;
  v12 = v11;
  v16 = v11;
  if (a5 && (BundleHasEntitlementWithMaybePreloadedEntitlements(v11, a3, v10, &cfstr_ComAppleDevelo_5.isa) & 1) == 0)
  {
    v13 = 0;
    v14 = v12;
  }

  else
  {
    v13 = _LSCanBundleHandleNodeOrSchemeOrUTI(&v16, a2, 0, @"mailto", 0, 14) != 0;
    v14 = v16;
  }

  return v13;
}

uint64_t BundleIsPhoneAppCandidate(_LSDatabase *a1, unsigned int a2, const LSBundleData *a3, NSDictionary *a4)
{
  v6 = a1;
  v7 = a4;
  if (BundleCanBeCandidate(v6, a3, v7, &unk_1EEF8F1F0, @"com.apple.mobilephone"))
  {
    v8 = BundleEntitlementValueWithMaybePreloadedEntitlements(v6, a3, v7, &cfstr_ApplicationIde.isa);
    if ([v8 isEqualToString:@"com.apple.FaceTime"] && MGGetBoolAnswer())
    {
      v9 = _LSDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0;
        v10 = "FaceTime is not a candidate for default calling app on this device.";
        v11 = &v15;
LABEL_13:
        _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else
    {
      if (![v8 isEqualToString:@"com.apple.mobilephone"] || MGGetSInt32Answer() != 3 || (_os_feature_enabled_impl() & 1) != 0)
      {
        v12 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v9 = _LSDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v10 = "MobilePhone is not a candidate for default calling app on this device.";
        v11 = &v14;
        goto LABEL_13;
      }
    }

    v12 = 0;
    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

uint64_t BundleHasEntitlementWithMaybePreloadedEntitlements(_LSDatabase *a1, const LSBundleData *a2, NSDictionary *a3, NSString *a4)
{
  v4 = BundleEntitlementValueWithMaybePreloadedEntitlements(a1, a2, a3, a4);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id BundleEntitlementValueWithMaybePreloadedEntitlements(_LSDatabase *a1, const LSBundleData *a2, NSDictionary *a3, NSString *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = [(NSDictionary *)v8 objectForKey:v9];
  }

  else
  {
    entitlements = a2->base.entitlements;
    v13 = v9;
    v14 = _LSPlistGet(v7, entitlements);
    v11 = _LSPlistDataGetValueForKey(v14, v13, 0);
  }

  return v11;
}

BOOL BundleCanBeCandidateAndMakesSubordinateClaims(void *a1, int a2, const LSBundleData *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7)
{
  v13 = a1;
  if (BundleCanBeCandidate(v13, a3, a4, a5, a6))
  {
    v20 = v13;
    v14 = *a7;
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a7 + 1)];
    if (v14 == 1)
    {
      v16 = _LSCanBundleHandleNodeOrSchemeOrUTI(&v20, a2, 0, 0, v15, 14);
    }

    else
    {
      v16 = _LSCanBundleHandleNodeOrSchemeOrUTI(&v20, a2, 0, v15, 0, 14);
    }

    v18 = v16;

    v17 = v18 != 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t BundleCanBeCandidate(void *a1, const LSBundleData *a2, void *a3, void *a4, void *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = *v22;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (BundleHasEntitlementWithMaybePreloadedEntitlements(v9, a2, v10, *(*(&v21 + 1) + 8 * v16)))
        {
          v18 = 1;
          v17 = v13;
          goto LABEL_12;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if (v12)
  {
    v17 = BundleEntitlementValueWithMaybePreloadedEntitlements(v9, a2, v10, &cfstr_ApplicationIde.isa);
    v18 = [v12 isEqual:{v17, v21}];
LABEL_12:
  }

  else
  {
    v18 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t std::__function::__func<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0,std::allocator<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0>,LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEF635C0;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0,std::allocator<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0>,LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::operator()(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *(a2 + 8);
  if (v4 == 1)
  {
    v5 = *a2;
    *a2 = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = *a3;
  v7 = [MEMORY[0x1E695DFD8] set];
  v13 = v7;
  if (v4)
  {
    v8 = v5;
  }

  else
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      std::__function::__func<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0,std::allocator<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0>,LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::operator()();
    }

    LaunchServices::_LSServer_DefaultAppsExtraStateManager(v10);
    v8 = [MEMORY[0x1E695DFD8] set];
  }

  v13 = v8;

  LaunchServices::LSDefaultAppsExtraState::setCategoryHasBeenSet(&v13, *(a1 + 8), 1);
  v11 = v13;
  if (v4)
  {
  }

  return v11;
}

void sub_181748FD0(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void LaunchServices::LSDefaultAppsExtraState::setCategoryHasBeenSet(void **a1, uint64_t a2, int a3)
{
  v5 = *a1;
  if (a3)
  {
    v11 = *a1;
    if (!v5)
    {
      v11 = [MEMORY[0x1E695DFD8] set];
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a2, v11}];
    v7 = [v12 setByAddingObject:v6];
    v8 = *a1;
    *a1 = v7;

    if (!v5)
    {
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZN14LaunchServices23LSDefaultAppsExtraState21setCategoryHasBeenSetE20LSDefaultAppCategoryb_block_invoke;
    v13[3] = &__block_descriptor_40_e22_B24__0__NSNumber_8_B16l;
    v13[4] = a2;
    v9 = [v5 objectsPassingTest:v13];
    v10 = *a1;
    *a1 = v9;
  }
}

void sub_181749124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (!v9)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN14LaunchServices23LSDefaultAppsExtraState21setCategoryHasBeenSetE20LSDefaultAppCategoryb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

uint64_t std::__function::__value_func<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ___ZL48_LSHasPreferenceEverBeenSetForDefaultAppCategory20LSDefaultAppCategory_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_181749478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::optional<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::~optional(va);

  _Unwind_Resume(a1);
}

void LaunchServices::FeatureFlagPredicateEvaluation::Predicate::parse_dictionary(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (_NSIsNSDictionary())
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x4812000000;
    v36 = __Block_byref_object_copy__32;
    v37 = __Block_byref_object_dispose__32;
    v38 = &unk_1818533FF;
    memset(v39, 0, sizeof(v39));
    v26 = 0;
    v27 = &v26;
    v28 = 0x4812000000;
    v29 = __Block_byref_object_copy__32;
    v30 = __Block_byref_object_dispose__32;
    v31 = &unk_1818533FF;
    memset(v32, 0, sizeof(v32));
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__80;
    v24 = __Block_byref_object_dispose__81;
    v25 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___ZN14LaunchServices30FeatureFlagPredicateEvaluation9Predicate16parse_dictionaryEP12NSDictionaryPU15__autoreleasingP7NSError_block_invoke;
    v19[3] = &unk_1E6A1D1B0;
    v19[4] = &v20;
    v19[5] = &v33;
    v19[6] = &v26;
    [v5 enumerateKeysAndObjectsUsingBlock:v19];
    v6 = v21[5];
    if (v6)
    {
      if (a2)
      {
        *a2 = v6;
      }

      *a3 = 0;
      *(a3 + 48) = 0;
    }

    else
    {
      v8 = v34;
      v9 = v34[8];
      v10 = *(v34 + 3);
      v34[7] = 0;
      v8[8] = 0;
      v8[6] = 0;
      v11 = v27;
      v12 = v27[8];
      v13 = *(v27 + 3);
      v27[7] = 0;
      v11[8] = 0;
      v11[6] = 0;
      memset(v16, 0, sizeof(v16));
      memset(v15, 0, sizeof(v15));
      *a3 = v10;
      *(a3 + 16) = v9;
      v17[0] = 0;
      v17[1] = 0;
      *(a3 + 24) = v13;
      *(a3 + 40) = v12;
      v17[2] = 0;
      memset(v18, 0, sizeof(v18));
      *(a3 + 48) = 1;
      v40 = v18;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v40);
      v40 = v17;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v40);
      v40 = v15;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v40);
      v40 = v16;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v40);
    }

    _Block_object_dispose(&v20, 8);

    _Block_object_dispose(&v26, 8);
    v20 = v32;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v20);
    _Block_object_dispose(&v33, 8);
    v26 = v39;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v26);
  }

  else
  {
    if (a2)
    {
      v41 = *MEMORY[0x1E696A278];
      v42[0] = @"Predicate was not a dictionary";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v7, "parse_dictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 106);
    }

    *a3 = 0;
    *(a3 + 48) = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t LaunchServices::DelayedInitable<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::emplace<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void LaunchServices::DelayedInitable<LaunchServices::Predicate>::emplace(Args &&...) [T = LaunchServices::Predicate, Args = <LaunchServices::Predicate>]"}];
    [v5 handleFailureInFunction:v6 file:@"LSObjCPlusPlusHelpers.hpp" lineNumber:34 description:@"can't re-emplace a DelayedInitable"];
  }

  return std::optional<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::emplace[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::Predicate,void>(a1, a2);
}

uint64_t LaunchServices::FeatureFlagPredicateEvaluation::Predicate::evaluate(uint64_t **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    if (*(v4 + 47) >= 0)
    {
      v6 = (v4 + 3);
    }

    else
    {
      v6 = v4[3];
    }

    if (*(v4 + 23) >= 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = *v4;
    }

    if (([v3 isFeature:v6 enabledInDomain:v7] & 1) == 0)
    {
      v15 = 0;
      goto LABEL_26;
    }

    v4 += 6;
  }

  v8 = a1[3];
  v9 = a1[4];
  if (v8 == v9)
  {
    v15 = 1;
  }

  else
  {
    v10 = v8 + 3;
    do
    {
      if (*(v10 + 23) >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = *v10;
      }

      if (*(v10 - 1) >= 0)
      {
        v12 = (v10 - 3);
      }

      else
      {
        v12 = *(v10 - 3);
      }

      v13 = [v3 isFeature:v11 enabledInDomain:v12];
      if (v10 + 3 == v9)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      v10 += 6;
    }

    while (v14 != 1);
    v15 = v13 ^ 1u;
  }

LABEL_26:

  return v15;
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN14LaunchServices30FeatureFlagPredicateEvaluation9Predicate16parse_dictionaryEP12NSDictionaryPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v50[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if ((_NSIsNSString() & 1) == 0)
  {
    v49 = *MEMORY[0x1E696A278];
    v50[0] = @"Predicate key not a feature flag";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:&v49 count:1];
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "parse_dictionary_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 114);
    v20 = *(*(a1 + 32) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

LABEL_10:
    *a4 = 1;
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v47 = *MEMORY[0x1E696A278];
    v48 = @"bad requirement value";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
    v23 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v22, "parse_dictionary_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 119);
    v24 = *(*(a1 + 32) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    goto LABEL_10;
  }

  v9 = LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier::from_nsstring(v7, v39);
  if (v43)
  {
    v10 = [v8 BOOLValue];
    v11 = 48;
    if (v10)
    {
      v11 = 40;
    }

    v12 = *(*(a1 + v11) + 8);
    v13 = v12[7];
    v14 = v12[8];
    if (v13 >= v14)
    {
      v31 = v12[6];
      v32 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v31) >> 4);
      v33 = v32 + 1;
      if (v32 + 1 > 0x555555555555555)
      {
        std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
      }

      v34 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v31) >> 4);
      if (2 * v34 > v33)
      {
        v33 = 2 * v34;
      }

      if (v34 >= 0x2AAAAAAAAAAAAAALL)
      {
        v35 = 0x555555555555555;
      }

      else
      {
        v35 = v33;
      }

      v44[4] = v12 + 6;
      if (v35)
      {
        std::allocator<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::allocate_at_least[abi:nn200100]((v12 + 6), v35);
      }

      v36 = 48 * v32;
      v44[0] = 0;
      v44[1] = v36;
      v44[3] = 0;
      v37 = *v39;
      *(v36 + 16) = v40;
      *v36 = v37;
      v39[1] = 0;
      v40 = 0;
      v39[0] = 0;
      v38 = *__p;
      *(v36 + 40) = v42;
      *(v36 + 24) = v38;
      __p[1] = 0;
      v42 = 0;
      __p[0] = 0;
      v44[2] = 48 * v32 + 48;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__swap_out_circular_buffer(v12 + 6, v44);
      v17 = v12[7];
      std::__split_buffer<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~__split_buffer(v44);
    }

    else
    {
      v15 = *v39;
      *(v13 + 16) = v40;
      *v13 = v15;
      v39[0] = 0;
      v39[1] = 0;
      v16 = v42;
      *(v13 + 24) = *__p;
      *(v13 + 40) = v16;
      v40 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v42 = 0;
      v17 = v13 + 48;
    }

    v12[7] = v17;
  }

  else
  {
    v45 = *MEMORY[0x1E696A278];
    v46 = @"Predicate key unparseable";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:{1, v9}];
    v28 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v27, "parse_dictionary_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 125);
    v29 = *(*(a1 + 32) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;

    *a4 = 1;
  }

  if (v43 == 1)
  {
    if (SHIBYTE(v42) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }
  }

LABEL_11:

  v26 = *MEMORY[0x1E69E9840];
}

void sub_181749FB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__split_buffer<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~__split_buffer(va1);
  std::optional<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~optional(va);

  _Unwind_Resume(a1);
}

double LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier::from_nsstring@<D0>(LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier *this@<X0>, uint64_t a2@<X8>)
{
  v4 = [(LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier *)this UTF8String];
  if (!v4 || ((v6 = v4, v7 = strlen(v4), v8 = &v6[v7], (v9 = memchr(v6, 47, v7)) != 0) ? (v10 = v9) : (v10 = v8), v10 != v8 ? (v11 = v10 == v6) : (v11 = 1), !v11 ? (v12 = v10 == v8 - 1) : (v12 = 1), v12))
  {
    *a2 = 0;
    *(a2 + 48) = 0;
  }

  else
  {
    LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier::FeatureFlagSpecifier(&v13, v6, v10 - v6, v10 + 1, v8 - (v10 + 1));
    *a2 = v13;
    *(a2 + 16) = v14;
    result = *&v15;
    *(a2 + 24) = v15;
    *(a2 + 40) = v16;
    *(a2 + 48) = 1;
  }

  return result;
}

void std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

char *LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier::FeatureFlagSpecifier(char *__dst, void *__src, size_t __len, void *a4, size_t a5)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  v10 = __dst + 24;
  __dst[47] = a5;
  if (a5)
  {
    memmove(v10, a4, a5);
  }

  v10[a5] = 0;
  return __dst;
}

void sub_18174A2F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier,0>(v4);
      v4 += 48;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::allocator<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::optional<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::optional<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = a1;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v3);
  }

  return a1;
}

uint64_t std::optional<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::emplace[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::Predicate,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v5 = (a1 + 24);
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = a1;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v5);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 1;
  return a1;
}

void sub_18174A908(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_18174C0A8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_18174C224(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_18174C368(_Unwind_Exception *a1)
{
  v5 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_18174C508(_Unwind_Exception *a1)
{
  v4 = v3;
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

id _LSLazyPropertyListWithLazyPropertyLists(void *a1)
{
  v1 = [_LSLazyPropertyList lazyPropertyListWithLazyPropertyLists:a1];

  return v1;
}

id _LSLazyPropertyListWithPropertyList(void *a1)
{
  v1 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:a1];

  return v1;
}

id _LSLazyPropertyListWithPropertyListData(void *a1)
{
  v1 = [_LSLazyPropertyList lazyPropertyListWithPropertyListData:a1];

  return v1;
}

unint64_t LaunchServices::LocalizedString::Create(void *a1, void *a2, void *a3)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v36 = a1;
  v6 = a2;
  v7 = a3;
  v49 = 0;
  v48 = 0;
  v37 = v7;
  if (!v6 || (v7 = [v6 count], !v37))
  {
    if (!v7)
    {
      v8 = 0;
      goto LABEL_52;
    }
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [v6 allKeys];
  v11 = v10;
  if (v10)
  {
    if ([v10 containsObject:@"LSDefaultLocalizedValue"])
    {
      v35 = v11;
    }

    else
    {
      v12 = [v11 arrayByAddingObject:@"LSDefaultLocalizedValue"];

      v35 = v12;
    }
  }

  else
  {
    v52[0] = @"LSDefaultLocalizedValue";
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:1];
  }

  objc_autoreleasePoolPop(v9);
  v13 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:0];
  v14 = +[_LSStringLocalizer missingLocalizationPlaceholder];
  v15 = 0;
  v8 = 0;
  if (!v35 || !v13)
  {
    goto LABEL_51;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v35;
  v16 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = *v45;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v45 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v44 + 1) + 8 * i);
      v20 = [v6 objectForKeyedSubscript:v19];
      if ([v20 isEqual:v14])
      {
      }

      else if (v20)
      {
        goto LABEL_23;
      }

      if ([v19 isEqual:@"LSDefaultLocalizedValue"])
      {
        v20 = v37;
      }

      else
      {
        v20 = 0;
      }

LABEL_23:
      [v13 addPointer:v20];
    }

    v16 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  }

  while (v16);
LABEL_25:

  v21 = objc_alloc(MEMORY[0x1E695DFA8]);
  v22 = [v21 initWithCapacity:{objc_msgSend(v13, "count")}];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v23 = v13;
  v24 = [v23 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v24)
  {
    v25 = *v41;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v40 + 1) + 8 * j);
        v28 = v27;
        if (!v27)
        {
          v21 = [MEMORY[0x1E695DFB0] null];
          v28 = v21;
        }

        [v22 addObject:v28];
        if (!v27)
        {
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v24);
  }

  v39 = 0;
  if ([v22 count] == 1 && objc_msgSend(obj, "count") && objc_msgSend(v23, "count"))
  {
    v29 = [obj objectAtIndexedSubscript:0];
    StringForCFString = _LSDatabaseCreateStringForCFString(v36, v29, 0);
    LODWORD(v48) = StringForCFString;

    v30 = _LSDatabaseCreateStringForCFString(v36, [v23 pointerAtIndex:0], 0);
    HIDWORD(v48) = v30;
    LOBYTE(v49) = v49 | 2;
  }

  else
  {
    StringForCFString = _LSDatabaseCreateStringArray(v36, obj, 0, &v39 + 1);
    LODWORD(v48) = StringForCFString;
    v30 = _LSDatabaseCreateStringArrayWithNullValues(v36, v23, 0, &v39);
    HIDWORD(v48) = v30;
  }

  if ([obj count] == 1)
  {
    v31 = [obj objectAtIndexedSubscript:0];
    v32 = [v31 isEqual:@"LSDefaultLocalizedValue"];
    LOBYTE(v49) = v49 & 0xFE | v32;
  }

  else
  {
    LOBYTE(v49) = v49 & 0xFE;
  }

  v15 = 0;
  v8 = 0;
  if (StringForCFString && v30)
  {
    if (v39 & 0x100) != 0 || (v39)
    {
      v8 = 0;
      v15 = 0;
    }

    else
    {
      v8 = v48;
      StringForCFString = v48 >> 8;
      v15 = v49 | 0x100000000;
    }
  }

LABEL_51:
  if ((v15 & 0x100000000) == 0)
  {
LABEL_52:
    LaunchServices::LocalizedString::dispose(&v48, v36);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v8 | (StringForCFString << 8);
}

void LaunchServices::LocalizedString::dispose(LaunchServices::LocalizedString *this, _LSDatabase *a2)
{
  v3 = a2;
  v5 = v3;
  if ((*(this + 8) & 2) != 0)
  {
    [(_LSDatabase *)v3 store];
    _CSStringRelease();
    v4 = *(this + 1);
    [(_LSDatabase *)v5 store];
    _CSStringRelease();
  }

  else
  {
    _LSDatabaseDisposeStringArray(v3, *this);
    _LSDatabaseDisposeStringArray(v5, *(this + 1));
  }
}

uint64_t LaunchServices::LocalizedString::Add(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static _LSLocalizedStringID LaunchServices::LocalizedString::Add(_LSDatabase *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull, NSString *__strong _Nullable)"}];
    [v13 handleFailureInFunction:v14 file:@"LSLocalizedString.mm" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];
  }

  v8 = LaunchServices::LocalizedString::Create(v5, v6, v7);
  if ((v9 & 0x100000000) != 0)
  {
    v15 = v8;
    v16 = v9;
    [(_LSDatabase *)v5 store];
    v11 = *([(_LSDatabase *)v5 schema]+ 1604);
    v10 = CSStoreAllocUnitWithData();
    if (!v10)
    {
      LaunchServices::LocalizedString::dispose(&v15, v5);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_18174D480(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void LaunchServices::LocalizedString::Remove(LaunchServices::LocalizedString *this, _LSDatabase *a2)
{
  v3 = this;
  v8 = v3;
  if (!v3)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static void LaunchServices::LocalizedString::Remove(_LSDatabase *__strong _Nonnull, _LSLocalizedStringID)"}];
    [v6 handleFailureInFunction:v7 file:@"LSLocalizedString.mm" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];

    v3 = 0;
  }

  v4 = LaunchServices::LocalizedString::Get(v3, a2);
  if (v4)
  {
    LaunchServices::LocalizedString::dispose(v4, v8);
    [(_LSDatabase *)v8 store];
    v5 = *([(_LSDatabase *)v8 schema]+ 1604);
    CSStoreFreeUnit();
  }
}

void LaunchServices::LocalizedString::GetVisualizationFunctions(id (**a1)(LaunchServices::LocalizedString **this, LSContext *a2, _LSDatabase *a3)@<X8>)
{
  *a1 = LaunchServices::Localization::getSummaryOfLocalizedString;
  a1[1] = LaunchServices::Localization::displayLocalizedString;
  a1[2] = 0;
}

id LaunchServices::Localization::getSummaryOfLocalizedString(LaunchServices::LocalizedString **this, LSContext *a2, _LSDatabase *a3)
{
  v4 = LaunchServices::LocalizedString::Get(*this, a3);
  if (v4)
  {
    v4 = LaunchServices::LocalizedString::localizeUnsafely(v4, *this, 0);
  }

  return v4;
}

BOOL LaunchServices::Localization::displayLocalizedString(LaunchServices::LocalizedString **this, LSContext *a2, _LSDatabase *a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v9 = LaunchServices::LocalizedString::Get(*this, a3);
  if (v9)
  {
    *v12 = 0;
    v10 = LaunchServices::Localization::getLocalizedValuesForDisplay(this, v9, &v12[1], v12, v8);
    [v7 write:@"default only" BOOL:v12[1]];
    [v7 write:@"all values equal" BOOL:v12[0]];
    [v7 writeArray:v10];
  }

  return v9 != 0;
}

void LaunchServices::CanonicalString::Create(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v15 = a1;
  v7 = a2;
  v8 = a3;
  *a4 = 0;
  a4[16] = 0;
  if (!v15)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static std::optional<CanonicalString> LaunchServices::CanonicalString::Create(_LSDatabase *__strong _Nonnull, NSString *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull)"}];
    [v11 handleFailureInFunction:v12 file:@"LSLocalizedString.mm" lineNumber:429 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static std::optional<CanonicalString> LaunchServices::CanonicalString::Create(_LSDatabase *__strong _Nonnull, NSString *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull)"}];
    [v13 handleFailureInFunction:v14 file:@"LSLocalizedString.mm" lineNumber:430 description:{@"Invalid parameter not satisfying: %@", @"canonical != nil"}];

    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = 0uLL;
  if (v8 && [v8 count] && (LODWORD(v16) = _LSDatabaseCreateStringForCFString(v15, v7, 0), v16) && (v9 = LaunchServices::LocalizedString::Create(v15, v8, v7), (v10 & 0x100000000) != 0))
  {
    *(&v16 + 4) = v9;
    HIDWORD(v16) = v10;
    *a4 = v16;
    a4[16] = 1;
  }

  else
  {
    LaunchServices::CanonicalString::dispose(&v16, v15);
  }
}

void LaunchServices::CanonicalString::dispose(LaunchServices::CanonicalString *this, _LSDatabase *a2)
{
  v3 = a2;
  v4 = *this;
  v5 = v3;
  [(_LSDatabase *)v5 store];
  _CSStringRelease();
  LaunchServices::LocalizedString::dispose((this + 4), v5);
}

uint64_t LaunchServices::CanonicalString::Add(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static _LSCanonicalStringID LaunchServices::CanonicalString::Add(_LSDatabase *__strong _Nonnull, NSString *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull)"}];
    [v12 handleFailureInFunction:v13 file:@"LSLocalizedString.mm" lineNumber:464 description:{@"Invalid parameter not satisfying: %@", @"canonical != nil"}];

    if (v7)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static _LSCanonicalStringID LaunchServices::CanonicalString::Add(_LSDatabase *__strong _Nonnull, NSString *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull)"}];
  [v10 handleFailureInFunction:v11 file:@"LSLocalizedString.mm" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (![v7 count])
  {
    goto LABEL_10;
  }

  LaunchServices::CanonicalString::Create(v5, v6, v7, &v16);
  if (v17 != 1)
  {
    goto LABEL_10;
  }

  v15 = v16;
  [(_LSDatabase *)v5 store];
  v8 = *([(_LSDatabase *)v5 schema]+ 1608);
  v9 = CSStoreAllocUnitWithData();
  if (!v9)
  {
    LaunchServices::CanonicalString::dispose(&v15, v5);
  }

LABEL_11:

  return v9;
}

void sub_18174DB70(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t LaunchServices::CanonicalString::Get(LaunchServices::CanonicalString *this, _LSDatabase *a2)
{
  v2 = this;
  if (!v2)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static const CanonicalString *LaunchServices::CanonicalString::Get(_LSDatabase *__strong _Nonnull, _LSCanonicalStringID)"}];
    [v6 handleFailureInFunction:v7 file:@"LSLocalizedString.mm" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];
  }

  [(_LSDatabase *)v2 store];
  v3 = *([(_LSDatabase *)v2 schema]+ 1608);
  Unit = CSStoreGetUnit();

  return Unit;
}

uint64_t LaunchServices::CanonicalString::Find(LaunchServices::CanonicalString *this, _LSDatabase *a2, NSString *a3)
{
  v4 = this;
  v5 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (_LSDatabaseGetStringForCFString(v4, v5, 0))
  {
    [(_LSDatabase *)v4 store];
    v6 = *([(_LSDatabase *)v4 schema]+ 1608);
    _CSStoreEnumerateUnits();
  }

  v7 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v7;
}

void sub_18174DDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZN14LaunchServices15CanonicalString4FindEP11_LSDatabaseP8NSString_block_invoke(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, _BYTE *a5)
{
  if (*a3 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a5 = 1;
  }

  return result;
}

void LaunchServices::CanonicalString::GetVisualizationFunctions(unsigned int *(**a1)(LaunchServices::CanonicalString **this, LSContext *a2, _LSDatabase *a3)@<X8>)
{
  *a1 = LaunchServices::Localization::getSummaryOfCanonicalString;
  a1[1] = LaunchServices::Localization::displayCanonicalString;
  a1[2] = 0;
}

unsigned int *LaunchServices::Localization::getSummaryOfCanonicalString(LaunchServices::CanonicalString **this, LSContext *a2, _LSDatabase *a3)
{
  v4 = LaunchServices::CanonicalString::Get(*this, a3);
  if (v4)
  {
    v5 = *v4;
    [(_LSDatabase *)*this store];
    v4 = _CSStringCopyCFString();
  }

  return v4;
}

BOOL LaunchServices::Localization::displayCanonicalString(LaunchServices::CanonicalString **this, LSContext *a2, _LSDatabase *a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v8 = LaunchServices::CanonicalString::Get(*this, a3);
  v9 = v8;
  if (v8)
  {
    v10 = *v8;
    [(_LSDatabase *)*this store];
    v11 = _CSStringCopyCFString();
    [v7 write:@"canonical" string:v11];
    v13 = LaunchServices::Localization::getLocalizedValuesForDisplay(this, (v9 + 1), 0, 0, v12);
    [v7 write:@"localized" array:v13];
  }

  return v9 != 0;
}

id LaunchServices::Localization::getLocalizedValuesForDisplay(_LSDatabase **this, LSContext *a2, const LaunchServices::LocalizedString *a3, BOOL *a4, BOOL *a5)
{
  v54 = *MEMORY[0x1E69E9840];
  v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
  context = objc_autoreleasePoolPush();
  v38 = +[_LSStringLocalizer missingLocalizationPlaceholder];
  v9 = LaunchServices::LocalizedString::getAllUnsafeLocalizations(a2, *this, v38, a3, a4);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_34;
  }

  v11 = [v9 allValues];
  v12 = [objc_alloc(MEMORY[0x1E696AB50]) initWithArray:v11];
  v13 = v12;
  if (v12)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *v49;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v49 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v48 + 1) + 8 * i);
          if ([v14 countForObject:v20] == 1)
          {
            v21 = v20;

            ++v16;
            v17 = v21;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v15);

      if (v16 == 1 && [v14 count] != 1)
      {
        goto LABEL_18;
      }
    }

    else
    {

      v17 = 0;
    }
  }

  v17 = 0;
LABEL_18:

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v22 = [v10 allKeys];
  v23 = [v22 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v24)
  {
    v25 = *v45;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v44 + 1) + 8 * j);
        v28 = [v10 objectForKeyedSubscript:v27];
        v29 = v28;
        if (v28)
        {
          if ([(NSString *)v28 isEqual:v17])
          {
            v30 = objc_opt_new();
            [v30 setInsertsNewlines:0];
            v39[0] = MEMORY[0x1E69E9820];
            v39[1] = 3221225472;
            v39[2] = ___ZN14LaunchServices12LocalizationL28getLocalizedValuesForDisplayEP9LSContextPKNS_15LocalizedStringEPbS6__block_invoke;
            v39[3] = &unk_1E6A1D228;
            v40 = v29;
            v41 = v38;
            v31 = v30;
            v42 = v31;
            v43 = v27;
            [v31 withTextColor:0 backgroundColor:16766073 block:v39];
            v32 = [v31 attributedString];
            [v37 addObject:v32];
          }

          else
          {
            v31 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(v27, "length") + -[NSString length](v29, "length") + 7}];
            [v31 appendString:@""];
            [v31 appendString:v27];
            if (v29 == v38)
            {
              v33 = @" = ?";
            }

            else
            {
              [v31 appendString:@" = "];
              [v31 appendString:v29];
              v33 = @"";
            }

            [v31 appendString:v33];
            [v37 addObject:v31];
          }
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v24);
  }

LABEL_34:
  objc_autoreleasePoolPop(context);
  v34 = *MEMORY[0x1E69E9840];

  return v37;
}

uint64_t ___ZN14LaunchServices12LocalizationL28getLocalizedValuesForDisplayEP9LSContextPKNS_15LocalizedStringEPbS6__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  if (v2 == v3)
  {
    return [v4 writeFormat:@"%@ = ?", v5, v7];
  }

  else
  {
    return [v4 writeFormat:@"%@ = %@", v5, v2];
  }
}

void sub_18174E604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _LSEligibilityListenerNotificationToken;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void LaunchServices::EligibilityCache::removeEligibilityChangedListener(os_unfair_lock_s *this, objc_object *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this);

  v4 = v3;
  std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__erase_unique<unsigned long>(&this[8], &v4);
  os_unfair_lock_unlock(this);
}

BOOL _LSServer_AcquiesceToDeputizationForDomain(unint64_t a1)
{
  _LSAssertRunningInServer("BOOL _LSServer_AcquiesceToDeputizationForDomain(os_eligibility_domain_t)");
  result = 1;
  if (a1 > 0x3C || ((1 << a1) & 0x1000260001000050) == 0)
  {
    return a1 == 131;
  }

  return result;
}

id LaunchServices::EligibilityCache::getNotifyStateQueue(LaunchServices::EligibilityCache *this)
{
  if (LaunchServices::EligibilityCache::getNotifyStateQueue(void)::onceToken != -1)
  {
    LaunchServices::EligibilityCache::getNotifyStateQueue();
  }

  v2 = LaunchServices::EligibilityCache::getNotifyStateQueue(void)::result;

  return v2;
}

void ___ZN14LaunchServices16EligibilityCache19getNotifyStateQueueEv_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.eligibilitycache", v2);
  v1 = LaunchServices::EligibilityCache::getNotifyStateQueue(void)::result;
  LaunchServices::EligibilityCache::getNotifyStateQueue(void)::result = v0;
}

id LaunchServices::EligibilityCache::getCallbackQueue(LaunchServices::EligibilityCache *this)
{
  if (LaunchServices::EligibilityCache::getCallbackQueue(void)::onceToken != -1)
  {
    LaunchServices::EligibilityCache::getCallbackQueue();
  }

  v2 = LaunchServices::EligibilityCache::getCallbackQueue(void)::result;

  return v2;
}

void ___ZN14LaunchServices16EligibilityCache16getCallbackQueueEv_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.eligibilitycache.callbacks", v2);
  v1 = LaunchServices::EligibilityCache::getCallbackQueue(void)::result;
  LaunchServices::EligibilityCache::getCallbackQueue(void)::result = v0;
}

void LaunchServices::EligibilityCache::ensureNotificationListener(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = ___ZN14LaunchServices16EligibilityCache26ensureNotificationListenerERKNSt3__110lock_guardINS_17unfair_lock_mutexEEE_block_invoke;
    v4[3] = &__block_descriptor_48_e5_v8__0l;
    v4[4] = a1;
    v4[5] = a1;
    v5 = MEMORY[0x1865D71B0](v4);
    std::optional<LaunchServices::EligibilityCache::NotifyState>::emplace[abi:nn200100]<void({block_pointer} {__strong})(void),void>(a1 + 64, &v5);

    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "registered eligibility notification listener", v3, 2u);
    }
  }
}

uint64_t std::optional<LaunchServices::EligibilityCache::NotifyState>::emplace[abi:nn200100]<void({block_pointer} {__strong})(void),void>(uint64_t a1, void **a2)
{
  if (*(a1 + 16) == 1)
  {
    LaunchServices::notifyd::NotifyToken::~NotifyToken((a1 + 8));

    *(a1 + 16) = 0;
  }

  result = LaunchServices::EligibilityCache::NotifyState::NotifyState(a1, *a2);
  *(a1 + 16) = 1;
  return result;
}

void ___ZN14LaunchServices16EligibilityCache26ensureNotificationListenerERKNSt3__110lock_guardINS_17unfair_lock_mutexEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "eligibility changed for cache", buf, 2u);
  }

  v4 = *(a1 + 40);
  os_unfair_lock_lock(v4);
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::destroy((v5 - 1), v6);
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
  *buf = 0;
  v16 = 0;
  v17 = 0;
  v8 = v5[2];
  if (v8 != v5 + 3)
  {
    do
    {
      v7 = std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::push_back[abi:nn200100](buf, v8 + 5);
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v5 + 3);
  }

  v12 = LaunchServices::EligibilityCache::getCallbackQueue(v7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN14LaunchServices16EligibilityCache26ensureNotificationListenerERKNSt3__110lock_guardINS_17unfair_lock_mutexEEE_block_invoke_12;
  block[3] = &__block_descriptor_56_ea8_32c70_ZTSNSt3__16vectorIU8__strongU13block_pointerFvvENS_9allocatorIS3_EEEE_e5_v8__0l;
  memset(v14, 0, sizeof(v14));
  std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__init_with_size[abi:nn200100]<void({block_pointer} {__strong}*)(void),void({block_pointer} {__strong}*)(void)>(v14, *buf, v16, (v16 - *buf) >> 3);
  dispatch_async(v12, block);

  v18 = v14;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v18);
  v18 = buf;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v18);
  os_unfair_lock_unlock(v4);
}

void sub_18174EB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 40) = &a17;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100]((v19 - 40));
  os_unfair_lock_unlock(v17);
  _Unwind_Resume(a1);
}

uint64_t std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::push_back[abi:nn200100](void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = MEMORY[0x1865D71B0](*a2);
    v13[2] = v12 + 1;
    std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = MEMORY[0x1865D71B0](*a2);
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_18174EC3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices16EligibilityCache26ensureNotificationListenerERKNSt3__110lock_guardINS_17unfair_lock_mutexEEE_block_invoke_12(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  while (v1 != v2)
  {
    v3 = MEMORY[0x1865D71B0](*v1);
    v3[2]();

    ++v1;
  }
}

uint64_t __copy_helper_block_ea8_32c70_ZTSNSt3__16vectorIU8__strongU13block_pointerFvvENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = a1 + 32;
  *(v2 + 16) = 0;
  return std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__init_with_size[abi:nn200100]<void({block_pointer} {__strong}*)(void),void({block_pointer} {__strong}*)(void)>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

uint64_t LaunchServices::EligibilityCache::refreshAnswerForDomain(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  LaunchServices::EligibilityCache::ensureNotificationListener(a1);
  v7 = *(a1 + 56);
  v16 = 0;
  v8 = (*(*v7 + 16))(v7, a3, &v16);
  v10 = v9;
  v11 = v16;
  if (v10)
  {
    v15[0] = a3;
    v15[1] = v8;
    std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::__emplace_unique_key_args<os_eligibility_domain_t,std::pair<os_eligibility_domain_t,os_eligibility_answer_t>>(a1 + 8, v15);
  }

  else
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::EligibilityCache::refreshAnswerForDomain();
    }

    if (a4)
    {
      v13 = v11;
      *a4 = v11;
    }
  }

  return v10 & 1;
}

BOOL LaunchServices::EligibilityCache::getEligibilityGatedBrowsersCanBind(LaunchServices::EligibilityCache *this)
{
  v8 = 0;
  v1 = LaunchServices::EligibilityCache::cachedAnswerForDomain(this, 4uLL, &v8);
  v3 = v2;
  v4 = v8;
  if (v3)
  {
    v5 = interpretEligibilityAnswerForBrowserDomain(v1);
  }

  else
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::EligibilityCache::getEligibilityGatedBrowsersCanBind(v4, v6);
    }

    v5 = 0;
  }

  return v5;
}

BOOL interpretEligibilityAnswerForBrowserDomain(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 != 2 && a1 != 4)
  {
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315394;
      v6 = "interpretEligibilityAnswerForBrowserDomain";
      v7 = 1024;
      v8 = a1;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "%s: currently not eligible for gated browser (answer %d)", &v5, 0x12u);
    }
  }

  result = a1 == 4;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL LaunchServices::EligibilityCache::getEligibilityGatedBrowserEngineEmbeddersCanBind(LaunchServices::EligibilityCache *this)
{
  v8 = 0;
  v1 = LaunchServices::EligibilityCache::cachedAnswerForDomain(this, 6uLL, &v8);
  v3 = v2;
  v4 = v8;
  if (v3)
  {
    v5 = interpretEligibilityAnswerForBrowserDomain(v1);
  }

  else
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::EligibilityCache::getEligibilityGatedBrowserEngineEmbeddersCanBind(v4, v6);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t LaunchServices::EligibilityCache::eligibleForDomainFailingClosed(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = LaunchServices::EligibilityCache::cachedAnswerForDomain(a1, a2, &v12);
  v5 = v4;
  v6 = v12;
  if ((v5 & 1) == 0)
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::EligibilityCache::eligibleForDomainFailingClosed();
    }

    goto LABEL_11;
  }

  if (v3 == 2)
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (v3 != 4)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "eligibleForDomainFailingClosed";
      v15 = 2048;
      v16 = a2;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "%s: currently not eligible for %llu (answer %d)", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  v7 = 1;
LABEL_12:

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

_LSEligibilityListenerNotificationToken *LaunchServices::EligibilityCache::addEligibilityChangedListener(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  LaunchServices::EligibilityCache::ensureNotificationListener(a1);
  v4 = [[_LSEligibilityListenerNotificationToken alloc] initWithEligibilityCache:a1];
  v6 = v4;
  v7 = [v3 copy];
  std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,objc_object * {__strong}>>(&a1[8], &v6);

  os_unfair_lock_unlock(a1);

  return v4;
}

void sub_18174F23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(v11);

  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices16EligibilityCache6sharedEv_block_invoke()
{
  if ([__LSDefaultsGetSharedInstance() isServer] & 1) == 0 && (objc_msgSend(__LSDefaultsGetSharedInstance(), "hasServer"))
  {
    operator new();
  }

  operator new();
}

uint64_t LaunchServices::EligibilityCache::NotifyState::NotifyState(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LaunchServices::EligibilityCache::getNotifyStateQueue(v3);
  *a1 = v4;
  LaunchServices::notifyd::NotifyToken::RegisterDispatch(@"com.apple.os-eligibility-domain.change", v4, v3, (a1 + 8));

  return a1;
}

uint64_t std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__init_with_size[abi:nn200100]<void({block_pointer} {__strong}*)(void),void({block_pointer} {__strong}*)(void)>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

uint64_t LaunchServices::DomainEvaluators::ServerDomainEvaluator::eligibilityForDomain(uint64_t a1, uint64_t a2, void *a3)
{
  _LSAssertRunningInServer("virtual std::optional<os_eligibility_answer_t> LaunchServices::ServerDomainEvaluator::eligibilityForDomain(os_eligibility_domain_t, NSError *__autoreleasing *)");
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer && a3)
  {
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], domain_answer, 0, "eligibilityForDomain", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSEligibility.mm", 106);
  }

  return 0;
}

uint64_t LaunchServices::DomainEvaluators::ClientDomainEvaluator::eligibilityForDomain(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x4012000000;
  v21 = __Block_byref_object_copy__34;
  v22 = __Block_byref_object_dispose__34;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__28;
  v16 = __Block_byref_object_dispose__29;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14LaunchServices16DomainEvaluators21ClientDomainEvaluator20eligibilityForDomainE23os_eligibility_domain_tPU15__autoreleasingP7NSError_block_invoke;
  v11[3] = &unk_1E6A18DF0;
  v11[4] = &v12;
  v5 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v11];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN14LaunchServices16DomainEvaluators21ClientDomainEvaluator20eligibilityForDomainE23os_eligibility_domain_tPU15__autoreleasingP7NSError_block_invoke_2;
  v10[3] = &unk_1E6A1D130;
  v10[4] = &v18;
  v10[5] = &v12;
  [v5 getEligibilityAnswerForDomain:a2 withCompletionHandler:v10];

  v6 = v19;
  if (a3 && (v19[7] & 1) == 0)
  {
    *a3 = v13[5];
    v6 = v19;
  }

  v7 = v6[6];
  v8 = v6[7];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v7;
}

void sub_18174F740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices16DomainEvaluators21ClientDomainEvaluator20eligibilityForDomainE23os_eligibility_domain_tPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [v10 unsignedLongLongValue];
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 48) = v6;
    *(v7 + 56) = 1;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::__emplace_unique_key_args<os_eligibility_domain_t,std::pair<os_eligibility_domain_t,os_eligibility_answer_t>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,objc_object * {__strong}>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__erase_unique<unsigned long>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::erase(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t timeWorkBlock(void *a1)
{
  v1 = a1;
  v2 = mach_absolute_time();
  v1[2](v1);

  return mach_absolute_time() - v2;
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, void *a2)
{

  return timeWorkBlock(a2);
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  v2 = *(v0 + 3480);

  return _LSGetMachTimebase();
}

void sub_1817503B4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_18175083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

double ___ZL78_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcessesv_block_invoke()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    ___ZL78_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcessesv_block_invoke_cold_1(v0);
  }

  v1 = _LSGetMachTimebase();
  result = 1.0e10 / (v1 / HIDWORD(v1));
  _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::maxCacheTimeAbsolute = result;
  return result;
}

void ___ZL78_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcessesv_block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, a3);
}

void sub_1817513A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(objc_object *)>::~__value_func[abi:nn200100](va);

  MEMORY[0x1865D6250](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t validateMarketplacesPreferences(objc_object *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [(objc_object *)v1 objectForKey:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(objc_object *)v1 objectForKey:@"preferredMarketplaces"];
      v4 = objc_opt_class();
      v5 = _LSIsArrayWithValuesOfClass(v3, v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t LaunchServices::LSStatePlist::LSStatePlist(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::__function::__value_func<BOOL ()(objc_object *)>::__value_func[abi:nn200100](v10, a3);
  v6 = v5;
  *a1 = v6;
  *(a1 + 8) = 0;
  v7 = v11;
  if (v11)
  {
    if (v11 == v10)
    {
      *(a1 + 40) = a1 + 16;
      (*(*v7 + 24))(v7);
    }

    else
    {
      *(a1 + 40) = v11;
      v11 = 0;
    }
  }

  else
  {
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  std::__function::__value_func<BOOL ()(objc_object *)>::~__value_func[abi:nn200100](v10);

  v8 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(objc_object *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

id _LSRegistrationLog()
{
  if (_LSRegistrationLog_onceToken != -1)
  {
    _LSRegistrationLog_cold_1();
  }

  v1 = _LSRegistrationLog_log;

  return v1;
}

id _LSAppProtectionLog()
{
  if (_LSAppProtectionLog_once != -1)
  {
    _LSAppProtectionLog_cold_1();
  }

  v1 = _LSAppProtectionLog_result;

  return v1;
}

id _LSPluginFaultLog()
{
  if (_LSPluginFaultLog_once != -1)
  {
    _LSPluginFaultLog_cold_1();
  }

  v1 = _LSPluginFaultLog_result;

  return v1;
}

id loggableURL(void *a1)
{
  v1 = a1;
  v2 = [v1 isFileURL];
  v3 = MEMORY[0x1E696AEC0];
  if (v2)
  {
    v4 = [v1 fileSystemRepresentation];

    v5 = [v3 stringWithUTF8String:v4];
  }

  else
  {
    v6 = [v1 scheme];

    v5 = [v3 stringWithFormat:@"%@:...", v6];
  }

  return v5;
}

id _LSGetInboxURLForBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = [LSApplicationProxy applicationProxyForIdentifier:v1];
  v3 = [v2 containerURL];

  if (v3)
  {
    v4 = [v3 path];
    v5 = [v4 isEqual:@"/var/mobile"];

    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library/Application Support/Containers/%@/Documents/Inbox/", v1];
      v7 = [v3 URLByAppendingPathComponent:v6 isDirectory:1];
    }

    else
    {
      v7 = [v3 URLByAppendingPathComponent:@"Documents/Inbox/" isDirectory:1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void _LSCopyOrMoveFileResource(void *a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  _LSAssertRunningInServer("void _LSCopyOrMoveFileResource(NSURL *__strong, NSFileHandle *__strong, NSString *__strong, NSURL *__strong, BOOL, void (^__strong)(NSURL *__strong, NSError *__strong))");
  if (!v15)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSCopyOrMoveFileResource(NSURL *__strong, NSFileHandle *__strong, NSString *__strong, NSURL *__strong, BOOL, void (^__strong)(NSURL *__strong, NSError *__strong))"}];
    [v22 handleFailureInFunction:v23 file:@"LSMobileDataTransitSupport.mm" lineNumber:371 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  MEMORY[0x1865D7C40]();
  v16 = MEMORY[0x1E696AF00];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___LSCopyOrMoveFileResource_block_invoke;
  v24[3] = &unk_1E6A1D318;
  v17 = v11;
  v25 = v17;
  v30 = a5;
  v18 = v12;
  v26 = v18;
  v19 = v14;
  v27 = v19;
  v20 = v13;
  v28 = v20;
  v21 = v15;
  v29 = v21;
  [v16 detachNewThreadWithBlock:v24];
}

void sub_181752030(_Unwind_Exception *a1)
{
  v8 = v3;
  v9 = v2;
  v10 = v1;

  _Unwind_Resume(a1);
}

void sub_181752B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, char a21, CFTypeRef cf)
{
  if (a21 == 1)
  {
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void _LSCopierCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  [v8 setCallbackType:a2];
  if (a2 == 1)
  {
    goto LABEL_9;
  }

  if (a2 == 2)
  {
LABEL_8:
    a3 = 0;
LABEL_9:
    [v8 setDestURL:a3];
    a4 = 0;
    goto LABEL_10;
  }

  if (a2 != 3)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      _LSCopierCallback(a2, v9);
    }

    goto LABEL_8;
  }

  [v8 setDestURL:0];
LABEL_10:
  [v8 setError:a4];
  Current = CFRunLoopGetCurrent();
  CFRunLoopStop(Current);
}

void copyProvidedResourceToStagingContainerRegularFile(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  *a4 = 0;
  v9 = +[LSOpenStagingDirectoryManager sharedServerInstance];
  v10 = [v9 mainDataVolumeStagingURLWithError:a3];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    v13 = [v10 URLByAppendingPathComponent:v12 isDirectory:1];

    v14 = getFileProtectionValueForFileHandle(v8, a3);
    if (v14)
    {
      v15 = [MEMORY[0x1E696AC08] defaultManager];
      v24 = *MEMORY[0x1E695DAF0];
      v25[0] = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
      v17 = [v15 createDirectoryAtURL:v13 withIntermediateDirectories:0 attributes:v16 error:a3];

      if (v17)
      {
        v18 = [v7 lastPathComponent];
        v19 = [v13 URLByAppendingPathComponent:v18];

        v20 = v19;
        v21 = open([v19 fileSystemRepresentation], 16777729, 420);
        if ((v21 & 0x80000000) == 0 && !fcopyfile([v8 fileDescriptor], v21, 0, 0xFu))
        {
          operator new();
        }

        if (a3)
        {
          v22 = __error();
          *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v22, 0, "copyProvidedResourceToStagingContainerRegularFile", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 277);
        }

        if ((v21 & 0x80000000) == 0)
        {
          close(v21);
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void sub_1817530E0(_Unwind_Exception *a1)
{
  *v3 = 0;

  _Unwind_Resume(a1);
}

id getFileProtectionValueForFileHandle(void *a1, void *a2)
{
  v3 = a1;
  v9[1] = 0;
  v9[2] = 0;
  v9[0] = 0x4000000000000005;
  if (fgetattrlist([v3 fileDescriptor], v9, &v8, 8uLL, 1u))
  {
    if (a2)
    {
      v4 = __error();
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v4, 0, "getFileProtectionValueForFileHandle", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 140);
      *a2 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    switch(HIDWORD(v8))
    {
      case 1:
        v6 = MEMORY[0x1E695DAD8];
        break;
      case 2:
        v6 = MEMORY[0x1E695DAE0];
        break;
      case 3:
        v6 = MEMORY[0x1E695DAE8];
        break;
      default:
        v6 = MEMORY[0x1E695DAF8];
        break;
    }

    v5 = *v6;
  }

  return v5;
}

void anonymous namespace::StagedFileResource::~StagedFileResource(_anonymous_namespace_::StagedFileResource *this)
{
  *this = &unk_1EEF639D0;
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = *v3;
    v9 = 0;
    v6 = [v4 removeItemAtURL:v5 error:&v9];
    v7 = v9;

    if ((v6 & 1) == 0)
    {
      v8 = _LSDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
      }
    }

    v2 = *v3;
  }
}

{

  JUMPOUT(0x1865D6250);
}

void anonymous namespace::StagedFileResource::sandboxExtensionForTransfer(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = *MEMORY[0x1E69E9BB0];
  [*(a1 + 16) fileSystemRepresentation];
  v6 = *MEMORY[0x1E69E9BE0];
  v7 = sandbox_extension_issue_file();
  if (!v7)
  {
    if (a2)
    {
      v11 = *MEMORY[0x1E696A798];
      v12 = __error();
      *a2 = _LSMakeNSErrorImpl(v11, *v12, 0, "sandboxExtensionForContainer", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 209);
    }

    goto LABEL_6;
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v7];
  free(v8);
  if (!v9)
  {
LABEL_6:
    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  *a3 = v9;
  v10 = 1;
LABEL_7:
  a3[8] = v10;
}

void anonymous namespace::FileResource::~FileResource(id *this)
{
}

{

  JUMPOUT(0x1865D6250);
}

void std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a2;
      *a2 = 0;
      v4 = *a1;
      *a1 = v3;
    }
  }

  else if (*(a1 + 8))
  {

    *(a1 + 8) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    *(a1 + 8) = 1;
  }
}

id makeStagingDirectoryURLInContainer(void *a1)
{
  v41[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E696A388];
  v3 = *MEMORY[0x1E695DB80];
  v40[0] = *MEMORY[0x1E696A3A0];
  v40[1] = v3;
  v41[0] = v2;
  v41[1] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v5 = [v1 URLByAppendingPathComponent:@"OpenOperationStaging"];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v33 = 0;
  v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:0 attributes:v4 error:&v33];
  v8 = v33;

  if (v7)
  {
    v9 = v5;
    goto LABEL_24;
  }

  v10 = [v8 domain];
  if (![v10 isEqualToString:*MEMORY[0x1E696A250]])
  {

    goto LABEL_7;
  }

  v11 = [v8 code] == 516;

  if (!v11)
  {
LABEL_7:
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      makeStagingDirectoryURLInContainer();
    }
  }

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  v32 = 0;
  v14 = [v13 URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:&v32];
  v15 = v32;

  if (v14)
  {
    v16 = [MEMORY[0x1E696AC08] defaultManager];
    v17 = [v14 path];
    v31 = v15;
    v18 = [v16 setAttributes:v4 ofItemAtPath:v17 error:&v31];
    v19 = v31;

    if ((v18 & 1) == 0)
    {
      v20 = _LSDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        makeStagingDirectoryURLInContainer();
      }
    }

    v21 = v14;
    v22 = [v14 fileSystemRepresentation];
    v23 = v5;
    if (renamex_np(v22, [v5 fileSystemRepresentation], 2u))
    {
      v24 = *__error();
      v25 = _LSDefaultLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v35 = v5;
        v36 = 2114;
        v37 = v14;
        v38 = 1024;
        v39 = v24;
        _os_log_error_impl(&dword_18162D000, v25, OS_LOG_TYPE_ERROR, "could not swap old (%{public}@) and new (%{public}@) staging directories: %{darwin.errno}d", buf, 0x1Cu);
      }

      v9 = 0;
    }

    else
    {
      v26 = dispatch_get_global_queue(-32768, 0);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = ___ZL34makeStagingDirectoryURLInContainerP5NSURLPU15__autoreleasingP7NSError_block_invoke;
      v29[3] = &unk_1E6A1A830;
      v30 = v14;
      dispatch_async(v26, v29);

      v9 = v5;
      v25 = v30;
    }
  }

  else
  {
    v25 = _LSDefaultLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      makeStagingDirectoryURLInContainer();
    }

    v9 = 0;
    v19 = v15;
  }

LABEL_24:
  v27 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_181753F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (*(v13 + 24) == 1)
  {
    LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(v13);
  }

  _Unwind_Resume(a1);
}

LaunchServices::OpenStaging::StagingDirectoryInfo *std::optional<LaunchServices::OpenStaging::StagingDirectoryInfo>::emplace[abi:nn200100]<NSString * {__strong}&,FSNode * {__strong}&,long long &,void>(LaunchServices::OpenStaging::StagingDirectoryInfo *this, void **a2, void **a3, uint64_t *a4)
{
  if (*(this + 24) == 1)
  {
    LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(this);
    *(this + 24) = 0;
  }

  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = v8;
  v12 = v9;
  *this = v11;
  *(this + 1) = v12;
  *(this + 4) = v10;
  *(this + 24) = 1;
  return this;
}

void *std::unordered_map<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>::insert_or_assign[abi:nn200100]<LaunchServices::OpenStaging::StagingDirectoryInfo>(void *a1, unint64_t *a2, LaunchServices::OpenStaging::StagingDirectoryInfo *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,LaunchServices::OpenStaging::StagingDirectoryInfo>(a1, a2);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    LaunchServices::OpenStaging::StagingDirectoryInfo::swap((v4 + 3), a3);
  }

  return v5;
}

void ___ZL34makeStagingDirectoryURLInContainerP5NSURLPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  v8 = 0;
  v5 = [v2 removeItemAtURL:v4 error:&v8];
  v6 = v8;

  if ((v5 & 1) == 0)
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___ZL34makeStagingDirectoryURLInContainerP5NSURLPU15__autoreleasingP7NSError_block_invoke_cold_1(v3);
    }
  }
}

void LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(LaunchServices::OpenStaging::StagingDirectoryInfo *this)
{
  if (*(this + 4) != -1)
  {
    sandbox_extension_release();
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,LaunchServices::OpenStaging::StagingDirectoryInfo>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_181755950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo((v2 + 24));
    }

    operator delete(v2);
  }

  return a1;
}

void LaunchServices::OpenStaging::StagingDirectoryInfo::swap(LaunchServices::OpenStaging::StagingDirectoryInfo *this, LaunchServices::OpenStaging::StagingDirectoryInfo *a2)
{
  v4 = *this;
  *this = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *this;
  *this = v5;

  v7 = *a2;
  *a2 = v4;

  v8 = *(this + 1);
  *(this + 1) = 0;
  v9 = *(a2 + 1);
  *(a2 + 1) = 0;
  v10 = *(this + 1);
  *(this + 1) = v9;

  v11 = *(a2 + 1);
  *(a2 + 1) = v8;

  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t LaunchServices::notifyd::NotifyToken::cancel(atomic_uint *this)
{
  v1 = atomic_exchange(this, 0xFFFFFFFF);
  result = notify_is_valid_token(v1);
  if (result)
  {

    return notify_cancel(v1);
  }

  return result;
}

void ___ZN14LaunchServices7notifyd11NotifyToken16RegisterDispatchEP8NSStringPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void LaunchServices::notifyd::NotifyToken::Post(LaunchServices::notifyd::NotifyToken *this, NSString *a2)
{
  v4 = this;
  v2 = objc_autoreleasePoolPush();
  v3 = v4;
  notify_post([(LaunchServices::notifyd::NotifyToken *)v4 UTF8String]);
  objc_autoreleasePoolPop(v2);
}

uint64_t LaunchServices::notifyd::NotifyToken::getState(LaunchServices::notifyd::NotifyToken *this)
{
  state64 = 0;
  v1 = atomic_load(this);
  if (notify_get_state(v1, &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

void sub_181755D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LSObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_181755DFC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181755E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_181755EF0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181755F1C(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_181755FE0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_1817561BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1817568C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

Class initBSServiceConnectionEndpoint(void)
{
  if (!BoardServicesLibrary(void)::frameworkLibrary)
  {
    BoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/BoardServices.framework/BoardServices", 2);
  }

  result = objc_getClass("BSServiceConnectionEndpoint");
  classBSServiceConnectionEndpoint = result;
  getBSServiceConnectionEndpointClass = BSServiceConnectionEndpointFunction;
  return result;
}

{
  if (!BoardServicesLibrary(void)::frameworkLibrary)
  {
    BoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/BoardServices.framework/BoardServices", 2);
  }

  result = objc_getClass("BSServiceConnectionEndpoint");
  classBSServiceConnectionEndpoint = result;
  getBSServiceConnectionEndpointClass = BSServiceConnectionEndpointFunction;
  return result;
}

Class initUISClickAttribution(void)
{
  if (!UIKitServicesLibrary(void)::frameworkLibrary)
  {
    UIKitServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
  }

  result = objc_getClass("UISClickAttribution");
  classUISClickAttribution = result;
  getUISClickAttributionClass = UISClickAttributionFunction;
  return result;
}

Class initUISPasteSharingToken(void)
{
  if (!UIKitServicesLibrary(void)::frameworkLibrary)
  {
    UIKitServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
  }

  result = objc_getClass("UISPasteSharingToken");
  classUISPasteSharingToken = result;
  getUISPasteSharingTokenClass = UISPasteSharingTokenFunction;
  return result;
}

id LSDatabaseBlockingFetchInterface()
{
  if (LSDatabaseBlockingFetchInterface_onceToken != -1)
  {
    LSDatabaseBlockingFetchInterface_cold_1();
  }

  v1 = LSDatabaseBlockingFetchInterface_result;

  return v1;
}

uint64_t __LSDatabaseBlockingFetchInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA75F0];
  v1 = LSDatabaseBlockingFetchInterface_result;
  LSDatabaseBlockingFetchInterface_result = v0;

  [LSDatabaseBlockingFetchInterface_result setClass:_CSStoreGetXPCClass() forSelector:sel_getServerStoreBlockingWithCompletionHandler_ argumentIndex:0 ofReply:1];
  v2 = LSDatabaseBlockingFetchInterface_result;
  v3 = _FSNodeGetClasses();
  [v2 setClasses:v3 forSelector:sel_getServerStoreBlockingWithCompletionHandler_ argumentIndex:1 ofReply:1];

  v4 = LSDatabaseBlockingFetchInterface_result;
  v5 = objc_opt_class();

  return [v4 setClass:v5 forSelector:sel_getServerStoreBlockingWithCompletionHandler_ argumentIndex:2 ofReply:1];
}

void sub_181756F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __LAUNCH_SERVICES_CLIENTS_ARE_WAITING_FOR_THE_DATABASE_TO_FINISH_SEEDING__()
{
  v0 = _LSDatabaseGetSeedingGroup();
  dispatch_group_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
}

void __LAUNCH_SERVICES_CLIENTS_ARE_WAITING_FOR_A_MANUAL_DATABASE_REBUILD_TO_COMPLETE__()
{
  v0 = _LSDatabaseGetSeedingGroup();
  dispatch_group_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
}

id _LSOpenResourceOperationDelegateGetXPCInterface()
{
  if (_LSOpenResourceOperationDelegateGetXPCInterface::once != -1)
  {
    _LSOpenResourceOperationDelegateGetXPCInterface_cold_1();
  }

  v1 = _LSOpenResourceOperationDelegateGetXPCInterface::result;

  return v1;
}

void __LAUNCH_SERVICES_IS_BEING_USED_SYNCHRONOUSLY_ON_THE_MAIN_THREAD_OF_THE_SHELL_APP_AND_WILL_DEADLOCK__()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = getprogname();
  v1 = _LSDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v3 = 136446466;
    v4 = v0;
    v5 = 2082;
    v6 = v0;
    _os_log_fault_impl(&dword_18162D000, v1, OS_LOG_TYPE_FAULT, "This Launch Services API is synchronous and makes an XPC call to %{public}s. It will always deadlock when used within %{public}s. You must use asynchronous API instead to avoid a deadlock and subsequent panic. This is a bug in Launch Services' client.", &v3, 0x16u);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void _LSFaultIfRunningOnMainThreadOfShellApp()
{
  if (pthread_main_np())
  {
    if ([__LSDefaultsGetSharedInstance() isAppleInternal])
    {
      if (FrontBoardServicesLibrary(void)::frameworkLibrary || (FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2)) != 0)
      {
        if ([getFBSOpenApplicationServiceClass() currentProcessServicesDefaultShellEndpoint])
        {

          __LAUNCH_SERVICES_IS_BEING_USED_SYNCHRONOUSLY_ON_THE_MAIN_THREAD_OF_THE_SHELL_APP_AND_WILL_DEADLOCK__();
        }
      }
    }
  }
}

void _LSServer_OpenApplication(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = [v11 _xpcConnection];
  if (_LSXPCConnectionMayMapDatabase(v13))
  {
    goto LABEL_7;
  }

  v14 = [v10 objectForKey:getFBSOpenApplicationOptionKeyActivateSuspended()];
  if (!v14 || (objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v15 = [v14 BOOLValue];

  if (v15)
  {
    v16 = MEMORY[0x1865D71B0](v12);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___LSServer_OpenApplication_block_invoke;
    v20[3] = &unk_1E6A1D448;
    v21 = v9;
    v22 = v11;
    v23 = v16;
    v17 = v16;
    v18 = MEMORY[0x1865D71B0](v20);

    v12 = v18;
  }

LABEL_8:
  if (a4)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  _LSServer_OpenApplicationCommon(v9, 0, 0, 0, 0, v11, v19, v10, v12);
}

void _LSServer_OpenApplicationCommon(void *a1, void *a2, unsigned int a3, void *a4, void *a5, void *a6, unint64_t a7, void *a8, void *a9)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  v29 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = objc_autoreleasePoolPush();
  if (a7)
  {
    _LSSchemeApprovalRememberForBouncebackCheck(v19, v16);
  }

  if (v16 && [v16 length])
  {
    if (!v17 || FrontBoardServicesLibrary(void)::frameworkLibrary || (FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2)) != 0)
    {
      v23 = _LSGetOptionsDictionaryContainingSourceApplication(v19, v17, 0, a3, v29, v18, 1, v20);
      v24 = objc_alloc_init(_LSSpringBoardCall);
      [(_LSSpringBoardCall *)v24 setBundleIdentifier:v16];
      [(_LSSpringBoardCall *)v24 setLaunchOptions:v23];
      if ((a7 & 2) == 0)
      {
        [(_LSSpringBoardCall *)v24 setClientXPCConnection:v19];
      }

      [(_LSSpringBoardCall *)v24 setCallCompletionHandlerWhenFullyComplete:(a7 >> 2) & 1];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = ___ZL31_LSServer_OpenApplicationCommonP8NSStringP8BSActionbP9LSAppLinkP19_LSAppLinkOpenStateP15NSXPCConnectionmP12NSDictionaryIS0_P11objc_objectEU13block_pointerFvbP7NSErrorE_block_invoke;
      v30[3] = &unk_1E6A190B8;
      v31 = v21;
      [(_LSSpringBoardCall *)v24 callWithCompletionHandler:v30];
    }

    else if (v21)
    {
      v28 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 45, 0, "_LSServer_OpenApplicationCommon", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1452);
      (*(v21 + 2))(v21, 0, v28);
    }
  }

  else if (v21)
  {
    v32 = *MEMORY[0x1E696A278];
    v33[0] = @"invalid input parameters";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v25, "_LSServer_OpenApplicationCommon", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1447);
    (*(v21 + 2))(v21, 0, v26);
  }

  objc_autoreleasePoolPop(v22);

  v27 = *MEMORY[0x1E69E9840];
}

void _LSServer_OpenUserActivity(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a5;
  v44 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v43 = a10;
  if (!(v16 | v17))
  {
    v30 = v20;
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSServer_OpenUserActivity(NSUUID *__strong, NSData *__strong, NSString *__strong, BOOL, NSString *__strong, LSAppLink *__strong, _LSAppLinkOpenState *__strong, NSDictionary<NSString *, id> *__strong, NSXPCConnection *__strong, __strong _LSDOpenServiceCompletionHandler)"}];
    [v31 handleFailureInFunction:v32 file:@"LSOpenOperation.mm" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"uuidOrNil != nil || activityDataOrNil != nil"}];

    v20 = v30;
  }

  v23 = v44;
  if (!v18)
  {
    v33 = v20;
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSServer_OpenUserActivity(NSUUID *__strong, NSData *__strong, NSString *__strong, BOOL, NSString *__strong, LSAppLink *__strong, _LSAppLinkOpenState *__strong, NSDictionary<NSString *, id> *__strong, NSXPCConnection *__strong, __strong _LSDOpenServiceCompletionHandler)"}];
    [v34 handleFailureInFunction:v35 file:@"LSOpenOperation.mm" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"activityType != nil"}];

    v23 = v44;
    v20 = v33;
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_7:
    v36 = v20;
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSServer_OpenUserActivity(NSUUID *__strong, NSData *__strong, NSString *__strong, BOOL, NSString *__strong, LSAppLink *__strong, _LSAppLinkOpenState *__strong, NSDictionary<NSString *, id> *__strong, NSXPCConnection *__strong, __strong _LSDOpenServiceCompletionHandler)"}];
    [v37 handleFailureInFunction:v38 file:@"LSOpenOperation.mm" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"bundleID != nil"}];

    v23 = v44;
    v20 = v36;
    goto LABEL_5;
  }

  if (!v19)
  {
    goto LABEL_7;
  }

LABEL_5:
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = ___LSServer_OpenUserActivity_block_invoke;
  v45[3] = &unk_1E6A1D470;
  v41 = v16;
  v46 = v41;
  v40 = v17;
  v47 = v40;
  v39 = v18;
  v48 = v39;
  v24 = v19;
  v49 = v24;
  v55 = a4;
  v25 = v23;
  v50 = v25;
  v26 = v20;
  v51 = v26;
  v27 = v22;
  v52 = v27;
  v28 = v21;
  v53 = v28;
  v29 = v43;
  v54 = v29;
  _LSAsyncOpenContext(v45);
}

void sub_1817581FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17)
{
  v26 = v24;
  v27 = v25;

  _Unwind_Resume(a1);
}

Class initFBSOpenApplicationService(void)
{
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
  }

  result = objc_getClass("FBSOpenApplicationService");
  classFBSOpenApplicationService = result;
  getFBSOpenApplicationServiceClass = FBSOpenApplicationServiceFunction;
  return result;
}

{
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
  }

  result = objc_getClass("FBSOpenApplicationService");
  classFBSOpenApplicationService = result;
  getFBSOpenApplicationServiceClass = FBSOpenApplicationServiceFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyActivateSuspended(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyActivateSuspended");
  constantFBSOpenApplicationOptionKeyActivateSuspended = result;
  getFBSOpenApplicationOptionKeyActivateSuspended = FBSOpenApplicationOptionKeyActivateSuspendedFunction;
  return result;
}

void ___ZL24_LSOpenOperationGetQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS open operation queue", v2);
  v1 = _LSOpenOperationGetQueue(void)::result;
  _LSOpenOperationGetQueue(void)::result = v0;
}

void ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_116(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _LSOpenLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Extend bookmark operation complete", buf, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_117;
  v22[3] = &unk_1E6A1D498;
  v8 = v5;
  v23 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v24 = v14;
  v25 = v13;
  v31 = *(a1 + 128);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v26 = v20;
  v27 = v19;
  v29 = *(a1 + 96);
  v21 = v6;
  v28 = v21;
  v30 = *(a1 + 104);
  _LSAsyncOpenContext(v22);
}

void ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_117(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = _LSOpenLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v16 = v3;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "bookmark extension successful, got FP string %@", buf, 0xCu);
    }

    v4 = [*(a1 + 40) mutableCopy];
    [v4 setObject:*(a1 + 32) forKeyedSubscript:@"FileProviderString"];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"RequireOpenInPlace"];
    _LSOpenOperationPerformContinueAfterAsyncGather(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 128), *(a1 + 72), *(a1 + 80), v4, *(a1 + 88), *(a1 + 96), *(a1 + 112));
  }

  else
  {
    v5 = *(a1 + 104) == 0;
    v6 = _LSOpenLog();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "no FP string but no error, continuing", buf, 2u);
      }

      (*(*(a1 + 120) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_117_cold_1((a1 + 104), v7, v8, v9, v10, v11, v12, v13);
      }

      (*(*(a1 + 120) + 16))();
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __copy_helper_block_ea8_112c64_ZTSNSt3__110shared_ptrIN14LaunchServices18LSSandboxExtensionEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 120);
  *(result + 112) = *(a2 + 112);
  *(result + 120) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_112c64_ZTSNSt3__110shared_ptrIN14LaunchServices18LSSandboxExtensionEEE(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void ___ZL47_LSOpenOperationPerformContinueAfterAsyncGatherP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [a1[4] openResourceOperation:0 didFinishCopyingResource:v5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL47_LSOpenOperationPerformContinueAfterAsyncGatherP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_2;
    v13[3] = &unk_1E6A1D4C0;
    v14 = a1[5];
    v15 = v5;
    v7 = a1[6];
    v8 = a1[7];
    v9 = a1[8];
    v10 = a1[9];
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v16 = v12;
    v17 = v11;
    _LSAsyncOpenContext(v13);
  }

  else
  {
    (*(a1[9] + 2))();
  }
}

void ___ZL47_LSOpenOperationPerformContinueAfterAsyncGatherP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v4 = _LSGetOptionsDictionaryContainingSourceApplication(*(a1 + 32), 0, *(a1 + 40), 0, 0, 0, 0, *(a1 + 48));
  [v4 setObject:*(a1 + 40) forKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadURL()];
  v2 = *(a1 + 56);
  if (v2)
  {
    [v4 setObject:v2 forKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadAnnotation()];
  }

  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:getFBSOpenApplicationOptionKeyActivateSuspended()];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:getFBSOpenApplicationOptionKeyDocumentOpen4LS()];
  v3 = objc_alloc_init(_LSSpringBoardCall);
  [(_LSSpringBoardCall *)v3 setBundleIdentifier:*(a1 + 64)];
  [(_LSSpringBoardCall *)v3 setLaunchOptions:v4];
  [(_LSSpringBoardCall *)v3 setClientXPCConnection:*(a1 + 32)];
  [(_LSSpringBoardCall *)v3 setCallCompletionHandlerWhenFullyComplete:0];
  [(_LSSpringBoardCall *)v3 callWithCompletionHandler:*(a1 + 72)];
}

void ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke_cold_1();
  }

  MEMORY[0x1865D7C50]();
}

void ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke_161(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) bundleIdentifier];
      v9 = 138477827;
      v10 = v7;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Set default handler to %{private}@", &v9, 0xCu);
    }
  }

  else
  {
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke_cold_1();
    }
  }

  MEMORY[0x1865D7C50]();
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t initFBSOpenApplicationOptionKeyPayloadIsValid4LS(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadIsValid4LS");
  constantFBSOpenApplicationOptionKeyPayloadIsValid4LS = result;
  getFBSOpenApplicationOptionKeyPayloadIsValid4LS = FBSOpenApplicationOptionKeyPayloadIsValid4LSFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyActions(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyActions");
  constantFBSOpenApplicationOptionKeyActions = result;
  getFBSOpenApplicationOptionKeyActions = FBSOpenApplicationOptionKeyActionsFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyAppLink4LS(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyAppLink4LS");
  constantFBSOpenApplicationOptionKeyAppLink4LS = result;
  getFBSOpenApplicationOptionKeyAppLink4LS = FBSOpenApplicationOptionKeyAppLink4LSFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyBrowserAppLinkState4LS(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyBrowserAppLinkState4LS");
  constantFBSOpenApplicationOptionKeyBrowserAppLinkState4LS = result;
  getFBSOpenApplicationOptionKeyBrowserAppLinkState4LS = FBSOpenApplicationOptionKeyBrowserAppLinkState4LSFunction;
  return result;
}

uint64_t initUISOpenApplicationOptionClickAttribution(void)
{
  v0 = UIKitServicesLibrary(void)::frameworkLibrary;
  if (!UIKitServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
    UIKitServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "UISOpenApplicationOptionClickAttribution");
  constantUISOpenApplicationOptionClickAttribution = result;
  getUISOpenApplicationOptionClickAttribution = UISOpenApplicationOptionClickAttributionFunction;
  return result;
}

uint64_t initUISOpenApplicationOptionPasteSharingToken(void)
{
  v0 = UIKitServicesLibrary(void)::frameworkLibrary;
  if (!UIKitServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
    UIKitServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "UISOpenApplicationOptionPasteSharingToken");
  constantUISOpenApplicationOptionPasteSharingToken = result;
  getUISOpenApplicationOptionPasteSharingToken = UISOpenApplicationOptionPasteSharingTokenFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyPayloadAnnotation(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadAnnotation");
  constantFBSOpenApplicationOptionKeyPayloadAnnotation = result;
  getFBSOpenApplicationOptionKeyPayloadAnnotation = FBSOpenApplicationOptionKeyPayloadAnnotationFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyDocumentOpen4LS(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyDocumentOpen4LS");
  constantFBSOpenApplicationOptionKeyDocumentOpen4LS = result;
  getFBSOpenApplicationOptionKeyDocumentOpen4LS = FBSOpenApplicationOptionKeyDocumentOpen4LSFunction;
  return result;
}

void ___ZL31_LSServer_OpenApplicationCommonP8NSStringP8BSActionbP9LSAppLinkP19_LSAppLinkOpenStateP15NSXPCConnectionmP12NSDictionaryIS0_P11objc_objectEU13block_pointerFvbP7NSErrorE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 code];
    if (v6)
    {
      v7 = _LSDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = softLinkFBSOpenApplicationErrorCodeToString(v6);
        v10 = 138412290;
        v11 = v8;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "application launch failed - received error %@", &v10, 0xCu);
      }
    }
  }

  (*(*(a1 + 32) + 16))();

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t initFBSOpenApplicationErrorCodeToString(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "FBSOpenApplicationErrorCodeToString");
  softLinkFBSOpenApplicationErrorCodeToString = v3;

  return v3(a1);
}

Class initUIActivityContinuationAction(void)
{
  if (!UIKitLibrary(void)::frameworkLibrary)
  {
    UIKitLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  }

  result = objc_getClass("UIActivityContinuationAction");
  classUIActivityContinuationAction = result;
  getUIActivityContinuationActionClass = UIActivityContinuationActionFunction;
  return result;
}

uint64_t _LSPersistentIdentifierCompare(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = [a1 length];
  v5 = [a2 length];
  v6 = 0;
  if (v4 >= 0x1C && v4 == v5)
  {
    v7 = [a1 bytes];
    v8 = [a2 bytes];
    v9 = memcmp(v7, v8, v4);
    if (!v9)
    {
      v14 = LaunchServices::PersistentIdentifier::getLog(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        _LSPersistentIdentifierCompare_cold_2();
      }

      v6 = 100;
      goto LABEL_13;
    }

    if (*v7 == *v8)
    {
      v10 = v7 + 12;
      v11 = v8 + 12;
      v12 = uuid_compare(v10, v8 + 12);
      v13 = v12;
      v14 = LaunchServices::PersistentIdentifier::getLog(v12);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (!v13)
      {
        if (v15)
        {
          _LSPersistentIdentifierCompare_cold_1();
        }

        v6 = 200;
        goto LABEL_13;
      }

      if (v15)
      {
        v23 = 134219266;
        v24 = a1;
        v25 = 2048;
        v26 = a2;
        v27 = 1040;
        v28 = 16;
        v29 = 2096;
        v30 = v10;
        v31 = 1040;
        v32 = 16;
        v33 = 2096;
        v34 = v11;
        v16 = "Persistent identifiers %p and %p have different databases (%{uuid_t}.16P vs. %{uuid_t}.16P)";
        v17 = v14;
        v18 = 54;
LABEL_19:
        _os_log_debug_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEBUG, v16, &v23, v18);
      }
    }

    else
    {
      v14 = LaunchServices::PersistentIdentifier::getLog(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v21 = *v7;
        v22 = *v8;
        v23 = 134218752;
        v24 = a1;
        v25 = 2048;
        v26 = a2;
        v27 = 1024;
        v28 = v21;
        v29 = 1024;
        LODWORD(v30) = v22;
        v16 = "Persistent identifiers %p and %p have different versions (%u vs. %u)";
        v17 = v14;
        v18 = 34;
        goto LABEL_19;
      }
    }

    v6 = 0;
LABEL_13:
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

id LaunchServices::PersistentIdentifier::getLog(LaunchServices::PersistentIdentifier *this)
{
  if (LaunchServices::PersistentIdentifier::getLog(void)::once != -1)
  {
    LaunchServices::PersistentIdentifier::getLog();
  }

  v2 = LaunchServices::PersistentIdentifier::getLog(void)::result;

  return v2;
}

__CFString *_LSPersistentIdentifierGetDebugDescription(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  if (v2 < 0x1C)
  {
    v9 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [a1 bytes];
    memset(out, 0, 37);
    uuid_unparse(v4 + 12, out);
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<LSPersistentIdentifier %p> { v = %u, t = 0x%llx, u = 0x%llx, db = %s", a1, *v4, *(v4 + 2), *(v4 + 1), out];
    v6 = v3 - 28;
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v4 + 28 length:v6 freeWhenDone:0];
      v8 = [v7 description];
      [v5 appendFormat:@", %@", v8];
    }

    [v5 appendString:@" }"];
    v9 = [v5 copy];
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1EEF65710;
  }

  v11 = v10;

  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_181759B54(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id _LSPersistentIdentifierGetKnowledgeUUIDInternal(void *a1)
{
  if ([a1 length] <= 0x1B)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUUID *_LSPersistentIdentifierGetKnowledgeUUIDInternal(const __strong LSPersistentIdentifier _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"LSPersistentIdentifier.mm" lineNumber:102 description:{@"persistent identifier of length %zu is too short to extract database UUID!", objc_msgSend(a1, "length")}];
  }

  v2 = [a1 bytes];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v2 + 12];

  return v3;
}

id _LSPersistentIdentifierGetKnowledgeUUID4CoreDevice(void *a1)
{
  if ([a1 length] < 0x1C)
  {
    v2 = 0;
  }

  else
  {
    v2 = _LSPersistentIdentifierGetKnowledgeUUIDInternal(a1);
  }

  return v2;
}

id _LSPersistentIdentifierGetSequenceNumber4CoreDevice(void *a1)
{
  if ([a1 length] < 0x24)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:_LSApplicationRecordPersistentIdentifierGetSequenceNumberInternal(a1)];
  }

  return v2;
}

void ___ZN14LaunchServices20PersistentIdentifierL6getLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "record-pi");
  v1 = LaunchServices::PersistentIdentifier::getLog(void)::result;
  LaunchServices::PersistentIdentifier::getLog(void)::result = v0;
}

uint64_t _LSPlistAdd(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  if (a1 && a2)
  {
    if (_NSIsNSDictionary())
    {
      v6 = _LSPlistCompact(a2);
      if (v6)
      {
        [(_LSDatabase *)a1 store];
        v7 = *([(_LSDatabase *)a1 schema]+ 1600);
        [v6 length];
        [v6 bytes];
        v5 = CSStoreAllocUnitWithData();
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

void *_LSPlistRemove(void *result, int a2)
{
  if (result && a2)
  {
    v2 = result;
    [(_LSDatabase *)result store];
    v3 = *([(_LSDatabase *)v2 schema]+ 1600);

    return CSStoreFreeUnit();
  }

  return result;
}

void _LSPlistGetVisualizationFunctions(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = LaunchServices::PropertyLists::display;
  a1[2] = 0;
}

BOOL LaunchServices::PropertyLists::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v8 = _LSPlistGet(*this, a3);
  v9 = _LSPlistDataGetDictionary(v8, 0);

  v10 = [v9 mutableCopy];
  if (v10)
  {
    [v10 removeObjectForKey:*MEMORY[0x1E695E128]];
    v11 = [v10 count];
    v12 = [a4 link:*(-[_LSDatabase schema](*this) + 1600) unit:a3];
    [a4 writeFormat:@"%lu values (%@)", v11, v12];

    v13 = [v10 description];
    if (v13)
    {
      [a4 write:v13];
    }
  }

  return v10 != 0;
}

id _LSPlistCompact(void *a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v9 = 0;
    v3 = _LSPlistCreateTransformed(a1, _LSPlistCompactString, &v9);
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];
    v5 = v4;
    if (v4 && v9 == 1)
    {
      v6 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v4, "length") + 4}];
      [v6 appendBytes:&_LSPlistCompactedMarker length:4];
      [v6 appendData:v5];
      v7 = [v6 copy];

      v5 = v7;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _LSGetPluginNotificationAndIconCacheQueue()
{
  if (_LSGetPluginNotificationAndIconCacheQueue::once != -1)
  {
    _LSGetPluginNotificationAndIconCacheQueue_cold_1();
  }

  v1 = _LSGetPluginNotificationAndIconCacheQueue::result;

  return v1;
}

void LSPluginSendNotification(void *a1, uint64_t a2, const void *a3)
{
  v5 = a1;
  if (CFDictionaryGetCount(a3) >= 1 && [(_LSDatabase *)v5 isSeeded])
  {
    _LSDatabaseCommit(v5);
    CFRetain(a3);
    v6 = _LSGetPluginNotificationAndIconCacheQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __LSPluginSendNotification_block_invoke;
    v7[3] = &__block_descriptor_48_e5_v8__0l;
    v7[4] = a2;
    v7[5] = a3;
    dispatch_async(v6, v7);
  }
}

void __LSPluginSendNotification_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_INFO, "sending plugin notification %@ with %@", &v8, 0x16u);
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, *(a1 + 32), 0, *(a1 + 40), 2uLL);
  CFRelease(*(a1 + 40));
  objc_autoreleasePoolPop(v2);
  v7 = *MEMORY[0x1E69E9840];
}

void LSPluginAddInfoToPayloadDict(void *a1, __CFDictionary *a2, int a3, uint64_t a4, int a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = v8;
  if (a5)
  {
    v10 = v8;
    v11 = _LSGetPlugin(v10, a3);
    if (v11)
    {
      v12 = *(v11 + 12);
      [(_LSDatabase *)v10 store];
      v13 = _CSStringCopyCFString();
      if (_LSIsNewsWidgetBundleIdentifier(v13))
      {
        v14 = +[LSApplicationRestrictionsManager sharedInstance];
        v15 = [(LSApplicationRestrictionsManager *)v14 isAppExtensionRestricted:v13];

        if (v15)
        {
          v16 = _LSDefaultLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v35[0]) = 138412290;
            *(v35 + 4) = v13;
            _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, "plugin %@ is restricted for notifications", v35, 0xCu);
          }

          goto LABEL_33;
        }
      }
    }
  }

  v17 = v9;
  v18 = _LSGetPlugin(v17, a3);
  if (v18)
  {
    v19 = *(v18 + 220);
    [(_LSDatabase *)v17 store];
    v20 = _CSStringCopyCFString();
  }

  else
  {
    v20 = 0;
  }

  v21 = v17;
  v22 = _LSGetPlugin(v21, a3);
  if (v22)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = *(v22 + 12);
    [(_LSDatabase *)v21 store];
    v25 = _CSStringCopyCFString();
    v26 = *(v22 + 172);
    [(_LSDatabase *)v21 store];
    v27 = _CSStringCopyCFString();
    v28 = *(v22 + 176);
    [(_LSDatabase *)v21 store];
    v29 = _CSStringCopyCFString();
    v30 = *(v22 + 44);
    v35[0] = *(v22 + 28);
    v35[1] = v30;
    v31 = _LSVersionNumberCopyStringRepresentation(v35);
    v32 = _LSAliasGetPath(v21, *v22);
    if (v32)
    {
      CFDictionaryAddValue(Mutable, @"_LSBundlePath", v32);
    }

    if (v25)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E4F0], v25);
      CFRelease(v25);
    }

    if (v27)
    {
      CFDictionaryAddValue(Mutable, @"NSExtensionIdentifier", v27);
      CFRelease(v27);
    }

    if (v29)
    {
      CFDictionaryAddValue(Mutable, @"LSEffectiveIdentifier", v29);
      CFRelease(v29);
    }

    if (v31)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E500], v31);
      CFRelease(v31);
    }

    v33 = Mutable != 0;
    if (v20 && Mutable)
    {
      CFDictionaryAddValue(a2, v20, Mutable);
      v33 = 1;
    }

    else if (!v20)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (!v20)
    {
      goto LABEL_33;
    }

    Mutable = 0;
    v33 = 0;
  }

  CFRelease(v20);
LABEL_31:
  if (v33)
  {
    CFRelease(Mutable);
  }

LABEL_33:

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t _LSPluginAdd(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && [(_LSDatabase *)v3 store])
  {
    a2[6] = CFAbsoluteTimeGetCurrent();
    [(_LSDatabase *)v4 store];
    v5 = *([(_LSDatabase *)v4 schema]+ 1588);
    v6 = CSStoreAllocUnitWithData();
    if (v6)
    {
      v7 = a2[43];
      if (!_LSBindableActivate(v4, v6) && (!a2[44] || !_LSBindableActivate(v4, v6)))
      {
        v8 = a2[46];
        if (!_LSBindableActivate(v4, v6))
        {
          v9 = a2[45];
          if (!_LSBindableActivate(v4, v6))
          {
            v10 = a2[55];
            _LSBindableActivate(v4, v6);
          }
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void _LSPluginRemove(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      if ([(_LSDatabase *)v3 store])
      {
        v5 = _LSGetPlugin(v4, a2);
        if (v5)
        {
          v6 = v5[3];
          v26 = v5[2];
          v7 = v5[4];
          v33 = v5[24];
          v34 = *v5;
          v31 = v5[27];
          v32 = v5[25];
          v20 = v5[26];
          v21 = v5[28];
          v19 = v5[29];
          v28 = v5[32];
          v29 = v5[31];
          v27 = v5[33];
          v22 = v5[34];
          v23 = v5[23];
          v24 = v5[36];
          v25 = v5[35];
          v8 = v5[43];
          v17 = v5[42];
          v18 = v5[38];
          v35 = v5[44];
          v30 = v5[45];
          v9 = v5[46];
          v10 = v5[55];
          v12 = v5[57];
          v11 = v5[58];
          _LSBindableDeactivate(v4, a2);
          if (v35)
          {
            _LSBindableDeactivate(v4, a2);
          }

          _LSBindableDeactivate(v4, a2);
          _LSBindableDeactivate(v4, a2);
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          if (v11)
          {
            v37 = MEMORY[0x1E69E9820];
            v38 = 3221225472;
            v39 = ___LSPluginRemove_block_invoke;
            v40 = &unk_1E6A18FC8;
            v41 = v4;
            _CSArrayEnumerateAllValues();
            _CSArrayDispose();
          }

          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          _LSPlistRemove(v4, v25);
          _LSPlistRemove(v4, v24);
          _LSDatabaseDisposeStringArray(v4, v23);
          _LSPlistRemove(v4, v22);
          if (v34)
          {
            _LSAliasRemove(v4, v34);
          }

          if (v33)
          {
            _LSAliasRemove(v4, v33);
          }

          LaunchServices::LocalizedString::Remove(v4, v21);
          LaunchServices::LocalizedString::Remove(v4, v20);
          LaunchServices::LocalizedString::Remove(v4, v19);
          _LSPlistRemove(v4, v18);
          v13 = *([(_LSDatabase *)v4 schema]+ 1588);
          CSStoreFreeUnit();
          if ((v17 & 4) != 0)
          {
            [(_LSDatabase *)v4 store];
            v14 = _CSStringCopyCFString();
            if (v14)
            {
              v36 = 0;
              v15 = _LSPluginFindWithPlatformInfo(v4, 0, v14, 1, 0, 0, &v36, 0);
              if (v15 && (*(v15 + 168) & 0xC) == 8)
              {
                v16 = *([(_LSDatabase *)v4 schema]+ 1588);
                _CSStoreWriteToUnit();
              }

              CFRelease(v14);
            }
          }
        }
      }
    }
  }
}

uint64_t _LSPluginUnregister(void *a1, int a2)
{
  v3 = a1;
  v4 = _LSGetPlugin(v3, a2);
  v5 = *(v4 + 172);
  v6 = *(v4 + 224);
  [(_LSDatabase *)v3 store];
  v7 = _CSStringCopyCFString();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = _LSBundleGet(v3, v6);
  if (v9)
  {
    v10 = *(v9 + 480);
    if (v10)
    {
      [(_LSDatabase *)v3 store];
      v13[5] = MEMORY[0x1E69E9820];
      v13[6] = 3221225472;
      v13[7] = ___LSPluginUnregister_block_invoke;
      v13[8] = &unk_1E6A1A7B8;
      v15 = a2;
      v14 = v3;
      v16 = v10;
      v17 = v6;
      _CSArrayEnumerateAllValues();
    }
  }

  if (v7)
  {
    if (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
    {
      v11 = _LSGetPluginNotificationAndIconCacheQueue();
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___LSPluginUnregister_block_invoke_2;
      v13[3] = &__block_descriptor_40_e5_v8__0l;
      v13[4] = v7;
      dispatch_async(v11, v13);
    }

    else
    {
      CFRelease(v7);
    }
  }

  LSPluginAddInfoToPayloadDict(v3, Mutable, a2, 0, 0);
  _LSPluginRemove(v3, a2);
  if (Mutable)
  {
    LSPluginSendNotification(v3, @"com.apple.LaunchServices.pluginsunregistered", Mutable);
    CFRelease(Mutable);
  }

  return 0;
}

void _LSPluginGetVisualizationFunctions(unsigned int *(**a1)(void **this, LSContext *a2, int a3)@<X8>)
{
  *a1 = LaunchServices::Plugins::getSummary;
  a1[1] = LaunchServices::Plugins::display;
  a1[2] = 0;
}

unsigned int *LaunchServices::Plugins::getSummary(void **this, LSContext *a2, int a3)
{
  v4 = _LSGetPlugin(*this, a3);
  if (v4)
  {
    v5 = v4;
    v6 = LaunchServices::LocalizedString::Get(*this, v4[26]);
    if (!v6 || (LaunchServices::LocalizedString::localizeUnsafely(v6, *this, 0), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v7 = v5[43];
      [(_LSDatabase *)*this store];
      v4 = _CSStringCopyCFString();
      if (!v4)
      {
        v4 = _LSAliasGetPath(*this, *v5);
      }
    }
  }

  return v4;
}

BOOL LaunchServices::Plugins::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = _LSGetPlugin(*this, a3);
  if (v8)
  {
    v9 = *this;
    v35 = 0;
    IsValid = _LSPluginIsValid(v9, a3, v8, 0, 0, &v35);
    v11 = v35;
    if (!IsValid)
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = ___ZN14LaunchServices7PluginsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke;
      v32[3] = &unk_1E6A1ABE8;
      v33 = v7;
      v34 = v11;
      [v33 withWarningColors:v32];
    }

    v12 = [v7 link:*(-[_LSDatabase schema](*this) + 1580) unit:v8[1]];
    [v7 write:@"container" string:v12];

    v13 = v8[1];
    v14 = _LSContainerGet(*this);
    v15 = v14;
    if (v14)
    {
      v16 = _LSContainerStateGetDescription(*(v14 + 2));
      [v7 write:@"mount state" string:v16];
      [v7 write:@"isOnRootVolume" BOOL:(*v15 >> 1) & 1];
      [v7 write:@"isSystemManaged" BOOL:(*v15 >> 4) & 1];
    }

    [v7 write:@"Mach-O UUIDs" arrayStringID:v8[23]];
    [v7 write:@"Platform" platform:v8[5]];
    _LSSliceMaskWriteDescription(v7, *(v8 + 78));
    _LSBundleBaseFlagsWriteDescription(v7, *(v8 + 164));
    [v7 write:@"identifier" stringID:v8[43]];
    [v7 write:@"bundleID" stringID:v8[3]];
    [v7 write:@"effectiveID" stringID:v8[44]];
    [v7 write:@"teamID" stringID:v8[4]];
    [v7 write:@"name" stringID:v8[25]];
    [v7 write:@"displayName" stringID:v8[27]];
    [v7 childUnit:@"localizedNames" table:*(-[_LSDatabase schema](*this) + 1604) unit:v8[28]];
    [v7 childUnit:@"localizedShortNames" table:*(-[_LSDatabase schema](*this) + 1604) unit:v8[26]];
    [v7 childUnit:@"localizedMicrophoneUsage" table:*(-[_LSDatabase schema](*this) + 1604) unit:v8[29]];
    v17 = [v7 link:*(-[_LSDatabase schema](*this) + 4) unit:v8[56]];
    [v7 write:@"parent" string:v17];

    v18 = [v7 link:*(-[_LSDatabase schema](*this) + 1584) unit:*v8];
    [v7 write:@"path" string:v18];

    [v7 write:@"directory" directoryClass:*(v8 + 148)];
    v19 = [v7 link:*(-[_LSDatabase schema](*this) + 1584) unit:v8[24]];
    [v7 write:@"dataContainer" string:v19];

    v31 = 0;
    v30 = 0;
    _LSExtensionPointFindWithStringID(*this, v8[45], v8[5], 0, &v31, &v30);
    v20 = [(_LSDatabase *)*this schema];
    v21 = [v7 link:*(v20 + 1592) unit:v31];
    [v7 write:@"extension point ID" string:v21];

    [v7 write:@"raw extension point ID" stringID:v8[45]];
    [v7 write:@"extension point name" stringID:v8[46]];
    v22 = *(v8 + 11);
    v36 = *(v8 + 7);
    v37 = v22;
    [v7 write:@"version" version:&v36];
    v23 = *(v8 + 19);
    v36 = *(v8 + 15);
    v37 = v23;
    [v7 write:@"sdkVersion" version:&v36];
    [v7 write:@"UUID" stringID:v8[55]];
    [v7 write:@"CodeInfoID" stringID:v8[31]];
    [v7 write:@"signerOrg" stringID:v8[32]];
    [v7 write:@"signer identity" stringID:v8[33]];
    v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8[40]];
    [v7 write:@"code signature version" number:v24];

    v25 = v7;
    [v25 beginFlags:@"flags" flags:v8[42]];
    [v25 flag:2 name:@"is-in-framework" color:255];
    [v25 flag:4 name:@"is-override"];
    [v25 flag:8 name:@"has-override"];
    [v25 flag:16 name:@"app-protection-optout"];
    [v25 flag:32 name:@"is-legacy-plugin"];
    [v25 endFlags];

    if (*(v8 + 149))
    {
      v26 = _LSProfileValidationStateGetVisualizationDescription(*(v8 + 149));
      [v25 write:@"validation" string:v26];
    }

    [v25 write:@"reg date" interval:v8[6]];
    [v25 write:@"appProtectionEffectiveContainer" stringID:v8[57]];
    if (v8[35])
    {
      [v25 childUnit:@"entitlements" table:*(-[_LSDatabase schema](*this) + 1600) unit:v8[35]];
    }

    if (v8[36])
    {
      [v25 childUnit:@"grpContainers" table:*(-[_LSDatabase schema](*this) + 1600) unit:v8[36]];
    }

    if (v8[34])
    {
      [v25 childUnit:@"PKDict" table:*(-[_LSDatabase schema](*this) + 1600) unit:v8[34]];
    }

    if (v8[45])
    {
      if (v31)
      {
        v27 = [(_LSDatabase *)*this schema];
        [v25 childUnit:@"SDKData" table:*(v27 + 1600) unit:*(v30 + 48)];
      }

      else
      {
        [v25 write:@"SDKData" string:&stru_1EEF65710];
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

void sub_18175C4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_18175C8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  LaunchServices::BindingEvaluator::~BindingEvaluator(&a12);

  if (a56 == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator(&a34);
  }

  _Unwind_Resume(a1);
}

void sub_18175CD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_18175D2E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18175DEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a20;
  std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&__p);
  LaunchServices::BindingEvaluator::~BindingEvaluator(v20);
  _Unwind_Resume(a1);
}

void LaunchServices::ClaimBindingConfiguration::FilterStack::addFilter(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 copy];
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v9 >= v8)
  {
    v11 = (v9 - *a1) >> 4;
    if ((v11 + 1) >> 60)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v12 = v8 - *a1;
    v13 = v12 >> 3;
    if (v12 >> 3 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v16[4] = a1;
    if (v14)
    {
      std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::allocate_at_least[abi:nn200100](a1, v14);
    }

    v15 = (16 * v11);
    v16[0] = 0;
    v16[1] = v15;
    v16[3] = 0;
    *v15 = v7;
    v15[1] = v5;
    v16[2] = v15 + 2;
    std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__swap_out_circular_buffer(a1, v16);
    v10 = *(a1 + 8);
    std::__split_buffer<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::~__split_buffer(v16);
  }

  else
  {
    *v9 = v7;
    v9[1] = v5;
    v10 = v9 + 2;
  }

  *(a1 + 8) = v10;
}

id LaunchServices::ClaimBindingConfiguration::FilterStack::buildDescription(LaunchServices::ClaimBindingConfiguration::FilterStack *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this == v2)
  {
LABEL_5:
    v4 = 0;
  }

  else
  {
    v3 = *this;
    while (!*(v3 + 8))
    {
      v3 += 16;
      if (v3 == v2)
      {
        goto LABEL_5;
      }
    }

    v5 = 0;
    do
    {
      v6 = MEMORY[0x1865D71B0](*v1);
      v7 = *(v1 + 8);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = @"(no filter description)";
      }

      v10 = v9;
      v11 = v10;
      if (v5)
      {
        [v5 appendFormat:@", then %@", v10];
      }

      else
      {
        v5 = [(__CFString *)v10 mutableCopy];
      }

      v1 += 16;
    }

    while (v1 != v2);
    v4 = [v5 copy];
  }

  return v4;
}

void std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__swap_out_circular_buffer(void ***a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = (v4 + *a1 - v6);
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v7;
    do
    {
      v10 = *v8;
      *v8 = 0;
      v8[1] = 0;
      v8 += 2;
      *v9++ = v10;
    }

    while (v8 != v6);
  }

  std::__allocator_destroy[abi:nn200100]<std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>(a1, v5, v6);
  a2[1] = v7;
  v11 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocator_destroy[abi:nn200100]<std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 2;
    }

    while (v4 != a3);
  }
}

uint64_t std::__split_buffer<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }
}

uint64_t ___ZNK14LaunchServices25ClaimBindingConfiguration11FilterStack11buildFilterEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 1;
  }

  do
  {
    v8 = MEMORY[0x1865D71B0](*v4);
    v9 = *(v4 + 8);
    v10 = v8[2](v8, a2, a3);

    v4 += 16;
    if (v4 == v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  while ((v11 & 1) != 0);
  return v10;
}

uint64_t __copy_helper_block_ea8_32c141_ZTSNSt3__110shared_ptrINS_6vectorINS_4pairIU8__strongU13block_pointerFbP9LSContextRK9LSBindingEU8__strongP8NSStringEENS_9allocatorISE_EEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c141_ZTSNSt3__110shared_ptrINS_6vectorINS_4pairIU8__strongU13block_pointerFbP9LSContextRK9LSBindingEU8__strongP8NSStringEENS_9allocatorISE_EEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__shared_ptr_emplace<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>>::__shared_ptr_emplace[abi:nn200100]<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>> const&,std::allocator<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>>,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_1EEF63C30;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>(a1 + 24, *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EEF63C30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865D6250);
}

uint64_t std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = MEMORY[0x1865D71B0](*v6);
      a4[1] = *(v6 + 8);
      v6 += 16;
      a4 += 2;
    }

    while (v6 != a3);
  }

  return a4;
}

void std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {

    v4 = *(i - 16);
  }

  a1[1] = v2;
}

void sub_18175F9A0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1817603FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

id LaunchServices::LSStatePlist::loadIfNeeded(void *a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = (a1 + 6);
  v4 = a1[6];
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*a1 options:0 error:a3];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:a3];
      if (v8)
      {
        if (std::function<BOOL ()(objc_object *)>::operator()((a1 + 2), v8))
        {
          objc_storeStrong(v5, v8);
        }

        else if (a3)
        {
          v12 = *MEMORY[0x1E696A278];
          v13[0] = @"parsed plist failed validation";
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
          *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, v9, "loadIfNeeded", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSStatePlist.mm", 22);
        }
      }
    }

    v4 = *v5;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t std::function<BOOL ()(objc_object *)>::operator()(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v6);
  }

  v4 = (*(*v3 + 48))(v3, &v7);

  return v4;
}

id LaunchServices::LSStatePlist::saveToDisk(uint64_t a1)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v25 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:&v25];
  v4 = v25;
  if (v3)
  {
    v5 = [*a1 URLByAppendingPathExtension:@".safesave"];
    v6 = v5;
    v7 = open_dprotected_np([v5 fileSystemRepresentation], 513, 4, 0, 484);
    if ((v7 & 0x80000000) != 0)
    {
      v19 = *__error();
      v26 = *MEMORY[0x1E696A278];
      v27 = @"open_dprotected_np failed";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
      v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], v19, v8, "saveToDisk", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSStatePlist.mm", 57);

      v4 = v20;
      goto LABEL_9;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v7 closeOnDealloc:1];
    v24 = 0;
    v9 = [v8 writeData:v3 error:&v24];
    v10 = v24;

    if (v9)
    {
      v23 = 0;
      v11 = [v8 closeAndReturnError:&v23];
      v4 = v23;

      if (!v11)
      {
LABEL_9:

        goto LABEL_10;
      }

      v12 = v5;
      v13 = [v5 fileSystemRepresentation];
      v14 = [*a1 fileSystemRepresentation];
      rename(v13, v14, v15);
      if (!v16)
      {
        *(a1 + 60) = 0;
        goto LABEL_9;
      }

      v17 = *__error();
      v28 = *MEMORY[0x1E696A278];
      v29[0] = @"rename failed";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], v17, v18, "saveToDisk", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSStatePlist.mm", 52);
    }

    v4 = v10;
    goto LABEL_9;
  }

LABEL_10:

  v21 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1817609E8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id LaunchServices::LSStatePlist::read(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 8));
  v5 = LaunchServices::LSStatePlist::loadIfNeeded(a1, v4, a2);
  os_unfair_lock_unlock((a1 + 8));

  return v5;
}

id LaunchServices::LSStatePlist::modify(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 8));
  v13 = 0;
  v5 = LaunchServices::LSStatePlist::loadIfNeeded(a1, v4, &v13);
  v6 = v13;
  v7 = std::function<objc_object * ()(objc_object *,NSError *)>::operator()(a2, v5, v6);
  v8 = v7;
  if (v5 && !v7)
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LaunchServices::LSStatePlist::modify(v9);
    }

    v10 = 0;
    v11 = *(a1 + 48);
    *(a1 + 48) = 0;
LABEL_6:

    goto LABEL_11;
  }

  objc_storeStrong((a1 + 48), v7);
  if (!v8 || ([v5 isEqual:v8] & 1) != 0 || (*(a1 + 60) = 1, *(a1 + 56)))
  {
    v10 = 0;
  }

  else
  {
    v10 = LaunchServices::LSStatePlist::saveToDisk(a1);
    if (v10)
    {
      v11 = _LSDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LaunchServices::LSStatePlist::modify(v10, v11);
      }

      goto LABEL_6;
    }
  }

LABEL_11:

  os_unfair_lock_unlock((a1 + 8));

  return v10;
}

void sub_181760C10(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 2);

  _Unwind_Resume(a1);
}

id std::function<objc_object * ()(objc_object *,NSError *)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v9 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v8);
  }

  v6 = (*(*v5 + 48))(v5, &v10, &v9);

  return v6;
}

id LaunchServices::LSStatePlist::save(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  if (LOBYTE(this[15]._os_unfair_lock_opaque) == 1)
  {
    v2 = LaunchServices::LSStatePlist::saveToDisk(this);
    if (v2)
    {
      v3 = _LSDefaultLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        LaunchServices::LSStatePlist::save(this, v2, v3);
      }
    }
  }

  else
  {
    v2 = 0;
  }

  os_unfair_lock_unlock(this + 2);

  return v2;
}

void sub_181760DC0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 2);

  _Unwind_Resume(a1);
}

void sub_18176106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817613FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181761624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181763100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t initIMMessagePayloadProviderExtensionPointName()
{
  v0 = IMSharedUtilitiesLibrary_frameworkLibrary;
  if (!IMSharedUtilitiesLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/IMSharedUtilities.framework/IMSharedUtilities", 2);
    IMSharedUtilitiesLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "IMMessagePayloadProviderExtensionPointName");
  constantIMMessagePayloadProviderExtensionPointName = result;
  getIMMessagePayloadProviderExtensionPointName[0] = IMMessagePayloadProviderExtensionPointNameFunction;
  return result;
}

id init_ISIconDataForResourceProxy_0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IconServicesLibrary_frameworkLibrary_2;
  if (!IconServicesLibrary_frameworkLibrary_2)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary_2 = v6;
  }

  softLink_ISIconDataForResourceProxy_0[0] = dlsym(v6, "_ISIconDataForResourceProxy");
  v7 = (softLink_ISIconDataForResourceProxy_0[0])(v5, a2, a3);

  return v7;
}

void sub_181763FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

void sub_181764B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  _Block_object_dispose((v16 - 48), 8);

  _Unwind_Resume(a1);
}

void sub_181764F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181765128(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_18176567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose((v36 - 168), 8);
  _Block_object_dispose((v36 - 136), 8);

  _Unwind_Resume(a1);
}

void ___ZL39getkMISMinSupportedSignatureVersion_ptrv_block_invoke()
{
  v0 = misLibrary(void)::libLibrary;
  if (misLibrary(void)::libLibrary || (v0 = dlopen("/usr/lib/libmis.dylib", 2), (misLibrary(void)::libLibrary = v0) != 0))
  {
    getkMISMinSupportedSignatureVersion_ptr(void)::ptr = dlsym(v0, "kMISMinSupportedSignatureVersion");
    if (getkMISMinSupportedSignatureVersion_ptr(void)::ptr)
    {
      return;
    }

    v1 = dlerror();
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      ___ZL39getkMISMinSupportedSignatureVersion_ptrv_block_invoke_cold_1(v1, v2);
    }
  }

  else
  {
    v3 = dlerror();
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      ___ZL39getkMISMinSupportedSignatureVersion_ptrv_block_invoke_cold_2(v3, v2);
    }
  }
}

void sub_181766714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

uint64_t LSHandlerPref::Add(void *a1, int a2, int a3)
{
  v5 = a1;
  [(_LSDatabase *)v5 store];
  v6 = *([(_LSDatabase *)v5 schema]+ 1576);
  v7 = CSStoreAllocUnit();
  if (v7)
  {
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v12[2] = a2;
    v12[3] = *([(_LSDatabase *)v5 schema]+ 104 * a3 + 216);
    v15 = 0;
    v13 = 0;
    v14 = 0;
    for (i = 10; i != 58; i += 8)
    {
      v9 = &v12[i];
      *v9 = kLSVersionNumberNull;
      v9[1] = unk_1817E90C0;
    }

    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v5 schema];
    v12[0] = CSBindableKeyMapNextKey();
    v12[1] = 1;
    Current = CFAbsoluteTimeGetCurrent();
    [(_LSDatabase *)v5 store];
    _CSStringRetain();
    [(_LSDatabase *)v5 store];
    _CSStringRetain();
    [(_LSDatabase *)v5 store];
    v10 = *([(_LSDatabase *)v5 schema]+ 1576);
    _CSStoreWriteToUnit();
    _LSBindableActivate(v5, v7 | 1);
  }

  return v7;
}

void LSHandlerPref::Remove(LSHandlerPref *this, _LSDatabase *a2)
{
  v12 = this;
  if (v12 && a2 && [(_LSDatabase *)v12 store])
  {
    v3 = LSHandlerPref::Get(v12, a2);
    [(_LSDatabase *)v12 store];
    [(_LSDatabase *)v12 schema];
    v4 = *v3;
    CSMapRemoveValue();
    if (_LSDatabaseFindBindingMapIndex(v12, v3[3]) != -1)
    {
      v5 = v3[2];
      _LSBindableDeactivate(v12, a2 | 1);
    }

    v6 = v3[2];
    [(_LSDatabase *)v12 store];
    _CSStringRelease();
    v7 = v3[3];
    [(_LSDatabase *)v12 store];
    _CSStringRelease();
    v8 = 0;
    v9 = v3 + 4;
    do
    {
      v10 = v9[v8];
      [(_LSDatabase *)v12 store];
      _CSStringRelease();
      ++v8;
    }

    while (v8 != 6);
    v11 = *([(_LSDatabase *)v12 schema]+ 1576);
    CSStoreFreeUnit();
  }
}

uint64_t LSHandlerPref::Get(LSHandlerPref *this, _LSDatabase *a2)
{
  v2 = a2;
  v3 = this;
  v4 = v3;
  Unit = 0;
  if (v3 && v2)
  {
    [(_LSDatabase *)v3 store];
    v6 = *([(_LSDatabase *)v4 schema]+ 1576);
    Unit = CSStoreGetUnit();
  }

  return Unit;
}

void LSHandlerPref::UpdateBindingGenerationForTag(void *a1)
{
  v1 = a1;
  [(_LSDatabase *)v1 store];
  CSStoreGetGeneration();
  v2 = v1;
  _LSDatabaseEnumeratingBindingMap(v2);
}

void LSHandlerPref::SetRoleHandlerForTag(void *a1, int a2, int a3, unsigned int a4, int a5, __int128 *a6)
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v15 = 0;
  LSHandlerPref::GetOrAddHandlerPref(v11, a2, a3, 1, &v15);
  v12 = a6[1];
  v16[0] = *a6;
  v16[1] = v12;
  LSHandlerPref::SetRoleHandler(v11, v15, a4, a5, v16, v13);
  LSHandlerPref::UpdateBindingGenerationForTag(v11);

  v14 = *MEMORY[0x1E69E9840];
}

void LSHandlerPref::SetRoleHandler(LSHandlerPref *this, _LSDatabase *a2, unsigned int a3, int a4, __int128 *a5, LSVersionNumber *a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = this;
  v11 = v10;
  if (v10)
  {
    if (a2)
    {
      v12 = LSHandlerPref::Get(v10, a2);
      if (v12)
      {
        v13 = *v12;
        v14 = v12[2];
        v49[1] = v12[1];
        v50 = v14;
        v49[0] = v13;
        v15 = v12[3];
        v16 = v12[4];
        v17 = v12[6];
        v53 = v12[5];
        v54 = v17;
        v51 = v15;
        v52 = v16;
        v18 = v12[7];
        v19 = v12[8];
        v20 = v12[10];
        v57 = v12[9];
        v58 = v20;
        v55 = v18;
        v56 = v19;
        v21 = v12[11];
        v22 = v12[12];
        v23 = v12[13];
        *&v60[28] = *(v12 + 220);
        *v60 = v22;
        *&v60[16] = v23;
        v59 = v21;
        if (a3 != -1)
        {
          v24 = 8;
          v25 = 168;
          while (1)
          {
            if ((a3 >> (v24 - 4)))
            {
              v26 = *(v49 + v24);
              if (a4)
              {
                if (v26)
                {
                  if (a4 == v26)
                  {
                    v27 = a5[1];
                    v63 = *a5;
                    v64 = v27;
                    v28 = *(&v49[1] + v25);
                    v61 = *(v49 + v25);
                    v62 = v28;
                    if (!_LSVersionNumberCompare(&v63, &v61))
                    {
                      goto LABEL_21;
                    }
                  }

                  if (a4 == DWORD1(v50))
                  {
                    a4 = 0;
                    *a5 = kLSVersionNumberNull;
                    a5[1] = unk_1817E90C0;
                  }

                  v29 = v11;
                  [(_LSDatabase *)v11 store];
                  _CSStringRelease();
                  v30 = v11;
                  [(_LSDatabase *)v11 store];
                  _CSStringRetain();
                }

                else
                {
                  if (a4 == DWORD1(v50))
                  {
                    v35 = a5[1];
                    v63 = *a5;
                    v64 = v35;
                    v36 = *(&v49[1] + v25);
                    v61 = *(v49 + v25);
                    v62 = v36;
                    if (!_LSVersionNumberCompare(&v63, &v61))
                    {
                      goto LABEL_21;
                    }
                  }

                  v37 = v11;
                  [(_LSDatabase *)v11 store];
                  _CSStringRetain();
                }

                *(v49 + v24) = a4;
                v32 = (v49 + v25);
                v33 = *a5;
                v34 = a5[1];
              }

              else
              {
                if (!v26)
                {
                  a4 = 0;
                  goto LABEL_21;
                }

                v31 = v11;
                [(_LSDatabase *)v11 store];
                _CSStringRelease();
                a4 = 0;
                *(v49 + v24) = 0;
                v32 = (v49 + v25);
                v33 = kLSVersionNumberNull;
                v34 = unk_1817E90C0;
              }

              *v32 = v33;
              v32[1] = v34;
            }

LABEL_21:
            --v24;
            v25 -= 32;
            if (v24 == 3)
            {
              goto LABEL_31;
            }
          }
        }

        for (i = 0; i != -10; i -= 2)
        {
          if (*(&v49[2] + i * 2))
          {
            [(_LSDatabase *)v11 store];
            _CSStringRelease();
            *(&v49[2] + i * 2) = 0;
            v39 = &v49[i];
            *(v39 + 168) = kLSVersionNumberNull;
            *(v39 + 184) = unk_1817E90C0;
          }
        }

        if (DWORD1(v50) != a4 || (v63 = *&v60[8], v64 = *&v60[24], v40 = a5[1], v61 = *a5, v62 = v40, _LSVersionNumberCompare(&v63, &v61)))
        {
          v41 = v11;
          [(_LSDatabase *)v11 store];
          _CSStringRelease();
          v42 = v11;
          [(_LSDatabase *)v11 store];
          _CSStringRetain();
          DWORD1(v50) = a4;
          v43 = a5[1];
          *&v60[8] = *a5;
          *&v60[24] = v43;
        }

LABEL_31:
        v44 = v11;
        [(_LSDatabase *)v11 store];
        DWORD1(v49[0]) = CSStoreGetGeneration() + 1;
        *&v60[40] = CFAbsoluteTimeGetCurrent();
        v45 = v11;
        [(_LSDatabase *)v11 store];
        v46 = v11;
        v47 = *([(_LSDatabase *)v11 schema]+ 1576);
        _CSStoreWriteToUnit();
      }
    }
  }

  v48 = *MEMORY[0x1E69E9840];
}

void LSHandlerPref::RemoveHandlersForTag(void *a1, int a2, int a3)
{
  *&v8[44] = *MEMORY[0x1E69E9840];
  v5 = a1;
  *v8 = 0;
  if (LSHandlerPref::GetOrAddHandlerPref(v5, a2, a3, 0, v8))
  {
    memset(&v8[4], 0, 32);
    LSHandlerPref::SetRoleHandler(v5, *v8, 0xFFFFFFFF, 0, &v8[4], v6);
    LSHandlerPref::UpdateBindingGenerationForTag(v5);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void LSHandlerPref::RemoveRoleHandlerForTag(void *a1, int a2, int a3, unsigned int a4)
{
  v7 = a1;
  v29 = 0;
  if (LSHandlerPref::GetOrAddHandlerPref(v7, a2, a3, 0, &v29))
  {
    v8 = LSHandlerPref::Get(v7, v29);
    if (v8)
    {
      v9 = *v8;
      v10 = *(v8 + 32);
      v26[1] = *(v8 + 16);
      v26[2] = v10;
      v26[0] = v9;
      v11 = *(v8 + 48);
      v12 = *(v8 + 64);
      v13 = *(v8 + 96);
      v26[5] = *(v8 + 80);
      v26[6] = v13;
      v26[3] = v11;
      v26[4] = v12;
      v14 = *(v8 + 112);
      v15 = *(v8 + 128);
      v16 = *(v8 + 160);
      v26[9] = *(v8 + 144);
      v26[10] = v16;
      v26[7] = v14;
      v26[8] = v15;
      v17 = *(v8 + 176);
      v18 = *(v8 + 192);
      v19 = *(v8 + 208);
      v27 = *(v8 + 224);
      v26[12] = v18;
      v26[13] = v19;
      v26[11] = v17;
      v20 = 8;
      v21 = 168;
      do
      {
        if ((a4 >> (v20 - 4)))
        {
          *(v26 + v20) = 0;
          v22 = (v26 + v21);
          *v22 = kLSVersionNumberNull;
          v22[1] = unk_1817E90C0;
        }

        --v20;
        v21 -= 32;
      }

      while (v20 != 3);
      Current = CFAbsoluteTimeGetCurrent();
      v23 = 1;
      for (i = 32; i != 12; i -= 4)
      {
        if (*(v26 + i))
        {
          v23 = 0;
        }
      }

      if (v23)
      {
        LSHandlerPref::Remove(v7, v29);
      }

      else
      {
        [(_LSDatabase *)v7 store];
        v25 = *([(_LSDatabase *)v7 schema]+ 1576);
        if (_CSStoreWriteToUnit())
        {
          LSHandlerPref::UpdateBindingGenerationForTag(v7);
        }
      }
    }
  }
}

void LSHandlerPref::RemoveRoleHandlersMatchingBundleID(LSHandlerPref *this, _LSDatabase *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = this;
  v18 = 0;
  v19 = &v18;
  v20 = 0x4812000000;
  v21 = __Block_byref_object_copy__42;
  v22 = __Block_byref_object_dispose__42;
  v23 = &unk_1818533FF;
  v25 = 0;
  v26 = 0;
  __p = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v3 = v2;
  [(_LSDatabase *)v2 store];
  v4 = v2;
  v5 = *([(_LSDatabase *)v2 schema]+ 1576);
  v6 = v2;
  _CSStoreEnumerateUnits();
  if (*(v15 + 6))
  {
    do
    {
      v8 = v6;
      [(_LSDatabase *)v6 store];
      _CSStringRelease();
      v9 = *(v15 + 6) - 1;
      *(v15 + 6) = v9;
    }

    while (v9);
  }

  v10 = v19[6];
  for (i = v19[7]; v10 != i; ++v10)
  {
    v12 = *v10;
    memset(v27, 0, sizeof(v27));
    LSHandlerPref::SetRoleHandler(v6, v12, 0xFFFFFFFF, 0, v27, v7);
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_181767898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN13LSHandlerPref34RemoveRoleHandlersMatchingBundleIDEP11_LSDatabasej_block_invoke(uint64_t a1, int a2, __int128 *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = a3[13];
  v36[10] = a3[12];
  v37[0] = v8;
  *(v37 + 12) = *(a3 + 220);
  v9 = a3[9];
  v36[6] = a3[8];
  v36[7] = v9;
  v10 = a3[11];
  v36[8] = a3[10];
  v36[9] = v10;
  v11 = a3[5];
  v36[2] = a3[4];
  v36[3] = v11;
  v12 = a3[7];
  v36[4] = a3[6];
  v36[5] = v12;
  v34 = *a3;
  v35 = a3[1];
  v13 = a3[3];
  v36[0] = a3[2];
  v36[1] = v13;
  while (1)
  {
    v14 = *(a1 + 56);
    v15 = &v36[-1] + v5;
    if (v14 != *v15)
    {
      break;
    }

LABEL_6:
    ++*(*(*(a1 + 40) + 8) + 24);
    *v15 = 0;
    v17 = (&v36[2 * v5] + 8);
    *v17 = kLSVersionNumberNull;
    v17[1] = unk_1817E90C0;
    ++v5;
    v6 = 1;
    if (v5 == 6)
    {
      if ((v7 & 1) == 0)
      {
        v18 = *(*(a1 + 48) + 8);
        v20 = v18[7];
        v19 = v18[8];
        if (v20 >= v19)
        {
          v23 = v18[6];
          v24 = v20 - v23;
          v25 = (v20 - v23) >> 2;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
          }

          v27 = v19 - v23;
          if (v27 >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
          v29 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v28)
          {
            v29 = v26;
          }

          if (v29)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:nn200100]((v18 + 6), v29);
          }

          v30 = (v20 - v23) >> 2;
          v31 = (4 * v25);
          v32 = (4 * v25 - 4 * v30);
          *v31 = a2;
          v21 = v31 + 1;
          memcpy(v32, v23, v24);
          v33 = v18[6];
          v18[6] = v32;
          v18[7] = v21;
          v18[8] = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v20 = a2;
          v21 = v20 + 4;
        }

        v18[7] = v21;
        return;
      }

LABEL_11:
      [(_LSDatabase *)*(a1 + 32) store];
      v22 = *([(_LSDatabase *)*(a1 + 32) schema]+ 1576);
      _CSStoreWriteToUnit();
      return;
    }
  }

  while (v5 != 5)
  {
    v16 = v15[1];
    ++v15;
    ++v5;
    if (v14 == v16)
    {
      v7 = 1;
      goto LABEL_6;
    }
  }

  if (v6)
  {
    goto LABEL_11;
  }
}

void LSHandlerPref::SetModificationDate(LSHandlerPref *this, _LSDatabase *a2, double a3)
{
  v4 = this;
  v5 = LSHandlerPref::Get(v4, a2);
  if (v5)
  {
    v8 = *(v5 + 16);
    v9 = *(v5 + 32);
    v7 = *v5;
    v12 = *(v5 + 80);
    v13 = *(v5 + 96);
    v10 = *(v5 + 48);
    v11 = *(v5 + 64);
    v16 = *(v5 + 144);
    v17 = *(v5 + 160);
    v14 = *(v5 + 112);
    v15 = *(v5 + 128);
    v21 = *(v5 + 224);
    v19 = *(v5 + 192);
    v20 = *(v5 + 208);
    v18 = *(v5 + 176);
    [(_LSDatabase *)v4 store];
    v6 = *([(_LSDatabase *)v4 schema]+ 1576);
    _CSStoreWriteToUnit();
  }
}

uint64_t LSHandlerPref::roleHandler(LSHandlerPref *this, unsigned int a2, LSVersionNumber *a3)
{
  if (a2 != -1 || (v4 = this + 36, !*(this + 9)))
  {
    v3 = (this + 168);
    v4 = this + 32;
    v5 = 5;
    while (((a2 >> (v5 - 1)) & 1) == 0 || !*v4)
    {
      v3 -= 2;
      v4 -= 4;
      if (!--v5)
      {
        if (a3)
        {
          v6 = *(this + 216);
          *a3->_opaque = *(this + 200);
          *&a3->_opaque[16] = v6;
        }

        v4 = this + 36;
        return *v4;
      }
    }

    if (!a3)
    {
      return *v4;
    }

    v7 = *v3;
    v8 = v3[1];
    goto LABEL_14;
  }

  if (a3)
  {
    v7 = *(this + 200);
    v8 = *(this + 216);
LABEL_14:
    *a3->_opaque = v7;
    *&a3->_opaque[16] = v8;
  }

  return *v4;
}

void LSHandlerPref::GetVisualizationFunctions(unsigned int *(**a1)(LSHandlerPref **this, LSContext *a2, _LSDatabase *a3)@<X8>)
{
  *a1 = LaunchServices::HandlerPrefs::getSummary;
  a1[1] = LaunchServices::HandlerPrefs::display;
  a1[2] = 0;
}

unsigned int *LaunchServices::HandlerPrefs::getSummary(LSHandlerPref **this, LSContext *a2, _LSDatabase *a3)
{
  v4 = LSHandlerPref::Get(*this, a3);
  if (v4)
  {
    v5 = v4[2];
    [(_LSDatabase *)*this store];
    v4 = _CSStringCopyCFString();
  }

  return v4;
}

BOOL LaunchServices::HandlerPrefs::display(LSHandlerPref **this, LSContext *a2, _LSDatabase *a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = LSHandlerPref::Get(*this, a3);
  if (!v8)
  {
    goto LABEL_28;
  }

  {
    LaunchServices::HandlerPrefs::display();
  }

  BindingMapIndex = _LSDatabaseFindBindingMapIndex(*this, *(v8 + 12));
  if (BindingMapIndex < 1)
  {
    if (!BindingMapIndex)
    {
      *v29._opaque = 0;
      _UTGetActiveTypeForIdentifier(*this, *(v8 + 8), &v29);
      v25 = [(_LSDatabase *)*this schema];
      v26 = [v7 link:*(v25 + 16) unit:*v29._opaque];
      [v7 write:@"unknown" string:v26];

      v27 = @"unknown";
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (BindingMapIndex > 4)
  {
LABEL_8:
    v10 = @"unknown";
    goto LABEL_9;
  }

  v10 = *(&LaunchServices::HandlerPrefs::display(LSContext *,unsigned int,unsigned int,CSStoreAttributedStringWriter *)::labels + BindingMapIndex);
LABEL_9:
  v11 = *(v8 + 8);
  v27 = v10;
  [v7 write:? stringID:?];
LABEL_10:
  v12 = *(v8 + 36);
  if (v12)
  {
LABEL_15:
    v15 = (v8 + 200);
  }

  else
  {
    v13 = -168;
    v14 = 32;
    while (1)
    {
      v12 = *(v8 + v14);
      if (v12)
      {
        break;
      }

      v13 += 32;
      v14 -= 4;
      if (v13 == -8)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v15 = (v8 - v13);
  }

  v16 = 0;
  v17 = v15[1];
  *v31._opaque = *v15;
  *&v31._opaque[16] = v17;
  do
  {
    v29 = *ymmword_1E6A1DA40;
    v30 = @"importer";
    memset(&v28, 0, sizeof(v28));
    v18 = LSHandlerPref::roleHandler(v8, 1 << v16, &v28);
    if (v18)
    {
      if (v18 != v12)
      {
        [v7 write:*&v29._opaque[8 * v16] stringID:v18];
        memset(&v33, 0, sizeof(v33));
        v32 = v28;
        if (_LSVersionNumberCompare(&v33, &v32))
        {
          v19 = [*&v29._opaque[8 * v16] stringByAppendingString:@" (bundle ver)"];
          v33 = v28;
          v20 = _LSVersionNumberGetStringRepresentation(&v33);
          [v7 write:v19 string:v20];
        }
      }
    }

    for (i = 32; i != -8; i -= 8)
    {
    }

    ++v16;
  }

  while (v16 != 5);
  if (v12)
  {
    [v7 write:@"all roles" stringID:v12];
    memset(&v29, 0, sizeof(v29));
    v33 = v31;
    if (_LSVersionNumberCompare(&v29, &v33))
    {
      v29 = v31;
      v22 = _LSVersionNumberGetStringRepresentation(&v29);
      [v7 write:@"all roles (bundle ver)" string:v22];
    }
  }

  [v7 write:@"mod date" interval:*(v8 + 232)];

LABEL_28:
  v23 = *MEMORY[0x1E69E9840];
  return v8 != 0;
}

void LSHandlerPref::RemoveAll(LSHandlerPref *this, _LSDatabase *a2)
{
  v2 = this;
  v6 = 0;
  v7 = &v6;
  v8 = 0x4812000000;
  v9 = __Block_byref_object_copy__42;
  v10 = __Block_byref_object_dispose__42;
  v11 = &unk_1818533FF;
  v13 = 0;
  v14 = 0;
  __p = 0;
  [(_LSDatabase *)v2 store];
  v3 = *([(_LSDatabase *)v2 schema]+ 1576);
  _CSStoreEnumerateUnits();
  v4 = v7[6];
  v5 = v7[7];
  while (v4 != v5)
  {
    LSHandlerPref::Remove(v2, *v4++);
  }

  _Block_object_dispose(&v6, 8);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_1817681EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN13LSHandlerPref9RemoveAllEP11_LSDatabase_block_invoke(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100]((v3 + 6), v13);
    }

    v14 = (v5 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = v3[6];
    v3[6] = v16;
    v3[7] = v6;
    v3[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 4;
  }

  v3[7] = v6;
}

uint64_t LSHandlerPref::CopyHandlers(LSHandlerPref *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN13LSHandlerPref12CopyHandlersEv_block_invoke;
  v6[3] = &unk_1E6A1D8E0;
  v6[4] = &v7;
  _LSWithSecurePreferences(v6);
  v1 = v8[3];
  if (!v1)
  {
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = _CFGetEUID();
      *buf = 67109120;
      v12 = v3;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Handler prefs NOT found, will use empty array; uid = %d\n", buf, 8u);
    }

    v1 = MEMORY[0x1E695E0F0];
    v8[3] = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v7, 8);
  v4 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_181768438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFArray *___ZN13LSHandlerPref12CopyHandlersEv_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v10 = *MEMORY[0x1E69E9840];
  result = CFDictionaryGetValue(theDict, @"LSHandlers");
  if (result)
  {
    v4 = result;
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = _CFGetEUID();
      Count = CFArrayGetCount(v4);
      ___ZN13LSHandlerPref12CopyHandlersEv_block_invoke_cold_1(v9, v6, Count, v5);
    }

    result = CFRetain(v4);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LSHandlerPref::ValidateHandler(LSHandlerPref *this, const __CFString *a2, LSContext *a3, const __CFString *a4, const __CFString *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = this;
  if (!UTTypeEqual(a2, @"public.url-scheme"))
  {
    goto LABEL_9;
  }

  v9 = 0;
  while (!CFEqual(LSHandlerPref::ValidateHandler(_LSDatabase *,__CFString const*,__CFString const*,__CFString const*)::OTPSchemes[v9], a3))
  {
    if (++v9 == 4)
    {
      goto LABEL_9;
    }
  }

  if (!a4 || !a3 || !CFEqual(a4, @"com.apple.Preferences"))
  {
LABEL_9:
    v10 = UTTypeEqual(a2, @"com.apple.uniform-type-identifier");
    v11 = 1;
    if (!a3 || !v10)
    {
      goto LABEL_16;
    }

    *v17 = v8;
    v13 = LaunchServices::BindingEvaluator::ContentTypeBindingAllowsOverride(v17, a3, v12);

    if (v13)
    {
      v11 = 1;
      goto LABEL_16;
    }
  }

  v14 = _LSDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 138543874;
    *&v17[4] = a4;
    v18 = 2114;
    v19 = a2;
    v20 = 2114;
    v21 = a3;
    _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "handler preference for %{public}@ for %{public}@ %{public}@ failed validation", v17, 0x20u);
  }

  v11 = 0;
LABEL_16:

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t LSHandlerPref::Load(LSHandlerPref *this, _LSDatabase *a2, const __CFArray *a3)
{
  v133 = *MEMORY[0x1E69E9840];
  v4 = this;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] array];
  v96 = a2;
  [(_LSDatabase *)v4 store];
  v7 = *([(_LSDatabase *)v4 schema]+ 1576);
  v115 = MEMORY[0x1E69E9820];
  v116 = 3221225472;
  v117 = ___ZN13LSHandlerPref4LoadEP11_LSDatabasePK9__CFArray_block_invoke;
  v118 = &unk_1E6A18FA0;
  v119 = v6;
  _CSStoreEnumerateUnits();
  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v8 = v119;
  v9 = [v8 countByEnumeratingWithState:&v111 objects:v131 count:16];
  if (v9)
  {
    v10 = *v112;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v112 != v10)
        {
          objc_enumerationMutation(v8);
        }

        LSHandlerPref::Remove(v4, [*(*(&v111 + 1) + 8 * i) unsignedLongLongValue]);
      }

      v9 = [v8 countByEnumeratingWithState:&v111 objects:v131 count:16];
    }

    while (v9);
  }

  v12 = v96;
  objc_autoreleasePoolPop(v5);
  if (v96)
  {
    v13 = CFGetTypeID(v96);
    if (v13 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v96);
      v15 = Count;
      if (Count >= 1)
      {
        v16 = 0;
        v97 = Count;
        do
        {
          v98 = v16;
          ValueAtIndex = CFArrayGetValueAtIndex(v12, v16);
          v18 = ValueAtIndex;
          v100[0] = 0;
          if (!ValueAtIndex)
          {
            goto LABEL_108;
          }

          v19 = CFGetTypeID(ValueAtIndex);
          if (v19 != CFDictionaryGetTypeID())
          {
            goto LABEL_108;
          }

          v99 = v4;
          if (CFDictionaryContainsKey(v18, @"LSHandlerURLScheme"))
          {
            TypeID = CFStringGetTypeID();
            Value = CFDictionaryGetValue(v18, @"LSHandlerURLScheme");
            v22 = Value;
            if (!Value)
            {
              goto LABEL_50;
            }

            v23 = CFGetTypeID(Value) == TypeID ? v22 : 0;
            v24 = @"public.url-scheme";
            if (!@"public.url-scheme")
            {
              goto LABEL_50;
            }
          }

          else if (CFDictionaryContainsKey(v18, @"LSHandlerContentType"))
          {
            v25 = CFStringGetTypeID();
            v26 = CFDictionaryGetValue(v18, @"LSHandlerContentType");
            v27 = v26;
            if (!v26)
            {
              goto LABEL_50;
            }

            v23 = CFGetTypeID(v26) == v25 ? v27 : 0;
            v24 = @"com.apple.uniform-type-identifier";
            if (!@"com.apple.uniform-type-identifier")
            {
              goto LABEL_50;
            }
          }

          else
          {
            v28 = CFStringGetTypeID();
            v29 = CFDictionaryGetValue(v18, @"LSHandlerContentTagClass");
            v30 = v29;
            if (v29)
            {
              if (CFGetTypeID(v29) == v28)
              {
                v24 = v30;
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              v24 = 0;
            }

            v31 = CFStringGetTypeID();
            v32 = CFDictionaryGetValue(v18, @"LSHandlerContentTag");
            v33 = v32;
            if (!v32)
            {
              goto LABEL_50;
            }

            v23 = CFGetTypeID(v32) == v31 ? v33 : 0;
            if (!v24)
            {
              goto LABEL_50;
            }
          }

          if (v23)
          {
            if (CFEqual(v24, @"com.apple.uniform-type-identifier"))
            {
              if (!LSDefaultAppCategoryGetInfoForTypeIdentifierOrSubordinateTypeIdentifier(v23))
              {
                v88 = CFNumberGetTypeID();
                v89 = CFDictionaryGetValue(v18, @"LSHandlerModificationDate");
                if (!v89 || CFGetTypeID(v89) != v88)
                {
                  v90 = _LSDefaultLog();
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
                  {
                    *valuePtr = 138412546;
                    *&valuePtr[4] = v24;
                    *&valuePtr[12] = 2112;
                    *&valuePtr[14] = v23;
                    _os_log_impl(&dword_18162D000, v90, OS_LOG_TYPE_DEFAULT, "discarding old handler preference for %@/%@ (no modification timestamp)", valuePtr, 0x16u);
                  }

                  goto LABEL_108;
                }
              }
            }

            v34 = 5u;
            do
            {
              v35 = kLSHandlerRoleKeys[v34];
              v36 = CFStringGetTypeID();
              v37 = CFDictionaryGetValue(v18, v35);
              v38 = v37;
              if (v37 && CFGetTypeID(v37) == v36)
              {
                v40 = LSHandlerPref::ValidateHandler(v99, v24, v23, v38, v39);
                if (!(v34 * 8))
                {
                  break;
                }
              }

              else
              {
                v40 = 1;
                if (!(v34 * 8))
                {
                  break;
                }
              }

              --v34;
            }

            while (v40);

            v15 = v97;
            if (!v40)
            {
              goto LABEL_108;
            }

            goto LABEL_51;
          }

LABEL_50:

LABEL_51:
          if (CFDictionaryContainsKey(v18, @"LSHandlerContentType"))
          {
            v41 = v99;
            v42 = CFStringGetTypeID();
            v43 = CFDictionaryGetValue(v18, @"LSHandlerContentType");
            v44 = v43;
            if (v43)
            {
              if (CFGetTypeID(v43) == v42)
              {
                LODWORD(v44) = _LSDatabaseCreateStringForCFString(v41, v44, 1);
                BindingMapIndex = 0;
LABEL_62:

                goto LABEL_63;
              }

              LODWORD(v44) = 0;
            }

            BindingMapIndex = -1;
            goto LABEL_62;
          }

          if (CFDictionaryContainsKey(v18, @"LSHandlerContentTag"))
          {
            v46 = CFStringGetTypeID();
            v47 = CFDictionaryGetValue(v18, @"LSHandlerContentTagClass");
            v48 = v47;
            if (v47)
            {
              if (CFGetTypeID(v47) == v46)
              {
                v49 = v48;
              }

              else
              {
                v49 = 0;
              }
            }

            else
            {
              v49 = 0;
            }

            StringForCFString = _LSDatabaseGetStringForCFString(v99, v49, 1);
            if (StringForCFString)
            {
              BindingMapIndex = _LSDatabaseFindBindingMapIndex(v99, StringForCFString);
              if (BindingMapIndex != -1)
              {
                v84 = CFStringGetTypeID();
                v85 = CFDictionaryGetValue(v18, @"LSHandlerContentTag");
                v86 = v85;
                if (v85)
                {
                  if (CFGetTypeID(v85) == v84)
                  {
                    v87 = v86;
                  }

                  else
                  {
                    v87 = 0;
                  }
                }

                else
                {
                  v87 = 0;
                }

                v92 = v99;
                v93 = [(_LSDatabase *)v99 schema];
                LODWORD(v44) = _LSDatabaseCreateStringForCFString(v99, v87, *(v93 + 104 * BindingMapIndex + 220));
                goto LABEL_63;
              }
            }
          }

          else if (CFDictionaryContainsKey(v18, @"LSHandlerURLScheme"))
          {
            v79 = CFStringGetTypeID();
            v80 = CFDictionaryGetValue(v18, @"LSHandlerURLScheme");
            v81 = v80;
            if (v80)
            {
              if (CFGetTypeID(v80) == v79)
              {
                v82 = v81;
              }

              else
              {
                v82 = 0;
              }
            }

            else
            {
              v82 = 0;
            }

            LODWORD(v44) = _LSDatabaseCreateStringForCFString(v99, v82, 1);
            BindingMapIndex = 5;
LABEL_63:
            if (v44)
            {
              LSHandlerPref::GetOrAddHandlerPref(v99, v44, BindingMapIndex, 1, v100);
              v50 = valuePtr;
              for (j = 7; j > 1; --j)
              {
                *v50 = kLSVersionNumberNull;
                v50[1] = unk_1817E90C0;
                v50 += 2;
              }

              if (BindingMapIndex == 5)
              {
                v52 = 5;
              }

              else
              {
                v52 = 0;
              }

              v53 = CFDictionaryGetValue(v18, @"LSHandlerPreferredVersions");
              v54 = v53;
              if (v53)
              {
                v55 = CFGetTypeID(v53);
                if (v55 == CFDictionaryGetTypeID())
                {
                  v56 = 0;
                  v57 = valuePtr;
                  do
                  {
                    v58 = CFDictionaryGetValue(v54, kLSHandlerRoleKeys[v56]);
                    v59 = v58;
                    if (v58)
                    {
                      v60 = CFGetTypeID(v58);
                      if (v60 == CFStringGetTypeID())
                      {
                        _LSGetVersionFromString(v59, v132);
                        v61 = v132[1];
                        *v57 = v132[0];
                        v57[1] = v61;
                      }
                    }

                    v57 += 2;
                    ++v56;
                  }

                  while (v56 != 6);
                }
              }

              v108 = v127;
              v109 = v128;
              v110[0] = v129;
              v110[1] = v130;
              v104 = v123;
              v105 = v124;
              v106 = v125;
              v107 = v126;
              *&v100[1] = *valuePtr;
              v101 = *&valuePtr[16];
              v62 = v110;
              v63 = 5;
              v102 = v121;
              v103 = v122;
              do
              {
                v64 = kLSHandlerRoleKeys[v63];
                v65 = CFStringGetTypeID();
                v66 = CFDictionaryGetValue(v18, v64);
                v67 = v66;
                if (v66 && CFGetTypeID(v66) == v65)
                {
                  v68 = _LSDatabaseCreateStringForCFString(v99, v67, 0);
                  if (v63 == 5)
                  {
                    v70 = -1;
                  }

                  else
                  {
                    v70 = 1 << v63;
                  }

                  v71 = v62[1];
                  *valuePtr = *v62;
                  *&valuePtr[16] = v71;
                  LSHandlerPref::SetRoleHandler(v99, v100[0], v70, v68, valuePtr, v69);
                }

                v62 -= 2;
              }

              while (v63-- > v52);
              v12 = v96;
              v15 = v97;
              v73 = CFNumberGetTypeID();
              v74 = CFDictionaryGetValue(v18, @"LSHandlerModificationDate");
              v75 = v74;
              if (v74 && CFGetTypeID(v74) == v73)
              {
                v76 = v100[0];
                *valuePtr = 0;
                v77 = CFNumberGetValue(v75, kCFNumberLongLongType, valuePtr);
                v78 = *valuePtr;
                if (!v77)
                {
                  v78 = 0.0;
                }
              }

              else
              {
                v78 = 0.0;
                v76 = v100[0];
              }

              LSHandlerPref::SetModificationDate(v99, v76, v78);
            }
          }

LABEL_108:
          v91 = v4;
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          v16 = v98 + 1;
        }

        while (v98 + 1 != v15);
      }
    }
  }

  v94 = *MEMORY[0x1E69E9840];
  return 0;
}