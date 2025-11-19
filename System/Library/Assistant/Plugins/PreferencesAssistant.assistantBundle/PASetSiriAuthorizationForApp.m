@interface PASetSiriAuthorizationForApp
- (BOOL)_accessForAppID:(id)a3;
- (BOOL)_setAccess:(BOOL)a3 appID:(id)a4;
- (id)_tccAccessInfoForBundle:(id)a3;
- (void)performWithCompletion:(id)a3;
@end

@implementation PASetSiriAuthorizationForApp

- (void)performWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(PASetSiriAuthorizationForApp *)self bundleId];
  v6 = [(PASetSiriAuthorizationForApp *)self _accessForAppID:v5];

  if ([(PASetSiriAuthorizationForApp *)self toggle])
  {
    v7 = (v6 ^ 1);
  }

  else
  {
    v7 = [(PASetSiriAuthorizationForApp *)self value];
  }

  v8 = [(PASetSiriAuthorizationForApp *)self dryRun];
  if (v6 == v7)
  {
    v9 = objc_alloc_init(SACommandFailed);
    [v9 setErrorCode:SASettingValueUnchangedErrorCode];
    [v9 setReason:{@"Value unchanged, No change was made"}];
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = v8;
  }

  if ((v10 & 1) == 0)
  {
    v11 = [(PASetSiriAuthorizationForApp *)self bundleId];
    v12 = [(PASetSiriAuthorizationForApp *)self _setAccess:v7 appID:v11];

    if (v12)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_alloc_init(SACommandFailed);
      [v9 setErrorCode:SASettingValueUnchangedErrorCode];
      [v9 setReason:@"TCC permission set failed"];
    }
  }

  v13 = PALogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(PASetSiriAuthorizationForApp *)self bundleId];
    v15 = v14;
    v16 = @"Set";
    if (v8)
    {
      v16 = @"Dry Run";
    }

    *v24 = 138413314;
    *&v24[4] = v14;
    *&v24[12] = 2112;
    *&v24[14] = v16;
    if (v6)
    {
      v17 = @"ON";
    }

    else
    {
      v17 = @"OFF";
    }

    *&v24[22] = 2112;
    v25 = v17;
    *v26 = 2112;
    if (v7)
    {
      v18 = @"ON";
    }

    else
    {
      v18 = @"OFF";
    }

    *&v26[2] = v18;
    v27 = 2112;
    v28 = v9;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "########## PASetSiriAuthorizationForApp: %@ (%@ / prev: %@ / value: %@ / %@)", v24, 0x34u);
  }

  v19 = v9;
  v20 = v19;
  if (!v19)
  {
    v21 = objc_alloc_init(SASettingBooleanEntity);
    [v21 setValue:v7];
    v22 = [NSNumber numberWithBool:v6];
    [v21 setPreviousValue:v22];

    v20 = objc_alloc_init(SASettingSetBoolResponse);
    [v20 setSetting:v21];
  }

  v23 = [v20 dictionary];
  v4[2](v4, v23);
}

- (BOOL)_setAccess:(BOOL)a3 appID:(id)a4
{
  v4 = [LSBundleProxy bundleProxyForIdentifier:a4];
  v5 = CFBundleCreate(0, [v4 bundleURL]);
  if (v5)
  {
    v6 = v5;
    v7 = TCCAccessSetForBundle() != 0;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_accessForAppID:(id)a3
{
  v4 = [LSBundleProxy bundleProxyForIdentifier:a3];
  v5 = [v4 bundleType];
  if ([v5 isEqualToString:LSSystemApplicationType])
  {
    v6 = 1;
LABEL_9:

    goto LABEL_10;
  }

  v7 = [v4 bundleType];
  v8 = [v7 isEqualToString:LSInternalApplicationType];

  if ((v8 & 1) == 0)
  {
    v5 = [(PASetSiriAuthorizationForApp *)self _tccAccessInfoForBundle:v4];
    v9 = [v5 objectForKeyedSubscript:kTCCServiceSiri];
    v10 = v9;
    if (v9)
    {
      v6 = [v9 BOOLValue];
    }

    else
    {
      v6 = 0;
    }

    goto LABEL_9;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

- (id)_tccAccessInfoForBundle:(id)a3
{
  v3 = a3;
  v4 = [v3 bundleURL];
  if (v4 && (v5 = CFBundleCreate(0, [v3 bundleURL])) != 0)
  {
    cf = v5;
    v18 = v4;
    v6 = TCCAccessCopyInformationForBundle();
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [v13 objectForKeyedSubscript:{kTCCInfoService, cf}];
          v15 = [v13 objectForKeyedSubscript:kTCCInfoGranted];
          [v7 setObject:v15 forKey:v14];
        }

        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    CFRelease(cf);
    v4 = v18;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end