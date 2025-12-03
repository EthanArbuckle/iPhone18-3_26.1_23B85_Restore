@interface ASCLockupProductDetails
+ (id)URLForLockupID:(id)d ofKind:(id)kind offerFlags:(int64_t)flags queryParameters:(id)parameters;
+ (id)URLForLockupID:(id)d ofKind:(id)kind withOfferFlags:(int64_t)flags;
+ (id)gamesURLForLockupID:(id)d ofKind:(id)kind withOfferFlags:(int64_t)flags;
+ (id)queryParametersForLockup:(id)lockup withBaseQueryParams:(id)params;
- (ASCLockupProductDetails)initWithLockup:(id)lockup storeSheetHostBundleID:(id)d storeSheetUsageContext:(id)context parameters:(id)parameters;
- (ASCLockupProductDetailsObserver)observer;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)present:(id)present;
- (void)presentFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result;
- (void)productViewController:(id)controller userDidInteractWithProduct:(unint64_t)product;
@end

@implementation ASCLockupProductDetails

+ (id)URLForLockupID:(id)d ofKind:(id)kind withOfferFlags:(int64_t)flags
{
  kindCopy = kind;
  dCopy = d;
  +[ASCEligibility assertCurrentProcessEligibility];
  v10 = [self URLForLockupID:dCopy ofKind:kindCopy offerFlags:flags queryParameters:0];

  return v10;
}

+ (id)URLForLockupID:(id)d ofKind:(id)kind offerFlags:(int64_t)flags queryParameters:(id)parameters
{
  v28[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  kindCopy = kind;
  parametersCopy = parameters;
  +[ASCEligibility assertCurrentProcessEligibility];
  stringValue = [dCopy stringValue];
  uRLPathAllowedCharacterSet = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
  v13 = [stringValue stringByAddingPercentEncodingWithAllowedCharacters:uRLPathAllowedCharacterSet];
  v14 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v14 setScheme:@"itms-apps"];
  if (![kindCopy isEqualToString:@"app"])
  {
    ASCUnknownEnumCase(@"ASCLockupKind", kindCopy);
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

  if (parametersCopy)
  {
    v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(parametersCopy, "count")}];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __76__ASCLockupProductDetails_URLForLockupID_ofKind_offerFlags_queryParameters___block_invoke;
    v26[3] = &unk_2781CBE28;
    v27 = v19;
    v20 = v19;
    [parametersCopy enumerateKeysAndObjectsUsingBlock:v26];
    [v14 setQueryItems:v20];
  }

  v21 = [v14 URL];
  if (!v21)
  {
    kindCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Lockup id %@ of kind %@ is invalid", dCopy, kindCopy];
    v25 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v25 initWithName:*MEMORY[0x277CBE660] reason:kindCopy userInfo:0]);
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

+ (id)gamesURLForLockupID:(id)d ofKind:(id)kind withOfferFlags:(int64_t)flags
{
  dCopy = d;
  kindCopy = kind;
  +[ASCEligibility assertCurrentProcessEligibility];
  v8 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v8 setScheme:@"games"];
  [v8 setHost:@"games.apple.com"];
  if (![kindCopy isEqualToString:@"app"])
  {
    ASCUnknownEnumCase(@"ASCLockupKind", kindCopy);
  }

  stringValue = [dCopy stringValue];
  v10 = [@"/game/id" stringByAppendingString:stringValue];
  [v8 setPath:v10];

  v11 = [v8 URL];
  if (!v11)
  {
    kindCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Lockup id %@ of kind %@ is invalid", dCopy, kindCopy];
    v15 = objc_alloc(MEMORY[0x277CBEAD8]);
    objc_exception_throw([v15 initWithName:*MEMORY[0x277CBE660] reason:kindCopy userInfo:0]);
  }

  v12 = v11;

  return v12;
}

+ (id)queryParametersForLockup:(id)lockup withBaseQueryParams:(id)params
{
  lockupCopy = lockup;
  paramsCopy = params;
  +[ASCEligibility assertCurrentProcessEligibility];
  if (paramsCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:paramsCopy];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v8 = v7;
  productVariantID = [lockupCopy productVariantID];

  if (productVariantID)
  {
    productVariantID2 = [lockupCopy productVariantID];
    [v8 setObject:productVariantID2 forKeyedSubscript:@"ppid"];
  }

  offer = [lockupCopy offer];
  flags = [offer flags];

  if ((flags & 0x200) != 0)
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

- (ASCLockupProductDetails)initWithLockup:(id)lockup storeSheetHostBundleID:(id)d storeSheetUsageContext:(id)context parameters:(id)parameters
{
  lockupCopy = lockup;
  dCopy = d;
  contextCopy = context;
  parametersCopy = parameters;
  +[ASCEligibility assertCurrentProcessEligibility];
  v24.receiver = self;
  v24.super_class = ASCLockupProductDetails;
  v14 = [(ASCLockupProductDetails *)&v24 init];
  if (v14)
  {
    v15 = [lockupCopy copy];
    lockup = v14->_lockup;
    v14->_lockup = v15;

    v17 = [dCopy copy];
    storeSheetHostBundleID = v14->_storeSheetHostBundleID;
    v14->_storeSheetHostBundleID = v17;

    v19 = [contextCopy copy];
    storeSheetUsageContext = v14->_storeSheetUsageContext;
    v14->_storeSheetUsageContext = v19;

    v21 = [parametersCopy copy];
    parameters = v14->_parameters;
    v14->_parameters = v21;
  }

  return v14;
}

- (void)presentFromViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v76 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  completionCopy = completion;
  v10 = +[ASCWorkspace sharedWorkspace];
  isExtension = [v10 isExtension];

  if (isExtension)
  {
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __73__ASCLockupProductDetails_presentFromViewController_animated_completion___block_invoke;
    v66[3] = &unk_2781CC528;
    v67 = completionCopy;
    [(ASCLockupProductDetails *)self present:v66];

    goto LABEL_46;
  }

  lockup = [(ASCLockupProductDetails *)self lockup];
  v13 = [lockup id];
  v14 = +[ASCAdamID invalidAdamID];
  v15 = [v13 isEqual:v14];

  v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO);
  if (!v15)
  {
    if (v16)
    {
      lockup2 = [(ASCLockupProductDetails *)self lockup];
      v20 = [lockup2 id];
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
    parameters = [(ASCLockupProductDetails *)self parameters];
    if (parameters)
    {
      parameters2 = [(ASCLockupProductDetails *)self parameters];
      dictionary = [parameters2 mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    lockup3 = [(ASCLockupProductDetails *)self lockup];
    v27 = [lockup3 id];
    numberValue = [v27 numberValue];
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
      [dictionary setObject:numberValue forKeyedSubscript:*v29];

      [v60 setDelegate:self];
      if (StoreKitLibraryCore())
      {
        if (getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc())
        {
          lockup4 = [(ASCLockupProductDetails *)self lockup];
          productVariantID = [lockup4 productVariantID];
          v34 = productVariantID == 0;

          if (!v34)
          {
            lockup5 = [(ASCLockupProductDetails *)self lockup];
            productVariantID2 = [lockup5 productVariantID];
            SKStoreProductParameterCustomProductPageIdentifierSymbolLoc = getSKStoreProductParameterCustomProductPageIdentifierSymbolLoc();
            if (!SKStoreProductParameterCustomProductPageIdentifierSymbolLoc)
            {
              goto LABEL_47;
            }

            [dictionary setObject:productVariantID2 forKeyedSubscript:*SKStoreProductParameterCustomProductPageIdentifierSymbolLoc];
          }
        }
      }

      storeSheetHostBundleID = [(ASCLockupProductDetails *)self storeSheetHostBundleID];
      v39 = storeSheetHostBundleID == 0;

      if (!v39)
      {
        storeSheetHostBundleID2 = [(ASCLockupProductDetails *)self storeSheetHostBundleID];
        [v60 setHostBundleIdentifier:storeSheetHostBundleID2];
      }

      storeSheetUsageContext = [(ASCLockupProductDetails *)self storeSheetUsageContext];
      v42 = storeSheetUsageContext == 0;

      if (!v42)
      {
        storeSheetUsageContext2 = [(ASCLockupProductDetails *)self storeSheetUsageContext];
        [v60 setUsageContext:storeSheetUsageContext2];
      }

      lockup6 = [(ASCLockupProductDetails *)self lockup];
      v45 = [lockup6 featureWithClass:objc_opt_class()];
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

        [dictionary setValue:MEMORY[0x277CBEC38] forKey:*v47];
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

        [dictionary setValue:MEMORY[0x277CBEC38] forKey:*v50];
      }

      if (![(ASCLockupProductDetails *)self isWebBrowser])
      {
LABEL_42:
        [v60 loadProductWithParameters:dictionary completionBlock:0];
        v61[0] = MEMORY[0x277D85DD0];
        v61[1] = 3221225472;
        v61[2] = __73__ASCLockupProductDetails_presentFromViewController_animated_completion___block_invoke_53;
        v61[3] = &unk_2781CC550;
        v62 = controllerCopy;
        v58 = v60;
        v63 = v58;
        animatedCopy = animated;
        v64 = completionCopy;
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
        [dictionary setValue:MEMORY[0x277CBEC38] forKey:*v53];
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
    lockup7 = [(ASCLockupProductDetails *)self lockup];
    v18 = [lockup7 id];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Not presenting product details for lockup %{public}@ because its ID is invalid.", &buf, 0xCu);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
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

- (void)present:(id)present
{
  v33 = *MEMORY[0x277D85DE8];
  presentCopy = present;
  lockup = [(ASCLockupProductDetails *)self lockup];
  v6 = [lockup id];
  v7 = +[ASCAdamID invalidAdamID];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      lockup2 = [(ASCLockupProductDetails *)self lockup];
      v10 = [lockup2 id];
      *buf = 138543362;
      v32 = v10;
      _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Not presenting product details for lockup %{public}@ because ID is invalid.", buf, 0xCu);
    }

    if (presentCopy)
    {
      presentCopy[2](presentCopy, 0);
    }
  }

  else
  {
    lockup3 = [(ASCLockupProductDetails *)self lockup];
    v12 = [ASCLockupProductDetails queryParametersForLockup:lockup3 withBaseQueryParams:0];

    parameters = [(ASCLockupProductDetails *)self parameters];

    if (parameters)
    {
      parameters2 = [(ASCLockupProductDetails *)self parameters];
      v15 = [parameters2 mutableCopy];

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
      lockup4 = [(ASCLockupProductDetails *)self lockup];
      v17 = [lockup4 id];
      *buf = 138543362;
      v32 = v17;
      _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Presenting product details for lockup %{public}@", buf, 0xCu);
    }

    lockup5 = [(ASCLockupProductDetails *)self lockup];
    v19 = [lockup5 id];
    lockup6 = [(ASCLockupProductDetails *)self lockup];
    kind = [lockup6 kind];
    lockup7 = [(ASCLockupProductDetails *)self lockup];
    offer = [lockup7 offer];
    v24 = +[ASCLockupProductDetails URLForLockupID:ofKind:offerFlags:queryParameters:](ASCLockupProductDetails, "URLForLockupID:ofKind:offerFlags:queryParameters:", v19, kind, [offer flags], v15);

    v25 = +[ASCUtilities shared];
    v26 = [v25 openURL:v24];

    if (presentCopy)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __35__ASCLockupProductDetails_present___block_invoke;
      v29[3] = &unk_2781CC578;
      v30 = presentCopy;
      [v26 addFinishBlock:v29];
    }
  }
}

- (void)productViewController:(id)controller didFinishWithResult:(int64_t)result
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:result];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "productViewController didFinishWithResult: %{public}@", &v8, 0xCu);
  }

  observer = [(ASCLockupProductDetails *)self observer];
  [observer productDetailsUserDidInteractWithApp:self interactionType:@"dismissed"];
}

- (void)productViewController:(id)controller userDidInteractWithProduct:(unint64_t)product
{
  v12 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:product];
    v10 = 138543362;
    v11 = v7;
    _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "productViewController userDidInteractWithProduct: %{public}@", &v10, 0xCu);
  }

  if (product <= 2)
  {
    v8 = off_2781CC5D8[product];
    observer = [(ASCLockupProductDetails *)self observer];
    [observer productDetailsUserDidInteractWithApp:self interactionType:*v8];
  }
}

- (unint64_t)hash
{
  lockup = [(ASCLockupProductDetails *)self lockup];
  v3 = [lockup hash];

  return v3 + 2;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  selfCopy = self;
  if (selfCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = selfCopy;
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
    lockup = [(ASCLockupProductDetails *)selfCopy lockup];
    lockup2 = [(ASCLockupProductDetails *)v6 lockup];
    v9 = lockup2;
    if (lockup && lockup2)
    {
      v10 = [lockup isEqual:lockup2];
    }

    else
    {
      v10 = lockup == lockup2;
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
  lockup = [(ASCLockupProductDetails *)self lockup];
  [(ASCDescriber *)v3 addObject:lockup withName:@"lockup"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
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