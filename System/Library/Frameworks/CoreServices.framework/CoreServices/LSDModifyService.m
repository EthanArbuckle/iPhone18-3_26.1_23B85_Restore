@interface LSDModifyService
@end

@implementation LSDModifyService

void __33___LSDModifyService_XPCInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA3FE0];
  v3 = +[_LSDModifyService XPCInterface]::result;
  +[_LSDModifyService XPCInterface]::result = v2;

  if (+[_LSDModifyService XPCInterface]::result || ([MEMORY[0x1E696AAA8] currentHandler], v54 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v54, "handleFailureInMethod:object:file:lineNumber:description:", *(a1 + 32), *(a1 + 40), @"LSDModifyService.mm", 94, @"Failed to create XPC interface object."), v54, +[_LSDModifyService XPCInterface]::result))
  {
    v53 = XNSGetPropertyListClasses();
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setDatabaseIsSeeded_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:3 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:4 ofReply:0];
    v4 = +[_LSDModifyService XPCInterface]::result;
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    [v4 setClasses:v7 forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:2 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerItemInfo_alias_diskImageAlias_bundleURL_installationPlist_completionHandler_ argumentIndex:4 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterBundleUnit_options_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerContainerURL_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerContainerURL_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateContainerUnit_completionHandler_ argumentIndex:0 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateContainerUnit_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler_ argumentIndex:3 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerExtensionPoint_platform_declaringURL_withInfo_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler_ argumentIndex:3 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterExtensionPoint_platform_withVersion_parentBundleUnit_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_roles_forContentType_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_roles_forContentType_completionHandler_ argumentIndex:3 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_roles_forContentType_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeHandlerForContentType_roles_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeHandlerForContentType_roles_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_forURLScheme_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_forURLScheme_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setHandler_version_forURLScheme_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeHandlerForURLScheme_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeHandlerForURLScheme_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_relaxApplicationTypeRequirements_forBundleIdentifier_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_resetServerStoreWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:3 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:5 ofReply:0];
    v8 = +[_LSDModifyService XPCInterface]::result;
    v9 = pendingSaveTokenInterface();
    [v8 setInterface:v9 forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:1 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_updateRecordForApp_withSINF_iTunesMetadata_placeholderMetadata_sendNotification_operationUUID_returnSaveToken_completionHandler_ argumentIndex:2 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_removeDatabaseStoreOnNextOpportunity_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_rebuildApplicationDatabasesForSystem_internal_user_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:0 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_installApplication_atURL_withOptions_installType_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_uninstallApplication_withOptions_uninstallType_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_uninstallApplication_withOptions_uninstallType_reply_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_uninstallApplication_withOptions_uninstallType_reply_ argumentIndex:0 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_uninstallApplication_withOptions_uninstallType_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationAtURL_operationUUID_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationAtURL_operationUUID_reply_ argumentIndex:1 ofReply:0];
    v10 = +[_LSDModifyService XPCInterface]::result;
    v11 = pendingSaveTokenInterface();
    [v10 setInterface:v11 forSelector:sel_unregisterApplicationAtURL_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationAtURL_operationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterPluginAtURL_operationUUID_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterPluginAtURL_operationUUID_reply_ argumentIndex:1 ofReply:0];
    v12 = +[_LSDModifyService XPCInterface]::result;
    v13 = pendingSaveTokenInterface();
    [v12 setInterface:v13 forSelector:sel_unregisterPluginAtURL_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterPluginAtURL_operationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:0];
    v14 = +[_LSDModifyService XPCInterface]::result;
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    [v14 setClasses:v17 forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:0];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:2 ofReply:0];
    v18 = +[_LSDModifyService XPCInterface]::result;
    v19 = pendingSaveTokenInterface();
    [v18 setInterface:v19 forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerBuiltinApplication_personaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_registerBuiltinAppex_operationUUID_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerBuiltinAppex_operationUUID_reply_ argumentIndex:1 ofReply:0];
    v20 = +[_LSDModifyService XPCInterface]::result;
    v21 = pendingSaveTokenInterface();
    [v20 setInterface:v21 forSelector:sel_registerBuiltinAppex_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_registerBuiltinAppex_operationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_refreshExtensionPointsWithOperationUUID_reply_ argumentIndex:0 ofReply:0];
    v22 = +[_LSDModifyService XPCInterface]::result;
    v23 = pendingSaveTokenInterface();
    [v22 setInterface:v23 forSelector:sel_refreshExtensionPointsWithOperationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_refreshExtensionPointsWithOperationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_refreshContentInFrameworkAtURL_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_refreshContentInFrameworkAtURL_reply_ argumentIndex:0 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationsAtMountPoint_operationUUID_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationsAtMountPoint_operationUUID_reply_ argumentIndex:1 ofReply:0];
    v24 = +[_LSDModifyService XPCInterface]::result;
    v25 = pendingSaveTokenInterface();
    [v24 setInterface:v25 forSelector:sel_unregisterApplicationsAtMountPoint_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_unregisterApplicationsAtMountPoint_operationUUID_reply_ argumentIndex:1 ofReply:1];
    v26 = +[_LSDModifyService XPCInterface]::result;
    v27 = MEMORY[0x1E695DFD8];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
    [v26 setClasses:v30 forSelector:sel_setUpdateAvailabilities_completionHandler_ argumentIndex:0 ofReply:0];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setUpdateAvailabilities_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_garbageCollectDatabaseWithCompletionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_setPreferenceValue_forKey_forApplicationAtURL_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValue_forKey_forApplicationAtURL_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValue_forKey_forApplicationAtURL_completionHandler_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValue_forKey_forApplicationAtURL_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_setPreferenceValueForCallingApplication_forKey_completionHandler_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValueForCallingApplication_forKey_completionHandler_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferenceValueForCallingApplication_forKey_completionHandler_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClasses:v53 forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:0];
    v31 = +[_LSDModifyService XPCInterface]::result;
    v32 = MEMORY[0x1E695DFD8];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    [v31 setClasses:v34 forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:0];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:2 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:1];
    v35 = +[_LSDModifyService XPCInterface]::result;
    v36 = pendingSaveTokenInterface();
    [v35 setInterface:v36 forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostInstallationRegistration_personaUniqueStrings_operationUUID_reply_ argumentIndex:2 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:0 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:1 ofReply:0];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:3 ofReply:0];
    v37 = +[_LSDModifyService XPCInterface]::result;
    v38 = pendingSaveTokenInterface();
    [v37 setInterface:v38 forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performPostUninstallationUnregistrationOfBundleID_operationUUID_unregisterType_precondition_reply_ argumentIndex:1 ofReply:1];
    v39 = +[_LSDModifyService XPCInterface]::result;
    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    [v39 setClasses:v42 forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:0];

    v43 = +[_LSDModifyService XPCInterface]::result;
    v44 = MEMORY[0x1E695DFD8];
    v45 = objc_opt_class();
    v46 = [v44 setWithObjects:{v45, objc_opt_class(), 0}];
    [v43 setClasses:v46 forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:0];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:2 ofReply:0];
    v47 = +[_LSDModifyService XPCInterface]::result;
    v48 = pendingSaveTokenInterface();
    [v47 setInterface:v48 forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:0 ofReply:1];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_performUpdateOfPersonasOfBundleIDs_toPersonaUniqueStrings_operationUUID_reply_ argumentIndex:1 ofReply:1];
    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_forceSaveForTestingWithCompletion_ argumentIndex:0 ofReply:1];
    v49 = +[_LSDModifyService XPCInterface]::result;
    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    [v49 setClasses:v52 forSelector:sel_setPreferredAppMarketplaces_completion_ argumentIndex:0 ofReply:0];

    [+[_LSDModifyService XPCInterface]::result setClass:objc_opt_class() forSelector:sel_setPreferredAppMarketplaces_completion_ argumentIndex:0 ofReply:1];
  }
}

void __34___LSDModifyService_dispatchQueue__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("com.apple.launchservices.modify-service-queue");
  dispatch_workloop_set_autorelease_frequency(inactive, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  dispatch_activate(inactive);
  v1 = +[_LSDModifyService dispatchQueue]::result;
  +[_LSDModifyService dispatchQueue]::result = inactive;
}

@end