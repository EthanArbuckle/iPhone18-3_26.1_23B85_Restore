id getCSSearchableIndexClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCSSearchableIndexClass_softClass;
  v7 = getCSSearchableIndexClass_softClass;
  if (!getCSSearchableIndexClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCSSearchableIndexClass_block_invoke;
    v3[3] = &unk_1E72888B8;
    v3[4] = &v4;
    __getCSSearchableIndexClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18E992BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _INContainingBundleProxyWithBundleProxy(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleType];
  if (![v2 isEqualToString:*MEMORY[0x1E6963590]])
  {

    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v1)
  {
    v4 = [v1 containingBundle];

    goto LABEL_8;
  }

LABEL_7:
  v4 = v1;
LABEL_8:

  return v4;
}

uint64_t INBundleProxyCanDonateIntent(void *a1, void *a2)
{
  v3 = a2;
  v4 = _INContainingBundleProxyWithBundleProxy(a1);
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [INAppInfo appInfoWithAppProxy:v4];
    v6 = [v5 supportedActionsByExtensions];
    v7 = [v6 containsObject:v3];

    if (v7)
    {

LABEL_8:
      v8 = 1;
      goto LABEL_9;
    }

    v9 = [v4 if_userActivityTypes];
    v10 = [v9 containsObject:v3];

    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v4 = 0;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

uint64_t __INLogInitIfNeeded_block_invoke()
{
  INSiriLogContextIntents = os_log_create(INLogSiriSubsystem, INLogCategoryIntents);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t INThisProcessHasEntitlement(void *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    HasEntitlement = _INProcessHasEntitlement(v4, v3);
    CFRelease(v5);
    if ((HasEntitlement & 1) != 0 || !a2)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315138;
    v16 = "INThisProcessHasEntitlement";
    _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s SecTaskCreateFromSelf() failed, assuming this process is NOT entitled.", &v15, 0xCu);
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_12:
    HasEntitlement = 0;
    goto LABEL_13;
  }

  if (!a2)
  {
    goto LABEL_12;
  }

LABEL_7:
  v8 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v9 = _INContainingBundleProxyWithBundleProxy(v8);
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x1E695DFD8] setWithObject:v3];
    v12 = [v10 entitlementValuesForKeys:v11];

    HasEntitlement = [v12 BOOLForKey:v3];
  }

  else
  {
    HasEntitlement = 0;
  }

LABEL_13:
  v13 = *MEMORY[0x1E69E9840];
  return HasEntitlement;
}

id INIntentSchemaGetIntentDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    if ([v1 hasPrefix:@"IN"])
    {
      v2 = [v1 substringFromIndex:2];
      v3 = INIntentSchemaGetIntentDescriptionWithName(v2);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_18E993DEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t _INProcessHasEntitlement(__SecTask *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(a1, v3, &error);
  v5 = error;
  if (error)
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v13 = "_INProcessHasEntitlement";
      v14 = 2114;
      v15 = v5;
      _os_log_fault_impl(&dword_18E991000, v6, OS_LOG_TYPE_FAULT, "%s SecTaskCopyValueForEntitlement() failed with error %{public}@", buf, 0x16u);
      v5 = error;
    }

    CFRelease(v5);
  }

  if (v4 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "_INProcessHasEntitlement";
      v14 = 2114;
      v15 = v3;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Expected a Boolean value for the %{public}@ entitlement, but found something else.", buf, 0x16u);
    }

    v4 = 0;
  }

  v8 = [v4 BOOLValue];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_18E9940A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id INHelperServingXPCInterface()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0361998];
  [v0 setClass:objc_opt_class() forSelector:sel_loadDataImageForImage_scaledWidth_scaledHeight_usingPortableImageLoader_completion_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_loadDataImageForImage_scaledWidth_scaledHeight_usingPortableImageLoader_completion_ argumentIndex:0 ofReply:1];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_loadDataImageForImage_scaledWidth_scaledHeight_usingPortableImageLoader_completion_ argumentIndex:1 ofReply:0];

  [v0 setClass:objc_opt_class() forSelector:sel_storeImage_scaled_qualityOfService_storeType_completion_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_retrieveImageWithIdentifier_completion_ argumentIndex:0 ofReply:1];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v5, v6, v7, objc_opt_class(), 0}];
  [v0 setClasses:v8 forSelector:sel_loadSchemaURLsWithCompletion_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v9 setWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
  [v0 setClasses:v13 forSelector:sel_loadSchemaURLsForBundleIdentifiers_completion_ argumentIndex:0 ofReply:1];

  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = [v14 setWithObjects:{v15, v16, objc_opt_class(), 0}];
  [v0 setClasses:v17 forSelector:sel_loadBundleURLsForBundleIdentifiers_completion_ argumentIndex:0 ofReply:1];

  [v0 setClass:objc_opt_class() forSelector:sel_fetchShareExtensionIntentForExtensionContextUUID_completion_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_fetchShareExtensionIntentForExtensionContextUUID_completion_ argumentIndex:0 ofReply:1];
  [v0 setClass:objc_opt_class() forSelector:sel_storeUserContext_forBundleIdentifier_ argumentIndex:0 ofReply:0];
  [v0 setClass:objc_opt_class() forSelector:sel_filePathForImage_usingPortableImageLoader_completion_ argumentIndex:0 ofReply:0];
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v0 setClasses:v20 forSelector:sel_filePathForImage_usingPortableImageLoader_completion_ argumentIndex:1 ofReply:0];

  return v0;
}

void __INThisProcessIsSiri_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  INThisProcessIsSiri_isSiri = [v0 isEqualToString:@"com.apple.siri"];
}

void __INThisProcessIsCarousel_block_invoke()
{
  v1 = [MEMORY[0x1E696AAE8] mainBundle];
  v0 = [v1 bundleIdentifier];
  INThisProcessIsCarousel_isCarousel = [v0 isEqualToString:@"com.apple.Carousel"];
}

BOOL INDescriptorContainsBundleIdentifiers(void *a1)
{
  v1 = a1;
  v2 = [v1 bundleIdentifier];
  if ([v2 length])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v1 extensionBundleIdentifier];
    v3 = [v4 length] != 0;
  }

  return v3;
}

uint64_t __INThisProcessCanMapLSDatabase_block_invoke()
{
  INThisProcessCanMapLSDatabase_cache = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];

  return MEMORY[0x1EEE66BB8]();
}

void *INContainingAppProxyForCurrentProcess()
{
  v0 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  v1 = _INContainingBundleProxyWithBundleProxy(v0);

  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

id INApplicationBundleIdentifierFromBundleIdentifier(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v4 = 0;
    goto LABEL_43;
  }

  if (INApplicationBundleIdentifierFromBundleIdentifier_onceToken != -1)
  {
    dispatch_once(&INApplicationBundleIdentifierFromBundleIdentifier_onceToken, &__block_literal_global_257);
  }

  os_unfair_lock_lock(&INApplicationBundleIdentifierFromBundleIdentifier_lock);
  v2 = [INApplicationBundleIdentifierFromBundleIdentifier_resultsCache objectForKey:v1];
  v3 = v2;
  if (!v2)
  {
    v5 = v1;
    if (INThisProcessCanMapLSDatabase(0))
    {
      v6 = [objc_alloc(MEMORY[0x1E69635D0]) initWithBundleIdentifier:v5 error:0];
    }

    else
    {
      v7 = [MEMORY[0x1E6963620] bundleRecordForCurrentProcess];
      v8 = [v7 bundleIdentifier];
      v9 = [v5 isEqualToString:v8];

      if (v9)
      {
        v10 = v7;
        if (v10)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }

        v6 = v11;
      }

      else
      {
        v6 = 0;
      }
    }

    v12 = v5;
    v13 = v5;
    v25 = v6;
    v26 = v5;
    if (v6)
    {
      v14 = [v6 containingBundleRecord];
      if (v14)
      {
        objc_opt_class();
        v15 = (objc_opt_isKindOfClass() & 1) != 0 ? v14 : 0;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      v12 = [v16 bundleIdentifier];

      v13 = [v6 bundleIdentifier];

      if (!v13)
      {
        v21 = v5;
LABEL_35:
        if (v12)
        {
          v22 = v12;
        }

        else
        {
          v22 = v21;
        }

        v4 = v22;
        v23 = [INApplicationBundleIdentifierFromBundleIdentifier_resultsCache objectForKey:v4];

        if (!v23 && v4)
        {
          [INApplicationBundleIdentifierFromBundleIdentifier_resultsCache setObject:v4 forKey:v26];
        }

        goto LABEL_42;
      }
    }

    v17 = objc_alloc_init(INExecutionFrameworkMapper);
    v18 = [(INExecutionFrameworkMapper *)v17 launchableAppBundleIdentifierForSystemExtensionBundleIdentifier:v13];
    v19 = [(INExecutionFrameworkMapper *)v17 displayableAppBundleIdentifierForSystemExtensionBundleIdentifier:v13];
    if (v19 | v18)
    {
      v20 = v18;

      v21 = v19;
      if (v20 || !v19)
      {
        if (!v20 || v19)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v20 = v21;
      }

      v21 = v20;
      v20 = v21;
    }

    else
    {
      v21 = v26;
      v20 = v12;
    }

LABEL_34:

    v12 = v20;
    goto LABEL_35;
  }

  v4 = v2;
LABEL_42:

  os_unfair_lock_unlock(&INApplicationBundleIdentifierFromBundleIdentifier_lock);
LABEL_43:

  return v4;
}

void __INApplicationBundleIdentifierFromBundleIdentifier_block_invoke()
{
  v0 = objc_opt_new();
  v1 = INApplicationBundleIdentifierFromBundleIdentifier_resultsCache;
  INApplicationBundleIdentifierFromBundleIdentifier_resultsCache = v0;

  INApplicationBundleIdentifierFromBundleIdentifier_lock = 0;
}

uint64_t INThisProcessCanMapLSDatabase(uint64_t a1)
{
  if (INThisProcessCanMapLSDatabase_onceToken != -1)
  {
    dispatch_once(&INThisProcessCanMapLSDatabase_onceToken, &__block_literal_global_50);
  }

  v2 = INThisProcessCanMapLSDatabase_cache;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{INThisProcessHasEntitlement(@"com.apple.private.coreservices.canmaplsdatabase", a1)}];
    v6 = INThisProcessCanMapLSDatabase_cache;
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a1];
    [v6 setObject:v5 forKeyedSubscript:v7];
  }

  v8 = INThisProcessCanMapLSDatabase_cache;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:a1];
  v10 = [v8 objectForKeyedSubscript:v9];
  v11 = [v10 BOOLValue];

  return v11;
}

id INContainingBundleURLForCurrentProcess()
{
  v0 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  objc_opt_class();
  v1 = v0;
  if (objc_opt_isKindOfClass())
  {
    v1 = [v0 containingBundle];
  }

  v2 = [v1 bundleURL];

  return v2;
}

id INSchemaURLsWithBundle(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = INSchemaFileExtensions();
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [v1 URLsForResourcesWithExtension:*(*(&v21 + 1) + 8 * i) subdirectory:0];
        [v2 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v5);
  }

  if (![v2 count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = INSchemaFileExtensions();
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [v1 URLsForResourcesWithExtension:*(*(&v17 + 1) + 8 * j) subdirectory:0 localization:{@"en", v17}];
          [v2 addObjectsFromArray:v14];
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
      }

      while (v11);
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v2;
}

id INIntentSchemaGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (INIntentSchemaGetIntentDescriptionWithName_onceToken != -1)
    {
      dispatch_once(&INIntentSchemaGetIntentDescriptionWithName_onceToken, &__block_literal_global_677);
    }

    v2 = [INIntentSchemaGetIntentDescriptionWithName_map objectForKey:v1];
    v3 = [v2 integerValue];

    switch(v3)
    {
      case 1:
        v4 = INAlarmDomainGetIntentDescriptionWithName(v1);
        break;
      case 2:
        v4 = INCalendarEventDomainGetIntentDescriptionWithName(v1);
        break;
      case 3:
        v4 = INCallsDomainGetIntentDescriptionWithName(v1);
        break;
      case 4:
        v4 = INCarPlayDomainGetIntentDescriptionWithName(v1);
        break;
      case 5:
        v4 = INContactDomainGetIntentDescriptionWithName(v1);
        break;
      case 6:
        v4 = INFilesDomainGetIntentDescriptionWithName(v1);
        break;
      case 7:
        v4 = INFindDeviceDomainGetIntentDescriptionWithName(v1);
        break;
      case 8:
        v4 = INFocusStatusDomainGetIntentDescriptionWithName(v1);
        break;
      case 9:
        v4 = INGeoDomainGetIntentDescriptionWithName(v1);
        break;
      case 10:
        v4 = INHomeCommunicationDomainGetIntentDescriptionWithName(v1);
        break;
      case 11:
        v4 = INHomeKitDomainGetIntentDescriptionWithName(v1);
        break;
      case 12:
        v4 = INMediaDomainGetIntentDescriptionWithName(v1);
        break;
      case 13:
        v4 = INMessagesDomainGetIntentDescriptionWithName(v1);
        break;
      case 14:
        v4 = INNotebookDomainGetIntentDescriptionWithName(v1);
        break;
      case 15:
        v4 = INPaymentsDomainGetIntentDescriptionWithName(v1);
        break;
      case 16:
        v4 = INPhotosDomainGetIntentDescriptionWithName(v1);
        break;
      case 17:
        v4 = INRRaaSDomainGetIntentDescriptionWithName(v1);
        break;
      case 18:
        v4 = INRadioDomainGetIntentDescriptionWithName(v1);
        break;
      case 19:
        v4 = INReservationsDomainGetIntentDescriptionWithName(v1);
        break;
      case 20:
        v4 = INRidesharingDomainGetIntentDescriptionWithName(v1);
        break;
      case 21:
        v4 = INSettingsDomainGetIntentDescriptionWithName(v1);
        break;
      case 22:
        v4 = INTimersDomainGetIntentDescriptionWithName(v1);
        break;
      case 23:
        v4 = INVisualCodeDomainGetIntentDescriptionWithName(v1);
        break;
      case 24:
        v4 = INVoiceCommandsDomainGetIntentDescriptionWithName(v1);
        break;
      case 25:
        v4 = INWellnessDomainGetIntentDescriptionWithName(v1);
        break;
      case 26:
        v4 = INWorkflowDomainGetIntentDescriptionWithName(v1);
        break;
      case 27:
        v4 = INWorkoutsDomainGetIntentDescriptionWithName(v1);
        break;
      case 28:
        v4 = INGenericDomainGetIntentDescriptionWithName(v1);
        break;
      default:
        goto LABEL_6;
    }

    v5 = v4;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  return v5;
}

id INContainingBundleIdentifierForCurrentProcess()
{
  v0 = [MEMORY[0x1E6963618] bundleProxyForCurrentProcess];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v0 containingBundle];

    v0 = v1;
  }

  v2 = [v0 bundleIdentifier];

  return v2;
}

void __INSchemaFileExtensions_block_invoke()
{
  v0 = INSchemaFileExtensions_extensions;
  INSchemaFileExtensions_extensions = &unk_1F02DB970;
}

id INSchemaFileExtensions()
{
  if (INSchemaFileExtensions_onceToken != -1)
  {
    dispatch_once(&INSchemaFileExtensions_onceToken, &__block_literal_global_11952);
  }

  v1 = INSchemaFileExtensions_extensions;

  return v1;
}

id _INImageFilePersistenceDirectoryPathWithStoreTypeCreateIfNeeded(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CPSharedResourcesDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"Library/Intents/Images"];

  if (a1 == 2)
  {
    v4 = [v3 stringByAppendingPathComponent:@"Persistent"];

    v3 = v4;
  }

  v5 = v3;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v12 = 0;
  v7 = [v6 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:0 error:&v12];
  v8 = v12;

  if ((v7 & 1) == 0)
  {
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v14 = "_INImageFilePersistenceCreateDirectoryIfNeeded";
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v8;
      _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Couldn't create image file directory at path %{public}@ %{public}@", buf, 0x20u);
    }
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

id _INImageFilePersistenceUpdateModifiedDateAtFilePath(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = 0;
  v3 = [v2 attributesOfItemAtPath:v1 error:&v16];
  v4 = v16;
  v5 = [v3 mutableCopy];

  if (v4)
  {
    v6 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "_INImageFilePersistenceUpdateModifiedDateAtFilePath";
      v19 = 2112;
      v20 = v1;
      v21 = 2112;
      v22 = v4;
      _os_log_error_impl(&dword_18E991000, v6, OS_LOG_TYPE_ERROR, "%s Failed to get attributes for item currently at path %@: %@", buf, 0x20u);
    }

    v7 = v4;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF00] date];
    [v5 setObject:v8 forKey:*MEMORY[0x1E696A350]];

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = 0;
    [v9 setAttributes:v5 ofItemAtPath:v1 error:&v15];
    v7 = v15;

    if (v7)
    {
      v10 = INSiriLogContextIntents;
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v18 = "_INImageFilePersistenceUpdateModifiedDateAtFilePath";
        v19 = 2112;
        v20 = v1;
        v21 = 2112;
        v22 = v7;
        _os_log_error_impl(&dword_18E991000, v10, OS_LOG_TYPE_ERROR, "%s Failed to set attributes for item currently at path %@: %@", buf, 0x20u);
      }

      v11 = v7;
    }
  }

  v12 = v7;

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

void INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler(void *a1, unsigned int a2, char a3, char a4, void *a5, void *a6, double a7, double a8)
{
  v62 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a5;
  v17 = a6;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x3032000000;
  v59[3] = __Block_byref_object_copy_;
  v59[4] = __Block_byref_object_dispose_;
  v60 = 0;
  v18 = INSiriLogContextIntents;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 136315394;
    *&buf[4] = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler";
    *&buf[12] = 2112;
    *&buf[14] = v20;
    _os_log_impl(&dword_18E991000, v18, OS_LOG_TYPE_INFO, "%s Starting image proxy injection for %@", buf, 0x16u);
  }

  v21 = 1.0;
  v22 = INImageProxyInjectionQueue();
  if (a2 <= 0x15 && ((1 << a2) & 0x220200) != 0)
  {
    v21 = 15.0;
  }

  v23 = _os_activity_create(&dword_18E991000, "Inject Image Proxy", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *buf = 0;
  *&buf[8] = 0;
  v34 = v23;
  os_activity_scope_enter(v23, buf);
  v24 = [INWatchdogTimer alloc];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke;
  v54[3] = &unk_1E727D820;
  v57 = v21;
  v25 = v15;
  v55 = v25;
  v26 = v17;
  v56 = v26;
  v58 = *buf;
  v27 = [(INWatchdogTimer *)v24 initWithTimeoutInterval:v22 onQueue:v54 timeoutHandler:v21];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_13;
  v43[3] = &unk_1E727D898;
  v44 = v22;
  v51 = a2;
  v52 = a3;
  v45 = v25;
  v46 = v27;
  v28 = v16;
  v49 = a7;
  v50 = a8;
  v53 = a4;
  v47 = v28;
  v48 = v59;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_21;
  v35[3] = &unk_1E727D8E8;
  v29 = v44;
  v36 = v29;
  v42 = a2;
  v30 = v46;
  v37 = v30;
  v31 = v45;
  v38 = v31;
  v32 = v26;
  v39 = v32;
  v40 = v59;
  v41 = *buf;
  [v31 _injectProxiesForImages:v43 completion:v35];
  [(INWatchdogTimer *)v30 start];

  _Block_object_dispose(v59, 8);
  v33 = *MEMORY[0x1E69E9840];
}

void __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_2;
  block[3] = &unk_1E727D870;
  v23 = *(a1 + 92);
  v15 = v5;
  v8 = *(a1 + 32);
  v16 = *(a1 + 40);
  v18 = v6;
  v17 = *(a1 + 48);
  v9 = *(a1 + 56);
  v21 = *(a1 + 72);
  v22 = *(a1 + 88);
  v24 = *(a1 + 93);
  v10 = *(a1 + 64);
  v19 = v9;
  v20 = v10;
  v11 = v6;
  v12 = v5;
  v13 = dispatch_block_create_with_qos_class(0, v7, 0, block);
  dispatch_async(v8, v13);
}

void __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 100) & 1) == 0 && ([*(a1 + 32) _isSupportedForDonation] & 1) == 0)
  {
    v19 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      *buf = 136315650;
      v33 = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_2";
      v34 = 2112;
      v35 = v20;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_18E991000, v19, OS_LOG_TYPE_INFO, "%s Image %@ is being provided outside of SiriKit and is not supported for donation. Removing from the injection target %@", buf, 0x20u);
    }

    v22 = *(*(a1 + 56) + 16);
    goto LABEL_19;
  }

  if (([*(a1 + 48) isCanceled] & 1) != 0 || (v2 = *(a1 + 64)) != 0 && !(*(v2 + 16))(v2, *(a1 + 32)))
  {
    v4 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 136315650;
      v33 = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke";
      v34 = 2112;
      v35 = v16;
      v36 = 2112;
      v37 = v17;
      v18 = "%s Proxy injection rejected for image %@ into %@, skipping";
LABEL_17:
      _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, v18, buf, 0x20u);
    }

LABEL_18:
    v25 = *(a1 + 32);
    v22 = *(*(a1 + 56) + 16);
LABEL_19:
    v22();
    goto LABEL_20;
  }

  v3 = [*(a1 + 32) _isEligibleForProxying];
  v4 = INSiriLogContextIntents;
  v5 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
  if (!v3)
  {
    if (v5)
    {
      v23 = *(a1 + 32);
      v24 = *(a1 + 40);
      *buf = 136315650;
      v33 = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke";
      v34 = 2112;
      v35 = v23;
      v36 = 2112;
      v37 = v24;
      v18 = "%s Image %@ is not eligible for proxying into %@, returning original image";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v5)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = v4;
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 136315650;
    v33 = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke";
    v34 = 2112;
    v35 = v7;
    v36 = 2112;
    v37 = v10;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s Proxying image %@ for injection into %@", buf, 0x20u);
  }

  [*(a1 + 32) _setPreferredScaledSize:{*(a1 + 80), *(a1 + 88)}];
  v11 = *(a1 + 96);
  v12 = *(a1 + 101);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_15;
  v27[3] = &unk_1E727D848;
  v13 = *(a1 + 32);
  v28 = *(a1 + 40);
  v29 = *(a1 + 32);
  v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  v30 = v14;
  v31 = v15;
  [INRemoteImageProxy requestProxyByStoringImage:v13 qualityOfService:v11 scaled:v12 storeType:0 completion:v27];

LABEL_20:
  v26 = *MEMORY[0x1E69E9840];
}

id INImageProxyInjectionQueue()
{
  if (INImageProxyInjectionQueue_onceToken != -1)
  {
    dispatch_once(&INImageProxyInjectionQueue_onceToken, &__block_literal_global);
  }

  v1 = INImageProxyInjectionQueue_injectionQueue;

  return v1;
}

void __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_15(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      v21 = a1[4];
      v22 = a1[5];
      *buf = 136315906;
      v28 = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke";
      v29 = 2114;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2114;
      v34 = v6;
      _os_log_error_impl(&dword_18E991000, v7, OS_LOG_TYPE_ERROR, "%s Error requesting image proxy during injection to object: %{public}@ image: %{public}@ error: %{public}@", buf, 0x2Au);
    }

    (*(a1[6] + 16))();
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
  }

  else
  {
    v8 = [v5 isEqual:a1[5]];
    v9 = INSiriLogContextIntents;
    if (v8)
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
      {
        v24 = a1[4];
        v23 = a1[5];
        *buf = 136315650;
        v28 = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke";
        v29 = 2112;
        v30 = v23;
        v31 = 2112;
        v32 = v24;
        _os_log_error_impl(&dword_18E991000, v9, OS_LOG_TYPE_ERROR, "%s Failed to proxy image %@ for injection to %@ due to proxy loop, skipping", buf, 0x20u);
      }

      [v5 purgeStoredImageWithCompletion:0];
      v10 = a1[5];
      (*(a1[6] + 16))();
      v11 = MEMORY[0x1E696ABC0];
      v12 = a1[4];
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempted to proxy-loop the image %@ in %@", a1[5], v12, *MEMORY[0x1E696A278]];
      v26 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v15 = [v11 errorWithDomain:@"IntentsErrorDomain" code:6005 userInfo:v14];
      v16 = *(a1[7] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
      {
        v19 = a1[4];
        v18 = a1[5];
        *buf = 136315650;
        v28 = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke";
        v29 = 2112;
        v30 = v18;
        v31 = 2112;
        v32 = v19;
        _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s Successfully proxied image %@, injecting into %@", buf, 0x20u);
      }

      (*(a1[6] + 16))();
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_2_22;
  block[3] = &unk_1E727D8C0;
  v5 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12 = v3;
  v13 = v6;
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v7 = v3;
  v8 = dispatch_block_create_with_qos_class(0, v4, 0, block);
  dispatch_async(v5, v8);
}

void __INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_2_22(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) cancelIfNotAlreadyCanceled])
  {
    v2 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 40);
      v4 = v2;
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      v10 = 136315394;
      v11 = "INImageProxyInjectionUtilitiesInjectProxiesIntoObjectWithContinuationHandler_block_invoke_2";
      v12 = 2112;
      v13 = v6;
      _os_log_impl(&dword_18E991000, v4, OS_LOG_TYPE_INFO, "%s Finished image proxy injection into %@", &v10, 0x16u);
    }

    v7 = *(a1 + 48);
    v8 = *(*(*(a1 + 64) + 8) + 40);
    (*(*(a1 + 56) + 16))();
    os_activity_scope_leave((a1 + 72));
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t INResolveInstanceMethod(const char *a1, objc_class *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  Name = sel_getName(a1);
  v5 = Name;
  v31 = 0;
  v32 = 0;
  v6 = *Name;
  if (v6 == 115)
  {
    v7 = *(Name + 1);
    if (v7 == 101)
    {
      v7 = *(Name + 2);
      v8 = 116;
    }

    else
    {
      v8 = 101;
    }

    if (v8 != v7)
    {
      goto LABEL_15;
    }
  }

  else if (115 != v6)
  {
    goto LABEL_15;
  }

  if (Name[strlen(Name) - 1] == 58)
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      v11 = v10;
      v12 = sel_getName(a1);
      v13 = strlen(v12 + 3);
      v14 = MEMORY[0x1EEE9AC00]();
      v15 = &types[-((v14 + 16) & 0xFFFFFFFFFFFFFFF0) - 8];
      strlcpy(v15, v12 + 3, v14 + 1);
      if (v11)
      {
        *v15 = __tolower(*v15);
      }

      v15[v13 - 1] = 0;
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];

      if (_INGetPropertyInfo(a2, v16, 1, &v32, &v31))
      {
        break;
      }

      v10 = 0;
      v9 = v16;
      if ((v11 & 1) == 0)
      {
        v17 = v31;
        goto LABEL_26;
      }
    }

    strcpy(types, "v@: ");
    v17 = v31;
    types[3] = *v31;
    v20 = types[3];
    v21 = _INSetIntProperty;
    if (types[3] <= 0x62u)
    {
      if (types[3] > 0x48u)
      {
        if (types[3] <= 0x50u)
        {
          if (types[3] == 73)
          {
            v21 = _INSetUnsignedIntProperty;
            goto LABEL_84;
          }

          if (types[3] == 76)
          {
            v21 = _INSetUnsignedLongProperty;
            goto LABEL_84;
          }

          goto LABEL_27;
        }

        if (types[3] == 81)
        {
          v21 = _INSetUnsignedLongLongProperty;
          goto LABEL_84;
        }

        goto LABEL_66;
      }

      if (types[3] != 64)
      {
        if (types[3] == 66)
        {
          v21 = _INSetBoolProperty;
          goto LABEL_84;
        }

        goto LABEL_55;
      }

      v23 = _INClassFromType(v31, a2);
      v21 = _INSetIdProperty;
      if (v23)
      {
        goto LABEL_84;
      }

      v24 = _INProtocolFromType(v17, a2);

      v21 = _INSetIdProperty;
      if (v24)
      {
        goto LABEL_84;
      }

      goto LABEL_27;
    }

    if (types[3] <= 0x68u)
    {
      switch(types[3])
      {
        case 'c':
          goto LABEL_84;
        case 'd':
          v21 = _INSetDoubleProperty;
          goto LABEL_84;
        case 'f':
          v21 = _INSetFloatProperty;
          goto LABEL_84;
      }

      goto LABEL_27;
    }

    if (types[3] <= 0x70u)
    {
      if (types[3] == 105)
      {
        goto LABEL_84;
      }

      if (types[3] == 108)
      {
        v21 = _INSetLongProperty;
        goto LABEL_84;
      }

      goto LABEL_27;
    }

    if (types[3] == 113)
    {
      v21 = _INSetLongLongProperty;
      goto LABEL_84;
    }

    goto LABEL_69;
  }

LABEL_15:
  v16 = 0;
  v18 = 0;
  if (v6 && v6 != 95)
  {
    if (v5[strlen(v5) - 1] != 58)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sel_getName(a1)];
      v19 = _INGetPropertyInfo(a2, v16, 0, &v32, &v31);
      v17 = v31;
      if (!v19)
      {
LABEL_26:
        if (!v17)
        {
LABEL_29:
          v18 = 0;
          goto LABEL_85;
        }

        goto LABEL_27;
      }

      strcpy(types, " @:");
      types[0] = *v31;
      v20 = types[0];
      v21 = _INGetIntProperty;
      if (types[0] <= 0x62u)
      {
        if (types[0] > 0x48u)
        {
          if (types[0] <= 0x50u)
          {
            if (types[0] == 73)
            {
              v21 = _INGetUnsignedIntProperty;
              goto LABEL_84;
            }

            if (types[0] == 76)
            {
              v21 = _INGetUnsignedLongProperty;
LABEL_84:
              class_addMethod(v32, a1, v21, types);
              v18 = 1;
              goto LABEL_85;
            }

            goto LABEL_27;
          }

          if (types[0] == 81)
          {
            v21 = _INGetUnsignedLongLongProperty;
            goto LABEL_84;
          }

LABEL_66:
          if (v20 == 83)
          {
            goto LABEL_84;
          }

          goto LABEL_27;
        }

        if (types[0] != 64)
        {
          if (types[0] == 66)
          {
            v21 = _INGetBoolProperty;
            goto LABEL_84;
          }

LABEL_55:
          if (v20 == 67)
          {
            goto LABEL_84;
          }

          goto LABEL_27;
        }

        v25 = _INClassFromType(v31, a2);
        v21 = _INGetIdProperty;
        if (v25)
        {
          goto LABEL_84;
        }

        v26 = _INProtocolFromType(v17, a2);

        v21 = _INGetIdProperty;
        if (v26)
        {
          goto LABEL_84;
        }

LABEL_27:
        v22 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v34 = "INResolveInstanceMethod";
          v35 = 2112;
          v36 = a2;
          v37 = 2112;
          v38 = v16;
          v39 = 2080;
          v40 = v17;
          v41 = 2112;
          v42 = a2;
          _os_log_error_impl(&dword_18E991000, v22, OS_LOG_TYPE_ERROR, "%s Dynamic property %@.%@ has type '%s' unsupported by %@", buf, 0x34u);
        }

        goto LABEL_29;
      }

      if (types[0] <= 0x68u)
      {
        switch(types[0])
        {
          case 'c':
            goto LABEL_84;
          case 'd':
            v21 = _INGetDoubleProperty;
            goto LABEL_84;
          case 'f':
            v21 = _INGetFloatProperty;
            goto LABEL_84;
        }

        goto LABEL_27;
      }

      if (types[0] <= 0x70u)
      {
        if (types[0] == 105)
        {
          goto LABEL_84;
        }

        if (types[0] == 108)
        {
          v21 = _INGetLongProperty;
          goto LABEL_84;
        }

        goto LABEL_27;
      }

      if (types[0] == 113)
      {
        v21 = _INGetLongLongProperty;
        goto LABEL_84;
      }

LABEL_69:
      if (v20 == 115)
      {
        goto LABEL_84;
      }

      goto LABEL_27;
    }

    v18 = 0;
    v16 = 0;
  }

LABEL_85:

  v27 = *MEMORY[0x1E69E9840];
  return v18;
}

objc_property *_INGetPropertyInfo(objc_class *Superclass, id a2, int a3, objc_class **a4, const char **a5)
{
  v10 = a2;
  v11 = [a2 UTF8String];
  result = class_getProperty(Superclass, v11);
  if (!result)
  {
    goto LABEL_7;
  }

  v13 = result;
  do
  {
    *a4 = Superclass;
    Superclass = class_getSuperclass(Superclass);
  }

  while (class_getProperty(Superclass, v11) == v13);
  v14 = 0;
  *a5 = _INGetPropertyType(v13, &v14);
  if (a3 && v14 == 1)
  {
    result = 0;
LABEL_7:
    *a5 = 0;
    return result;
  }

  return 1;
}

const char *_INGetPropertyType(objc_property *a1, _BYTE *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  *a2 = 0;
  Attributes = property_getAttributes(a1);
  strlen(Attributes);
  v4 = MEMORY[0x1EEE9AC00]();
  v5 = &__stringp - ((v4 + 16) & 0xFFFFFFFFFFFFFFF0);
  strlcpy(v5, Attributes, v4 + 1);
  __stringp = v5;
  v6 = "@";
  while (1)
  {
    v7 = strsep(&__stringp, ",");
    if (!v7)
    {
      break;
    }

    v8 = *v7;
    if (v8 == 82)
    {
      *a2 = 1;
    }

    else if (v8 == 84)
    {
      v9 = [MEMORY[0x1E695DEF0] dataWithBytes:v7 + 1 length:{strlen(v7), __stringp, v13}];
      v6 = [v9 bytes];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return v6;
}

id _INClassFromType(uint64_t a1, objc_class *a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v4 = strlen(a1);
  if (*a1 != 64)
  {
    goto LABEL_11;
  }

  if (v4 == 1)
  {
    v5 = objc_opt_class();
    goto LABEL_12;
  }

  if (v4 >= 4 && *(a1 + 1) == 34 && *(a1 + v4 - 1) == 34)
  {
    v6 = v11 - ((MEMORY[0x1EEE9AC00]() + 13) & 0xFFFFFFFFFFFFFFF0);
    strlcpy(v6, (a1 + 2), v7);
    v8 = strchr(v6, 60);
    if (!v8)
    {
LABEL_10:
      v5 = _INLookupNameInModule(v6, a2, &__block_literal_global_91429);
      goto LABEL_12;
    }

    if (v8 != v6)
    {
      *v8 = 0;
      goto LABEL_10;
    }

    v5 = 0;
  }

  else
  {
LABEL_11:
    v5 = 0;
  }

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];

  return v5;
}

id _INLookupNameInModule(char *a1, objc_class *a2, void *a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!a2)
  {
    goto LABEL_3;
  }

  if (strchr(a1, 46))
  {
    goto LABEL_3;
  }

  Name = class_getName(a2);
  v10 = strchr(Name, 46);
  if (!v10 || (v11 = v10 - Name, strlen(a1), MEMORY[0x1EEE9AC00](), v13 = v14 - v12, sprintf(v14 - v12, "%.*s.%s", v11, Name, a1), v5[2](v5, v13), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_3:
    v6 = v5[2](v5, a1);
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void _INSetIdProperty(void *a1, const char *a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a1;
  Name = sel_getName(a2);
  v8 = strlen(Name + 3);
  v9 = MEMORY[0x1EEE9AC00]();
  v10 = v13 - ((v9 + 16) & 0xFFFFFFFFFFFFFFF0);
  strlcpy(v10, Name + 3, v9 + 1);
  *v10 = __tolower(*v10);
  v10[v8 - 1] = 0;
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10];
  [v6 setValue:v5 forProperty:v11];

  v12 = *MEMORY[0x1E69E9840];
}

id _INGetIdProperty(void *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [v3 stringWithUTF8String:sel_getName(a2)];
  v6 = [v4 valueForProperty:v5];

  return v6;
}

uint64_t _INPBIntentMetadataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v141) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v141 & 0x7F) << v5;
      if ((v141 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v13 = v12 & 7;
    if (v13 == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(_INPBString);
        v141 = 0;
        v142 = 0;
        if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v14, a2))
        {
          goto LABEL_270;
        }

        PBReaderRecallMark();
        [a1 setUserUtterance:v14];
        goto LABEL_204;
      case 2u:
        v14 = PBReaderReadString();
        [a1 setLaunchId:v14];
        goto LABEL_204;
      case 3u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v68 = [a2 position] + 1;
          if (v68 >= [a2 position] && (v69 = objc_msgSend(a2, "position") + 1, v69 <= objc_msgSend(a2, "length")))
          {
            v70 = [a2 data];
            [v70 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v67 |= (v141 & 0x7F) << v65;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v11 = v66++ >= 9;
          if (v11)
          {
            v71 = 0;
            goto LABEL_223;
          }
        }

        v71 = (v67 != 0) & ~[a2 hasError];
LABEL_223:
        [a1 setBackgroundLaunch:v71];
        goto LABEL_205;
      case 4u:
        v72 = 0;
        v73 = 0;
        v74 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v75 = [a2 position] + 1;
          if (v75 >= [a2 position] && (v76 = objc_msgSend(a2, "position") + 1, v76 <= objc_msgSend(a2, "length")))
          {
            v77 = [a2 data];
            [v77 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v74 |= (v141 & 0x7F) << v72;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v72 += 7;
          v11 = v73++ >= 9;
          if (v11)
          {
            v78 = 0;
            goto LABEL_225;
          }
        }

        v78 = (v74 != 0) & ~[a2 hasError];
LABEL_225:
        [a1 setConfirmed:v78];
        goto LABEL_205;
      case 5u:
        v14 = PBReaderReadString();
        [a1 setIntentId:v14];
        goto LABEL_204;
      case 6u:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v82 = [a2 position] + 1;
          if (v82 >= [a2 position] && (v83 = objc_msgSend(a2, "position") + 1, v83 <= objc_msgSend(a2, "length")))
          {
            v84 = [a2 data];
            [v84 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v81 |= (v141 & 0x7F) << v79;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v11 = v80++ >= 9;
          if (v11)
          {
            v85 = 0;
            goto LABEL_229;
          }
        }

        if ([a2 hasError])
        {
          v85 = 0;
        }

        else
        {
          v85 = v81;
        }

LABEL_229:
        [a1 setTriggerMethod:v85];
        goto LABEL_205;
      case 7u:
        v14 = PBReaderReadString();
        [a1 setSystemExtensionBundleId:v14];
        goto LABEL_204;
      case 8u:
        v14 = PBReaderReadString();
        [a1 setIntentDescription:v14];
        goto LABEL_204;
      case 9u:
        v14 = objc_alloc_init(_INPBPair);
        v141 = 0;
        v142 = 0;
        if (!PBReaderPlaceMark() || !_INPBPairReadFrom(v14, a2))
        {
          goto LABEL_270;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addParameterImages:v14];
        }

        goto LABEL_204;
      case 0xAu:
        v14 = PBReaderReadString();
        [a1 setNanoLaunchId:v14];
        goto LABEL_204;
      case 0xBu:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v96 = [a2 position] + 1;
          if (v96 >= [a2 position] && (v97 = objc_msgSend(a2, "position") + 1, v97 <= objc_msgSend(a2, "length")))
          {
            v98 = [a2 data];
            [v98 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v95 |= (v141 & 0x7F) << v93;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v11 = v94++ >= 9;
          if (v11)
          {
            v99 = 0;
            goto LABEL_235;
          }
        }

        if ([a2 hasError])
        {
          v99 = 0;
        }

        else
        {
          v99 = v95;
        }

LABEL_235:
        [a1 setIntentCategory:v99];
        goto LABEL_205;
      case 0xCu:
        v14 = PBReaderReadString();
        [a1 setSuggestedInvocationPhrase:v14];
        goto LABEL_204;
      case 0xDu:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v54 = [a2 position] + 1;
          if (v54 >= [a2 position] && (v55 = objc_msgSend(a2, "position") + 1, v55 <= objc_msgSend(a2, "length")))
          {
            v56 = [a2 data];
            [v56 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v53 |= (v141 & 0x7F) << v51;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v11 = v52++ >= 9;
          if (v11)
          {
            v57 = 0;
            goto LABEL_221;
          }
        }

        if ([a2 hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }

LABEL_221:
        [a1 setExecutionContext:v57];
        goto LABEL_205;
      case 0xEu:
        v14 = PBReaderReadString();
        [a1 setOriginatingDeviceIdsIdentifier:v14];
        goto LABEL_204;
      case 0xFu:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v141 & 0x7F) << v37;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v43 = 0;
            goto LABEL_215;
          }
        }

        v43 = (v39 != 0) & ~[a2 hasError];
LABEL_215:
        [a1 setUserConfirmationRequired:v43];
        goto LABEL_205;
      case 0x10u:
        v14 = PBReaderReadString();
        [a1 setCategoryVerb:v14];
        goto LABEL_204;
      case 0x11u:
        v14 = objc_alloc_init(_INPBImageValue);
        v141 = 0;
        v142 = 0;
        if (PBReaderPlaceMark() && _INPBImageValueReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          [a1 setDefaultImageValue:v14];
LABEL_204:

LABEL_205:
          v128 = [a2 position];
          if (v128 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_270:

        return 0;
      case 0x12u:
        v14 = PBReaderReadString();
        [a1 setSystemUIExtensionBundleId:v14];
        goto LABEL_204;
      case 0x13u:
        v86 = 0;
        v87 = 0;
        v88 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v89 = [a2 position] + 1;
          if (v89 >= [a2 position] && (v90 = objc_msgSend(a2, "position") + 1, v90 <= objc_msgSend(a2, "length")))
          {
            v91 = [a2 data];
            [v91 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v88 |= (v141 & 0x7F) << v86;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v86 += 7;
          v11 = v87++ >= 9;
          if (v11)
          {
            v92 = 0;
            goto LABEL_231;
          }
        }

        v92 = (v88 != 0) & ~[a2 hasError];
LABEL_231:
        [a1 setIsPrimaryDisplayDisabled:v92];
        goto LABEL_205;
      case 0x14u:
        v121 = 0;
        v122 = 0;
        v123 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v124 = [a2 position] + 1;
          if (v124 >= [a2 position] && (v125 = objc_msgSend(a2, "position") + 1, v125 <= objc_msgSend(a2, "length")))
          {
            v126 = [a2 data];
            [v126 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v123 |= (v141 & 0x7F) << v121;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v121 += 7;
          v11 = v122++ >= 9;
          if (v11)
          {
            v127 = 0;
            goto LABEL_247;
          }
        }

        if ([a2 hasError])
        {
          v127 = 0;
        }

        else
        {
          v127 = v123;
        }

LABEL_247:
        [a1 setIdiom:v127];
        goto LABEL_205;
      case 0x15u:
        v14 = PBReaderReadString();
        [a1 setOriginatingDeviceRapportEffectiveId:v14];
        goto LABEL_204;
      case 0x16u:
        v14 = PBReaderReadString();
        [a1 setOriginatingDeviceRapportMediaSystemId:v14];
        goto LABEL_204;
      case 0x17u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v117 = [a2 position] + 1;
          if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 1, v118 <= objc_msgSend(a2, "length")))
          {
            v119 = [a2 data];
            [v119 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v116 |= (v141 & 0x7F) << v114;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v11 = v115++ >= 9;
          if (v11)
          {
            v120 = 0;
            goto LABEL_243;
          }
        }

        v120 = (v116 != 0) & ~[a2 hasError];
LABEL_243:
        [a1 setIsOwnedByCurrentUser:v120];
        goto LABEL_205;
      case 0x18u:
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addForceNeedsValueForParameter:v14];
        }

        goto LABEL_204;
      case 0x19u:
        if (v13 != 2)
        {
          v129 = 0;
          v130 = 0;
          v131 = 0;
          while (1)
          {
            LOBYTE(v141) = 0;
            v132 = [a2 position] + 1;
            if (v132 >= [a2 position] && (v133 = objc_msgSend(a2, "position") + 1, v133 <= objc_msgSend(a2, "length")))
            {
              v134 = [a2 data];
              [v134 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v131 |= (v141 & 0x7F) << v129;
            if ((v141 & 0x80) == 0)
            {
              goto LABEL_266;
            }

            v129 += 7;
            v11 = v130++ >= 9;
            if (v11)
            {
              goto LABEL_267;
            }
          }
        }

        v141 = 0;
        v142 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v58 = [a2 position];
          if (v58 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            goto LABEL_209;
          }

          v59 = 0;
          v60 = 0;
          v61 = 0;
          while (1)
          {
            v143 = 0;
            v62 = [a2 position] + 1;
            if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 1, v63 <= objc_msgSend(a2, "length")))
            {
              v64 = [a2 data];
              [v64 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v61 |= (v143 & 0x7F) << v59;
            if ((v143 & 0x80) == 0)
            {
              break;
            }

            v59 += 7;
            v11 = v60++ >= 9;
            if (v11)
            {
              goto LABEL_104;
            }
          }

          [a2 hasError];
LABEL_104:
          PBRepeatedInt32Add();
        }

      case 0x1Au:
        v14 = PBReaderReadString();
        if (v14)
        {
          [a1 addAirPlayRouteIds:v14];
        }

        goto LABEL_204;
      case 0x1Bu:
        v14 = PBReaderReadData();
        [a1 setAuditTokenData:v14];
        goto LABEL_204;
      case 0x1Cu:
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v141 & 0x7F) << v23;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_211;
          }
        }

        v29 = (v25 != 0) & ~[a2 hasError];
LABEL_211:
        [a1 setShowsWhenRun:v29];
        goto LABEL_205;
      case 0x1Du:
        v14 = PBReaderReadString();
        [a1 setEndpointId:v14];
        goto LABEL_204;
      case 0x1Eu:
        v14 = PBReaderReadString();
        [a1 setMediaRouteId:v14];
        goto LABEL_204;
      case 0x1Fu:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v103 = [a2 position] + 1;
          if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 1, v104 <= objc_msgSend(a2, "length")))
          {
            v105 = [a2 data];
            [v105 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v102 |= (v141 & 0x7F) << v100;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v11 = v101++ >= 9;
          if (v11)
          {
            v106 = 0;
            goto LABEL_239;
          }
        }

        if ([a2 hasError])
        {
          v106 = 0;
        }

        else
        {
          v106 = v102;
        }

LABEL_239:
        [a1 setVersioningHash:v106];
        goto LABEL_205;
      case 0x20u:
        v14 = PBReaderReadString();
        [a1 setPreferredAudioOutputRouteId:v14];
        goto LABEL_204;
      case 0x21u:
        v107 = 0;
        v108 = 0;
        v109 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v110 = [a2 position] + 1;
          if (v110 >= [a2 position] && (v111 = objc_msgSend(a2, "position") + 1, v111 <= objc_msgSend(a2, "length")))
          {
            v112 = [a2 data];
            [v112 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v109 |= (v141 & 0x7F) << v107;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v107 += 7;
          v11 = v108++ >= 9;
          if (v11)
          {
            v113 = 0;
            goto LABEL_241;
          }
        }

        v113 = (v109 != 0) & ~[a2 hasError];
LABEL_241:
        [a1 setMsLimitReached:v113];
        goto LABEL_205;
      case 0x22u:
        v44 = 0;
        v45 = 0;
        v46 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v47 = [a2 position] + 1;
          if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
          {
            v49 = [a2 data];
            [v49 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v46 |= (v141 & 0x7F) << v44;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v44 += 7;
          v11 = v45++ >= 9;
          if (v11)
          {
            v50 = 0;
            goto LABEL_217;
          }
        }

        v50 = (v46 != 0) & ~[a2 hasError];
LABEL_217:
        [a1 setEndpointMediaPlaybackEnabled:v50];
        goto LABEL_205;
      case 0x23u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          LOBYTE(v141) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v141 & 0x7F) << v30;
          if ((v141 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v36 = 0;
            goto LABEL_213;
          }
        }

        v36 = (v32 != 0) & ~[a2 hasError];
LABEL_213:
        [a1 setBypassAppProtectionAuthentication:v36];
        goto LABEL_205;
      default:
        if ((v12 >> 3) == 9999)
        {
          if (v13 == 2)
          {
            v141 = 0;
            v142 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v16 = [a2 position];
              if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v17 = 0;
              v18 = 0;
              v19 = 0;
              while (1)
              {
                v143 = 0;
                v20 = [a2 position] + 1;
                if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
                {
                  v22 = [a2 data];
                  [v22 getBytes:&v143 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v19 |= (v143 & 0x7F) << v17;
                if ((v143 & 0x80) == 0)
                {
                  break;
                }

                v17 += 7;
                v11 = v18++ >= 9;
                if (v11)
                {
                  goto LABEL_36;
                }
              }

              [a2 hasError];
LABEL_36:
              PBRepeatedInt32Add();
            }

LABEL_209:
            PBReaderRecallMark();
          }

          else
          {
            v135 = 0;
            v136 = 0;
            v137 = 0;
            while (1)
            {
              LOBYTE(v141) = 0;
              v138 = [a2 position] + 1;
              if (v138 >= [a2 position] && (v139 = objc_msgSend(a2, "position") + 1, v139 <= objc_msgSend(a2, "length")))
              {
                v140 = [a2 data];
                [v140 getBytes:&v141 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v137 |= (v141 & 0x7F) << v135;
              if ((v141 & 0x80) == 0)
              {
                break;
              }

              v135 += 7;
              v11 = v136++ >= 9;
              if (v11)
              {
                goto LABEL_267;
              }
            }

LABEL_266:
            [a2 hasError];
LABEL_267:
            PBRepeatedInt32Add();
          }
        }

        else if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_205;
    }
  }
}

uint64_t INObjectIsConsideredNil(void *a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a1;
  if (!v3)
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 doubleValue];
    if (v7 == 0.0 && (a2 & 1) != 0)
    {
      goto LABEL_3;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ![v3 length])
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v3 spokenPhrase];
    if ([v8 length])
    {
    }

    else
    {
      v9 = [v3 vocabularyIdentifier];
      v10 = [v9 length];

      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  v11 = [v3 displayString];
  if ([v11 length])
  {

    goto LABEL_18;
  }

  v12 = [v3 identifier];
  v13 = [v12 length];

  if (!v13)
  {
LABEL_3:
    v4 = 1;
    goto LABEL_4;
  }

LABEL_18:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_4;
  }

  if (![v3 count])
  {
    goto LABEL_3;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v14 = v3;
  v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    while (2)
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v14);
        }

        if (!INObjectIsConsideredNil(*(*(&v19 + 1) + 8 * v18), a2))
        {
          v4 = 0;
          goto LABEL_31;
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v4 = 1;
LABEL_31:

LABEL_4:
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void INExtractAppInfoFromSiriLaunchId(void *a1, void *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  INExtractAppInfoFromSiriLaunchIdWithoutLaunchServices(a1, &v13, &v12);
  v5 = v13;
  v6 = v12;
  if (a2)
  {
    v7 = v5;
    *a2 = v5;
  }

  if (a3)
  {
    if (!v6 && v5)
    {
      v8 = MEMORY[0x1E6963618];
      v9 = INLocalAppBundleIdentifierForIntentBundleIdentifier(v5);
      v10 = [v8 bundleProxyForIdentifier:v9];

      v6 = [v10 bundleURL];
    }

    v11 = [v6 path];
    *a3 = [v11 stringByRemovingPercentEncoding];
  }
}

void INExtractAppInfoFromSiriLaunchIdWithoutLaunchServices(void *a1, void *a2, void *a3)
{
  v10 = a1;
  if (([v10 hasPrefix:@"x-apple-siri-app"] & 1) != 0 || objc_msgSend(v10, "hasPrefix:", @"x-apple-siri-watch-app"))
  {
    v5 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    v6 = [v5 host];

    v7 = [v5 path];
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v5 = 0;
  v7 = 0;
  v6 = v10;
  if (a2)
  {
LABEL_4:
    v8 = v6;
    *a2 = v6;
  }

LABEL_5:
  if (a3)
  {
    if (v7)
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v7];
      *a3 = v9;
    }

    else
    {
      *a3 = 0;
    }
  }
}

id INIntentSlotDescriptionsWithCodable(void *a1)
{
  v67[4] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v56 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v44 = v1;
  v2 = [v1 _objectDescription];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [v2 attributes];
  v3 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
  if (v3)
  {
    v4 = v3;
    v57 = *v62;
    do
    {
      v5 = 0;
      v45 = v4;
      do
      {
        if (*v62 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v61 + 1) + 8 * v5);
        v7 = [v2 attributes];
        v8 = [v7 objectForKey:v6];

        v9 = [v6 unsignedIntegerValue];
        v10 = [v2 typeName];
        v11 = v8;
        v12 = v10;
        v13 = [v11 propertyName];
        if ([v13 length])
        {
          v59 = [v11 valueType];
          v60 = v12;
          if ([v11 supportsResolution])
          {
            v14 = MEMORY[0x1E696AEC0];
            v15 = [v11 propertyName];
            v16 = [v15 if_ASCIIStringByUppercasingFirstCharacter];
            v17 = [v14 stringWithFormat:@"resolve%@For%@:withCompletion:", v16, v12];
            v58 = NSSelectorFromString(v17);
          }

          else
          {
            v58 = 0;
          }

          v19 = [v11 supportsDynamicEnumeration];
          v20 = MEMORY[0x1E695E0F0];
          v21 = MEMORY[0x1E695E0F0];
          if (v19)
          {
            v22 = MEMORY[0x1E696AEC0];
            v54 = [v11 propertyName];
            v53 = [v54 if_ASCIIStringByUppercasingFirstCharacter];
            v55 = v9;
            v52 = [v22 stringWithFormat:@"provide%@OptionsCollectionFor%@:searchTerm:withCompletion:", v53, v60];
            v67[0] = v52;
            v23 = MEMORY[0x1E696AEC0];
            v51 = [v11 propertyName];
            v50 = [v51 if_ASCIIStringByUppercasingFirstCharacter];
            v49 = [v23 stringWithFormat:@"provide%@OptionsCollectionFor%@:withCompletion:", v50, v60];
            v67[1] = v49;
            v24 = MEMORY[0x1E696AEC0];
            v48 = [v11 propertyName];
            v47 = [v48 if_ASCIIStringByUppercasingFirstCharacter];
            v25 = [v24 stringWithFormat:@"provide%@OptionsFor%@:searchTerm:withCompletion:", v47, v60];
            v67[2] = v25;
            v26 = MEMORY[0x1E696AEC0];
            v27 = [v11 propertyName];
            v28 = [v27 if_ASCIIStringByUppercasingFirstCharacter];
            [v26 stringWithFormat:@"provide%@OptionsFor%@:withCompletion:", v28, v60];
            v30 = v29 = v2;
            v67[3] = v30;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:4];

            v2 = v29;
            v4 = v45;

            v31 = MEMORY[0x1E696AEC0];
            v32 = [v11 propertyName];
            v33 = [v32 if_ASCIIStringByUppercasingFirstCharacter];
            v34 = [v31 stringWithFormat:@"default%@For%@:", v33, v60];
            v66 = v34;
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];

            v9 = v55;
          }

          v35 = [INIntentSlotDescription alloc];
          v36 = [v11 modifier];
          if (v36 > 2)
          {
            v37 = 0;
          }

          else
          {
            v37 = qword_18EE5F2A8[v36];
          }

          v18 = -[INIntentSlotDescription initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:codableAttribute:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:](v35, "initWithName:tag:facadePropertyName:dataPropertyName:isExtended:isPrivate:valueType:valueStyle:codableAttribute:defaultValueSelectorStrings:provideOptionsSelectorStrings:resolutionResultClass:resolveSelectors:", v13, v9, v13, v13, 0, 0, v59, v37, v11, v21, v20, [v11 resolutionResultClass], v58, 0);

          v12 = v60;
        }

        else
        {
          v18 = 0;
        }

        v38 = [v11 displayPriorityRank];
        [(INIntentSlotDescription *)v18 setRank:v38];

        v39 = [(INIntentSlotDescription *)v18 name];

        if (v39)
        {
          v40 = [(INIntentSlotDescription *)v18 name];
          [v56 setObject:v18 forKeyedSubscript:v40];
        }

        ++v5;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v61 objects:v65 count:16];
    }

    while (v4);
  }

  v41 = [v56 copy];
  v42 = *MEMORY[0x1E69E9840];

  return v41;
}

INIntent *INIntentWithTypedIntent(void *a1)
{
  v1 = a1;
  v2 = [(INIntent *)v1 backingStore];
  v3 = v1;
  if (v2)
  {
    objc_opt_class();
    v3 = v1;
    if (objc_opt_isKindOfClass())
    {
      v4 = [INIntent alloc];
      v5 = [(INIntent *)v1 identifier];
      v3 = [(INIntent *)v4 initWithIdentifier:v5 backingStore:v2];

      v6 = [(INIntent *)v1 launchId];
      [(INIntent *)v3 _setLaunchId:v6];

      v7 = [(INIntent *)v1 extensionBundleId];
      [(INIntent *)v3 _setExtensionBundleId:v7];

      v8 = [(INIntent *)v1 suggestedInvocationPhrase];
      [(INIntent *)v3 setSuggestedInvocationPhrase:v8];

      v9 = [(INIntent *)v1 _parameterCombinations];
      [(INIntent *)v3 _setParameterCombinations:v9];

      v10 = [v2 _objectDescription];
      _INUntypePropertiesWithCodableDescription(v3, v10);
    }
  }

  return v3;
}

_INPBBool *INIntentSlotValueTransformToBool(void *a1)
{
  v1 = INIntentSlotValueTransformToBoolValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBBool);
    [(_INPBBool *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBBoolValue *INIntentSlotValueTransformToBoolValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBBoolValue);
    v3 = [v1 BOOLValue];

    [(_INPBBoolValue *)v2 setValue:v3];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _INPBBoolReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBBoolValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBBoolValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBBoolValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v20 = objc_alloc_init(_INPBValueMetadata);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v20];
      }

      else if ((v12 >> 3) == 2)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        [a1 setValue:v19];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromBool(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromBoolValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueTransformFromBoolValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 valueMetadata], v3 = objc_claimAutoreleasedReturnValue(), INPrivacyEntitlementValidateValueMetadata(v3), v3, objc_msgSend(v2, "hasValue")))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v2, "value")}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t INPrivacyEntitlementValidateValueMetadata(void *a1)
{
  v1 = a1;
  v2 = [v1 requiredEntitlementsCount];
  if (v2)
  {
    v3 = v2;
    for (i = 0; i != v3; ++i)
    {
      [v1 requiredEntitlementAtIndex:i];
    }
  }

  return 1;
}

void _INUntypePropertiesWithCodableDescription(void *a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = [a2 attributes];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    v9 = 0x1E727A000uLL;
    v29 = v5;
    v30 = v3;
    v28 = *v39;
    do
    {
      v10 = 0;
      v31 = v7;
      do
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v38 + 1) + 8 * v10);
        if (v11)
        {
          v12 = *(v9 + 3032);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = [v11 propertyName];
            v14 = [v11 codableDescription];
            v32 = v11;
            v15 = [v11 modifier];
            v33 = v13;
            v16 = [v3 valueForKey:v13];
            v17 = v16;
            if (v15)
            {
              if (v16)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = _INObjectWithTypedObject(v17, v14);

                  [v3 setValue:v18 forKey:v13];
                  v17 = v18;
                }
              }
            }

            else if (v16)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v17 = v17;
                v20 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v35;
                  do
                  {
                    for (i = 0; i != v21; ++i)
                    {
                      if (*v35 != v22)
                      {
                        objc_enumerationMutation(v17);
                      }

                      v24 = *(*(&v34 + 1) + 8 * i);
                      if (v24 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v25 = _INObjectWithTypedObject(v24, v14);
                        [v19 addObject:v25];
                      }

                      else
                      {

                        [v19 addObject:v24];
                      }
                    }

                    v21 = [v17 countByEnumeratingWithState:&v34 objects:v42 count:16];
                  }

                  while (v21);
                }

                v26 = [v19 copy];
                v3 = v30;
                [v30 setValue:v26 forKey:v33];

                v8 = v28;
                v5 = v29;
                v7 = v31;
              }
            }

            v9 = 0x1E727A000;

            v11 = v32;
          }
        }

        ++v10;
      }

      while (v10 != v7);
      v7 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v7);
  }

  v27 = *MEMORY[0x1E69E9840];
}

id INIntentSlotValueTransformFromImageValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v5 = 0;
    goto LABEL_16;
  }

  v3 = [v1 uri];
  v4 = [v2 type];
  v5 = 0;
  if (v4 <= 1)
  {
    if (!v4)
    {
      v5 = [[INImage alloc] _initWithIdentifier:v3];
      goto LABEL_13;
    }

    if (v4 == 1)
    {
      v6 = [v2 data];
      v7 = [INImage imageWithImageData:v6];
      goto LABEL_9;
    }
  }

  else
  {
    if ((v4 - 2) < 2)
    {
      v6 = [MEMORY[0x1E695DFF8] URLWithString:v3];
      v7 = [INImage imageWithURL:v6];
LABEL_9:
      v5 = v7;
LABEL_12:

      goto LABEL_13;
    }

    if (v4 == 4)
    {
      v5 = [(INImage *)[INRemoteImageProxy alloc] _initWithIdentifier:v3];
      [v5 _setProxyIdentifier:v3];
      v6 = [v2 proxyServiceIdentifier];
      [v5 _setStorageServiceIdentifier:v6];
      goto LABEL_12;
    }
  }

LABEL_13:
  [v2 width];
  v9 = v8;
  [v2 height];
  [v5 _setImageSize:{v9, v10}];
  v11 = [v2 renderingMode];
  if (v11 <= 2)
  {
    [v5 _setRenderingMode:v11];
  }

LABEL_16:

  return v5;
}

id INCodableDescriptionClassFromType(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) >= 5)
  {
    v3 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = v3;
      v10 = [v8 numberWithInteger:a1];
      v11 = 136315394;
      v12 = "INCodableDescriptionClassFromType";
      v13 = 2112;
      v14 = v10;
      _os_log_fault_impl(&dword_18E991000, v9, OS_LOG_TYPE_FAULT, "%s Unknown type for codable description of type: %@", &v11, 0x16u);
    }

    v1 = off_1E727ABE8;
  }

  else
  {
    v1 = off_1E7288A18[a1 - 1];
  }

  v4 = *v1;
  v5 = objc_opt_class();
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id INCodableAttributeClassFromType(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) >= 5)
  {
    v3 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_FAULT))
    {
      v8 = MEMORY[0x1E696AD98];
      v9 = v3;
      v10 = [v8 numberWithInteger:a1];
      v11 = 136315394;
      v12 = "INCodableAttributeClassFromType";
      v13 = 2112;
      v14 = v10;
      _os_log_fault_impl(&dword_18E991000, v9, OS_LOG_TYPE_FAULT, "%s Unknown type for codable attribute of type: %@", &v11, 0x16u);
    }

    v1 = off_1E727ABA8;
  }

  else
  {
    v1 = off_1E7288A40[a1 - 1];
  }

  v4 = *v1;
  v5 = objc_opt_class();
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id INCodableAttributeMetadataTypeNameWithTypeName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (INCodableAttributeMetadataTypeNameWithTypeName_onceToken != -1)
    {
      dispatch_once(&INCodableAttributeMetadataTypeNameWithTypeName_onceToken, &__block_literal_global_103459);
    }

    v2 = [INCodableAttributeMetadataTypeNameWithTypeName_metadataTypeToAttributeNameMapping objectForKeyedSubscript:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INCodableAttributeMetadataClassWithMetadataTypeName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (INCodableAttributeMetadataClassWithMetadataTypeName_onceToken != -1)
    {
      dispatch_once(&INCodableAttributeMetadataClassWithMetadataTypeName_onceToken, &__block_literal_global_10_103469);
    }

    v2 = [INCodableAttributeMetadataClassWithMetadataTypeName_classForTypeName objectForKeyedSubscript:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBDouble *INIntentSlotValueTransformToDouble(void *a1)
{
  v1 = INIntentSlotValueTransformToDoubleValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBDouble);
    [(_INPBDouble *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBDoubleValue *INIntentSlotValueTransformToDoubleValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBDoubleValue);
    [v1 doubleValue];
    v4 = v3;

    [(_INPBDoubleValue *)v2 setValue:v4];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

INCustomObject *_INObjectWithTypedObject(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [[INCustomObject alloc] initWithObject:v3 codableDescription:v4];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v25 = v4;
  v6 = [v4 attributes];
  v7 = [v6 allValues];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v30;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v30 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v29 + 1) + 8 * i);
        v13 = [v12 propertyName];
        v14 = [v3 valueForKey:v13];
        v15 = v12;
        if (v15)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }

        v17 = v16;

        v18 = [v17 codableDescription];
        v19 = v18;
        if (v14)
        {
          v20 = v18 == 0;
        }

        else
        {
          v20 = 1;
        }

        if (!v20)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v27[0] = MEMORY[0x1E69E9820];
            v27[1] = 3221225472;
            v27[2] = ___INObjectWithTypedObject_block_invoke;
            v27[3] = &unk_1E7286E18;
            v28 = v19;
            v21 = [v14 if_flatMap:v27];

            v14 = v28;
          }

          else
          {
            v14 = v14;
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_20;
            }

            v21 = _INObjectWithTypedObject(v14, v19);
          }

          v14 = v21;
        }

LABEL_20:
        [(INCustomObject *)v5 setValue:v14 forKey:v13];
      }

      v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v9);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v5;
}

void __INCodableAttributeMetadataTypeNameWithTypeName_block_invoke()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = INCodableAttributeMetadataTypeNameWithTypeName_metadataTypeToAttributeNameMapping;
  INCodableAttributeMetadataTypeNameWithTypeName_metadataTypeToAttributeNameMapping = v0;

  v2 = +[INSchema _supportedTypesDictionary];
  v3 = [v2 allValues];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:{@"MetadataTypeName", v14}];
        if (v10)
        {
          v11 = INCodableAttributeMetadataTypeNameWithTypeName_metadataTypeToAttributeNameMapping;
          v12 = [v9 objectForKeyedSubscript:@"Name"];
          [v11 setObject:v10 forKeyedSubscript:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __INCodableAttributeMetadataClassWithMetadataTypeName_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = INCodableAttributeMetadataClassWithMetadataTypeName_classForTypeName;
  INCodableAttributeMetadataClassWithMetadataTypeName_classForTypeName = v0;

  v2 = &unk_1F02E0350;
  [&unk_1F02E0350 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_13_103471];
}

void __INCodableAttributeMetadataClassWithMetadataTypeName_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v4 = [a3 objectForKeyedSubscript:@"Extension"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v13;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INCodable%@AttributeMetadata", v6];
  v8 = INCodableAttributeMetadataClassWithMetadataTypeName_classForTypeName;
  v9 = objc_opt_class();
  v10 = NSClassFromString(v7);
  if (v10)
  {
    v11 = v10;
    if ([(objc_class *)v10 isSubclassOfClass:v9])
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v10 = v12;
  }

  [v8 if_setObjectIfNonNil:v10 forKey:v13];
}

id INIntentSlotValueTransformFromString(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromStringValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentDefinitionNamespacedName(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", a1, v3];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

uint64_t _INPBDoubleReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBDoubleValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBDoubleValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

_INPBImageValue *INIntentSlotValueTransformToImageValue(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v2 = 0;
    goto LABEL_20;
  }

  v2 = objc_alloc_init(_INPBImageValue);
  [v1 _imageSize];
  if (v3 == 0.0 && ([v1 _imageSize], v4 == 0.0))
  {
    v5 = +[INCache sharedCache];
    v6 = [v1 _identifier];
    v7 = [v5 cacheableObjectForIdentifier:v6];

    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        [v8 _imageSize];
        [(_INPBImageValue *)v2 setWidth:?];
        [v8 _imageSize];
        v10 = v9;

        [(_INPBImageValue *)v2 setHeight:v10];
      }
    }
  }

  else
  {
    [v1 _imageSize];
    [(_INPBImageValue *)v2 setWidth:?];
    [v1 _imageSize];
    [(_INPBImageValue *)v2 setHeight:v11];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v1 _imageData];
    [(_INPBImageValue *)v2 setData:v12];
    v13 = 1;
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v1 _URLRepresentation];
    v14 = [v12 absoluteString];
    [(_INPBImageValue *)v2 setUri:v14];

    v13 = 3;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v12 = [v1 _URLRepresentation];
    v15 = [v12 absoluteString];
    [(_INPBImageValue *)v2 setUri:v15];

    v13 = 2;
    goto LABEL_17;
  }

  v13 = 0;
LABEL_18:
  [(_INPBImageValue *)v2 setType:v13];
  v16 = [v1 _renderingMode];
  if (v16 <= 2)
  {
    [(_INPBImageValue *)v2 setRenderingMode:v16];
  }

LABEL_20:

  return v2;
}

uint64_t _INPBDoubleValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v19[0]) & 0x7F) << v5;
        if ((LOBYTE(v19[0]) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v15 = objc_alloc_init(_INPBValueMetadata);
        v19[0] = 0.0;
        v19[1] = 0.0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v15, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v15];
      }

      else if ((v12 >> 3) == 2)
      {
        v19[0] = 0.0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v16 = [a2 data];
          [v16 getBytes:v19 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        [a1 setValue:v19[0]];
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromDouble(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromDoubleValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id INIntentSlotValueTransformFromDoubleValue(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 valueMetadata], v3 = objc_claimAutoreleasedReturnValue(), INPrivacyEntitlementValidateValueMetadata(v3), v3, objc_msgSend(v2, "hasValue")))
  {
    v4 = MEMORY[0x1E696AD98];
    [v2 value];
    v5 = [v4 numberWithDouble:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t _INPBImageValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (LOBYTE(v37[0]) & 0x7F) << v5;
        if ((LOBYTE(v37[0]) & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        if (v13 > 6)
        {
          if (v13 == 8)
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            while (1)
            {
              LOBYTE(v37[0]) = 0;
              v29 = [a2 position] + 1;
              if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
              {
                v31 = [a2 data];
                [v31 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v28 |= (LOBYTE(v37[0]) & 0x7F) << v26;
              if ((LOBYTE(v37[0]) & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v11 = v27++ >= 9;
              if (v11)
              {
                v32 = 0;
                goto LABEL_64;
              }
            }

            if ([a2 hasError])
            {
              v32 = 0;
            }

            else
            {
              v32 = v28;
            }

LABEL_64:
            [a1 setRenderingMode:v32];
            goto LABEL_73;
          }

          if (v13 == 7)
          {
            v17 = 0;
            v18 = 0;
            v19 = 0;
            while (1)
            {
              LOBYTE(v37[0]) = 0;
              v20 = [a2 position] + 1;
              if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
              {
                v22 = [a2 data];
                [v22 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v19 |= (LOBYTE(v37[0]) & 0x7F) << v17;
              if ((LOBYTE(v37[0]) & 0x80) == 0)
              {
                break;
              }

              v17 += 7;
              v11 = v18++ >= 9;
              if (v11)
              {
                v23 = 0;
                goto LABEL_68;
              }
            }

            if ([a2 hasError])
            {
              v23 = 0;
            }

            else
            {
              v23 = v19;
            }

LABEL_68:
            [a1 setType:v23];
            goto LABEL_73;
          }
        }

        else
        {
          if (v13 == 5)
          {
            v14 = PBReaderReadData();
            [a1 setData:v14];
            goto LABEL_46;
          }

          if (v13 == 6)
          {
            v14 = PBReaderReadString();
            [a1 setProxyServiceIdentifier:v14];
            goto LABEL_46;
          }
        }
      }

      else if (v13 > 2)
      {
        if (v13 == 3)
        {
          v37[0] = 0.0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v37 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setWidth:v37[0]];
          goto LABEL_73;
        }

        if (v13 == 4)
        {
          v37[0] = 0.0;
          v15 = [a2 position] + 8;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v37 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          [a1 setHeight:v37[0]];
          goto LABEL_73;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBValueMetadata);
          v37[0] = 0.0;
          v37[1] = 0.0;
          if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v14, a2))
          {

            return 0;
          }

          PBReaderRecallMark();
          [a1 setValueMetadata:v14];
          goto LABEL_46;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          [a1 setUri:v14];
LABEL_46:

          goto LABEL_73;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_73:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t INCodableScalarAttributeTypeFromString(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 isEqualToString:@"Double"];
  if (a2 && (v4 & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 isEqualToString:@"Int32"];
    if (a2 && (v6 & 1) != 0)
    {
      v5 = 2;
    }

    else
    {
      v7 = [v3 isEqualToString:@"Int64"];
      if (a2 && (v7 & 1) != 0)
      {
        v5 = 3;
      }

      else
      {
        v8 = [v3 isEqualToString:@"Bool"];
        if (a2 && (v8 & 1) != 0)
        {
          v5 = 6;
        }

        else if ([v3 isEqualToString:@"String"])
        {
          v5 = 7;
        }

        else if ([v3 isEqualToString:@"Data"])
        {
          v5 = 8;
        }

        else
        {
          v5 = -1;
        }
      }
    }
  }

  return v5;
}

uint64_t INCodableStringAttributeMetadataCapitalizationWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"None"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Words"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Sentences"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"AllCharacters"])
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t INCodablePlacemarkAttributeMetadataTypeWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Name"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Address"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"City"])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _INParameterCombinationsWithDictionary(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v28 = a2;
  v27 = a3;
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v29 = v5;
  obj = [v5 allKeys];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      v10 = 0;
      do
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * v10);
        v12 = [v29 objectForKeyedSubscript:v11];
        v13 = MEMORY[0x1E695DFD8];
        v14 = [v11 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F01E0850];
        v15 = [v14 componentsSeparatedByString:{@", "}];
        v16 = [v13 setWithArray:v15];

        if (_INParameterCombinationsWithDictionary_onceToken != -1)
        {
          dispatch_once(&_INParameterCombinationsWithDictionary_onceToken, &__block_literal_global_272);
        }

        v17 = [v16 filteredSetUsingPredicate:_INParameterCombinationsWithDictionary_predicate];

        v18 = objc_alloc_init(INParameterCombination);
        v19 = [v12 objectForKeyedSubscript:@"INIntentParameterCombinationUnsupportedPlatforms"];
        [(INParameterCombination *)v18 updateWithDictionary:v12];
        v20 = [INCodableLocalizationTable alloc];
        v21 = [v28 stringByDeletingPathExtension];
        v22 = [(INCodableLocalizationTable *)v20 initWithBundleIdentifier:v27 tableName:v21];
        [(INParameterCombination *)v18 _setLocalizationTable:v22];

        [v6 setObject:v18 forKeyedSubscript:v17];
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  v23 = [v6 copy];
  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

uint64_t INIntentCategoryWithString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"information"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"playAudio"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"playVideo"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"order"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"navigation"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"start"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"share"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"create"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"search"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"toggle"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"download"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"log"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"checkIn"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"workflow"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"request"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"set"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"callAudio"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"callVideo"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"playSound"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"userActivity"])
  {
    v2 = 20;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void *INTypedIntentWithIntent(void *a1)
{
  v1 = a1;
  v2 = [v1 _className];
  v3 = objc_opt_class();
  v4 = NSClassFromString(v2);
  if (!v4 || (v5 = v4, ([(objc_class *)v4 isSubclassOfClass:v3]& 1) == 0))
  {
    v10 = v1;
    goto LABEL_6;
  }

  v6 = v5;
  v7 = v5;

  v8 = [v1 backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = v1;
  if (isKindOfClass)
  {
    v11 = [v7 alloc];
    v12 = [v1 identifier];
    v13 = [v1 backingStore];
    v10 = [v11 initWithIdentifier:v12 backingStore:v13];

    v14 = [v1 launchId];
    [v10 _setLaunchId:v14];

    v15 = [v1 extensionBundleId];
    [v10 _setExtensionBundleId:v15];

    v16 = [v1 suggestedInvocationPhrase];
    [v10 setSuggestedInvocationPhrase:v16];

    v17 = [v1 _parameterCombinations];
    [v10 _setParameterCombinations:v17];

    v2 = [v1 _parameterContexts];
    [v10 _setParameterContexts:v2];
LABEL_6:
  }

  v18 = v10;

  return v10;
}

_INPBProperty *INIntentSlotValueTransformToProperty(void *a1, void *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(_INPBProperty);
  v6 = v3;
  v7 = objc_alloc_init(_INPBIntentSlotValue);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(_INPBIntentSlotValue *)v7 setType:53];
      v10 = v6;
      v11 = objc_alloc_init(_INPBContactList);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v12 = v10;
      v13 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v39;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v39 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = INIntentSlotValueTransformToContact(*(*(&v38 + 1) + 8 * i));
            [(_INPBContactList *)v11 addContact:v17];
          }

          v14 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v14);
      }

      [(_INPBIntentSlotValue *)v7 addPayloadContactList:v11];
LABEL_11:

      goto LABEL_43;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_INPBIntentSlotValue *)v7 setType:4];
    v18 = INIntentSlotValueTransformToContactValue(v6);
    [(_INPBIntentSlotValue *)v7 addPayloadContactValue:v18];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(_INPBIntentSlotValue *)v7 setType:1];
      v18 = INIntentSlotValueTransformToStringValue(v6);
      [(_INPBIntentSlotValue *)v7 addPayloadStringValue:v18];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v6 firstObject];
        objc_opt_class();
        v20 = objc_opt_isKindOfClass();

        if (v20)
        {
          [(_INPBIntentSlotValue *)v7 setType:50];
          v21 = v6;
          v11 = objc_alloc_init(_INPBStringList);
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v12 = v21;
          v22 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v22)
          {
            v23 = v22;
            v24 = *v39;
            do
            {
              for (j = 0; j != v23; ++j)
              {
                if (*v39 != v24)
                {
                  objc_enumerationMutation(v12);
                }

                v26 = INIntentSlotValueTransformToString(*(*(&v38 + 1) + 8 * j));
                [(_INPBContactList *)v11 addDataString:v26];
              }

              v23 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
            }

            while (v23);
          }

          [(_INPBIntentSlotValue *)v7 addPayloadStringList:v11];
          goto LABEL_11;
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(_INPBIntentSlotValue *)v7 setType:2];
        v18 = INIntentSlotValueTransformToDoubleValue(v6);
        [(_INPBIntentSlotValue *)v7 addPayloadDoubleValue:v18];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = [v6 firstObject];
          objc_opt_class();
          v28 = objc_opt_isKindOfClass();

          if (v28)
          {
            [(_INPBIntentSlotValue *)v7 setType:51];
            v29 = v6;
            v11 = objc_alloc_init(_INPBDoubleList);
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v41 = 0u;
            v12 = v29;
            v30 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v39;
              do
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v39 != v32)
                  {
                    objc_enumerationMutation(v12);
                  }

                  v34 = INIntentSlotValueTransformToDouble(*(*(&v38 + 1) + 8 * k));
                  [(_INPBContactList *)v11 addDataString:v34];
                }

                v31 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
              }

              while (v31);
            }

            [(_INPBIntentSlotValue *)v7 addPayloadDoubleList:v11];
            goto LABEL_11;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(_INPBIntentSlotValue *)v7 setType:105];
          v18 = INIntentSlotValueTransformToDateTime(v6);
          [(_INPBIntentSlotValue *)v7 addPayloadDateTimeValue:v18];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"Property of the type of object %@ is not yet supported.", v6];
            v37 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
            objc_exception_throw(v37);
          }

          [(_INPBIntentSlotValue *)v7 setType:6];
          v18 = INIntentSlotValueTransformToLocationValue(v6);
          [(_INPBIntentSlotValue *)v7 addPayloadLocation:v18];
        }
      }
    }
  }

LABEL_43:
  [(_INPBProperty *)v5 setPayload:v7];
  [(_INPBProperty *)v5 setRole:v4];

  v35 = *MEMORY[0x1E69E9840];

  return v5;
}

_INPBStringValue *INIntentSlotValueTransformToStringValue(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(_INPBStringValue);
    [(_INPBStringValue *)v2 setValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t INThisProcessIsDonatingBySiri()
{
  if (INThisProcessIsDonatingBySiri_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsDonatingBySiri_onceToken, &__block_literal_global_54);
  }

  if (INThisProcessIsAssistantd_onceToken != -1)
  {
    dispatch_once(&INThisProcessIsAssistantd_onceToken, &__block_literal_global_75004);
  }

  if (INThisProcessIsAssistantd_isAssistantd & 1) != 0 || ([INThisProcessIsDonatingBySiri_bundleIdentifier isEqualToString:@"com.apple.springboard"] & 1) != 0 || (objc_msgSend(INThisProcessIsDonatingBySiri_bundleIdentifier, "isEqualToString:", @"com.apple.AppPredictionWidget.Siri.ActionPredictionNotificationContentIntents"))
  {
    return 1;
  }

  v1 = INThisProcessIsDonatingBySiri_bundleIdentifier;

  return [v1 isEqualToString:@"com.apple.WorkflowKit.ShortcutsIntents"];
}

void *INInteractionWithTypedInteraction(void *a1)
{
  v1 = a1;
  v2 = [v1 intent];
  v3 = [v2 backingStore];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = v1;
  if (isKindOfClass)
  {
    v5 = [v1 copy];

    v6 = [v1 intent];
    v7 = INIntentWithTypedIntent(v6);
    v8 = v5[1];
    v5[1] = v7;

    v9 = [v1 intentResponse];
    v10 = INIntentResponseWithTypedIntentResponse(v9);
    v11 = v5[2];
    v5[2] = v10;
  }

  return v5;
}

id INIntentCreate(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v20 = 0;
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:0 error:&v20];
    v6 = v20;
    if (v5)
    {
      v7 = INIntentCreateFromDictionary(v3, v5);
      goto LABEL_21;
    }
  }

  else
  {
    v6 = 0;
  }

  if (!v3)
  {
    v7 = 0;
    goto LABEL_22;
  }

  v8 = INIntentSchemaGetIntentDescriptionWithType(v3);
  v5 = v8;
  if (v8)
  {
    v9 = [v8 dataClass];
    v10 = v4 == 0;
    if (!v9)
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = 0;
    }

    else
    {
      v11 = [[v9 alloc] initWithData:v4];
    }

    v15 = [v5 facadeClass];
    v7 = 0;
    if (v15 && v11)
    {
      v7 = [[v15 alloc] initWithIdentifier:0 backingStore:v11];
    }
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v12 = INSchemaWithTypeName(v3, &v19, &v18);
    v11 = v19;
    v13 = v18;
    if (v12)
    {
      v7 = [[INIntent alloc] _initWithIdentifier:0 schema:v12 name:v11 data:v4];
      v14 = [v12 _mainBundleIdentifier];
      [v7 _setLaunchId:v14];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_21:
LABEL_22:

  v16 = *MEMORY[0x1E69E9840];

  return v7;
}

id INMessagesDomainGetIntentDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INMessagesDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INMessagesDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_5400);
    }

    v2 = [sMessagesDomain_intentDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformToContacts(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformToContact(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformFromContacts(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = INIntentSlotValueTransformFromContact(*(*(&v12 + 1) + 8 * i));
          if (v8)
          {
            [v2 addObject:{v8, v12}];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    v9 = [v2 copy];
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformToDataStrings(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToDataString(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void INMessageAttributeOptionsEnumerateBackingTypes(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1 || !v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  if (a1)
  {
    (*(v3 + 2))(v3, 1);
    v3 = v4;
    if ((a1 & 2) == 0)
    {
LABEL_5:
      if ((a1 & 4) == 0)
      {
        goto LABEL_6;
      }

LABEL_14:
      (*(v3 + 2))(v4, 3);
      v3 = v4;
      if ((a1 & 8) == 0)
      {
LABEL_7:
        if ((a1 & 0x10) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_5;
  }

  (*(v3 + 2))(v4, 2);
  v3 = v4;
  if ((a1 & 4) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((a1 & 8) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  (*(v3 + 2))(v4, 4);
  v3 = v4;
  if ((a1 & 0x10) != 0)
  {
LABEL_8:
    (*(v3 + 2))(v4, 5);
    v3 = v4;
  }

LABEL_9:
}

id INIntentSlotValueTransformToStrings(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformToString(*(*(&v11 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v11}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v2;
}

_INPBDateTimeRange *INIntentSlotValueTransformToDateTimeRange(void *a1)
{
  v1 = INIntentSlotValueTransformToDateTimeRangeValue(a1);
  if (v1)
  {
    v2 = objc_alloc_init(_INPBDateTimeRange);
    [(_INPBDateTimeRange *)v2 addValue:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

_INPBDateTimeRangeValue *INIntentSlotValueTransformToDateTimeRangeValue(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_alloc_init(_INPBDateTimeRangeValue);
    v3 = [v1 startDateComponents];
    v4 = INIntentSlotValueTransformToDateTime(v3);

    [(_INPBDateTimeRangeValue *)v2 setStartDateTime:v4];
    -[_INPBDateTimeRangeValue setStartCalendar:](v2, "setStartCalendar:", [v4 calendarSystem]);
    v5 = [v1 endDateComponents];
    v6 = INIntentSlotValueTransformToDateTime(v5);

    [(_INPBDateTimeRangeValue *)v2 setEndDateTime:v6];
    -[_INPBDateTimeRangeValue setEndCalendar:](v2, "setEndCalendar:", [v6 calendarSystem]);
    v7 = [v1 recurrenceRule];

    if (v7)
    {
      v8 = objc_alloc_init(_INPBRecurrenceValue);
      v9 = [v1 recurrenceRule];
      -[_INPBRecurrenceValue setInterval:](v8, "setInterval:", [v9 interval]);

      v10 = [v1 recurrenceRule];
      v11 = [v10 frequency];
      if (v11 > 6)
      {
        v12 = 0x7FFFFFFFLL;
      }

      else
      {
        v12 = dword_18EE5E5E0[v11];
      }

      [(_INPBRecurrenceValue *)v8 setFrequency:v12];

      v13 = [v1 startDateComponents];
      v14 = [v13 weekdayOrdinal];

      if (v14 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = [v1 startDateComponents];
        -[_INPBRecurrenceValue setOrdinal:](v8, "setOrdinal:", [v15 weekdayOrdinal]);
      }

      v16 = [v1 recurrenceRule];
      v17 = [v16 weeklyRecurrenceDays];

      if (v17)
      {
        for (i = 0; i != 7; ++i)
        {
          if ((v17 & (1 << i)) != 0)
          {
            [(_INPBRecurrenceValue *)v8 addWeeklyRecurrenceDays:(i + 1)];
          }
        }
      }

      [(_INPBDateTimeRangeValue *)v2 setRecurrence:v8];
    }

    v19 = [v1 userInput];
    if (v19)
    {
      v20 = objc_alloc_init(_INPBValueMetadata);
      [(_INPBValueMetadata *)v20 setInput:v19];
      [(_INPBDateTimeRangeValue *)v2 setValueMetadata:v20];
    }

    v21 = [v1 allDay];

    if (v21)
    {
      v22 = [v1 allDay];
      -[_INPBDateTimeRangeValue setAllDay:](v2, "setAllDay:", [v22 BOOLValue]);
    }

    else
    {
      [(_INPBDateTimeRangeValue *)v2 setHasAllDay:0];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSlotValueTransformFromDataStrings(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromDataString(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id INIntentSlotValueTransformFromStringValue(void *a1)
{
  v1 = a1;
  v2 = [v1 valueMetadata];
  INPrivacyEntitlementValidateValueMetadata(v2);

  v3 = [v1 value];
  v4 = [v3 copy];

  return v4;
}

id INLocalAppBundleIdentifierForIntentBundleIdentifier(void *a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *v24 = 136315394;
    *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
    *&v24[12] = 2112;
    *&v24[14] = v1;
    _os_log_impl(&dword_18E991000, v2, OS_LOG_TYPE_INFO, "%s Looking for local app bundle identifier for intent bundle identifier: %@", v24, 0x16u);
  }

  if (!v1 || ![v1 length])
  {
    v6 = v1;
    goto LABEL_31;
  }

  v3 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:v1];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *v24 = 136315394;
      *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
      *&v24[12] = 2112;
      *&v24[14] = v4;
      _os_log_impl(&dword_18E991000, v5, OS_LOG_TYPE_INFO, "%s originalBundleProxy is a LSApplicationProxy: %@", v24, 0x16u);
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
LABEL_19:
    v10 = [v4 appState];
    v11 = [v10 isInstalled];

    v12 = INSiriLogContextIntents;
    v13 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
    if (!v11)
    {
      if (v13)
      {
        *v24 = 136315394;
        *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
        *&v24[12] = 2112;
        *&v24[14] = v4;
        _os_log_impl(&dword_18E991000, v12, OS_LOG_TYPE_INFO, "%s Has app proxy but it is not installed: %@", v24, 0x16u);
        v12 = INSiriLogContextIntents;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315650;
        *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
        *&v24[12] = 2112;
        *&v24[14] = v3;
        *&v24[22] = 2112;
        v25 = v4;
        _os_log_error_impl(&dword_18E991000, v12, OS_LOG_TYPE_ERROR, "%s Didn't find any installed apps for originalBundleProxy: %@, appProxy: %@; returning nil", v24, 0x20u);
      }

      v6 = 0;
      goto LABEL_30;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v14 = v12;
    v15 = [v4 bundleIdentifier];
    *v24 = 136315394;
    *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
    *&v24[12] = 2114;
    *&v24[14] = v15;
    v16 = "%s Original app (with bundleID=%{public}@) is installed; choosing that";
    goto LABEL_22;
  }

  v7 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *v24 = 136315138;
    *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
    _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s originalBundleProxy is a LSPlugInKitProxy", v24, 0xCu);
  }

  v4 = _INContainingBundleProxyWithBundleProxy(v3);
  v8 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    *v24 = 136315394;
    *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
    *&v24[12] = 2112;
    *&v24[14] = v4;
    _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s Containing bundle proxy: %@", v24, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v4;
    v9 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      *v24 = 136315394;
      *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
      *&v24[12] = 2112;
      *&v24[14] = v4;
      _os_log_impl(&dword_18E991000, v9, OS_LOG_TYPE_INFO, "%s containing bundle proxy is a LSApplicationProxy: %@", v24, 0x16u);
    }

    goto LABEL_19;
  }

  v20 = INSiriLogContextIntents;
  v21 = os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO);
  if (!v4)
  {
    if (v21)
    {
      v22 = v20;
      v23 = [0 bundleIdentifier];
      *v24 = 136315394;
      *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
      *&v24[12] = 2114;
      *&v24[14] = v23;
      _os_log_impl(&dword_18E991000, v22, OS_LOG_TYPE_INFO, "%s Original bundle proxy (with bundleID=%{public}@) is not app and containingBundleProxy is nil but it still exists; choosing that", v24, 0x16u);
    }

    v17 = v3;
    goto LABEL_24;
  }

  if (v21)
  {
    v14 = v20;
    v15 = [v4 bundleIdentifier];
    *v24 = 136315394;
    *&v24[4] = "INLocalAppBundleIdentifierForIntentBundleIdentifier";
    *&v24[12] = 2114;
    *&v24[14] = v15;
    v16 = "%s Containing bundle proxy is not app (with bundleID=%{public}@) but it still exists; choosing that";
LABEL_22:
    _os_log_impl(&dword_18E991000, v14, OS_LOG_TYPE_INFO, v16, v24, 0x16u);
  }

LABEL_23:
  v17 = v4;
LABEL_24:
  v6 = [v17 bundleIdentifier];
LABEL_30:

LABEL_31:
  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

uint64_t _INPBSearchForMessagesIntentReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = off_1E727C000;
    v6 = off_1E727B000;
    v7 = off_1E727C000;
    v8 = off_1E727B000;
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        LOBYTE(v37) = 0;
        v12 = [a2 position] + 1;
        if (v12 >= [a2 position] && (v13 = objc_msgSend(a2, "position") + 1, v13 <= objc_msgSend(a2, "length")))
        {
          v14 = [a2 data];
          [v14 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v11 |= (v37 & 0x7F) << v9;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [a2 hasError] ? 0 : v11;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v17 = v16 >> 3;
      if ((v16 >> 3) > 6)
      {
        if (v17 > 9)
        {
          switch(v17)
          {
            case 0xA:
              v18 = objc_alloc_init(v7[315]);
              v37 = 0;
              v38 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringListReadFrom(v18, a2))
              {
LABEL_102:

                return 0;
              }

              PBReaderRecallMark();
              [a1 setGroupName:v18];
              goto LABEL_82;
            case 0xB:
              v18 = objc_alloc_init(_INPBDataStringList);
              v37 = 0;
              v38 = 0;
              if (!PBReaderPlaceMark() || !_INPBDataStringListReadFrom(v18, a2))
              {
                goto LABEL_102;
              }

              PBReaderRecallMark();
              [a1 setSpeakableGroupName:v18];
              goto LABEL_82;
            case 0xC:
              v18 = objc_alloc_init(v7[315]);
              v37 = 0;
              v38 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringListReadFrom(v18, a2))
              {
                goto LABEL_102;
              }

              PBReaderRecallMark();
              [a1 setConversationIdentifier:v18];
              goto LABEL_82;
          }
        }

        else
        {
          switch(v17)
          {
            case 7:
              v18 = objc_alloc_init(v7[315]);
              v37 = 0;
              v38 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringListReadFrom(v18, a2))
              {
                goto LABEL_102;
              }

              PBReaderRecallMark();
              [a1 setIdentifier:v18];
              goto LABEL_82;
            case 8:
              v18 = objc_alloc_init(v7[315]);
              v37 = 0;
              v38 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringListReadFrom(v18, a2))
              {
                goto LABEL_102;
              }

              PBReaderRecallMark();
              [a1 setNotificationIdentifier:v18];
              goto LABEL_82;
            case 9:
              v18 = objc_alloc_init(v7[315]);
              v37 = 0;
              v38 = 0;
              if (!PBReaderPlaceMark() || !_INPBStringListReadFrom(v18, a2))
              {
                goto LABEL_102;
              }

              PBReaderRecallMark();
              [a1 setSearchTerm:v18];
              goto LABEL_82;
          }
        }
      }

      else if (v17 > 3)
      {
        switch(v17)
        {
          case 4:
            v18 = objc_alloc_init(v7[315]);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !_INPBStringListReadFrom(v18, a2))
            {
              goto LABEL_102;
            }

            PBReaderRecallMark();
            [a1 setContent:v18];
            goto LABEL_82;
          case 5:
            if ((v16 & 7) == 2)
            {
              v37 = 0;
              v38 = 0;
              result = PBReaderPlaceMark();
              if (!result)
              {
                return result;
              }

              v20 = v8;
              v21 = v6;
              v22 = v5;
              while (1)
              {
                v23 = [a2 position];
                if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
                {
                  break;
                }

                v24 = 0;
                v25 = 0;
                v26 = 0;
                while (1)
                {
                  v39 = 0;
                  v27 = [a2 position] + 1;
                  if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                  {
                    v29 = [a2 data];
                    [v29 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

                    [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                  }

                  else
                  {
                    [a2 _setError];
                  }

                  v26 |= (v39 & 0x7F) << v24;
                  if ((v39 & 0x80) == 0)
                  {
                    break;
                  }

                  v24 += 7;
                  v15 = v25++ >= 9;
                  if (v15)
                  {
                    goto LABEL_78;
                  }
                }

                [a2 hasError];
LABEL_78:
                PBRepeatedInt32Add();
              }

              PBReaderRecallMark();
            }

            else
            {
              v20 = v8;
              v21 = v6;
              v22 = v5;
              v31 = 0;
              v32 = 0;
              v33 = 0;
              while (1)
              {
                LOBYTE(v37) = 0;
                v34 = [a2 position] + 1;
                if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
                {
                  v36 = [a2 data];
                  [v36 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v33 |= (v37 & 0x7F) << v31;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v31 += 7;
                v15 = v32++ >= 9;
                if (v15)
                {
                  goto LABEL_98;
                }
              }

              [a2 hasError];
LABEL_98:
              PBRepeatedInt32Add();
            }

            v5 = v22;
            v6 = v21;
            v8 = v20;
            v7 = off_1E727C000;
            goto LABEL_83;
          case 6:
            v18 = objc_alloc_init(v8[481]);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !_INPBDateTimeRangeReadFrom(v18, a2))
            {
              goto LABEL_102;
            }

            PBReaderRecallMark();
            [a1 setDateTimeRange:v18];
            goto LABEL_82;
        }
      }

      else
      {
        switch(v17)
        {
          case 1:
            v18 = objc_alloc_init(v5[63]);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !_INPBIntentMetadataReadFrom(v18, a2))
            {
              goto LABEL_102;
            }

            PBReaderRecallMark();
            [a1 setIntentMetadata:v18];
            goto LABEL_82;
          case 2:
            v18 = objc_alloc_init(v6[455]);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactListReadFrom(v18, a2))
            {
              goto LABEL_102;
            }

            PBReaderRecallMark();
            [a1 setRecipient:v18];
            goto LABEL_82;
          case 3:
            v18 = objc_alloc_init(v6[455]);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !_INPBContactListReadFrom(v18, a2))
            {
              goto LABEL_102;
            }

            PBReaderRecallMark();
            [a1 setSender:v18];
LABEL_82:

            goto LABEL_83;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_83:
      v30 = [a2 position];
    }

    while (v30 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBStringListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setConditionType:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBStringReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addDataString:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBContactListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setCondition:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBContact);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addContact:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDataStringListReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(_INPBCondition);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBConditionReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setConditionType:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBDataString);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addDataString:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

id INMessagesDomainGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INMessagesDomainLoadIntentDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INMessagesDomainLoadIntentDescriptionIfNeeded_onceToken, &__block_literal_global_5400);
    }

    v2 = [sMessagesDomain_intentDescsByType objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id INIntentSchemaGetIntentDescriptionWithType(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (INIntentSchemaGetIntentDescriptionWithType_onceToken != -1)
    {
      dispatch_once(&INIntentSchemaGetIntentDescriptionWithType_onceToken, &__block_literal_global_734);
    }

    v2 = [INIntentSchemaGetIntentDescriptionWithType_map objectForKey:v1];
    v3 = [v2 integerValue];

    switch(v3)
    {
      case 1:
        v4 = INAlarmDomainGetIntentDescriptionWithType(v1);
        break;
      case 2:
        v4 = INCalendarEventDomainGetIntentDescriptionWithType(v1);
        break;
      case 3:
        v4 = INCallsDomainGetIntentDescriptionWithType(v1);
        break;
      case 4:
        v4 = INCarPlayDomainGetIntentDescriptionWithType(v1);
        break;
      case 5:
        v4 = INContactDomainGetIntentDescriptionWithType(v1);
        break;
      case 6:
        v4 = INFilesDomainGetIntentDescriptionWithType(v1);
        break;
      case 7:
        v4 = INFindDeviceDomainGetIntentDescriptionWithType(v1);
        break;
      case 8:
        v4 = INFocusStatusDomainGetIntentDescriptionWithType(v1);
        break;
      case 9:
        v4 = INGeoDomainGetIntentDescriptionWithType(v1);
        break;
      case 10:
        v4 = INHomeCommunicationDomainGetIntentDescriptionWithType(v1);
        break;
      case 11:
        v4 = INHomeKitDomainGetIntentDescriptionWithType(v1);
        break;
      case 12:
        v4 = INMediaDomainGetIntentDescriptionWithType(v1);
        break;
      case 13:
        v4 = INMessagesDomainGetIntentDescriptionWithType(v1);
        break;
      case 14:
        v4 = INNotebookDomainGetIntentDescriptionWithType(v1);
        break;
      case 15:
        v4 = INPaymentsDomainGetIntentDescriptionWithType(v1);
        break;
      case 16:
        v4 = INPhotosDomainGetIntentDescriptionWithType(v1);
        break;
      case 17:
        v4 = INRRaaSDomainGetIntentDescriptionWithType(v1);
        break;
      case 18:
        v4 = INRadioDomainGetIntentDescriptionWithType(v1);
        break;
      case 19:
        v4 = INReservationsDomainGetIntentDescriptionWithType(v1);
        break;
      case 20:
        v4 = INRidesharingDomainGetIntentDescriptionWithType(v1);
        break;
      case 21:
        v4 = INSettingsDomainGetIntentDescriptionWithType(v1);
        break;
      case 22:
        v4 = INTimersDomainGetIntentDescriptionWithType(v1);
        break;
      case 23:
        v4 = INVisualCodeDomainGetIntentDescriptionWithType(v1);
        break;
      case 24:
        v4 = INVoiceCommandsDomainGetIntentDescriptionWithType(v1);
        break;
      case 25:
        v4 = INWellnessDomainGetIntentDescriptionWithType(v1);
        break;
      case 26:
        v4 = INWorkflowDomainGetIntentDescriptionWithType(v1);
        break;
      case 27:
        v4 = INWorkoutsDomainGetIntentDescriptionWithType(v1);
        break;
      case 28:
        v4 = INGenericDomainGetIntentDescriptionWithType(v1);
        break;
      default:
        goto LABEL_6;
    }

    v5 = v4;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  return v5;
}

uint64_t __INEnumerateObjectsInIntentSlotComposing_block_invoke(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t INEnumerateObjectsInIntentSlotComposing(void *a1, void *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v3 intentSlotDescriptions];
  v5 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v5)
  {
    v21 = 0;
    v6 = *v36;
    v19 = *v36;
    v20 = v3;
    do
    {
      v7 = 0;
      v22 = v5;
      do
      {
        if (*v36 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v35 + 1) + 8 * v7) facadePropertyName];
        v31 = 0;
        v32 = &v31;
        v33 = 0x2020000000;
        v34 = 0;
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __INEnumerateObjectsInIntentSlotComposing_block_invoke;
        v28[3] = &unk_1E727FE38;
        v30 = &v31;
        v29 = v4;
        v9 = MEMORY[0x193AD7780](v28);
        v10 = [v3 valueForKey:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v12 = v11;
          v13 = [v12 countByEnumeratingWithState:&v24 objects:v39 count:16];
          v14 = v4;
          if (v13)
          {
            v15 = *v25;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v25 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v9[2](v9, *(*(&v24 + 1) + 8 * i));
              }

              v13 = [v12 countByEnumeratingWithState:&v24 objects:v39 count:16];
            }

            while (v13);
          }

          v4 = v14;
          v6 = v19;
          v3 = v20;
          v5 = v22;
        }

        else
        {
          (v9)[2](v9, v10);
        }

        if (*(v32 + 24) == 1)
        {
          [v3 setValue:v10 forKey:v8];
          v21 = 1;
        }

        _Block_object_dispose(&v31, 8);
        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v5);
  }

  else
  {
    v21 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v21 & 1;
}

id _INEnumerableValueProcessingBlock(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___INEnumerableValueProcessingBlock_block_invoke;
  v7[3] = &unk_1E72864F8;
  v8 = v3;
  v9 = a1;
  v4 = v3;
  v5 = MEMORY[0x193AD7780](v7);

  return v5;
}

id INMessageAttributeOptionsGetNames(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"read"];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_15;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"unread"];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }

LABEL_15:
    [v3 addObject:@"flagged"];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
LABEL_8:
        v4 = [v3 copy];

        goto LABEL_10;
      }

LABEL_7:
      [v3 addObject:@"played"];
      goto LABEL_8;
    }

LABEL_16:
    [v3 addObject:@"unflagged"];
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = MEMORY[0x1E695E0F0];
LABEL_10:

  return v4;
}

id INIntentSlotValueTransformFromStrings(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = INIntentSlotValueTransformFromString(*(*(&v12 + 1) + 8 * i));
        if (v8)
        {
          [v2 addObject:{v8, v12}];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

uint64_t *INMessageAttributeOptionsAddBackingType(uint64_t *result, int a2)
{
  if (result)
  {
    v2 = *result;
    v3 = *result | 4;
    v4 = *result | 8;
    v5 = *result | 0x10;
    if (a2 != 5)
    {
      v5 = *result;
    }

    if (a2 != 4)
    {
      v4 = v5;
    }

    if (a2 != 3)
    {
      v3 = v4;
    }

    v6 = v2 | 1;
    if (a2 == 2)
    {
      v2 |= 2uLL;
    }

    if (a2 == 1)
    {
      v2 = v6;
    }

    if (a2 > 2)
    {
      v2 = v3;
    }

    *result = v2;
  }

  return result;
}

id INIntentSlotValueTransformFromDateTimeRange(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 values];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = INIntentSlotValueTransformFromDateTimeRangeValue(*(*(&v10 + 1) + 8 * i));
        if (v6)
        {
          v7 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void sub_18E9AB768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18E9ABA7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _INPBSendMessageIntentResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBMessage);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !_INPBMessageReadFrom(v13, a2))
        {
          goto LABEL_31;
        }

        PBReaderRecallMark();
        [a1 setSentMessage:v13];
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(_INPBMessage);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !_INPBMessageReadFrom(v13, a2))
    {
LABEL_31:

      return 0;
    }

    PBReaderRecallMark();
    if (v13)
    {
      [a1 addSentMessages:v13];
    }

    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

id INIntentSlotValueTransformFromDataString(void *a1)
{
  v1 = a1;
  v2 = [v1 vocabularyIdentifier];
  if (v2 || ([v1 localizedValue], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [INSpeakableString alloc];
    v4 = [v1 vocabularyIdentifier];
    v5 = [v1 localizedValue];
    v6 = [v5 _intents_decodeFromProto];
    v7 = [v1 pronunciationHint];
    v8 = [v7 _intents_decodeFromProto];
    v9 = [v1 alternatives];
    v10 = INIntentSlotValueTransformFromDataStrings();
    v11 = [(INSpeakableString *)v3 _initWithVocabularyIdentifier:v4 spokenPhrase:v6 pronunciationHint:v8 alternativeMatches:v10];

    if (v2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = 0;
    v11 = 0;
  }

LABEL_7:

  return v11;
}

id INIntentSchemaGetIntentResponseDescriptionWithFacadeClass(objc_class *a1)
{
  if (a1)
  {
    v1 = NSStringFromClass(a1);
    if ([v1 hasPrefix:@"IN"])
    {
      v2 = [v1 substringFromIndex:2];
      v3 = INIntentSchemaGetIntentResponseDescriptionWithName(v2);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id INIntentSchemaGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (INIntentSchemaGetIntentResponseDescriptionWithName_onceToken != -1)
    {
      dispatch_once(&INIntentSchemaGetIntentResponseDescriptionWithName_onceToken, &__block_literal_global_1425);
    }

    v2 = [INIntentSchemaGetIntentResponseDescriptionWithName_map objectForKey:v1];
    v3 = [v2 integerValue];

    switch(v3)
    {
      case 1:
        v4 = INAlarmDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 2:
        v4 = INCalendarEventDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 3:
        v4 = INCallsDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 4:
        v4 = INCarPlayDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 5:
        v4 = INContactDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 6:
        v4 = INFilesDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 7:
        v4 = INFindDeviceDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 8:
        v4 = INFocusStatusDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 9:
        v4 = INGeoDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 10:
        v4 = INHomeCommunicationDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 11:
        v4 = INHomeKitDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 12:
        v4 = INMediaDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 13:
        v4 = INMessagesDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 14:
        v4 = INNotebookDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 15:
        v4 = INPaymentsDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 16:
        v4 = INPhotosDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 17:
        v4 = INRRaaSDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 18:
        v4 = INRadioDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 19:
        v4 = INReservationsDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 20:
        v4 = INRidesharingDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 21:
        v4 = INSettingsDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 22:
        v4 = INTimersDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 23:
        v4 = INVisualCodeDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 24:
        v4 = INVoiceCommandsDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 25:
        v4 = INWellnessDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 26:
        v4 = INWorkflowDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 27:
        v4 = INWorkoutsDomainGetIntentResponseDescriptionWithName(v1);
        break;
      case 28:
        v4 = INGenericDomainGetIntentResponseDescriptionWithName(v1);
        break;
      default:
        goto LABEL_6;
    }

    v5 = v4;
  }

  else
  {
LABEL_6:
    v5 = 0;
  }

  return v5;
}

id INMessagesDomainGetIntentResponseDescriptionWithName(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (_INMessagesDomainLoadIntentResponseDescriptionIfNeeded_onceToken != -1)
    {
      dispatch_once(&_INMessagesDomainLoadIntentResponseDescriptionIfNeeded_onceToken, &__block_literal_global_5845);
    }

    v2 = [sMessagesDomain_intentResponseDescsByName objectForKey:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _INPBMessageReadFrom(void *a1, void *a2)
{
  v4 = a2;
  while (2)
  {
    v5 = [v4 position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v43) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v43 & 0x7F) << v6;
      if ((v43 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v13 >> 3))
    {
      case 1u:
        v14 = objc_alloc_init(_INPBContact);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addRecipient:v14];
        }

        goto LABEL_110;
      case 2u:
        v14 = objc_alloc_init(_INPBContact);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setSender:v14];
        goto LABEL_110;
      case 3u:
        v14 = PBReaderReadString();
        [a1 setContent:v14];
        goto LABEL_110;
      case 4u:
        if ((v13 & 7) == 2)
        {
          v43 = 0;
          v44 = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v23 = [a2 position];
            if (v23 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v24 = 0;
            v25 = 0;
            v26 = 0;
            while (1)
            {
              v45 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v45 & 0x7F) << v24;
              if ((v45 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v12 = v25++ >= 9;
              if (v12)
              {
                goto LABEL_74;
              }
            }

            [a2 hasError];
LABEL_74:
            PBRepeatedInt32Add();
          }

          PBReaderRecallMark();
        }

        else
        {
          v37 = 0;
          v38 = 0;
          v39 = 0;
          while (1)
          {
            LOBYTE(v43) = 0;
            v40 = [a2 position] + 1;
            if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
            {
              v42 = [a2 data];
              [v42 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v39 |= (v43 & 0x7F) << v37;
            if ((v43 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v12 = v38++ >= 9;
            if (v12)
            {
              goto LABEL_131;
            }
          }

          [a2 hasError];
LABEL_131:
          PBRepeatedInt32Add();
        }

        goto LABEL_111;
      case 5u:
        v14 = objc_alloc_init(_INPBDateTime);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setDateSent:v14];
        goto LABEL_110;
      case 6u:
        v14 = PBReaderReadString();
        [a1 setIdentifier:v14];
        goto LABEL_110;
      case 7u:
        v14 = PBReaderReadString();
        [a1 setGroupName:v14];
        goto LABEL_110;
      case 8u:
        v14 = PBReaderReadString();
        [a1 setConversationIdentifier:v14];
        goto LABEL_110;
      case 9u:
        v14 = objc_alloc_init(_INPBDataString);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBDataStringReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setSpeakableGroupName:v14];
        goto LABEL_110;
      case 0xAu:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          LOBYTE(v43) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v43 & 0x7F) << v30;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_119;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_119:
        [a1 setType:v36];
        goto LABEL_111;
      case 0xBu:
        v14 = objc_alloc_init(_INPBMessage);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBMessageReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setReferencedMessage:v14];
        goto LABEL_110;
      case 0xCu:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v43) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v43 & 0x7F) << v15;
          if ((v43 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_115;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_115:
        [a1 setEffect:v21];
        goto LABEL_111;
      case 0xDu:
        v14 = objc_alloc_init(_INPBInteger);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBIntegerReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setNumberOfAttachments:v14];
        goto LABEL_110;
      case 0xEu:
        v14 = objc_alloc_init(_INPBDateTime);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBDateTimeReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setDateLastMessageRead:v14];
        goto LABEL_110;
      case 0xFu:
        v14 = objc_alloc_init(_INPBMessageLinkMetadata);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBMessageLinkMetadataReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setLinkMetadata:v14];
        goto LABEL_110;
      case 0x10u:
        v14 = objc_alloc_init(_INPBCurrencyAmountValue);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBCurrencyAmountValueReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setPaymentAmount:v14];
        goto LABEL_110;
      case 0x11u:
        v14 = PBReaderReadString();
        [a1 setLocationName:v14];
        goto LABEL_110;
      case 0x12u:
        v14 = PBReaderReadString();
        [a1 setFileExtension:v14];
        goto LABEL_110;
      case 0x16u:
        v14 = PBReaderReadString();
        [a1 setServiceName:v14];
        goto LABEL_110;
      case 0x17u:
        v14 = objc_alloc_init(_INPBFile);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBFileReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setAudioMessageFile:v14];
        goto LABEL_110;
      case 0x18u:
        v14 = objc_alloc_init(_INPBFile);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBFileReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        if (v14)
        {
          [a1 addAttachmentFile:v14];
        }

        goto LABEL_110;
      case 0x19u:
        v14 = objc_alloc_init(_INPBMessageReaction);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBMessageReactionReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setReaction:v14];
        goto LABEL_110;
      case 0x1Au:
        v14 = objc_alloc_init(_INPBLocation);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBLocationReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setLocation:v14];
        goto LABEL_110;
      case 0x1Bu:
        v14 = objc_alloc_init(_INPBSticker);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !_INPBStickerReadFrom(v14, a2))
        {
          goto LABEL_134;
        }

        PBReaderRecallMark();
        [a1 setSticker:v14];
        goto LABEL_110;
      case 0x1Cu:
        v14 = objc_alloc_init(_INPBDictionary);
        v43 = 0;
        v44 = 0;
        if (PBReaderPlaceMark() && _INPBDictionaryReadFrom(v14, a2))
        {
          PBReaderRecallMark();
          if (v14)
          {
            [a1 addInlineGlyphContent:v14];
          }

LABEL_110:

LABEL_111:
          v4 = a2;
          continue;
        }

LABEL_134:

        return 0;
      case 0x1Du:
        v14 = PBReaderReadString();
        [a1 setTranslatedToLanguage:v14];
        goto LABEL_110;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_111;
    }
  }
}

uint64_t _INPBLocalDateReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v44 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v44 & 0x7F) << v6;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v47 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v47 & 0x7F) << v37;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v43 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_76:
        [a1 setDayOfMonth:v43];
        continue;
      }

      if (v14 == 4)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v48 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v48 & 0x7F) << v22;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_68;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_68:
        [a1 setDayOfWeek:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v45 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v45 & 0x7F) << v30;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_72;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_72:
        [a1 setYear:v36];
        continue;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v46 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v46 & 0x7F) << v15;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_64;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_64:
        [a1 setMonth:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBDateTimeReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          [a1 setTimeZoneID:v14];
LABEL_40:

          goto LABEL_45;
        }

        if (v13 == 4)
        {
          v15 = 0;
          v16 = 0;
          v17 = 0;
          while (1)
          {
            LOBYTE(v24) = 0;
            v18 = [a2 position] + 1;
            if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
            {
              v20 = [a2 data];
              [v20 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v17 |= (v24 & 0x7F) << v15;
            if ((v24 & 0x80) == 0)
            {
              break;
            }

            v15 += 7;
            v11 = v16++ >= 9;
            if (v11)
            {
              v21 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v17;
          }

LABEL_44:
          [a1 setCalendarSystem:v21];
          goto LABEL_45;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v14 = objc_alloc_init(_INPBLocalDate);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocalDateReadFrom(v14, a2))
          {
LABEL_48:

            return 0;
          }

          PBReaderRecallMark();
          [a1 setDate:v14];
          goto LABEL_40;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(_INPBLocalTime);
          v24 = 0;
          v25 = 0;
          if (!PBReaderPlaceMark() || !_INPBLocalTimeReadFrom(v14, a2))
          {
            goto LABEL_48;
          }

          PBReaderRecallMark();
          [a1 setTime:v14];
          goto LABEL_40;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v22 = [a2 position];
    }

    while (v22 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBLocalTimeReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v44 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v44 & 0x7F) << v6;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        while (1)
        {
          v46 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v46 & 0x7F) << v37;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v12 = v38++ >= 9;
          if (v12)
          {
            v43 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v43 = 0;
        }

        else
        {
          v43 = v39;
        }

LABEL_76:
        [a1 setMinuteOfHour:v43];
        continue;
      }

      if (v14 == 4)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        while (1)
        {
          v48 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v48 & 0x7F) << v22;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v12 = v23++ >= 9;
          if (v12)
          {
            v28 = 0;
            goto LABEL_68;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_68:
        [a1 setHourOfDay:v28];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v30 = 0;
        v31 = 0;
        v32 = 0;
        while (1)
        {
          v47 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v47 & 0x7F) << v30;
          if ((v47 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v12 = v31++ >= 9;
          if (v12)
          {
            v36 = 0;
            goto LABEL_72;
          }
        }

        if ([a2 hasError])
        {
          v36 = 0;
        }

        else
        {
          v36 = v32;
        }

LABEL_72:
        [a1 setMillisOfSecond:v36];
        continue;
      }

      if (v14 == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          v45 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v45 & 0x7F) << v15;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v12 = v16++ >= 9;
          if (v12)
          {
            v21 = 0;
            goto LABEL_64;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_64:
        [a1 setSecondOfMinute:v21];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBContactValueReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v44) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v44 & 0x7F) << v5;
      if ((v44 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(_INPBValueMetadata);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_INPBValueMetadataReadFrom(v13, a2))
        {
          goto LABEL_102;
        }

        PBReaderRecallMark();
        [a1 setValueMetadata:v13];
        goto LABEL_74;
      case 2u:
        v13 = PBReaderReadString();
        [a1 setFirstName:v13];
        goto LABEL_74;
      case 3u:
        v13 = PBReaderReadString();
        [a1 setLastName:v13];
        goto LABEL_74;
      case 4u:
        v13 = PBReaderReadString();
        [a1 setFullName:v13];
        goto LABEL_74;
      case 5u:
        v13 = PBReaderReadString();
        [a1 setHandle:v13];
        goto LABEL_74;
      case 6u:
        v13 = objc_alloc_init(_INPBImageValue);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_INPBImageValueReadFrom(v13, a2))
        {
          goto LABEL_102;
        }

        PBReaderRecallMark();
        [a1 setImage:v13];
        goto LABEL_74;
      case 7u:
        v13 = objc_alloc_init(_INPBContactHandle);
        v44 = 0;
        v45 = 0;
        if (!PBReaderPlaceMark() || !_INPBContactHandleReadFrom(v13, a2))
        {
          goto LABEL_102;
        }

        PBReaderRecallMark();
        [a1 setContactHandle:v13];
        goto LABEL_74;
      case 8u:
        v13 = PBReaderReadString();
        [a1 setCustomIdentifier:v13];
        goto LABEL_74;
      case 9u:
        v13 = PBReaderReadString();
        [a1 setRelationship:v13];
        goto LABEL_74;
      case 0xAu:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v44 & 0x7F) << v14;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_89;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_89:
        [a1 setIsMe:v20];
        goto LABEL_75;
      case 0xBu:
        v21 = 0;
        v22 = 0;
        v23 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v44 & 0x7F) << v21;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_93;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_93:
        [a1 setSuggestionType:v27];
        goto LABEL_75;
      case 0xCu:
        v13 = objc_alloc_init(_INPBContactHandle);
        v44 = 0;
        v45 = 0;
        if (PBReaderPlaceMark() && _INPBContactHandleReadFrom(v13, a2))
        {
          PBReaderRecallMark();
          if (v13)
          {
            [a1 addAliases:v13];
          }

LABEL_74:

LABEL_75:
          v35 = [a2 position];
          if (v35 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_102:

        return 0;
      case 0xDu:
        v13 = PBReaderReadString();
        [a1 setNickName:v13];
        goto LABEL_74;
      case 0xEu:
        v13 = PBReaderReadString();
        [a1 setNamePrefix:v13];
        goto LABEL_74;
      case 0xFu:
        v13 = PBReaderReadString();
        [a1 setMiddleName:v13];
        goto LABEL_74;
      case 0x10u:
        v13 = PBReaderReadString();
        [a1 setNameSuffix:v13];
        goto LABEL_74;
      case 0x11u:
        v13 = PBReaderReadString();
        [a1 setPhoneticNamePrefix:v13];
        goto LABEL_74;
      case 0x12u:
        v13 = PBReaderReadString();
        [a1 setPhoneticFirstName:v13];
        goto LABEL_74;
      case 0x13u:
        v13 = PBReaderReadString();
        [a1 setPhoneticMiddleName:v13];
        goto LABEL_74;
      case 0x14u:
        v13 = PBReaderReadString();
        [a1 setPhoneticLastName:v13];
        goto LABEL_74;
      case 0x15u:
        v13 = PBReaderReadString();
        [a1 setPhoneticNameSuffix:v13];
        goto LABEL_74;
      case 0x16u:
        v13 = PBReaderReadString();
        [a1 setPhonemeData:v13];
        goto LABEL_74;
      case 0x17u:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v44 & 0x7F) << v28;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v34 = 0;
            goto LABEL_95;
          }
        }

        v34 = (v30 != 0) & ~[a2 hasError];
LABEL_95:
        [a1 setIsContactSuggestion:v34];
        goto LABEL_75;
      case 0x18u:
        v36 = 0;
        v37 = 0;
        v38 = 0;
        while (1)
        {
          LOBYTE(v44) = 0;
          v39 = [a2 position] + 1;
          if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
          {
            v41 = [a2 data];
            [v41 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v38 |= (v44 & 0x7F) << v36;
          if ((v44 & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v11 = v37++ >= 9;
          if (v11)
          {
            v42 = 0;
            goto LABEL_99;
          }
        }

        if ([a2 hasError])
        {
          v42 = 0;
        }

        else
        {
          v42 = v38;
        }

LABEL_99:
        [a1 setSearchProvider:v42];
        goto LABEL_75;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_75;
    }
  }
}

uint64_t _INPBContactReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(_INPBContactValue);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !_INPBContactValueReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addValue:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t _INPBContactHandleReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v45 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v45 & 0x7F) << v6;
      if ((v45 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 3)
    {
      switch(v14)
      {
        case 4:
          v23 = 0;
          v24 = 0;
          v25 = 0;
          while (1)
          {
            v48 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v48 & 0x7F) << v23;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v12 = v24++ >= 9;
            if (v12)
            {
              v29 = 0;
              goto LABEL_69;
            }
          }

          if ([a2 hasError])
          {
            v29 = 0;
          }

          else
          {
            v29 = v25;
          }

LABEL_69:
          [a1 setEmergencyType:v29];
          continue;
        case 5:
          v38 = 0;
          v39 = 0;
          v40 = 0;
          while (1)
          {
            v49 = 0;
            v41 = [a2 position] + 1;
            if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
            {
              v43 = [a2 data];
              [v43 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v40 |= (v49 & 0x7F) << v38;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v12 = v39++ >= 9;
            if (v12)
            {
              v44 = 0;
              goto LABEL_79;
            }
          }

          v44 = (v40 != 0) & ~[a2 hasError];
LABEL_79:
          [a1 setSuggested:v44];
          continue;
        case 6:
          v16 = 0;
          v17 = 0;
          v18 = 0;
          while (1)
          {
            v47 = 0;
            v19 = [a2 position] + 1;
            if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
            {
              v21 = [a2 data];
              [v21 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v18 |= (v47 & 0x7F) << v16;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v12 = v17++ >= 9;
            if (v12)
            {
              v22 = 0;
              goto LABEL_73;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_73:
          [a1 setFaceTimeType:v22];
          continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 1:
          v15 = PBReaderReadString();
          [a1 setValue:v15];
          goto LABEL_36;
        case 2:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          while (1)
          {
            v46 = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v46 & 0x7F) << v31;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v12 = v32++ >= 9;
            if (v12)
            {
              v37 = 0;
              goto LABEL_77;
            }
          }

          if ([a2 hasError])
          {
            v37 = 0;
          }

          else
          {
            v37 = v33;
          }

LABEL_77:
          [a1 setType:v37];
          continue;
        case 3:
          v15 = PBReaderReadString();
          [a1 setLabel:v15];
LABEL_36:

          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}