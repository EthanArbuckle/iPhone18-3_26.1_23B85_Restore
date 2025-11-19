@interface LSAltIconManager
+ (id)sharedInstance;
- (BOOL)_setAlternateIconName:(id)a3 forIdentifier:(id)a4 withIconsDictionary:(id)a5 error:(id *)a6;
- (BOOL)isValidAlternateIcon:(id)a3 forIconsDict:(id)a4;
- (LSAltIconManager)init;
- (id)_getPreferredIconNameForIdentifier:(id)a3;
- (id)alternateIconNameForIdentifier:(id)a3 error:(id *)a4;
- (void)changeIconWithAlertForApplicationIdentity:(id)a3 withIconsDictionary:(id)a4 toAlternateIconName:(id)a5 completion:(id)a6;
- (void)clearAlternateNameForBundleIdentifier:(id)a3 validationDictionary:(id)a4;
- (void)setAlternateIconName:(id)a3 forIdentifier:(id)a4 iconsDictionary:(id)a5 reply:(id)a6;
@end

@implementation LSAltIconManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[LSAltIconManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __34__LSAltIconManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(LSAltIconManager);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;
}

- (LSAltIconManager)init
{
  v6.receiver = self;
  v6.super_class = LSAltIconManager;
  v2 = [(LSAltIconManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(LSIconAlertManager);
    alertManager = v2->_alertManager;
    v2->_alertManager = v3;
  }

  return v2;
}

- (void)clearAlternateNameForBundleIdentifier:(id)a3 validationDictionary:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [(LSAltIconManager *)self _getPreferredIconNameForIdentifier:v6];
    if (v8)
    {
      v9 = ![(LSAltIconManager *)self isValidAlternateIcon:v8 forIconsDict:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  if (_LSIconsLog_onceToken != -1)
  {
    [LSAltIconManager clearAlternateNameForBundleIdentifier:validationDictionary:];
  }

  v10 = _LSIconsLog_log;
  if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"won't";
    if (v9)
    {
      v11 = @"will";
    }

    v13 = 138412546;
    v14 = v11;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "clearAlternateNameForBundleIdentifier: %@ clear for %@", &v13, 0x16u);
  }

  if (v9)
  {
    [(LSAltIconManager *)self _setPreferredIconName:0 forIdentifier:v6];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)alternateIconNameForIdentifier:(id)a3 error:(id *)a4
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = [(LSAltIconManager *)self _getPreferredIconNameForIdentifier:a3];
  if (v5)
  {
    v6 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = *MEMORY[0x1E696A578];
  v12[0] = @"no AlternateName found for app";
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v6 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 109, v10, "[LSAltIconManager alternateIconNameForIdentifier:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAltIconManager.m", 96);

  if (a4)
  {
LABEL_3:
    v7 = v6;
    *a4 = v6;
  }

LABEL_4:

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)setAlternateIconName:(id)a3 forIdentifier:(id)a4 iconsDictionary:(id)a5 reply:(id)a6
{
  v41[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  _LSAssertRunningInServer("[LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:]");
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
    v15 = 0;
  }

  else
  {
    v40 = *MEMORY[0x1E696A578];
    v41[0] = @"CFBundleIcons dictionary is missing or incorrect type";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v15 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -105, v16, "[LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAltIconManager.m", 115);

    v13[2](v13, 0, v15);
    v14 = 0;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v17 = _LSServer_DatabaseExecutionContext();
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __77__LSAltIconManager_setAlternateIconName_forIdentifier_iconsDictionary_reply___block_invoke;
  v26[3] = &unk_1E6A18DA0;
  v28 = &v29;
  v18 = v11;
  v27 = v18;
  [(LSDBExecutionContext *)v17 syncRead:v26];

  if (v10 && !v14)
  {
    if ([v10 isEqualToString:@"CFBundlePrimaryIcon"])
    {
      v14 = 0;
    }

    else
    {
      if (_LSIconsLog_onceToken != -1)
      {
        [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
      }

      v19 = _LSIconsLog_log;
      if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v37 = v10;
        v38 = 2112;
        v39 = v18;
        _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEFAULT, "Setting alternate icon name %@ for app %@", buf, 0x16u);
      }

      v14 = [v30[5] iconsDictionary];
    }
  }

  v25 = v15;
  v20 = [(LSAltIconManager *)self _setAlternateIconName:v10 forIdentifier:v18 withIconsDictionary:v14 error:&v25];
  v21 = v25;

  if (v20)
  {
    v22 = +[_LSInstallProgressService sharedInstance];
    v35 = v30[5];
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [v22 sendNotification:13 forAppProxies:v23 Plugins:0 completion:0];
  }

  v13[2](v13, v20, v21);

  _Block_object_dispose(&v29, 8);
  v24 = *MEMORY[0x1E69E9840];
}

void __77__LSAltIconManager_setAlternateIconName_forIdentifier_iconsDictionary_reply___block_invoke(uint64_t a1)
{
  v2 = [LSApplicationProxy applicationProxyForIdentifier:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)_getPreferredIconNameForIdentifier:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.lsd.iconNames", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v4 = v3;
  if (v3)
  {
    v5 = CFGetTypeID(v3);
    if (v5 != CFStringGetTypeID())
    {
      CFRelease(v4);
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)isValidAlternateIcon:(id)a3 forIconsDict:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"CFBundleAlternateIcons"];
  if (_NSIsNSArray() && ([v6 containsObject:v5] & 1) != 0)
  {
    v7 = 1;
  }

  else if (_NSIsNSDictionary())
  {
    v8 = [v6 objectForKey:v5];
    v7 = v8 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_setAlternateIconName:(id)a3 forIdentifier:(id)a4 withIconsDictionary:(id)a5 error:(id *)a6
{
  v29[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10 || ([v10 isEqualToString:@"CFBundlePrimaryIcon"] & 1) != 0)
  {
    v13 = 0;
LABEL_4:
    [(LSAltIconManager *)self _setPreferredIconName:v13 forIdentifier:v11];
    v14 = 1;
    goto LABEL_13;
  }

  if (v12)
  {
    if ([(LSAltIconManager *)self isValidAlternateIcon:v10 forIconsDict:v12])
    {
      v13 = v10;
      goto LABEL_4;
    }

    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"iconName not found in CFBundleAlternateIcons entry";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v16 = v15;
    v17 = 195;
  }

  else
  {
    v26 = *MEMORY[0x1E696A578];
    v27 = @"CFBundleIcons dictionary is missing or incorrect type";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v16 = v15;
    v17 = 199;
  }

  v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", -105, v16, "[LSAltIconManager _setAlternateIconName:forIdentifier:withIconsDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAltIconManager.m", v17);

  v18 = *MEMORY[0x1E696A250];
  v24 = *MEMORY[0x1E696AA08];
  v25 = v13;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  v20 = _LSMakeNSErrorImpl(v18, 4, v19, "[LSAltIconManager _setAlternateIconName:forIdentifier:withIconsDictionary:error:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSAltIconManager.m", 207);

  if (a6)
  {
    v21 = v20;
    *a6 = v20;
  }

  v14 = 0;
LABEL_13:

  v22 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)changeIconWithAlertForApplicationIdentity:(id)a3 withIconsDictionary:(id)a4 toAlternateIconName:(id)a5 completion:(id)a6
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (_LSIconsLog_onceToken != -1)
  {
    [LSAltIconManager clearAlternateNameForBundleIdentifier:validationDictionary:];
  }

  v14 = _LSIconsLog_log;
  if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v40 = v10;
    v41 = 2112;
    v42 = v12;
    _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert begin for %@ to %@", buf, 0x16u);
  }

  v15 = [v10 bundleIdentifier];
  v16 = [(LSAltIconManager *)self _getPreferredIconNameForIdentifier:v15];

  if (v16 == v12 || ([v16 isEqual:v12] & 1) != 0)
  {
    if (_LSIconsLog_onceToken != -1)
    {
      [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
    }

    v17 = _LSIconsLog_log;
    if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v40 = v16;
      v41 = 2112;
      v42 = v12;
      _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert existing icon name %@ equal to new name %@, doing nothing successfully", buf, 0x16u);
    }

    v13[2](v13, 1, 0);
  }

  else
  {
    alertManager = self->_alertManager;
    v37 = 0;
    v19 = [(LSIconAlertManager *)alertManager iconChangeAlertTokenForIdentity:v10 error:&v37];
    v20 = v37;
    if (v19)
    {
      v21 = [v10 bundleIdentifier];
      v36 = v20;
      v32 = v11;
      v22 = [(LSAltIconManager *)self _setAlternateIconName:v12 forIdentifier:v21 withIconsDictionary:v11 error:&v36];
      v23 = v36;

      if (v22)
      {
        if (_LSIconsLog_onceToken != -1)
        {
          [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
        }

        v24 = _LSIconsLog_log;
        if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v10;
          _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert send notification for %@", buf, 0xCu);
        }

        v25 = +[_LSInstallProgressService sharedInstance];
        v26 = [v10 bundleIdentifier];
        v38 = v26;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
        [v25 sendNotification:13 forApps:v27 withPlugins:0 completion:0];

        if (_LSIconsLog_onceToken != -1)
        {
          [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
        }

        v11 = v32;
        v28 = _LSIconsLog_log;
        if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v40 = v10;
          _os_log_impl(&dword_18162D000, v28, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert present for %@", buf, 0xCu);
        }

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __113__LSAltIconManager_changeIconWithAlertForApplicationIdentity_withIconsDictionary_toAlternateIconName_completion___block_invoke;
        v33[3] = &unk_1E6A18DC8;
        v34 = v10;
        v35 = v13;
        [v19 presentWithCompletion:v33];
      }

      else
      {
        if (_LSIconsLog_onceToken != -1)
        {
          [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
        }

        v11 = v32;
        v30 = _LSIconsLog_log;
        if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v40 = v10;
          v41 = 2112;
          v42 = v23;
          _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert couldn't set alternate icon name for %@: %@", buf, 0x16u);
        }

        (v13)[2](v13, 0, v23);
      }
    }

    else
    {
      if (_LSIconsLog_onceToken != -1)
      {
        [LSAltIconManager setAlternateIconName:forIdentifier:iconsDictionary:reply:];
      }

      v29 = _LSIconsLog_log;
      if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v40 = v10;
        v41 = 2112;
        v42 = v20;
        _os_log_impl(&dword_18162D000, v29, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert couldn't make icon alert token for %@: %@", buf, 0x16u);
      }

      (v13)[2](v13, 0, v20);
      v23 = v20;
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void __113__LSAltIconManager_changeIconWithAlertForApplicationIdentity_withIconsDictionary_toAlternateIconName_completion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (_LSIconsLog_onceToken != -1)
  {
    [LSAltIconManager clearAlternateNameForBundleIdentifier:validationDictionary:];
  }

  v6 = _LSIconsLog_log;
  if (os_log_type_enabled(_LSIconsLog_log, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 1024;
    v12 = a2;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "#ChangeIconWithAlert done for %@: %d %@", &v9, 0x1Cu);
  }

  (*(*(a1 + 40) + 16))();

  v8 = *MEMORY[0x1E69E9840];
}

@end