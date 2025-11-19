@interface LSDReadService
@end

@implementation LSDReadService

void __31___LSDReadService_XPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA5700];
  v3 = +[_LSDReadService XPCInterface]::result;
  +[_LSDReadService XPCInterface]::result = v2;

  v4 = +[_LSDReadService XPCInterface]::result;
  if (+[_LSDReadService XPCInterface]::result || ([MEMORY[0x1E696AAA8] currentHandler], v105 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v105, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 32), *(a1 + 40), @"LSDReadService.mm", 130, @"Failed to create XPC interface object."), v105, (v4 = +[_LSDReadService XPCInterface]::result) != 0))
  {
    [v4 setClass:_CSStoreGetXPCClass() forSelector:sel_getServerStoreNonBlockingWithCompletionHandler_ argumentIndex:0 ofReply:1];
    v5 = +[_LSDReadService XPCInterface]::result;
    v6 = _FSNodeGetClasses();
    [v5 setClasses:v6 forSelector:sel_getServerStoreNonBlockingWithCompletionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getServerStoreNonBlockingWithCompletionHandler_ argumentIndex:2 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getServerStoreNonBlockingWithCompletionHandler_ argumentIndex:4 ofReply:1];
    v7 = +[_LSDReadService XPCInterface]::result;
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    [v7 setClasses:v10 forSelector:sel_getKernelPackageExtensionsWithCompletionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getKernelPackageExtensionsWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getDiskUsage_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getDiskUsage_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getDiskUsage_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getKnowledgeUUIDAndSequenceNumberWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getKnowledgeUUIDAndSequenceNumberWithCompletionHandler_ argumentIndex:1 ofReply:1];
    v11 = +[_LSDReadService XPCInterface]::result;
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    [v11 setClasses:v14 forSelector:sel_resolveQueries_legacySPI_completionHandler_ argumentIndex:0 ofReply:0];

    v15 = +[_LSDReadService XPCInterface]::result;
    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v16 setWithObjects:{v17, v18, v19, v20, objc_opt_class(), 0}];
    [v15 setClasses:v21 forSelector:sel_resolveQueries_legacySPI_completionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_resolveQueries_legacySPI_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBundleRecordForCurrentProcessWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBundleRecordForCurrentProcessWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBundleProxyForCurrentProcessWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBundleProxyForCurrentProcessWithCompletionHandler_ argumentIndex:1 ofReply:1];
    v22 = +[_LSDReadService XPCInterface]::result;
    v23 = MEMORY[0x1E695DFD8];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    [v22 setClasses:v25 forSelector:sel_getBundleRecordForCoreTypesWithCompletionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getExtensionPointRecordWithIdentifier_platform_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getExtensionPointRecordWithIdentifier_platform_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getExtensionPointRecordWithIdentifier_platform_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getExtensionPointRecordForCurrentProcessWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithIdentifier_allowUndeclared_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithIdentifier_allowUndeclared_completionHandler_ argumentIndex:0 ofReply:1];
    v26 = +[_LSDReadService XPCInterface]::result;
    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    [v26 setClasses:v29 forSelector:sel_getTypeRecordsWithIdentifiers_completionHandler_ argumentIndex:0 ofReply:0];

    v30 = +[_LSDReadService XPCInterface]::result;
    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = objc_opt_class();
    v34 = [v31 setWithObjects:{v32, v33, objc_opt_class(), 0}];
    [v30 setClasses:v34 forSelector:sel_getTypeRecordsWithIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordsWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordsWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordsWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:2 ofReply:0];
    v35 = +[_LSDReadService XPCInterface]::result;
    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    [v35 setClasses:v38 forSelector:sel_getTypeRecordsWithTag_ofClass_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordForImportedTypeWithIdentifier_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordForImportedTypeWithIdentifier_conformingToIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getTypeRecordForImportedTypeWithIdentifier_conformingToIdentifier_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRelatedTypesOfTypeWithIdentifier_maximumDegreeOfSeparation_completionHandler_ argumentIndex:0 ofReply:0];
    v39 = +[_LSDReadService XPCInterface]::result;
    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    [v39 setClasses:v42 forSelector:sel_getRelatedTypesOfTypeWithIdentifier_maximumDegreeOfSeparation_completionHandler_ argumentIndex:0 ofReply:1];

    v43 = +[_LSDReadService XPCInterface]::result;
    v44 = MEMORY[0x1E695DFD8];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    [v43 setClasses:v46 forSelector:sel_getRelatedTypesOfTypeWithIdentifier_maximumDegreeOfSeparation_completionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getWhetherTypeIdentifier_conformsToTypeIdentifier_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getWhetherTypeIdentifier_conformsToTypeIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    if (IconServicesLibrary(void)::frameworkLibrary || (IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2)) != 0)
    {
      [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBoundIconInfoForDocumentProxy_completionHandler_ argumentIndex:0 ofReply:0];
      [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBoundIconInfoForDocumentProxy_completionHandler_ argumentIndex:0 ofReply:1];
      [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getBoundIconInfoForDocumentProxy_completionHandler_ argumentIndex:1 ofReply:1];
    }

    v47 = +[_LSDReadService XPCInterface]::result;
    v48 = MEMORY[0x1E695DFD8];
    v49 = objc_opt_class();
    v50 = [v48 setWithObjects:{v49, objc_opt_class(), 0}];
    [v47 setClasses:v50 forSelector:sel_getAllUserActivityTypesAndDomainNamesWithCompletionHandler_ argumentIndex:0 ofReply:1];

    v51 = +[_LSDReadService XPCInterface]::result;
    v52 = MEMORY[0x1E695DFD8];
    v53 = objc_opt_class();
    v54 = [v52 setWithObjects:{v53, objc_opt_class(), 0}];
    [v51 setClasses:v54 forSelector:sel_getAllUserActivityTypesAndDomainNamesWithCompletionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getAllUserActivityTypesAndDomainNamesWithCompletionHandler_ argumentIndex:2 ofReply:1];
    v55 = +[_LSDReadService XPCInterface]::result;
    v56 = MEMORY[0x1E695DFD8];
    v57 = objc_opt_class();
    v58 = [v56 setWithObjects:{v57, objc_opt_class(), 0}];
    [v55 setClasses:v58 forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:0 ofReply:0];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:1 ofReply:0];
    v59 = +[_LSDReadService XPCInterface]::result;
    v60 = _LSGetURLPropertyClasses();
    [v59 setClasses:v60 forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:0 ofReply:1];

    v61 = +[_LSDReadService XPCInterface]::result;
    v62 = MEMORY[0x1E695DFD8];
    v63 = objc_opt_class();
    v64 = [v62 setWithObjects:{v63, objc_opt_class(), 0}];
    [v61 setClasses:v64 forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getResourceValuesForKeys_mimic_preferredLocalizations_completionHandler_ argumentIndex:2 ofReply:1];
    v65 = +[_LSDReadService XPCInterface]::result;
    v66 = MEMORY[0x1E695DFD8];
    v67 = objc_opt_class();
    v68 = [v66 setWithObjects:{v67, objc_opt_class(), 0}];
    [v65 setClasses:v68 forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:0 ofReply:0];

    v69 = +[_LSDReadService XPCInterface]::result;
    v70 = MEMORY[0x1E695DFD8];
    v71 = objc_opt_class();
    v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
    [v69 setClasses:v72 forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:1 ofReply:0];

    v73 = +[_LSDReadService XPCInterface]::result;
    v74 = MEMORY[0x1E695DFD8];
    v75 = objc_opt_class();
    v76 = [v74 setWithObjects:{v75, objc_opt_class(), 0}];
    [v73 setClasses:v76 forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:0 ofReply:1];

    v77 = +[_LSDReadService XPCInterface]::result;
    v78 = MEMORY[0x1E695DFD8];
    v79 = objc_opt_class();
    v80 = [v78 setWithObjects:{v79, objc_opt_class(), 0}];
    [v77 setClasses:v80 forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_mapBundleIdentifiers_orMachOUUIDs_completionHandler_ argumentIndex:2 ofReply:1];
    v81 = +[_LSDReadService XPCInterface]::result;
    v82 = MEMORY[0x1E695DFD8];
    v83 = objc_opt_class();
    v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
    [v81 setClasses:v84 forSelector:sel_mapPlugInBundleIdentifiersToContainingBundleIdentifiers_completionHandler_ argumentIndex:0 ofReply:0];

    v85 = +[_LSDReadService XPCInterface]::result;
    v86 = MEMORY[0x1E695DFD8];
    v87 = objc_opt_class();
    v88 = [v86 setWithObjects:{v87, objc_opt_class(), 0}];
    [v85 setClasses:v88 forSelector:sel_mapPlugInBundleIdentifiersToContainingBundleIdentifiers_completionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_mapPlugInBundleIdentifiersToContainingBundleIdentifiers_completionHandler_ argumentIndex:1 ofReply:1];
    v89 = +[_LSDReadService XPCInterface]::result;
    v90 = XNSGetPropertyListClasses();
    [v89 setClasses:v90 forSelector:sel_getPreferencesWithCompletionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getPreferencesWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getSettingsStoreConfigurationWithCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getSettingsStoreConfigurationWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:_CSStoreGetXPCClass() forSelector:sel_getSystemContentStoreWithCompletionHandler_ argumentIndex:0 ofReply:1];
    v91 = +[_LSDReadService XPCInterface]::result;
    v92 = _FSNodeGetClasses();
    [v91 setClasses:v92 forSelector:sel_getSystemContentStoreWithCompletionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getSystemContentStoreWithCompletionHandler_ argumentIndex:2 ofReply:1];
    v93 = +[_LSDReadService XPCInterface]::result;
    v94 = MEMORY[0x1E695DFD8];
    v95 = objc_opt_class();
    v96 = [v94 setWithObjects:{v95, objc_opt_class(), 0}];
    [v93 setClasses:v96 forSelector:sel_getApplicationCategoryIdentifiersSetWithCompletionHandler_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getApplicationCategoryIdentifiersSetWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:0 ofReply:0];
    v97 = +[_LSDReadService XPCInterface]::result;
    v98 = _FSNodeGetClasses();
    [v97 setClasses:v98 forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:1 ofReply:0];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getRedactedAppexRecordForSystemAppexWithUUID_node_bundleIdentifier_platform_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getEligibilityAnswerForDomain_withCompletionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getEligibilityAnswerForDomain_withCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getHasEverChangedPreferredAppForCategory_completion_ argumentIndex:0 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getHasEverChangedPreferredAppForCategory_completion_ argumentIndex:1 ofReply:1];
    v99 = +[_LSDReadService XPCInterface]::result;
    v100 = MEMORY[0x1E695DFD8];
    v101 = objc_opt_class();
    v102 = [v100 setWithObjects:{v101, objc_opt_class(), 0}];
    [v99 setClasses:v102 forSelector:sel_getPreferredAppMarketplacesWithCompletion_ argumentIndex:0 ofReply:1];

    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getPreferredAppMarketplacesWithCompletion_ argumentIndex:1 ofReply:1];
    [+[_LSDReadService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_getCurrentApplicationDefaultInfoForCategory_completion_ argumentIndex:0 ofReply:1];
    v103 = +[_LSDReadService XPCInterface]::result;
    v104 = objc_opt_class();

    [v103 setClass:v104 forSelector:sel_getCurrentApplicationDefaultInfoForCategory_completion_ argumentIndex:1 ofReply:1];
  }
}

@end