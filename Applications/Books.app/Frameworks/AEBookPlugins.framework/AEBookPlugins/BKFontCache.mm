@interface BKFontCache
+ (id)sharedInstance;
- (BKFontCache)init;
- (id)_presetsFileNameForLanguage:(id)language;
- (id)_presetsForFileName:(id)name;
- (id)defaultFontNameForLanguage:(id)language;
- (id)fontFromFamilyName:(id)name language:(id)language;
- (id)fontsForLanguage:(id)language completion:(id)completion;
- (id)presetPostscriptsLookupForLanguage:(id)language;
- (id)presetSettingsForFontFamily:(id)family language:(id)language;
- (id)presetsForLanguage:(id)language;
- (void)_didReceiveMemoryWarning:(id)warning;
@end

@implementation BKFontCache

+ (id)sharedInstance
{
  if (qword_22CFC8 != -1)
  {
    sub_136AC0();
  }

  v3 = qword_22CFC0;

  return v3;
}

- (BKFontCache)init
{
  v11.receiver = self;
  v11.super_class = BKFontCache;
  v2 = [(BKFontCache *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(BKFontCache *)v2 setFontsByFileName:v3];

    v4 = objc_opt_new();
    [(BKFontCache *)v2 setFontLookupByFileName:v4];

    v5 = objc_opt_new();
    [(BKFontCache *)v2 setPresetsByFileName:v5];

    v6 = objc_opt_new();
    [(BKFontCache *)v2 setFontFaceLookupByFileName:v6];

    v7 = objc_opt_new();
    [(BKFontCache *)v2 setFileNames:v7];

    v8 = +[NSUserDefaults standardUserDefaults];
    -[BKFontCache setDisableAutoFontDownload:](v2, "setDisableAutoFontDownload:", [v8 BOOLForKey:@"REI.DisableAutoFontDownload"]);

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }

  return v2;
}

- (id)fontsForLanguage:(id)language completion:(id)completion
{
  languageCopy = language;
  completionCopy = completion;
  v6 = _AEBookPluginsFontCacheLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v66 = languageCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Prewarming AEBookPlugin for language %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([languageCopy length])
  {
    v45 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
    fontsByFileName = [(BKFontCache *)selfCopy fontsByFileName];
    v44 = [fontsByFileName objectForKeyedSubscript:v45];

    if (![v44 count])
    {
      v8 = [(BKFontCache *)selfCopy _presetsForFileName:v45];
      v9 = objc_opt_new();
      v48 = objc_opt_new();
      v10 = dispatch_group_create();
      v11 = +[BKReachability sharedReachabilityForInternetConnection];
      v47 = [v11 currentReachabilityStatus] == 1;

      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      v61 = 0u;
      obj = v8;
      v12 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v12)
      {
        v13 = *v62;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v62 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v61 + 1) + 8 * i);
            dispatch_group_enter(v10);
            v16 = [v15 valueForKey:@"fontFamily"];
            v17 = v16;
            v18 = &stru_1E7188;
            if (v16)
            {
              v18 = v16;
            }

            v19 = v18;

            v20 = [v9 objectForKeyedSubscript:v19];
            v21 = v20 == 0;

            if (v21)
            {
              v22 = [v15 valueForKey:@"system"];
              v23 = [v15 valueForKey:@"isPreinstalled"];
              bOOLValue = [v23 BOOLValue];

              v25 = objc_opt_new();
              if ([(__CFString *)v19 length])
              {
                if ([v22 isEqualToString:@"serif"])
                {
                  v26 = 4;
                }

                else
                {
                  v27 = [v22 isEqualToString:@"default"];
                  v28 = 2;
                  if (!bOOLValue)
                  {
                    v28 = 0;
                  }

                  if (v27)
                  {
                    v26 = 3;
                  }

                  else
                  {
                    v26 = v28;
                  }
                }
              }

              else
              {
                v26 = 1;
              }

              [v25 setKind:v26];
              [v25 setSystemName:v22];
              [v25 setFamilyName:v19];
              v29 = [v15 valueForKey:@"displayName"];
              [v25 setDisplayName:v29];

              v30 = [v15 valueForKey:@"postscriptName"];
              [v25 setPostscriptName:v30];

              v31 = [v15 valueForKey:@"postscriptBoldName"];
              [v25 setPostscriptBoldName:v31];

              [v48 addObject:v25];
              [v9 setObject:v25 forKey:v19];
              v32 = [v15 valueForKey:@"shouldAutoDownload"];
              LOBYTE(v31) = [v32 BOOLValue];

              v55[0] = _NSConcreteStackBlock;
              v55[1] = 3221225472;
              v55[2] = sub_18734;
              v55[3] = &unk_1E2F50;
              v33 = v25;
              v59 = v31;
              v60 = v47;
              v56 = v33;
              v57 = selfCopy;
              v58 = v10;
              [v33 checkStateSynchronously:0 completion:v55];
            }

            else
            {
              dispatch_group_leave(v10);
            }
          }

          v12 = [obj countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v12);
      }

      v34 = [v48 copy];
      fontsByFileName2 = [(BKFontCache *)selfCopy fontsByFileName];
      [fontsByFileName2 setObject:v34 forKeyedSubscript:v45];

      v36 = [v9 copy];
      fontLookupByFileName = [(BKFontCache *)selfCopy fontLookupByFileName];
      [fontLookupByFileName setObject:v36 forKeyedSubscript:v45];

      fileNames = [(BKFontCache *)selfCopy fileNames];
      [fileNames addObject:v45];

      v39 = _AEBookPluginsFontCacheLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = [v34 count];
        *buf = 134218242;
        v66 = v40;
        v67 = 2114;
        v68 = languageCopy;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "Cached %lu fonts for language: %{public}@", buf, 0x16u);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_18838;
      block[3] = &unk_1E2F78;
      v54 = completionCopy;
      v44 = v34;
      v52 = v44;
      v53 = languageCopy;
      dispatch_group_notify(v10, &_dispatch_main_q, block);
    }
  }

  else
  {
    v41 = _AEBookPluginsFontCacheLog();
    v45 = v41;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "Nil language parameter, returning 0 fonts", buf, 2u);
    }

    v44 = &__NSArray0__struct;
  }

  objc_sync_exit(selfCopy);

  return v44;
}

- (id)fontFromFamilyName:(id)name language:(id)language
{
  nameCopy = name;
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([languageCopy length])
  {
    v9 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
    if ([v9 length])
    {
      fontLookupByFileName = [(BKFontCache *)selfCopy fontLookupByFileName];
      v11 = [fontLookupByFileName objectForKeyedSubscript:v9];

      if (v11)
      {
        v12 = [v11 objectForKeyedSubscript:nameCopy];
LABEL_14:

        goto LABEL_15;
      }

      v13 = _AEBookPluginsFontCacheLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543362;
        v16 = v9;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Font lookup for %{public}@ not found, no font found", &v15, 0xCu);
      }
    }

    else
    {
      v11 = _AEBookPluginsFontCacheLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v15 = 138543362;
        v16 = languageCopy;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "Filename for %{public}@ not found, no font found", &v15, 0xCu);
      }
    }

    v12 = 0;
    goto LABEL_14;
  }

  v9 = _AEBookPluginsFontCacheLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543362;
    v16 = nameCopy;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "Empty language parameter, no font found for %{public}@", &v15, 0xCu);
  }

  v12 = 0;
LABEL_15:

  objc_sync_exit(selfCopy);

  return v12;
}

- (id)defaultFontNameForLanguage:(id)language
{
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v23 = languageCopy;
  if (![languageCopy length])
  {
    v21 = 0;
    goto LABEL_28;
  }

  [(BKFontCache *)selfCopy prewarmFontsForLanguage:languageCopy completion:0];
  v24 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
  [(BKFontCache *)selfCopy _presetsForFileName:?];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 valueForKey:{@"default", v23}];
        integerValue = [v11 integerValue];

        if (integerValue > v6)
        {
          v13 = [v10 valueForKey:@"fontFamily"];
          v14 = v13;
          v15 = &stru_1E7188;
          if (v13)
          {
            v15 = v13;
          }

          v16 = v15;

          fontLookupByFileName = [(BKFontCache *)selfCopy fontLookupByFileName];
          v18 = [fontLookupByFileName objectForKeyedSubscript:v24];

          v19 = [v18 objectForKeyedSubscript:v16];
          if (([v19 isInstalled] & 1) == 0)
          {
            [v19 checkStateSynchronously:1];
          }

          if (([v19 isInstalled] & 1) != 0 || objc_msgSend(v19, "state") == 1)
          {
            v20 = v10;

            v6 = integerValue;
            v7 = v20;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v5);

    if (v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  if ([obj count] < 2 || (objc_msgSend(obj, "objectAtIndex:", 1), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([obj count])
    {
      v7 = [obj objectAtIndex:0];
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_27:
  v21 = [v7 valueForKey:@"fontFamily"];

LABEL_28:
  objc_sync_exit(selfCopy);

  return v21;
}

- (id)presetsForLanguage:(id)language
{
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
  v7 = [(BKFontCache *)selfCopy _presetsForFileName:v6];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)presetSettingsForFontFamily:(id)family language:(id)language
{
  familyCopy = family;
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_19184;
  v23 = sub_19194;
  v24 = 0;
  if ([languageCopy length])
  {
    v9 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
    v10 = [(BKFontCache *)selfCopy _presetsForFileName:v9];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1919C;
    v16[3] = &unk_1E2FA0;
    v11 = familyCopy;
    v17 = v11;
    v18 = &v19;
    [v10 enumerateObjectsUsingBlock:v16];
    if (!v20[5])
    {
      v12 = _AEBookPluginsFontCacheLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_136AD4(v11, languageCopy, v12);
      }

      v13 = v20[5];
      v20[5] = &off_1F1708;
    }
  }

  v14 = v20[5];
  _Block_object_dispose(&v19, 8);

  objc_sync_exit(selfCopy);

  return v14;
}

- (id)presetPostscriptsLookupForLanguage:(id)language
{
  languageCopy = language;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(BKFontCache *)selfCopy prewarmFontsForLanguage:languageCopy completion:0];
  v6 = [(BKFontCache *)selfCopy _presetsFileNameForLanguage:languageCopy];
  fontFaceLookupByFileName = [(BKFontCache *)selfCopy fontFaceLookupByFileName];
  v8 = [fontFaceLookupByFileName objectForKeyedSubscript:v6];

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)_didReceiveMemoryWarning:(id)warning
{
  warningCopy = warning;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  fileNames = [(BKFontCache *)selfCopy fileNames];
  array = [fileNames array];
  v8 = [array copy];

  if ([v8 count] < 2)
  {
    v13 = _AEBookPluginsFontCacheLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      fileNames2 = [(BKFontCache *)selfCopy fileNames];
      *buf = 138543362;
      v22 = fileNames2;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Received memory warning - files did not exceed minimum. Remaining files cached: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_195C4;
    v18 = &unk_1E2FC8;
    v9 = v8;
    v19 = v9;
    v20 = selfCopy;
    [v9 enumerateObjectsUsingBlock:&v15];
    v10 = _AEBookPluginsFontCacheLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 count:v15];
      fileNames3 = [(BKFontCache *)selfCopy fileNames];
      *buf = 134218242;
      v22 = v11 - 1;
      v23 = 2114;
      v24 = fileNames3;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Received memory warning - cleared %lu files. Remaining files cached: %{public}@", buf, 0x16u);
    }

    v13 = v19;
  }

  objc_sync_exit(selfCopy);
}

- (id)_presetsForFileName:(id)name
{
  nameCopy = name;
  presetsByFileName = [(BKFontCache *)self presetsByFileName];
  v6 = [presetsByFileName objectForKeyedSubscript:nameCopy];

  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v8 = AEBundle();
    v9 = [v8 pathForResource:nameCopy ofType:@"plist"];

    v10 = [[NSDictionary alloc] initWithContentsOfFile:v9];
    v11 = [v10 valueForKey:@"fonts"];
    v12 = [v11 mutableCopy];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_199A4;
    v26[3] = &unk_1E2FF0;
    v13 = objc_opt_new();
    v27 = v13;
    v14 = objc_retainBlock(v26);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_19A88;
    v23[3] = &unk_1E3018;
    v15 = v12;
    v24 = v15;
    v25 = v14;
    v16 = v14;
    [v11 enumerateObjectsUsingBlock:v23];
    v7 = [v15 copy];

    presetsByFileName2 = [(BKFontCache *)self presetsByFileName];
    [presetsByFileName2 setObject:v7 forKeyedSubscript:nameCopy];

    v18 = [v13 copy];
    fontFaceLookupByFileName = [(BKFontCache *)self fontFaceLookupByFileName];
    [fontFaceLookupByFileName setObject:v18 forKeyedSubscript:nameCopy];

    v20 = _AEBookPluginsFontCacheLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [v7 count];
      *buf = 134218242;
      v29 = v21;
      v30 = 2114;
      v31 = nameCopy;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Cached %lu presets from file: %{public}@", buf, 0x16u);
    }
  }

  return v7;
}

- (id)_presetsFileNameForLanguage:(id)language
{
  v3 = [BKStyleManager suffixForLanguage:language];
  if ([v3 length])
  {
    v4 = [NSString stringWithFormat:@"-%@", v3];
  }

  else
  {
    v4 = &stru_1E7188;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_1E7188;
  }

  v6 = [NSString stringWithFormat:@"%@%@", @"FontPresets", v5];

  return v6;
}

@end