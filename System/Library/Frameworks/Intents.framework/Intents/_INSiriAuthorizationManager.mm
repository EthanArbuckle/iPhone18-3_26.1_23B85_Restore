@interface _INSiriAuthorizationManager
+ (BOOL)_siriEnabled;
+ (id)_tccAccessInfoForBundle:(id)bundle;
+ (int64_t)_rawSiriAuthorizationStatusForAppID:(id)d;
+ (int64_t)_siriAuthorizationStatusForAppID:(id)d intentSlot:(id)slot;
+ (void)_requestSiriAuthorization:(id)authorization auditToken:(id *)token;
@end

@implementation _INSiriAuthorizationManager

+ (BOOL)_siriEnabled
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v2 = getAFPreferencesClass_softClass_54946;
  v11 = getAFPreferencesClass_softClass_54946;
  if (!getAFPreferencesClass_softClass_54946)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getAFPreferencesClass_block_invoke_54947;
    v7[3] = &unk_1E72888B8;
    v7[4] = &v8;
    __getAFPreferencesClass_block_invoke_54947(v7);
    v2 = v9[3];
  }

  v3 = v2;
  _Block_object_dispose(&v8, 8);
  sharedPreferences = [v2 sharedPreferences];
  assistantIsEnabled = [sharedPreferences assistantIsEnabled];

  return assistantIsEnabled;
}

+ (id)_tccAccessInfoForBundle:(id)bundle
{
  v34 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  bundleURL = [bundleCopy bundleURL];
  if (!bundleURL)
  {
    v18 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v28 = "+[_INSiriAuthorizationManager _tccAccessInfoForBundle:]";
      v29 = 2112;
      v30 = 0;
      v31 = 2112;
      v32 = bundleCopy;
      _os_log_error_impl(&dword_18E991000, v18, OS_LOG_TYPE_ERROR, "%s Could not lookup TCC info for nil bundleURL: %@ bundle: %@", buf, 0x20u);
    }

    goto LABEL_13;
  }

  v5 = CFBundleCreate(0, [bundleCopy bundleURL]);
  if (!v5)
  {
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  cf = v5;
  v22 = bundleURL;
  v6 = TCCAccessCopyInformationForBundle();
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    v12 = MEMORY[0x1E69D54F8];
    v13 = MEMORY[0x1E69D54E8];
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:{*v12, cf}];
        v17 = [v15 objectForKeyedSubscript:*v13];
        [v7 setObject:v17 forKey:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v10);
  }

  CFRelease(cf);
  bundleURL = v22;
LABEL_14:

  v19 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (int64_t)_rawSiriAuthorizationStatusForAppID:(id)d
{
  v25 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([self _siriEnabled])
  {
    v5 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:dCopy];
    bundleType = [v5 bundleType];
    if ([bundleType isEqualToString:*MEMORY[0x1E6963590]])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_6;
      }

      [v5 containingBundle];
      v5 = bundleType = v5;
    }

LABEL_6:
    v8 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      v19 = 136315650;
      v20 = "+[_INSiriAuthorizationManager _rawSiriAuthorizationStatusForAppID:]";
      v21 = 2112;
      v22 = v5;
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&dword_18E991000, v8, OS_LOG_TYPE_INFO, "%s Resolved appBundleProxy: %@ for appID: %@", &v19, 0x20u);
    }

    if (v5)
    {
      bundleType2 = [v5 bundleType];
      if ([bundleType2 isEqualToString:*MEMORY[0x1E69635A8]])
      {
        v10 = 3;
LABEL_24:

        goto LABEL_25;
      }

      bundleType3 = [v5 bundleType];
      v13 = [bundleType3 isEqualToString:*MEMORY[0x1E6963578]];

      if ((v13 & 1) == 0)
      {
        bundleType2 = [self _tccAccessInfoForBundle:v5];
        v14 = INSiriLogContextIntents;
        if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
        {
          v19 = 136315650;
          v20 = "+[_INSiriAuthorizationManager _rawSiriAuthorizationStatusForAppID:]";
          v21 = 2112;
          v22 = v5;
          v23 = 2112;
          v24 = bundleType2;
          _os_log_impl(&dword_18E991000, v14, OS_LOG_TYPE_INFO, "%s TCC access for %@: %@", &v19, 0x20u);
        }

        v15 = [bundleType2 objectForKeyedSubscript:*MEMORY[0x1E69D55E8]];
        v16 = v15;
        if (v15)
        {
          if ([v15 BOOLValue])
          {
            v10 = 3;
          }

          else
          {
            v10 = 2;
          }
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_24;
      }
    }

    v10 = 3;
LABEL_25:

    goto LABEL_26;
  }

  v11 = INSiriLogContextIntents;
  if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "+[_INSiriAuthorizationManager _rawSiriAuthorizationStatusForAppID:]";
    v21 = 2112;
    v22 = dCopy;
    _os_log_impl(&dword_18E991000, v11, OS_LOG_TYPE_INFO, "%s Siri is not enabled on this device, therefore Siri cannot be authorized for %@", &v19, 0x16u);
  }

  v10 = 2;
LABEL_26:

  v17 = *MEMORY[0x1E69E9840];
  return v10;
}

+ (int64_t)_siriAuthorizationStatusForAppID:(id)d intentSlot:(id)slot
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([slot isEqualToString:@"AutoShortcutNameType"])
  {
    v7 = INSiriLogContextIntents;
    if (os_log_type_enabled(INSiriLogContextIntents, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "+[_INSiriAuthorizationManager _siriAuthorizationStatusForAppID:intentSlot:]";
      _os_log_impl(&dword_18E991000, v7, OS_LOG_TYPE_INFO, "%s IntentSlot is App Shortcut, authorizing", &buf, 0xCu);
    }

    v8 = 3;
  }

  else if (dCopy)
  {
    if (_siriAuthorizationStatusForAppID_intentSlot__onceToken != -1)
    {
      dispatch_once(&_siriAuthorizationStatusForAppID_intentSlot__onceToken, &__block_literal_global_54957);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v17 = 0x2020000000;
    v18 = 0;
    v9 = _siriAuthorizationStatusForAppID_intentSlot__queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75___INSiriAuthorizationManager__siriAuthorizationStatusForAppID_intentSlot___block_invoke_12;
    block[3] = &unk_1E7281438;
    v13 = dCopy;
    p_buf = &buf;
    selfCopy = self;
    dispatch_sync(v9, block);
    v8 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v8 = 2;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (void)_requestSiriAuthorization:(id)authorization auditToken:(id *)token
{
  authorizationCopy = authorization;
  if (authorizationCopy)
  {
    if ([self _siriEnabled])
    {
      v7 = dispatch_get_global_queue(25, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      v8 = *&token->var0[4];
      v11 = *token->var0;
      v12 = v8;
      block[2] = __68___INSiriAuthorizationManager__requestSiriAuthorization_auditToken___block_invoke;
      block[3] = &unk_1E72813C8;
      v10 = authorizationCopy;
      dispatch_async(v7, block);
    }

    else
    {
      (*(authorizationCopy + 2))(authorizationCopy, 2);
    }
  }
}

@end