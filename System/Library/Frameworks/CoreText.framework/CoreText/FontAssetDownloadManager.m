@interface FontAssetDownloadManager
+ (uint64_t)errorWithCode:(uint64_t)a3 description:;
+ (uint64_t)fontInfo:(uint64_t)a3 andAssetDesignLanguages:(void *)a4 matchesRequest:;
+ (void)availableMobileAssetsWithOptions:(uint64_t *)a3 error:;
+ (void)availableMobileAssetsWithOptions:(uint64_t)a3 manager:(uint64_t *)a4 error:;
- (id).cxx_construct;
- (uint64_t)callProgressCallback:(uint64_t)a1;
- (void)dealloc;
@end

@implementation FontAssetDownloadManager

- (void)dealloc
{
  _Block_release(self->fProgressCallbackBlock);

  v3.receiver = self;
  v3.super_class = FontAssetDownloadManager;
  [(FontAssetDownloadManager *)&v3 dealloc];
}

- (uint64_t)callProgressCallback:(uint64_t)a1
{
  if (a1)
  {
    if (_MergedGlobals_39 != -1)
    {
      dispatch_once(&_MergedGlobals_39, &__block_literal_global_12);
    }

    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__FontAssetDownloadManager_callProgressCallback___block_invoke_2;
    block[3] = &unk_1E6E3EEB0;
    block[4] = a1;
    block[5] = &v8;
    v7 = a2;
    dispatch_sync(qword_1ED568288, block);
    v4 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

dispatch_queue_t __49__FontAssetDownloadManager_callProgressCallback___block_invoke()
{
  result = dispatch_queue_create("com.apple.CoreText.progressCallback", 0);
  qword_1ED568288 = result;
  return result;
}

uint64_t __49__FontAssetDownloadManager_callProgressCallback___block_invoke_2(uint64_t a1)
{
  result = (*(*(*(a1 + 32) + 24) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

+ (uint64_t)errorWithCode:(uint64_t)a3 description:
{
  v13[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreText"];
  v6 = [v5 localizedStringForKey:a3 value:&stru_1EF25C610 table:0];
  if (IsWAPIComplianceRequired())
  {
    v7 = @"Check WLAN connection and try again later.";
  }

  else
  {
    v7 = @"Check Wi-Fi connection and try again later.";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1EF25C610 table:0];
  v9 = *MEMORY[0x1E696A588];
  v12[0] = *MEMORY[0x1E696A578];
  v12[1] = v9;
  v13[0] = v6;
  v13[1] = v8;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  return [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreText.CTFontManagerErrorDomain" code:a2 userInfo:v10];
}

uint64_t __52__FontAssetDownloadManager_filterIncompatibleAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 attributes];
  v5 = [a3 attributes];
  v6 = [objc_msgSend(v4 objectForKeyedSubscript:{@"_CompatibilityVersion", "intValue"}];
  v7 = [objc_msgSend(v5 objectForKeyedSubscript:{@"_CompatibilityVersion", "intValue"}];
  if (v6 > v7)
  {
    return -1;
  }

  if (v6 < v7)
  {
    return 1;
  }

  v9 = [v4 objectForKeyedSubscript:@"__RelativePath"];
  v10 = [v5 objectForKeyedSubscript:@"__RelativePath"];

  return [v9 compare:v10];
}

+ (void)availableMobileAssetsWithOptions:(uint64_t *)a3 error:
{
  v77 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  gotLoadHelper_x8__OBJC_CLASS___MAAsset(v5);
  v6 = objc_opt_class();
  if (!v6)
  {
    return 0;
  }

  if ((a2 & 1) == 0)
  {
    v8 = *MEMORY[0x1E699F768];
    goto LABEL_14;
  }

  v9 = v6;
  v10 = dispatch_semaphore_create(0);
  dispatch_retain(v10);
  gotLoadHelper_x8__OBJC_CLASS___MADownloadOptions(v11);
  v13 = objc_alloc_init(*(v12 + 2384));
  [v13 setTimeoutIntervalForResource:30];
  [v13 setDiscretionary:0];
  if ((a2 & 4) != 0)
  {
    CFLog();
    [v13 setAllowsCellularAccess:1];
  }

  v8 = *MEMORY[0x1E699F768];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __67__FontAssetDownloadManager_availableMobileAssetsWithOptions_error___block_invoke;
  v60[3] = &unk_1E6E3EEF8;
  v60[4] = v13;
  v60[5] = v10;
  [v9 startCatalogDownload:v8 options:v13 then:v60];
  v14 = dispatch_time(0, 30000000000);
  if (!dispatch_semaphore_wait(v10, v14))
  {
    AssociatedObject = objc_getAssociatedObject(v13, +[FontAssetDownloadManager availableMobileAssetsWithOptions:error:]::downloadErrorKey);
    if (!a3 || !AssociatedObject)
    {
      goto LABEL_13;
    }

    v15 = AssociatedObject;
    goto LABEL_12;
  }

  if (a3)
  {
    v15 = [FontAssetDownloadManager errorWithCode:@"Font asset catalog download failed." description:?];
LABEL_12:
    *a3 = v15;
  }

LABEL_13:

  dispatch_release(v10);
LABEL_14:
  gotLoadHelper_x8__OBJC_CLASS___MAAssetQuery(v7);
  v18 = [objc_alloc(*(v17 + 2288)) initWithType:v8];
  v19 = v18;
  if ((a2 & 2) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  [v18 returnTypes:v20];
  [v19 setDoNotBlockBeforeFirstUnlock:1];
  [v19 setDoNotBlockOnNetworkStatus:1];
  if ([v19 queryMetaDataSync] == 2)
  {
    if (a3)
    {
      v52 = 0;
      *a3 = [FontAssetDownloadManager errorWithCode:@"Font asset catalog has not been downloaded." description:?];
      return v52;
    }

    return 0;
  }

  v21 = 0x1E695D000uLL;
  if ((a2 & 2) != 0)
  {
    v22 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v23 = [v19 results];
    v24 = [v23 countByEnumeratingWithState:&v56 objects:v73 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v57;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v57 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v56 + 1) + 8 * i);
          objc_opt_self();
          v29 = [v28 state];
          if (v29 <= 6 && ((1 << v29) & 0x6C) != 0)
          {
            [v22 addObject:v28];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v56 objects:v73 count:16];
      }

      while (v25);
    }
  }

  else
  {
    v22 = [v19 results];
  }

  v31 = v22;
  objc_opt_self();
  v32 = FSGetMaxSupportedFontAssetCompatibilityVersion();
  obj = [MEMORY[0x1E695DF70] array];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v33 = [v31 countByEnumeratingWithState:&v69 objects:v76 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v70;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v70 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v69 + 1) + 8 * j);
        v38 = [v37 attributes];
        if ([objc_msgSend(v38 objectForKeyedSubscript:{@"_CompatibilityVersion", "unsignedIntValue"}] <= v32)
        {
          v39 = [objc_msgSend(v38 objectForKeyedSubscript:{@"MaxFontCompatibilityVersion", "unsignedIntValue"}];
          if (!v39 || v39 >= v32)
          {
            [obj addObject:v37];
          }
        }
      }

      v34 = [v31 countByEnumeratingWithState:&v69 objects:v76 count:16];
    }

    while (v34);
  }

  [obj sortUsingComparator:&__block_literal_global_76];
  v52 = [MEMORY[0x1E695DF70] array];
  v41 = [MEMORY[0x1E695DFA8] set];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v55 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
  if (v55)
  {
    v54 = *v66;
    do
    {
      for (k = 0; k != v55; ++k)
      {
        if (*v66 != v54)
        {
          objc_enumerationMutation(obj);
        }

        v43 = *(*(&v65 + 1) + 8 * k);
        v44 = [objc_msgSend(v43 "attributes")];
        v45 = [*(v21 + 3952) array];
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v46 = [v44 countByEnumeratingWithState:&v61 objects:v74 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = *v62;
LABEL_56:
          v49 = 0;
          while (1)
          {
            if (*v62 != v48)
            {
              objc_enumerationMutation(v44);
            }

            v50 = [*(*(&v61 + 1) + 8 * v49) objectForKey:@"PostScriptFontName"];
            [v45 addObject:v50];
            if ([v41 containsObject:v50])
            {
              break;
            }

            if (v47 == ++v49)
            {
              v47 = [v44 countByEnumeratingWithState:&v61 objects:v74 count:16];
              if (v47)
              {
                goto LABEL_56;
              }

              goto LABEL_62;
            }
          }
        }

        else
        {
LABEL_62:
          [v41 addObjectsFromArray:v45];
          [v52 addObject:v43];
        }

        v21 = 0x1E695D000;
      }

      v55 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    }

    while (v55);
  }

  return v52;
}

void __67__FontAssetDownloadManager_availableMobileAssetsWithOptions_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_CoretextFontas.isa, a2);
    v3 = *(a1 + 32);
    v4 = +[FontAssetDownloadManager availableMobileAssetsWithOptions:error:]::downloadErrorKey;
    v5 = [FontAssetDownloadManager errorWithCode:@"Font asset catalog download failed." description:?];
    objc_setAssociatedObject(v3, v4, v5, 0x301);
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v6 = *(a1 + 40);

  dispatch_release(v6);
}

+ (uint64_t)fontInfo:(uint64_t)a3 andAssetDesignLanguages:(void *)a4 matchesRequest:
{
  objc_opt_self();
  v7 = [a4 objectForKey:@"NSFontFamilyAttribute"];
  v8 = [a4 objectForKey:@"NSFontNameAttribute"];
  v9 = [(NSDictionary *)a2 objectForKey:@"PostScriptFontNameAliases"];
  if (!v8 || (v10 = v9, (v11 = -[NSDictionary objectForKey:](a2, "objectForKey:", @"PostScriptFontName")) == 0) || ([v11 isEqualToString:v8] & 1) != 0 || (result = objc_msgSend(v10, "containsObject:", v8), result))
  {
    v13 = [a4 objectForKey:@"NSCTFontPostScriptNameAttribute"];
    if (!v13 || (v14 = v13, (v15 = -[NSDictionary objectForKey:](a2, "objectForKey:", @"PostScriptFontName")) == 0) || (result = [v15 isEqualToString:v14], result))
    {
      if (DictHasUnmatchedNames(a2, &cfstr_Fontfamilyname.isa, &cfstr_Preferredfamil.isa, v7) || DictHasUnmatchedNames(a2, &cfstr_Fontstylename.isa, &cfstr_Preferredstyle.isa, [a4 objectForKey:@"NSFontFaceAttribute"]))
      {
        return 0;
      }

      v16 = [a4 objectForKey:@"NSFontVisibleNameAttribute"];
      if (!v16)
      {
        goto LABEL_29;
      }

      v17 = v16;
      CopyValueForCurrentUser([(NSDictionary *)a2 objectForKey:@"DisplayNames"], 0, &v24);
      explicit = atomic_load_explicit(&v24, memory_order_acquire);

      if (!explicit)
      {
        return 0;
      }

      result = [v17 isEqualToString:explicit];
      if (result)
      {
LABEL_29:
        if ([a4 objectForKey:@"NSCTFontDesignLanguagesAttribute"])
        {
          v19 = [MEMORY[0x1E695DFD8] setWithArray:?];
        }

        else
        {
          v19 = [MEMORY[0x1E695DFD8] set];
        }

        v20 = v19;
        if (![v19 count])
        {
          return 1;
        }

        v21 = [(NSDictionary *)a2 objectForKey:@"FontDesignLanguages"];
        v22 = v21 ? v21 : a3;
        v23 = v22 ? [MEMORY[0x1E695DFD8] setWithArray:?] : objc_msgSend(MEMORY[0x1E695DFD8], "set");
        result = [v20 isSubsetOfSet:v23];
        if (result)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

+ (void)availableMobileAssetsWithOptions:(uint64_t)a3 manager:(uint64_t *)a4 error:
{
  objc_opt_self();
  if (a2)
  {
    [(FontAssetDownloadManager *)a3 callProgressCallback:?];
  }

  v7 = [FontAssetDownloadManager availableMobileAssetsWithOptions:a2 error:a4];
  v8 = [v7 count];
  if (!a4 || v8 || [*a4 code] != 303)
  {
    return v7;
  }

  if (a2)
  {
    v11 = a2 & 0xFE;
    if ((v11 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    [(FontAssetDownloadManager *)a3 callProgressCallback:?];
    goto LABEL_11;
  }

  objc_opt_self();
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&+[FontAssetDownloadManager shouldRetryWithServer]::lastTime < 30.0)
  {
    return v7;
  }

  +[FontAssetDownloadManager shouldRetryWithServer]::lastTime = *&Current;
  v11 = a2 | 1;
  if (v11)
  {
    goto LABEL_10;
  }

LABEL_11:

  return [FontAssetDownloadManager availableMobileAssetsWithOptions:v11 error:a4];
}

intptr_t __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

uint64_t __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_2(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_3;
  v3[3] = &unk_1E6E3EF48;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 cancelDownload:v3];
}

void __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_4(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 40));
  if (Weak)
  {
    v3 = Weak;
    v4 = objc_loadWeak((a1 + 48));
    if (v4)
    {
      v5 = v4;
      dispatch_suspend(v4);
      v6 = [(FontAssetDownloadManager *)v3 callProgressCallback:?];
      dispatch_resume(v5);
      if ((v6 & 1) == 0)
      {
        v7 = *(*(a1 + 32) + 16);

        v7();
      }
    }
  }
}

void __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_5(uint64_t a1, void *a2)
{
  if ([a2 totalExpected] < 1)
  {
    v5 = 0.0;
  }

  else
  {
    v4 = [a2 totalWritten];
    v5 = v4 / [a2 totalExpected];
  }

  [a2 expectedTimeRemaining];
  v7 = v6;
  if (qword_1ED568290 != -1)
  {
    dispatch_once(&qword_1ED568290, &__block_literal_global_183);
  }

  v8 = qword_1ED568298;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_6;
  block[3] = &unk_1E6E3EFC0;
  objc_copyWeak(v14, (a1 + 64));
  block[4] = a2;
  v9 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v9;
  v14[1] = *&v5;
  v15 = *(a1 + 88);
  v10 = *(a1 + 80);
  v14[2] = *(a1 + 72);
  v14[3] = v10;
  v14[4] = v7;
  dispatch_sync(v8, block);
  objc_destroyWeak(v14);
}

void __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_6(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 72));
  v3 = Weak;
  if (Weak)
  {
    dispatch_suspend(Weak);
  }

  v4 = [*(a1 + 32) isStalled];
  if (v4)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [FontAssetDownloadManager errorWithCode:@"Font Download failed." description:?];
      v7 = *(v5 + 32);
      if (v6)
      {
        [v7 setObject:v6 forKey:@"CTFontDescriptorMatchingError"];
      }

      else
      {
        [v7 removeObjectForKey:@"CTFontDescriptorMatchingError"];
      }

      v8 = [(FontAssetDownloadManager *)v5 callProgressCallback:?];
      [*(v5 + 32) removeObjectForKey:@"CTFontDescriptorMatchingError"];
      v9 = *(*(a1 + 64) + 8);
      if (v8)
      {
        v10 = *(v9 + 24);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = *(*(a1 + 64) + 8);
    }

    *(v9 + 24) = v10 & 1;
  }

  if (*(a1 + 80) >= 0.0)
  {
    v11 = *(a1 + 80);
  }

  else
  {
    v11 = 0.0;
  }

  if (v11 >= 0.0)
  {
    v12 = *(a1 + 40);
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(*(a1 + 32), "totalWritten") + *(a1 + 88)}];
    if (v12)
    {
      v14 = v13;
      v15 = *(v12 + 32);
      if (v14)
      {
        [v15 setObject:v14 forKey:@"CTFontDescriptorMatchingTotalDownloadedSize"];
      }

      else
      {
        [v15 removeObjectForKey:@"CTFontDescriptorMatchingTotalDownloadedSize"];
      }
    }
  }

  v16 = *(a1 + 40);
  v17 = [MEMORY[0x1E696AD98] numberWithLong:((v11 + *(a1 + 112)) / *(a1 + 96) * 100.0)];
  if (v16)
  {
    v18 = v17;
    v19 = *(v16 + 32);
    if (v18)
    {
      [v19 setObject:v18 forKey:@"CTFontDescriptorMatchingPercentage"];
    }

    else
    {
      [v19 removeObjectForKey:@"CTFontDescriptorMatchingPercentage"];
    }
  }

  if (v4)
  {
    v20 = 3;
  }

  else
  {
    v20 = 5;
  }

  v21 = *(a1 + 40);
  v22 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 104)];
  if (v21)
  {
    v23 = v22;
    v24 = *(v21 + 32);
    if (v23)
    {
      [v24 setObject:v23 forKey:@"CTFontDescriptorMatchingEstimatedSecondsRemaining"];
    }

    else
    {
      [v24 removeObjectForKey:@"CTFontDescriptorMatchingEstimatedSecondsRemaining"];
    }
  }

  v25 = [(FontAssetDownloadManager *)*(a1 + 40) callProgressCallback:v20];
  v26 = *(*(a1 + 64) + 8);
  if (v25)
  {
    v27 = *(v26 + 24);
  }

  else
  {
    v27 = 0;
  }

  *(v26 + 24) = v27 & 1;
  if (v3)
  {
    v28 = dispatch_time(0, 500000000);
    dispatch_source_set_timer(v3, v28, 0xFFFFFFFFFFFFFFFFLL, 0x2FAF080uLL);
    dispatch_resume(v3);
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v29 = *(*(a1 + 56) + 16);

    v29();
  }
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end