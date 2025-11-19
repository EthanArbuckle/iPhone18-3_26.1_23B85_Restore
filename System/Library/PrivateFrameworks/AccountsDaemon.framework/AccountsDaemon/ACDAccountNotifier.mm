@interface ACDAccountNotifier
+ (NSArray)allNotificationEntries;
+ (void)allNotificationEntries;
- (ACDAccountNotifier)initWithNotificationEntries:(id)a3;
- (BOOL)canRemoveAccount:(id)a3 inStore:(id)a4 error:(id *)a5;
- (BOOL)canSaveAccount:(id)a3 inStore:(id)a4 error:(id *)a5;
- (BOOL)postWillChangeNotificationForType:(int)a3 inStore:(id)a4 newAccount:(id)a5 oldAccount:(id)a6;
- (id)_pluginsRegisteredForAccount:(id)a3;
- (id)_provisionedDataclassesForNewAccount:(id)a3 oldAccount:(id)a4;
- (id)_unsafe_pluginsRegisteredForNewAccount:(id)a3 oldAccount:(id)a4 changeType:(id)a5;
- (void)addNotificationEntry:(id)a3;
- (void)postDidChangeNotificationForType:(int)a3 inStore:(id)a4 newAccount:(id)a5 oldAccount:(id)a6;
- (void)postDidPerformDataclassActionsOnAccount:(id)a3 forDataclasses:(id)a4;
- (void)postWillPerformDataclassActionsOnAccount:(id)a3 forDataclasses:(id)a4;
- (void)removeAllNotificationEntries;
@end

@implementation ACDAccountNotifier

+ (NSArray)allNotificationEntries
{
  v2 = _ACDNotificationSignpostSystem();
  v3 = _ACSignpostCreate();

  v4 = _ACDNotificationSignpostSystem();
  v5 = v4;
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "FaultPlugins", "", buf, 2u);
  }

  v6 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[(ACDAccountNotifier *)v3];
  }

  v7 = [(ACPluginLoader *)ACDPluginLoader pluginBundlesAtSubpath:@"Notification"];
  v8 = [v7 allObjects];

  v9 = [v8 ac_mapNullable:&__block_literal_global_42];
  _ACSignpostGetNanoseconds();
  v10 = _ACDNotificationSignpostSystem();
  v11 = v10;
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v14 = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v11, OS_SIGNPOST_INTERVAL_END, v3, "FaultPlugins", "", v14, 2u);
  }

  v12 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[ACDAccountNotifier allNotificationEntries];
  }

  return v9;
}

ACDPluginEntry *__44__ACDAccountNotifier_allNotificationEntries__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ACDPluginEntry alloc] initWithBundle:v2];

  return v3;
}

- (ACDAccountNotifier)initWithNotificationEntries:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ACDAccountNotifier;
  v6 = [(ACDAccountNotifier *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.accounts.notifierworkq", v7);
    notificationEntryQueue = v6->_notificationEntryQueue;
    v6->_notificationEntryQueue = v8;

    objc_storeStrong(&v6->_notificationEntries, a3);
  }

  return v6;
}

- (BOOL)canSaveAccount:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v79 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v64 = v8;
  if (!v8)
  {
    [ACDAccountNotifier canSaveAccount:inStore:error:];
  }

  v63 = v9;
  if (!v9)
  {
    [ACDAccountNotifier canSaveAccount:inStore:error:];
  }

  v10 = _ACDNotificationSignpostSystem();
  v11 = _ACSignpostCreate();

  v12 = _ACDNotificationSignpostSystem();
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 138412290;
    *&buf[4] = v64;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CanSaveAccount", "account: %@", buf, 0xCu);
  }

  v62 = v11 - 1;

  v14 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier canSaveAccount:inStore:error:];
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForAccount:v64];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = v70 = 0u;
  v15 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
  if (!v15)
  {
    v17 = 0;
    v29 = 1;
LABEL_38:
    v31 = v62;
    goto LABEL_44;
  }

  v16 = v15;
  v60 = v11;
  v61 = a5;
  v17 = 0;
  v18 = *v68;
  v19 = v63;
LABEL_12:
  v20 = 0;
  while (1)
  {
    if (*v68 != v18)
    {
      objc_enumerationMutation(obj);
    }

    v21 = *(*(&v67 + 1) + 8 * v20);
    if ([v21 principalObjectRespondsToSelector:sel_canSaveAccount_inStore_error_])
    {
      break;
    }

    if ([v21 principalObjectRespondsToSelector:sel_canSaveAccount_inStore_])
    {
      v26 = [v21 principalObject];
      v23 = v26;
      if (v26)
      {
        if (([v26 canSaveAccount:v64 inStore:v19] & 1) == 0)
        {
          v33 = _ACDNotificationLogSystem();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v64;
            v72 = 2112;
            v73 = *&v21;
            _os_log_impl(&dword_221D2F000, v33, OS_LOG_TYPE_DEFAULT, "Entry reported inability to save account: %@, entry: %@", buf, 0x16u);
          }

          v35 = MEMORY[0x277CCACA8];
          v36 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v37 = [v36 localizedStringForKey:@"ACCOUNT_CANNOT_SAVE_ERROR_FORMAT" value:&stru_2835374D8 table:@"Localizable"];
          v38 = [v64 accountType];
          v39 = [v38 accountTypeDescription];
          v40 = [v64 accountType];
          v41 = [v40 accountTypeDescription];
          v42 = [v35 stringWithFormat:v37, v39, v41];

          v43 = MEMORY[0x277CCACA8];
          v44 = objc_opt_class();
          v45 = NSStringFromClass(v44);
          v46 = [v43 stringWithFormat:@"The account save was rejected by '%@'.", v45];

          v47 = MEMORY[0x277CCA9B8];
          v48 = *MEMORY[0x277CB8DC0];
          v49 = *MEMORY[0x277CCA068];
          v76[0] = *MEMORY[0x277CCA450];
          v76[1] = v49;
          v77[0] = v42;
          v77[1] = v46;
          v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
          v25 = [v47 errorWithDomain:v48 code:5 userInfo:v50];

          v32 = v42;
          v11 = v60;
          a5 = v61;
          v31 = v62;
          goto LABEL_42;
        }

        goto LABEL_27;
      }

      v27 = _ACDNotificationLogSystem();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
LABEL_26:

        goto LABEL_27;
      }

LABEL_30:
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_221D2F000, v27, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
      goto LABEL_26;
    }

LABEL_28:
    if (v16 == ++v20)
    {
      v28 = [obj countByEnumeratingWithState:&v67 objects:v78 count:16];
      v16 = v28;
      if (!v28)
      {
        v29 = 1;
        v11 = v60;
        a5 = v61;
        goto LABEL_38;
      }

      goto LABEL_12;
    }
  }

  v22 = [v21 principalObject];
  v23 = v22;
  if (!v22)
  {
    v27 = _ACDNotificationLogSystem();
    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_26;
    }

    goto LABEL_30;
  }

  v66 = v17;
  v24 = [v22 canSaveAccount:v64 inStore:v19 error:&v66];
  v25 = v66;

  if (v24)
  {
    v17 = v25;
    v19 = v63;
LABEL_27:

    goto LABEL_28;
  }

  v30 = _ACDNotificationLogSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v64;
    v72 = 2112;
    v73 = *&v21;
    _os_log_impl(&dword_221D2F000, v30, OS_LOG_TYPE_DEFAULT, "Entry reported inability to save account: %@, entry: %@", buf, 0x16u);
  }

  v11 = v60;
  a5 = v61;
  v31 = v62;
  if (!v25)
  {
    [ACDAccountNotifier canSaveAccount:inStore:error:];
    v32 = *buf;
LABEL_42:
  }

  v29 = 0;
  v17 = v25;
LABEL_44:

  Nanoseconds = _ACSignpostGetNanoseconds();
  v52 = _ACDNotificationSignpostSystem();
  v53 = v52;
  if (v31 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
  {
    v54 = @"NO";
    if (v29)
    {
      v54 = @"YES";
    }

    *buf = 138543362;
    *&buf[4] = v54;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v53, OS_SIGNPOST_INTERVAL_END, v11, "CanSaveAccount", "%{public}@", buf, 0xCu);
  }

  v55 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    v59 = @"NO";
    *buf = 134218498;
    *&buf[4] = v11;
    if (v29)
    {
      v59 = @"YES";
    }

    v72 = 2048;
    v73 = Nanoseconds / 1000000000.0;
    v74 = 2114;
    v75 = v59;
    _os_log_debug_impl(&dword_221D2F000, v55, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CanSaveAccount %{public}@", buf, 0x20u);
  }

  if (a5)
  {
    v56 = v17;
    *a5 = v17;
  }

  v57 = *MEMORY[0x277D85DE8];
  return v29;
}

- (BOOL)canRemoveAccount:(id)a3 inStore:(id)a4 error:(id *)a5
{
  v100 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  v86 = v8;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [ACDAccountNotifier canRemoveAccount:inStore:error:];
    if (v10)
    {
      goto LABEL_3;
    }
  }

  [ACDAccountNotifier canRemoveAccount:inStore:error:];
LABEL_3:
  v11 = _ACDNotificationSignpostSystem();
  v12 = _ACSignpostCreate();

  v13 = _ACDNotificationSignpostSystem();
  v14 = v13;
  v15 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 138412290;
    *&buf[4] = v86;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CanRemoveAccount", "account: %@", buf, 0xCu);
  }

  v16 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier canRemoveAccount:inStore:error:];
  }

  v81 = v10;

  [(ACDAccountNotifier *)self _pluginsRegisteredForAccount:v86];
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v91 = 0u;
  v84 = [obj countByEnumeratingWithState:&v88 objects:v99 count:16];
  if (!v84)
  {
    v17 = 0;
    v63 = 1;
    goto LABEL_62;
  }

  v73 = v12 - 1;
  v74 = v12;
  v75 = a5;
  v17 = 0;
  v18 = &selRef__setYahooAccountsProvisionedDataclassesToSupportedOnes;
  v19 = &selRef__setYahooAccountsProvisionedDataclassesToSupportedOnes;
  v83 = *v89;
  v78 = *MEMORY[0x277CB8DC0];
  v77 = *MEMORY[0x277CCA450];
  v76 = *MEMORY[0x277CCA068];
LABEL_10:
  v20 = 0;
  v85 = v18[177];
  v80 = v19[176];
  while (1)
  {
    if (*v89 != v83)
    {
      objc_enumerationMutation(obj);
    }

    v21 = *(*(&v88 + 1) + 8 * v20);
    v22 = _ACDNotificationSignpostSystem();
    v23 = _ACSignpostCreate();

    v24 = _ACDNotificationSignpostSystem();
    v25 = v24;
    v26 = v23 - 1;
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      [v21 identifier];
      v27 = v79 = v20;
      v28 = [v86 accountType];
      v29 = [v28 identifier];
      *buf = 138544386;
      *&buf[4] = v27;
      v93 = 2114;
      v94 = *&v29;
      v95 = 1026;
      *v96 = 3;
      *&v96[4] = 2112;
      *&v96[6] = @"deleted";
      *&v96[14] = 2112;
      *&v96[16] = v86;
      v26 = v23 - 1;
      _os_signpost_emit_with_name_impl(&dword_221D2F000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "CanRemoveAccountPlugin", " PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x30u);

      v20 = v79;
    }

    v30 = _ACDNotificationSignpostSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v56 = [v21 identifier];
      v57 = [v86 accountType];
      v58 = [v57 identifier];
      *buf = 134219266;
      *&buf[4] = v23;
      v93 = 2114;
      v94 = *&v56;
      v95 = 2114;
      *v96 = v58;
      *&v96[8] = 1026;
      *&v96[10] = 3;
      *&v96[14] = 2112;
      *&v96[16] = @"deleted";
      *&v96[24] = 2112;
      *&v96[26] = v86;
      _os_log_debug_impl(&dword_221D2F000, v30, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: CanRemoveAccountPlugin  PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x3Au);
    }

    if ([v21 principalObjectRespondsToSelector:v85])
    {
      v31 = [v21 principalObject];
      v32 = v31;
      if (v31)
      {
        v87 = v17;
        v33 = [v31 canRemoveAccount:v86 inStore:v81 error:&v87];
        v34 = v87;

        if (v33)
        {
          v35 = 1;
LABEL_40:

          v17 = v34;
          goto LABEL_41;
        }

        v38 = _ACDNotificationLogSystem();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v86;
          v93 = 2112;
          v94 = *&v21;
          _os_log_impl(&dword_221D2F000, v38, OS_LOG_TYPE_DEFAULT, "Entry reported inability to remove account: %@, entry: %@", buf, 0x16u);
        }

        if (v34)
        {
          v35 = 0;
          goto LABEL_40;
        }

        [ACDAccountNotifier canRemoveAccount:inStore:error:];
        v17 = 0;
        v35 = 0;
        v37 = *buf;
        goto LABEL_38;
      }

      v37 = _ACDNotificationLogSystem();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      goto LABEL_55;
    }

    if ([v21 principalObjectRespondsToSelector:v80])
    {
      v36 = [v21 principalObject];
      v32 = v36;
      if (v36)
      {
        if ([v36 canRemoveAccount:v86 inStore:v81])
        {
          v35 = 1;
LABEL_39:
          v34 = v17;
          goto LABEL_40;
        }

        v39 = _ACDNotificationLogSystem();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v86;
          v93 = 2112;
          v94 = *&v21;
          _os_log_impl(&dword_221D2F000, v39, OS_LOG_TYPE_DEFAULT, "Entry reported inability to remove account: %@, entry: %@", buf, 0x16u);
        }

        v40 = MEMORY[0x277CCACA8];
        v41 = [v86 accountType];
        v42 = [v41 accountTypeDescription];
        v37 = [v40 stringWithFormat:@"Can't remove account with identifier %@ because one plugin doesn't allow it.", v42];

        v43 = MEMORY[0x277CCACA8];
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        v46 = [v43 stringWithFormat:@"The account removal was rejected by '%@'.", v45];

        v47 = MEMORY[0x277CCA9B8];
        v97[0] = v77;
        v97[1] = v76;
        v98[0] = v37;
        v98[1] = v46;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:2];
        v49 = [v47 errorWithDomain:v78 code:17 userInfo:v48];

        v35 = 0;
        v17 = v49;
LABEL_38:

        goto LABEL_39;
      }

      v37 = _ACDNotificationLogSystem();
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
LABEL_34:
        v35 = 1;
        goto LABEL_38;
      }

LABEL_55:
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_error_impl(&dword_221D2F000, v37, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
      goto LABEL_34;
    }

    v35 = 1;
LABEL_41:
    Nanoseconds = _ACSignpostGetNanoseconds();
    v51 = _ACDNotificationSignpostSystem();
    v52 = v51;
    if (v26 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
    {
      if (v35)
      {
        v53 = @"YES";
      }

      else
      {
        v53 = @"NO";
      }

      v54 = [v21 identifier];
      *buf = 138413058;
      *&buf[4] = v53;
      v93 = 2112;
      v94 = *&v54;
      v95 = 2112;
      *v96 = @"deleted";
      *&v96[8] = 2112;
      *&v96[10] = v86;
      _os_signpost_emit_with_name_impl(&dword_221D2F000, v52, OS_SIGNPOST_INTERVAL_END, v23, "CanRemoveAccountPlugin", "%@ %@ (changeType: %@, account: %@)", buf, 0x2Au);
    }

    v55 = _ACDNotificationSignpostSystem();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      v59 = Nanoseconds / 1000000000.0;
      if (v35)
      {
        v60 = @"YES";
      }

      else
      {
        v60 = @"NO";
      }

      v61 = [v21 identifier];
      *buf = 134219266;
      *&buf[4] = v23;
      v93 = 2048;
      v94 = v59;
      v95 = 2112;
      *v96 = v60;
      *&v96[8] = 2112;
      *&v96[10] = v61;
      *&v96[18] = 2112;
      *&v96[20] = @"deleted";
      *&v96[28] = 2112;
      *&v96[30] = v86;
      _os_log_debug_impl(&dword_221D2F000, v55, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CanRemoveAccountPlugin %@ %@ (changeType: %@, account: %@)", buf, 0x3Eu);
    }

    if (!v35)
    {
      break;
    }

    if (v84 == ++v20)
    {
      v62 = [obj countByEnumeratingWithState:&v88 objects:v99 count:16];
      v84 = v62;
      v18 = &selRef__setYahooAccountsProvisionedDataclassesToSupportedOnes;
      v19 = &selRef__setYahooAccountsProvisionedDataclassesToSupportedOnes;
      if (!v62)
      {
        v63 = 1;
        goto LABEL_60;
      }

      goto LABEL_10;
    }
  }

  v63 = 0;
LABEL_60:
  v12 = v74;
  a5 = v75;
  v15 = v73;
LABEL_62:

  v64 = _ACSignpostGetNanoseconds();
  v65 = _ACDNotificationSignpostSystem();
  v66 = v65;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
  {
    v67 = @"NO";
    if (v63)
    {
      v67 = @"YES";
    }

    *buf = 138543362;
    *&buf[4] = v67;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v66, OS_SIGNPOST_INTERVAL_END, v12, "CanRemoveAccount", "%{public}@", buf, 0xCu);
  }

  v68 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    v72 = @"NO";
    *buf = 134218498;
    *&buf[4] = v12;
    if (v63)
    {
      v72 = @"YES";
    }

    v93 = 2048;
    v94 = v64 / 1000000000.0;
    v95 = 2114;
    *v96 = v72;
    _os_log_debug_impl(&dword_221D2F000, v68, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: CanRemoveAccount %{public}@", buf, 0x20u);
  }

  if (a5)
  {
    v69 = v17;
    *a5 = v17;
  }

  v70 = *MEMORY[0x277D85DE8];
  return v63;
}

- (BOOL)postWillChangeNotificationForType:(int)a3 inStore:(id)a4 newAccount:(id)a5 oldAccount:(id)a6
{
  v89 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v71 = COERCE_DOUBLE(a5);
  v69 = a6;
  v67 = a3;
  if (!a3)
  {
    [ACDAccountNotifier postWillChangeNotificationForType:inStore:newAccount:oldAccount:];
  }

  v68 = v10;
  if (!v10)
  {
    [ACDAccountNotifier postWillChangeNotificationForType:inStore:newAccount:oldAccount:];
  }

  v11 = _ACDNotificationSignpostSystem();
  spid = _ACSignpostCreate();

  v12 = _ACDNotificationSignpostSystem();
  v13 = v12;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    if ((a3 - 1) > 4)
    {
      *&v14 = COERCE_DOUBLE(@"unknown");
    }

    else
    {
      v14 = off_27848C7F0[a3 - 1];
    }

    *buf = 138412802;
    v84 = v71;
    v85 = 2112;
    v86 = *&v14;
    v87 = 2112;
    *v88 = v69;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, spid, "AccountWillChange", "%@ (changeType: %@, oldAccount: %@)", buf, 0x20u);
  }

  v15 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    if ((a3 - 1) > 4)
    {
      v61 = @"unknown";
    }

    else
    {
      v61 = off_27848C7F0[a3 - 1];
    }

    *buf = 134218754;
    v84 = *&spid;
    v85 = 2112;
    v86 = v71;
    v87 = 2112;
    *v88 = v61;
    *&v88[8] = 2112;
    *&v88[10] = v69;
    _os_log_debug_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountWillChange %@ (changeType: %@, oldAccount: %@)", buf, 0x2Au);
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForNewAccount:*&v71 oldAccount:v69 changeType:a3];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  obj = v79 = 0u;
  v73 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
  if (v73)
  {
    v65 = 0;
    v66 = (a3 - 1);
    v72 = *v79;
    *&v16 = 138412546;
    v63 = v16;
    do
    {
      v17 = 0;
      do
      {
        if (*v79 != v72)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v78 + 1) + 8 * v17);
        if ([v18 principalObjectRespondsToSelector:{sel_account_willChangeWithType_inStore_oldAccount_, v63}])
        {
          v19 = [*&v71 copy];
          v20 = [v69 copy];
          v77 = v18;
          v76 = v68;
          v21 = v19;
          v22 = v20;
          v23 = v22;
          if (v21)
          {
            v24 = v21;
          }

          else
          {
            v24 = v22;
          }

          v74 = v24;
          v25 = [v74 accountType];
          [v25 identifier];
          v75 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v26 = _ACDNotificationSignpostSystem();
          v27 = _ACSignpostCreate();

          v28 = _ACDNotificationSignpostSystem();
          v29 = v28;
          if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
          {
            v30 = [v77 identifier];
            v31 = v30;
            v32 = @"unknown";
            if (v66 < 5)
            {
              v32 = off_27848C7F0[v66];
            }

            *buf = 138544386;
            v84 = *&v30;
            v85 = 2114;
            v86 = v75;
            v87 = 1026;
            *v88 = v67;
            *&v88[4] = 2112;
            *&v88[6] = v32;
            *&v88[14] = 2112;
            *&v88[16] = v74;
            _os_signpost_emit_with_name_impl(&dword_221D2F000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "AccountWillChangePlugin", " PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x30u);
          }

          v33 = _ACDNotificationSignpostSystem();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            [v77 identifier];
            v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v47 = v46;
            v48 = @"unknown";
            if (v66 < 5)
            {
              v48 = off_27848C7F0[v66];
            }

            *buf = 134219266;
            v84 = *&v27;
            v85 = 2114;
            v86 = v46;
            v87 = 2114;
            *v88 = v75;
            *&v88[8] = 1026;
            *&v88[10] = v67;
            *&v88[14] = 2112;
            *&v88[16] = v48;
            *&v88[24] = 2112;
            *&v88[26] = v74;
            _os_log_debug_impl(&dword_221D2F000, v33, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountWillChangePlugin  PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x3Au);
          }

          v34 = [v77 principalObject];
          v35 = v34;
          if (v34)
          {
            v36 = [v34 account:v21 willChangeWithType:v67 inStore:v76 oldAccount:v23];
          }

          else
          {
            v37 = _ACDNotificationLogSystem();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v84 = *&v77;
              _os_log_error_impl(&dword_221D2F000, v37, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
            }

            v36 = 0;
          }

          Nanoseconds = _ACSignpostGetNanoseconds();
          v39 = _ACDNotificationSignpostSystem();
          v40 = v39;
          if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
          {
            [v77 identifier];
            v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v42 = v41;
            v43 = @"NO";
            if (v36)
            {
              v43 = @"YES";
            }

            v44 = @"unknown";
            if (v66 <= 4)
            {
              v44 = off_27848C7F0[v66];
            }

            *buf = 138413058;
            v84 = *&v43;
            v85 = 2112;
            v86 = v41;
            v87 = 2112;
            *v88 = v44;
            *&v88[8] = 2112;
            *&v88[10] = v23;
            _os_signpost_emit_with_name_impl(&dword_221D2F000, v40, OS_SIGNPOST_INTERVAL_END, v27, "AccountWillChangePlugin", "%@ %@ (changeType: %@, oldAccount: %@)", buf, 0x2Au);
          }

          v45 = _ACDNotificationSignpostSystem();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v49 = [v77 identifier];
            v50 = v49;
            v51 = @"NO";
            if (v36)
            {
              v51 = @"YES";
            }

            v52 = @"unknown";
            if (v66 <= 4)
            {
              v52 = off_27848C7F0[v66];
            }

            *buf = 134219266;
            v84 = *&v27;
            v85 = 2048;
            v86 = Nanoseconds / 1000000000.0;
            v87 = 2112;
            *v88 = v51;
            *&v88[8] = 2112;
            *&v88[10] = v49;
            *&v88[18] = 2112;
            *&v88[20] = v52;
            *&v88[28] = 2112;
            *&v88[30] = v23;
            _os_log_debug_impl(&dword_221D2F000, v45, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountWillChangePlugin %@ %@ (changeType: %@, oldAccount: %@)", buf, 0x3Eu);
          }

          if (v36)
          {
            [*&v71 takeValuesFromModifiedAccount:v21];
            v65 = 1;
          }
        }

        ++v17;
      }

      while (v73 != v17);
      v53 = [obj countByEnumeratingWithState:&v78 objects:v82 count:16];
      v73 = v53;
    }

    while (v53);
  }

  else
  {
    v65 = 0;
  }

  v54 = _ACSignpostGetNanoseconds();
  v55 = _ACDNotificationSignpostSystem();
  v56 = v55;
  if ((spid - 1) < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v55))
  {
    v57 = @"NO";
    if (v65)
    {
      v57 = @"YES";
    }

    *buf = 138543362;
    v84 = *&v57;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v56, OS_SIGNPOST_INTERVAL_END, spid, "AccountWillChange", "%{public}@", buf, 0xCu);
  }

  v58 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v62 = @"NO";
    *buf = 134218498;
    v84 = *&spid;
    if (v65)
    {
      v62 = @"YES";
    }

    v85 = 2048;
    v86 = v54 / 1000000000.0;
    v87 = 2114;
    *v88 = v62;
    _os_log_debug_impl(&dword_221D2F000, v58, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountWillChange %{public}@", buf, 0x20u);
  }

  v59 = *MEMORY[0x277D85DE8];
  return v65 & 1;
}

- (void)postDidChangeNotificationForType:(int)a3 inStore:(id)a4 newAccount:(id)a5 oldAccount:(id)a6
{
  v81 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v64 = COERCE_DOUBLE(a5);
  v63 = a6;
  v61 = a3;
  if (!a3)
  {
    [ACDAccountNotifier postDidChangeNotificationForType:inStore:newAccount:oldAccount:];
  }

  v62 = v10;
  if (!v10)
  {
    [ACDAccountNotifier postDidChangeNotificationForType:inStore:newAccount:oldAccount:];
  }

  v11 = _ACDNotificationSignpostSystem();
  spid = _ACSignpostCreate();

  v12 = _ACDNotificationSignpostSystem();
  v13 = v12;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    if ((a3 - 1) > 4)
    {
      *&v14 = COERCE_DOUBLE(@"unknown");
    }

    else
    {
      v14 = off_27848C7F0[a3 - 1];
    }

    *buf = 138412802;
    v76 = v64;
    v77 = 2112;
    v78 = *&v14;
    v79 = 2112;
    *v80 = v63;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v13, OS_SIGNPOST_INTERVAL_BEGIN, spid, "AccountDidChange", "%@ (changeType: %@, oldAccount: %@)", buf, 0x20u);
  }

  v15 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    if ((a3 - 1) > 4)
    {
      v57 = @"unknown";
    }

    else
    {
      v57 = off_27848C7F0[a3 - 1];
    }

    *buf = 134218754;
    v76 = *&spid;
    v77 = 2112;
    v78 = v64;
    v79 = 2112;
    *v80 = v57;
    *&v80[8] = 2112;
    *&v80[10] = v63;
    _os_log_debug_impl(&dword_221D2F000, v15, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountDidChange %@ (changeType: %@, oldAccount: %@)", buf, 0x2Au);
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForNewAccount:*&v64 oldAccount:v63 changeType:a3];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  obj = v71 = 0u;
  v67 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
  if (v67)
  {
    v60 = (a3 - 1);
    v66 = *v71;
    *&v16 = 138412546;
    v58 = v16;
    do
    {
      v17 = 0;
      do
      {
        if (*v71 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v70 + 1) + 8 * v17);
        if ([v18 principalObjectRespondsToSelector:{sel_account_didChangeWithType_inStore_oldAccount_, v58}])
        {
          v19 = [*&v64 copy];
          v20 = [v63 copy];
          v21 = v18;
          v69 = v62;
          v22 = v19;
          v23 = v20;
          v24 = v23;
          if (v22)
          {
            v25 = v22;
          }

          else
          {
            v25 = v23;
          }

          v26 = v25;
          v27 = [v26 accountType];
          [v27 identifier];
          v68 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v28 = _ACDNotificationSignpostSystem();
          v29 = _ACSignpostCreate();

          v30 = _ACDNotificationSignpostSystem();
          v31 = v30;
          if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
          {
            v32 = [v21 identifier];
            v33 = v32;
            v34 = @"unknown";
            if (v60 < 5)
            {
              v34 = off_27848C7F0[v60];
            }

            *buf = 138544386;
            v76 = *&v32;
            v77 = 2114;
            v78 = v68;
            v79 = 1026;
            *v80 = v61;
            *&v80[4] = 2112;
            *&v80[6] = v34;
            *&v80[14] = 2112;
            *&v80[16] = v26;
            _os_signpost_emit_with_name_impl(&dword_221D2F000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v29, "AccountDidChangePlugin", " PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x30u);
          }

          v35 = _ACDNotificationSignpostSystem();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
          {
            [v21 identifier];
            v46 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v47 = v46;
            v48 = @"unknown";
            if (v60 < 5)
            {
              v48 = off_27848C7F0[v60];
            }

            *buf = 134219266;
            v76 = *&v29;
            v77 = 2114;
            v78 = v46;
            v79 = 2114;
            *v80 = v68;
            *&v80[8] = 1026;
            *&v80[10] = v61;
            *&v80[14] = 2112;
            *&v80[16] = v48;
            *&v80[24] = 2112;
            *&v80[26] = v26;
            _os_log_debug_impl(&dword_221D2F000, v35, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountDidChangePlugin  PluginIdentifier=%{public,signpost.telemetry:string1,name=PluginIdentifier}@  AccountType=%{public,signpost.telemetry:string2,name=AccountType}@  ChangeType=%{public,signpost.telemetry:number1,name=ChangeType}d  enableTelemetry=YES (changeType: %@, account: %@)", buf, 0x3Au);
          }

          v36 = [v21 principalObject];
          v37 = v36;
          if (v36)
          {
            [v36 account:v22 didChangeWithType:v61 inStore:v69 oldAccount:v24];
          }

          else
          {
            v38 = _ACDNotificationLogSystem();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v76 = *&v21;
              _os_log_error_impl(&dword_221D2F000, v38, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
            }
          }

          Nanoseconds = _ACSignpostGetNanoseconds();
          v40 = _ACDNotificationSignpostSystem();
          v41 = v40;
          if (v29 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v40))
          {
            v42 = [v21 identifier];
            v43 = v42;
            *&v44 = COERCE_DOUBLE(@"unknown");
            if (v60 <= 4)
            {
              v44 = off_27848C7F0[v60];
            }

            *buf = 138412802;
            v76 = *&v42;
            v77 = 2112;
            v78 = *&v44;
            v79 = 2112;
            *v80 = v24;
            _os_signpost_emit_with_name_impl(&dword_221D2F000, v41, OS_SIGNPOST_INTERVAL_END, v29, "AccountDidChangePlugin", "%@ (changeType: %@, oldAccount: %@)", buf, 0x20u);
          }

          v45 = _ACDNotificationSignpostSystem();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v49 = [v21 identifier];
            v50 = v49;
            v51 = @"unknown";
            if (v60 <= 4)
            {
              v51 = off_27848C7F0[v60];
            }

            *buf = 134219010;
            v76 = *&v29;
            v77 = 2048;
            v78 = Nanoseconds / 1000000000.0;
            v79 = 2112;
            *v80 = v49;
            *&v80[8] = 2112;
            *&v80[10] = v51;
            *&v80[18] = 2112;
            *&v80[20] = v24;
            _os_log_debug_impl(&dword_221D2F000, v45, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountDidChangePlugin %@ (changeType: %@, oldAccount: %@)", buf, 0x34u);
          }
        }

        ++v17;
      }

      while (v67 != v17);
      v52 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      v67 = v52;
    }

    while (v52);
  }

  _ACSignpostGetNanoseconds();
  v53 = _ACDNotificationSignpostSystem();
  v54 = v53;
  if ((spid - 1) < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v54, OS_SIGNPOST_INTERVAL_END, spid, "AccountDidChange", "", buf, 2u);
  }

  v55 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier postDidChangeNotificationForType:inStore:newAccount:oldAccount:];
  }

  v56 = *MEMORY[0x277D85DE8];
}

- (void)postWillPerformDataclassActionsOnAccount:(id)a3 forDataclasses:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35 = v6;
  if (!v6)
  {
    v32 = v7;
    [ACDAccountNotifier postWillPerformDataclassActionsOnAccount:forDataclasses:];
    v7 = v32;
  }

  v34 = v7;
  if (!v7)
  {
    [ACDAccountNotifier postWillPerformDataclassActionsOnAccount:forDataclasses:];
  }

  v8 = _ACDNotificationSignpostSystem();
  spid = _ACSignpostCreate();

  v9 = _ACDNotificationSignpostSystem();
  v10 = v9;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 138412546;
    v43 = v35;
    v44 = 2112;
    v45 = *&v34;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "AccountWillPerform", "%@ (dataclasses: %@)", buf, 0x16u);
  }

  v11 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v43 = spid;
    v44 = 2112;
    v45 = *&v35;
    v46 = 2112;
    v47 = v34;
    _os_log_debug_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountWillPerform %@ (dataclasses: %@)", buf, 0x20u);
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForAccount:v35];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v12 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v12)
  {
    v37 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        if ([v14 principalObjectRespondsToSelector:sel_account_willPerformActionsForDataclasses_])
        {
          v15 = [v14 principalObject];
          if (v15)
          {
            v16 = _ACDNotificationSignpostSystem();
            v17 = _ACSignpostCreate();

            v18 = _ACDNotificationSignpostSystem();
            v19 = v18;
            if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
            {
              v20 = [v14 identifier];
              *buf = 138412802;
              v43 = v20;
              v44 = 2112;
              v45 = *&v35;
              v46 = 2112;
              v47 = v34;
              _os_signpost_emit_with_name_impl(&dword_221D2F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "AccountWillPerformPlugin", "%@ : %@ (dataclasses: %@)", buf, 0x20u);
            }

            v21 = _ACDNotificationSignpostSystem();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v27 = [v14 identifier];
              *buf = 134218754;
              v43 = v17;
              v44 = 2112;
              v45 = *&v27;
              v46 = 2112;
              v47 = v35;
              v48 = 2112;
              v49 = v34;
              _os_log_debug_impl(&dword_221D2F000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountWillPerformPlugin %@ : %@ (dataclasses: %@)", buf, 0x2Au);
            }

            [v15 account:v35 willPerformActionsForDataclasses:v34];
            Nanoseconds = _ACSignpostGetNanoseconds();
            v23 = _ACDNotificationSignpostSystem();
            v24 = v23;
            if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_221D2F000, v24, OS_SIGNPOST_INTERVAL_END, v17, "AccountWillPerformPlugin", "", buf, 2u);
            }

            v25 = _ACDNotificationSignpostSystem();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v43 = v17;
              v44 = 2048;
              v45 = Nanoseconds / 1000000000.0;
              _os_log_debug_impl(&dword_221D2F000, v25, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountWillPerformPlugin ", buf, 0x16u);
            }
          }

          else
          {
            v26 = _ACDNotificationLogSystem();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v43 = v14;
              _os_log_error_impl(&dword_221D2F000, v26, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v12);
  }

  _ACSignpostGetNanoseconds();
  v28 = _ACDNotificationSignpostSystem();
  v29 = v28;
  if ((spid - 1) < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v29, OS_SIGNPOST_INTERVAL_END, spid, "AccountWillPerform", "", buf, 2u);
  }

  v30 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier postWillPerformDataclassActionsOnAccount:forDataclasses:];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)postDidPerformDataclassActionsOnAccount:(id)a3 forDataclasses:(id)a4
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v35 = v6;
  if (!v6)
  {
    v32 = v7;
    [ACDAccountNotifier postDidPerformDataclassActionsOnAccount:forDataclasses:];
    v7 = v32;
  }

  v34 = v7;
  if (!v7)
  {
    [ACDAccountNotifier postDidPerformDataclassActionsOnAccount:forDataclasses:];
  }

  v8 = _ACDNotificationSignpostSystem();
  spid = _ACSignpostCreate();

  v9 = _ACDNotificationSignpostSystem();
  v10 = v9;
  if ((spid - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 138412546;
    v43 = v35;
    v44 = 2112;
    v45 = *&v34;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v10, OS_SIGNPOST_INTERVAL_BEGIN, spid, "AccountDidPerform", "%@ (dataclasses: %@)", buf, 0x16u);
  }

  v11 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v43 = spid;
    v44 = 2112;
    v45 = *&v35;
    v46 = 2112;
    v47 = v34;
    _os_log_debug_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountDidPerform %@ (dataclasses: %@)", buf, 0x20u);
  }

  [(ACDAccountNotifier *)self _pluginsRegisteredForAccount:v35];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  obj = v39 = 0u;
  v12 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v12)
  {
    v37 = *v39;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v38 + 1) + 8 * i);
        if ([v14 principalObjectRespondsToSelector:sel_account_didPerformActionsForDataclasses_])
        {
          v15 = [v14 principalObject];
          if (v15)
          {
            v16 = _ACDNotificationSignpostSystem();
            v17 = _ACSignpostCreate();

            v18 = _ACDNotificationSignpostSystem();
            v19 = v18;
            if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
            {
              v20 = [v14 identifier];
              *buf = 138412802;
              v43 = v20;
              v44 = 2112;
              v45 = *&v35;
              v46 = 2112;
              v47 = v34;
              _os_signpost_emit_with_name_impl(&dword_221D2F000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "AccountDidPerformPlugin", "%@ : %@ (dataclasses: %@)", buf, 0x20u);
            }

            v21 = _ACDNotificationSignpostSystem();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
            {
              v27 = [v14 identifier];
              *buf = 134218754;
              v43 = v17;
              v44 = 2112;
              v45 = *&v27;
              v46 = 2112;
              v47 = v35;
              v48 = 2112;
              v49 = v34;
              _os_log_debug_impl(&dword_221D2F000, v21, OS_LOG_TYPE_DEBUG, "BEGIN [%lld]: AccountDidPerformPlugin %@ : %@ (dataclasses: %@)", buf, 0x2Au);
            }

            [v15 account:v35 didPerformActionsForDataclasses:v34];
            Nanoseconds = _ACSignpostGetNanoseconds();
            v23 = _ACDNotificationSignpostSystem();
            v24 = v23;
            if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_221D2F000, v24, OS_SIGNPOST_INTERVAL_END, v17, "AccountDidPerformPlugin", "", buf, 2u);
            }

            v25 = _ACDNotificationSignpostSystem();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134218240;
              v43 = v17;
              v44 = 2048;
              v45 = Nanoseconds / 1000000000.0;
              _os_log_debug_impl(&dword_221D2F000, v25, OS_LOG_TYPE_DEBUG, "END [%lld] %fs: AccountDidPerformPlugin ", buf, 0x16u);
            }
          }

          else
          {
            v26 = _ACDNotificationLogSystem();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v43 = v14;
              _os_log_error_impl(&dword_221D2F000, v26, OS_LOG_TYPE_ERROR, "Failed to load principal object for entry: %@", buf, 0xCu);
            }
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v12);
  }

  _ACSignpostGetNanoseconds();
  v28 = _ACDNotificationSignpostSystem();
  v29 = v28;
  if ((spid - 1) < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_221D2F000, v29, OS_SIGNPOST_INTERVAL_END, spid, "AccountDidPerform", "", buf, 2u);
  }

  v30 = _ACDNotificationSignpostSystem();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    [ACDAccountNotifier postDidPerformDataclassActionsOnAccount:forDataclasses:];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)addNotificationEntry:(id)a3
{
  v4 = [(NSArray *)self->_notificationEntries arrayByAddingObject:a3];
  notificationEntries = self->_notificationEntries;
  self->_notificationEntries = v4;

  MEMORY[0x2821F96F8]();
}

- (void)removeAllNotificationEntries
{
  v3 = objc_alloc_init(MEMORY[0x277CBEA60]);
  notificationEntries = self->_notificationEntries;
  self->_notificationEntries = v3;

  MEMORY[0x2821F96F8]();
}

- (id)_pluginsRegisteredForAccount:(id)a3
{
  v4 = [(ACDAccountNotifier *)self _unsafe_pluginsRegisteredForNewAccount:a3 oldAccount:0 changeType:0];
  if ([v4 count])
  {
    notificationEntryQueue = self->_notificationEntryQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__ACDAccountNotifier__pluginsRegisteredForAccount___block_invoke;
    block[3] = &unk_27848BF78;
    v6 = v4;
    v10 = v6;
    dispatch_sync(notificationEntryQueue, block);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __51__ACDAccountNotifier__pluginsRegisteredForAccount___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = objc_autoreleasePoolPush();
  v3 = [v4 principalObject];
  objc_autoreleasePoolPop(v2);
}

- (id)_unsafe_pluginsRegisteredForNewAccount:(id)a3 oldAccount:(id)a4 changeType:(id)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 accountType];
  v12 = [v11 identifier];

  v13 = [v9 accountType];
  v14 = [v13 identifier];

  v15 = [(ACDAccountNotifier *)self _provisionedDataclassesForNewAccount:v8 oldAccount:v9];
  if (v10)
  {
    v16 = ExplicitAllowedPluginsByChangeType();
    v17 = [v16 objectForKeyedSubscript:v10];
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x277CCAC30];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __83__ACDAccountNotifier__unsafe_pluginsRegisteredForNewAccount_oldAccount_changeType___block_invoke;
  v33 = &unk_27848C7D0;
  v19 = v12;
  v34 = v19;
  v20 = v14;
  v35 = v20;
  v21 = v15;
  v36 = v21;
  v22 = v17;
  v37 = v22;
  v23 = [v18 predicateWithBlock:&v30];
  v24 = [(NSArray *)self->_notificationEntries filteredArrayUsingPredicate:v23, v30, v31, v32, v33];
  v25 = _ACDLogSystem();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v28 = [v10 intValue] - 1;
    if (v28 > 4)
    {
      v29 = @"unknown";
    }

    else
    {
      v29 = off_27848C7F0[v28];
    }

    *buf = 138413058;
    v39 = v8;
    v40 = 2112;
    v41 = v9;
    v42 = 2112;
    v43 = v29;
    v44 = 2114;
    v45 = v24;
    _os_log_debug_impl(&dword_221D2F000, v25, OS_LOG_TYPE_DEBUG, "_unsafe_pluginsRegisteredForNewAccount returning plugins for newAccount %@, oldAccount %@, changeType %@:\\n%{public}@ ", buf, 0x2Au);
  }

  v26 = *MEMORY[0x277D85DE8];

  return v24;
}

uint64_t __83__ACDAccountNotifier__unsafe_pluginsRegisteredForNewAccount_oldAccount_changeType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 supportedAccountTypes];
  v5 = v4;
  v6 = !v4 || *(a1 + 32) && ([v4 containsObject:?] & 1) != 0 || *(a1 + 40) && (objc_msgSend(v5, "containsObject:") & 1) != 0;
  v7 = [v3 supportedDataclasses];
  v8 = v7;
  if (v6 && v7)
  {
    if (([*(a1 + 48) intersectsSet:v7] & 1) == 0)
    {
LABEL_11:
      v9 = 0;
      goto LABEL_17;
    }
  }

  else if (!v6)
  {
    goto LABEL_11;
  }

  v10 = *(a1 + 56);
  if (v10 && [v10 count])
  {
    v11 = *(a1 + 56);
    v12 = [v3 identifier];
    v9 = [v11 containsObject:v12];
  }

  else
  {
    v9 = 1;
  }

LABEL_17:

  return v9;
}

- (id)_provisionedDataclassesForNewAccount:(id)a3 oldAccount:(id)a4
{
  v5 = a4;
  v6 = [a3 provisionedDataclasses];
  v7 = [v5 provisionedDataclasses];

  if (v6 && v7)
  {
    v8 = [v6 setByAddingObjectsFromSet:v7];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  if (v6)
  {
    v8 = v6;
    goto LABEL_8;
  }

  if (v7)
  {
    v8 = v7;
    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (void)allNotificationEntries
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2(&dword_221D2F000, v0, v1, "END [%lld] %fs: FaultPlugins ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)canSaveAccount:inStore:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)canSaveAccount:inStore:error:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (void)canSaveAccount:inStore:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6(&dword_221D2F000, v0, v1, "BEGIN [%lld]: CanSaveAccount account: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (uint64_t)canSaveAccount:inStore:error:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:v3 object:v2 file:@"ACDAccountNotifier.m" lineNumber:120 description:{@"Plugin denied account save but provided no error: %@", v1}];
}

- (void)canRemoveAccount:inStore:error:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)canRemoveAccount:inStore:error:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (void)canRemoveAccount:inStore:error:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_6(&dword_221D2F000, v0, v1, "BEGIN [%lld]: CanRemoveAccount account: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (uint64_t)canRemoveAccount:inStore:error:.cold.4()
{
  OUTLINED_FUNCTION_5_0();
  v4 = [MEMORY[0x277CCA890] currentHandler];
  *v0 = v4;
  return [v4 handleFailureInMethod:v3 object:v2 file:@"ACDAccountNotifier.m" lineNumber:166 description:{@"Plugin denied account remove but provided no error: %@", v1}];
}

- (void)postWillChangeNotificationForType:inStore:newAccount:oldAccount:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"changeType" object:? file:? lineNumber:? description:?];
}

- (void)postWillChangeNotificationForType:inStore:newAccount:oldAccount:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (void)postDidChangeNotificationForType:inStore:newAccount:oldAccount:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"changeType" object:? file:? lineNumber:? description:?];
}

- (void)postDidChangeNotificationForType:inStore:newAccount:oldAccount:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"store" object:? file:? lineNumber:? description:?];
}

- (void)postDidChangeNotificationForType:inStore:newAccount:oldAccount:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2(&dword_221D2F000, v0, v1, "END [%lld] %fs: AccountDidChange ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)postWillPerformDataclassActionsOnAccount:forDataclasses:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)postWillPerformDataclassActionsOnAccount:forDataclasses:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"dataclasses" object:? file:? lineNumber:? description:?];
}

- (void)postWillPerformDataclassActionsOnAccount:forDataclasses:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2(&dword_221D2F000, v0, v1, "END [%lld] %fs: AccountWillPerform ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)postDidPerformDataclassActionsOnAccount:forDataclasses:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"account" object:? file:? lineNumber:? description:?];
}

- (void)postDidPerformDataclassActionsOnAccount:forDataclasses:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_2_0();
  [v0 handleFailureInMethod:@"dataclasses" object:? file:? lineNumber:? description:?];
}

- (void)postDidPerformDataclassActionsOnAccount:forDataclasses:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_3_2(&dword_221D2F000, v0, v1, "END [%lld] %fs: AccountDidPerform ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end