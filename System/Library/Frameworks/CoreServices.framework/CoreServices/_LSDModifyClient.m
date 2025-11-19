@interface _LSDModifyClient
- (BOOL)_canRegisterOrUnregisterURL:(id)a3 withOptions:(unsigned int)a4;
- (BOOL)clientHasMIEntitlement:(id)a3;
- (BOOL)clientIsEntitledForEmbeddedRegistrationOperations;
- (void)doTokenizedRegistrationTaskWithName:(id)a3 xpcReply:(id)a4 work:(id)a5;
- (void)forceSaveForTestingWithCompletion:(id)a3;
- (void)garbageCollectDatabaseWithCompletionHandler:(id)a3;
- (void)installApplication:(id)a3 atURL:(id)a4 withOptions:(id)a5 installType:(unint64_t)a6 reply:(id)a7;
- (void)performPostInstallationRegistration:(id)a3 personaUniqueStrings:(id)a4 operationUUID:(id)a5 reply:(id)a6;
- (void)performPostUninstallationUnregistrationOfBundleID:(id)a3 operationUUID:(id)a4 unregisterType:(unsigned int)a5 precondition:(id)a6 reply:(id)a7;
- (void)performUpdateOfPersonasOfBundleIDs:(id)a3 toPersonaUniqueStrings:(id)a4 operationUUID:(id)a5 reply:(id)a6;
- (void)refreshContentInFrameworkAtURL:(id)a3 reply:(id)a4;
- (void)refreshExtensionPointsWithOperationUUID:(id)a3 reply:(id)a4;
- (void)registerBuiltinAppex:(id)a3 operationUUID:(id)a4 reply:(id)a5;
- (void)registerBuiltinApplication:(id)a3 personaUniqueStrings:(id)a4 operationUUID:(id)a5 reply:(id)a6;
- (void)registerContainerURL:(id)a3 completionHandler:(id)a4;
- (void)registerExtensionPoint:(id)a3 platform:(unsigned int)a4 declaringURL:(id)a5 withInfo:(id)a6 completionHandler:(id)a7;
- (void)registerItemInfo:(id)a3 alias:(id)a4 diskImageAlias:(id)a5 bundleURL:(id)a6 installationPlist:(id)a7 completionHandler:(id)a8;
- (void)relaxApplicationTypeRequirements:(BOOL)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5;
- (void)removeAllHandlerPrefsForBundleID:(id)a3 completionHandler:(id)a4;
- (void)removeAllHandlersWithCompletionHandler:(id)a3;
- (void)removeDatabaseStoreOnNextOpportunity:(id)a3;
- (void)removeHandlerForContentType:(id)a3 roles:(unsigned int)a4 completionHandler:(id)a5;
- (void)removeHandlerForURLScheme:(id)a3 completionHandler:(id)a4;
- (void)requestLSDExitSafely:(double)a3 completionHandler:(id)a4;
- (void)resetServerStoreWithCompletionHandler:(id)a3;
- (void)setDatabaseIsSeeded:(BOOL)a3 completionHandler:(id)a4;
- (void)setHandler:(id)a3 version:(LSVersionNumber *)a4 forURLScheme:(id)a5 completionHandler:(id)a6;
- (void)setHandler:(id)a3 version:(LSVersionNumber *)a4 roles:(unsigned int)a5 forContentType:(id)a6 completionHandler:(id)a7;
- (void)setPreferenceValue:(id)a3 forKey:(id)a4 forApplicationAtURL:(id)a5 completionHandler:(id)a6;
- (void)setPreferenceValueForCallingApplication:(id)a3 forKey:(id)a4 completionHandler:(id)a5;
- (void)setPreferredAppMarketplaces:(id)a3 completion:(id)a4;
- (void)setUpdateAvailabilities:(id)a3 completionHandler:(id)a4;
- (void)synchronizeWithMobileInstallation;
- (void)uninstallApplication:(id)a3 withOptions:(id)a4 uninstallType:(unint64_t)a5 reply:(id)a6;
- (void)unregisterApplicationAtURL:(id)a3 operationUUID:(id)a4 reply:(id)a5;
- (void)unregisterApplicationsAtMountPoint:(id)a3 operationUUID:(id)a4 reply:(id)a5;
- (void)unregisterExtensionPoint:(id)a3 platform:(unsigned int)a4 withVersion:(id)a5 parentBundleUnit:(unsigned int)a6 completionHandler:(id)a7;
- (void)unregisterPluginAtURL:(id)a3 operationUUID:(id)a4 reply:(id)a5;
- (void)updateContainerUnit:(unsigned int)a3 completionHandler:(id)a4;
- (void)updateRecordForApp:(id)a3 withSINF:(id)a4 iTunesMetadata:(id)a5 placeholderMetadata:(id)a6 sendNotification:(int)a7 operationUUID:(id)a8 returnSaveToken:(BOOL)a9 completionHandler:(id)a10;
@end

@implementation _LSDModifyClient

- (BOOL)_canRegisterOrUnregisterURL:(id)a3 withOptions:(unsigned int)a4
{
  v4 = a4;
  v6 = a3;
  if ((v4 & 0x10) != 0)
  {
    if ([__LSDefaultsGetSharedInstance() isSystemServer])
    {
      v7 = [(_LSDModifyClient *)self clientHasMIEntitlement:@"InstallForLaunchServices"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setDatabaseIsSeeded:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v19 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = _LSDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(_LSDClient *)self XPCConnection];
    *buf = 67109376;
    v16 = v4;
    v17 = 1024;
    v18 = [v8 processIdentifier];
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "setting database seeded: %d from pid %d", buf, 0xEu);
  }

  v9 = _LSServer_DatabaseExecutionContext();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58___LSDModifyClient_setDatabaseIsSeeded_completionHandler___block_invoke;
  v12[3] = &unk_1E6A1C150;
  v14 = v4;
  v10 = v6;
  v13 = v10;
  [(LSDBExecutionContext *)v9 syncWrite:v12];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)registerItemInfo:(id)a3 alias:(id)a4 diskImageAlias:(id)a5 bundleURL:(id)a6 installationPlist:(id)a7 completionHandler:(id)a8
{
  v102[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v39 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v14)
  {
    v101 = *MEMORY[0x1E696A278];
    v102[0] = @"invalid LSRegistrationInfo";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
    v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v26, "[_LSDModifyClient registerItemInfo:alias:diskImageAlias:bundleURL:installationPlist:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 437);
    (*(v18 + 2))(v18, 0, 0, 0, 0, v27);

    goto LABEL_24;
  }

  if (![(_LSDModifyClient *)self canRegisterURL:v16 withOptions:v14[4]])
  {
    v28 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10819, 0, "[_LSDModifyClient registerItemInfo:alias:diskImageAlias:bundleURL:installationPlist:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 441);
    (*(v18 + 2))(v18, 0, 0, 0, 0, v28);

    goto LABEL_24;
  }

  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__24;
  v89 = __Block_byref_object_dispose__24;
  v38 = v15;
  v90 = [v14 mutableCopy];
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__24;
  v83 = __Block_byref_object_dispose__24;
  v84 = v16;
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__24;
  v77 = __Block_byref_object_dispose__24;
  v78 = v15;
  v71[0] = 0;
  v71[1] = v71;
  v71[2] = 0x3032000000;
  v71[3] = __Block_byref_object_copy__24;
  v71[4] = __Block_byref_object_dispose__24;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x3032000000;
  v68 = __Block_byref_object_copy__24;
  v69 = __Block_byref_object_dispose__24;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  v70 = v19;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3812000000;
  v61 = __Block_byref_object_copy__162;
  v62 = __Block_byref_object_dispose__163;
  v63 = &unk_1818533FF;
  v64 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x2020000000;
  v57 = 0;
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2020000000;
  v53 = 0;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3812000000;
  v46[3] = __Block_byref_object_copy__165;
  v46[4] = __Block_byref_object_dispose__166;
  v46[5] = &unk_1818533FF;
  cf = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v20 = _LSServer_GetIOQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104___LSDModifyClient_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler___block_invoke;
  block[3] = &unk_1E6A1C178;
  block[4] = &v85;
  block[5] = &v79;
  block[6] = v71;
  block[7] = &v65;
  block[8] = &v58;
  dispatch_sync(v20, block);

  v21 = _LSServer_DatabaseExecutionContext();
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __104___LSDModifyClient_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler___block_invoke_168;
  v40[3] = &unk_1E6A1C1A0;
  v40[4] = &v54;
  v40[5] = &v85;
  v40[6] = &v73;
  v40[7] = v71;
  v40[8] = &v65;
  v40[9] = &v48;
  v40[10] = v52;
  v40[11] = &v42;
  v40[12] = v46;
  [(LSDBExecutionContext *)v21 syncWrite:v40];

  v22 = *(v55 + 6);
  if (!v22)
  {
    v25 = 0;
    goto LABEL_16;
  }

  if (v22 != -10675 || (*(v86[5] + 16) & 2) != 0)
  {
    v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v22, 0, "[_LSDModifyClient registerItemInfo:alias:diskImageAlias:bundleURL:installationPlist:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 532);
LABEL_16:
    v29 = *(v49 + 6);
    v30 = _LSDefaultLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v37 = v17;
      v31 = [v80[5] filePathURL];
      v32 = *(v55 + 6);
      v33 = v14[7];
      v34 = [(_LSDClient *)self XPCConnection];
      v35 = [v34 processIdentifier];
      *buf = 138413314;
      v92 = v31;
      v93 = 2048;
      v94 = v32;
      v95 = 2048;
      v96 = v33;
      v97 = 2048;
      v98 = v29;
      v99 = 1024;
      v100 = v35;
      _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEFAULT, "registered %@ (status %ld, old id 0x%llx) as unit 0x%llx on behalf of pid %d", buf, 0x30u);

      v17 = v37;
      v15 = v38;
    }

    (*(v18 + 2))(v18, *(v55 + 6) == 0, v29, v59[6], *(v43 + 24) != 0, v25);
    goto LABEL_19;
  }

  v23 = _LSInstallLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = v80[5];
    *buf = 138412290;
    v92 = v24;
    _os_log_impl(&dword_18162D000, v23, OS_LOG_TYPE_DEFAULT, "Retrying registration of %@ with trusted bit", buf, 0xCu);
  }

  v25 = [v86[5] mutableCopy];
  v25[4] |= 2u;
  [(_LSDModifyClient *)self registerItemInfo:v25 alias:v74[5] diskImageAlias:v39 bundleURL:v80[5] installationPlist:v66[5] completionHandler:v18];
LABEL_19:

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v46, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(v52, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(&v58, 8);
  if (v64)
  {
    CFRelease(v64);
  }

  _Block_object_dispose(&v65, 8);

  _Block_object_dispose(v71, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v85, 8);

LABEL_24:
  v36 = *MEMORY[0x1E69E9840];
}

- (void)registerContainerURL:(id)a3 completionHandler:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  _LSAssertRunningInServer("[_LSDModifyClient registerContainerURL:completionHandler:]");
  if (v6 && [v6 isFileURL])
  {
    if ([(_LSDModifyClient *)self canRegisterContainer])
    {
      v8 = _LSServer_GetIOQueue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59___LSDModifyClient_registerContainerURL_completionHandler___block_invoke;
      block[3] = &unk_1E6A19728;
      v14 = v6;
      v15 = v7;
      dispatch_sync(v8, block);

      v9 = v14;
    }

    else
    {
      v18 = *MEMORY[0x1E696A278];
      v19[0] = @"May not register container";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v9, "[_LSDModifyClient registerContainerURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 638);
      (*(v7 + 2))(v7, 0, v12);
    }
  }

  else
  {
    v16 = *MEMORY[0x1E696A278];
    v17 = @"invalid containerURL";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "[_LSDModifyClient registerContainerURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 657);
    (*(v7 + 2))(v7, 0, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)updateContainerUnit:(unsigned int)a3 completionHandler:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  _LSAssertRunningInServer("[_LSDModifyClient updateContainerUnit:completionHandler:]");
  if (a3)
  {
    if ([(_LSDModifyClient *)self canRegisterContainer])
    {
      v7 = _LSServer_DatabaseExecutionContext();
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __58___LSDModifyClient_updateContainerUnit_completionHandler___block_invoke;
      v12[3] = &unk_1E6A1C1F0;
      v14 = a3;
      v13 = v6;
      [(LSDBExecutionContext *)v7 syncRead:v12];

      v8 = v13;
    }

    else
    {
      v17 = *MEMORY[0x1E696A278];
      v18[0] = @"May not update container registation";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v8, "[_LSDModifyClient updateContainerUnit:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 669);
      (*(v6 + 2))(v6, 0, v10);
    }
  }

  else
  {
    v15 = *MEMORY[0x1E696A278];
    v16 = @"invalid container Unit";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v8, "[_LSDModifyClient updateContainerUnit:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 698);
    (*(v6 + 2))(v6, 0, v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)registerExtensionPoint:(id)a3 platform:(unsigned int)a4 declaringURL:(id)a5 withInfo:(id)a6 completionHandler:(id)a7
{
  v40 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  _LSAssertRunningInServer("[_LSDModifyClient registerExtensionPoint:platform:declaringURL:withInfo:completionHandler:]");
  v15 = 0;
  if (v11 && v13)
  {
    v16 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v15 = _LSIsDictionaryWithKeysAndValuesOfClasses(v13, v16, 0);
  }

  v17 = _LSExtensionsLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316162;
    v31 = "[_LSDModifyClient registerExtensionPoint:platform:declaringURL:withInfo:completionHandler:]";
    v32 = 2112;
    v33 = v11;
    v34 = 1024;
    v35 = a4;
    v36 = 2112;
    v37 = v12;
    v38 = 2112;
    v39 = v13;
    _os_log_debug_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEBUG, "%s Registering extension point with identifier '%@' platform: %d url '%@' SDK Dictionary: %@", buf, 0x30u);
  }

  if (v15)
  {
    v18 = _LSServer_DatabaseExecutionContext();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __92___LSDModifyClient_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler___block_invoke;
    v22[3] = &unk_1E6A1C218;
    v23 = v11;
    v27 = a4;
    v24 = v13;
    v25 = v12;
    v26 = v14;
    [(LSDBExecutionContext *)v18 syncWrite:v22];

    v19 = v23;
  }

  else
  {
    v28 = *MEMORY[0x1E696A278];
    v29 = @"invalid extensionPoint SDK dictionary";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v19, "[_LSDModifyClient registerExtensionPoint:platform:declaringURL:withInfo:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 727);
    (*(v14 + 2))(v14, 0, v20);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)unregisterExtensionPoint:(id)a3 platform:(unsigned int)a4 withVersion:(id)a5 parentBundleUnit:(unsigned int)a6 completionHandler:(id)a7
{
  v25[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a7;
  _LSAssertRunningInServer("[_LSDModifyClient unregisterExtensionPoint:platform:withVersion:parentBundleUnit:completionHandler:]");
  if (v11)
  {
    v14 = _LSServer_DatabaseExecutionContext();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __101___LSDModifyClient_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler___block_invoke;
    v18[3] = &unk_1E6A1C240;
    v19 = v11;
    v22 = a4;
    v23 = a6;
    v20 = v12;
    v21 = v13;
    [(LSDBExecutionContext *)v14 syncWrite:v18];

    v15 = v19;
  }

  else
  {
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"invalid extensionPoint identifier";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "[_LSDModifyClient unregisterExtensionPoint:platform:withVersion:parentBundleUnit:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 746);
    (*(v13 + 2))(v13, 0, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setHandler:(id)a3 version:(LSVersionNumber *)a4 roles:(unsigned int)a5 forContentType:(id)a6 completionHandler:(id)a7
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a6;
  v14 = a7;
  _LSAssertRunningInServer("[_LSDModifyClient setHandler:version:roles:forContentType:completionHandler:]");
  if (v12 && v13)
  {
    v15 = _LSServer_DatabaseExecutionContext();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78___LSDModifyClient_setHandler_version_roles_forContentType_completionHandler___block_invoke;
    v22[3] = &unk_1E6A1C290;
    v23 = v13;
    v24 = self;
    v25 = v12;
    v16 = *&a4->_opaque[16];
    v28 = *a4->_opaque;
    v29 = v16;
    v27 = a5;
    v26 = v14;
    [(LSDBExecutionContext *)v15 syncWrite:v22];

    v17 = v23;
  }

  else
  {
    v20 = *MEMORY[0x1E696A278];
    v21 = @"bad inputs";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "[_LSDModifyClient setHandler:version:roles:forContentType:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 818);
    (*(v14 + 2))(v14, 0, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)removeHandlerForContentType:(id)a3 roles:(unsigned int)a4 completionHandler:(id)a5
{
  v20[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  _LSAssertRunningInServer("[_LSDModifyClient removeHandlerForContentType:roles:completionHandler:]");
  if (v8)
  {
    v10 = _LSServer_DatabaseExecutionContext();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __72___LSDModifyClient_removeHandlerForContentType_roles_completionHandler___block_invoke;
    v14[3] = &unk_1E6A1C2E0;
    v15 = v8;
    v16 = self;
    v18 = a4;
    v17 = v9;
    [(LSDBExecutionContext *)v10 syncWrite:v14];

    v11 = v15;
  }

  else
  {
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"contentType";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[_LSDModifyClient removeHandlerForContentType:roles:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 854);
    (*(v9 + 2))(v9, 0, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setHandler:(id)a3 version:(LSVersionNumber *)a4 forURLScheme:(id)a5 completionHandler:(id)a6
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  _LSAssertRunningInServer("[_LSDModifyClient setHandler:version:forURLScheme:completionHandler:]");
  if (v10 && v11)
  {
    v13 = _LSServer_DatabaseExecutionContext();
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70___LSDModifyClient_setHandler_version_forURLScheme_completionHandler___block_invoke;
    v20[3] = &unk_1E6A1C330;
    v21 = v11;
    v22 = self;
    v23 = v10;
    v14 = *&a4->_opaque[16];
    v25 = *a4->_opaque;
    v26 = v14;
    v24 = v12;
    [(LSDBExecutionContext *)v13 syncWrite:v20];

    v15 = v21;
  }

  else
  {
    v18 = *MEMORY[0x1E696A278];
    v19 = @"bad inputs";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "[_LSDModifyClient setHandler:version:forURLScheme:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 891);
    (*(v12 + 2))(v12, 0, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeHandlerForURLScheme:(id)a3 completionHandler:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  _LSAssertRunningInServer("[_LSDModifyClient removeHandlerForURLScheme:completionHandler:]");
  if (v6)
  {
    v8 = _LSServer_DatabaseExecutionContext();
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64___LSDModifyClient_removeHandlerForURLScheme_completionHandler___block_invoke;
    v12[3] = &unk_1E6A1A740;
    v13 = v6;
    v14 = self;
    v15 = v7;
    [(LSDBExecutionContext *)v8 syncWrite:v12];

    v9 = v13;
  }

  else
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"scheme";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v9, "[_LSDModifyClient removeHandlerForURLScheme:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 919);
    (*(v7 + 2))(v7, 0, v10);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)removeAllHandlersWithCompletionHandler:(id)a3
{
  v4 = a3;
  _LSAssertRunningInServer("[_LSDModifyClient removeAllHandlersWithCompletionHandler:]");
  v5 = _LSServer_DatabaseExecutionContext();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59___LSDModifyClient_removeAllHandlersWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E6A1BC08;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [(LSDBExecutionContext *)v5 syncWrite:v7];
}

- (void)removeAllHandlerPrefsForBundleID:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(_LSDClient *)self XPCConnection];
    v9 = [v8 _xpcConnection];
    v16 = 0;
    v10 = _LSCanModifyDefaultHandler(@"*", @"*", v9, &v16);
    v11 = v16;

    if (!v10)
    {
      v7[2](v7, 0, v11);
      goto LABEL_8;
    }

    _LSHandlerPrefRemoveAllWithBundleID(v6, v7);
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(_LSDClient *)self XPCConnection];
      v14 = [v13 processIdentifier];
      *buf = 134218242;
      v20 = v14;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "pid %ld removed handlers for %@", buf, 0x16u);
    }
  }

  else
  {
    v17 = *MEMORY[0x1E696A278];
    v18 = @"bundleID";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[_LSDModifyClient removeAllHandlerPrefsForBundleID:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 966);
    v7[2](v7, 0, v12);
  }

LABEL_8:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)relaxApplicationTypeRequirements:(BOOL)a3 forBundleIdentifier:(id)a4 completionHandler:(id)a5
{
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  if ([__LSDefaultsGetSharedInstance() isAppleInternal])
  {
    v10 = [(_LSDClient *)self XPCConnection];
    v11 = [v10 _xpcConnection];
    v12 = _LSCheckEntitlementForXPCConnection(v11, @"com.apple.private.launchservices.canChangeEntitlementRequirementsForDefaultApplications");

    if (v12)
    {
      v13 = _LSServer_DatabaseExecutionContext();
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __91___LSDModifyClient_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler___block_invoke;
      v18[3] = &unk_1E6A1C3F8;
      v19 = v8;
      v21 = a3;
      v20 = v9;
      [(LSDBExecutionContext *)v13 syncWrite:v18];

      v14 = v19;
    }

    else
    {
      v22 = *MEMORY[0x1E696A278];
      v23 = @"process may not modify the requirements for default applications";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v14, "[_LSDModifyClient relaxApplicationTypeRequirements:forBundleIdentifier:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 977);
      (*(v9 + 2))(v9, 0, v16);
    }
  }

  else
  {
    v24 = *MEMORY[0x1E696A278];
    v25[0] = @"This functionality is not available on this device.";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 78, v14, "[_LSDModifyClient relaxApplicationTypeRequirements:forBundleIdentifier:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 974);
    (*(v9 + 2))(v9, 0, v15);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)resetServerStoreWithCompletionHandler:(id)a3
{
  v4 = a3;
  _LSAssertRunningInServer("[_LSDModifyClient resetServerStoreWithCompletionHandler:]");
  v5 = _LSServer_DatabaseExecutionContext();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58___LSDModifyClient_resetServerStoreWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E6A1BC08;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [(LSDBExecutionContext *)v5 syncWrite:v7];
}

- (BOOL)clientHasMIEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = [v5 _xpcConnection];
  v7 = _LSCheckMIAllowedSPIForXPCConnection(v6, v4) != 0;

  return v7;
}

- (void)updateRecordForApp:(id)a3 withSINF:(id)a4 iTunesMetadata:(id)a5 placeholderMetadata:(id)a6 sendNotification:(int)a7 operationUUID:(id)a8 returnSaveToken:(BOOL)a9 completionHandler:(id)a10
{
  v49[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v36 = a4;
  v17 = a5;
  v18 = a6;
  v34 = a8;
  v19 = a10;
  _LSAssertRunningInServer("[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]");
  v20 = v16 != 0;
  if (v16 && v36)
  {
    v21 = [MEMORY[0x1E695DFD8] setWithObject:{objc_opt_class(), v34}];
    v20 = _LSIsDictionaryWithKeysAndValuesOfClasses(v36, v21, 0);
  }

  if (v17 && v20)
  {
    v22 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v20 = _LSIsDictionaryWithKeysAndValuesOfClasses(v17, v22, 0);
  }

  if (v18 && v20)
  {
    v23 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v24 = _LSIsDictionaryWithKeysAndValuesOfClasses(v18, v23, 0);

    if ((v24 & 1) == 0)
    {
LABEL_10:
      v46 = *MEMORY[0x1E696A278];
      v47 = @"invalid metadata, cannot update bundle record";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:{1, v34}];
      v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v25, "[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1105);
      (*(v19 + 2))(v19, 0, 0, v26);
      goto LABEL_29;
    }
  }

  else if (!v20)
  {
    goto LABEL_10;
  }

  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v25 = v36;
    v26 = v17;
LABEL_21:
    v27 = v18;
    goto LABEL_23;
  }

  if ([(_LSDModifyClient *)self clientHasMIEntitlement:@"UpdateSinfForLaunchServices"])
  {
    v25 = v36;
  }

  else
  {
    v25 = 0;
  }

  if ([(_LSDModifyClient *)self clientHasMIEntitlement:@"UpdateiTunesMetadataForLaunchServices"])
  {
    v26 = v17;
  }

  else
  {
    v26 = 0;
  }

  if ([(_LSDModifyClient *)self clientHasMIEntitlement:@"UpdatePlaceholderMetadata"])
  {
    goto LABEL_21;
  }

  v27 = 0;
LABEL_23:
  v28 = v27;
  v29 = v28;
  if (v26 || v25 || v28)
  {
    v32 = _LSServer_DatabaseExecutionContext();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __148___LSDModifyClient_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler___block_invoke;
    v37[3] = &unk_1E6A1C448;
    v38 = v16;
    v39 = v25;
    v40 = v26;
    v41 = v29;
    v45 = a9;
    v42 = v35;
    v44 = a7;
    v43 = v19;
    [(LSDBExecutionContext *)v32 syncWrite:v37];

    v30 = v38;
  }

  else
  {
    v48 = *MEMORY[0x1E696A278];
    v49[0] = @"UpdateSinfForLaunchServices/UpdateiTunesMetadataForLaunchServices/UpdatePlaceholderMetadata";
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v31 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v30, "[_LSDModifyClient updateRecordForApp:withSINF:iTunesMetadata:placeholderMetadata:sendNotification:operationUUID:returnSaveToken:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1101);
    (*(v19 + 2))(v19, 0, 0, v31);
  }

LABEL_29:
  v33 = *MEMORY[0x1E69E9840];
}

- (void)synchronizeWithMobileInstallation
{
  _LSAssertRunningInServer("[_LSDModifyClient synchronizeWithMobileInstallation]");
  MEMORY[0x1865D7C40]();
  v3 = _LSServer_GetIOQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53___LSDModifyClient_synchronizeWithMobileInstallation__block_invoke;
  block[3] = &unk_1E6A1A830;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)installApplication:(id)a3 atURL:(id)a4 withOptions:(id)a5 installType:(unint64_t)a6 reply:(id)a7
{
  v8 = a7;
  v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSDModifyClient installApplication:atURL:withOptions:installType:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1194);
  v8[2](v8, 0, v7);
}

- (void)uninstallApplication:(id)a3 withOptions:(id)a4 uninstallType:(unint64_t)a5 reply:(id)a6
{
  v7 = a6;
  v6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSDModifyClient uninstallApplication:withOptions:uninstallType:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1202);
  v7[2](v7, 0, v6);
}

- (void)unregisterApplicationsAtMountPoint:(id)a3 operationUUID:(id)a4 reply:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = os_transaction_create();
  _LSDatabaseSentinelIncrement();
  v11 = _LSServer_DatabaseExecutionContext();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75___LSDModifyClient_unregisterApplicationsAtMountPoint_operationUUID_reply___block_invoke;
  v16[3] = &unk_1E6A1C4C0;
  v12 = v7;
  v17 = v12;
  v13 = v8;
  v18 = v13;
  v14 = v9;
  v20 = v14;
  v15 = v10;
  v19 = v15;
  [(LSDBExecutionContext *)v11 syncWrite:v16];
}

- (void)doTokenizedRegistrationTaskWithName:(id)a3 xpcReply:(id)a4 work:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  [v7 UTF8String];
  v10 = os_transaction_create();
  RegisterInstallResultsLock = _LSDatabaseGetRegisterInstallResultsLock();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70___LSDModifyClient_doTokenizedRegistrationTaskWithName_xpcReply_work___block_invoke;
  v15[3] = &unk_1E6A1C510;
  v12 = v8;
  v17 = v12;
  v13 = v10;
  v16 = v13;
  v14 = v9;
  v18 = v14;
  _LSDoWithLock(RegisterInstallResultsLock, v15);
}

- (void)unregisterApplicationAtURL:(id)a3 operationUUID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __67___LSDModifyClient_unregisterApplicationAtURL_operationUUID_reply___block_invoke;
    v12[3] = &unk_1E6A1C538;
    v13 = v9;
    v14 = v8;
    v15 = self;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.unregisterApplicationAtURL:operationUUID:reply:" xpcReply:v10 work:v12];
  }

  else
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient unregisterApplicationAtURL:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1334);
    v10[2](v10, 0, v11);
  }
}

- (void)unregisterPluginAtURL:(id)a3 operationUUID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62___LSDModifyClient_unregisterPluginAtURL_operationUUID_reply___block_invoke;
    v12[3] = &unk_1E6A1C538;
    v13 = v9;
    v14 = v8;
    v15 = self;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.unregisterPluginAtURL:operationUUID:reply" xpcReply:v10 work:v12];
  }

  else
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient unregisterPluginAtURL:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1352);
    v10[2](v10, 0, v11);
  }
}

- (void)registerBuiltinApplication:(id)a3 personaUniqueStrings:(id)a4 operationUUID:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    if (v11)
    {
      v14 = +[_LSPersonaDatabase sharedInstance];
      v15 = [MEMORY[0x1E695DFD8] setWithArray:v11];
      v27 = 0;
      v16 = [(_LSPersonaDatabase *)v14 personasWithAttributesForPersonaUniqueStrings:v15 error:&v27];
      v17 = v27;

      if (!v16)
      {
        v18 = _LSDefaultLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [_LSDModifyClient registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:];
        }

        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __88___LSDModifyClient_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply___block_invoke;
    v21[3] = &unk_1E6A1C560;
    v22 = v10;
    v23 = self;
    v24 = v12;
    v25 = v16;
    v26 = v13;
    v20 = v16;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.registerBuiltinApplicationAtURL:operationUUID:reply" xpcReply:v26 work:v21];
  }

  else
  {
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1393);
    (*(v13 + 2))(v13, 0, v19);
  }
}

- (void)registerBuiltinAppex:(id)a3 operationUUID:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61___LSDModifyClient_registerBuiltinAppex_operationUUID_reply___block_invoke;
    v12[3] = &unk_1E6A1C538;
    v12[4] = self;
    v13 = v8;
    v14 = v9;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.registerBuiltinAppex:operationUUID:reply" xpcReply:v10 work:v12];
  }

  else
  {
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient registerBuiltinAppex:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1412);
    v10[2](v10, 0, v11);
  }
}

- (void)refreshExtensionPointsWithOperationUUID:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66___LSDModifyClient_refreshExtensionPointsWithOperationUUID_reply___block_invoke;
    v9[3] = &unk_1E6A1C588;
    v9[4] = self;
    v10 = v6;
    [(_LSDModifyClient *)self doTokenizedRegistrationTaskWithName:@"com.apple.lsd.registerBuiltinAppex:operationUUID:reply" xpcReply:v7 work:v9];
  }

  else
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient refreshExtensionPointsWithOperationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1432);
    v7[2](v7, 0, v8);
  }
}

- (void)refreshContentInFrameworkAtURL:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _LSServer_GetIOQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57___LSDModifyClient_refreshContentInFrameworkAtURL_reply___block_invoke;
  block[3] = &unk_1E6A193B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(v8, block);
}

- (void)setUpdateAvailabilities:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  if ((_LSIsDictionaryWithKeysAndValuesOfClass(v6, v8, v9) & 1) == 0)
  {
    v19 = *MEMORY[0x1E696A278];
    v20[0] = @"valuesByBundleID";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "[_LSDModifyClient setUpdateAvailabilities:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1459);
    v7[2](v7, 0, v14);
LABEL_9:

    goto LABEL_10;
  }

  v10 = [(_LSDClient *)self XPCConnection];
  v11 = [v10 _xpcConnection];
  v12 = _LSCheckEntitlementForXPCConnection(v11, @"com.apple.private.launchservices.canchangeupdateavailability");

  if (!v12)
  {
    if (@"com.apple.private.launchservices.canchangeupdateavailability")
    {
      v15 = @"com.apple.private.launchservices.canchangeupdateavailability";
    }

    else
    {
      v15 = @"unknown entitlement";
    }

    v17 = *MEMORY[0x1E696A278];
    v18 = v15;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v13, "[_LSDModifyClient setUpdateAvailabilities:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1462);
    v7[2](v7, 0, v14);
    goto LABEL_9;
  }

  [LSApplicationRecord setUpdateAvailabilityForApplicationsWithBundleIdentifiers:v6 completionHandler:v7];
LABEL_10:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)garbageCollectDatabaseWithCompletionHandler:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  _LSAssertRunningInServer("[_LSDModifyClient garbageCollectDatabaseWithCompletionHandler:]");
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = [v5 _xpcConnection];
  v7 = _LSCheckEntitlementForXPCConnection(v6, @"com.apple.private.coreservices.canforcedatabasegc");

  if (v7)
  {
    v8 = _LSServer_DatabaseExecutionContext();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64___LSDModifyClient_garbageCollectDatabaseWithCompletionHandler___block_invoke;
    v13[3] = &unk_1E6A1A660;
    v14 = v4;
    [(LSDBExecutionContext *)v8 syncWrite:v13];

    v9 = v14;
  }

  else
  {
    if (@"com.apple.private.coreservices.canforcedatabasegc")
    {
      v10 = @"com.apple.private.coreservices.canforcedatabasegc";
    }

    else
    {
      v10 = @"unknown entitlement";
    }

    v15 = *MEMORY[0x1E696A278];
    v16[0] = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v9, "[_LSDModifyClient garbageCollectDatabaseWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1509);
    (*(v4 + 2))(v4, 0, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setPreferenceValue:(id)a3 forKey:(id)a4 forApplicationAtURL:(id)a5 completionHandler:(id)a6
{
  v54[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__24;
  v45 = __Block_byref_object_dispose__24;
  v46 = 0;
  v39 = 0u;
  v40 = 0u;
  v14 = [(_LSDClient *)self XPCConnection];
  v15 = v14;
  if (v14)
  {
    [v14 auditToken];
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v38 = 0;
  _LSIsAuditTokenSandboxed(&v39, &v38, 0);
  if (v11 && v12 && ([v12 isFileURL] & 1) != 0)
  {
    if (v38 && !_LSCheckEntitlementForAuditToken(&v39, @"com.apple.private.launchservices.canmodifypreferences"))
    {
      if (@"com.apple.private.launchservices.canmodifypreferences")
      {
        v26 = @"com.apple.private.launchservices.canmodifypreferences";
      }

      else
      {
        v26 = @"unknown entitlement";
      }

      v51 = *MEMORY[0x1E696A278];
      v52 = v26;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v18, "[_LSDModifyClient setPreferenceValue:forKey:forApplicationAtURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1531);
      v28 = v42[5];
      v42[5] = v27;
    }

    else if ([FSNode canReadMetadataOfURL:v12 fromSandboxWithAuditToken:&v39])
    {
      v16 = [FSNode alloc];
      v17 = (v42 + 5);
      obj = v42[5];
      v18 = [(FSNode *)v16 initWithURL:v12 flags:1 error:&obj];
      objc_storeStrong(v17, obj);
      if (v18)
      {
        v19 = _LSServer_DatabaseExecutionContext();
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = __84___LSDModifyClient_setPreferenceValue_forKey_forApplicationAtURL_completionHandler___block_invoke;
        v35[3] = &unk_1E6A18EB0;
        v20 = v18;
        v36 = v20;
        [(LSDBExecutionContext *)v19 syncRead:v35];

        v21 = _LSServer_GetIOQueue();
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __84___LSDModifyClient_setPreferenceValue_forKey_forApplicationAtURL_completionHandler___block_invoke_289;
        v29[3] = &unk_1E6A1C5B0;
        v33 = &v47;
        v30 = v11;
        v18 = v20;
        v31 = v18;
        v32 = v10;
        v34 = &v41;
        dispatch_sync(v21, v29);
      }
    }

    else
    {
      v25 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient setPreferenceValue:forKey:forApplicationAtURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1535);
      v18 = v42[5];
      v42[5] = v25;
    }
  }

  else
  {
    v53 = *MEMORY[0x1E696A278];
    v54[0] = @"bad inputs";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "[_LSDModifyClient setPreferenceValue:forKey:forApplicationAtURL:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1525);
    v23 = v42[5];
    v42[5] = v22;
  }

  v13[2](v13, *(v48 + 24), v42[5]);
  _Block_object_dispose(&v41, 8);

  _Block_object_dispose(&v47, 8);
  v24 = *MEMORY[0x1E69E9840];
}

- (void)setPreferenceValueForCallingApplication:(id)a3 forKey:(id)a4 completionHandler:(id)a5
{
  v42[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__24;
  v35 = __Block_byref_object_dispose__24;
  v36 = 0;
  v29 = 0u;
  v30 = 0u;
  v11 = [(_LSDClient *)self XPCConnection];
  v12 = v11;
  if (v11)
  {
    [v11 auditToken];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  if (!v9 || (LaunchServices::PrefsStorage::preferenceKeyMayBeSelfSet(v9, v13) & 1) == 0)
  {
    v41 = *MEMORY[0x1E696A278];
    v42[0] = @"prefKey";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "[_LSDModifyClient setPreferenceValueForCallingApplication:forKey:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1573);
LABEL_10:
    v17 = v32[5];
    v32[5] = v20;
    goto LABEL_11;
  }

  v14 = _LSCopyBundleURLForAuditToken(&v29, 0);
  if (!v14)
  {
    v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -600, 0, "[_LSDModifyClient setPreferenceValueForCallingApplication:forKey:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1595);
    goto LABEL_10;
  }

  v15 = [FSNode alloc];
  v16 = (v32 + 5);
  obj = v32[5];
  v17 = [(FSNode *)v15 initWithURL:v14 flags:0 error:&obj];
  objc_storeStrong(v16, obj);
  if (v17)
  {
    v18 = _LSServer_DatabaseExecutionContext();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85___LSDModifyClient_setPreferenceValueForCallingApplication_forKey_completionHandler___block_invoke;
    v22[3] = &unk_1E6A1C5D8;
    v19 = v17;
    v23 = v19;
    v26 = &v37;
    v24 = v9;
    v25 = v8;
    v27 = &v31;
    [(LSDBExecutionContext *)v18 syncRead:v22];

    v17 = v19;
  }

LABEL_11:

  v10[2](v10, *(v38 + 24), v32[5]);
  _Block_object_dispose(&v31, 8);

  _Block_object_dispose(&v37, 8);
  v21 = *MEMORY[0x1E69E9840];
}

- (BOOL)clientIsEntitledForEmbeddedRegistrationOperations
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [(_LSDClient *)self XPCConnection];
  v3 = [v2 _xpcConnection];

  if (_LSCheckEntitlementForXPCConnectionQuiet(v3, @"com.apple.private.coreservices.can-register-install-results") || _LSCheckEntitlementForXPCConnectionQuiet(v3, @"com.apple.private.installcoordinationd.daemon") || _LSCheckEntitlementForXPCConnectionQuiet(v3, @"com.apple.private.coreservices.lsaw"))
  {
    v4 = 1;
  }

  else
  {
    v7 = _LSDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      pid = xpc_connection_get_pid(v3);
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Connection from process %llu is not entitled for post installation modifications to the database", &v8, 0xCu);
    }

    v4 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)performPostInstallationRegistration:(id)a3 personaUniqueStrings:(id)a4 operationUUID:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (![(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient performPostInstallationRegistration:personaUniqueStrings:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1659);
    (*(v13 + 2))(v13, 0, 0, v17);
    goto LABEL_10;
  }

  if (!v11)
  {
    v17 = 0;
    v16 = 0;
    goto LABEL_9;
  }

  v14 = +[_LSPersonaDatabase sharedInstance];
  v15 = [MEMORY[0x1E695DFD8] setWithArray:v11];
  v27 = 0;
  v16 = [(_LSPersonaDatabase *)v14 personasWithAttributesForPersonaUniqueStrings:v15 error:&v27];
  v17 = v27;

  if (v16)
  {
LABEL_9:
    RegisterInstallResultsLock = _LSDatabaseGetRegisterInstallResultsLock();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97___LSDModifyClient_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply___block_invoke;
    v21[3] = &unk_1E6A1C628;
    v22 = v10;
    v26 = v13;
    v23 = v12;
    v24 = self;
    v25 = v16;
    v20 = v16;
    _LSDoWithLock(RegisterInstallResultsLock, v21);

    goto LABEL_10;
  }

  v18 = _LSDefaultLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [_LSDModifyClient registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:];
  }

  (*(v13 + 2))(v13, 0, 0, v17);
LABEL_10:
}

- (void)performPostUninstallationUnregistrationOfBundleID:(id)a3 operationUUID:(id)a4 unregisterType:(unsigned int)a5 precondition:(id)a6 reply:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    RegisterInstallResultsLock = _LSDatabaseGetRegisterInstallResultsLock();
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __118___LSDModifyClient_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply___block_invoke;
    v18[3] = &unk_1E6A1C678;
    v23 = v15;
    v19 = v13;
    v20 = v12;
    v24 = a5;
    v21 = v14;
    v22 = self;
    _LSDoWithLock(RegisterInstallResultsLock, v18);
  }

  else
  {
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient performPostUninstallationUnregistrationOfBundleID:operationUUID:unregisterType:precondition:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1684);
    (*(v15 + 2))(v15, 0, v17);
  }
}

- (void)performUpdateOfPersonasOfBundleIDs:(id)a3 toPersonaUniqueStrings:(id)a4 operationUUID:(id)a5 reply:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([(_LSDModifyClient *)self clientIsEntitledForEmbeddedRegistrationOperations])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__24;
    v35 = __Block_byref_object_dispose__24;
    v36 = 0;
    v28 = 0;
    v29[0] = &v28;
    v29[1] = 0x3032000000;
    v29[2] = __Block_byref_object_copy__24;
    v29[3] = __Block_byref_object_dispose__24;
    v30 = 0;
    v14 = +[_LSPersonaDatabase sharedInstance];
    v15 = (v29[0] + 40);
    obj = *(v29[0] + 40);
    v16 = [(_LSPersonaDatabase *)v14 personasWithAttributesForPersonaUniqueStrings:v11 error:&obj];
    objc_storeStrong(v15, obj);

    if (v16)
    {
      v17 = _LSServer_DatabaseExecutionContext();
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __98___LSDModifyClient_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply___block_invoke;
      v20[3] = &unk_1E6A1C6C8;
      v21 = v12;
      v22 = v16;
      v23 = v10;
      v24 = self;
      v25 = &v28;
      v26 = &v31;
      [(LSDBExecutionContext *)v17 syncWrite:v20];

      v18 = v21;
    }

    else
    {
      v18 = _LSInstallLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [_LSDModifyClient performUpdateOfPersonasOfBundleIDs:v12 toPersonaUniqueStrings:v29 operationUUID:? reply:?];
      }
    }

    v13[2](v13, v32[5], *(v29[0] + 40));
    _Block_object_dispose(&v28, 8);

    _Block_object_dispose(&v31, 8);
  }

  else
  {
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient performUpdateOfPersonasOfBundleIDs:toPersonaUniqueStrings:operationUUID:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1885);
    (v13)[2](v13, 0, v19);
  }
}

- (void)forceSaveForTestingWithCompletion:(id)a3
{
  v4 = a3;
  if (-[_LSDModifyClient clientIsEntitledForEmbeddedRegistrationOperations](self, "clientIsEntitledForEmbeddedRegistrationOperations") || (-[_LSDClient XPCConnection](self, "XPCConnection"), v5 = objc_claimAutoreleasedReturnValue(), [v5 _xpcConnection], v6 = objc_claimAutoreleasedReturnValue(), v7 = _LSCheckEntitlementForXPCConnection(v6, @"com.apple.private.coreservices.can-force-database-save-for-testing"), v6, v5, v7))
  {
    v8 = _LSServer_DatabaseExecutionContext();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54___LSDModifyClient_forceSaveForTestingWithCompletion___block_invoke;
    v10[3] = &unk_1E6A1A660;
    v11 = v4;
    [(LSDBExecutionContext *)v8 syncWrite:v10];
  }

  else
  {
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient forceSaveForTestingWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1897);
    (*(v4 + 2))(v4, v9);
  }
}

- (void)removeDatabaseStoreOnNextOpportunity:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = [v5 _xpcConnection];
  v7 = _LSCheckEntitlementForXPCConnection(v6, @"com.apple.private.coreservices.canresetserverstore");

  if (v7)
  {
    v8 = [__LSDefaultsGetSharedInstance() dbRemoveDBOnStartupURL];
    if (v8)
    {
      v9 = [MEMORY[0x1E695DEF0] data];
      v18 = 0;
      v10 = [v9 writeToURL:v8 options:0 error:&v18];
      v11 = v18;

      if (v10)
      {
        v12 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v20 = v8;
          _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_INFO, "Created removeAtNextStartup sentinel file at %{public}@", buf, 0xCu);
        }

        v13 = 0;
      }

      else
      {
        v12 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [_LSDModifyClient removeDatabaseStoreOnNextOpportunity:];
        }

        v13 = v11;
      }

      (v4)[2](v4, v10, v13);
    }

    else
    {
      v15 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [_LSDModifyClient removeDatabaseStoreOnNextOpportunity:];
      }

      v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient removeDatabaseStoreOnNextOpportunity:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1918);
      (v4)[2](v4, 0, v16);

      v11 = 0;
    }
  }

  else
  {
    v14 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(_LSDClient *)self XPCConnection];
      objc_claimAutoreleasedReturnValue();
      [_LSDModifyClient removeDatabaseStoreOnNextOpportunity:];
    }

    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient removeDatabaseStoreOnNextOpportunity:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1923);
    (v4)[2](v4, 0, v11);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)requestLSDExitSafely:(double)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_LSDClient *)self XPCConnection];
  v8 = [v7 _xpcConnection];
  v9 = _LSCheckEntitlementForXPCConnection(v8, @"com.apple.private.launchservices.requestlsdexit");

  if (v9)
  {
    if (a3 <= 0.0)
    {
      v19 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_INFO, "Exiting immediately; not saving current database.", buf, 2u);
      }

      v20 = dispatch_time(0, 100000000);
      dispatch_after(v20, MEMORY[0x1E69E96A0], &__block_literal_global_317);
    }

    else
    {
      v10 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 134349056;
        v29 = a3;
        _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_INFO, "Arming LS save timer, interval=%{public}g", buf, 0xCu);
      }

      v11 = dispatch_semaphore_create(0);
      v22 = MEMORY[0x1E69E9820];
      v23 = 3221225472;
      v24 = __59___LSDModifyClient_requestLSDExitSafely_completionHandler___block_invoke;
      v25 = &unk_1E6A1C6F0;
      v12 = v6;
      v27 = v12;
      v13 = v11;
      v26 = v13;
      _LSArmSaveTimerWithObserver(7, &v22);
      v14 = dispatch_time(0, (a3 * 1000000000.0));
      if (!dispatch_semaphore_wait(v13, v14))
      {
        v15 = _LSDatabaseGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_INFO, "Armed LS save timer didn't complete.", buf, 2u);
        }

        v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-1712 userInfo:{0, v22, v23, v24, v25}];
        (*(v12 + 2))(v12, 0, v16);
      }
    }
  }

  else
  {
    v17 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(_LSDClient *)self XPCConnection];
      objc_claimAutoreleasedReturnValue();
      [_LSDModifyClient requestLSDExitSafely:completionHandler:];
    }

    v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDModifyClient requestLSDExitSafely:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1976);
    (*(v6 + 2))(v6, 0, v18);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)setPreferredAppMarketplaces:(id)a3 completion:(id)a4
{
  v18[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_LSDClient *)self XPCConnection];
  v9 = _LSCheckEntitlementForNSXPCConnection(v8, @"com.apple.private.coreservices.appmarketplace.write");

  if (v9)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59___LSDModifyClient_setPreferredAppMarketplaces_completion___block_invoke;
    v15[3] = &unk_1E6A1C718;
    v16 = v6;
    v10 = [LSMarketplacesPreferences modifyPreferencesWithBlock:v15];
    v7[2](v7, v10);

    v11 = v16;
  }

  else
  {
    if (@"com.apple.private.coreservices.appmarketplace.write")
    {
      v12 = @"com.apple.private.coreservices.appmarketplace.write";
    }

    else
    {
      v12 = @"unknown entitlement";
    }

    v17 = *MEMORY[0x1E696A278];
    v18[0] = v12;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v11, "[_LSDModifyClient setPreferredAppMarketplaces:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDModifyService.mm", 1991);
    v7[2](v7, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)rebuildApplicationDatabasesForSystem:internal:user:completionHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)registerBuiltinApplication:personaUniqueStrings:operationUUID:reply:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)performUpdateOfPersonasOfBundleIDs:(uint64_t)a1 toPersonaUniqueStrings:(uint64_t)a2 operationUUID:reply:.cold.1(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = *(*a2 + 40);
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)removeDatabaseStoreOnNextOpportunity:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeDatabaseStoreOnNextOpportunity:.cold.3()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)requestLSDExitSafely:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_7_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

@end