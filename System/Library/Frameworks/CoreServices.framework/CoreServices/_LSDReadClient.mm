@interface _LSDReadClient
- (void)getAllUserActivityTypesAndDomainNamesWithCompletionHandler:(id)a3;
- (void)getApplicationCategoryIdentifiersSetWithCompletionHandler:(id)a3;
- (void)getBoundIconInfoForDocumentProxy:(id)a3 completionHandler:(id)a4;
- (void)getBundleProxyForCurrentProcessWithCompletionHandler:(id)a3;
- (void)getBundleRecordForCoreTypesWithCompletionHandler:(id)a3;
- (void)getBundleRecordForCurrentProcessWithCompletionHandler:(id)a3;
- (void)getCurrentApplicationDefaultInfoForCategory:(unint64_t)a3 completion:(id)a4;
- (void)getDiskUsage:(id)a3 completionHandler:(id)a4;
- (void)getEligibilityAnswerForDomain:(unint64_t)a3 withCompletionHandler:(id)a4;
- (void)getExtensionPointRecordForCurrentProcessWithCompletionHandler:(id)a3;
- (void)getHasEverChangedPreferredAppForCategory:(unint64_t)a3 completion:(id)a4;
- (void)getKernelPackageExtensionsWithCompletionHandler:(id)a3;
- (void)getKnowledgeUUIDAndSequenceNumberWithCompletionHandler:(id)a3;
- (void)getPreferencesWithCompletionHandler:(id)a3;
- (void)getPreferredAppMarketplacesWithCompletion:(id)a3;
- (void)getRelatedTypesOfTypeWithIdentifier:(id)a3 maximumDegreeOfSeparation:(int64_t)a4 completionHandler:(id)a5;
- (void)getResourceValuesForKeys:(id)a3 mimic:(id)a4 preferredLocalizations:(id)a5 completionHandler:(id)a6;
- (void)getServerStatusWithCompletionHandler:(id)a3;
- (void)getServerStoreNonBlockingWithCompletionHandler:(id)a3;
- (void)getSessionLanguagesForImproperlyLocalizedProcessWithCompletionHandler:(id)a3;
- (void)getSettingsStoreConfigurationWithCompletionHandler:(id)a3;
- (void)getSystemContentStoreWithCompletionHandler:(id)a3;
- (void)getSystemModeWithCompletionHandler:(id)a3;
- (void)getTypeRecordForImportedTypeWithIdentifier:(id)a3 conformingToIdentifier:(id)a4 completionHandler:(id)a5;
- (void)getTypeRecordWithIdentifier:(id)a3 allowUndeclared:(BOOL)a4 completionHandler:(id)a5;
- (void)getTypeRecordWithTag:(id)a3 ofClass:(id)a4 conformingToIdentifier:(id)a5 completionHandler:(id)a6;
- (void)getTypeRecordsWithIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)getTypeRecordsWithTag:(id)a3 ofClass:(id)a4 conformingToIdentifier:(id)a5 completionHandler:(id)a6;
- (void)getWhetherTypeIdentifier:(id)a3 conformsToTypeIdentifier:(id)a4 completionHandler:(id)a5;
- (void)invokeServiceInvocation:(id)a3 isReply:(BOOL)a4;
- (void)mapBundleIdentifiers:(id)a3 orMachOUUIDs:(id)a4 completionHandler:(id)a5;
- (void)mapPlugInBundleIdentifiersToContainingBundleIdentifiers:(id)a3 completionHandler:(id)a4;
- (void)resolveQueries:(id)a3 legacySPI:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation _LSDReadClient

- (void)invokeServiceInvocation:(id)a3 isReply:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (a4)
  {
    [v5 invoke];
  }

  else
  {
    v7 = _LSServer_DatabaseExecutionContext();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50___LSDReadClient_invokeServiceInvocation_isReply___block_invoke;
    v8[3] = &unk_1E6A18EB0;
    v9 = v6;
    [(LSDBExecutionContext *)v7 syncRead:v8];
  }
}

- (void)getServerStatusWithCompletionHandler:(id)a3
{
  v4 = a3;
  _LSAssertRunningInServer("[_LSDReadClient getServerStatusWithCompletionHandler:]");
  SessionStatus = _LSDatabaseGetSessionStatus();
  v4[2](v4, SessionStatus);
}

- (void)getServerStoreNonBlockingWithCompletionHandler:(id)a3
{
  v4 = a3;
  SessionStatus = _LSDatabaseGetSessionStatus();
  if ((SessionStatus & 0x80) != 0)
  {
    v7 = +[LSDatabaseBlockingFetchServer sharedInstance];
    v8 = (SessionStatus >> 10) & 1;
    [v7 setBlockingIsForManualRebuild:v8];

    v9 = +[LSDatabaseBlockingFetchServer sharedInstance];
    v10 = [v9 getEndpoint];
    (*(v4 + 2))(v4, 0, 0, v10, v8, 0);
  }

  else
  {
    v6 = [(_LSDClient *)self XPCConnection];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65___LSDReadClient_getServerStoreNonBlockingWithCompletionHandler___block_invoke;
    v11[3] = &unk_1E6A1BA40;
    v12 = v4;
    _LSServer_GetServerStoreForConnectionWithCompletionHandler(v6, v11);
  }
}

- (void)getKernelPackageExtensionsWithCompletionHandler:(id)a3
{
  v6 = a3;
  _LSAssertRunningInServer("[_LSDReadClient getKernelPackageExtensionsWithCompletionHandler:]");
  v3 = _LSCopyKernelPackageExtensionsAsLSD();
  v4 = v3;
  if (v3 && CFArrayGetCount(v3) >= 1)
  {
    v6[2](v6, v4, 0);
  }

  else
  {
    v5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, 0, "[_LSDReadClient getKernelPackageExtensionsWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 395);
    (v6)[2](v6, 0, v5);

    if (!v4)
    {
      goto LABEL_6;
    }
  }

  CFRelease(v4);
LABEL_6:
}

- (void)getDiskUsage:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  _LSAssertRunningInServer("[_LSDReadClient getDiskUsage:completionHandler:]");
  MEMORY[0x1865D7C40]();
  v8 = +[_LSDiskUsage _serverQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49___LSDReadClient_getDiskUsage_completionHandler___block_invoke;
  block[3] = &unk_1E6A193B8;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)getKnowledgeUUIDAndSequenceNumberWithCompletionHandler:(id)a3
{
  v4 = a3;
  _LSAssertRunningInServer("[_LSDReadClient getKnowledgeUUIDAndSequenceNumberWithCompletionHandler:]");
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  v12 = 0;
  v13 = 0;
  [v5 getKnowledgeUUID:&v13 andSequenceNumber:&v12];
  v6 = v13;
  v7 = v12;

  v8 = [(_LSDClient *)self XPCConnection];
  v9 = [v8 _xpcConnection];
  v10 = _LSXPCConnectionMayMapDatabase(v9);

  if (!v10)
  {
    v11 = [MEMORY[0x1E696AFB0] _LS_nullUUID];

    v6 = v11;
  }

  v4[2](v4, v6, v7);
}

- (void)resolveQueries:(id)a3 legacySPI:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  _LSAssertRunningInServer("[_LSDReadClient resolveQueries:legacySPI:completionHandler:]");
  v10 = objc_opt_class();
  if (!_LSIsSetWithValuesOfClass(v8, v10))
  {
    v29 = *MEMORY[0x1E696A278];
    v30 = @"invalid input parameters";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[_LSDReadClient resolveQueries:legacySPI:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 493);
    goto LABEL_14;
  }

  v11 = +[_LSQueryContext defaultContext];
  if (v6)
  {
    v12 = [(_LSDClient *)self XPCConnection];
    v13 = [v12 _xpcConnection];
    v14 = _LSIsXPCConnectionPlatformBinary(v13);

    if (v14)
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v15 = v8;
      v16 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
      if (v16)
      {
        v17 = *v26;
        do
        {
          v18 = 0;
          do
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v15);
            }

            [*(*(&v25 + 1) + 8 * v18++) setLegacy:1];
          }

          while (v16 != v18);
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v31 count:16];
        }

        while (v16);
      }

      goto LABEL_12;
    }

    v22 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDReadClient resolveQueries:legacySPI:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 469);
LABEL_14:
    v21 = v22;
    v20 = 0;
    goto LABEL_15;
  }

LABEL_12:
  v19 = [(_LSDClient *)self XPCConnection];
  v24 = 0;
  v20 = [v11 _resolveQueries:v8 XPCConnection:v19 error:&v24];
  v21 = v24;

LABEL_15:
  v9[2](v9, v20, v21);

  v23 = *MEMORY[0x1E69E9840];
}

- (void)getBundleRecordForCurrentProcessWithCompletionHandler:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _LSAssertRunningInServer("[_LSDReadClient getBundleRecordForCurrentProcessWithCompletionHandler:]");
  v27 = 0u;
  v28 = 0u;
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  v26[0] = v27;
  v26[1] = v28;
  v25 = 0;
  v7 = [LSBundleRecord bundleRecordForAuditToken:v26 error:&v25];
  v8 = v25;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    [v9 applicationExtensionRecords];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v10 = v22 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v11)
    {
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          [v14 _resolveAllProperties];
          v15 = [v14 extensionPointRecord];
          [v15 _resolveAllProperties];
        }

        v11 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v11);
    }

    v16 = [(_LSDClient *)self XPCConnection];
    v17 = [v16 _xpcConnection];
    v18 = _LSXPCConnectionMayMapDatabase(v17) == 0;

    if (v18)
    {
      v19 = [v9 sensitiveDataProxy];
      [v19 redact];
    }
  }

  v4[2](v4, v7, v8);

  v20 = *MEMORY[0x1E69E9840];
}

- (void)getBundleProxyForCurrentProcessWithCompletionHandler:(id)a3
{
  v4 = a3;
  _LSAssertRunningInServer("[_LSDReadClient getBundleProxyForCurrentProcessWithCompletionHandler:]");
  v13 = 0u;
  v14 = 0u;
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = v5;
  if (v5)
  {
    [v5 auditToken];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v12[0] = v13;
  v12[1] = v14;
  v11 = 0;
  v7 = [LSBundleRecord bundleRecordForAuditToken:v12 error:&v11];
  v8 = v11;
  if (v7)
  {
    v9 = [v7 compatibilityObject];
    if (!v9)
    {
      v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "[_LSDReadClient getBundleProxyForCurrentProcessWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 536);

      v9 = 0;
      v8 = v10;
    }
  }

  else
  {
    v9 = 0;
  }

  v4[2](v4, v9, v8);
}

- (void)getBundleRecordForCoreTypesWithCompletionHandler:(id)a3
{
  v5 = a3;
  _LSAssertRunningInServer("[_LSDReadClient getBundleRecordForCoreTypesWithCompletionHandler:]");
  v3 = +[LSBundleRecord coreTypesBundleRecord];
  v4 = [v3 _realRecord];

  v5[2](v5, v4);
}

- (void)getExtensionPointRecordForCurrentProcessWithCompletionHandler:(id)a3
{
  v4 = a3;
  _LSAssertRunningInServer("[_LSDReadClient getExtensionPointRecordForCurrentProcessWithCompletionHandler:]");
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80___LSDReadClient_getExtensionPointRecordForCurrentProcessWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E6A1C848;
  v5 = v4;
  v7 = v5;
  [(_LSDReadClient *)self getBundleRecordForCurrentProcessWithCompletionHandler:v6];
}

- (void)getTypeRecordWithIdentifier:(id)a3 allowUndeclared:(BOOL)a4 completionHandler:(id)a5
{
  v6 = a4;
  v9 = a3;
  v7 = a5;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordWithIdentifier:allowUndeclared:completionHandler:]");
  if (v9)
  {
    if (v6)
    {
      [UTTypeRecord typeRecordWithPotentiallyUndeclaredIdentifier:?];
    }

    else
    {
      [UTTypeRecord typeRecordWithIdentifier:?];
    }
    v8 = ;
  }

  else
  {
    v8 = 0;
  }

  v7[2](v7, v8);
}

- (void)getTypeRecordsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v5 = a4;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordsWithIdentifiers:completionHandler:]");
  if (v8 && (v6 = objc_opt_class(), _LSIsSetWithValuesOfClass(v8, v6)))
  {
    v7 = [UTTypeRecord typeRecordsWithIdentifiers:v8];
  }

  else
  {
    v7 = 0;
  }

  v5[2](v5, v7);
}

- (void)getTypeRecordWithTag:(id)a3 ofClass:(id)a4 conformingToIdentifier:(id)a5 completionHandler:(id)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordWithTag:ofClass:conformingToIdentifier:completionHandler:]");
  v12 = 0;
  if (v13 && v9)
  {
    v12 = [UTTypeRecord typeRecordWithTag:v13 ofClass:v9 conformingToIdentifier:v10];
  }

  v11[2](v11, v12);
}

- (void)getTypeRecordsWithTag:(id)a3 ofClass:(id)a4 conformingToIdentifier:(id)a5 completionHandler:(id)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordsWithTag:ofClass:conformingToIdentifier:completionHandler:]");
  v12 = 0;
  if (v13 && v9)
  {
    v12 = [UTTypeRecord typeRecordsWithTag:v13 ofClass:v9 conformingToIdentifier:v10];
  }

  v11[2](v11, v12);
}

- (void)getTypeRecordForImportedTypeWithIdentifier:(id)a3 conformingToIdentifier:(id)a4 completionHandler:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  _LSAssertRunningInServer("[_LSDReadClient getTypeRecordForImportedTypeWithIdentifier:conformingToIdentifier:completionHandler:]");
  if (v10)
  {
    v9 = [UTTypeRecord typeRecordForImportedTypeWithIdentifier:v10 conformingToIdentifier:v7];
  }

  else
  {
    v9 = 0;
  }

  v8[2](v8, v9);
}

- (void)getRelatedTypesOfTypeWithIdentifier:(id)a3 maximumDegreeOfSeparation:(int64_t)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  _LSAssertRunningInServer("[_LSDReadClient getRelatedTypesOfTypeWithIdentifier:maximumDegreeOfSeparation:completionHandler:]");
  v9 = [UTTypeRecord typeRecordWithIdentifier:v7];
  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __98___LSDReadClient_getRelatedTypesOfTypeWithIdentifier_maximumDegreeOfSeparation_completionHandler___block_invoke;
    v14[3] = &unk_1E6A1C870;
    v12 = v10;
    v15 = v12;
    v13 = v11;
    v16 = v13;
    [v9 _enumerateRelatedTypesWithMaximumDegreeOfSeparation:a4 block:v14];
    v8[2](v8, v12, v13);
  }

  else
  {
    v8[2](v8, 0, 0);
  }
}

- (void)getWhetherTypeIdentifier:(id)a3 conformsToTypeIdentifier:(id)a4 completionHandler:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  _LSAssertRunningInServer("[_LSDReadClient getWhetherTypeIdentifier:conformsToTypeIdentifier:completionHandler:]");
  v9 = 0;
  if (v10 && v7)
  {
    v9 = [UTTypeRecord _typeIdentifier:v10 conformsToTypeIdentifier:v7];
  }

  v8[2](v8, v9);
}

- (void)getBoundIconInfoForDocumentProxy:(id)a3 completionHandler:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
  {
    _LSAssertRunningInServer("[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]");
    if (v6)
    {
      v8 = [v6 URL];
      if (!v8)
      {
        goto LABEL_11;
      }

      v9 = [(_LSDClient *)self XPCConnection:0];
      v10 = v9;
      if (v9)
      {
        [v9 auditToken];
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
      }

      if (![FSNode canReadURL:v8 fromSandboxWithAuditToken:&v17])
      {
        v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 697);
        v7[2](v7, 0, v14);
      }

      else
      {
LABEL_11:
        v14 = [v6 _boundIconInfo];
        if (v14)
        {
          (v7)[2](v7, v14, 0);
        }

        else
        {
          v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 693);
          v7[2](v7, 0, v15);
        }
      }
    }

    else
    {
      v19 = *MEMORY[0x1E696A278];
      v20[0] = @"documentProxy";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v12 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v11, "[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 701);
      v7[2](v7, 0, v12);
    }
  }

  else
  {
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4, 0, "[_LSDReadClient getBoundIconInfoForDocumentProxy:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 704);
    v7[2](v7, 0, v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)getAllUserActivityTypesAndDomainNamesWithCompletionHandler:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  _LSAssertRunningInServer("[_LSDReadClient getAllUserActivityTypesAndDomainNamesWithCompletionHandler:]");
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = [v5 _xpcConnection];
  v7 = _LSXPCConnectionMayMapDatabase(v6);

  if (v7)
  {
    cf = 0;
    v16 = 0;
    v8 = _LSCopyClaimedActivityIdentifiersAndDomains(&v16, &cf);
    if (v8)
    {
      v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v8, 0, "[_LSDReadClient getAllUserActivityTypesAndDomainNamesWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 723);
      (*(v4 + 2))(v4, 0, 0, v9);
    }

    else
    {
      v12 = cf;
      v13 = *(v4 + 2);
      v9 = v16;
      v13(v4, v9, v12, 0);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v16)
    {
      CFRelease(v16);
    }
  }

  else
  {
    v17 = *MEMORY[0x1E696A278];
    v18[0] = @"process may not map database";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v10, "[_LSDReadClient getAllUserActivityTypesAndDomainNamesWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 727);
    (*(v4 + 2))(v4, 0, 0, v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)getResourceValuesForKeys:(id)a3 mimic:(id)a4 preferredLocalizations:(id)a5 completionHandler:(id)a6
{
  v39[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  _LSAssertRunningInServer("[_LSDReadClient getResourceValuesForKeys:mimic:preferredLocalizations:completionHandler:]");
  if (!v9)
  {
    goto LABEL_13;
  }

  v13 = _LSURLPropertyProviderAllKeys();
  v14 = [v9 isSubsetOfSet:v13] ^ 1;
  if (!v10)
  {
    LOBYTE(v14) = 1;
  }

  if ((v14 & 1) != 0 || ([v10 URL], (v15 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_13;
  }

  v16 = [v10 URL];
  v17 = [v16 isFileURL];

  if (!v17)
  {
LABEL_13:
    v38 = *MEMORY[0x1E696A278];
    v39[0] = @"invalid input parameters";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v24 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v23, "[_LSDReadClient getResourceValuesForKeys:mimic:preferredLocalizations:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 774);
    v25 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  v18 = objc_opt_class();
  v19 = _LSIsSetWithValuesOfClass(v9, v18);
  v20 = v19 ^ 1;
  if (!v11)
  {
    v20 = 1;
  }

  if ((v20 & 1) == 0)
  {
    v21 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
    v22 = _LSIsArrayWithValuesOfClasses(v11, v21);

    if (v22)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_17:
  v37 = 0;
  v28 = _LSResolveRemoteURLPropertiesWithMimic(v10, v11, v9, &v37);
  v24 = v37;
  if (!v28)
  {
    v25 = 0;
    v26 = 0;
    goto LABEL_15;
  }

  v29 = [v9 mutableCopy];
  v30 = MEMORY[0x1E695DFD8];
  v31 = [v28 allKeys];
  v32 = [v30 setWithArray:v31];
  [v29 minusSet:v32];

  v23 = v29;
  if (_LSURLPropertiesNeedReplacement(v28))
  {
    v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v28, "count")}];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __90___LSDReadClient_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler___block_invoke;
    v35[3] = &unk_1E6A1AF50;
    v34 = v33;
    v36 = v34;
    [v28 enumerateKeysAndObjectsUsingBlock:v35];
    v25 = [v34 copy];
  }

  else
  {
    v25 = v28;
  }

  v26 = v23;
LABEL_14:

LABEL_15:
  v12[2](v12, v25, v26, v24);

  v27 = *MEMORY[0x1E69E9840];
}

- (void)mapBundleIdentifiers:(id)a3 orMachOUUIDs:(id)a4 completionHandler:(id)a5
{
  v75 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v42 = a4;
  v41 = a5;
  _LSAssertRunningInServer("[_LSDReadClient mapBundleIdentifiers:orMachOUUIDs:completionHandler:]");
  v8 = [(_LSDClient *)self XPCConnection];
  v9 = [v8 _xpcConnection];
  v10 = _LSCheckEntitlementForXPCConnection(v9, @"com.apple.private.coreservices.canmapbundleidtouuid");

  if (!v10)
  {
    v70 = *MEMORY[0x1E696A278];
    v71 = @"Caller is not allowed to map bundleIDs/UUIDs, required entitlement missing";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v13, "[_LSDReadClient mapBundleIdentifiers:orMachOUUIDs:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 875);

LABEL_21:
    v29 = 0;
    v30 = 0;
    goto LABEL_32;
  }

  if (v43)
  {
    v11 = objc_opt_class();
    v12 = _LSIsSetWithValuesOfClass(v43, v11);
  }

  else
  {
    v12 = 1;
  }

  if (v42 && v12)
  {
    v15 = objc_opt_class();
    v12 = _LSIsSetWithValuesOfClass(v42, v15);
  }

  if (!v12)
  {
    v72 = *MEMORY[0x1E696A278];
    v73 = @"invalid input parameters";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v14 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v28, "[_LSDReadClient mapBundleIdentifiers:orMachOUUIDs:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 871);

    goto LABEL_21;
  }

  v69 = 0;
  v67 = 0;
  v66 = 0;
  v68 = 0;
  v16 = +[_LSDServiceDomain defaultServiceDomain];
  v17 = LaunchServices::Database::Context::_get(&v66, v16, 0);

  if (v17)
  {
    v18 = [MEMORY[0x1E695DF70] array];
    v19 = [MEMORY[0x1E695DF70] array];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke;
    v61[3] = &unk_1E6A1C898;
    v65 = v17;
    v62 = v42;
    v40 = v18;
    v63 = v40;
    v39 = v19;
    v64 = v39;
    v20 = MEMORY[0x1865D71B0](v61);
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_2;
    v58[3] = &unk_1E6A1C8E8;
    v60 = v17;
    v21 = v20;
    v59 = v21;
    v45 = MEMORY[0x1865D71B0](v58);
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __70___LSDReadClient_mapBundleIdentifiers_orMachOUUIDs_completionHandler___block_invoke_4;
    v55[3] = &unk_1E6A1C910;
    v57 = v17;
    v38 = v21;
    v56 = v38;
    v46 = MEMORY[0x1865D71B0](v55);
    if (v43)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v22 = v43;
      obj = v22;
      v23 = [v22 countByEnumeratingWithState:&v51 objects:v74 count:16];
      if (v23)
      {
        v24 = *v52;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v52 != v24)
            {
              objc_enumerationMutation(obj);
            }

            _LSDatabaseGetStringForCFString(*v17, *(*(&v51 + 1) + 8 * i), 0);
            v26 = *v17;
            v50 = v46;
            _LSDatabaseEnumeratingBindingMap(v26);
            v27 = *v17;
            v49 = v45;
            _LSDatabaseEnumeratingBindingMap(v27);
          }

          v22 = obj;
          v23 = [obj countByEnumeratingWithState:&v51 objects:v74 count:16];
        }

        while (v23);
      }
    }

    else
    {
      [(_LSDatabase *)*v17 store];
      v33 = *([(_LSDatabase *)*v17 schema]+ 1588);
      v48 = v46;
      _CSStoreEnumerateUnits();
      [(_LSDatabase *)*v17 store];
      v34 = *([(_LSDatabase *)*v17 schema]+ 4);
      v47 = v45;
      _CSStoreEnumerateUnits();

      v22 = v48;
    }

    v14 = 0;
  }

  else
  {
    v31 = +[_LSDServiceDomain defaultServiceDomain];
    v32 = LaunchServices::Database::Context::_get(&v66, v31, 0);

    if (v32)
    {
      v14 = 0;
    }

    else
    {
      v14 = v69;
    }

    v39 = 0;
    v40 = 0;
  }

  if (v66 && v68 == 1)
  {
    _LSContextDestroy(v66);
  }

  v35 = v67;
  v67 = 0;
  v66 = 0;

  v68 = 0;
  v36 = v69;
  v69 = 0;

  v29 = v39;
  v30 = v40;
LABEL_32:
  v41[2](v41, v30, v29, v14);

  v37 = *MEMORY[0x1E69E9840];
}

- (void)mapPlugInBundleIdentifiersToContainingBundleIdentifiers:(id)a3 completionHandler:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v24 = a3;
  v25 = a4;
  _LSAssertRunningInServer("[_LSDReadClient mapPlugInBundleIdentifiersToContainingBundleIdentifiers:completionHandler:]");
  v6 = [(_LSDClient *)self XPCConnection];
  v7 = [v6 _xpcConnection];
  LODWORD(self) = _LSCheckEntitlementForXPCConnection(v7, @"com.apple.private.coreservices.canmapbundleidtouuid");

  if (!self)
  {
    v37 = *MEMORY[0x1E696A278];
    v38 = @"Caller is not allowed to map pluginIDs/bundleIDs, required entitlement missing";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v16, "[_LSDReadClient mapPlugInBundleIdentifiersToContainingBundleIdentifiers:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 928);

LABEL_14:
    v18 = 0;
    goto LABEL_23;
  }

  v8 = objc_opt_class();
  if (!_LSIsSetWithValuesOfClass(v24, v8))
  {
    v39 = *MEMORY[0x1E696A278];
    v40 = @"invalid input parameters";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v17, "[_LSDReadClient mapPlugInBundleIdentifiersToContainingBundleIdentifiers:completionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 924);

    goto LABEL_14;
  }

  v36 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v9 = +[_LSDServiceDomain defaultServiceDomain];
  v10 = LaunchServices::Database::Context::_get(&v33, v9, 0);

  if (v10)
  {
    v27 = [MEMORY[0x1E695DF90] dictionary];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = v24;
    v11 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v11)
    {
      v12 = *v30;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v30 != v12)
          {
            objc_enumerationMutation(obj);
          }

          _LSDatabaseGetStringForCFString(*v10, *(*(&v29 + 1) + 8 * i), 0);
          v14 = *v10;
          v28 = v27;
          _LSDatabaseEnumeratingBindingMap(v14);
        }

        v11 = [obj countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v11);
    }

    v15 = 0;
  }

  else
  {
    v19 = +[_LSDServiceDomain defaultServiceDomain];
    v20 = LaunchServices::Database::Context::_get(&v33, v19, 0);

    if (v20)
    {
      v15 = 0;
    }

    else
    {
      v15 = v36;
    }

    v27 = 0;
  }

  if (v33 && v35 == 1)
  {
    _LSContextDestroy(v33);
  }

  v21 = v34;
  v33 = 0;
  v34 = 0;

  v35 = 0;
  v22 = v36;
  v36 = 0;

  v18 = v27;
LABEL_23:
  v25[2](v25, v18, v15);

  v23 = *MEMORY[0x1E69E9840];
}

- (void)getPreferencesWithCompletionHandler:(id)a3
{
  v8 = a3;
  Shared = LaunchServices::PrefsStorage::GetShared(v8);
  v4 = LaunchServices::PrefsStorage::getAllPreferences(Shared);
  v5 = v4;
  v6 = MEMORY[0x1E695E0F8];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  (*(v8 + 2))(v8, v7, 0);
}

- (void)getSettingsStoreConfigurationWithCompletionHandler:(id)a3
{
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v4 = [MEMORY[0x1E696B0B8] currentConnection];
  v5 = v4;
  if (v4)
  {
    [v4 auditToken];
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v6 = +[LSSettingsStore sharedInstance];
  v9[0] = v10;
  v9[1] = v11;
  v7 = [v6 settingsStoreConfigurationForProcessWithAuditToken:v9];

  if (v7)
  {
    v3[2](v3, v7, 0);
  }

  else
  {
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, 0, "[_LSDReadClient getSettingsStoreConfigurationWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 949);
    (v3)[2](v3, 0, v8);
  }
}

- (void)getSystemModeWithCompletionHandler:(id)a3
{
  v5 = a3;
  v3 = +[LSApplicationRestrictionsManager sharedInstance];
  v4 = [(LSApplicationRestrictionsManager *)v3 systemMode];

  v5[2](v5, v4, 0);
}

- (void)getSessionLanguagesForImproperlyLocalizedProcessWithCompletionHandler:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = [v5 _xpcConnection];
  v7 = _LSXPCConnectionMayMapDatabase(v6);

  if (v7)
  {
    if ([__LSDefaultsGetSharedInstance() isSystemServer])
    {
      v8 = _LSDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v13 = [(_LSDClient *)self XPCConnection];
        v14[0] = 67109120;
        v14[1] = [v13 processIdentifier];
        _os_log_error_impl(&dword_18162D000, v8, OS_LOG_TYPE_ERROR, "Warning: process %d asking for session langauges from the root lsd. It will only get a backstop result.", v14, 8u);
      }
    }

    v9 = 0;
    v10 = [__LSDefaultsGetSharedInstance() preferredLocalizations];
  }

  else
  {
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"process is not entitled to get language list";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v11, "[_LSDReadClient getSessionLanguagesForImproperlyLocalizedProcessWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 975);

    v10 = 0;
  }

  v4[2](v4, v10, v9);

  v12 = *MEMORY[0x1E69E9840];
}

- (void)getSystemContentStoreWithCompletionHandler:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = [v5 _xpcConnection];
  v7 = _LSXPCConnectionMayMapDatabase(v6);

  if (v7)
  {
    v17 = 0;
    v8 = _LSDatabaseCreateSystemContentDatabaseFromPersistentStore(&v17);
    v9 = v17;
    if (v8)
    {
      v10 = v8;
      v11 = [(_LSDatabase *)v8 store];
      v12 = _LSDatabaseGetNode(v8);
      v4[2](v4, v11, v12, 0);
    }

    else
    {
      v13 = _LSDefaultLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = [(_LSDClient *)self XPCConnection];
        v16 = [v15 processIdentifier];
        *buf = 67109378;
        v21 = v16;
        v22 = 2112;
        v23 = v9;
        _os_log_error_impl(&dword_18162D000, v13, OS_LOG_TYPE_ERROR, "could not fetch system content store for %d: %@", buf, 0x12u);
      }

      (v4)[2](v4, 0, 0, v9);
    }
  }

  else
  {
    v18 = *MEMORY[0x1E696A278];
    v19 = @"process may not map database";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v9, "[_LSDReadClient getSystemContentStoreWithCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1001);
    (v4)[2](v4, 0, 0, v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)getApplicationCategoryIdentifiersSetWithCompletionHandler:(id)a3
{
  v4 = a3;
  v3 = _LSGetValidApplicationCategoryTypeSet();
  v4[2](v4, v3, 0);
}

- (void)getEligibilityAnswerForDomain:(unint64_t)a3 withCompletionHandler:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (!_LSServer_AcquiesceToDeputizationForDomain(a3))
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Can't ask to evaluate domain %llu", a3];
    v25 = *MEMORY[0x1E696A278];
    v26[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v9 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v8, "[_LSDReadClient getEligibilityAnswerForDomain:withCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1046);
    v6[2](v6, 0, v9);
  }

  v10 = [(_LSDClient *)self XPCConnection];
  v11 = [v10 _xpcConnection];
  v12 = _LSXPCConnectionMayMapDatabase(v11) == 0;

  if (v12)
  {
    v23 = *MEMORY[0x1E696A278];
    v20 = @"com.apple.private.coreservices.canmaplsdatabase";
    if (!@"com.apple.private.coreservices.canmaplsdatabase")
    {
      v20 = @"unknown entitlement";
    }

    v24 = v20;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v18, "[_LSDReadClient getEligibilityAnswerForDomain:withCompletionHandler:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1052);
    v6[2](v6, 0, v19);
  }

  else
  {
    v14 = LaunchServices::EligibilityCache::shared(v13);
    v22 = 0;
    v15 = LaunchServices::EligibilityCache::cachedAnswerForDomain(v14, a3, &v22);
    v17 = v16;
    v18 = v22;
    if ((v17 & 1) == 0)
    {
      v6[2](v6, 0, v18);
      goto LABEL_11;
    }

    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
    (v6)[2](v6, v19, 0);
  }

LABEL_11:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)getHasEverChangedPreferredAppForCategory:(unint64_t)a3 completion:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_LSDClient *)self XPCConnection];
  v8 = [v7 _xpcConnection];
  v9 = _LSXPCConnectionMayMapDatabase(v8);

  if (v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:_LSServer_HasPreferenceEverBeenSetForDefaultAppCategory(a3)];
    v6[2](v6, v10, 0);
  }

  else
  {
    v15 = *MEMORY[0x1E696A278];
    v11 = @"com.apple.private.coreservices.canmaplsdatabase";
    if (!@"com.apple.private.coreservices.canmaplsdatabase")
    {
      v11 = @"unknown entitlement";
    }

    v16[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v13 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v12, "[_LSDReadClient getHasEverChangedPreferredAppForCategory:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1062);
    (v6)[2](v6, 0, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)getPreferredAppMarketplacesWithCompletion:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_LSDClient *)self XPCConnection];
  v6 = _LSCheckEntitlementForNSXPCConnection(v5, @"com.apple.private.coreservices.appmarketplace.read");

  if (v6)
  {
    v12 = 0;
    v7 = [LSMarketplacesPreferences currentPreferencesWithError:&v12];
    v8 = v12;
    v9 = [v7 preferredMarketplaces];
    v4[2](v4, v9, v8);
  }

  else
  {
    if (@"com.apple.private.coreservices.appmarketplace.read")
    {
      v10 = @"com.apple.private.coreservices.appmarketplace.read";
    }

    else
    {
      v10 = @"unknown entitlement";
    }

    v13 = *MEMORY[0x1E696A278];
    v14[0] = v10;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v8, "[_LSDReadClient getPreferredAppMarketplacesWithCompletion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1077);
    v4[2](v4, 0, v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)getCurrentApplicationDefaultInfoForCategory:(unint64_t)a3 completion:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v24 = 0u;
  v25 = 0u;
  v7 = [(_LSDClient *)self XPCConnection];
  v8 = v7;
  if (v7)
  {
    [v7 auditToken];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  *buf = v24;
  *&buf[16] = v25;
  v23 = 0;
  v9 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v23];
  v10 = v23;
  v11 = _LSDefaultLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(_LSDClient *)self XPCConnection];
    v13 = [v12 processIdentifier];
    *buf = 134218240;
    *&buf[4] = v13;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "pid %ld getting app default info for category %lu", buf, 0x16u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
    v15 = [v14 supportedDefaultAppCategories];
    if ((LSDefaultAppCategoryMaskForCategory(a3) & v15) != 0)
    {
      v16 = [LSDefaultApplicationQueryBackend alloc];
      v17 = objc_alloc_init(LSDefaultApplicationQueryServerDatastore);
      v18 = objc_alloc_init(LSDefaultApplicationQueryDatabaseDefaultAppEvaluator);
      v19 = [(LSDefaultApplicationQueryBackend *)v16 initWithDatastore:v17 defaultAppEvaluator:v18];

      v20 = [(LSDefaultApplicationQueryBackend *)v19 refreshQueryResultForApplication:v14 category:a3];
    }

    else
    {
      v28 = *MEMORY[0x1E696A278];
      v29 = @"App not a candidate for this category, so will never be the default";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v19, "[_LSDReadClient getCurrentApplicationDefaultInfoForCategory:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1108);

      v20 = 0;
      v10 = v21;
    }

    goto LABEL_13;
  }

  if (v9)
  {
    v26 = *MEMORY[0x1E696A278];
    v27 = @"process is not an app";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "[_LSDReadClient getCurrentApplicationDefaultInfoForCategory:completion:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 1112);
    v20 = 0;
    v10 = v19 = v10;
LABEL_13:

    goto LABEL_14;
  }

  v20 = 0;
LABEL_14:
  v6[2](v6, v20, v10);

  v22 = *MEMORY[0x1E69E9840];
}

@end