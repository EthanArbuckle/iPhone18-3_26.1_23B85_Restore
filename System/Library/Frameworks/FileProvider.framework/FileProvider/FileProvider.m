id getMDItemLastUsedDate()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMDItemLastUsedDateSymbolLoc_ptr;
  v7 = getMDItemLastUsedDateSymbolLoc_ptr;
  if (!getMDItemLastUsedDateSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary_2();
    v5[3] = dlsym(v1, "MDItemLastUsedDate");
    getMDItemLastUsedDateSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMDItemLastUsedDate_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AAAE2E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMDItemFileSize()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMDItemFileSizeSymbolLoc_ptr;
  v7 = getMDItemFileSizeSymbolLoc_ptr;
  if (!getMDItemFileSizeSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary_2();
    v5[3] = dlsym(v1, "MDItemFileSize");
    getMDItemFileSizeSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMDItemFileSize_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AAAE2F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMDItemFileProviderID()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMDItemFileProviderIDSymbolLoc_ptr;
  v7 = getMDItemFileProviderIDSymbolLoc_ptr;
  if (!getMDItemFileProviderIDSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary_2();
    v5[3] = dlsym(v1, "MDItemFileProviderID");
    getMDItemFileProviderIDSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMDItemFileProviderID_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AAAE302C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMDItemFileProviderDomainIdentifier()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMDItemFileProviderDomainIdentifierSymbolLoc_ptr;
  v7 = getMDItemFileProviderDomainIdentifierSymbolLoc_ptr;
  if (!getMDItemFileProviderDomainIdentifierSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary_2();
    v5[3] = dlsym(v1, "MDItemFileProviderDomainIdentifier");
    getMDItemFileProviderDomainIdentifierSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMDItemFileProviderDomainIdentifier_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AAAE3130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

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
    v3[3] = &unk_1E793A2E8;
    v3[4] = &v4;
    __getCSSearchableIndexClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1AAAE3210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FPRegisterFileProvidersForUserAtURLs(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v18 + 1) + 8 * v11);
      if ([v12 fp_matchesFileProviderHeuristics:a1])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v13 = v12;

    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = [FPDaemonConnection connectionForUser:a1];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __FPRegisterFileProvidersForUserAtURLs_block_invoke;
    v16[3] = &unk_1E793B2C8;
    v17 = v6;
    [v14 wakeUpForURL:v13 completionHandler:v16];
  }

  else
  {
LABEL_9:

LABEL_12:
    (*(v6 + 2))(v6, 0, &__block_literal_global_14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

char *copyHomeDirectoryCompat(uid_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = sysconf(71);
  if (v2 == -1)
  {
    v8 = *__error();
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      copyHomeDirectoryCompat_cold_3();
    }

    result = 0;
  }

  else
  {
    v3 = v2;
    v4 = &v12 - ((MEMORY[0x1EEE9AC00]() + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v4, v3);
    memset(&v14, 0, sizeof(v14));
    v13 = 0;
    if (getpwuid_r(a1, &v14, v4, v3, &v13))
    {
      v5 = *__error();
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        copyHomeDirectoryCompat_cold_1();
      }
    }

    else
    {
      if (v13)
      {
        result = strdup(v14.pw_dir);
        goto LABEL_12;
      }

      v11 = fp_current_or_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        copyHomeDirectoryCompat_cold_2();
      }
    }

    result = 0;
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

char *fpfs_fast_realpath()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v3 = v0;
  v11 = *MEMORY[0x1E69E9840];
  bzero(v9, 0x200CuLL);
  v7 = xmmword_1AAC266C0;
  v8 = 0;
  if (v2)
  {
    v4 = 32;
  }

  else
  {
    v4 = 33;
  }

  if (getattrlist(v3, &v7, v9, 0x200CuLL, v4) < 0)
  {
    result = 0;
  }

  else
  {
    result = strdup(v10 + v10[0]);
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_supports_sokoban()
{
  v0 = *__error();
  if (fpfs_supports_sokoban_once_token != -1)
  {
    fpfs_supports_sokoban_cold_1();
  }

  *__error() = v0;
  return fpfs_supports_sokoban_feature_enabled;
}

const char *fpfs_path_return_assigned_provider_domain_xattr(const char *a1, ssize_t *a2, void *a3, size_t a4)
{
  v8 = getxattr(a1, "com.apple.file-provider-domain-id", a3, a4, 0, 1);
  if (v8 < 1)
  {
    v11 = getxattr(a1, "com.apple.file-provider-domain-id#PN", a3, a4, 0, 1);
    if (v11 < 1)
    {
      return 0;
    }

    v9 = v11;
    result = "com.apple.file-provider-domain-id#PN";
    if (!a2)
    {
      return result;
    }

LABEL_6:
    *a2 = v9;
    return result;
  }

  v9 = v8;
  result = "com.apple.file-provider-domain-id";
  if (a2)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t __fpfs_supports_sokoban_block_invoke()
{
  result = _fpfs_is_feature_flag_enabled("Sokoban");
  fpfs_supports_sokoban_feature_enabled = result;
  return result;
}

uint64_t _fpfs_is_feature_flag_enabled(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  result = os_variant_has_internal_content();
  if (result)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.fileproviderd.%sDevelopment", a1];
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    v5 = [v4 BOOLForKey:v3];

    return v5;
  }

  return result;
}

id FPItemPredicate(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AE18];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __FPItemPredicate_block_invoke;
  v6[3] = &unk_1E793EC20;
  v7 = v1;
  v3 = v1;
  v4 = [v2 predicateWithBlock:v6];

  return v4;
}

void __itemCollectionUpdateQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.FileProvider.ItemCollection.update-queue", v2);
  v1 = itemCollectionUpdateQueue_updateQueue;
  itemCollectionUpdateQueue_updateQueue = v0;
}

void sub_1AAAE4764(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

uint64_t __init_log_tls_if_needed_block_invoke()
{
  result = pthread_key_create(&log_pthread_key, log_pthread_key_dtor);
  if (result)
  {
    abort();
  }

  return result;
}

uint64_t __fp_default_log_block_invoke()
{
  fp_default_log_logger = os_log_create("com.apple.FileProvider", "default");

  return MEMORY[0x1EEE66BB8]();
}

void *fpfs_current_log()
{
  if (init_log_tls_if_needed_once != -1)
  {
    fpfs_current_log_cold_1();
  }

  v1 = log_pthread_key;

  return pthread_getspecific(v1);
}

id fp_current_or_default_log()
{
  v0 = fpfs_current_log();
  if (!v0)
  {
    v0 = fp_default_log();
  }

  return v0;
}

id fp_default_log()
{
  if (fp_default_log_once != -1)
  {
    fp_default_log_cold_1();
  }

  v1 = fp_default_log_logger;

  return v1;
}

id fpfs_adopt_log(void *a1)
{
  v1 = a1;
  if (init_log_tls_if_needed_once != -1)
  {
    fpfs_current_log_cold_1();
  }

  v2 = fpfs_current_log();
  v3 = log_pthread_key;
  v4 = v1;
  pthread_setspecific(v3, v4);

  return v2;
}

void sub_1AAAE51A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak((v18 - 80));
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_1AAAE5550(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

id FPDDaemonXPCInterface()
{
  if (FPDDaemonXPCInterface_once != -1)
  {
    FPDDaemonXPCInterface_cold_1();
  }

  v1 = FPDDaemonXPCInterface_interface;

  return v1;
}

void __FPDDaemonXPCInterface_block_invoke()
{
  v111[10] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FF3CA8];
  v1 = FPDDaemonXPCInterface_interface;
  FPDDaemonXPCInterface_interface = v0;

  v2 = FPDDomainServicingXPCInterface();
  v110 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FE5560];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FD5CA0];
  v4 = FPDDaemonXPCInterface_interface;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  [v4 setClasses:v8 forSelector:sel_providerDomainsCompletionHandler_ argumentIndex:0 ofReply:1];

  v9 = FPDDaemonXPCInterface_interface;
  v10 = MEMORY[0x1E695DFD8];
  v111[0] = objc_opt_class();
  v111[1] = objc_opt_class();
  v111[2] = objc_opt_class();
  v111[3] = objc_opt_class();
  v111[4] = objc_opt_class();
  v111[5] = objc_opt_class();
  v111[6] = objc_opt_class();
  v111[7] = objc_opt_class();
  v111[8] = objc_opt_class();
  v111[9] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:10];
  v12 = [v10 setWithArray:v11];
  [v9 setClasses:v12 forSelector:sel_valuesForAttributes_forItemAtURL_completionHandler_ argumentIndex:0 ofReply:1];

  v109 = v2;
  [FPDDaemonXPCInterface_interface setInterface:v2 forSelector:sel_fetchDomainServicerForProviderDomainID_handler_ argumentIndex:0 ofReply:1];
  [FPDDaemonXPCInterface_interface setInterface:v3 forSelector:sel_startAccessingServiceForItemID_completionHandler_ argumentIndex:1 ofReply:1];
  [FPDDaemonXPCInterface_interface setInterface:v3 forSelector:sel_startAccessingServiceWithName_itemURL_completionHandler_ argumentIndex:1 ofReply:1];
  v13 = FPDDaemonXPCInterface_interface;
  v14 = FPXOperationServiceXPCInterface();
  [v13 setInterface:v14 forSelector:sel_startAccessingOperationServiceForProviderDomainID_handler_ argumentIndex:0 ofReply:1];

  [FPDDaemonXPCInterface_interface setInterface:v3 forSelector:sel_startAccessingExtensionForProviderDomainID_handler_ argumentIndex:1 ofReply:1];
  [FPDDaemonXPCInterface_interface setInterface:v3 forSelector:sel_startAccessingOperationServiceForProviderDomainID_handler_ argumentIndex:2 ofReply:1];
  v15 = FPDDaemonXPCInterface_interface;
  v16 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FF3DC8];
  [v15 setInterface:v16 forSelector:sel_wakeUpForURL_completionHandler_ argumentIndex:1 ofReply:1];

  v17 = FPDDaemonXPCInterface_interface;
  v18 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FF3DC8];
  [v17 setInterface:v18 forSelector:sel_wakeUpForURLFixed_completionHandler_ argumentIndex:0 ofReply:1];

  v19 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
  [v110 setClasses:v21 forSelector:sel_observePresentedFilesDidChange_ argumentIndex:0 ofReply:0];

  [v2 setInterface:v110 forSelector:sel__t_setFilePresenterObserver_ argumentIndex:0 ofReply:0];
  v22 = FPDDaemonXPCInterface_interface;
  v23 = MEMORY[0x1E695DFD8];
  v24 = objc_opt_class();
  v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
  [v22 setClasses:v25 forSelector:sel_getDomainsForProviderIdentifier_completionHandler_ argumentIndex:1 ofReply:1];

  v26 = FPDDaemonXPCInterface_interface;
  v27 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v26 setClasses:v27 forSelector:sel_listRemoteVersionsOfItemAtURL_includeCachedVersions_completionHandler_ argumentIndex:0 ofReply:1];

  v28 = FPDDaemonXPCInterface_interface;
  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
  [v28 setClasses:v31 forSelector:sel_listRemoteVersionsOfItemAtURL_includeCachedVersions_completionHandler_ argumentIndex:1 ofReply:1];

  v32 = FPDDaemonXPCInterface_interface;
  v33 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v35 = objc_opt_class();
  v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];
  [v32 setClasses:v36 forSelector:sel_fetchFSItemsForItemIdentifiers_providerIdentifier_domainIdentifier_materializingIfNeeded_completionHandler_ argumentIndex:0 ofReply:1];

  v37 = FPDDaemonXPCInterface_interface;
  v38 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
  [v37 setClasses:v40 forSelector:sel_forceIngestionForItemIDs_completionHandler_ argumentIndex:0 ofReply:0];

  v41 = FPDDaemonXPCInterface_interface;
  v42 = MEMORY[0x1E695DFD8];
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = [v42 setWithObjects:{v43, v44, objc_opt_class(), 0}];
  [v41 setClasses:v45 forSelector:sel_forceIngestionForItemIDs_completionHandler_ argumentIndex:0 ofReply:1];

  v46 = FPDDaemonXPCInterface_interface;
  v47 = FPDaemonActionOperationXPCInterface();
  [v46 setInterface:v47 forSelector:sel_scheduleActionOperationWithInfo_completionHandler_ argumentIndex:0 ofReply:1];

  v48 = FPDDaemonXPCInterface_interface;
  v49 = MEMORY[0x1E695DFD8];
  v50 = objc_opt_class();
  v51 = [v49 setWithObjects:{v50, objc_opt_class(), 0}];
  [v48 setClasses:v51 forSelector:sel_fetchDaemonOperationIDsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v52 = FPDDaemonXPCInterface_interface;
  v53 = FPDaemonActionOperationXPCInterface();
  [v52 setInterface:v53 forSelector:sel_fetchDaemonOperationWithID_completionHandler_ argumentIndex:0 ofReply:1];

  v54 = FPDDaemonXPCInterface_interface;
  v55 = MEMORY[0x1E695DFD8];
  v56 = objc_opt_class();
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = [v55 setWithObjects:{v56, v57, v58, objc_opt_class(), 0}];
  [v54 setClasses:v59 forSelector:sel_fetchListOfMonitoredApps_ argumentIndex:0 ofReply:1];

  v60 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FD3E08];
  FPSetOperationClientOnXPCInterface(v60);
  [FPDDaemonXPCInterface_interface setInterface:v60 forSelector:sel_startOperation_toFetchIconsForAppBundleIDs_requestedSize_scale_completionHandler_ argumentIndex:0 ofReply:0];
  v61 = FPDDaemonXPCInterface_interface;
  v62 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FF3D68];
  [v61 setInterface:v62 forSelector:sel_fetchAccessServicer_ argumentIndex:0 ofReply:1];

  v63 = FPDDaemonXPCInterface_interface;
  v64 = MEMORY[0x1E695DFD8];
  v65 = objc_opt_class();
  v66 = [v64 setWithObjects:{v65, objc_opt_class(), 0}];
  [v63 setClasses:v66 forSelector:sel_copyDatabaseForFPCKStartingAtPath_completionHandler_ argumentIndex:0 ofReply:1];

  v67 = FPDDaemonXPCInterface_interface;
  v68 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FF3D08];
  [v67 setInterface:v68 forSelector:sel_forceIndexingInForeground_completionHandler_ argumentIndex:0 ofReply:1];

  v69 = FPDDaemonXPCInterface_interface;
  v70 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FE08A0];
  [v69 setInterface:v70 forSelector:sel_fetchAndStartEnumeratingWithSettings_observer_completionHandler_ argumentIndex:1 ofReply:0];

  v71 = FPDDaemonXPCInterface_interface;
  v72 = FPXEnumeratorXPCInterface();
  [v71 setInterface:v72 forSelector:sel_fetchAndStartEnumeratingWithSettings_observer_completionHandler_ argumentIndex:0 ofReply:1];

  v73 = v3;
  [FPDDaemonXPCInterface_interface setInterface:v3 forSelector:sel_fetchAndStartEnumeratingWithSettings_observer_completionHandler_ argumentIndex:1 ofReply:1];
  v74 = FPDDaemonXPCInterface_interface;
  v75 = MEMORY[0x1E695DFD8];
  v76 = objc_opt_class();
  v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
  [v74 setClasses:v77 forSelector:sel_addDomain_forProviderIdentifier_byImportingDirectoryAtURL_nonWrappedURL_userAllowedDBDrop_knownFolders_completionHandler_ argumentIndex:5 ofReply:0];

  v78 = FPDDaemonXPCInterface_interface;
  v79 = MEMORY[0x1E695DFD8];
  v80 = objc_opt_class();
  v81 = [v79 setWithObjects:{v80, objc_opt_class(), 0}];
  [v78 setClasses:v81 forSelector:sel_detachKnownFolders_completionHandler_ argumentIndex:0 ofReply:0];

  v82 = FPDDaemonXPCInterface_interface;
  v83 = MEMORY[0x1E695DFD8];
  v84 = objc_opt_class();
  v85 = [v83 setWithObjects:{v84, objc_opt_class(), 0}];
  [v82 setClasses:v85 forSelector:sel_attachKnownFolders_options_completionHandler_ argumentIndex:0 ofReply:0];

  v86 = FPDDaemonXPCInterface_interface;
  v87 = MEMORY[0x1E695DFD8];
  v88 = objc_opt_class();
  v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
  [v86 setClasses:v89 forSelector:sel_fetchPathComponentsForURL_completionHandler_ argumentIndex:0 ofReply:1];

  v90 = FPDDaemonXPCInterface_interface;
  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = [v91 setWithObjects:{v92, objc_opt_class(), 0}];
  [v90 setClasses:v93 forSelector:sel_listPausedURLsWithBundleID_completionHandler_ argumentIndex:0 ofReply:1];

  v94 = FPDDaemonXPCInterface_interface;
  v95 = MEMORY[0x1E695DFD8];
  v96 = objc_opt_class();
  v97 = [v95 setWithObjects:{v96, objc_opt_class(), 0}];
  [v94 setClasses:v97 forSelector:sel_fetchLatestVersionForItemAtURL_bundleID_completionHandler_ argumentIndex:1 ofReply:1];

  v98 = FPDDaemonXPCInterface_interface;
  v99 = MEMORY[0x1E695DFD8];
  v100 = objc_opt_class();
  v101 = objc_opt_class();
  v102 = objc_opt_class();
  v103 = [v99 setWithObjects:{v100, v101, v102, objc_opt_class(), 0}];
  [v98 setClasses:v103 forSelector:sel__test_getDBQueryStatistics_queryPlan_completionHandler_ argumentIndex:0 ofReply:1];

  [FPDDaemonXPCInterface_interface setInterface:v73 forSelector:sel_enumerateSearchResultForRequest_providerDomainID_completionHandler_ argumentIndex:1 ofReply:1];
  v104 = FPDDaemonXPCInterface_interface;
  v105 = FPXSearchEnumeratorXPCInterface();
  [v104 setInterface:v105 forSelector:sel_enumerateSearchResultForRequest_providerDomainID_completionHandler_ argumentIndex:0 ofReply:1];

  v106 = FPDDaemonXPCInterface_interface;
  v107 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v106 setClasses:v107 forSelector:sel_getNumberOfNonMaterializedFilesInDomain_withCompletionHandler_ argumentIndex:0 ofReply:1];

  v108 = *MEMORY[0x1E69E9840];
}

id FPGetSharedDomainCachingPath(uint64_t *a1)
{
  if (container_query_create())
  {
    container_query_set_class();
    v2 = xpc_string_create("group.com.apple.FileProvider.DomainCaching");
    container_query_set_group_identifiers();

    container_query_operation_set_flags();
    v3 = *MEMORY[0x1E69E9980];
    container_query_set_persona_unique_string();
    if (container_query_get_single_result())
    {
      v4 = container_copy_sandbox_token();
      if (v4)
      {
        v5 = sandbox_extension_consume();
        if (v5 < 0)
        {
          v6 = fp_current_or_default_log();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            FPGetSharedDomainCachingPath_cold_1(v5, v6);
          }

          v7 = 0;
          goto LABEL_17;
        }
      }

      else
      {
        v5 = -1;
      }

      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:container_get_path()];
      v7 = [v12 stringByAppendingPathComponent:@".domainscache.plist"];

      *a1 = v5;
LABEL_17:
      free(v4);
      container_query_free();
      goto LABEL_23;
    }

    container_query_get_last_error();
    v9 = container_error_copy_unlocalized_description();
    v10 = fp_current_or_default_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v11)
      {
        FPGetSharedDomainCachingPath_cold_2(v9, v10);
      }

      free(v9);
    }

    else
    {
      if (v11)
      {
        FPGetSharedDomainCachingPath_cold_3(v10);
      }
    }

    container_query_free();
  }

  else
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      FPGetSharedDomainCachingPath_cold_4(v8);
    }
  }

  v7 = 0;
LABEL_23:

  return v7;
}

id FPDDomainServicingXPCInterface()
{
  v59[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FF3948];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = [v1 setWithObjects:{v2, objc_opt_class(), 0}];
  [v0 setClasses:v3 forSelector:sel_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler_ argumentIndex:0 ofReply:1];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  [v0 setClasses:v6 forSelector:sel_enumerateMaterializedSetFromSyncAnchor_suggestedBatchSize_completionHandler_ argumentIndex:1 ofReply:1];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  [v0 setClasses:v9 forSelector:sel_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler_ argumentIndex:0 ofReply:1];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [v0 setClasses:v12 forSelector:sel_enumeratePendingSetFromSyncAnchor_suggestedBatchSize_completionHandler_ argumentIndex:1 ofReply:1];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = [v13 setWithObjects:{v14, v15, v16, v17, v18, objc_opt_class(), 0}];
  [v0 setClasses:v19 forSelector:sel_getDiagnosticAttributesForItems_completionHandler_ argumentIndex:0 ofReply:0];

  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = objc_opt_class();
  v26 = [v20 setWithObjects:{v21, v22, v23, v24, v25, objc_opt_class(), 0}];
  [v0 setClasses:v26 forSelector:sel_getDiagnosticAttributesForItems_completionHandler_ argumentIndex:1 ofReply:0];

  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v27 setWithObjects:{v28, v29, v30, v31, v32, objc_opt_class(), 0}];
  [v0 setClasses:v33 forSelector:sel_getDiagnosticAttributesForItems_completionHandler_ argumentIndex:0 ofReply:1];

  v34 = MEMORY[0x1E695DFD8];
  v35 = objc_opt_class();
  v36 = objc_opt_class();
  v37 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = [v34 setWithObjects:{v35, v36, v37, v38, v39, objc_opt_class(), 0}];
  [v0 setClasses:v40 forSelector:sel_getDiagnosticAttributesForItems_completionHandler_ argumentIndex:1 ofReply:1];

  v41 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v43 = objc_opt_class();
  v44 = objc_opt_class();
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = objc_opt_class();
  v49 = [v41 setWithObjects:{v42, v43, v44, v45, v46, v47, v48, objc_opt_class(), 0}];
  v50 = [v49 setByAddingObject:objc_opt_class()];
  [v0 setClasses:v50 forSelector:sel_listAvailableTestingOperationsWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v51 = [v49 setByAddingObject:objc_opt_class()];
  [v0 setClasses:v51 forSelector:sel_runTestingOperations_completionHandler_ argumentIndex:0 ofReply:0];

  v59[0] = objc_opt_class();
  v59[1] = objc_opt_class();
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v53 = [v49 setByAddingObjectsFromArray:v52];
  [v0 setClasses:v53 forSelector:sel_runTestingOperations_completionHandler_ argumentIndex:0 ofReply:1];

  v54 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FE4230];
  [v0 setInterface:v54 forSelector:sel_subscribeToUploadProgressUpdates_completionHandler_ argumentIndex:0 ofReply:0];

  v55 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FE4230];
  [v0 setInterface:v55 forSelector:sel_subscribeToDownloadProgressUpdates_completionHandler_ argumentIndex:0 ofReply:0];

  v56 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FD5CA0];
  [v0 setInterface:v56 forSelector:sel_startAccessingServiceWithName_itemID_completionHandler_ argumentIndex:1 ofReply:1];

  v57 = *MEMORY[0x1E69E9840];

  return v0;
}

id FPXOperationServiceXPCInterface()
{
  if (FPXOperationServiceXPCInterface_once != -1)
  {
    FPXOperationServiceXPCInterface_cold_1();
  }

  v1 = FPXOperationServiceXPCInterface_interface;

  return v1;
}

void __FPXOperationServiceXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FCB838];
  v1 = FPXOperationServiceXPCInterface_interface;
  FPXOperationServiceXPCInterface_interface = v0;

  v2 = FPXOperationServiceXPCInterface_interface;

  FPXSetOperationServiceOnXPCInterface(v2);
}

void FPXSetOperationServiceOnXPCInterface(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FD3E08];
  FPSetOperationClientOnXPCInterface(v2);
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v1 setClasses:v5 forSelector:sel_startOperation_toFetchThumbnailsForItemIdentifiers_size_completionHandler_ argumentIndex:1 ofReply:0];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  [v1 setClasses:v11 forSelector:sel_startOperation_toFetchThumbnailsWithDictionary_size_completionHandler_ argumentIndex:1 ofReply:0];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v1 setClasses:v14 forSelector:sel_deleteItemsWithIDs_baseVersions_options_reply_ argumentIndex:0 ofReply:0];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v1 setClasses:v17 forSelector:sel_deleteItemsWithIDs_baseVersions_options_reply_ argumentIndex:1 ofReply:0];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v1 setClasses:v20 forSelector:sel_preflightReparentItemIDs_underParentID_reply_ argumentIndex:0 ofReply:0];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v1 setClasses:v23 forSelector:sel_preflightReparentItemIDs_underParentID_reply_ argumentIndex:0 ofReply:1];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v1 setClasses:v26 forSelector:sel_bulkItemChanges_changedFields_completionHandler_ argumentIndex:0 ofReply:0];

  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
  [v1 setClasses:v30 forSelector:sel_bulkItemChanges_changedFields_completionHandler_ argumentIndex:0 ofReply:1];

  v31 = MEMORY[0x1E695DFD8];
  v32 = objc_opt_class();
  v33 = objc_opt_class();
  v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
  [v1 setClasses:v34 forSelector:sel_bulkItemChanges_changedFields_completionHandler_ argumentIndex:1 ofReply:1];

  v35 = MEMORY[0x1E695DFD8];
  v36 = objc_opt_class();
  v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
  [v1 setClasses:v37 forSelector:sel_preflightTrashItemIDs_completionHandler_ argumentIndex:0 ofReply:0];

  v38 = MEMORY[0x1E695DFD8];
  v39 = objc_opt_class();
  v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];
  [v1 setClasses:v40 forSelector:sel_preflightTrashItemIDs_completionHandler_ argumentIndex:0 ofReply:1];

  v41 = MEMORY[0x1E695DFD8];
  v42 = objc_opt_class();
  v43 = [v41 setWithObjects:{v42, objc_opt_class(), 0}];
  [v1 setClasses:v43 forSelector:sel_fetchHierarchyForItemID_recursively_ignoreAlternateContentURL_reply_ argumentIndex:0 ofReply:1];

  v44 = MEMORY[0x1E695DFD8];
  v45 = objc_opt_class();
  v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
  [v1 setClasses:v46 forSelector:sel_userInteractionErrorsForPerformingAction_sourceItems_destinationItem_fpProviderDomainId_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler_ argumentIndex:1 ofReply:0];

  v47 = MEMORY[0x1E695DFD8];
  v48 = objc_opt_class();
  v49 = [v47 setWithObjects:{v48, objc_opt_class(), 0}];
  [v1 setClasses:v49 forSelector:sel_userInteractionErrorsForPerformingAction_sourceItems_destinationItem_fpProviderDomainId_sourceItemKeysAllowList_destinationItemKeysAllowList_completionHandler_ argumentIndex:0 ofReply:1];

  v50 = MEMORY[0x1E695DFD8];
  v51 = objc_opt_class();
  v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
  [v1 setClasses:v52 forSelector:sel_fetchTrashIdentifiersWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v53 = MEMORY[0x1E695DFD8];
  v54 = objc_opt_class();
  v55 = [v53 setWithObjects:{v54, objc_opt_class(), 0}];
  [v1 setClasses:v55 forSelector:sel_updateIgnoreStateOfItemWithIdentifiers_ignoreState_completionHandler_ argumentIndex:0 ofReply:0];

  v56 = MEMORY[0x1E695DFD8];
  v57 = objc_opt_class();
  v58 = objc_opt_class();
  v59 = [v56 setWithObjects:{v57, v58, objc_opt_class(), 0}];
  [v1 setClasses:v59 forSelector:sel_updateIgnoreStateOfItemWithIdentifiers_ignoreState_completionHandler_ argumentIndex:0 ofReply:1];

  v60 = MEMORY[0x1E695DFD8];
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = [v60 setWithObjects:{v61, v62, objc_opt_class(), 0}];
  [v1 setClasses:v63 forSelector:sel_updateIgnoreStateOfItemWithIdentifiers_ignoreState_completionHandler_ argumentIndex:1 ofReply:1];

  outCount = 0;
  v64 = protocol_copyMethodDescriptionList(&unk_1F1FCB838, 1, 1, &outCount);
  v65 = v64;
  if (outCount)
  {
    v66 = 0;
    p_name = &v64->name;
    do
    {
      Name = sel_getName(*p_name);
      if (!strncmp(Name, "startOperation:", 0xFuLL))
      {
        [v1 setInterface:v2 forSelector:*p_name argumentIndex:0 ofReply:0];
      }

      ++v66;
      p_name += 2;
    }

    while (v66 < outCount);
  }

  free(v65);
}

void FPSetOperationClientOnXPCInterface(void *a1)
{
  v1 = MEMORY[0x1E696B0D0];
  v2 = a1;
  v3 = [v1 interfaceWithProtocol:&unk_1F1FD3D28];
  [v2 setInterface:v3 forSelector:sel_setCancellationHandler_ argumentIndex:0 ofReply:0];

  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v4 setWithObjects:{v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v2 setClasses:v10 forSelector:sel_operationDidProgressWithInfo_error_completionHandler_ argumentIndex:0 ofReply:0];
}

void __FPDaemonActionOperationXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FF3E28];
  v1 = FPDaemonActionOperationXPCInterface_interface;
  FPDaemonActionOperationXPCInterface_interface = v0;

  v2 = FPDaemonActionOperationXPCInterface_interface;
  v3 = FPDaemonActionOperationClientXPCInterface();
  [v2 setInterface:v3 forSelector:sel_registerFrameworkClient_operationCompletion_ argumentIndex:0 ofReply:0];

  v4 = FPDaemonActionOperationXPCInterface_interface;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  [v4 setClasses:v8 forSelector:sel_registerFrameworkClient_operationCompletion_ argumentIndex:0 ofReply:1];

  v9 = FPDaemonActionOperationXPCInterface_interface;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}];
  [v9 setClasses:v13 forSelector:sel_registerFrameworkClient_operationCompletion_ argumentIndex:1 ofReply:1];
}

id FPDaemonActionOperationXPCInterface()
{
  if (FPDaemonActionOperationXPCInterface_once != -1)
  {
    FPDaemonActionOperationXPCInterface_cold_1();
  }

  v1 = FPDaemonActionOperationXPCInterface_interface;

  return v1;
}

id FPDaemonActionOperationClientXPCInterface()
{
  if (FPDaemonActionOperationClientXPCInterface_once != -1)
  {
    FPDaemonActionOperationClientXPCInterface_cold_1();
  }

  v1 = FPDaemonActionOperationClientXPCInterface_interface;

  return v1;
}

void __FPDaemonActionOperationClientXPCInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FDACF0];
  v1 = FPDaemonActionOperationClientXPCInterface_interface;
  FPDaemonActionOperationClientXPCInterface_interface = v0;

  v2 = FPDaemonActionOperationClientXPCInterface_interface;

  FPSetOperationClientOnXPCInterface(v2);
}

void __FPXEnumeratorXPCInterface_block_invoke()
{
  v22[2] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1FD8E90];
  v1 = FPXEnumeratorXPCInterface_interface;
  FPXEnumeratorXPCInterface_interface = v0;

  v2 = FPXEnumeratorXPCInterface_interface;
  v3 = MEMORY[0x1E695DFD8];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
  v5 = [v3 setWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_enumerateItemsFromPage_suggestedPageSize_reply_ argumentIndex:0 ofReply:1];

  v6 = FPXEnumeratorXPCInterface_interface;
  v7 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v9 = [v7 setWithArray:v8];
  [v6 setClasses:v9 forSelector:sel_enumerateItemsFromPage_suggestedPageSize_upTo_reply_ argumentIndex:0 ofReply:1];

  v10 = FPXEnumeratorXPCInterface_interface;
  v11 = MEMORY[0x1E695DFD8];
  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v13 = [v11 setWithArray:v12];
  [v10 setClasses:v13 forSelector:sel_enumerateChangesFromToken_suggestedBatchSize_reply_ argumentIndex:0 ofReply:1];

  v14 = FPXEnumeratorXPCInterface_interface;
  v15 = MEMORY[0x1E695DFD8];
  v19[0] = objc_opt_class();
  v19[1] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
  v17 = [v15 setWithArray:v16];
  [v14 setClasses:v17 forSelector:sel_enumerateChangesFromToken_suggestedBatchSize_reply_ argumentIndex:1 ofReply:1];

  v18 = *MEMORY[0x1E69E9840];
}

id FPXEnumeratorXPCInterface()
{
  if (FPXEnumeratorXPCInterface_once != -1)
  {
    FPXEnumeratorXPCInterface_cold_1();
  }

  v1 = FPXEnumeratorXPCInterface_interface;

  return v1;
}

void ____fp_create_section_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("create-log-section", v2);
  v1 = __fp_create_section_queue;
  __fp_create_section_queue = v0;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__11(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__25(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __fp_create_section()
{
  if (__fp_create_section_once != -1)
  {
    __fp_create_section_cold_1();
  }

  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ____fp_create_section_block_invoke_2;
  block[3] = &unk_1E793A2E8;
  block[4] = &v3;
  dispatch_sync(__fp_create_section_queue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

__CFString *FPExecutableNameForProcessIdentifier()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v6 = *MEMORY[0x1E69E9840];
  if (FPExecutableNameForProcessIdentifier_onceToken != -1)
  {
    FPExecutableNameForProcessIdentifier_cold_1();
  }

  if (FPExecutableNameForProcessIdentifier_pidResolutionAllowed == 1 && (bzero(buffer, 0x1000uLL), proc_pidpath(v0, buffer, 0x1000u) >= 1))
  {
    v1 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:buffer isDirectory:0 relativeToURL:0];
    v2 = [v1 lastPathComponent];
  }

  else
  {
    v2 = @"<unresolved>";
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void fpfs_setup_log_for_invocation(void *a1, void *a2, char a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  if ((a3 & 1) == 0)
  {
    section = __fp_create_section();
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [v5 processIdentifier];
      v10 = FPExecutableNameForProcessIdentifier();
      v11 = [v5 processIdentifier];
      v12 = [v6 target];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector([v6 selector]);
      v16 = 134219266;
      v17 = section;
      v18 = 2112;
      v19 = v10;
      v20 = 1024;
      v21 = v11;
      v22 = 2114;
      v23 = v14;
      v24 = 2114;
      v25 = v15;
      v26 = 1024;
      v27 = qos_class_self();
      _os_log_debug_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc: %@[%d]: [%{public}@ %{public}@] @ QoS %u", &v16, 0x36u);
    }

    [v5 fp_annotateInvocation:v6 withLogSection:section];
  }

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t ____fp_create_section_block_invoke_2(uint64_t result)
{
  *(*(*(result + 32) + 8) + 24) = __fp_create_section_lastSectionID + 1;
  __fp_create_section_lastSectionID = *(*(*(result + 32) + 8) + 24);
  return result;
}

void __fp_leave_section_Debug(uint64_t *a1)
{
  v2 = fp_current_or_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __fp_leave_section_Debug_cold_1(a1);
  }
}

void sub_1AAAE8F00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

void fp_reachability_callback(uint64_t a1, uint64_t a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = objc_autoreleasePoolPush();
  v6 = a2 & 4;
  if ((a2 & 2) != 0)
  {
    if ((a2 & 4) == 0)
    {
      goto LABEL_4;
    }

    v9 = (a2 & 0x28) != 0;
    if ((a2 & 0x10) != 0)
    {
      v9 = 0;
    }

    if ((a2 & 0x40000) != 0 || v9)
    {
LABEL_4:
      v7 = "";
      v8 = 82;
    }

    else
    {
      v7 = "un";
      v8 = 82;
      v6 = 1;
    }
  }

  else
  {
    v7 = "un";
    v8 = 45;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  *__str = 0u;
  v34 = 0u;
  v10 = a3;
  v11 = 100;
  if ((a2 & 0x20000) == 0)
  {
    v11 = 45;
  }

  v12 = 108;
  if ((a2 & 0x10000) == 0)
  {
    v12 = 45;
  }

  v31 = v12;
  v32 = v11;
  v13 = 68;
  if ((a2 & 0x20) == 0)
  {
    v13 = 45;
  }

  v14 = 105;
  if ((a2 & 0x10) == 0)
  {
    v14 = 45;
  }

  v29 = v14;
  v30 = v13;
  v15 = 67;
  if ((a2 & 8) == 0)
  {
    v15 = 45;
  }

  v16 = 99;
  if (!v6)
  {
    v16 = 45;
  }

  v28 = v15;
  v17 = 116;
  if ((a2 & 1) == 0)
  {
    v17 = 45;
  }

  v27 = v17;
  v18 = 87;
  if ((a2 & 0x40000) == 0)
  {
    v18 = 45;
  }

  snprintf(__str, 0x80uLL, "%sreachable [%c%c %c%c%c%c%c%c%c]", v7, v18, v8, v27, v16, v28, v29, v30, v31, v32);
  v19 = fp_current_or_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    fp_reachability_callback_cold_1(__str, v19, v20, v21, v22, v23, v24, v25);
  }

  [v10 setReachabilityFlags:a2];
  objc_autoreleasePoolPop(v5);
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1AAAE9248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AAAE96A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *FPPopLogSectionForBlock(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = _Block_copy(v1);
    v3 = objc_getAssociatedObject(v2, &kFileProviderLogSectionKey);
    v4 = [v3 unsignedLongValue];

    v5 = _Block_copy(v1);
    objc_setAssociatedObject(v5, &kFileProviderLogSectionKey, 0, 0x301);

    return v4;
  }

  return result;
}

void **__fp_pop_log(void **result)
{
  if (result)
  {
    return fpfs_adopt_log(*result);
  }

  return result;
}

uint64_t fpfs_openbyid(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;
  v5 = fpfs_openbyid64_np();
  if ((v5 & 0x80000000) != 0)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v6 = v5;
    v7 = v4[2](v4, v5);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = *__error();
      close(v6);
      *__error() = v8;
    }

    else if (close(v6) < 0)
    {
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      v7 = v7;
    }
  }

  return v7;
}

CFIndex __fp_shouldObfuscateFilenames_block_invoke()
{
  v0 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:arc4random_uniform(0xFFFFFFFF)];
  v1 = fp_shouldObfuscateFilenames_lockObject;
  fp_shouldObfuscateFilenames_lockObject = v0;

  result = CFPreferencesGetAppIntegerValue(@"com.apple.fileprovider.log-sensitive-data-update-interval", *MEMORY[0x1E695E890], 0);
  if (result >= 1)
  {
    v3 = result;
  }

  else
  {
    v3 = 60;
  }

  fp_shouldObfuscateFilenames_delayInSec = v3;
  return result;
}

id obfuscatePath(void *a1, unint64_t a2)
{
  v3 = a1;
  v4 = [v3 pathComponents];
  v5 = [v4 mutableCopy];

  if ([v3 hasSuffix:@"/"])
  {
    v6 = [v3 length] != 1;
  }

  else
  {
    v6 = 0;
  }

  for (; a2 < [v5 count]; ++a2)
  {
    v7 = [v5 objectAtIndexedSubscript:a2];
    v8 = [v7 fp_alwaysObfuscatedFilename];
    [v5 setObject:v8 atIndexedSubscript:a2];
  }

  v9 = [MEMORY[0x1E696AEC0] pathWithComponents:v5];
  v10 = v9;
  if (v6)
  {
    v11 = [v9 stringByAppendingString:@"/"];
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;

  return v12;
}

uint64_t fp_shouldObfuscateFilenames()
{
  if (forceDeobfuscateFilenames)
  {
    v0 = 0;
  }

  else
  {
    if (fp_shouldObfuscateFilenames_onceToken != -1)
    {
      fp_shouldObfuscateFilenames_cold_1();
    }

    v1 = [MEMORY[0x1E695DF00] now];
    [v1 timeIntervalSinceReferenceDate];
    v3 = v2;

    if (*&fp_shouldObfuscateFilenames_lastReadTime == 0.0 || *&fp_shouldObfuscateFilenames_lastReadTime + fp_shouldObfuscateFilenames_delayInSec < v3)
    {
      v4 = fp_shouldObfuscateFilenames_lockObject;
      objc_sync_enter(v4);
      if (*&fp_shouldObfuscateFilenames_lastReadTime == 0.0 || *&fp_shouldObfuscateFilenames_lastReadTime + fp_shouldObfuscateFilenames_delayInSec < v3)
      {
        fp_shouldObfuscateFilenames_shouldObfuscate = CFPreferencesGetAppBooleanValue(@"com.apple.fileprovider.log-sensitive-data", *MEMORY[0x1E695E890], 0) == 0;
        fp_shouldObfuscateFilenames_lastReadTime = *&v3;
      }

      objc_sync_exit(v4);
    }

    v0 = fp_shouldObfuscateFilenames_shouldObfuscate;
  }

  return v0 & 1;
}

uint64_t replacePrefix(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6 && [v5 hasPrefix:v6])
  {
    [v5 replaceCharactersInRange:0 withString:{objc_msgSend(v6, "length"), v7}];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

const char *_extensionInFilename(char *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = strrchr(a1, 46);
  v5 = 0;
  if (v4)
  {
    v6 = v4;
    if (v4 != a1)
    {
      v5 = v4 + 1;
      if (strlen(v4 + 1) > 0x32)
      {
        return 0;
      }

      v8 = v6 + 1;
      if (a2)
      {
        goto LABEL_8;
      }

      v11 = *v5;
      if (v11 == 103)
      {
        if (v6[2] == 122 && !v6[3] || !strcmp(v5, "bz2"))
        {
          goto LABEL_28;
        }

LABEL_8:
        v9 = 0;
        while (1)
        {
          v10 = *v8;
          if (!*v8)
          {
            break;
          }

          if (v10 == 32 || v10 == 47)
          {
            return 0;
          }

          v9 |= (v10 - 58) < 0xFFFFFFF6;
          ++v8;
        }

        if ((v9 & 1) == 0)
        {
          return 0;
        }

        return v5;
      }

      if (strcmp(v5, "bz2"))
      {
        if (v11 == 120)
        {
          if (v6[2] != 122 || v6[3])
          {
            goto LABEL_8;
          }
        }

        else if (v11 != 90 || v6[2])
        {
          goto LABEL_8;
        }
      }

LABEL_28:
      v12 = strdup(a1);
      v12[~a1 + v5] = 0;
      v13 = _extensionInFilename();
      if (v13)
      {
        v5 = &a1[v13 - v12];
      }

      free(v12);
    }
  }

  return v5;
}

id obfuscateString(void *a1)
{
  v1 = a1;
  if ([v1 length] <= 2 || (v2 = objc_msgSend(v1, "rangeOfComposedCharacterSequenceAtIndex:", 0), v4 = v3, v5 = objc_msgSend(v1, "rangeOfComposedCharacterSequenceAtIndex:", objc_msgSend(v1, "length") - 1), v4 == v5))
  {
    v7 = v1;
  }

  else
  {
    v8 = v5;
    v9 = v6;
    v10 = [v1 substringWithRange:{v2, v4}];
    v11 = [v1 substringWithRange:{v8, v9}];
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@{%d}%@", v10, objc_msgSend(v1, "length") - v4 - v9, v11];
  }

  return v7;
}

void sub_1AAAEB178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *FPKnownFoldersDescription(void *a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = &stru_1F1F94B20;
    goto LABEL_13;
  }

  v2 = a2;
  v3 = [a1 mutableCopy];
  v4 = v3;
  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  [(__CFString *)v3 appendString:@"desktop"];
  v5 = v2 & 0xFFFFFFFFFFFFFFFELL;
  if ((v2 & 2) != 0)
  {
    [(__CFString *)v4 appendString:@", "];
    v2 &= ~1uLL;
LABEL_10:
    [(__CFString *)v4 appendString:@"documents"];
    v2 &= 0xFFFFFFFFFFFFFFFCLL;
    if (!v2)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v2 &= ~1uLL;
  if (v5)
  {
LABEL_11:
    [(__CFString *)v4 appendString:@", "];
LABEL_12:
    [(__CFString *)v4 appendFormat:@"unknown(%lx)", v2];
  }

LABEL_13:

  return v4;
}

void fp_dispatch_async_with_logs(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = fpfs_current_log();
  section = __fp_create_section();
  v7 = fp_current_or_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    fp_dispatch_async_with_logs_cold_1();
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __fp_dispatch_async_with_logs_block_invoke;
  v11[3] = &unk_1E7939968;
  v12 = v5;
  v13 = v3;
  v14 = v4;
  v15 = section;
  v8 = v4;
  v9 = v3;
  v10 = v5;
  dispatch_async(v9, v11);
}

uint64_t fpfs_get_syncable_xattrs(int a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = malloc_type_malloc(0x8000uLL, 0xF369E0C0uLL);
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  if (a2)
  {
    v26 = v8;
    goto LABEL_4;
  }

  v14 = flistxattr(a1, v9, 0x8000uLL, 0);
  if ((v14 & 0x8000000000000000) != 0)
  {
    free(v10);
    goto LABEL_10;
  }

  if (v14 > 0x8000)
  {
    free(v10);
    *__error() = 12;
LABEL_10:
    v12 = 0xFFFFFFFFLL;
    goto LABEL_28;
  }

  v26 = v8;
  if (v14)
  {
    v15 = 0;
    v11 = 0;
    v16 = &v10[v14];
    v17 = v10;
    do
    {
      v18 = strlen(v17);
      if (v7[2](v7, v17))
      {
        v19 = fgetxattr(a1, v17, 0, 0, 0, 0);
        if ((v19 & 0x8000000000000000) == 0)
        {
          v20 = v19;
          if (v19 + v18 <= 0x8000 && v19 + v18 + v15 <= 0x8000)
          {
            v25 = v19 + v18 + v15;
            v21 = malloc_type_malloc(v19 + 24, 0x107004089C279B7uLL);
            *v21 = v11;
            v21[1] = v17;
            v21[2] = v20;
            *__error() = 0;
            if (fgetxattr(a1, v17, v21 + 3, v20, 0, 0) != v20)
            {
              v22 = *__error();
              if (v22)
              {
                v23 = v22;
              }

              else
              {
                v23 = 22;
              }

              *__error() = v23;
              v13 = *__error();
              v12 = 0xFFFFFFFFLL;
              v8 = v26;
              goto LABEL_25;
            }

            v11 = v21;
            v15 = v25;
          }
        }
      }

      v17 += v18 + 1;
    }

    while (v17 < v16);
    goto LABEL_5;
  }

LABEL_4:
  v11 = 0;
LABEL_5:
  v8 = v26;
  v12 = (*(v26 + 2))(v26, v11);
  v13 = *__error();
  while (1)
  {
    v21 = v11;
    if (!v11)
    {
      break;
    }

LABEL_25:
    v11 = *v21;
    free(v21);
  }

  *__error() = v13;
  free(v10);
LABEL_28:

  return v12;
}

uint64_t __fpfs_fgetfileattrs_detailed_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((fpfs_pkg_fileattrs_update(*(a1 + 48), a2, *(*(a1 + 40) + 8)) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

uint64_t __fp_log_fork(uint64_t a1)
{
  section = __fp_create_section();
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __fp_log_fork_cold_1(a1, section, v3);
  }

  return section;
}

id FPXVendorXPCInterface()
{
  if (FPXVendorXPCInterface_once != -1)
  {
    FPXVendorXPCInterface_cold_1();
  }

  v1 = FPXVendorXPCInterface_interface;

  return v1;
}

uint64_t fpfs_pkg_path_lookup(char *a1, const char *a2)
{
  v2 = fpfs_path_relative_to(a1, a2);
  if (!v2 || !*v2)
  {
    return 0;
  }

  return fpfs_pkg_relative_path_lookup();
}

const char *fpfs_path_relative_to(char *__s, const char *a2)
{
  v2 = __s;
  if (__s && a2)
  {
    v4 = strlen(__s);
    v5 = strlen(a2);
    if (v5 <= v4 && (v6 = v5, !strncmp(a2, v2, v5)))
    {
      if (v2[v6] == 47)
      {
        v2 += v6 + 1;
      }

      else
      {
        v2 += v6;
      }
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

uint64_t fpfs_openparent(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v11 = xmmword_1AAC26540;
  v12 = 0;
  v9 = 0;
  v10 = 0;
  if (fgetattrlist(a1, &v11, &v9, 0x10uLL, 0) < 0)
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = fpfs_openbyid(HIDWORD(v9), v10, a2, v6);
  }

  return v7;
}

uint64_t fpfs_is_busy_date(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getDSFileOperationClass_softClass;
  v9 = getDSFileOperationClass_softClass;
  if (!getDSFileOperationClass_softClass)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __getDSFileOperationClass_block_invoke;
    v5[3] = &unk_1E793A2E8;
    v5[4] = &v6;
    __getDSFileOperationClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  return [v2 dateIsBusyFolderDate:a1 - *MEMORY[0x1E695E468]];
}

void sub_1AAAEC184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FPPinningIsEnabledForDomainID(void *a1)
{
  v1 = [a1 fp_toProviderID];
  if ([v1 fp_isiCloudDriveIdentifier] & 1) != 0 || objc_msgSend(v1, "isEqualToString:", @"com.apple.FruitBasket.Provider") && (os_variant_has_internal_content())
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:@"TestSyncEngine"];
  }

  return v2;
}

id __FPMakeAsyncCompletionBlock(id *a1, void *a2)
{
  v4 = a1[2];
  v5 = a1;
  v6 = [a2 copy];
  _Block_signature(v6);
  v11 = v4;
  v12 = v6;
  v7 = v4;
  v8 = v6;
  v9 = __NSMakeSpecialForwardingCaptureBlock();

  return v9;
}

void __fp_dispatch_async_with_logs_block_invoke(uint64_t a1)
{
  v2 = fpfs_adopt_log(*(a1 + 32));
  v4 = *(a1 + 56);
  v5 = v2;
  v3 = fp_current_or_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __fp_dispatch_async_with_logs_block_invoke_cold_1();
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48));
  __fp_leave_section_Debug(&v4);
  __fp_pop_log(&v5);
}

void sub_1AAAEC8A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void __fp_log_adopt(uint64_t *a1, uint64_t a2)
{
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __fp_log_adopt_cold_1(a1, a2, v4);
  }
}

id fpfs_current_or_default_log()
{
  v0 = fpfs_current_log();
  if (!v0)
  {
    if (fpfs_default_log_once != -1)
    {
      fpfs_current_or_default_log_cold_1();
    }

    v0 = fpfs_default_log_log;
  }

  return v0;
}

uint64_t fpfs_openfdbyhandle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  if (*a1)
  {
    result = _try_openbyid(a2, *a1, a3, a4, a1, a5);
    if ((result & 0x80000000) == 0)
    {
      return result;
    }

    if (*__error() != 1)
    {
LABEL_21:
      if (*(a1 + 16))
      {
        v15 = *__error();
        if (!*(a1 + 8))
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }

      return 0xFFFFFFFFLL;
    }

    if (a5)
    {
      *a5 = 1;
    }

    v11 = *a1;
    v20[0] = 0;
    if ((fpfs_fsgetpath(a2, v11, v20, 0) & 0x80000000) != 0)
    {
      if (*__error() != 2 && *__error() != 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      getpid();
      v12 = (*MEMORY[0x1E69E9BC8] | *MEMORY[0x1E69E9BD0]);
      v13 = sandbox_check();
      free(v20[0]);
      if (!v13)
      {
LABEL_19:
        v16 = 1;
        goto LABEL_20;
      }
    }

    v16 = 2;
LABEL_20:
    *__error() = v16;
    goto LABEL_21;
  }

  v14 = *(a1 + 8);
  if (v14 && *(a1 + 24))
  {
    v15 = 0;
    goto LABEL_23;
  }

  if (!*(a1 + 16))
  {
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  v15 = 0;
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_23:
  if (!*(a1 + 24) || (result = _openbyparentidandname_retry(a2, a3, a4, a1, a5), (result & 0x80000000) != 0))
  {
LABEL_25:
    if (*(a1 + 16))
    {
      v17 = GSLibraryResolveDocumentId2();
      if (v17)
      {
        if (v17 != *a1)
        {
          v18 = *(a1 + 16);
          *v20 = *a1;
          v21 = v18;
          v19 = *(a1 + 32);
          v20[0] = v17;
          v20[1] = 0;
          *(&v21 + 1) = 0;
          v22 = v19;
          return fpfs_openfdbyhandle(v20, a2, a3, a4, a5);
        }

        *__error() = v15;
      }
    }

    else if (!*__error())
    {
      fpfs_openfdbyhandle_cold_1();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t _try_openbyid(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t *a5, _DWORD *a6)
{
  v12 = openbyid_np();
  if ((v12 & 0x80000000) != 0)
  {
    v15 = __error();
    if ((a3 & 3) != 0 && (a4 & 2) != 0 && *v15 == 21)
    {
      return _try_openbyid(a1, a2, a3 & 0xFFFFFFFC, 0, a5, a6);
    }

    if (*__error() == 22)
    {
      if (a6)
      {
        *a6 = 22;
      }

      *__error() = 63;
    }

    else if (!*__error())
    {
      _try_openbyid_cold_1();
    }

    return 0xFFFFFFFFLL;
  }

  v13 = v12;
  if (_validate_file_openbyid(v12, 1, a5))
  {
    if (a6)
    {
      *a6 = 0;
    }

    v14 = *__error();
    close(v13);
    *__error() = v14;
    return 0xFFFFFFFFLL;
  }

  return v13;
}

id fpfs_fgetfileattrs_detailed()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v31[1152] = *MEMORY[0x1E69E9840];
  v7 = v6;
  bzero(v31, 0x2400uLL);
  bzero(v29, 0x2400uLL);
  v26 = 0;
  if ((fpfs_fget_parent_syncroot(v5, &v26) & 0x80000000) != 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *__error();
    v15 = __error();
    v20 = strerror(*v15);
    v10 = @"fpfs_fget_parent_syncroot failed (%s)";
    goto LABEL_13;
  }

  if (v4)
  {
    v8 = v26;
    if (v26)
    {
      if (v26 != v4)
      {
        v25 = 0;
        memset(&v28, 0, sizeof(v28));
        if ((fstat(v5, &v28) & 0x80000000) == 0 && (v28.st_flags & 0x40000000) == 0)
        {
          v27[0] = MEMORY[0x1E69E9820];
          v27[1] = 3221225472;
          v27[2] = __fpfs_fget_ignore_item_block_invoke;
          v27[3] = &__block_descriptor_40_e8_i12__0i8l;
          v27[4] = &v25;
          if (!fpfs_openbyid(v28.st_dev, v8, 0x8000, v27) && (v25 & 1) != 0)
          {
            v9 = MEMORY[0x1E696ABC0];
            v10 = @"inconsisent ignore rules";
            v11 = 6;
LABEL_14:
            v16 = [v9 fp_errorWithPOSIXCode:v11 description:{v10, v20}];
            goto LABEL_15;
          }
        }
      }
    }
  }

  *&v28.st_uid = 0x20000000205;
  *&v28.st_dev = xmmword_1AAC267D8;
  if (fgetattrlist(v5, &v28, v31, 0x2400uLL, 0x28u))
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *__error();
    v14 = __error();
    v20 = strerror(*v14);
    v10 = @"fgetattrlist failed (%s)";
LABEL_13:
    v9 = v12;
    v11 = v13;
    goto LABEL_14;
  }

  if ((_parse_fileattrs(v31, 9216, v29) & 0x80000000) != 0)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = *__error();
    v19 = __error();
    v20 = strerror(*v19);
    v10 = @"_parse_fileattrs failed (%s)";
    goto LABEL_13;
  }

  v30 = v26;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __fpfs_fgetfileattrs_detailed_block_invoke;
  v21[3] = &unk_1E793DC10;
  v24 = v5;
  v23 = v2;
  v22 = v7;
  v16 = fpfs_load_additional_attrs(v5, v29, v2, v21);

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

uint64_t fpfs_fget_parent_syncroot(int a1, void *a2)
{
  v4 = 0;
  if (ffsctl(a1, 0x40084A4AuLL, &v4, 0) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  if (a2)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t _parse_fileattrs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 4);
  if ((v6 & 0x8000000) == 0)
  {
    goto LABEL_8;
  }

  v7 = (a1 + 140 + *(a1 + 140));
  v8 = *(a1 + 144);
  if (v7 + v8 > a1 + a2)
  {
    v9 = 55;
LABEL_6:
    *__error() = v9;
    if ((*(a1 + 4) & 1) == 0)
    {
      goto LABEL_29;
    }

    *__error() = 0;
    v6 = *(a1 + 4);
LABEL_8:
    if ((v6 & 1) == 0)
    {
      v7 = 0;
      goto LABEL_10;
    }

    v10 = (a1 + 24 + *(a1 + 24));
    v13 = *(a1 + 28);
    if (v10 + v13 <= a1 + a2)
    {
      if (v13 < 0x22F1)
      {
        v7 = 0;
        goto LABEL_11;
      }

      v14 = 40;
    }

    else
    {
      v14 = 55;
    }

    *__error() = v14;
LABEL_29:
    result = 0xFFFFFFFFLL;
    goto LABEL_30;
  }

  if (v8 >= 0x22F1)
  {
    v9 = 40;
    goto LABEL_6;
  }

LABEL_10:
  v10 = 0;
LABEL_11:
  if ((v6 & 0x2000000) == 0 || !*(a1 + 124))
  {
    *__error() = 70;
    v12 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 124);
      v27 = *(a1 + 4) & 0x2000000;
      *buf = 134218754;
      *&buf[4] = v26;
      *&buf[12] = 1024;
      *&buf[14] = v27;
      *&buf[18] = 2080;
      *&buf[20] = v7;
      *&buf[28] = 2080;
      *&buf[30] = v10;
      _os_log_error_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_ERROR, "ESTALE: getdirentries should skip entries [%llu, %u, %s, %s]", buf, 0x26u);
    }

    goto LABEL_29;
  }

  memset(v46, 0, sizeof(v46));
  v44 = 0u;
  v45 = 0u;
  *a1;
  memset(buf, 0, sizeof(buf));
  __memcpy_chk();
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  v11 = *&buf[4];
  if ((buf[4] & 2) != 0)
  {
    *(a3 + 32) = *&buf[32];
    if ((v11 & 0x100000) == 0)
    {
LABEL_15:
      if ((v11 & 0x2000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_33;
    }
  }

  else if ((*&buf[4] & 0x100000) == 0)
  {
    goto LABEL_15;
  }

  *(a3 + 16) = *&v46[8];
  if ((v11 & 0x2000000) == 0)
  {
LABEL_16:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  *a3 = *&v46[12];
  if ((v11 & 0x80000) == 0)
  {
LABEL_17:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(a3 + 20) = *&v46[4];
  if ((v11 & 0x4000000) == 0)
  {
LABEL_18:
    if ((v11 & 0x8000000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(a3 + 8) = *&v46[20];
  if ((v11 & 0x8000000) != 0)
  {
LABEL_19:
    if (!v7)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_36:
  *&v46[52] = *&v46[44];
  *&v46[36] = *&v46[28];
  if (!v7)
  {
    goto LABEL_39;
  }

LABEL_37:
  if ((v11 & 0x8000001) == 0x8000001)
  {
    v17 = *&v46[32];
    *(a3 + 264) = *&v46[32];
    memmove((a3 + 272), v7, v17);
    v18 = a3 + 272 + v17 - *&buf[28];
    goto LABEL_43;
  }

LABEL_39:
  if (v11)
  {
    *(a3 + 264) = 0;
    v18 = a3 + 272;
    memmove((a3 + 272), v10, *&buf[28]);
  }

  else
  {
    v18 = 0;
  }

LABEL_43:
  *(a3 + 24) = v18;
  v28[0] = 0;
  v29 = 0u;
  WORD2(v28[0]) = WORD6(v45);
  v28[1] = 0;
  v38 = 0;
  v39 = *v46;
  LODWORD(v29) = DWORD2(v45);
  DWORD2(v29) = 0;
  v30 = 0;
  v31 = 0;
  v32 = *&buf[56];
  v33 = 0;
  v34 = 0;
  v35 = *&buf[40];
  v36 = 0;
  v37 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  if (*&buf[36] == 1)
  {
    v23 = *&buf[16];
    v20 = (*&buf[4] >> 14) & 1;
    v24 = *&v46[40];
    if ((buf[16] & 1) == 0)
    {
      v24 = 1;
    }

    HIWORD(v28[0]) = v24;
    if ((buf[21] & 2) != 0)
    {
      v22 = *&v46[60];
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_57;
  }

  if (*&buf[36] != 2)
  {
    v22 = 0;
    v20 = 0;
    v23 = *&buf[16];
LABEL_57:
    if ((v23 & 4) != 0)
    {
      v21 = *&v46[44];
    }

    else
    {
      v21 = 0;
    }

    if ((v23 & 0x200) != 0)
    {
      v19 = 0;
      v36 = *&v46[52];
    }

    else
    {
      if (*&buf[36] == 1)
      {
        _parse_fileattrs_cold_1();
      }

      v19 = 0;
    }

    goto LABEL_64;
  }

  if ((buf[12] & 2) != 0)
  {
    v19 = *&v46[40];
  }

  else
  {
    v19 = 2;
  }

  v20 = (buf[5] >> 6) & 1;
  v21 = 0;
  if ((buf[21] & 2) != 0)
  {
    v22 = *&v46[44];
  }

  else
  {
    v22 = 0;
  }

LABEL_64:
  if (v20)
  {
    v25 = &buf[72];
  }

  else
  {
    v25 = 0;
  }

  result = fpfs_synthesize_metadata(a3 + 40, *&buf[36], v28, v22, v21, *&v46[36], v25, v19);
LABEL_30:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_synthesize_metadata(uint64_t a1, int a2, uint64_t a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v25 = 0;
  v26 = 0;
  if (a7)
  {
    fpfs_finder_info_deserialize(a7, &v25);
    *(a1 + 112) = v26;
    v15 = v25;
    *(a1 + 4) = *(a1 + 4) & 0xFFFFFFF5 | v25 & 8 | (2 * (v25 & 1));
    v16 = BYTE1(v25);
  }

  else
  {
    v15 = 0;
    v16 = 1;
  }

  *(a1 + 216) = v16;
  switch(a2)
  {
    case 5:
      v17 = 4;
      *(a1 + 16) = *(a3 + 96);
      v18 = *(a1 + 4) & 0xFFFFFFDF;
      goto LABEL_13;
    case 2:
      if ((v15 & 2) != 0)
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      *(a1 + 16) = *(a3 + 96);
      *(a1 + 104) = a8;
      v18 = (a4 << 6) & 0x100 | (32 * ((a4 >> 3) & 1)) | *(a1 + 4) & 0xFFFFFEDF;
      goto LABEL_13;
    case 1:
      v17 = 1;
      *(a1 + 16) = *(a3 + 96);
      *(a1 + 104) = *(a3 + 6);
      v18 = *(a1 + 4) & 0xFFFFFFDF | (32 * ((a4 >> 3) & 1));
LABEL_13:
      *a1 = v17;
      *(a1 + 4) = v18;
      result = 0;
      *(a1 + 24) = *(a3 + 80);
      *(a1 + 40) = *(a3 + 48);
      *(a1 + 8) = *(a3 + 4) & 0xFFF;
      v20 = v18 & 0xFFFFFFFB | (4 * ((*(a3 + 116) & 0x8000 | v15 & 4) != 0));
      *(a1 + 4) = v20;
      v21 = v20 & 0xFFFFFFEF | (16 * ((*(a3 + 116) >> 1) & 1));
      *(a1 + 4) = v21;
      v22 = v21 & 0xFFFFFFFE | (*(a3 + 116) >> 30) & 1;
      *(a1 + 4) = v22;
      v23 = v22 & 0xFFFFFFBF | (((*(a3 + 116) & 0x40000020) == 32) << 6);
      *(a1 + 4) = v23;
      *(a1 + 128) = a5;
      v24 = *(a3 + 16);
      *(a1 + 168) = a6;
      *(a1 + 172) = v24;
      *(a1 + 4) = v23 & 0xFFFFDFFF | (((a4 >> 1) & 1) << 13);
      return result;
  }

  *__error() = 79;
  return 0xFFFFFFFFLL;
}

uint64_t fpfs_finder_info_deserialize(uint64_t result, uint64_t a2)
{
  v2 = bswap32(*(result + 8));
  *a2 = (v2 >> 22) & 0x10 | (v2 >> 17) & 8 | ((v2 & 0x80000000) != 0) | (v2 >> 28) & 6 | *a2 & 0xE0;
  *(a2 + 1) = (v2 >> 17) & 7;
  *(a2 + 8) = bswap64(*result);
  return result;
}

id fpfs_load_additional_attrs(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a2 + 44);
  v9 = *(a2 + 216);
  v84 = *(a2 + 200);
  v85 = v9;
  v10 = *(a2 + 248);
  v86 = *(a2 + 232);
  v87 = v10;
  v11 = *(a2 + 152);
  v80 = *(a2 + 136);
  v81 = v11;
  v12 = *(a2 + 184);
  v82 = *(a2 + 168);
  v83 = v12;
  v13 = *(a2 + 88);
  v76 = *(a2 + 72);
  v77 = v13;
  v14 = *(a2 + 120);
  v78 = *(a2 + 104);
  v79 = v14;
  v15 = *(a2 + 56);
  v74 = *(a2 + 40);
  v75 = v15;
  v16 = v74;
  if ((v74 & 0xFFFFFFFE) == 2)
  {
    LODWORD(v73[0]) = 0;
    if ((fpfs_pkg_is_package_root2(a1, *(a2 + 24), v73, *(a3 + 8)) & 0x80000000) != 0)
    {
      v28 = MEMORY[0x1E696ABC0];
      v29 = *__error();
      v30 = __error();
      [v28 fp_errorWithPOSIXCode:v29 description:{@"fpfs_pkg_is_package_root2 failed (%s)", strerror(*v30)}];
      goto LABEL_49;
    }

    if ((v73[0] & 0xA) != 0)
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    if ((v73[0] & 4) != 0)
    {
      v16 = 2;
    }

    else
    {
      v16 = v17;
    }

    LODWORD(v74) = v16;
  }

  if ((v16 | 2) == 3)
  {
    is_safe_save_temp_filename = fpfs_path_is_safe_save_temp_filename(*(a2 + 24), v16 == 1);
  }

  else
  {
    is_safe_save_temp_filename = 0;
  }

  HIDWORD(v87) = is_safe_save_temp_filename;
  v73[0] = 0;
  v73[1] = 0;
  BYTE1(v73[0]) = BYTE8(v87);
  if ((v8 & 0x2000) == 0)
  {
    if ((fpfs_get_tag_data(a1, v73, &v79) & 0x80000000) != 0)
    {
      v31 = MEMORY[0x1E696ABC0];
      v32 = *__error();
      v33 = __error();
      [v31 fp_errorWithPOSIXCode:v32 description:{@"fpfs_get_tag_data failed (%s)", strerror(*v33)}];
      goto LABEL_49;
    }

    DWORD1(v74) &= ~0x1000u;
    if (fpfs_get_last_use_date(a1, &v77 + 1, 0) == 1)
    {
      DWORD1(v74) |= 0x1000u;
    }

    fpfs_get_favorite_rank(a1, &v78 + 1);
    LOBYTE(v19) = BYTE4(v74);
    if ((BYTE4(v74) & 0x20) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v72 = 0;
    v71 = 0;
    if (*(a3 + 18))
    {
      v20 = &v71;
    }

    else
    {
      v20 = 0;
    }

    if ((fpfs_eviction_properties(a1, &v72, v20) & 0x80000000) != 0)
    {
      v34 = MEMORY[0x1E696ABC0];
      v35 = *__error();
      v36 = __error();
      [v34 fp_errorWithPOSIXCode:v35 description:{@"fpfs_eviction_properties failed (%s)", strerror(*v36)}];
      goto LABEL_49;
    }

    DWORD1(v74) = DWORD1(v74) & 0xFFFFFFDF | (32 * (v72 != 0));
    *(&v86 + 1) = v72;
    BYTE4(v87) = v71;
    if ((BYTE4(v74) & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v19 = DWORD1(v74) & 0xFFFFEFFF;
  DWORD1(v74) = v19;
  if ((v19 & 0x20) != 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v19 & 1) == 0)
  {
LABEL_28:
    v21 = 0;
    LOBYTE(v72) = 0;
    if ((v8 & 0x2000) == 0)
    {
      fpfs_get_is_ignore_root(a1, &v72);
      v21 = v72 << 9;
    }

    v22 = DWORD1(v74) & 0xFFFFFDFF | v21;
    DWORD1(v74) = v22;
    v71 = 0;
    if (*(a3 + 16) != 1 || (v8 & 0x2000) != 0)
    {
      DWORD1(v74) = v22 & 0xFFFFFF7F;
      v70 = 0;
      if ((v8 & 0x2000) != 0)
      {
        v27 = 0;
        v69 = 0;
        v26 = v22 & 0xFFFF3F7F;
LABEL_44:
        DWORD1(v74) = v26 & 0xFFFEFFFF | v27;
        v37 = *a3;
        v48 = MEMORY[0x1E69E9820];
        v38 = (v26 >> 13) & 1;
        v49 = 3221225472;
        v50 = __fpfs_load_additional_attrs_block_invoke;
        v51 = &unk_1E793B898;
        v53 = a2;
        v64 = v84;
        v65 = v85;
        v66 = v86;
        v67 = v87;
        v60 = v80;
        v61 = v81;
        v62 = v82;
        v63 = v83;
        v56 = v76;
        v57 = v77;
        v58 = v78;
        v59 = v79;
        v55 = v75;
        v54 = v74;
        v68 = a3;
        v52 = v7;
        if ((fpfs_get_syncable_xattrs(a1, v38, v37, &v48) & 0x80000000) != 0)
        {
          v40 = MEMORY[0x1E696ABC0];
          v41 = *__error();
          v42 = __error();
          v43 = strerror(*v42);
          v39 = [v40 fp_errorWithPOSIXCode:v41 description:{@"fpfs_get_syncable_xattrs failed (%s)", v43, v48, v49, v50, v51}];
        }

        else
        {
          v39 = 0;
        }

        goto LABEL_50;
      }
    }

    else
    {
      fpfs_get_is_pinned(a1, &v71);
      DWORD1(v74) = DWORD1(v74) & 0xFFFFFF7F | (v71 << 7);
      v70 = 0;
    }

    *(&v82 + 1) = fpfs_copy_before_bounce_filename(a1);
    if (fpfs_is_resurrected(a1))
    {
      v23 = 1024;
    }

    else
    {
      v23 = 0;
    }

    DWORD1(v74) = DWORD1(v74) & 0xFFFFFBFF | v23;
    v24 = fpfs_copy_collaboration_identifier(a1);
    v25 = 0;
    *&v85 = v24;
    if (v74 == 2)
    {
      fpfs_is_detached_root(a1, &v70);
      v25 = v70 << 14;
    }

    DWORD1(v74) = DWORD1(v74) & 0xFFFFBFFF | v25;
    HIBYTE(v69) = 0;
    fpfs_get_is_sync_paused(a1, &v69 + 1);
    DWORD1(v74) = DWORD1(v74) & 0xFFFF7FFF | (HIBYTE(v69) << 15);
    LOBYTE(v69) = 0;
    fpfs_get_is_sync_resuming_with_drop_local_changes(a1, &v69);
    v26 = DWORD1(v74);
    v27 = v69 << 16;
    goto LABEL_44;
  }

LABEL_26:
  LODWORD(v72) = 0;
  if ((fpfs_eviction_reason(a1, &v72) & 0x80000000) == 0)
  {
    LODWORD(v87) = v72;
    goto LABEL_28;
  }

  v44 = MEMORY[0x1E696ABC0];
  v45 = *__error();
  v46 = __error();
  [v44 fp_errorWithPOSIXCode:v45 description:{@"fpfs_eviction_reason failed (%s)", strerror(*v46)}];
  v39 = LABEL_49:;
LABEL_50:

  return v39;
}

uint64_t fpfs_pkg_is_package_root2(int a1, char *__s1, int *a3, int a4)
{
  *a3 = 0;
  if (fpfs_path_is_safe_save_temp_filename(__s1, 0))
  {
    v8 = *a3;
    v9 = 16777218;
LABEL_3:
    *a3 = v8 | v9;
    goto LABEL_4;
  }

  if (a4 == 1)
  {
    v13 = fpfs_extension_in_filename(__s1, 0);
    if (v13)
    {
      v14 = v13;
      if (pkg_extension_is_forced_folder(v13))
      {
        goto LABEL_4;
      }

      if (*v14 && fpfs_icd_package_extension_list_contains(v14))
      {
        v8 = *a3;
        v9 = 2097154;
        goto LABEL_3;
      }

      if ((fpfs_pathpkg_check(__s1) & 0x80000000) == 0)
      {
        v8 = *a3;
        v9 = 4194306;
        goto LABEL_3;
      }
    }

    v16 = 0;
    if (!fpfs_pkg_get_bundle_bit(a1, &v16) && v16)
    {
      v8 = *a3;
      v9 = 8388610;
      goto LABEL_3;
    }
  }

  else
  {
    if (a4)
    {
      *__error() = 22;
      return 0xFFFFFFFFLL;
    }

    v12 = fpfs_extension_in_filename(__s1, 0);
    if (v12 && *v12 && fpfs_user_package_extension_list_contains(v12))
    {
      v8 = *a3;
      v9 = 1048578;
      goto LABEL_3;
    }
  }

LABEL_4:
  v15 = 0;
  if (fpfs_pkg_is_demoted(a1, &v15) || (v15 & 1) == 0)
  {
    if (fpfs_pkg_is_promoted(a1, &v15) || v15 != 1)
    {
      return 0;
    }

    v10 = 8;
  }

  else
  {
    v10 = 4;
  }

  *a3 |= v10;
  return 0;
}

uint64_t fpfs_path_is_safe_save_temp_filename(char *__s1, int a2)
{
  if (!a2)
  {
    if (strncmp(__s1, "(A Document Being Saved", 0x17uLL))
    {
      goto LABEL_5;
    }

    return 2;
  }

  if (_CFURLCStringIsPromiseName())
  {
    return 0;
  }

  if (!strcmp(__s1, ".DS_Store"))
  {
    return 1;
  }

  if (!strncmp(__s1, "(A Document Being Saved", 0x17uLL))
  {
    return 2;
  }

  if (!strncmp(__s1, ".dat.nosync", 0xBuLL))
  {
    return 3;
  }

LABEL_5:
  v5 = *__s1;
  if (v5 == 46)
  {
    if (__s1[1] == 126)
    {
      return 4;
    }
  }

  else if (v5 == 126 && __s1[1] == 36)
  {
    return 4;
  }

  result = fpfs_extension_in_filename(__s1, 0);
  if (result)
  {
    v6 = result;
    result = strlen(result);
    if (result)
    {
      v7 = result;
      result = strcmp(v6, "svn-base");
      if (result)
      {
        if (!a2)
        {
          goto LABEL_60;
        }

        if (*__s1 == 46)
        {
          v8 = strrchr(v6, 45);
          v9 = &v8[-v6];
          if (v8 && v9 < 0)
          {
            fpfs_path_is_safe_save_temp_filename_cold_1();
          }

          if (v8)
          {
            v10 = v8[1];
            if (v8[1])
            {
              v11 = 0;
              v12 = v8 + 2;
              while (v11 <= 3)
              {
                v13 = v11;
                if (v10 < 0 || (*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x500) == 0)
                {
                  break;
                }

                ++v11;
                v10 = v12[v13];
                if (!v12[v13])
                {
                  if (v13 >= 2 && (is_ext_image_type(v6, v9) & 1) != 0)
                  {
                    return 5;
                  }

                  break;
                }
              }
            }
          }
        }

        if (v6 - __s1 >= 6 && !strncmp((v6 - 5), ".kra.", 5uLL))
        {
          return 6;
        }

        else
        {
LABEL_60:
          if (v7 == 1 || *(v6 + v7 - 1) != 126 || *(v6 + v7))
          {
            if (!a2)
            {
              goto LABEL_47;
            }

            if (is_adobe_after_effect_safe_save(__s1, v6))
            {
              return 8;
            }

            if (is_adobe_illustrator_safe_save(__s1))
            {
              return 9;
            }

            else
            {
LABEL_47:
              if (*v6 == 115 && *(v6 + 1) == 98 && v7 == 18 && *(v6 + 2) == 45)
              {
                if (*(v6 + 11) != 45)
                {
                  return 0;
                }

                return 10;
              }

              else
              {
                if (v7 != 3 || *__s1 != 46 || *v6 != 30579 || *(v6 + 2) >= 113)
                {
                  return 0;
                }

                return 11;
              }
            }
          }

          else
          {
            return 7;
          }
        }
      }
    }
  }

  return result;
}

const char *fpfs_extension_in_filename(char *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = strrchr(a1, 46);
  v5 = 0;
  if (v4)
  {
    v6 = v4;
    if (v4 != a1)
    {
      v5 = v4 + 1;
      if (strlen(v4 + 1) > 0x32)
      {
        return 0;
      }

      v8 = v6 + 1;
      if (a2)
      {
        goto LABEL_8;
      }

      v11 = *v5;
      if (v11 == 103)
      {
        if (v6[2] == 122 && !v6[3] || !strcmp(v5, "bz2"))
        {
          goto LABEL_28;
        }

LABEL_8:
        v9 = 0;
        while (1)
        {
          v10 = *v8;
          if (!*v8)
          {
            break;
          }

          if (v10 == 32 || v10 == 47)
          {
            return 0;
          }

          v9 |= (v10 - 58) < 0xFFFFFFF6;
          ++v8;
        }

        if ((v9 & 1) == 0)
        {
          return 0;
        }

        return v5;
      }

      if (strcmp(v5, "bz2"))
      {
        if (v11 == 120)
        {
          if (v6[2] != 122 || v6[3])
          {
            goto LABEL_8;
          }
        }

        else if (v11 != 90 || v6[2])
        {
          goto LABEL_8;
        }
      }

LABEL_28:
      v12 = strdup(a1);
      v12[~a1 + v5] = 0;
      v13 = fpfs_extension_in_filename();
      if (v13)
      {
        v5 = &a1[v13 - v12];
      }

      free(v12);
    }
  }

  return v5;
}

uint64_t fpfs_pkg_is_demoted(int a1, _BYTE *a2)
{
  *a2 = 1;
  v3 = fgetxattr(a1, "com.apple.fileprovider.dir#N", 0, 0, 0, 0);
  result = 0;
  if (v3 < 0)
  {
    if (*__error() == 93)
    {
      result = 0;
      *a2 = 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t fpfs_pkg_is_promoted(int a1, _BYTE *a2)
{
  v4 = 0;
  if ((fpfs_pkg_getflags(a1, &v4) & 0x80000000) != 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v4 & 1;
  return result;
}

uint64_t fpfs_pkg_getflags(int a1, _DWORD *a2)
{
  value = 0;
  v4 = fgetxattr(a1, "com.apple.fileprovider.fpfs#P", &value, 4uLL, 0, 0);
  if ((v4 & 0x8000000000000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 <= 3)
  {
    fremovexattr(a1, "com.apple.fileprovider.fpfs#P", 0);
    *__error() = 22;
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = value;
  return result;
}

xattr_flags_t fpfs_xattr_flags_from_name(char *a1)
{
  if (fpfs_xattr_flags_from_name_onceToken != -1)
  {
    fpfs_xattr_flags_from_name_cold_1();
  }

  v2 = xattr_flags_from_name(a1);
  v3 = xattr_name_without_flags(a1);
  v4 = fpfs_xattr_flags_from_name_xattr_mods;
  if (fpfs_xattr_flags_from_name_xattr_mods)
  {
    v5 = &off_1ED6EE170;
    do
    {
      if (*(v5 - 8) == 1)
      {
        v6 = strlen(v4);
        if (!strncmp(v3, v4, v6))
        {
          goto LABEL_11;
        }
      }

      else if (!strcmp(v3, v4))
      {
LABEL_11:
        v2 = (*(v5 - 3) | v2) & ~*(v5 - 2);
        break;
      }

      v7 = *v5;
      v5 += 4;
      v4 = v7;
    }

    while (v7);
  }

  free(v3);
  return v2;
}

uint64_t __fpfs_load_additional_attrs_block_invoke(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v19, 0, sizeof(v19));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *(v4 + 56) = *(a1 + 64);
  *(v4 + 40) = v5;
  v6 = *(a1 + 80);
  v7 = *(a1 + 96);
  v8 = *(a1 + 112);
  *(v4 + 120) = *(a1 + 128);
  *(v4 + 104) = v8;
  *(v4 + 88) = v7;
  *(v4 + 72) = v6;
  v9 = *(a1 + 144);
  v10 = *(a1 + 160);
  v11 = *(a1 + 176);
  *(v4 + 184) = *(a1 + 192);
  *(v4 + 168) = v11;
  *(v4 + 152) = v10;
  *(v4 + 136) = v9;
  v12 = *(a1 + 208);
  v13 = *(a1 + 224);
  v14 = *(a1 + 240);
  *(v4 + 248) = *(a1 + 256);
  *(v4 + 232) = v14;
  *(v4 + 216) = v13;
  *(v4 + 200) = v12;
  *(*(a1 + 40) + 200) = a2;
  if ((*(**(a1 + 272) + 16))())
  {
    *(&v19[0] + 1) = "com.apple.fpfs.fileid";
    *&v19[1] = snprintf(&v19[1] + 8, 0x68uLL, "%llu:%d:%d", **(a1 + 40), *(*(a1 + 40) + 16), *(*(a1 + 40) + 20)) + 1;
    *&v19[0] = a2;
    *(*(a1 + 40) + 200) = v19;
  }

  v15 = *(a1 + 40);
  v16 = (*(*(a1 + 32) + 16))();
  fpfs_free_tag_data((*(a1 + 40) + 120));
  *(*(a1 + 40) + 200) = 0;
  free(*(a1 + 184));
  free(*(a1 + 224));
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t ___pkg_fileattrs_update_block_invoke(uint64_t a1, int a2)
{
  v7 = 0;
  v6 = 0;
  if ((fpfs_pkg_fd_lookup(a2, *(*(a1 + 32) + 24), 0, &v7, 0, &v6, *(a1 + 40)) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 32);
  if (v7)
  {
    *(v4 + 40) = 3;
    v8 = 0;
    if ((ffsctl(a2, 0x80084A02uLL, &v8, 0) & 0x80000000) == 0)
    {
      if ((fpfs_pkg_promote(a2) & 0x80000000) == 0)
      {
LABEL_8:
        fpfs_pkg_dirstat(a2, (*(a1 + 32) + 56), (*(a1 + 32) + 20));
        result = 0;
        *(*(a1 + 32) + 168) = *(*(a1 + 32) + 56);
        return result;
      }

      if (*__error() == 1 || *__error() == 13)
      {
        *__error() = 0;
        goto LABEL_8;
      }

      return 0xFFFFFFFFLL;
    }

    if (*__error() == 22)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    *(v4 + 40) = 2;
  }

  return result;
}

id objectForKeyOfClass(void *a1, uint64_t a2)
{
  v2 = [a1 objectForKey:a2];
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t fpfs_set_vfs_ignore_permissions_iopolicy()
{
  result = fpfs_supports_vfs_ignore_permissions_iopolicy();
  if (result)
  {

    return setiopolicy_np(7, 0, 1);
  }

  return result;
}

uint64_t _pkg_fileattrs_update(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(a3 + 40) - 4) < 0xFFFFFFFE)
  {
    return 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___pkg_fileattrs_update_block_invoke;
  v12[3] = &__block_descriptor_44_e8_i12__0i8l;
  v12[4] = a3;
  v13 = a4;
  v8 = _Block_copy(v12);
  v9 = v8;
  if ((a1 & 0x80000000) != 0)
  {
    v10 = fpfs_openbyid_ext(a3, a2, 0x100000, 0, v8);
  }

  else
  {
    v10 = (*(v8 + 2))(v8, a1);
  }

  v4 = v10;

  return v4;
}

os_log_t fpfs_create_log_for_provider(char *category)
{
  v1 = os_log_create("com.apple.FileProvider", category);

  return v1;
}

uint64_t fpfs_pkg_fd_lookup(int a1, uint64_t a2, char a3, _BYTE *a4, _BYTE *a5, void *a6, int a7)
{
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __fpfs_pkg_fd_lookup_block_invoke;
  v9[3] = &__block_descriptor_73_e8_i12__0i8l;
  v12 = a3;
  v9[4] = a2;
  v9[5] = a4;
  v9[6] = a5;
  v9[7] = a6;
  v10 = a1;
  v11 = a7;
  v7 = fpfs_openparent(a1, 0, 0, v9);
  if ((v7 & 0x80000000) != 0 && (*__error() == 20 || *__error() == 1 || *__error() == 13))
  {
    return 0;
  }

  return v7;
}

uint64_t FPIsFileIndexerEnabled()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FPIsFileIndexerEnabled_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = "IndexerDaemon";
  if (FPIsFileIndexerEnabled_once_token != -1)
  {
    dispatch_once(&FPIsFileIndexerEnabled_once_token, block);
  }

  return FPIsFileIndexerEnabled_enabled;
}

id FPAppIdentifierFromTeamAppTuple(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 hasPrefix:@"com.apple."])
  {
    v2 = v1;
  }

  else if ([v1 length] > 0xA)
  {
    MEMORY[0x1EEE9AC00]();
    v13[0] = 0;
    v13[1] = 0;
    v14 = 0;
    [v1 getCharacters:v13 range:{0, 10}];
    for (i = 0; i != 20; i += 2)
    {
      v5 = *(v13 + i);
      if ((v5 - 65) >= 0x1A && (v5 - 48) >= 0xA)
      {
        v7 = fp_current_or_default_log();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_20;
        }

        *buf = 138412290;
        v16 = v1;
        v8 = "[WARNING] team prefix must only contain characters in [0-9,A-Z] (%@)";
        v9 = v7;
        v10 = 12;
        goto LABEL_19;
      }
    }

    if ([v1 characterAtIndex:10] == 46)
    {
      v2 = [v1 substringFromIndex:11];
      goto LABEL_21;
    }

    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "[WARNING] team prefix must be followed by a dot.";
      v9 = v7;
      v10 = 2;
LABEL_19:
      _os_log_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }

LABEL_20:

    v2 = 0;
  }

  else
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v1;
      _os_log_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] can't extract application ID from '%@'", buf, 0xCu);
    }

    v2 = 0;
  }

LABEL_21:

  v11 = *MEMORY[0x1E69E9840];

  return v2;
}

id FPLoc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = FPLocvImpl(a1, @"FileProvider", 0, &a9);

  return v9;
}

id FPProviderNotRegistered(unint64_t a1, void *a2)
{
  v3 = a2;
  v11 = FPLoc(@"ProviderNotRegistered", v4, v5, v6, v7, v8, v9, v10, v14);
  v12 = _FPProviderNotFoundErrorHelper(v11, v3, a1);

  return v12;
}

id FPLocvImpl(void *a1, void *a2, int a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v9 = FPLocalizationBundle();
  v10 = [v9 localizedStringForKey:v7 value:@"X" table:v8];

  if ([v10 isEqualToString:@"X"])
  {
    if (a3 && (([v7 hasSuffix:@"-C"] & 1) != 0 || (objc_msgSend(v7, "hasSuffix:", @"-R") & 1) != 0 || (objc_msgSend(v7, "hasSuffix:", @".f") & 1) != 0 || (objc_msgSend(v7, "hasSuffix:", @"(*)") & 1) != 0 || (objc_msgSend(v7, "containsString:", @"(") & 1) != 0))
    {
      v11 = 0;
    }

    else
    {
      v14 = fp_current_or_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        FPLocvImpl_cold_1(v7, v8, v14);
      }

      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"KEY_MISSING(%@)", v7];
    }
  }

  else
  {
    v12 = objc_alloc(MEMORY[0x1E696AEC0]);
    v13 = [MEMORY[0x1E695DF58] currentLocale];
    v11 = [v12 initWithFormat:v10 locale:v13 arguments:a4];
  }

  return v11;
}

id FPLocalizationBundle()
{
  if (FPLocalizationBundle_onceToken != -1)
  {
    FPLocalizationBundle_cold_1();
  }

  v1 = FPLocalizationBundle_bundle;

  return v1;
}

id _FPProviderNotFoundErrorHelper(void *a1, void *a2, unint64_t a3)
{
  v5 = a2;
  v6 = a1;
  v7 = underlyingErrorForProviderNotFoundReason(a3);
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v8 setValue:v6 forKey:*MEMORY[0x1E696A578]];

  if (v7)
  {
    [v8 setValue:v7 forKey:*MEMORY[0x1E696AA08]];
  }

  if (v5)
  {
    [v8 setValue:v5 forKey:*MEMORY[0x1E696A278]];
  }

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:-2001 userInfo:v8];

  return v9;
}

id underlyingErrorForProviderNotFoundReason(unint64_t a1)
{
  if (a1 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"NSFileProviderErrorDomain" code:a1 - 2014 userInfo:{0, v1}];
  }

  return v3;
}

uint64_t fpfs_openat(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4, char a5, void *a6)
{
  v11 = a6;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0x8000;
  }

  v13 = ~(v12 >> 13) & 0x100 | v12;
  v14 = v13 | 4;
  if (a5)
  {
    v18 = mkdirat(a1, a2, a4);
    if (v18 < 0)
    {
      v19 = __error();
      v20 = 0xFFFFFFFFLL;
      if ((v12 & 0x800) != 0 || *v19 != 17)
      {
        goto LABEL_42;
      }
    }

    v17 = v18 >= 0;
    v16 = openat(a1, a2, v14 & 0xFFFFF7FC, 0);
    if ((v16 & 0x80000000) != 0)
    {
LABEL_41:
      v20 = 0xFFFFFFFFLL;
      goto LABEL_42;
    }

    goto LABEL_13;
  }

  if ((v12 & 0x200) != 0)
  {
    v21 = openat(a1, a2, v13 | 0x804, a4);
    if ((v21 & 0x80000000) == 0)
    {
      v16 = v21;
      v17 = 1;
      if (v11)
      {
        goto LABEL_14;
      }

LABEL_20:
      v20 = 0;
LABEL_21:
      v22 = *__error();
      close(v16);
      if (v17)
      {
        unlinkat(a1, a2, (a5 & 1) << 7);
      }

      *__error() = v22;
      goto LABEL_42;
    }

    v25 = __error();
    v20 = 0xFFFFFFFFLL;
    if ((v12 & 0x800) != 0 || *v25 != 17)
    {
      goto LABEL_42;
    }

    v24 = openat(a1, a2, v14, a4);
    goto LABEL_31;
  }

  v15 = openat(a1, a2, v13 | 4, 0);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = v15;
    v17 = 0;
    if (!v11)
    {
      goto LABEL_20;
    }

LABEL_14:
    v20 = v11[2](v11, v16);
    if ((v20 & 0x80000000) == 0)
    {
      if (close(v16) < 0)
      {
        v20 = 0xFFFFFFFFLL;
      }

      else
      {
        v20 = v20;
      }

      goto LABEL_42;
    }

    goto LABEL_21;
  }

  v23 = __error();
  if ((v12 & 3) != 0 && (a5 & 2) != 0 && *v23 == 21)
  {
    v24 = openat(a1, a2, v14 & 0xFFFFFDFC, 0);
LABEL_31:
    v16 = v24;
    v17 = 0;
    if ((v24 & 0x80000000) != 0)
    {
      goto LABEL_41;
    }

LABEL_13:
    if (v11)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if ((a5 & 4) != 0 || *__error() != 13 && *__error() != 1)
  {
    goto LABEL_41;
  }

  v26 = openat(a1, a2, v14 & 0xFFFFFDFC, 0);
  if (v26 < 0)
  {
    goto LABEL_41;
  }

  v27 = v26;
  v20 = fpfs_openat(a1, a2, v14 & 0xFFFFFDFC, a4, 4, v11);
  if ((v20 & 0x80000000) != 0)
  {
    v29 = *__error();
    close(v27);
    *__error() = v29;
    goto LABEL_42;
  }

  if (close(v27) < 0 && (*__error() == 9 || *__error() == 5))
  {
    goto LABEL_41;
  }

LABEL_42:

  return v20;
}

uint64_t fpfs_fgetfileattrs()
{
  v0 = fpfs_fgetfileattrs_detailed();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 domain];
    v3 = [v2 isEqualToString:*MEMORY[0x1E696A798]];

    if (v3)
    {
      v4 = [v1 code];
    }

    else
    {
      v4 = 22;
    }

    *__error() = v4;
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __fpfs_pkg_fd_lookup_block_invoke(uint64_t a1, int a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __fpfs_pkg_fd_lookup_block_invoke_2;
  v5[3] = &__block_descriptor_73_e5_i8__0l;
  v10 = *(a1 + 72);
  v2 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = v2;
  v3 = *(a1 + 68);
  v8 = *(a1 + 64);
  v9 = v3;
  return fpfs_fchdir(a2, v5);
}

uint64_t fpfs_fchdir(int a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 == -2)
  {
    v5 = v3[2](v3);
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v13 = __fpfs_fchdir_block_invoke;
    v14 = &unk_1E793A918;
    v16 = a1;
    v15 = v3;
    v6 = v12;
    v7 = openat(-2, ".", 0x100000, 0);
    if ((v7 & 0x80000000) != 0)
    {
      v5 = 0xFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
      if ((MEMORY[0x1AC594670](0xFFFFFFFFLL) & 0x80000000) != 0)
      {
        v10 = *__error();
        close(v8);
        *__error() = v10;
        v5 = v13(v6, 0xFFFFFFFFLL);
      }

      else
      {
        v5 = v13(v6, v8);
        v9 = *__error();
        close(v8);
        *__error() = v9;
      }
    }
  }

  return v5;
}

uint64_t __fpfs_fchdir_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1AC594670](*(a1 + 40)) & 0x80000000) != 0)
  {
    v5 = *__error();
    MEMORY[0x1AC594670](a2);
    *__error() = v5;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v4 = (*(*(a1 + 32) + 16))();
    if ((v4 & 0x80000000) != 0)
    {
      v6 = *__error();
      MEMORY[0x1AC594670](a2);
      *__error() = v6;
    }

    else if (MEMORY[0x1AC594670](a2) < 0)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v4;
    }
  }

  return v4;
}

uint64_t fpfs_get_last_use_date(int a1, uint64_t *a2, int a3)
{
  value[2] = *MEMORY[0x1E69E9840];
  value[0] = 0;
  value[1] = 0;
  v5 = fgetxattr(a1, "com.apple.lastuseddate#PS", value, 0x10uLL, 0, 0);
  if (v5 < 0)
  {
    if (*__error() != 93 && *__error() != 34)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_8;
    }

    result = 0;
    goto LABEL_7;
  }

  use_date = fpfs_deserialize_last_use_date(a2, value, v5, a3);
  result = 1;
  if (use_date < 0)
  {
LABEL_7:
    *a2 = 0;
    a2[1] = 0;
  }

LABEL_8:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_pkg_get_bundle_bit(int a1, BOOL *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v5[0] = 0;
  v5[1] = 0;
  if ((fpfs_get_finder_info_buffer(a1, v6) & 0x80000000) != 0)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    fpfs_finder_info_deserialize(v6, v5);
    result = 0;
    *a2 = (v5[0] & 2) != 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_get_finder_info_buffer(int a1, _OWORD *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = xmmword_1AAC26920;
  v7 = 0;
  memset(v8, 0, sizeof(v8));
  if ((fgetattrlist(a1, &v6, v8, 0x28uLL, 0) & 0x80000000) == 0)
  {
    if ((*&v8[4] - 3) > 0xFFFFFFFD)
    {
      result = 0;
      v4 = *&v8[24];
      *a2 = *&v8[8];
      a2[1] = v4;
      goto LABEL_6;
    }

    *__error() = 79;
  }

  result = 0xFFFFFFFFLL;
LABEL_6:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_get_tag_data(int a1, uint64_t a2, uint64_t a3)
{
  v6 = fgetxattr(a1, "com.apple.metadata:_kMDItemUserTags", 0, 0, 0, 0);
  if (v6 < 0)
  {
    if (*__error() != 93)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_8:
    result = 0;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    return result;
  }

  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = malloc_type_malloc(v6, 0xDD5B0152uLL);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = v8;
  v10 = fpfs_fgetxattr_checked(a1, "com.apple.metadata:_kMDItemUserTags", v8, v7);
  if (v10 < 0)
  {
    free(v9);
    return 0xFFFFFFFFLL;
  }

  *a3 = v9;
  *(a3 + 8) = v10;
  result = 0;
  if (a2)
  {
    v12 = *(a2 + 1);
  }

  else
  {
    v12 = 1;
  }

  *(a3 + 16) = v12;
  return result;
}

uint64_t fpfs_get_favorite_rank(int a1, unint64_t *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__str = 0u;
  v9 = 0u;
  v4 = fpfs_fgetxattr_checked(a1, "com.apple.metadata:kMDItemFavoriteRank", __str, 127);
  if (v4 < 0)
  {
    goto LABEL_10;
  }

  if (v4)
  {
    __str[v4] = 0;
    result = fpfs_deserialize_favorite_rank(a2, __str, v4);
    goto LABEL_11;
  }

  result = fpfs_fgetxattr_checked(a1, "com.apple.favorite-rank.number#PS", __str, 127);
  if (result < 0)
  {
    goto LABEL_10;
  }

  __str[result] = 0;
  if (!result)
  {
    *a2 = 0;
    goto LABEL_11;
  }

  __endptr = 0;
  *a2 = strtoull(__str, &__endptr, 10);
  if (!__endptr)
  {
LABEL_10:
    result = 0xFFFFFFFFLL;
    goto LABEL_11;
  }

  if (*__endptr)
  {
    result = 0xFFFFFFFFLL;
  }

  else
  {
    result = 0;
  }

LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_fgetxattr_checked(int a1, const char *a2, void *a3, int64_t a4)
{
  v5 = fgetxattr(a1, a2, a3, a4, 0, 0);
  if (v5 <= a4)
  {
    v6 = v5;
    if (v5 < 0 && *__error() == 93)
    {
      return 0;
    }
  }

  else
  {
    *__error() = 34;
    return -1;
  }

  return v6;
}

uint64_t fpfs_get_is_ignore_root(int a1, BOOL *a2)
{
  v3 = fgetxattr(a1, "com.apple.fileprovider.ignore#P", 0, 0, 0, 0);
  if (v3 < 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = v3 >= 0;
  return result;
}

uint64_t fpfs_get_is_pinned(int a1, char *a2)
{
  if ((fgetxattr(a1, "com.apple.fileprovider.pinned#PX", 0, 0, 0, 0) & 0x8000000000000000) == 0)
  {
    v3 = 1;
LABEL_5:
    result = 0;
    *a2 = v3;
    return result;
  }

  if (*__error() == 93)
  {
    v3 = 0;
    goto LABEL_5;
  }

  return 0xFFFFFFFFLL;
}

_BYTE *fpfs_copy_before_bounce_filename(int a1)
{
  v2 = fgetxattr(a1, "com.apple.fileprovider.before-bounce#PX", 0, 0, 0, 0);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2 + 1, 0x2107D275uLL);
  if (!v4)
  {
    return v4;
  }

  if (fgetxattr(a1, "com.apple.fileprovider.before-bounce#PX", v4, v3, 0, 0) != v3)
  {
    free(v4);
    return 0;
  }

  v4[v3] = 0;
  if (!*v4)
  {
    v5 = fpfs_current_or_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1AAAE1000, v5, OS_LOG_TYPE_INFO, "Found an empty filename in before_bounce_filename xattr", v7, 2u);
    }

    free(v4);
    v4 = 0;
    *__error() = 22;
  }

  return v4;
}

char *fpfs_copy_collaboration_identifier(int a1)
{
  v2 = fgetxattr(a1, "com.apple.metadata:kMDItemCollaborationIdentifier", 0, 0, 0, 0);
  if (v2 < 1)
  {
    return 0;
  }

  v3 = v2;
  v4 = malloc_type_malloc(v2, 0xF5F94156uLL);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (fgetxattr(a1, "com.apple.metadata:kMDItemCollaborationIdentifier", v4, v3, 0, 0) != v3 || (v6 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v5, v3, *MEMORY[0x1E695E488])) == 0)
  {
    v18 = v5;
    goto LABEL_14;
  }

  v7 = v6;
  MDItemCollaborationIdentifier = getMDItemCollaborationIdentifier();
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v9 = getMDPropertyCopyDecodedValueSymbolLoc_ptr;
  v23 = getMDPropertyCopyDecodedValueSymbolLoc_ptr;
  if (!getMDPropertyCopyDecodedValueSymbolLoc_ptr)
  {
    v10 = MetadataUtilitiesLibrary();
    v21[3] = dlsym(v10, "MDPropertyCopyDecodedValue");
    getMDPropertyCopyDecodedValueSymbolLoc_ptr = v21[3];
    v9 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (!v9)
  {
    fpfs_copy_collaboration_identifier_cold_1();
  }

  v11 = v9(MDItemCollaborationIdentifier, v7);
  if (!v11 || (v12 = v11, v13 = CFGetTypeID(v11), v13 != CFStringGetTypeID()))
  {
LABEL_16:
    CFRelease(v7);
    return 0;
  }

  Length = CFStringGetLength(v12);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  if (MaximumSizeForEncoding <= 0)
  {
    CFRelease(v12);
    goto LABEL_16;
  }

  v16 = MaximumSizeForEncoding;
  v17 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0x100004077774924uLL);
  LODWORD(v16) = CFStringGetCString(v12, v17, v16, 0x8000100u);
  CFRelease(v7);
  CFRelease(v12);
  if (!v16)
  {
    v18 = v17;
LABEL_14:
    free(v18);
    return 0;
  }

  return v17;
}

void sub_1AAAF14E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_is_detached_root(int a1, char *a2)
{
  if ((fgetxattr(a1, "com.apple.fileprovider.detached#B", 0, 0, 0, 0) & 0x8000000000000000) == 0 || *__error() == 93 && (fgetxattr(a1, "com.apple.fileprovider.detached", 0, 0, 0, 0) & 0x8000000000000000) == 0 || *__error() == 93 && (fgetxattr(a1, "com.apple.fileprovider.detached#PN", 0, 0, 0, 0) & 0x8000000000000000) == 0)
  {
    v4 = 1;
LABEL_3:
    result = 0;
    *a2 = v4;
    return result;
  }

  if (*__error() == 93)
  {
    v4 = 0;
    goto LABEL_3;
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpfs_get_is_sync_paused(int a1, char *a2)
{
  if ((fgetxattr(a1, "com.apple.file-provider-sync_paused_bundle_id#PX", 0, 0, 0, 0) & 0x8000000000000000) == 0)
  {
    v3 = 1;
LABEL_5:
    result = 0;
    *a2 = v3;
    return result;
  }

  if (*__error() == 93)
  {
    v3 = 0;
    goto LABEL_5;
  }

  return 0xFFFFFFFFLL;
}

uint64_t fpfs_get_is_sync_resuming_with_drop_local_changes(int a1, char *a2)
{
  if ((fgetxattr(a1, "com.apple.file-provider-resuming-sync-drop-local-changes#PX", 0, 0, 0, 0) & 0x8000000000000000) == 0)
  {
    v3 = 1;
LABEL_5:
    result = 0;
    *a2 = v3;
    return result;
  }

  if (*__error() == 93)
  {
    v3 = 0;
    goto LABEL_5;
  }

  return 0xFFFFFFFFLL;
}

uint64_t FPEncodeUserInfo(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    v7 = MEMORY[0x1E695DF70];
    v8 = a1;
    v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __FPEncodeUserInfo_block_invoke;
    v16[3] = &unk_1E793CF08;
    v17 = v9;
    v18 = v10;
    v11 = v10;
    v12 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v16];

    v13 = v11;
    *a3 = v11;
    v14 = v12;
    *a2 = v12;
  }

  return v4;
}

uint64_t FPSearchableItemValueReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v35) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v35 & 0x7F) << v5;
        if ((v35 & 0x80) == 0)
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
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          *(a1 + 56) |= 4u;
          v35 = 0;
          v24 = [a2 position] + 8;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v31 = v35;
          v32 = 24;
          goto LABEL_55;
        }

        if (v13 == 5)
        {
          v22 = PBReaderReadData();
          v23 = 40;
          goto LABEL_46;
        }

        if (v13 != 6)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_56;
        }

        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addArrayOfStringsValue:v21];
        }
      }

      else
      {
        if (v13 == 1)
        {
          v22 = PBReaderReadString();
          v23 = 48;
LABEL_46:
          v29 = *(a1 + v23);
          *(a1 + v23) = v22;

          goto LABEL_56;
        }

        if (v13 == 2)
        {
          *(a1 + 56) |= 1u;
          v35 = 0;
          v27 = [a2 position] + 8;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v35 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v31 = v35;
          v32 = 8;
LABEL_55:
          *(a1 + v32) = v31;
          goto LABEL_56;
        }

        if (v13 != 3)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 56) |= 2u;
        while (1)
        {
          LOBYTE(v35) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v35 & 0x7F) << v14;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_50;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_50:
        *(a1 + 16) = v20;
      }

LABEL_56:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

NSObject *FPDecodeUserInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  if (v5 == [v4 count])
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v4, "count")}];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __FPDecodeUserInfo_block_invoke;
    v12[3] = &unk_1E793CF30;
    v13 = v3;
    v7 = v6;
    v14 = v7;
    [v4 enumerateObjectsUsingBlock:v12];
    v8 = v14;
    v9 = v7;

    v10 = v9;
  }

  else
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1AAAE1000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] User info keys and values must have same number of items", buf, 2u);
    }

    v10 = 0;
  }

  return v10;
}

void __FPDecodeUserInfo_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) objectAtIndexedSubscript:a3];
  v7 = [FPSearchableItemValue objectFromString:v5];
  v8 = [FPSearchableItemValue objectFromString:v6];
  if (v8)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to decode key/value pair %@: %@ in userInfo. Allowed types are String, Number, Date, Boolean.", &v12, 0x16u);
    }
  }

  else
  {
    [*(a1 + 40) setObject:v7 forKey:v8];
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t fpfs_pkg_relative_path_lookup()
{
  MEMORY[0x1EEE9AC00]();
  v45 = v1;
  v46 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v57 = *MEMORY[0x1E69E9840];
  bzero(__s1, 0x2000uLL);
  v10 = __strlcpy_chk();
  if (v10 >= 0x2000)
  {
    *__error() = 63;
    v11 = 0xFFFFFFFFLL;
    goto LABEL_102;
  }

  if (__s1[v10 - 1] == 47)
  {
    __s1[v10 - 1] = 0;
  }

  if (v9)
  {
    v44 = openat_s(-2, v9, 1048836, 0);
    if ((v44 & 0x80000000) != 0)
    {
      v12 = 0;
      v13 = 0;
      v11 = 0xFFFFFFFFLL;
      goto LABEL_98;
    }
  }

  else
  {
    v44 = -2;
  }

  v43 = v3;
  *__error() = 0;
  v47 = 0;
  if (!__s1[0])
  {
LABEL_74:
    fpfs_pkg_relative_path_lookup_cold_1();
  }

  v14 = v44;
  while (1)
  {
    v15 = v56;
    bzero(v56, 0x400uLL);
    if (__strlcpy_chk() >= 0x400)
    {
      v15 = strdup(__s1);
      if (!v15)
      {
LABEL_75:
        v13 = 0;
        v12 = 0;
        if (*__error())
        {
          v11 = 0xFFFFFFFFLL;
        }

        else
        {
          v11 = 0;
        }

LABEL_85:
        if ((v14 & 0x80000000) != 0)
        {
          goto LABEL_98;
        }

        goto LABEL_97;
      }
    }

    __lasts = 0;
    v16 = strtok_r(v15, "/", &__lasts);
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0x1E69E9820];
      while (1)
      {
        if (v17 > v15 && !*(v17 - 1))
        {
          *(v17 - 1) = 47;
        }

        v48 = 0;
        v50 = v18;
        v51 = 3221225472;
        v52 = __fpfs_pkg_is_promoted_at_block_invoke;
        v53 = &__block_descriptor_40_e8_i12__0i8l;
        v54 = &v48;
        if (!fpfs_openat(v14, v15, 0x100000u, 0, 0, &v50) && (v48 & 1) != 0)
        {
          break;
        }

        v17 = strtok_r(0, "/", &__lasts);
        if (!v17)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_21:
      v50 = 0;
      v19 = strtok_r(v15, "/", &v50);
      if (v19)
      {
        v17 = v19;
        while (1)
        {
          if (v17 > v15 && !*(v17 - 1))
          {
            *(v17 - 1) = 47;
          }

          if (fpfs_path_is_safe_save_temp_filename(v17, 0))
          {
            break;
          }

          v17 = strtok_r(0, "/", &v50);
          if (!v17)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        if (v45 == 1)
        {
          __lasts = 0;
          for (i = v15; ; i = 0)
          {
            v24 = strtok_r(i, "/", &__lasts);
            v17 = v24;
            if (!v24)
            {
              break;
            }

            if (v24 > v15 && !*(v24 - 1))
            {
              *(v24 - 1) = 47;
            }

            v25 = fpfs_extension_in_filename(v24, 0);
            if (v25)
            {
              v26 = v25;
              if (!pkg_extension_is_forced_folder(v25))
              {
                if (*v26 && (fpfs_icd_package_extension_list_contains(v26) & 1) != 0)
                {
                  break;
                }

                if ((fpfs_pathpkg_check(v17) & 0x80000000) == 0)
                {
                  break;
                }

                v48 = 0;
                v50 = MEMORY[0x1E69E9820];
                v51 = 3221225472;
                v52 = __fpfs_pkg_get_bundle_bit_at_block_invoke;
                v53 = &__block_descriptor_40_e8_i12__0i8l;
                v54 = &v48;
                if (!fpfs_openat(v14, v15, 0x100000u, 0, 0, &v50) && v48 == 1)
                {
                  break;
                }
              }
            }
          }
        }

        else
        {
          if (v45)
          {
            goto LABEL_58;
          }

          v50 = 0;
          for (j = v15; ; j = 0)
          {
            v21 = strtok_r(j, "/", &v50);
            v17 = v21;
            if (!v21)
            {
              break;
            }

            if (v21 > v15 && !*(v21 - 1))
            {
              *(v21 - 1) = 47;
            }

            v22 = fpfs_extension_in_filename(v21, 0);
            if (v22)
            {
              if (*v22 && (fpfs_user_package_extension_list_contains(v22) & 1) != 0)
              {
                break;
              }
            }
          }
        }

        if (!v17)
        {
LABEL_58:
          *__error() = 0;
          v47 = 0;
LABEL_59:
          LODWORD(v30) = 1;
          goto LABEL_60;
        }
      }
    }

    v27 = strlen(v17);
    v28 = &v17[v27] - v15;
    if (asprintf(&v47, "%.*s", v17 + v27 - v15, __s1) < 0)
    {
      goto LABEL_59;
    }

    v29 = __s1[v28] == 47 ? v28 + 1 : v28;
    v30 = v29 >> 63;
LABEL_60:
    if (v15 != v56)
    {
      free(v15);
    }

    if (v30)
    {
      goto LABEL_75;
    }

    *__error() = 0;
    v31 = v47;
    if (!v47)
    {
      goto LABEL_75;
    }

    v32 = strlen(__s1);
    v33 = strlen(v47);
    if (__s1[v32 - 1] == 47)
    {
      --v32;
    }

    v34 = v33 - (v47[v33 - 1] == 47);
    LOBYTE(v50) = 0;
    if (v46)
    {
      break;
    }

    *&v56[0].st_dev = MEMORY[0x1E69E9820];
    v56[0].st_ino = 3221225472;
    *&v56[0].st_uid = __fpfs_pkg_is_demoted_at_block_invoke;
    *&v56[0].st_rdev = &__block_descriptor_40_e8_i12__0i8l;
    v56[0].st_atimespec.tv_sec = &v50;
    if ((fpfs_openat(v14, v47, 0x100000u, 0, 0, v56) & 0x80000000) != 0 || (v50 & 1) == 0)
    {
      goto LABEL_79;
    }

    v35 = v32 - v34;
    if (!v35)
    {
      free(v31);
      v11 = 0;
      v13 = 0;
      v12 = 0;
      goto LABEL_85;
    }

    __memmove_chk();
    __s1[v35] = 0;
    v36 = openat(v14, v31, 1048836);
    if ((v36 & 0x80000000) != 0)
    {
      v13 = 0;
      v12 = 0;
      v11 = 0xFFFFFFFFLL;
      goto LABEL_96;
    }

    v37 = v36;
    if (v14 != -2)
    {
      close(v14);
    }

    free(v31);
    *__error() = 0;
    v47 = 0;
    v14 = v37;
    if (!__s1[0])
    {
      goto LABEL_74;
    }
  }

  LODWORD(v14) = v44;
LABEL_79:
  v13 = v32 != v34;
  v12 = v32 == v34;
  if (v43)
  {
    memset(v56, 0, 144);
    v38 = fstatat(v14, v31, v56, 32);
    if ((v38 & 0x80000000) != 0)
    {
      v39 = __error();
      if (*v39 == 20)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0xFFFFFFFFLL;
      }

      v13 = v32 != v34 && *v39 != 20;
      v12 &= *v39 != 20;
    }

    else if ((v56[0].st_mode & 0xF000) == 0x4000)
    {
      v11 = v38;
      *v43 = v56[0].st_ino;
    }

    else
    {
      v11 = 0;
      v13 = 0;
      v12 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_96:
  free(v31);
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_98;
  }

LABEL_97:
  v40 = *__error();
  close(v14);
  *__error() = v40;
LABEL_98:
  if (v7)
  {
    *v7 = v12;
  }

  if (v5)
  {
    *v5 = (v12 ^ 1) & v13;
  }

LABEL_102:
  v41 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t fpfs_should_be_tracked(int a1, int a2, BOOL *a3)
{
  memset(&v8, 0, sizeof(v8));
  if (fstat(a1, &v8) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v8.st_mode & 0xF000;
  if (v6 == 0x4000)
  {
    return fpfs_pkg_is_package_root(a1, 0, a3, a2);
  }

  result = 0;
  *a3 = v6 == 0x8000;
  return result;
}

uint64_t __fpfs_pkg_fd_lookup_block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x2FEuLL);
  if (!*(a1 + 32))
  {
    v8 = *(a1 + 64);
    v10 = xmmword_1AAC26850;
    v11 = 0;
    bzero(v13, 0x30CuLL);
    if ((fgetattrlist(v8, &v10, v13, 0x30CuLL, 0) & 0x80000000) == 0)
    {
      if (v14 < 0x2FF)
      {
        if (__strlcpy_chk() < 0x2FE)
        {
          goto LABEL_3;
        }
      }

      else
      {
        *__error() = 63;
      }
    }

    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  __strlcpy_chk();
LABEL_3:
  v2 = *(a1 + 72);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 68);
  result = fpfs_pkg_path_lookup(v12, 0);
LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AAAF2F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void _FPRestorePersona(void *a1)
{
  if (*a1)
  {
    v2 = [MEMORY[0x1E69DF068] sharedManager];
    v4 = [v2 currentPersona];

    v3 = [v4 restorePersonaWithSavedPersonaContext:*a1];
  }
}

Class __getDSFileOperationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!DesktopServicesPrivLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __DesktopServicesPrivLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E793DC50;
    v6 = 0;
    DesktopServicesPrivLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  if (!DesktopServicesPrivLibraryCore_frameworkLibrary_0)
  {
    __getDSFileOperationClass_block_invoke_cold_2(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = objc_getClass("DSFileOperation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getDSFileOperationClass_block_invoke_cold_1();
  }

  getDSFileOperationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL FPPinningSupportedForItem(void *a1)
{
  v1 = a1;
  v2 = [v1 providerDomainID];
  IsEnabledForDomainID = FPPinningIsEnabledForDomainID(v2);

  if (!IsEnabledForDomainID)
  {
    goto LABEL_9;
  }

  if (FPPinningSupportedForItem_onceToken != -1)
  {
    FPPinningSupportedForItem_cold_1();
  }

  v4 = FPPinningSupportedForItem_unsupportedIdentifiers;
  v5 = [v1 itemIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  if ([v6 BOOLValue])
  {

LABEL_8:
    goto LABEL_9;
  }

  v7 = FPPinningSupportedForItem_unsupportedIdentifiers;
  v8 = [v1 providerItemIdentifier];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 BOOLValue];

  if ((v10 & 1) == 0)
  {
    v5 = [v1 symlinkTargetPath];
    if ([v5 length])
    {
      goto LABEL_8;
    }

    v13 = [v1 contentType];
    v14 = [v13 conformsToType:*MEMORY[0x1E6982FA8]];

    if ((v14 & 1) == 0)
    {
      v11 = ([v1 capabilities] & 0x10000000) != 0;
      goto LABEL_10;
    }
  }

LABEL_9:
  v11 = 0;
LABEL_10:

  return v11;
}

void sub_1AAAF4014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

id FPNotifyNameForForegroundChangeWithProviderID(void *a1)
{
  v1 = [a1 stringByAppendingString:@".foreground"];
  v2 = [v1 fp_libnotifyPerUserNotificationName];

  return v2;
}

void __FPDataSourceBaseQueue_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.FileProvider.CollectionDataSource.queue", v2);
  v1 = FPDataSourceBaseQueue_updateQueue;
  FPDataSourceBaseQueue_updateQueue = v0;
}

id FPDataSourceBaseQueue()
{
  if (FPDataSourceBaseQueue_once != -1)
  {
    FPDataSourceBaseQueue_cold_1();
  }

  v1 = FPDataSourceBaseQueue_updateQueue;

  return v1;
}

void sub_1AAAF4C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AAAF56F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

uint64_t FPIsTrashedQueryStringFragment(int a1)
{
  v1 = @"!=";
  if (a1)
  {
    v1 = @"==";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"(kMDItemIsTrashed %@ 1", v1];
}

__CFString *FPFileProviderOriginatedItemsQueryStringFragment(void *a1)
{
  v1 = a1;
  if ([v1 count])
  {
    if ([v1 count] == 1 && (objc_msgSend(v1, "firstObject"), v2 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v2, "isEqualToString:", @"com.apple.filesystems.UserFS.FileProvider"), v2, (v3 & 1) != 0))
    {
      v4 = @"(true)";
    }

    else
    {
      if ([v1 count] == 1)
      {
        v5 = MEMORY[0x1E696AEC0];
        v6 = [v1 firstObject];
        [v5 stringWithFormat:@"kMDItemFileProviderID == %@", v6];
      }

      else
      {
        v7 = [v1 _fp_componentsWrappedInQuotes];
        v6 = [v7 componentsJoinedByString:{@", "}];

        [MEMORY[0x1E696AEC0] stringWithFormat:@"FieldMatch(kMDItemFileProviderID, %@)", v6];
      }
      v4 = ;
    }
  }

  else
  {
    v4 = @"kMDItemFileProviderID == *";
  }

  return v4;
}

id FPExcludedOIDParentsQueryStringFragment(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  if ([v1 count])
  {
    v3 = [v1 _fp_map:&__block_literal_global_96];
    v4 = [v3 _fp_componentsJoinedByAnd];
  }

  else
  {
    v4 = @"true";
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@)", v4];

  return v5;
}

Class __getCSSearchQueryContextClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_0();
  result = objc_getClass("CSSearchQueryContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchQueryContextClass_block_invoke_cold_1();
  }

  getCSSearchQueryContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCSSearchQueryContextClass_block_invoke_0(uint64_t a1)
{
  CoreSpotlightLibrary_3();
  result = objc_getClass("CSSearchQueryContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchQueryContextClass_block_invoke_cold_1_0();
  }

  getCSSearchQueryContextClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCSSearchQueryContextClass_block_invoke_1(uint64_t a1)
{
  CoreSpotlightLibrary_4();
  result = objc_getClass("CSSearchQueryContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchQueryContextClass_block_invoke_cold_1_1();
  }

  getCSSearchQueryContextClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t CoreSpotlightLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreSpotlightLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793A340;
    v5 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = CoreSpotlightLibraryCore_frameworkLibrary;
  if (!CoreSpotlightLibraryCore_frameworkLibrary)
  {
    CoreSpotlightLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t CoreSpotlightLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreSpotlightLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793AC98;
    v5 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = CoreSpotlightLibraryCore_frameworkLibrary_1;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_1)
  {
    CoreSpotlightLibrary_cold_1_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void CoreSpotlightLibrary_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_2)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CoreSpotlightLibraryCore_block_invoke_2;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E793BDB8;
    v3 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_2 = _sl_dlopen();
  }

  if (!CoreSpotlightLibraryCore_frameworkLibrary_2)
  {
    CoreSpotlightLibrary_cold_1_1(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

uint64_t CoreSpotlightLibrary_2()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_3)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreSpotlightLibraryCore_block_invoke_3;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793CFE0;
    v5 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_3 = _sl_dlopen();
  }

  v0 = CoreSpotlightLibraryCore_frameworkLibrary_3;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_3)
  {
    CoreSpotlightLibrary_cold_1_2(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t CoreSpotlightLibrary_3()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_6)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __CoreSpotlightLibraryCore_block_invoke_6;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793DE10;
    v5 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_6 = _sl_dlopen();
  }

  v0 = CoreSpotlightLibraryCore_frameworkLibrary_6;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_6)
  {
    CoreSpotlightLibrary_cold_1_3(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void CoreSpotlightLibrary_4()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!CoreSpotlightLibraryCore_frameworkLibrary_7)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __CoreSpotlightLibraryCore_block_invoke_7;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E793EF00;
    v3 = 0;
    CoreSpotlightLibraryCore_frameworkLibrary_7 = _sl_dlopen();
  }

  if (!CoreSpotlightLibraryCore_frameworkLibrary_7)
  {
    CoreSpotlightLibrary_cold_1_4(v1);
  }

  if (v1[0])
  {
    free(v1[0]);
  }

  v0 = *MEMORY[0x1E69E9840];
}

id FPDefaultFetchedAttributes()
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v0 = getMDItemExpirationDateSymbolLoc_ptr;
  v15 = getMDItemExpirationDateSymbolLoc_ptr;
  if (!getMDItemExpirationDateSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary_3();
    v13[3] = dlsym(v1, "MDItemExpirationDate");
    getMDItemExpirationDateSymbolLoc_ptr = v13[3];
    v0 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v0)
  {
    FPDefaultFetchedAttributes_cold_2();
  }

  v2 = *v0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v3 = getMDQueryResultRelevanceSymbolLoc_ptr;
  v15 = getMDQueryResultRelevanceSymbolLoc_ptr;
  v16 = v2;
  if (!getMDQueryResultRelevanceSymbolLoc_ptr)
  {
    v4 = CoreSpotlightLibrary_3();
    v13[3] = dlsym(v4, "MDQueryResultRelevance");
    getMDQueryResultRelevanceSymbolLoc_ptr = v13[3];
    v3 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v3)
  {
    FPDefaultFetchedAttributes_cold_1();
  }

  v17 = *v3;
  v5 = MEMORY[0x1E695DEC8];
  v6 = v17;
  v7 = [v5 arrayWithObjects:&v16 count:2];

  v8 = +[FPItem fp_queryFetchAttributes];
  v9 = [v7 arrayByAddingObjectsFromArray:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

void sub_1AAAF6B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getMDItemFileItemID()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getMDItemFileItemIDSymbolLoc_ptr;
  v7 = getMDItemFileItemIDSymbolLoc_ptr;
  if (!getMDItemFileItemIDSymbolLoc_ptr)
  {
    v1 = CoreSpotlightLibrary_2();
    v5[3] = dlsym(v1, "MDItemFileItemID");
    getMDItemFileItemIDSymbolLoc_ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    getMDItemFileItemID_cold_1();
  }

  v2 = *v0;

  return v2;
}

void sub_1AAAF81F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCSSearchQueryClass_block_invoke(uint64_t a1)
{
  CoreSpotlightLibrary_0();
  result = objc_getClass("CSSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchQueryClass_block_invoke_cold_1();
  }

  getCSSearchQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCSSearchQueryClass_block_invoke_0(uint64_t a1)
{
  CoreSpotlightLibrary_3();
  result = objc_getClass("CSSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchQueryClass_block_invoke_cold_1_0();
  }

  getCSSearchQueryClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCSSearchQueryClass_block_invoke_1(uint64_t a1)
{
  CoreSpotlightLibrary_4();
  result = objc_getClass("CSSearchQuery");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCSSearchQueryClass_block_invoke_cold_1_1();
  }

  getCSSearchQueryClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1AAAF88E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _FPRestorePersona(va);
  _Unwind_Resume(a1);
}

void sub_1AAAF9120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  __fp_leave_section_Debug(&a28);
  _FPRestorePersona(&a30);
  _Unwind_Resume(a1);
}

void sub_1AAAF9508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FPPinningSupportedForItem_block_invoke()
{
  v4[7] = *MEMORY[0x1E69E9840];
  v3[0] = @"NSFileProviderRootContainerItemIdentifier";
  v3[1] = @"NSFileProviderTrashContainerItemIdentifier";
  v4[0] = MEMORY[0x1E695E118];
  v4[1] = MEMORY[0x1E695E118];
  v3[2] = @"NSFileProviderWorkingSetContainerItemIdentifier";
  v3[3] = @"NSFileProviderTemporaryLocalFolderItemIdentifier";
  v4[2] = MEMORY[0x1E695E118];
  v4[3] = MEMORY[0x1E695E118];
  v3[4] = @"NSFileProviderAllDirectoriesContainerItemIdentifier";
  v3[5] = @"NSFileProviderSearchContainerItemIdentifier";
  v4[4] = MEMORY[0x1E695E118];
  v4[5] = MEMORY[0x1E695E118];
  v3[6] = @"a1";
  v4[6] = MEMORY[0x1E695E118];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:7];
  v1 = FPPinningSupportedForItem_unsupportedIdentifiers;
  FPPinningSupportedForItem_unsupportedIdentifiers = v0;

  v2 = *MEMORY[0x1E69E9840];
}

void sub_1AAAFA5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  __fp_leave_section_Debug((v8 - 40));
  _Unwind_Resume(a1);
}

void sub_1AAAFB4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  __fp_leave_section_Debug(&a55);
  __fp_leave_section_Debug(&a56);
  _Unwind_Resume(a1);
}

id FPRecentDocumentsQueryStringForTypes(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = [v5 stringWithFormat:@"(kMDItemIsTrashed %@ 1, @"!=""];
  v10 = FPFileProviderOriginatedItemsQueryStringFragment(v8);

  v11 = [v5 stringWithFormat:@"(%@) && (%@)", v9, v10];

  v12 = FPContentTypeQueryStringForFileTypes(v7, v6);

  if (v12)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) && (%@)", v11, v12];

    v11 = v13;
  }

  v14 = FPRecencyQualifyingAttributes();
  v15 = [v14 allValues];
  v16 = [v15 _fp_map:&__block_literal_global_122];
  v17 = [v16 _fp_componentsJoinedByOr];

  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@) && (%@)", v11, v17];

  return v18;
}

id FPRecencyQualifyingAttributes()
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"lastUsedDate";
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v0 = getMDItemLastUsedDateSymbolLoc_ptr_0;
  v10 = getMDItemLastUsedDateSymbolLoc_ptr_0;
  if (!getMDItemLastUsedDateSymbolLoc_ptr_0)
  {
    v1 = CoreSpotlightLibrary_3();
    v8[3] = dlsym(v1, "MDItemLastUsedDate");
    getMDItemLastUsedDateSymbolLoc_ptr_0 = v8[3];
    v0 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v0)
  {
    FPRecencyQualifyingAttributes_cold_1();
  }

  v12[0] = *v0;
  v2 = MEMORY[0x1E695DF20];
  v3 = v12[0];
  v4 = [v2 dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1AAAFBED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FPContentTypeQueryStringForFileTypes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  if ([v3 count])
  {
    v6 = [*MEMORY[0x1E6982E48] identifier];
    v7 = [v3 containsObject:v6];

    if ((v7 & 1) == 0)
    {
      v8 = [v3 _fp_map:&__block_literal_global_107];
      v9 = [v8 _fp_componentsJoinedByOr];

      [v5 addObject:v9];
    }
  }

  if ([v4 count])
  {
    v10 = [v4 _fp_map:&__block_literal_global_112];
    v11 = [v10 _fp_componentsJoinedByOr];

    [v5 addObject:v11];
  }

  if (![v5 count])
  {
    [v5 addObject:@"true"];
  }

  v12 = [v5 _fp_map:&__block_literal_global_117];
  v13 = [v12 _fp_componentsJoinedByAnd];

  return v13;
}

uint64_t FPSearchableItemVersionReadFrom(uint64_t a1, void *a2)
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
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
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
        v13 = &OBJC_IVAR___FPSearchableItemVersion__metadataVersion;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___FPSearchableItemVersion__contentVersion;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_1AAAFCEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MetadataUtilitiesLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MetadataUtilitiesLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MetadataUtilitiesLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793A308;
    v5 = 0;
    MetadataUtilitiesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = MetadataUtilitiesLibraryCore_frameworkLibrary;
  if (!MetadataUtilitiesLibraryCore_frameworkLibrary)
  {
    MetadataUtilitiesLibrary_cold_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MetadataUtilitiesLibrary_0()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MetadataUtilitiesLibraryCore_frameworkLibrary_0)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MetadataUtilitiesLibraryCore_block_invoke_0;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793CFF8;
    v5 = 0;
    MetadataUtilitiesLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = MetadataUtilitiesLibraryCore_frameworkLibrary_0;
  if (!MetadataUtilitiesLibraryCore_frameworkLibrary_0)
  {
    MetadataUtilitiesLibrary_cold_1_0(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t MetadataUtilitiesLibrary_1()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!MetadataUtilitiesLibraryCore_frameworkLibrary_1)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __MetadataUtilitiesLibraryCore_block_invoke_1;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E793EDC0;
    v5 = 0;
    MetadataUtilitiesLibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = MetadataUtilitiesLibraryCore_frameworkLibrary_1;
  if (!MetadataUtilitiesLibraryCore_frameworkLibrary_1)
  {
    MetadataUtilitiesLibrary_cold_1_1(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1AAAFD458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAAFD6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAAFF610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1AAB002C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void FPMarkAsFileProviderBookmark(uint64_t a1, int a2)
{
  v2 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v2 = MEMORY[0x1E695E4C0];
  }

  v3 = *v2;
  JUMPOUT(0x1AC5934D0);
}

void OUTLINED_FUNCTION_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_35(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_37(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t OUTLINED_FUNCTION_9_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_1_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

id OUTLINED_FUNCTION_0_5(id a1)
{

  return a1;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_0_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_9(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_0_13(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_2_0(float a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a3 = a1;
  *(a3 + 4) = a4;
  *(a3 + 12) = 2112;
  *(a3 + 14) = v4;
  *(a3 + 22) = 2080;
}

uint64_t *OUTLINED_FUNCTION_45@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *result;
  return result;
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x34u);
}

void OUTLINED_FUNCTION_2_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_2_9(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x16u);
}

uint64_t OUTLINED_FUNCTION_10(uint64_t result, float a2, uint64_t a3, uint64_t a4)
{
  *a4 = a2;
  *(a4 + 4) = result;
  *(a4 + 12) = 2080;
  return result;
}

void OUTLINED_FUNCTION_11(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x2Au);
}

void __fp_dispatch_async_with_logs_block_invoke_cold_1()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  dispatch_queue_get_label(*(v0 + 40));
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_1(&dword_1AAAE1000, v1, v2, "[DEBUG] ┳%llx continuing on %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_1_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_1_10(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

void OUTLINED_FUNCTION_1_12(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_1_13(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, v9, OS_LOG_TYPE_FAULT, a4, &a9, 0x12u);
}

id OUTLINED_FUNCTION_1_14(id a1)
{

  return a1;
}

void CheckAndWarn(void *a1, const char *a2)
{
  v3 = a1;
  if (v3 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CheckAndWarn_cold_1(v3, a2);
    }
  }
}

void __fp_leave_section_Debug_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  OUTLINED_FUNCTION_27();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_22(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_debug_impl(a1, a4, OS_LOG_TYPE_DEBUG, a2, a3, 0x2Au);
}

void fp_dispatch_async_with_logs_cold_1()
{
  OUTLINED_FUNCTION_14();
  v9 = *MEMORY[0x1E69E9840];
  dispatch_queue_get_label(v0);
  OUTLINED_FUNCTION_0_16();
  OUTLINED_FUNCTION_1_1(&dword_1AAAE1000, v1, v2, "[DEBUG] ┣%llx dispatching to %s", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __fp_log_fork_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218242;
  v5 = a2;
  v6 = 2080;
  v7 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

id FPExecutableNameForAuditToken()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v6 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x1000uLL);
  if (proc_pidpath_audittoken(v0, buffer, 0x1000u) < 1)
  {
    v2 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:buffer isDirectory:0 relativeToURL:0];
    v2 = [v1 lastPathComponent];
  }

  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void __fp_log_adopt_cold_1(uint64_t *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v6 = 134218498;
  v7 = v4;
  v8 = 2080;
  v9 = a2;
  v10 = 1024;
  v11 = qos_class_self();
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx continuing on %s at QoS %d", &v6, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1AAB01E0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  objc_sync_exit(v2);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_12_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void __FILEPROVIDER_BAD_CONTENT_POLICY__(unint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 >= 4 && a1 - 500 >= 3 && a1 != 1003)
  {
    if (a2)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider returned invalid content policy %ld", a1];
      v6 = fp_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v8 = v5;
        _os_log_fault_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
      }

      __assert_rtn("__FILEPROVIDER_BAD_CONTENT_POLICY__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPItem.m", 458, [v5 UTF8String]);
    }

    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v8 = a1;
      _os_log_fault_impl(&dword_1AAAE1000, v3, OS_LOG_TYPE_FAULT, "[CRIT] Provider returned invalid content policy %ld", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __FPEncodeUserInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [FPSearchableItemValue stringFromObject:v5];
  v8 = [FPSearchableItemValue stringFromObject:v6];
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412546;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_1AAAE1000, v11, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to encode key/value pair %@: %@ in userInfo. Allowed types are String, Number, Date, Boolean.", &v13, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) addObject:v7];
    [*(a1 + 40) addObject:v9];
  }

  v12 = *MEMORY[0x1E69E9840];
}

id FPPathRelativeToVolumeRoot(void *a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a1;
  bzero(v12, 0x414uLL);
  v6 = [v5 path];
  v7 = getattrlist([v6 fileSystemRepresentation], &v11, v12, 0x414uLL, 0x21u);

  if (v7 < 0)
  {
    if (a3)
    {
      [MEMORY[0x1E696ABC0] fp_errorWithPOSIXCode:*__error() itemURL:v5 debugDescription:@"FPImportCookieEntry failed to get attributes"];
      *a3 = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = v13;
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v14 + v14[0]];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

void sub_1AAB041D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    *a10 = FPNotSupportedError();
    objc_end_catch();
    JUMPOUT(0x1AAB04170);
  }

  _Unwind_Resume(exception_object);
}

id rewriteBeforeFirstSync(void *a1)
{
  v1 = a1;
  v2 = +[NSFileProviderItemVersion beforeFirstSyncComponent];
  v3 = [v1 length];
  if (v3 >= [v2 length])
  {
    v5 = [v1 subdataWithRange:{0, objc_msgSend(v2, "length")}];
    if ([v5 isEqual:v2])
    {
      v6 = v2;
    }

    else
    {
      v6 = v1;
    }

    v4 = v6;
  }

  else
  {
    v4 = v1;
  }

  return v4;
}

void sub_1AAB06440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

void __FILEPROVIDER_BAD_EXTENSION__(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Domain %@ is replicated but the extension class %@ for the provider %@ doesn't implement NSFileProviderReplicatedExtension.  Break on %s to debug this.", v5, a3, v6, "__FILEPROVIDER_BAD_EXTENSION__"];
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v10 = v7;
    _os_log_fault_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
  }

  __assert_rtn("__FILEPROVIDER_BAD_EXTENSION__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXExtensionContext.m", 147, [v7 UTF8String]);
}

void __FILEPROVIDER_V2_EXTENSION_WITHOUT_IMPL(void *a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trying to build an NSFileProviderExtension based extension for domain %@, but extension principal class %@ for the provider %@ does not implement NSFileProviderExtension. If you meant to use NSFileProviderReplicatedExtension, use the initializer  -[NSFileProviderDomain initWithIdentifier:displayName:] rather than -[NSFileProviderDomain initWithIdentifier:displayName:pathRelativeToDocumentStorage:]. Break on %s to debug this.", v5, a3, v6, "__FILEPROVIDER_V2_EXTENSION_WITHOUT_IMPL"];
  v8 = fp_current_or_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 138543362;
    v10 = v7;
    _os_log_fault_impl(&dword_1AAAE1000, v8, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
  }

  __assert_rtn("__FILEPROVIDER_V2_EXTENSION_WITHOUT_IMPL", "/Library/Caches/com.apple.xbs/Sources/FileProvider/extension/FPXExtensionContext.m", 152, [v7 UTF8String]);
}

void sub_1AAB07268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB07B7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB07FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB081E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB08484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB08738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB088B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB08D88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB08F1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB09644(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB09A9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB09B98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB09FE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0A134(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0A2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0A4C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0A6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0A920(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0AA88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0B818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void __FILEPROVIDER_BAD_EXTENT__(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = fp_current_or_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v8 = 138413058;
    v9 = v5;
    v10 = 2048;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    v14 = 2080;
    v15 = "__FILEPROVIDER_BAD_EXTENT__";
    _os_log_fault_impl(&dword_1AAAE1000, v6, OS_LOG_TYPE_FAULT, "[CRIT] Illegal partial contents returned for %@ (%lu, %lu). Must return a properly aligned extent covering at least the requested range.  Break on %s to debug this.", &v8, 0x2Au);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_1AAB0C680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0CCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0D02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0D4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0D6D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0DA18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0DB64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0E370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0E8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  _Block_object_dispose(&a44, 8);
  _Block_object_dispose(&a50, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB0EC90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0F174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0F338(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0F760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB0F8CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB10188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB10C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB10DE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB111B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB114F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB119A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB11D38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB12020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB12450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB12654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB12C5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB13000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB133B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB13558(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB139C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB13FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB14388(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB14838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void *);
  __fp_pop_log(va);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB14A24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB14C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1504C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB15464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1563C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB16200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1774C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB17EE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB18134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB18B08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB199D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB19C88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB19E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1A220(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void *);
  __fp_pop_log(va);
  __fp_pop_log(va1);
  _Unwind_Resume(a1);
}

id logStringForObjects(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  v3 = MEMORY[0x1E696AEC0];
  if (v2 > 0xA)
  {
    v5 = [v1 subarrayWithRange:{0, 10}];

    v4 = [v3 stringWithFormat:@"%@...", v5];
    v1 = v5;
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v1];
  }

  return v4;
}

void sub_1AAB1AA40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1B004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1BD5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1C418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1CC14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30)
{
  __fp_pop_log(&a27);
  __fp_pop_log(&a30);
  _Unwind_Resume(a1);
}

void sub_1AAB1CE18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1E4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1E618(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1E8E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1EFA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1FA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB1FC0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB20134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB20314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB20468(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB206C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB20AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB20C18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB20F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB21080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB21200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB214B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB21790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB21964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB21B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB21CC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB2207C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void *);
  __fp_pop_log(va);
  __fp_pop_log(va1);
  _Unwind_Resume(a1);
}

void sub_1AAB2235C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB226EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB22A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB22B30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB22D78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB22E84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB230CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB231D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB23420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB2352C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB23758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB23F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB241A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB243F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB24698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB24A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB24BB4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB24DD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB25188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB25324(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

void sub_1AAB25724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_pop_log(va);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a2 = a4;
  *(a2 + 4) = a3;
  *(a2 + 12) = 2112;
  *(a2 + 14) = result;
  *(a2 + 22) = 2080;
  return result;
}

void OUTLINED_FUNCTION_8(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = v2;
  *(a2 + 32) = v3;
  *(a2 + 34) = 0;
}

void OUTLINED_FUNCTION_13_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 14) = v3;
  *(a3 + 22) = 2112;
  *(a3 + 24) = a2;
}

void OUTLINED_FUNCTION_18(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = v3;
  *(a2 + 32) = v2;
  *(a2 + 34) = 0;
}

void OUTLINED_FUNCTION_38(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = v3;
  *(a2 + 32) = 1024;
  *(a2 + 34) = 0;
  *(a2 + 38) = v2;
  *(a2 + 40) = 0;
}

void OUTLINED_FUNCTION_39(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_40@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 32);
  return result;
}

void OUTLINED_FUNCTION_44(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t CalculateFolderType(void *a1, void *a2, void *a3, void *a4, int a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if ([v11 isEqualToString:@"Downloads"] && (objc_msgSend(v12, "isEqualToString:", @"NSFileProviderRootContainerItemIdentifier") & 1) != 0)
  {
    goto LABEL_3;
  }

  if (![v13 fp_isiCloudDriveIdentifier])
  {
    goto LABEL_15;
  }

  if (([v12 isEqualToString:@"NSFileProviderRootContainerItemIdentifier"] & 1) == 0)
  {
    v17 = [v14 URLByDeletingLastPathComponent];
    v18 = [v17 lastPathComponent];
    v19 = [v18 isEqualToString:@"com~apple~CloudDocs"];

    if (!v19)
    {
      goto LABEL_15;
    }
  }

  if ([v11 isEqualToString:@"Desktop"])
  {
LABEL_8:
    v16 = 2;
    goto LABEL_16;
  }

  if ([v11 isEqualToString:@"Documents"])
  {
LABEL_10:
    v16 = 3;
    goto LABEL_16;
  }

  if (([v11 isEqualToString:@"Downloads"] & 1) == 0)
  {
    if (a5)
    {
      if ([v15 isEqualToString:@"com.apple.Desktop"])
      {
        goto LABEL_8;
      }

      if ([v15 isEqualToString:@"com.apple.Documents"])
      {
        goto LABEL_10;
      }
    }

LABEL_15:
    v16 = 1;
    goto LABEL_16;
  }

LABEL_3:
  v16 = 4;
LABEL_16:

  return v16;
}

void __FILEPROVIDER_BAD_ITEM__(void *a1, void *a2, void *a3, void *a4, uint64_t a5, int a6, int a7)
{
  v16 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  if (![v13 length])
  {
    __FILEPROVIDER_BAD_ITEM_MISSING_PROVIDER__(v16, v13, v14, a7);
  }

  if (![v14 length])
  {
    __FILEPROVIDER_BAD_ITEM_MISSING_IDENTIFIER__(v16, v13, v14, a7);
  }

  if ([v15 length])
  {
    if (a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __FILEPROVIDER_BAD_ITEM_MISSING_FILENAME__(v16, v13, v14, a7);
    if (a5)
    {
LABEL_7:
      if (!a6)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  __FILEPROVIDER_BAD_ITEM_MISSING_CONTENTTYPE__(v16, v13, v14, a7);
  if (a6)
  {
LABEL_8:
    __FILEPROVIDER_BAD_ITEM_MISSING_ITEMVERSION__(v16, v13, v14, a7);
  }

LABEL_9:
}

void __FILEPROVIDER_BAD_ITEM_MISSING_PROVIDER__(void *a1, void *a2, void *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (a4)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider %@ returned invalid item %@ of class %@ with identifier %@, missing provider. Break on %s to debug this.", v8, v7, objc_opt_class(), v9, "__FILEPROVIDER_BAD_ITEM_MISSING_PROVIDER__"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v16 = v13;
      _os_log_fault_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
    }

    __assert_rtn("__FILEPROVIDER_BAD_ITEM_MISSING_PROVIDER__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPItem.m", 364, [v13 UTF8String]);
  }

  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 138544386;
    v16 = v8;
    v17 = 2112;
    v18 = v7;
    v19 = 2114;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = v9;
    v23 = 2082;
    v24 = "__FILEPROVIDER_BAD_ITEM_MISSING_PROVIDER__";
    v12 = v20;
    _os_log_fault_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_FAULT, "[CRIT] Provider %{public}@ returned invalid item %@ of class %{public}@ with identifier %{public}@, missing provider. Break on %{public}s to debug this.", buf, 0x34u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __FILEPROVIDER_BAD_ITEM_MISSING_IDENTIFIER__(void *a1, void *a2, void *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (a4)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider %@ returned invalid item %@ of class %@ with identifier %@, missing identifier. Break on %s to debug this.", v8, v7, objc_opt_class(), v9, "__FILEPROVIDER_BAD_ITEM_MISSING_IDENTIFIER__"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v16 = v13;
      _os_log_fault_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
    }

    __assert_rtn("__FILEPROVIDER_BAD_ITEM_MISSING_IDENTIFIER__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPItem.m", 376, [v13 UTF8String]);
  }

  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 138544386;
    v16 = v8;
    v17 = 2112;
    v18 = v7;
    v19 = 2114;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = v9;
    v23 = 2082;
    v24 = "__FILEPROVIDER_BAD_ITEM_MISSING_IDENTIFIER__";
    v12 = v20;
    _os_log_fault_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_FAULT, "[CRIT] Provider %{public}@ returned invalid item %@ of class %{public}@ with identifier %{public}@, missing identifier. Break on %{public}s to debug this.", buf, 0x34u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __FILEPROVIDER_BAD_ITEM_MISSING_FILENAME__(void *a1, void *a2, void *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (a4)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider %@ returned invalid item %@ of class %@ with identifier %@, missing filename. Break on %s to debug this.", v8, v7, objc_opt_class(), v9, "__FILEPROVIDER_BAD_ITEM_MISSING_FILENAME__"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v16 = v13;
      _os_log_fault_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
    }

    __assert_rtn("__FILEPROVIDER_BAD_ITEM_MISSING_FILENAME__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPItem.m", 388, [v13 UTF8String]);
  }

  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 138544386;
    v16 = v8;
    v17 = 2112;
    v18 = v7;
    v19 = 2114;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = v9;
    v23 = 2082;
    v24 = "__FILEPROVIDER_BAD_ITEM_MISSING_FILENAME__";
    v12 = v20;
    _os_log_fault_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_FAULT, "[CRIT] Provider %{public}@ returned invalid item %@ of class %{public}@ with identifier %{public}@, missing filename. Break on %{public}s to debug this.", buf, 0x34u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __FILEPROVIDER_BAD_ITEM_MISSING_CONTENTTYPE__(void *a1, void *a2, void *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (a4)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider %@ returned invalid item %@ of class %@ with identifier %@, missing contentType. Break on %s to debug this.", v8, v7, objc_opt_class(), v9, "__FILEPROVIDER_BAD_ITEM_MISSING_CONTENTTYPE__"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v16 = v13;
      _os_log_fault_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
    }

    __assert_rtn("__FILEPROVIDER_BAD_ITEM_MISSING_CONTENTTYPE__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPItem.m", 400, [v13 UTF8String]);
  }

  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 138544386;
    v16 = v8;
    v17 = 2112;
    v18 = v7;
    v19 = 2114;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = v9;
    v23 = 2082;
    v24 = "__FILEPROVIDER_BAD_ITEM_MISSING_CONTENTTYPE__";
    v12 = v20;
    _os_log_fault_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_FAULT, "[CRIT] Provider %{public}@ returned invalid item %@ of class %{public}@ with identifier %{public}@, missing contentType. Break on %{public}s to debug this.", buf, 0x34u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __FILEPROVIDER_BAD_ITEM_MISSING_ITEMVERSION__(void *a1, void *a2, void *a3, int a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (a4)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Provider %@ returned invalid item %@ of class %@ with identifier %@, missing itemVersion. Break on %s to debug this.", v8, v7, objc_opt_class(), v9, "__FILEPROVIDER_BAD_ITEM_MISSING_ITEMVERSION__"];
    v14 = fp_current_or_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v16 = v13;
      _os_log_fault_impl(&dword_1AAAE1000, v14, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", buf, 0xCu);
    }

    __assert_rtn("__FILEPROVIDER_BAD_ITEM_MISSING_ITEMVERSION__", "/Library/Caches/com.apple.xbs/Sources/FileProvider/framework/FPItem.m", 412, [v13 UTF8String]);
  }

  v10 = fp_current_or_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    *buf = 138544386;
    v16 = v8;
    v17 = 2112;
    v18 = v7;
    v19 = 2114;
    v20 = objc_opt_class();
    v21 = 2114;
    v22 = v9;
    v23 = 2082;
    v24 = "__FILEPROVIDER_BAD_ITEM_MISSING_ITEMVERSION__";
    v12 = v20;
    _os_log_fault_impl(&dword_1AAAE1000, v10, OS_LOG_TYPE_FAULT, "[CRIT] Provider %{public}@ returned invalid item %@ of class %{public}@ with identifier %{public}@, missing itemVersion. Break on %{public}s to debug this.", buf, 0x34u);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void OUTLINED_FUNCTION_6_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

void OUTLINED_FUNCTION_7_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x2Au);
}

uint64_t fpfs_acl_is_set(_acl *a1, acl_perm_t a2)
{
  entry_p = 0;
  if (acl_get_entry(a1, 0, &entry_p))
  {
    return 0;
  }

  while (1)
  {
    tag_type_p = ACL_UNDEFINED_TAG;
    if (acl_get_tag_type(entry_p, &tag_type_p))
    {
      v4 = 0;
    }

    else
    {
      v4 = tag_type_p == ACL_EXTENDED_DENY;
    }

    if (!v4)
    {
      goto LABEL_19;
    }

    permset_p = 0;
    if (acl_get_permset(entry_p, &permset_p))
    {
      goto LABEL_19;
    }

    qualifier = acl_get_qualifier(entry_p);
    if (!qualifier)
    {
      goto LABEL_19;
    }

    v6 = qualifier;
    v15 = 0;
    v7 = malloc_type_malloc(0x105uLL, 0x100004077774924uLL);
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = v7;
    v16 = 0;
    if (!mbr_identifier_translate())
    {
      break;
    }

    free(v8);
LABEL_12:
    acl_free(v6);
LABEL_19:
    if (entry_p)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    if (acl_get_entry(a1, v10, &entry_p))
    {
      return 0;
    }
  }

  if (v16 == 1)
  {
    v9 = "user";
  }

  else
  {
    v9 = "group";
  }

  snprintf(v8, 0x105uLL, "%s:%s", v9, v15);
  free(v15);
  acl_free(v6);
  if (strcmp(v8, "group:everyone") || !acl_get_perm_np(permset_p, a2))
  {
    free(v8);
    goto LABEL_19;
  }

  free(v8);
  return 1;
}

uint64_t fpfs_fset_acl(uint64_t a1, acl_perm_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  permset_d = 0;
  entry_p = 0;
  fd = acl_get_fd(a1);
  if (!fd)
  {
    if (*__error() != 2 || (acl_p = acl_init(1)) == 0)
    {
      v6 = 0xFFFFFFFFLL;
      goto LABEL_48;
    }

LABEL_8:
    tag_qualifier_p = 0uLL;
    os_unfair_lock_lock(&resolve_everyone_grpuuid_lock);
    if (resolve_everyone_grpuuid__cached != 1)
    {
      os_unfair_lock_unlock(&resolve_everyone_grpuuid_lock);
      v25 = 0;
      v14 = sysconf(71);
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      v15 = v14;
      v16 = malloc_type_malloc(v14, 0x4EF49328uLL);
      if (!v16)
      {
        goto LABEL_26;
      }

      memset(&v27, 0, sizeof(v27));
      while (1)
      {
        v17 = v16;
        if (!getgrnam_r("everyone", &v27, v16, v15, &v25))
        {
          break;
        }

        if (*__error() == 34)
        {
          v15 *= 16;
          v16 = malloc_type_realloc(v17, v15, 0x7E6CCF78uLL);
          if (v16)
          {
            continue;
          }
        }

        free(v17);
        goto LABEL_26;
      }

      v18 = v25 ? v25->gr_gid : 0;
      free(v17);
      v27.gr_name = 0;
      v27.gr_passwd = 0;
      if (mbr_gid_to_uuid(v18, &v27) < 0)
      {
LABEL_26:
        v6 = 0;
LABEL_47:
        v19 = *__error();
        acl_free(acl_p);
        *__error() = v19;
        goto LABEL_48;
      }

      os_unfair_lock_lock(&resolve_everyone_grpuuid_lock);
      if ((resolve_everyone_grpuuid__cached & 1) == 0)
      {
        resolve_everyone_grpuuid_everyoneUUID = *&v27.gr_name;
        resolve_everyone_grpuuid__cached = 1;
      }
    }

    tag_qualifier_p = resolve_everyone_grpuuid_everyoneUUID;
    os_unfair_lock_unlock(&resolve_everyone_grpuuid_lock);
    v7 = acl_create_entry(&acl_p, &entry_p);
    if ((v7 & 0x80000000) != 0)
    {
      v6 = v7;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        fpfs_fset_acl_cold_8();
      }
    }

    else
    {
      v8 = acl_set_tag_type(entry_p, ACL_EXTENDED_DENY);
      if ((v8 & 0x80000000) != 0)
      {
        v6 = v8;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          fpfs_fset_acl_cold_7();
        }
      }

      else
      {
        permset = acl_get_permset(entry_p, &permset_d);
        if ((permset & 0x80000000) != 0)
        {
          v6 = permset;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            fpfs_fset_acl_cold_6();
          }
        }

        else
        {
          v10 = acl_clear_perms(permset_d);
          if ((v10 & 0x80000000) != 0)
          {
            v6 = v10;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              fpfs_fset_acl_cold_5();
            }
          }

          else
          {
            v11 = acl_add_perm(permset_d, a2);
            if ((v11 & 0x80000000) != 0)
            {
              v6 = v11;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                fpfs_fset_acl_cold_4();
              }
            }

            else
            {
              v12 = acl_set_qualifier(entry_p, &tag_qualifier_p);
              if ((v12 & 0x80000000) != 0)
              {
                v6 = v12;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  fpfs_fset_acl_cold_3();
                }
              }

              else
              {
                v13 = acl_set_permset(entry_p, permset_d);
                if ((v13 & 0x80000000) != 0)
                {
                  v6 = v13;
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    fpfs_fset_acl_cold_2();
                  }
                }

                else
                {
                  v6 = MEMORY[0x1AC5936E0](a1, acl_p);
                  if ((v6 & 0x80000000) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    fpfs_fset_acl_cold_1();
                  }
                }
              }
            }
          }
        }
      }
    }

    goto LABEL_47;
  }

  v5 = fd;
  if (!fpfs_acl_is_set(fd, a2))
  {
    acl_p = v5;
    goto LABEL_8;
  }

  acl_free(v5);
  v6 = 0;
LABEL_48:
  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t fpfs_clear_file_acl(const char *a1)
{
  v2 = acl_init(0);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = acl_set_link_np(a1, ACL_TYPE_ACCESS, v2);
  if ((v4 & 0x80000000) != 0 && *__error() == 45)
  {
    v4 = 0;
    *__error() = 0;
  }

  v5 = *__error();
  acl_free(v3);
  *__error() = v5;
  return v4;
}

uint64_t fpfs_clear_acl(uint64_t a1)
{
  v2 = acl_init(0);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v2;
  v4 = MEMORY[0x1AC5936E0](a1, v2);
  v5 = *__error();
  acl_free(v3);
  *__error() = v5;
  return v4;
}

void sub_1AAB32E00(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_1AAB33D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1AAB34B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  objc_destroyWeak((v27 + 56));
  _Block_object_dispose(&a27, 8);
  objc_destroyWeak(&location);
  __fp_leave_section_Debug(&a20);
  _Unwind_Resume(a1);
}

void sub_1AAB34DCC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  __fp_leave_section_Debug(va);
  _Unwind_Resume(a1);
}

id cachedFrameworkOverridingObjects()
{
  if (cachedFrameworkOverridingObjects_onceToken != -1)
  {
    cachedFrameworkOverridingObjects_cold_1();
  }

  v1 = frameworkOverridingObjects;

  return v1;
}

id frameworkOverridingModulesDirectoryURL()
{
  if (frameworkOverridingModulesDirectoryURL_onceToken != -1)
  {
    frameworkOverridingModulesDirectoryURL_cold_1();
  }

  v1 = frameworkOverridingModulesDirectoryURL_URL;

  return v1;
}

void __cachedFrameworkOverridingObjects_block_invoke()
{
  v59[1] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v0 = fp_default_log();
  v1 = frameworkOverridingModulesDirectoryURL();
  v40 = [MEMORY[0x1E695DF70] array];
  v2 = v1;
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v45 = *MEMORY[0x1E695DB78];
  v59[0] = *MEMORY[0x1E695DB78];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
  v36 = v3;
  v37 = v2;
  v5 = [v3 contentsOfDirectoryAtURL:v2 includingPropertiesForKeys:v4 options:7 error:0];
  v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v51;
    allocator = *MEMORY[0x1E695E480];
    v42 = v4;
    do
    {
      v9 = 0;
      do
      {
        if (*v51 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v50 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 resourceValuesForKeys:v4 error:0];
        v13 = [v10 pathExtension];
        if ([v13 isEqualToString:@"bundle"])
        {
          v14 = [v12 objectForKeyedSubscript:v45];
          v15 = [v14 BOOLValue];

          if (v15)
          {
            v16 = CFBundleCreate(allocator, v10);
            if (v16)
            {
              v17 = v16;
              v18 = CFBundleGetIdentifier(v16);
              v19 = CFBundleGetInfoDictionary(v17);
              v20 = [v19 objectForKey:@"FileProviderModuleClass"];
              v44 = v20;
              if (![v18 isEqualToString:@"com.apple.CloudDocsFileProvider"])
              {
                if (v20)
                {
                  error = 0;
                  if (!CFBundleLoadExecutableAndReturnError(v17, &error))
                  {
                    v28 = fp_current_or_default_log();
                    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v55 = v18;
                      v56 = 2112;
                      v57 = error;
                      _os_log_error_impl(&dword_1AAAE1000, v28, OS_LOG_TYPE_ERROR, "[ERROR] Could not load bundle %@. Error: %@", buf, 0x16u);
                    }

                    CFRelease(error);
                    goto LABEL_28;
                  }

                  v22 = NSClassFromString(v20);
                  if (v22)
                  {
                    v23 = objc_alloc_init(v22);
                    v41 = v23;
                    if (v23)
                    {
                      [v39 addObject:v23];
                      v24 = fp_current_or_default_log();
                      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412546;
                        v55 = v44;
                        v56 = 2112;
                        v57 = v18;
                        _os_log_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_INFO, "[INFO] Loaded module %@ from bundle %@", buf, 0x16u);
                      }

                      [v40 addObject:v17];
                    }

                    else
                    {
                      v29 = fp_current_or_default_log();
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138412546;
                        v55 = v44;
                        v56 = 2112;
                        v57 = v18;
                        _os_log_error_impl(&dword_1AAAE1000, v29, OS_LOG_TYPE_ERROR, "[ERROR] Could not instantiate module class %@ from extension module bundle %@", buf, 0x16u);
                      }
                    }

                    CFRelease(v17);

                    goto LABEL_29;
                  }

                  v21 = fp_current_or_default_log();
                  if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_27;
                  }

                  *buf = 138412546;
                  v55 = v44;
                  v56 = 2112;
                  v57 = v18;
                  v25 = v21;
                  v26 = "[ERROR] Could not load class %@ from extension module bundle %@";
                  v27 = 22;
                }

                else
                {
                  v21 = fp_current_or_default_log();
                  if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_27;
                  }

                  *buf = 138412290;
                  v55 = v18;
                  v25 = v21;
                  v26 = "[ERROR] Bundle %@ does not have a FileProviderModuleClass entry.";
                  v27 = 12;
                }

                _os_log_error_impl(&dword_1AAAE1000, v25, OS_LOG_TYPE_ERROR, v26, buf, v27);
                goto LABEL_27;
              }

              v21 = fp_current_or_default_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                __cachedFrameworkOverridingObjects_block_invoke_cold_1(&v48, v49, v21);
              }

LABEL_27:

LABEL_28:
              CFRelease(v17);
LABEL_29:
              v4 = v42;
            }

            else
            {
              v18 = fp_current_or_default_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v55 = v10;
                _os_log_error_impl(&dword_1AAAE1000, v18, OS_LOG_TYPE_ERROR, "[ERROR] Could not load module bundle at %@", buf, 0xCu);
              }
            }
          }
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v30 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      v7 = v30;
    }

    while (v30);
  }

  [v39 sortUsingComparator:&__block_literal_global_159];
  v31 = fp_current_or_default_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v39 count];
    *buf = 67109120;
    LODWORD(v55) = v32;
    _os_log_impl(&dword_1AAAE1000, v31, OS_LOG_TYPE_INFO, "[INFO] Loaded %d framework overrides modules.", buf, 8u);
  }

  v33 = frameworkOverridingObjects;
  frameworkOverridingObjects = v39;

  v34 = cachedFrameworkOverridingObjects_frameworkOverridingBundles;
  cachedFrameworkOverridingObjects_frameworkOverridingBundles = v40;

  objc_autoreleasePoolPop(context);
  v35 = *MEMORY[0x1E69E9840];
}

uint64_t __readFrameworkOverridingModulesFromURL_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 overridePriority];
  }

  else
  {
    v6 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v5 overridePriority];
  }

  else
  {
    v7 = 0;
  }

  if (v6 <= v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6 < v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

uint64_t __frameworkOverridingModulesDirectoryURL_block_invoke()
{
  frameworkOverridingModulesDirectoryURL_URL = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/System/Library/PrivateFrameworks/FileProvider.framework/OverrideBundles" isDirectory:1];

  return MEMORY[0x1EEE66BB8]();
}

uint64_t fpfs_fsetxattr(int a1, char *__s1, const void *a3, size_t a4, u_int32_t a5, int a6)
{
  result = strcmp(__s1, "com.apple.fpfs.fileid");
  if (result)
  {

    return fsetxattr(a1, __s1, a3, a4, a5, a6);
  }

  return result;
}

uint64_t fpfs_set_tag_data(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (v7 = *(a2 + 8)) != 0)
  {
    if ((fpfs_fsetxattr(a1, "com.apple.metadata:_kMDItemUserTags", *a2, v7, 0, 0) & 0x80000000) != 0)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    if (fremovexattr(a1, "com.apple.metadata:_kMDItemUserTags", 0) < 0 && *__error() != 93)
    {
      return 0xFFFFFFFFLL;
    }

    if (!a2)
    {
      v8 = 0;
      goto LABEL_11;
    }
  }

  v8 = *(a2 + 16);
LABEL_11:
  result = 0;
  *(a3 + 1) = 1;
  *(a4 + 1) = v8;
  return result;
}

uint64_t fpfs_serialize_last_use_date(uint64_t *a1, UInt8 *a2, unint64_t a3, int a4)
{
  if (a4 && (_validate_last_used_time(a1) & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *a1;
  v8 = a1[1];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v9 = getMDPropertyCopyEncodedDataForLastUsedDateWithTimeSpecSymbolLoc_ptr;
  v16 = getMDPropertyCopyEncodedDataForLastUsedDateWithTimeSpecSymbolLoc_ptr;
  if (!getMDPropertyCopyEncodedDataForLastUsedDateWithTimeSpecSymbolLoc_ptr)
  {
    v10 = MetadataUtilitiesLibrary();
    v14[3] = dlsym(v10, "MDPropertyCopyEncodedDataForLastUsedDateWithTimeSpec");
    getMDPropertyCopyEncodedDataForLastUsedDateWithTimeSpecSymbolLoc_ptr = v14[3];
    v9 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v9)
  {
    fpfs_serialize_last_use_date_cold_1();
  }

  v11 = v9(v7, v8);
  if (consume_data_into_buffer(v11, a2, a3) == 16)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1AAB35F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _validate_last_used_time(uint64_t *a1)
{
  if (*a1 < 1000000000)
  {
LABEL_5:
    *__error() = 33;
    return 0xFFFFFFFFLL;
  }

  v3.tv_sec = 0;
  *&v3.tv_usec = 0;
  if ((gettimeofday(&v3, 0) & 0x80000000) == 0)
  {
    if (*a1 <= v3.tv_sec + 86400 && a1[1] <= 999999999)
    {
      return 0;
    }

    goto LABEL_5;
  }

  return 0xFFFFFFFFLL;
}

uint64_t consume_data_into_buffer(const __CFData *a1, UInt8 *a2, unint64_t a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  Length = CFDataGetLength(a1);
  if (Length <= a3)
  {
    v7 = Length;
    v9.location = 0;
    v9.length = Length;
    CFDataGetBytes(a1, v9, a2);
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  CFRelease(a1);
  return v7;
}

uint64_t fpfs_deserialize_last_use_date(uint64_t *a1, const UInt8 *a2, CFIndex a3, int a4)
{
  v6 = CFDataCreate(0, a2, a3);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v7 = getMDPropertyDecodedLastUsedDateTimeSpecSymbolLoc_ptr;
  v14 = getMDPropertyDecodedLastUsedDateTimeSpecSymbolLoc_ptr;
  if (!getMDPropertyDecodedLastUsedDateTimeSpecSymbolLoc_ptr)
  {
    v8 = MetadataUtilitiesLibrary();
    v12[3] = dlsym(v8, "MDPropertyDecodedLastUsedDateTimeSpec");
    getMDPropertyDecodedLastUsedDateTimeSpecSymbolLoc_ptr = v12[3];
    v7 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v7)
  {
    fpfs_deserialize_last_use_date_cold_1();
  }

  v9 = v7(v6, a1);
  CFRelease(v6);
  if (v9)
  {
    if (a4)
    {
      return _validate_last_used_time(a1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *__error() = 34;
    return 0xFFFFFFFFLL;
  }
}

void sub_1AAB3615C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_set_last_use_date(int a1, uint64_t *a2, int a3)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  if ((fpfs_serialize_last_use_date(a2, v6, 0x10uLL, a3) & 0x80000000) != 0)
  {
    if (fremovexattr(a1, "com.apple.lastuseddate#PS", 0) < 0 && *__error() != 93)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = fpfs_fsetxattr(a1, "com.apple.lastuseddate#PS", v6, 0x10uLL, 0, 0);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_serialize_favorite_rank(uint64_t a1, UInt8 *a2, unint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getMDPropertyCopyEncodedDataForFavoriteRankSymbolLoc_ptr;
  v13 = getMDPropertyCopyEncodedDataForFavoriteRankSymbolLoc_ptr;
  if (!getMDPropertyCopyEncodedDataForFavoriteRankSymbolLoc_ptr)
  {
    v7 = MetadataUtilitiesLibrary();
    v11[3] = dlsym(v7, "MDPropertyCopyEncodedDataForFavoriteRank");
    getMDPropertyCopyEncodedDataForFavoriteRankSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    fpfs_serialize_favorite_rank_cold_1();
  }

  v8 = v6(a1, 0);
  if (v8)
  {
    return consume_data_into_buffer(v8, a2, a3);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1AAB36350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_deserialize_favorite_rank(void *a1, const UInt8 *a2, CFIndex a3)
{
  if (a3)
  {
    v4 = CFDataCreate(0, a2, a3);
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v5 = getMDPropertyDecodedFavoritRankSymbolLoc_ptr;
    v12 = getMDPropertyDecodedFavoritRankSymbolLoc_ptr;
    if (!getMDPropertyDecodedFavoritRankSymbolLoc_ptr)
    {
      v6 = MetadataUtilitiesLibrary();
      v10[3] = dlsym(v6, "MDPropertyDecodedFavoritRank");
      getMDPropertyDecodedFavoritRankSymbolLoc_ptr = v10[3];
      v5 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v5)
    {
      fpfs_deserialize_favorite_rank_cold_1();
    }

    v7 = v5(v4, a1);
    CFRelease(v4);
    if (v7)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 0;
    *a1 = 0;
  }

  return result;
}

void sub_1AAB36488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t fpfs_set_favorite_rank(int a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  v3 = fpfs_serialize_favorite_rank(a2, v6, 0x80uLL);
  fremovexattr(a1, "com.apple.favorite-rank.number#PS", 0);
  if (v3 <= 0)
  {
    if (fremovexattr(a1, "com.apple.metadata:kMDItemFavoriteRank", 0) < 0 && *__error() != 93)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = 0;
    }
  }

  else
  {
    result = fpfs_fsetxattr(a1, "com.apple.metadata:kMDItemFavoriteRank", v6, v3, 0, 0);
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t fpfs_set_is_ignore_root(int fd, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);

    return fpfs_fsetxattr(fd, "com.apple.fileprovider.ignore#P", __s, v4, 0, 0);
  }

  else if (fremovexattr(fd, "com.apple.fileprovider.ignore#P", 0) < 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfs_set_is_pinned(int a1, int a2)
{
  if (a2)
  {

    return fpfs_fsetxattr(a1, "com.apple.fileprovider.pinned#PX", "1", 1uLL, 0, 0);
  }

  else if (fremovexattr(a1, "com.apple.fileprovider.pinned#PX", 0) < 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfs_remove_before_bounce_filename(int a1)
{
  if (fremovexattr(a1, "com.apple.fileprovider.before-bounce#PX", 0) < 0 && *__error() != 93)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t fpfs_set_before_bounce_filename_on_path(const char *a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __fpfs_set_before_bounce_filename_on_path_block_invoke;
  v3[3] = &__block_descriptor_40_e8_i12__0i8l;
  v3[4] = a2;
  return fpfs_open(a1, 0x200000u, 0, 2, v3);
}

uint64_t fpfs_set_before_bounce_filename(int a1, char *__s)
{
  if (__s)
  {
    if (*__s)
    {
      v4 = strlen(__s) + 1;

      return fpfs_fsetxattr(a1, "com.apple.fileprovider.before-bounce#PX", __s, v4, 0, 0);
    }

    else
    {
      v6 = fpfs_current_or_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        fpfs_set_before_bounce_filename_cold_1(v6);
      }

      return fpfs_remove_before_bounce_filename(a1);
    }
  }

  else
  {

    return fpfs_remove_before_bounce_filename(a1);
  }
}

uint64_t fpfs_set_syncable_xattrs(int a1, uint64_t *a2, _DWORD *a3, void *a4)
{
  v7 = a4;
  v8 = malloc_type_malloc(0x8000uLL, 0x7C97FB82uLL);
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = v8;
  v10 = flistxattr(a1, v8, 0x8000uLL, 0);
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_24:
    free(v9);
    goto LABEL_25;
  }

  if (v10 > 0x8000)
  {
    free(v9);
    *__error() = 12;
LABEL_25:
    v15 = 0xFFFFFFFFLL;
    goto LABEL_26;
  }

  if (v10)
  {
    v11 = &v9[v10];
    v12 = v9;
    do
    {
      v13 = strlen(v12);
      if (v7[2](v7, v12))
      {
        if (a2)
        {
          v14 = a2;
          while (strcmp(v12, v14[1]))
          {
            v14 = *v14;
            if (!v14)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          if (fremovexattr(a1, v12, 0) < 0)
          {
            goto LABEL_24;
          }

          if (a3 && !strcmp("com.apple.icon.folder#S", v12))
          {
            *a3 = 2;
          }
        }
      }

      v12 += v13 + 1;
    }

    while (v12 < v11);
  }

  free(v9);
  if (a2)
  {
    while ((fpfs_fsetxattr(a1, a2[1], a2 + 3, a2[2], 0, 0) & 0x80000000) == 0)
    {
      if (a3 && !strcmp("com.apple.icon.folder#S", a2[1]))
      {
        *a3 = 1;
      }

      a2 = *a2;
      if (!a2)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_25;
  }

LABEL_23:
  v15 = 0;
LABEL_26:

  return v15;
}

uint64_t fpfs_transfer_xattrs(int a1, int a2, void *a3)
{
  v5 = a3;
  v6 = malloc_type_malloc(0x8000uLL, 0x4702927AuLL);
  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = v6;
  v8 = flistxattr(a1, v6, 0x8000uLL, 0);
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v9 = v8;
  if (v8 > 0x8000)
  {
    free(v7);
    *__error() = 12;
LABEL_19:
    v16 = 0xFFFFFFFFLL;
    goto LABEL_20;
  }

  v10 = malloc_type_malloc(0x8000uLL, 0xF50F9474uLL);
  if (!v10)
  {
LABEL_18:
    free(v7);
    goto LABEL_19;
  }

  v11 = v10;
  if (!v9)
  {
LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v12 = &v7[v9];
  v13 = v7;
  while (1)
  {
    bzero(v11, 0x8000uLL);
    v14 = strlen(v13);
    if (fpfs_xattr_flags_from_name(v13) & 2) != 0 || (v5[2](v5, v13))
    {
      goto LABEL_15;
    }

    v15 = fgetxattr(a1, v13, v11, 0x8000uLL, 0, 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 34)
    {
      goto LABEL_21;
    }

LABEL_15:
    v13 += v14 + 1;
    if (v13 >= v12)
    {
      goto LABEL_16;
    }
  }

  if ((fpfs_fsetxattr(a2, v13, v11, v15, 0, 2) & 0x80000000) == 0 || *__error() == 17)
  {
    goto LABEL_15;
  }

LABEL_21:
  v16 = 0xFFFFFFFFLL;
LABEL_17:
  free(v11);
  free(v7);
LABEL_20:

  return v16;
}