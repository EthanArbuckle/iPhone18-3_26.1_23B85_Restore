@interface ACRemoteAccountStoreInterface
+ (NSXPCInterface)XPCInterface;
+ (id)_buildXPCInterface;
@end

@implementation ACRemoteAccountStoreInterface

+ (NSXPCInterface)XPCInterface
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__ACRemoteAccountStoreInterface_XPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (XPCInterface_onceToken != -1)
  {
    dispatch_once(&XPCInterface_onceToken, block);
  }

  v2 = XPCInterface_XPCInterface;

  return v2;
}

uint64_t __45__ACRemoteAccountStoreInterface_XPCInterface__block_invoke(uint64_t a1)
{
  XPCInterface_XPCInterface = [*(a1 + 32) _buildXPCInterface];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_buildXPCInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F21245E8];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_accountsWithHandler_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_accountTypesWithHandler_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v2 setClasses:v11 forSelector:sel_accountsWithAccountType_handler_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v2 setClasses:v14 forSelector:sel_accountsWithAccountType_options_completion_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v2 setClasses:v17 forSelector:sel_childAccountsForAccountWithIdentifier_handler_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v2 setClasses:v20 forSelector:sel_childAccountsWithAccountTypeIdentifier_parentAccountIdentifier_handler_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x1E695DFD8];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v2 setClasses:v23 forSelector:sel_enabledDataclassesForAccountWithIdentifier_handler_ argumentIndex:0 ofReply:1];

  v24 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v2 setClasses:v26 forSelector:sel_provisionedDataclassesForAccountWithIdentifier_handler_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [v2 setClasses:v29 forSelector:sel_supportedDataclassesForAccountType_handler_ argumentIndex:0 ofReply:1];

  v30 = MEMORY[0x1E695DFD8];
  v31 = objc_opt_class();
  v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
  [v2 setClasses:v32 forSelector:sel_syncableDataclassesForAccountType_handler_ argumentIndex:0 ofReply:1];

  v33 = MEMORY[0x1E695DFD8];
  v34 = objc_opt_class();
  v35 = [v33 setWithObjects:{v34, objc_opt_class(), 0}];
  [v2 setClasses:v35 forSelector:sel_accessKeysForAccountType_handler_ argumentIndex:0 ofReply:1];

  v36 = MEMORY[0x1E695DFD8];
  v37 = objc_opt_class();
  v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
  [v2 setClasses:v38 forSelector:sel_grantedPermissionsForAccountType_withHandler_ argumentIndex:0 ofReply:1];

  v39 = MEMORY[0x1E695DFD8];
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = objc_opt_class();
  v43 = [v39 setWithObjects:{v40, v41, v42, objc_opt_class(), 0}];
  [v2 setClasses:v43 forSelector:sel_dataclassActionsForAccountSave_completion_ argumentIndex:0 ofReply:1];

  v44 = MEMORY[0x1E695DFD8];
  v45 = objc_opt_class();
  v46 = objc_opt_class();
  v47 = objc_opt_class();
  v48 = [v44 setWithObjects:{v45, v46, v47, objc_opt_class(), 0}];
  [v2 setClasses:v48 forSelector:sel_dataclassActionsForAccountDeletion_completion_ argumentIndex:0 ofReply:1];

  v49 = MEMORY[0x1E695DFD8];
  v50 = objc_opt_class();
  v51 = objc_opt_class();
  v52 = [v49 setWithObjects:{v50, v51, objc_opt_class(), 0}];
  [v2 setClasses:v52 forSelector:sel_saveAccount_verify_dataclassActions_completion_ argumentIndex:2 ofReply:0];

  v53 = MEMORY[0x1E695DFD8];
  v54 = objc_opt_class();
  v55 = objc_opt_class();
  v56 = [v53 setWithObjects:{v54, v55, objc_opt_class(), 0}];
  [v2 setClasses:v56 forSelector:sel_removeAccount_withDataclassActions_completion_ argumentIndex:1 ofReply:0];

  v57 = MEMORY[0x1E695DFD8];
  v58 = objc_opt_class();
  v59 = [v57 setWithObjects:{v58, objc_opt_class(), 0}];
  [v2 setClasses:v59 forSelector:sel_kerberosAccountsForDomainFromURL_completion_ argumentIndex:0 ofReply:1];

  v60 = MEMORY[0x1E695DFD8];
  v61 = objc_opt_class();
  v62 = objc_opt_class();
  v63 = objc_opt_class();
  v64 = objc_opt_class();
  v65 = objc_opt_class();
  v66 = [v60 setWithObjects:{v61, v62, v63, v64, v65, objc_opt_class(), 0}];
  [v2 setClasses:v66 forSelector:sel_renewCredentialsForAccount_options_completion_ argumentIndex:1 ofReply:0];

  v67 = MEMORY[0x1E695DFD8];
  v68 = objc_opt_class();
  v69 = [v67 setWithObjects:{v68, objc_opt_class(), 0}];
  [v2 setClasses:v69 forSelector:sel_clientTokenForAccountIdentifier_completion_ argumentIndex:0 ofReply:1];

  v70 = MEMORY[0x1E695DFD8];
  v71 = objc_opt_class();
  v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
  [v2 setClasses:v72 forSelector:sel_visibleTopLevelAccountsWithAccountTypeIdentifiers_completion_ argumentIndex:0 ofReply:1];

  v73 = MEMORY[0x1E695DFD8];
  v74 = objc_opt_class();
  v75 = [v73 setWithObjects:{v74, objc_opt_class(), 0}];
  [v2 setClasses:v75 forSelector:sel_accountsWithAccountTypeIdentifiers_preloadedProperties_completion_ argumentIndex:0 ofReply:1];

  v76 = MEMORY[0x1E695DFD8];
  v77 = objc_opt_class();
  v78 = objc_opt_class();
  v79 = objc_opt_class();
  v80 = objc_opt_class();
  v81 = [v76 setWithObjects:{v77, v78, v79, v80, objc_opt_class(), 0}];
  [v2 setClasses:v81 forSelector:sel_accountsOnPairedDeviceWithAccountTypes_withOptions_handler_ argumentIndex:1 ofReply:0];

  v82 = MEMORY[0x1E695DFD8];
  v83 = objc_opt_class();
  v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
  [v2 setClasses:v84 forSelector:sel_accountsOnPairedDeviceWithAccountTypes_withOptions_handler_ argumentIndex:0 ofReply:1];

  v85 = MEMORY[0x1E695DFD8];
  v86 = objc_opt_class();
  v87 = objc_opt_class();
  v88 = objc_opt_class();
  v89 = objc_opt_class();
  v90 = [v85 setWithObjects:{v86, v87, v88, v89, objc_opt_class(), 0}];
  [v2 setClasses:v90 forSelector:sel_verifyCredentialsForAccount_options_completion_ argumentIndex:1 ofReply:0];

  v91 = MEMORY[0x1E695DFD8];
  v92 = objc_opt_class();
  v93 = objc_opt_class();
  v94 = objc_opt_class();
  v95 = objc_opt_class();
  v96 = [v91 setWithObjects:{v92, v93, v94, v95, objc_opt_class(), 0}];
  [v2 setClasses:v96 forSelector:sel_discoverPropertiesForAccount_options_completion_ argumentIndex:1 ofReply:0];

  v97 = MEMORY[0x1E695DFD8];
  v98 = objc_opt_class();
  v99 = objc_opt_class();
  v100 = objc_opt_class();
  v101 = [v97 setWithObjects:{v98, v99, v100, objc_opt_class(), 0}];
  [v2 setClasses:v101 forSelector:sel_saveAccount_toPairedDeviceWithOptions_completion_ argumentIndex:1 ofReply:0];

  v102 = MEMORY[0x1E695DFD8];
  v103 = objc_opt_class();
  v104 = [v102 setWithObjects:{v103, objc_opt_class(), 0}];
  [v2 setClasses:v104 forSelector:sel_credentialItemsWithCompletion_ argumentIndex:0 ofReply:1];

  v105 = MEMORY[0x1E695DFD8];
  v106 = objc_opt_class();
  v107 = objc_opt_class();
  v108 = [v105 setWithObjects:{v106, v107, objc_opt_class(), 0}];
  [v2 setClasses:v108 forSelector:sel_registerMonitorForAccountsOfTypes_propertiesToPrefetch_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

@end