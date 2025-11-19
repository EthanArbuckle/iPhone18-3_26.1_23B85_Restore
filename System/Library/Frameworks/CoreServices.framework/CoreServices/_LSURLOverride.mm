@interface _LSURLOverride
+ (id)booksStoreAuthorizationURL:(State *)a3;
+ (id)fmfURL:(State *)a3;
+ (id)fmipURL:(State *)a3;
+ (id)iCloudEmailPrefsURL:(State *)a3;
+ (id)iCloudFamilyURL:(State *)a3;
+ (id)iCloudSchoolworkURL:(State *)a3;
+ (id)iTunesStoreURL:(State *)a3;
+ (id)keynoteLiveURL:(State *)a3;
+ (id)keynoteLiveURL_noFragment:(State *)a3;
+ (void)addOverrideBlock:(id)a3;
+ (void)removeAllOverrideBlocks;
+ (void)resetPlatformFlag;
- (_LSURLOverride)initWithOriginalURL:(id)a3 checkingForAvailableApplications:(BOOL)a4;
@end

@implementation _LSURLOverride

- (_LSURLOverride)initWithOriginalURL:(id)a3 checkingForAvailableApplications:(BOOL)a4
{
  v4 = a4;
  v74 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v53.receiver = self;
  v53.super_class = _LSURLOverride;
  v8 = [(_LSURLOverride *)&v53 init];
  if (!v8)
  {
    goto LABEL_55;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v7 resolvingAgainstBaseURL:1];
  if (v9)
  {
    LaunchServices::URLOverrides::State::State(&v48, v9, v4);
    v10 = _os_feature_enabled_impl();
    if (v10)
    {
      v11 = LaunchServices::URLOverrides::getLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [_LSURLOverride initWithOriginalURL:checkingForAvailableApplications:];
      }

LABEL_6:

      v12 = 0;
      goto LABEL_40;
    }

    if (LaunchServices::URLOverrides::overrideBlocks)
    {
      v10 = [__LSDefaultsGetSharedInstance() isInXCTestRigInsecure];
      if (v10)
      {
        v46 = v4;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v15 = LaunchServices::URLOverrides::overrideBlocks;
        v16 = [v15 countByEnumeratingWithState:&v54 objects:buf count:16];
        if (!v16)
        {
          goto LABEL_20;
        }

        v17 = *v55;
LABEL_14:
        v18 = 0;
        while (1)
        {
          if (*v55 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v54 + 1) + 8 * v18);
          v20 = (*(v19 + 16))(v19, v48, v49, v50, v52);
          v12 = v20;
          if (v20)
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v15 countByEnumeratingWithState:&v54 objects:buf count:16];
            if (!v16)
            {
LABEL_20:

              v4 = v46;
              goto LABEL_21;
            }

            goto LABEL_14;
          }
        }

        v31 = LaunchServices::URLOverrides::getLog(v20);
        v4 = v46;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          v44 = MEMORY[0x1865D71B0](v19);
          v45 = [v48 URL];
          *v65 = 138478339;
          *&v65[4] = v44;
          *&v65[12] = 2113;
          *&v65[14] = v45;
          *&v65[22] = 2113;
          v66 = v12;
          _os_log_debug_impl(&dword_18162D000, v31, OS_LOG_TYPE_DEBUG, "Block %{private}@ overrode URL %{private}@ to %{private}@", v65, 0x20u);
        }

LABEL_40:
        v33 = LaunchServices::URLOverrides::getLog(v32);
        v34 = v33;
        if (v12)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138478083;
            v71 = v12;
            v72 = 2113;
            v73 = v7;
            _os_log_impl(&dword_18162D000, v34, OS_LOG_TYPE_DEFAULT, "URL %{private}@ overrides URL %{private}@", buf, 0x16u);
          }

          objc_storeStrong(&v8->_originalURL, a3);
          v35 = [v12 copy];
          overrideURL = v8->_overrideURL;
          v8->_overrideURL = v35;

          if (!v4)
          {
            goto LABEL_54;
          }

          v37 = +[LSApplicationWorkspace defaultWorkspace];
          v47 = 0;
          v38 = [v37 isApplicationAvailableToOpenURL:v12 error:&v47];
          v39 = v47;

          if (v38)
          {
LABEL_53:

LABEL_54:
LABEL_55:
            v8 = v8;
            v14 = v8;
            goto LABEL_56;
          }

          if (!v39)
          {
LABEL_52:
            v8 = 0;
            goto LABEL_53;
          }

          v34 = LaunchServices::URLOverrides::getLog(v40);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [_LSURLOverride initWithOriginalURL:checkingForAvailableApplications:];
          }
        }

        else
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            [_LSURLOverride initWithOriginalURL:checkingForAvailableApplications:];
          }

          v39 = v8;
        }

        goto LABEL_52;
      }
    }

LABEL_21:
    if ((v49 & 1) == 0 && (v50 & 1) == 0 && (v51 & 1) == 0)
    {
      v11 = LaunchServices::URLOverrides::getLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v43 = [v48 URL];
        [(_LSURLOverride *)v43 initWithOriginalURL:v65 checkingForAvailableApplications:v11];
      }

      goto LABEL_6;
    }

    v21 = objc_opt_class();
    v22 = v21;
    *v65 = sel_fmfURL_;
    *&v65[8] = sel_fmipURL_;
    *&v65[16] = sel_iTunesStoreURL_;
    v66 = sel_iCloudEmailPrefsURL_;
    v67 = sel_keynoteLiveURL_;
    v68 = sel_iCloudFamilyURL_;
    v69 = sel_iCloudSchoolworkURL_;
    v64 = sel_booksStoreAuthorizationURL_;
    if (v49)
    {
      v23 = v4;
LABEL_27:
      v24 = v65;
      v25 = 7;
      goto LABEL_28;
    }

    v23 = v4;
    if (v50)
    {
      goto LABEL_27;
    }

    if (v51)
    {
      v24 = &v64;
    }

    else
    {
      v24 = 0;
    }

    if (v51)
    {
      v25 = 1;
LABEL_28:
      while (1)
      {
        v26 = *v24;
        v21 = [v22 *v24];
        v12 = v21;
        if (v21)
        {
          break;
        }

        ++v24;
        if (!--v25)
        {
          goto LABEL_30;
        }
      }

      v27 = LaunchServices::URLOverrides::getLog(v21);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v29 = NSStringFromSelector(v26);
        v4 = v23;
        v30 = [v48 URL];
        *v58 = 138478339;
        v59 = v29;
        v60 = 2113;
        v61 = v30;
        v62 = 2113;
        v63 = v12;
        _os_log_debug_impl(&dword_18162D000, v27, OS_LOG_TYPE_DEBUG, "Selector %{private}@ overrode URL %{private}@ to %{private}@", v58, 0x20u);

        goto LABEL_36;
      }
    }

    else
    {
LABEL_30:
      v27 = LaunchServices::URLOverrides::getLog(v21);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = [v48 URL];
        v4 = v23;
        [(_LSURLOverride *)v28 initWithOriginalURL:v58 checkingForAvailableApplications:v27];
        v12 = 0;
LABEL_36:

        goto LABEL_40;
      }

      v12 = 0;
    }

    v4 = v23;
    goto LABEL_36;
  }

  v13 = LaunchServices::URLOverrides::getLog(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v71 = v7;
    _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "URL %{private}@ could not be decomposed into its components. Cannot override.", buf, 0xCu);
  }

  v14 = 0;
LABEL_56:

  v41 = *MEMORY[0x1E69E9840];
  return v14;
}

+ (void)addOverrideBlock:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[_LSURLOverride(Tests) addOverrideBlock:]"];
    [v7 handleFailureInFunction:v8 file:@"LSURLOverride.mm" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    v3 = LaunchServices::URLOverrides::overrideBlocks;
    if (!LaunchServices::URLOverrides::overrideBlocks)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v5 = LaunchServices::URLOverrides::overrideBlocks;
      LaunchServices::URLOverrides::overrideBlocks = v4;

      v3 = LaunchServices::URLOverrides::overrideBlocks;
    }

    v6 = MEMORY[0x1865D71B0](v9);
    [v3 addObject:v6];
  }
}

+ (void)removeAllOverrideBlocks
{
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    v2 = LaunchServices::URLOverrides::overrideBlocks;
    LaunchServices::URLOverrides::overrideBlocks = 0;
  }
}

+ (void)resetPlatformFlag
{
  if ([__LSDefaultsGetSharedInstance() isInXCTestRigInsecure])
  {
    v2 = LaunchServices::URLOverrides::gUseMacOverrides;
    LaunchServices::URLOverrides::gUseMacOverrides = 0;
  }
}

+ (id)fmfURL:(State *)a3
{
  v4 = [a3->var0 host];
  v5 = [v4 lowercaseString];

  if ([v5 isEqualToString:@"fmfmail.icloud.com"])
  {
    v6 = [a3->var0 path];
    v7 = [a3->var0 query];
    v8 = v7;
    if (v6 && v7)
    {
      v9 = [v6 mutableCopy];
      [v9 appendString:@"?"];
      [v9 appendString:v8];
      v10 = [v9 copy];

      v6 = v10;
    }

    if ([v6 hasPrefix:@"/"])
    {
      v11 = [a3->var0 copy];
      [v11 setScheme:@"fmf1"];
      v12 = [v11 URL];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)fmipURL:(State *)a3
{
  v4 = [a3->var0 host];
  v5 = [v4 lowercaseString];

  if ([v5 isEqualToString:@"fmipmail.icloud.com"])
  {
    v6 = [a3->var0 copy];
    [v6 setScheme:@"fmip1"];
    v7 = [v6 URL];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)iTunesStoreURL:(State *)a3
{
  v76 = *MEMORY[0x1E69E9840];
  if (a3->var6)
  {
    v3 = LaunchServices::URLOverrides::getLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iTunesStoreURL:];
    }

    v4 = 0;
    goto LABEL_65;
  }

  v58 = [a3->var0 scheme];
  v5 = [a3->var0 host];
  v6 = [v5 lowercaseString];

  v57 = v6;
  v7 = [a3->var0 path];
  v8 = [a3->var0 query];
  v9 = v8;
  v4 = 0;
  if (!v58 || !v6 || !v7)
  {
    goto LABEL_64;
  }

  v50 = v8;
  if (v8)
  {
    v10 = [v7 mutableCopy];
    [v10 appendString:@"?"];
    [v10 appendString:v9];
    v11 = [v10 copy];

    v7 = v11;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/var/mobile/Library/Caches/com.apple.itunesstored/url-resolution.plist"];
  if (v12)
  {
    v13 = @"/var/mobile/Library/Caches/com.apple.itunesstored/url-resolution.plist";
  }

  else
  {
    v40 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.MobileCoreServices"];
    v13 = [v40 pathForResource:@"iTunesStoreURLPatterns" ofType:@"plist"];

    if (!v13 || (v12 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:v13]) == 0)
    {
      v4 = 0;
      goto LABEL_63;
    }
  }

  v48 = v13;
  [v12 objectForKey:@"p2-url-resolution"];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  obj = v68 = 0u;
  v47 = v12;
  v14 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (!v14)
  {
    v4 = 0;
    goto LABEL_62;
  }

  v46 = *v68;
  *&v15 = 138477827;
  v43 = v15;
  do
  {
    v16 = 0;
    v44 = v14;
    do
    {
      if (*v68 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v53 = *(*(&v67 + 1) + 8 * v16);
      v17 = [v53 objectForKey:{@"scheme-mapping", v43}];
      v49 = v16;
      v55 = [v17 objectForKey:v58];

      if (a3->var1)
      {
        v18 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v18 setScheme:v55];
        v19 = +[LSApplicationWorkspace defaultWorkspace];
        v20 = [v18 URL];
        v21 = [v19 isApplicationAvailableToOpenURL:v20 error:0];

        if (!v21)
        {
          v38 = LaunchServices::URLOverrides::getLog(v22);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            *buf = v43;
            v74 = v55;
            _os_log_debug_impl(&dword_18162D000, v38, OS_LOG_TYPE_DEBUG, "Skipping iTunes Store scheme %{private}@ because no app is installed to handle it", buf, 0xCu);
          }

          goto LABEL_53;
        }
      }

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v18 = [v53 objectForKey:@"host-patterns"];
      v52 = v18;
      v23 = [v18 countByEnumeratingWithState:&v63 objects:v72 count:16];
      if (v23)
      {
        v24 = 0;
        v51 = *v64;
        do
        {
          for (i = 0; i != v23; ++i)
          {
            if (*v64 != v51)
            {
              objc_enumerationMutation(v18);
            }

            v26 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:*(*(&v63 + 1) + 8 * i) options:1 error:0];
            v29 = [v26 rangeOfFirstMatchInString:v57 options:0 range:{0, objc_msgSend(v57, "length")}] != 0x7FFFFFFFFFFFFFFFLL || v27 != 0;
            v24 |= v29;
            if (v24)
            {
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              v30 = [v53 objectForKey:@"path-patterns"];
              v45 = v24;
              v31 = [v30 countByEnumeratingWithState:&v59 objects:v71 count:16];
              if (v31)
              {
                v32 = *v60;
                while (2)
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v60 != v32)
                    {
                      objc_enumerationMutation(v30);
                    }

                    v34 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:*(*(&v59 + 1) + 8 * j) options:1 error:0];
                    v37 = [v34 rangeOfFirstMatchInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}] == 0x7FFFFFFFFFFFFFFFLL && v35 == 0;

                    if (!v37)
                    {

                      v39 = [a3->var0 copy];
                      [v39 setScheme:v55];
                      v4 = [v39 URL];

                      goto LABEL_62;
                    }
                  }

                  v31 = [v30 countByEnumeratingWithState:&v59 objects:v71 count:16];
                  if (v31)
                  {
                    continue;
                  }

                  break;
                }
              }

              v24 = v45;
            }

            v18 = v52;
          }

          v23 = [v52 countByEnumeratingWithState:&v63 objects:v72 count:16];
        }

        while (v23);
      }

LABEL_53:

      v16 = v49 + 1;
    }

    while (v49 + 1 != v44);
    v14 = [obj countByEnumeratingWithState:&v67 objects:v75 count:16];
    v4 = 0;
  }

  while (v14);
LABEL_62:

  v13 = v48;
LABEL_63:

  v9 = v50;
LABEL_64:

  v3 = v58;
LABEL_65:

  v41 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)iCloudEmailPrefsURL:(State *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (a3->var3)
  {
    v4 = [a3->var0 host];
    v5 = [v4 lowercaseString];

    if ([v5 isEqualToString:@"setup.icloud.com"])
    {
      v38 = [a3->var0 query];
      if (v38 && (HasCaseInsensitivePrefix = LaunchServices::URLOverrides::State::pathHasCaseInsensitivePrefix(&a3->var0, &cfstr_EmailPrefs.isa)))
      {
        var6 = a3->var6;
        v8 = LaunchServices::URLOverrides::getLog(HasCaseInsensitivePrefix);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
        if (var6)
        {
          if (v9)
          {
            +[_LSURLOverride(Functions) iCloudEmailPrefsURL:];
          }

          v10 = [a3->var0 path];
          if ([(__CFString *)v10 hasPrefix:@"/"])
          {
            v11 = [(__CFString *)v10 substringWithRange:1, [(__CFString *)v10 length]- 1];

            v10 = v11;
          }

          v36 = v10;
          if (v10 && [(__CFString *)v10 length])
          {
            v12 = objc_alloc_init(MEMORY[0x1E696AF20]);
            [v12 setScheme:@"x-apple.systempreferences"];
            if (LaunchServices::URLOverrides::State::pathHasCaseInsensitivePrefix(&a3->var0, &cfstr_EmailPrefsFami.isa))
            {
              v13 = @"com.apple.preferences.FamilySharingPrefPane";
            }

            else
            {
              v13 = @"com.apple.preferences.AppleIDPrefPane";
            }

            [v12 setPath:v13];
            v14 = [(__CFString *)v10 mutableCopy];
            [v14 appendString:@"?"];
            [v14 appendString:v38];
            [v12 setQuery:v14];
            v15 = [v12 URL];

LABEL_43:
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          if (v9)
          {
            +[_LSURLOverride(Functions) iCloudEmailPrefsURL:];
          }

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v16 = [a3->var0 queryItems];
          v17 = [v16 countByEnumeratingWithState:&v43 objects:v48 count:16];
          if (v17)
          {
            v18 = *v44;
            while (2)
            {
              for (i = 0; i != v17; ++i)
              {
                if (*v44 != v18)
                {
                  objc_enumerationMutation(v16);
                }

                v20 = [*(*(&v43 + 1) + 8 * i) name];
                v21 = [v20 isEqualToString:@"path"];

                if (v21)
                {

                  v41 = 0u;
                  v42 = 0u;
                  v39 = 0u;
                  v40 = 0u;
                  v23 = [a3->var0 queryItems];
                  v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
                  if (v24)
                  {
                    v25 = *v40;
                    v36 = &stru_1EEF65710;
                    while (2)
                    {
                      for (j = 0; j != v24; ++j)
                      {
                        if (*v40 != v25)
                        {
                          objc_enumerationMutation(v23);
                        }

                        v27 = *(*(&v39 + 1) + 8 * j);
                        v28 = [v27 name];
                        v29 = [v28 lowercaseString];
                        v30 = [v29 isEqual:@"path"];

                        if (v30)
                        {
                          v31 = MEMORY[0x1E696AEC0];
                          v32 = [v27 value];
                          v36 = [v31 stringWithFormat:@"ICLOUD_SERVICE/%@", v32];

                          goto LABEL_42;
                        }
                      }

                      v24 = [v23 countByEnumeratingWithState:&v39 objects:v47 count:16];
                      if (v24)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  else
                  {
                    v36 = &stru_1EEF65710;
                  }

LABEL_42:

                  v33 = objc_alloc(MEMORY[0x1E695DFF8]);
                  v12 = [@"settings-navigation://com.apple.Settings.AppleAccount/" stringByAppendingString:v36];
                  v15 = [v33 initWithString:v12];
                  goto LABEL_43;
                }
              }

              v17 = [v16 countByEnumeratingWithState:&v43 objects:v48 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v22 = objc_alloc(MEMORY[0x1E695DFF8]);
          v37 = [@"settings-navigation://com.apple.Settings.AppleAccount?" stringByAppendingString:v38];
          v15 = [v22 initWithString:?];
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)keynoteLiveURL:(State *)a3
{
  if (LaunchServices::URLOverrides::State::isNooverride(&a3->var0))
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 keynoteLiveURL_noFragment:a3];
  }

  return v5;
}

+ (id)keynoteLiveURL_noFragment:(State *)a3
{
  if (a3->var3 && a3->var5 && LaunchServices::URLOverrides::State::pathHasCaseInsensitivePrefix(&a3->var0, &cfstr_KeynoteLive.isa))
  {
    v4 = [a3->var0 copy];
    [v4 setScheme:@"com.apple.iwork.keynote-live"];
    v5 = +[LSApplicationWorkspace defaultWorkspace];
    v6 = [v4 URL];
    v7 = [v5 isApplicationAvailableToOpenURL:v6 error:0];

    if (v7)
    {
      v8 = [v4 URL];
    }

    else
    {
      v10 = [a3->var0 host];
      v11 = [v10 caseInsensitiveCompare:@"www.icloud.com"];

      if (v11)
      {
        v8 = 0;
      }

      else
      {
        v12 = [a3->var0 path];
        v13 = [v12 lastPathComponent];

        v14 = objc_alloc_init(MEMORY[0x1E696AF20]);
        [v14 setScheme:@"x-keynote-live"];
        [v14 setHost:v13];
        v8 = [v14 URL];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)iCloudFamilyURL:(State *)a3
{
  if (a3->var6)
  {
    v3 = LaunchServices::URLOverrides::getLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudFamilyURL:];
    }

    v4 = 0;
  }

  else
  {
    v6 = [a3->var0 host];
    v7 = [v6 lowercaseString];

    if ([v7 isEqual:@"setup.icloud.com"])
    {
      v8 = [a3->var0 path];
      if ([v8 isEqual:@"/family/messages"])
      {
        v9 = [a3->var0 copy];
        [v9 setScheme:@"family"];
        [v9 setHost:@"messages"];
        [v9 setPath:0];
        v4 = [v9 URL];
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)iCloudSchoolworkURL:(State *)a3
{
  if (a3->var6)
  {
    v3 = LaunchServices::URLOverrides::getLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudSchoolworkURL:];
    }

    goto LABEL_15;
  }

  if (!a3->var5)
  {
    v3 = LaunchServices::URLOverrides::getLog(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudSchoolworkURL:];
    }

    goto LABEL_15;
  }

  v5 = [a3->var0 fragment];
  v6 = [v5 pathComponents];
  v3 = [v6 mutableCopy];

  if (!v3 || (v7 = [v3 count], v7 <= 1))
  {
    v8 = LaunchServices::URLOverrides::getLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudSchoolworkURL:];
    }

LABEL_14:

LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v9 = [v3 objectAtIndexedSubscript:0];
  v10 = [v9 caseInsensitiveCompare:@"schoolwork"];

  if (v10)
  {
    v8 = LaunchServices::URLOverrides::getLog(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) iCloudSchoolworkURL:];
    }

    goto LABEL_14;
  }

  v14 = [a3->var0 copy];
  [v14 setScheme:@"schoolwork"];
  [v14 setHost:@"schoolwork"];
  [v3 replaceObjectAtIndex:0 withObject:&stru_1EEF65710];
  v15 = [v3 componentsJoinedByString:@"/"];
  [v14 setPath:v15];

  [v14 setFragment:0];
  v12 = [v14 URL];

LABEL_16:

  return v12;
}

+ (id)booksStoreAuthorizationURL:(State *)a3
{
  if (a3->var6)
  {
    if (a3->var4)
    {
      v4 = [a3->var0 host];
      v5 = [v4 isEqual:@"www.audible.com"];

      if (v5)
      {
        v6 = [a3->var0 copy];
        [v6 setScheme:@"ibooks"];
        v7 = [v6 URL];

        goto LABEL_9;
      }
    }
  }

  else
  {
    v8 = LaunchServices::URLOverrides::getLog(a1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[_LSURLOverride(Functions) booksStoreAuthorizationURL:];
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

- (void)initWithOriginalURL:(os_log_t)log checkingForAvailableApplications:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "URL %{private}@ was not an HTTP(S) or ITMS URL. Skipping URL overrides.", buf, 0xCu);
}

- (void)initWithOriginalURL:(os_log_t)log checkingForAvailableApplications:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_18162D000, log, OS_LOG_TYPE_DEBUG, "Nothing overrode URL %{private}@", buf, 0xCu);
}

- (void)initWithOriginalURL:checkingForAvailableApplications:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithOriginalURL:checkingForAvailableApplications:.cold.4()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_6();
  _os_log_debug_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEBUG, "Error determining if app is available to open URL %{private}@: %{public}@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)initWithOriginalURL:checkingForAvailableApplications:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_0_10();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end