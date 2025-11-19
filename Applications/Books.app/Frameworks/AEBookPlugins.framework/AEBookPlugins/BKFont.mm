@interface BKFont
+ (id)_fontDescriptorLookupQueue;
+ (void)_lookupLocalizedNameForAttrs:(id)a3 withCompletion:(id)a4;
- (BOOL)isInstalled;
- (BOOL)isOriginalFont;
- (NSString)description;
- (NSString)displayName;
- (NSString)postscriptBoldName;
- (id)localizedName;
- (void)cancelDownload;
- (void)checkStateSynchronously:(BOOL)a3 completion:(id)a4;
- (void)dealloc;
- (void)downloadWithAllowCellular:(BOOL)a3;
- (void)registerFiles;
- (void)unregisterFiles;
@end

@implementation BKFont

- (void)dealloc
{
  [(BKFont *)self unregisterFiles];
  v3.receiver = self;
  v3.super_class = BKFont;
  [(BKFont *)&v3 dealloc];
}

+ (id)_fontDescriptorLookupQueue
{
  if (qword_22D290 != -1)
  {
    sub_139320();
  }

  v3 = qword_22D288;

  return v3;
}

- (NSString)displayName
{
  p_displayName = &self->_displayName;
  v4 = self->_displayName;
  if (!v4)
  {
    kind = self->_kind;
    if (kind == 3)
    {
      v6 = [UIFont systemFontOfSize:17.0];
    }

    else
    {
      if (kind != 4)
      {
        v7 = 0;
LABEL_10:

        v4 = [(BKFont *)self localizedName];
        if (!v4)
        {
          v4 = [(BKFont *)self familyName];
        }

        goto LABEL_12;
      }

      v6 = [UIFont systemFontOfSize:kCTFontUIFontDesignSerif weight:17.0 design:UIFontWeightRegular];
    }

    v7 = v6;
    if (v6)
    {
      v8 = CTFontCopyName(v6, kCTFontMarketingNameKey);
      if (v8)
      {
        v9 = v8;
        objc_storeStrong(p_displayName, v8);
        v10 = v9;
        CFRelease(v10);

        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

LABEL_12:
  v10 = v4;
LABEL_13:

  return v10;
}

- (BOOL)isOriginalFont
{
  v2 = [(BKFont *)self familyName];
  v3 = [v2 isEqualToString:&stru_1E7188];

  return v3;
}

+ (void)_lookupLocalizedNameForAttrs:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _fontDescriptorLookupQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_FBB74;
  v10[3] = &unk_1E3438;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

- (id)localizedName
{
  localizedName = self->_localizedName;
  if (!localizedName)
  {
    v4 = [(BKFont *)self postscriptName];

    if (v4)
    {
      v5 = [(BKFont *)self postscriptName];
      v6 = &kCTFontNameAttribute;
    }

    else
    {
      v5 = [(BKFont *)self familyName];
      v6 = &kCTFontFamilyNameAttribute;
    }

    v7 = [NSMutableDictionary dictionaryWithObjectsAndKeys:v5, *v6, 0];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_FBDC0;
    v9[3] = &unk_1E5E80;
    v9[4] = self;
    [objc_opt_class() _lookupLocalizedNameForAttrs:v7 withCompletion:v9];

    localizedName = self->_localizedName;
  }

  return localizedName;
}

- (NSString)postscriptBoldName
{
  postscriptBoldName = self->_postscriptBoldName;
  if (!postscriptBoldName)
  {
    v4 = [(BKFont *)self familyName];
    v5 = [NSMutableDictionary dictionaryWithObject:v4 forKey:kCTFontFamilyNameAttribute];

    v6 = [NSNumber numberWithInteger:2];
    v7 = [NSDictionary dictionaryWithObject:v6 forKey:kCTFontSymbolicTrait];
    [v5 setObject:v7 forKey:kCTFontTraitsAttribute];

    v8 = CTFontDescriptorCreateWithAttributes(v5);
    if (!v8)
    {
LABEL_10:

      postscriptBoldName = self->_postscriptBoldName;
      goto LABEL_11;
    }

    v9 = v8;
    v10 = CTFontCreateWithFontDescriptor(v8, 1.0, 0);
    if (v10)
    {
      v11 = v10;
      v12 = CTFontCopyFamilyName(v10);
      v13 = [(BKFont *)self familyName];
      v14 = [v13 isEqualToString:v12];

      CFRelease(v12);
      if (v14)
      {
LABEL_8:
        v19 = CTFontCopyName(v11, kCTFontPostScriptNameKey);
        v20 = self->_postscriptBoldName;
        self->_postscriptBoldName = &v19->isa;

        CFRelease(v11);
LABEL_9:
        CFRelease(v9);
        goto LABEL_10;
      }

      CFRelease(v11);
    }

    v15 = [NSNumber numberWithFloat:0.0];
    v16 = [NSDictionary dictionaryWithObject:v15 forKey:kCTFontSlantTrait];
    [v5 setObject:v16 forKey:kCTFontTraitsAttribute];

    v17 = CTFontDescriptorCreateWithAttributes(v5);
    if (!v17)
    {
      goto LABEL_9;
    }

    v18 = v17;
    v11 = CTFontCreateWithFontDescriptor(v17, 1.0, 0);
    CFRelease(v18);
    if (!v11)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_11:

  return postscriptBoldName;
}

- (void)registerFiles
{
  if (!self->_registeredFiles)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = +[NSBundle mainBundle];
    v5 = [(BKFont *)self fileExtension];
    v6 = [v4 URLsForResourcesWithExtension:v5 subdirectory:0];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v22;
      *&v9 = 138543362;
      v20 = v9;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 lastPathComponent];
          v15 = [(BKFont *)self fileNamePrefix];
          v16 = [v14 hasPrefix:v15];

          if (v16)
          {
            if (CTFontManagerRegisterFontsForURL(v13, kCTFontManagerScopeProcess, 0))
            {
              [v3 addObject:v13];
            }

            else
            {
              v17 = _AEBookPluginsFontCacheLog();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
              {
                *buf = v20;
                v26 = v13;
                _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "[BKFont registerFiles:] could not register %{public}@", buf, 0xCu);
              }
            }
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v10);
    }

    v18 = [v3 copy];
    registeredFiles = self->_registeredFiles;
    self->_registeredFiles = v18;
  }
}

- (void)unregisterFiles
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_registeredFiles;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        CTFontManagerUnregisterFontsForURL(*(*(&v9 + 1) + 8 * v7), kCTFontManagerScopeProcess, 0);
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  registeredFiles = self->_registeredFiles;
  self->_registeredFiles = 0;
}

- (BOOL)isInstalled
{
  v3 = [(BKFont *)self kind];
  if (v3 - 1 < 4)
  {
    return 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = [(BKFont *)self familyName];
  v6 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kCTFontNameAttribute, 0];
  v7 = CTFontDescriptorCreateWithAttributes(v6);
  if (v7)
  {
    v8 = v7;
    MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v7, 0);
    v4 = MatchingFontDescriptor != 0;
    if (MatchingFontDescriptor)
    {
      CFRelease(MatchingFontDescriptor);
    }

    CFRelease(v8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)checkStateSynchronously:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v6 = a4;
  if ([(BKFont *)self kind]- 1 > &dword_0 + 3)
  {
    v9 = [(BKFont *)self familyName];
    v8 = [NSDictionary dictionaryWithObjectsAndKeys:v9, kCTFontFamilyNameAttribute, 0];

    v10 = CTFontDescriptorCreateWithAttributes(v8);
    if (v10)
    {
      v11 = v10;
      v12 = [NSMutableArray arrayWithObject:v10];
      [v12 addObject:v11];
      CFRelease(v11);
      if (v6 || v4)
      {
        v13 = dispatch_group_create();
        dispatch_group_enter(v13);
        if (v6)
        {
          v14 = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_FC81C;
          block[3] = &unk_1E2E08;
          v22 = v6;
          dispatch_group_notify(v13, v14, block);
        }
      }

      else
      {
        v13 = 0;
      }

      v15 = [(__CFDictionary *)v8 allKeys];
      v16 = [NSSet setWithArray:v15];
      progressBlock[0] = _NSConcreteStackBlock;
      progressBlock[1] = 3221225472;
      progressBlock[2] = sub_FC82C;
      progressBlock[3] = &unk_1E5EA8;
      progressBlock[4] = self;
      v17 = v13;
      v20 = v17;
      CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v12, v16, progressBlock);

      if (v4)
      {
        v18 = dispatch_time(0, 2000000000);
        if (dispatch_group_wait(v17, v18))
        {
          dispatch_group_notify(v17, &_dispatch_main_q, &stru_1E5EC8);
        }
      }
    }

    else if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {
    [(BKFont *)self setState:1];
    v7 = objc_retainBlock(v6);
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7);
    }
  }
}

- (void)downloadWithAllowCellular:(BOOL)a3
{
  v3 = a3;
  v5 = [(BKFont *)self familyName];
  v6 = [NSNumber numberWithBool:v3];
  v7 = [NSDictionary dictionaryWithObjectsAndKeys:v5, kCTFontFamilyNameAttribute, v6, kCTFontAllowCellularDownloadAttribute, 0];

  v8 = [NSMutableArray arrayWithCapacity:0];
  v9 = CTFontDescriptorCreateWithAttributes(v7);
  if (v9)
  {
    v10 = v9;
    [v8 addObject:v9];
    CFRelease(v10);
    v11 = [(BKFont *)self state];
    [(BKFont *)self setState:3];
    [(BKFont *)self setContinueDownloading:1];
    if ([(BKFont *)self state]!= v11)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_FCDAC;
      v17[3] = &unk_1E2BD0;
      v17[4] = self;
      v12 = objc_retainBlock(v17);
      if (v12)
      {
        if (+[NSThread isMainThread])
        {
          (v12[2])(v12);
        }

        else
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_FCE10;
          block[3] = &unk_1E2E08;
          v16 = v12;
          dispatch_async(&_dispatch_main_q, block);
        }
      }
    }

    progressBlock[0] = _NSConcreteStackBlock;
    progressBlock[1] = 3221225472;
    progressBlock[2] = sub_FCE20;
    progressBlock[3] = &unk_1E5EF0;
    progressBlock[4] = self;
    v14 = v11;
    CTFontDescriptorMatchFontDescriptorsWithProgressHandler(v8, 0, progressBlock);
  }
}

- (void)cancelDownload
{
  [(BKFont *)self setContinueDownloading:0];
  if ([(BKFont *)self state]== 3)
  {
    [(BKFont *)self setState:2];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_FD520;
    v6[3] = &unk_1E2BD0;
    v6[4] = self;
    v3 = objc_retainBlock(v6);
    if (v3)
    {
      if (+[NSThread isMainThread])
      {
        (v3[2])(v3);
      }

      else
      {
        v4[0] = _NSConcreteStackBlock;
        v4[1] = 3221225472;
        v4[2] = sub_FD584;
        v4[3] = &unk_1E2E08;
        v5 = v3;
        dispatch_async(&_dispatch_main_q, v4);
      }
    }
  }
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = NSStringFromBKFontKind([(BKFont *)self kind]);
  v6 = [(BKFont *)self state]- 1;
  if (v6 > 3)
  {
    v7 = @"Unknown";
  }

  else
  {
    v7 = off_1E5F78[v6];
  }

  v8 = [(BKFont *)self systemName];
  v9 = [(BKFont *)self familyName];
  v10 = [(BKFont *)self displayName];
  v11 = [(BKFont *)self postscriptName];
  v12 = [(BKFont *)self postscriptBoldName];
  v13 = [NSString stringWithFormat:@"<%@: %p> kind: %@, state: %@, systemName: %@, familyName: %@, displayName: %@, postscriptName: %@, postscriptBoldName: %@", v4, self, v5, v7, v8, v9, v10, v11, v12];

  return v13;
}

@end