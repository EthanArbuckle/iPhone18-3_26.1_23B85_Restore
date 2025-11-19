@interface ASCLockupProductDetails
+ (id)URLForLockupID:(id)a3 ofKind:(id)a4 offerFlags:(int64_t)a5 queryParameters:(id)a6;
+ (id)URLForLockupID:(id)a3 ofKind:(id)a4 withOfferFlags:(int64_t)a5;
+ (id)gamesURLForLockupID:(id)a3 ofKind:(id)a4 withOfferFlags:(int64_t)a5;
+ (id)queryParametersForLockup:(id)a3 withBaseQueryParams:(id)a4;
- (ASCLockupProductDetails)initWithLockup:(id)a3 storeSheetHostBundleID:(id)a4 storeSheetUsageContext:(id)a5 parameters:(id)a6;
- (ASCLockupProductDetailsObserver)observer;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)present:(id)a3;
- (void)presentFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)productViewController:(id)a3 didFinishWithResult:(int64_t)a4;
- (void)productViewController:(id)a3 userDidInteractWithProduct:(unint64_t)a4;
@end

@implementation ASCLockupProductDetails

+ (id)URLForLockupID:(id)a3 ofKind:(id)a4 withOfferFlags:(int64_t)a5
{
  v8 = a4;
  v9 = a3;
  +[ASCEligibility assertCurrentProcessEligibility];
  v10 = [a1 URLForLockupID:v9 ofKind:v8 offerFlags:a5 queryParameters:0];

  return v10;
}

+ (id)URLForLockupID:(id)a3 ofKind:(id)a4 offerFlags:(int64_t)a5 queryParameters:(id)a6
{
  v28[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a6;
  +[ASCEligibility assertCurrentProcessEligibility];
  v11 = [v8 stringValue];
  v12 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v12];
  v14 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v14 setScheme:@"itms-apps"];
  if (![v9 isEqualToString:@"app"])
  {
    ASCUnknownEnumCase(@"ASCLockupKind", v9);
  }

  [v14 setPercentEncodedHost:@"apps.apple.com"];
  v15 = MEMORY[0x277CCACA8];
  v28[0] = @"/";
  v28[1] = @"app";
  v16 = [@"id" stringByAppendingString:v13];
  v28[2] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
  v18 = [v15 pathWithComponents:v17];
  [v14 setPercentEncodedPath:v18];

  if (v10)
  {
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v10, "count")}];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __76__ASCLockupProductDetails_URLForLockupID_ofKind_offerFlags_queryParameters___block_invoke;
    v26[3] = &unk_2781CBE28;
    v27 = v19;
    v20 = v19;
    [v10 enumerateKeysAndObjectsUsingBlock:v26];
    [v14 setQueryItems:v20];
  }

  v21 = [v14 URL];
  if (!v21)
  {
    v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Lockup id %@ of kind %@ is invalid", v8, v9];
    v25 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v25 initWithName:*MEMORY[0x277CBE660] reason:v24 userInfo:0]);
  }

  v22 = v21;

  return v22;
}

void __76__ASCLockupProductDetails_URLForLockupID_ofKind_offerFlags_queryParameters___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:a2 value:a3];
  [v3 addObject:v4];
}

+ (id)gamesURLForLockupID:(id)a3 ofKind:(id)a4 withOfferFlags:(int64_t)a5
{
  v6 = a3;
  v7 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  v8 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v8 setScheme:@"games"];
  [v8 setHost:@"games.apple.com"];
  if (![v7 isEqualToString:@"app"])
  {
    ASCUnknownEnumCase(@"ASCLockupKind", v7);
  }

  v9 = [v6 stringValue];
  v10 = [@"/game/id" stringByAppendingString:v9];
  [v8 setPath:v10];

  v11 = [v8 URL];
  if (!v11)
  {
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Lockup id %@ of kind %@ is invalid", v6, v7];
    v15 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v15 initWithName:*MEMORY[0x277CBE660] reason:v14 userInfo:0]);
  }

  v12 = v11;

  return v12;
}

+ (id)queryParametersForLockup:(id)a3 withBaseQueryParams:(id)a4
{
  v5 = a3;
  v6 = a4;
  +[ASCEligibility assertCurrentProcessEligibility];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v6];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v8 = v7;
  v9 = [v5 productVariantID];

  if (v9)
  {
    v10 = [v5 productVariantID];
    [v8 setObject:v10 forKeyedSubscript:@"ppid"];
  }

  v11 = [v5 offer];
  v12 = [v11 flags];

  if ((v12 & 0x200) != 0)
  {
    [v8 setObject:@"1" forKeyedSubscript:@"isViewOnly"];
  }

  if ([v8 count])
  {
    v13 = [v8 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (ASCLockupProductDetails)initWithLockup:(id)a3 storeSheetHostBundleID:(id)a4 storeSheetUsageContext:(id)a5 parameters:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  +[ASCEligibility assertCurrentProcessEligibility];
  v24.receiver = self;
  v24.super_class = ASCLockupProductDetails;
  v14 = [(ASCLockupProductDetails *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    lockup = v14->_lockup;
    v14->_lockup = v15;

    v17 = [v11 copy];
    storeSheetHostBundleID = v14->_storeSheetHostBundleID;
    v14->_storeSheetHostBundleID = v17;

    v19 = [v12 copy];
    storeSheetUsageContext = v14->_storeSheetUsageContext;
    v14->_storeSheetUsageContext = v19;

    v21 = [v13 copy];
    parameters = v14->_parameters;
    v14->_parameters = v21;
  }

  return v14;
}

- (void)presentFromViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = +[ASCWorkspace sharedWorkspace];
  v11 = [v10 isExtension];

  if (v11)
  {
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __73__ASCLockupProductDetails_presentFromViewController_animated_completion___block_invoke;
    v66[3] = &unk_2781CC528;
    v67 = v9;
    [(ASCLockupProductDetails *)self present:v66];

    goto LABEL_46;
  }

  v12 = [(ASCLockupProductDetails *)self lockup];
  v13 = [v12 id];
  v14 = +[ASCAdamID invalidAdamID];
  v15 = [v13 isEqual:v14];

  v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!v15)
  {
    if (v16)
    {
      v19 = [(ASCLockupProductDetails *)self lockup];
      v20 = [v19 id];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v20;
      _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Presenting product details for lockup %{public}@", &buf, 0xCu);
    }

    v68 = 0;
    v69 = &v68;
    v70 = 0x2050000000;
    v21 = getSKStoreProductViewControllerClass_softClass;
    v71 = getSKStoreProductViewControllerClass_softClass;
    if (!getSKStoreProductViewControllerClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v73 = __getSKStoreProductViewControllerClass_block_invoke;
      v74 = &unk_2781CC5A0;
      v75 = &v68;
      __getSKStoreProductViewControllerClass_block_invoke(&buf);
      v21 = v69[3];
    }

    v22 = v21;
    _Block_object_dispose(&v68, 8);
    v60 = objc_alloc_init(v21);
    v23 = [(ASCLockupProductDetails *)self parameters];
    if (v23)
    {
      v24 = [(ASCLockupProductDetails *)self parameters];
      v25 = [v24 mutableCopy];
    }

    else
    {
      v25 = [MEMORY[0x277CBEB38] dictionary];
    }

    v26 = [(ASCLockupProductDetails *)self lockup];
    v27 = [v26 id];
    v28 = [v27 numberValue];
    v68 = 0;
    v69 = &v68;
    v70 = 0x2020000000;
    v29 = getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr;
    v71 = getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr;
    if (!getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v73 = __getSKStoreProductParameterITunesItemIdentifierSymbolLoc_block_invoke;
      v74 = &unk_2781CC5A0;
      v75 = &v68;
      v30 = StoreKitLibrary();
      v31 = dlsym(v30, "SKStoreProductParameterITunesItemIdentifier");
      *(v75[1] + 24) = v31;
      getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr = *(v75[1] + 24);
      v29 = v69[3];
    }

    _Block_object_dispose(&v68, 8);
    if (v29)
    {
      [v25 setObject:v28 forKeyedSubscript:*v29];

      [v60 setDelegate:self];
      if (StoreKitLibraryCore())
      {
        if (getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc())
        {
          v32 = [(ASCLockupProductDetails *)self lockup];
          v33 = [v32 productVariantID];
          v34 = v33 == 0;

          if (!v34)
          {
            v35 = [(ASCLockupProductDetails *)self lockup];
            v36 = [v35 productVariantID];
            SKStoreProductParameterCustomProductPageIdentifierSymbolLoc = getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc();
            if (!SKStoreProductParameterCustomProductPageIdentifierSymbolLoc)
            {
              goto LABEL_47;
            }

            [v25 setObject:v36 forKeyedSubscript:*SKStoreProductParameterCustomProductPageIdentifierSymbolLoc];
          }
        }
      }

      v38 = [(ASCLockupProductDetails *)self storeSheetHostBundleID];
      v39 = v38 == 0;

      if (!v39)
      {
        v40 = [(ASCLockupProductDetails *)self storeSheetHostBundleID];
        [v60 setHostBundleIdentifier:v40];
      }

      v41 = [(ASCLockupProductDetails *)self storeSheetUsageContext];
      v42 = v41 == 0;

      if (!v42)
      {
        v43 = [(ASCLockupProductDetails *)self storeSheetUsageContext];
        [v60 setUsageContext:v43];
      }

      v44 = [(ASCLockupProductDetails *)self lockup];
      v45 = [v44 featureWithClass:objc_opt_class()];
      v46 = v45 == 0;

      if (!v46)
      {
        v68 = 0;
        v69 = &v68;
        v70 = 0x2020000000;
        v47 = getSKStoreProductParameterIsViewOnlySymbolLoc_ptr;
        v71 = getSKStoreProductParameterIsViewOnlySymbolLoc_ptr;
        if (!getSKStoreProductParameterIsViewOnlySymbolLoc_ptr)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v73 = __getSKStoreProductParameterIsViewOnlySymbolLoc_block_invoke;
          v74 = &unk_2781CC5A0;
          v75 = &v68;
          v48 = StoreKitLibrary();
          v49 = dlsym(v48, "SKStoreProductParameterIsViewOnly");
          *(v75[1] + 24) = v49;
          getSKStoreProductParameterIsViewOnlySymbolLoc_ptr = *(v75[1] + 24);
          v47 = v69[3];
        }

        _Block_object_dispose(&v68, 8);
        if (!v47)
        {
          goto LABEL_47;
        }

        [v25 setValue:MEMORY[0x277CBEC38] forKey:*v47];
      }

      if ([(ASCLockupProductDetails *)self isOpenAppCallbackEnabled])
      {
        v68 = 0;
        v69 = &v68;
        v70 = 0x2020000000;
        v50 = getSKStoreProductParameterEnableOpenAppCallbackSymbolLoc_ptr;
        v71 = getSKStoreProductParameterEnableOpenAppCallbackSymbolLoc_ptr;
        if (!getSKStoreProductParameterEnableOpenAppCallbackSymbolLoc_ptr)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v73 = __getSKStoreProductParameterEnableOpenAppCallbackSymbolLoc_block_invoke;
          v74 = &unk_2781CC5A0;
          v75 = &v68;
          v51 = StoreKitLibrary();
          v52 = dlsym(v51, "SKStoreProductParameterEnableOpenAppCallback");
          *(v75[1] + 24) = v52;
          getSKStoreProductParameterEnableOpenAppCallbackSymbolLoc_ptr = *(v75[1] + 24);
          v50 = v69[3];
        }

        _Block_object_dispose(&v68, 8);
        if (!v50)
        {
          goto LABEL_47;
        }

        [v25 setValue:MEMORY[0x277CBEC38] forKey:*v50];
      }

      if (![(ASCLockupProductDetails *)self isWebBrowser])
      {
LABEL_42:
        [v60 loadProductWithParameters:v25 completionBlock:0];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __73__ASCLockupProductDetails_presentFromViewController_animated_completion___block_invoke_53;
        v61[3] = &unk_2781CC550;
        v62 = v8;
        v58 = v60;
        v63 = v58;
        v65 = a4;
        v64 = v9;
        v59 = MEMORY[0x216070C30](v61);
        if ([MEMORY[0x277CCACC8] isMainThread])
        {
          v59[2](v59);
        }

        else
        {
          dispatch_async(MEMORY[0x277D85CD0], v59);
        }

        goto LABEL_46;
      }

      v68 = 0;
      v69 = &v68;
      v70 = 0x2020000000;
      v53 = getSKStoreProductParameterWebBrowserSymbolLoc_ptr;
      v71 = getSKStoreProductParameterWebBrowserSymbolLoc_ptr;
      if (!getSKStoreProductParameterWebBrowserSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v73 = __getSKStoreProductParameterWebBrowserSymbolLoc_block_invoke;
        v74 = &unk_2781CC5A0;
        v75 = &v68;
        v54 = StoreKitLibrary();
        v55 = dlsym(v54, "SKStoreProductParameterWebBrowser");
        *(v75[1] + 24) = v55;
        getSKStoreProductParameterWebBrowserSymbolLoc_ptr = *(v75[1] + 24);
        v53 = v69[3];
      }

      _Block_object_dispose(&v68, 8);
      if (v53)
      {
        [v25 setValue:MEMORY[0x277CBEC38] forKey:*v53];
        v57 = ASCLocalizedString(@"WEB_BROWSER_PRODUCT_DETAILS_CANCEL_BUTTON_TITLE", v56);
        [v60 setCancelButtonTitle:v57];

        [v60 setShowsStoreButton:0];
        goto LABEL_42;
      }
    }

LABEL_47:
    [ASCLockupProductDetails presentFromViewController:animated:completion:];
    __break(1u);
  }

  if (v16)
  {
    v17 = [(ASCLockupProductDetails *)self lockup];
    v18 = [v17 id];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Not presenting product details for lockup %{public}@ because its ID is invalid.", &buf, 0xCu);
  }

  if (v9)
  {
    (*(v9 + 2))(v9, 1, 0);
  }

LABEL_46:
}

uint64_t __73__ASCLockupProductDetails_presentFromViewController_animated_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __73__ASCLockupProductDetails_presentFromViewController_animated_completion___block_invoke_53(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 56);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__ASCLockupProductDetails_presentFromViewController_animated_completion___block_invoke_2;
  v4[3] = &unk_2781CC480;
  v5 = *(a1 + 48);
  [v1 presentViewController:v2 animated:v3 completion:v4];
}

uint64_t __73__ASCLockupProductDetails_presentFromViewController_animated_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 1);
  }

  return result;
}

- (void)present:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ASCLockupProductDetails *)self lockup];
  v6 = [v5 id];
  v7 = +[ASCAdamID invalidAdamID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = [(ASCLockupProductDetails *)self lockup];
      v10 = [v9 id];
      *buf = 138543362;
      v32 = v10;
      _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Not presenting product details for lockup %{public}@ because ID is invalid.", buf, 0xCu);
    }

    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    v11 = [(ASCLockupProductDetails *)self lockup];
    v12 = [ASCLockupProductDetails queryParametersForLockup:v11 withBaseQueryParams:0];

    v13 = [(ASCLockupProductDetails *)self parameters];

    if (v13)
    {
      v14 = [(ASCLockupProductDetails *)self parameters];
      v15 = [v14 mutableCopy];

      if (v12)
      {
        [v15 addEntriesFromDictionary:v12];
      }
    }

    else
    {
      v15 = [v12 mutableCopy];
    }

    v27 = v12;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v16 = [(ASCLockupProductDetails *)self lockup];
      v17 = [v16 id];
      *buf = 138543362;
      v32 = v17;
      _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Presenting product details for lockup %{public}@", buf, 0xCu);
    }

    v18 = [(ASCLockupProductDetails *)self lockup];
    v19 = [v18 id];
    v20 = [(ASCLockupProductDetails *)self lockup];
    v21 = [v20 kind];
    v22 = [(ASCLockupProductDetails *)self lockup];
    v23 = [v22 offer];
    v24 = +[ASCLockupProductDetails URLForLockupID:ofKind:offerFlags:queryParameters:](ASCLockupProductDetails, "URLForLockupID:ofKind:offerFlags:queryParameters:", v19, v21, [v23 flags], v15);

    v25 = +[ASCUtilities shared];
    v26 = [v25 openURL:v24];

    if (v4)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __35__ASCLockupProductDetails_present___block_invoke;
      v29[3] = &unk_2781CC578;
      v30 = v4;
      [v26 addFinishBlock:v29];
    }
  }
}

- (void)productViewController:(id)a3 didFinishWithResult:(int64_t)a4
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "productViewController didFinishWithResult: %{public}@", &v8, 0xCu);
  }

  v7 = [(ASCLockupProductDetails *)self observer];
  [v7 productDetailsUserDidInteractWithApp:self interactionType:@"dismissed"];
}

- (void)productViewController:(id)a3 userDidInteractWithProduct:(unint64_t)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "productViewController userDidInteractWithProduct: %{public}@", &v10, 0xCu);
  }

  if (a4 <= 2)
  {
    v8 = off_2781CC5D8[a4];
    v9 = [(ASCLockupProductDetails *)self observer];
    [v9 productDetailsUserDidInteractWithApp:self interactionType:*v8];
  }
}

- (unint64_t)hash
{
  v2 = [(ASCLockupProductDetails *)self lockup];
  v3 = [v2 hash];

  return v3 + 2;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  v4 = self;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(ASCLockupProductDetails *)v4 lockup];
    v8 = [(ASCLockupProductDetails *)v6 lockup];
    v9 = v8;
    if (v7 && v8)
    {
      v10 = [v7 isEqual:v8];
    }

    else
    {
      v10 = v7 == v8;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCLockupProductDetails *)self lockup];
  [(ASCDescriber *)v3 addObject:v4 withName:@"lockup"];

  v5 = [(ASCDescriber *)v3 finalizeDescription];

  return v5;
}

- (ASCLockupProductDetailsObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (uint64_t)presentFromViewController:animated:completion:.cold.1()
{
  dlerror();
  abort_report_np();
  return __getSKStoreProductViewControllerClass_block_invoke_cold_1();
}

@end