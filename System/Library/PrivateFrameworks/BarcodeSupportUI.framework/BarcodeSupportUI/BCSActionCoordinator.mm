@interface BCSActionCoordinator
- (BCSActionCoordinator)init;
- (BCSActionCoordinatorDelegate)delegate;
- (BOOL)_handleActionPickerItemIfCalendarAction:(id)action;
- (BOOL)_handleActionPickerItemIfContactsAction:(id)action;
- (BOOL)_handleActionPickerItemIfHomeAction:(id)action;
- (BOOL)_handleActionPickerItemIfSpecialHandlingRequired:(id)required;
- (BOOL)_handleSpecialCodesForAction:(id)action presentingViewController:(id)controller;
- (BOOL)_performActionAndReturnIfLogged:(id)logged;
- (id)_calendarAppIcon;
- (id)_tempVCardFileURL;
- (id)actionForVisualCode:(id)code;
- (id)centerGlyphImageForAction:(id)action;
- (id)homeScreenAppIconForAction:(id)action;
- (id)homeScreenAppIconWithIdentifier:(id)identifier;
- (void)_calendarAppIcon;
- (void)_handleCalendarICSString:(id)string;
- (void)_handleContactInfo:(id)info;
- (void)_launchBarcodeScannerAppFromLockscreenWithQueryOptions:(id)options completionBlock:(id)block;
- (void)_parseVisualCode:(id)code;
- (void)_resolveRedirectionForURL:(id)l;
- (void)_tempVCardFileURL;
- (void)_updateParsedActionWithURL:(id)l appLink:(id)link;
- (void)alertController:(id)controller didSelectActionItem:(id)item;
- (void)alertControllerDidAllow:(id)allow;
- (void)alertControllerDidCancel:(id)cancel;
- (void)logActivatedEventForAction:(id)action;
- (void)performAction:(id)action;
- (void)performActionPickerItem:(id)item;
- (void)requestDeviceUnlockIfNeededWithCompletion:(id)completion;
- (void)safariViewControllerDidFinish:(id)finish;
- (void)showFirstTimePromptIfNecessary:(id)necessary completion:(id)completion;
- (void)showItemsWithAction:(id)action completion:(id)completion;
- (void)startParsingVisualCode:(id)code;
@end

@implementation BCSActionCoordinator

- (BCSActionCoordinator)init
{
  v8.receiver = self;
  v8.super_class = BCSActionCoordinator;
  v2 = [(BCSActionCoordinator *)&v8 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_queue_create_with_target_V2("com.apple.BarcodeScanner.parsingQueue", 0, v3);
    parsingQueue = v2->_parsingQueue;
    v2->_parsingQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)startParsingVisualCode:(id)code
{
  codeCopy = code;
  parsingQueue = self->_parsingQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__BCSActionCoordinator_startParsingVisualCode___block_invoke;
  v7[3] = &unk_278D01C68;
  v7[4] = self;
  v8 = codeCopy;
  v6 = codeCopy;
  dispatch_async(parsingQueue, v7);
}

uint64_t __47__BCSActionCoordinator_startParsingVisualCode___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _parseVisualCode:v3];
}

- (id)actionForVisualCode:(id)code
{
  codeCopy = code;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  parsingQueue = self->_parsingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BCSActionCoordinator_actionForVisualCode___block_invoke;
  block[3] = &unk_278D01F10;
  v10 = codeCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = codeCopy;
  dispatch_sync(parsingQueue, block);
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __44__BCSActionCoordinator_actionForVisualCode___block_invoke(void *a1)
{
  v1 = a1[5];
  if (a1[4] == *(v1 + 8))
  {
    objc_storeStrong((*(a1[6] + 8) + 40), *(v1 + 24));
  }
}

- (void)_parseVisualCode:(id)code
{
  codeCopy = code;
  dispatch_assert_queue_V2(self->_parsingQueue);
  if (!self->_qrCodeParser)
  {
    v5 = objc_alloc_init(MEMORY[0x277CF0B10]);
    qrCodeParser = self->_qrCodeParser;
    self->_qrCodeParser = v5;
  }

  v7 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
  v8 = v7;
  if (codeCopy + 1 >= 2 && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2419E7000, v8, OS_SIGNPOST_INTERVAL_BEGIN, codeCopy, "Parsing", "start parsing", buf, 2u);
  }

  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __41__BCSActionCoordinator__parseVisualCode___block_invoke;
  v19 = &unk_278D02220;
  v9 = codeCopy;
  v20 = v9;
  selfCopy = self;
  v10 = _Block_copy(&v16);
  if ([v9 codeType] == 1 && (objc_msgSend(v9, "rawPayload"), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    payloadString = v11;
    appClipCodeURLDecoder = self->_appClipCodeURLDecoder;
    if (!appClipCodeURLDecoder)
    {
      v14 = objc_alloc_init(MEMORY[0x277CF0B00]);
      v15 = self->_appClipCodeURLDecoder;
      self->_appClipCodeURLDecoder = v14;

      appClipCodeURLDecoder = self->_appClipCodeURLDecoder;
    }

    -[BCSAppClipCodeURLDecoder parseEncodedURLData:version:completion:](appClipCodeURLDecoder, "parseEncodedURLData:version:completion:", payloadString, [v9 codeVersion], v10);
  }

  else
  {
    payloadString = [v9 payloadString];
    if (payloadString)
    {
      [(BCSQRCodeParser *)self->_qrCodeParser parseCodeFromString:payloadString completionHandler:v10];
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSActionCoordinator _parseVisualCode:];
    }
  }
}

void __41__BCSActionCoordinator__parseVisualCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
  v8 = v7;
  v9 = *(a1 + 32);
  if (v9 + 1 >= 2 && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2419E7000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Parsing", "end parsing", buf, 2u);
  }

  v10 = BCS_LOG_CHANNEL_PREFIXBarcodeScanner();
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2419E7000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "parsedQRCode", "parsed visual code payload", buf, 2u);
  }

  if (!v6)
  {
    v11 = *(a1 + 40);
    v12 = *(v11 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__BCSActionCoordinator__parseVisualCode___block_invoke_33;
    block[3] = &unk_278D01C68;
    block[4] = v11;
    v13 = v5;
    v21 = v13;
    dispatch_async(v12, block);
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 80));
    [WeakRetained actionCoordinator:*(a1 + 40) didParseCode:*(a1 + 32) withAction:v13];

    v15 = [v13 defaultActionTargetApplicationBundleIdentifier];
    if ([v15 isEqualToString:@"com.apple.mobilesafari"] && !SBSGetScreenLockStatus())
    {
      v16 = [v13 isApplePayInitiateAction];

      if (v16)
      {
        goto LABEL_10;
      }

      v15 = [v13 urlThatCanBeOpened];
      if ([v15 _bcs_isHTTPFamilyURL])
      {
        v17 = [v13 clipMetadataRequest];

        if (!v17)
        {
          v18[0] = MEMORY[0x277D85DD0];
          v18[1] = 3221225472;
          v18[2] = __41__BCSActionCoordinator__parseVisualCode___block_invoke_2;
          v18[3] = &unk_278D01C68;
          v18[4] = *(a1 + 40);
          v15 = v15;
          v19 = v15;
          dispatch_async(MEMORY[0x277D85CD0], v18);
        }
      }
    }

LABEL_10:
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__BCSActionCoordinator__parseVisualCode___block_invoke_cold_1(v6);
  }

LABEL_11:
}

- (BOOL)_handleSpecialCodesForAction:(id)action presentingViewController:(id)controller
{
  actionCopy = action;
  controllerCopy = controller;
  isInvalidDataAction = [actionCopy isInvalidDataAction];
  if (isInvalidDataAction)
  {
    v9 = objc_alloc_init(BCSAlertController);
    [(BCSAlertController *)v9 setDelegate:self];
    [(BCSAlertController *)v9 showInvalidDataAlertForAction:actionCopy fromViewController:controllerCopy];
  }

  return isInvalidDataAction;
}

- (void)_updateParsedActionWithURL:(id)l appLink:(id)link
{
  lCopy = l;
  linkCopy = link;
  parsingQueue = self->_parsingQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__BCSActionCoordinator__updateParsedActionWithURL_appLink___block_invoke;
  block[3] = &unk_278D01D30;
  v12 = lCopy;
  v13 = linkCopy;
  selfCopy = self;
  v9 = linkCopy;
  v10 = lCopy;
  dispatch_async(parsingQueue, block);
}

uint64_t __59__BCSActionCoordinator__updateParsedActionWithURL_appLink___block_invoke(void *a1)
{
  v2 = [[BCSShadowAction alloc] initWithURL:a1[4] appLink:a1[5] originalAction:*(a1[6] + 24)];
  v3 = a1[6];
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)showFirstTimePromptIfNecessary:(id)necessary completion:(id)completion
{
  necessaryCopy = necessary;
  completionCopy = completion;
  if ([necessaryCopy conformsToProtocol:&unk_2853A31C0])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = [WeakRetained actionCoordinatorPresentingViewController:self];

    if ([(BCSActionCoordinator *)self _handleSpecialCodesForAction:necessaryCopy presentingViewController:v9])
    {
      completionCopy[2](completionCopy);
    }

    else
    {
      appLinks = [necessaryCopy appLinks];
      if ([appLinks count])
      {
        firstObject = [appLinks firstObject];
        targetApplicationProxy = [firstObject targetApplicationProxy];
        applicationIdentifier = [targetApplicationProxy applicationIdentifier];

        browserSettings = [firstObject browserSettings];
        v15 = [browserSettings objectForKeyedSubscript:@"com.apple.BarcodeScanner.UserExplicitlyAllowsOpeningLinkInApp"];
        if ([v15 BOOLValue])
        {
          completionCopy[2](completionCopy);
        }

        else
        {
          v19 = MEMORY[0x277D85DD0];
          v20 = 3221225472;
          v21 = __66__BCSActionCoordinator_showFirstTimePromptIfNecessary_completion___block_invoke;
          v22 = &unk_278D02248;
          v23 = firstObject;
          v24 = completionCopy;
          v16 = _Block_copy(&v19);
          firstTimePromptBlock = self->_firstTimePromptBlock;
          self->_firstTimePromptBlock = v16;

          v18 = objc_alloc_init(BCSAlertController);
          [(BCSAlertController *)v18 setDelegate:self, v19, v20, v21, v22];
          [(BCSAlertController *)v18 showFirstTimePromptToOpenApp:applicationIdentifier fromViewController:v9];
        }
      }

      else
      {
        completionCopy[2](completionCopy);
      }
    }
  }

  else
  {
    completionCopy[2](completionCopy);
  }
}

void __66__BCSActionCoordinator_showFirstTimePromptIfNecessary_completion___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) browserSettings];
    v4 = [v3 mutableCopy];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277CBEC10] mutableCopy];
    }

    v7 = v6;

    v8 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v7 setObject:v8 forKeyedSubscript:@"com.apple.BarcodeScanner.UserExplicitlyAllowsOpeningLinkInApp"];

    v9 = *(a1 + 32);
    v11 = 0;
    [v9 setBrowserSettings:v7 error:&v11];
    v10 = v11;
    if (v10)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __66__BCSActionCoordinator_showFirstTimePromptIfNecessary_completion___block_invoke_cold_1(v10);
      }
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)_resolveRedirectionForURL:(id)l
{
  v4 = MEMORY[0x277CDB808];
  lCopy = l;
  v6 = [v4 alloc];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__BCSActionCoordinator__resolveRedirectionForURL___block_invoke;
  v9[3] = &unk_278D02270;
  v9[4] = self;
  v7 = [v6 initWithURL:lCopy completionHandler:v9];

  linkResolver = self->_linkResolver;
  self->_linkResolver = v7;
}

void __50__BCSActionCoordinator__resolveRedirectionForURL___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __50__BCSActionCoordinator__resolveRedirectionForURL___block_invoke_cold_1(v9);
    }
  }

  else
  {
    v10 = [v7 _bcs_isHTTPFamilyURL];
    if (v8 || (v10 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v14 = 138478083;
        v15 = v7;
        v16 = 2113;
        v17 = v8;
        _os_log_impl(&dword_2419E7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSActionCoordinator: resolved redirection to %{private}@. apps: %{private}@", &v14, 0x16u);
      }

      [*(a1 + 32) _updateParsedActionWithURL:v7 appLink:v8];
      v11 = *(a1 + 32);
      v12 = *(v11 + 56);
      *(v11 + 56) = 0;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)showItemsWithAction:(id)action completion:(id)completion
{
  actionCopy = action;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  urlThatCanBeOpened = [actionCopy urlThatCanBeOpened];
  _bcs_isUPIURL = [urlThatCanBeOpened _bcs_isUPIURL];

  if (_bcs_isUPIURL)
  {
    v11 = objc_alloc_init(BCSContextMenuController);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __55__BCSActionCoordinator_showItemsWithAction_completion___block_invoke;
    v19 = &unk_278D02298;
    selfCopy = self;
    v21 = completionCopy;
    [(BCSContextMenuController *)v11 setFinishAction:&v16];
    v12 = [WeakRetained actionCoordinatorViewForContextMenu:{self, v16, v17, v18, v19, selfCopy}];
    [(BCSContextMenuController *)v11 showMenuForAction:actionCopy fromView:v12];
  }

  else
  {
    v11 = [WeakRetained actionCoordinatorPresentingViewController:self];
    v13 = _Block_copy(completionCopy);
    actionPickerItemBlock = self->_actionPickerItemBlock;
    self->_actionPickerItemBlock = v13;

    v15 = objc_alloc_init(BCSAlertController);
    [(BCSAlertController *)v15 setDelegate:self];
    [(BCSAlertController *)v15 showActionPickerViewForAction:actionCopy fromViewController:v11];
  }
}

uint64_t __55__BCSActionCoordinator_showItemsWithAction_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 80));
    [WeakRetained actionCoordinator:*(a1 + 32) willDismissViewController:0];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)homeScreenAppIconForAction:(id)action
{
  actionCopy = action;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  urlThatCanBeOpened = [actionCopy urlThatCanBeOpened];
  absoluteString = [urlThatCanBeOpened absoluteString];

  lowercaseString = [absoluteString lowercaseString];
  if (([lowercaseString hasPrefix:@"x-esim://"] & 1) != 0 || objc_msgSend(lowercaseString, "hasPrefix:", @"lpa:"))
  {
    defaultActionTargetApplicationBundleIdentifier = [MEMORY[0x277D755B8] imageNamed:@"CellularData" inBundle:v5];
    v10 = [defaultActionTargetApplicationBundleIdentifier _applicationIconImageForFormat:2 precomposed:1];
LABEL_4:
    v11 = v10;
    goto LABEL_5;
  }

  if (![actionCopy conformsToProtocol:&unk_2853A31C0])
  {
    goto LABEL_17;
  }

  defaultActionTargetApplicationBundleIdentifier = actionCopy;
  if (![defaultActionTargetApplicationBundleIdentifier isWiFiAction])
  {
    clipMetadataRequest = [defaultActionTargetApplicationBundleIdentifier clipMetadataRequest];

    if (clipMetadataRequest)
    {
      v10 = [MEMORY[0x277D755B8] imageNamed:@"AppClips" inBundle:v5];
      goto LABEL_4;
    }

    if ([defaultActionTargetApplicationBundleIdentifier isContinuityCameraAction])
    {
      v13 = MEMORY[0x277D755B8];
      v14 = @"AppleTV";
      goto LABEL_11;
    }

LABEL_17:
    defaultActionTargetApplicationBundleIdentifier = [actionCopy defaultActionTargetApplicationBundleIdentifier];
    v10 = [(BCSActionCoordinator *)self homeScreenAppIconWithIdentifier:defaultActionTargetApplicationBundleIdentifier];
    goto LABEL_4;
  }

  v13 = MEMORY[0x277D755B8];
  v14 = @"Wi-Fi-HomeScreen";
LABEL_11:
  v15 = [v13 imageNamed:v14 inBundle:v5];
  v11 = [v15 _applicationIconImageForFormat:2 precomposed:1];

LABEL_5:

  return v11;
}

- (id)_calendarAppIcon
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v2 = getISIconClass_softClass;
  v27 = getISIconClass_softClass;
  if (!getISIconClass_softClass)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __getISIconClass_block_invoke;
    v22 = &unk_278D021A8;
    v23 = &v24;
    __getISIconClass_block_invoke(&v19);
    v2 = v25[3];
  }

  v3 = v2;
  _Block_object_dispose(&v24, 8);
  v4 = [v2 alloc];
  date = [MEMORY[0x277CBEAA8] date];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v4 initWithDate:date calendar:currentCalendar format:0];

  v24 = 0;
  v25 = &v24;
  v26 = 0x2050000000;
  v8 = getISImageDescriptorClass_softClass;
  v27 = getISImageDescriptorClass_softClass;
  if (!getISImageDescriptorClass_softClass)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __getISImageDescriptorClass_block_invoke;
    v22 = &unk_278D021A8;
    v23 = &v24;
    __getISImageDescriptorClass_block_invoke(&v19);
    v8 = v25[3];
  }

  v9 = v8;
  _Block_object_dispose(&v24, 8);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v10 = getkISImageDescriptorHomeScreenSymbolLoc_ptr;
  v27 = getkISImageDescriptorHomeScreenSymbolLoc_ptr;
  if (!getkISImageDescriptorHomeScreenSymbolLoc_ptr)
  {
    v19 = MEMORY[0x277D85DD0];
    v20 = 3221225472;
    v21 = __getkISImageDescriptorHomeScreenSymbolLoc_block_invoke;
    v22 = &unk_278D021A8;
    v23 = &v24;
    v11 = IconServicesLibrary();
    v12 = dlsym(v11, "kISImageDescriptorHomeScreen");
    *(v23[1] + 24) = v12;
    getkISImageDescriptorHomeScreenSymbolLoc_ptr = *(v23[1] + 24);
    v10 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v10)
  {
    [BCSActionCoordinator _calendarAppIcon];
  }

  v13 = [v8 imageDescriptorNamed:*v10];
  _bcs_mainScreenScale();
  [v13 setScale:?];
  v14 = [v7 imageForImageDescriptor:v13];
  v15 = MEMORY[0x277D755B8];
  cGImage = [v14 CGImage];
  [v14 scale];
  v17 = [v15 imageWithCGImage:cGImage scale:0 orientation:?];

  return v17;
}

- (id)homeScreenAppIconWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (homeScreenAppIconWithIdentifier__iconCache)
  {
    if (identifierCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v12 = homeScreenAppIconWithIdentifier__iconCache;
    homeScreenAppIconWithIdentifier__iconCache = v11;

    [homeScreenAppIconWithIdentifier__iconCache setCountLimit:8];
    if (v5)
    {
LABEL_3:
      v6 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v5];
      v7 = homeScreenAppIconWithIdentifier__iconCache;
      bundleIdentifier = [v6 bundleIdentifier];
      v9 = [v7 objectForKey:bundleIdentifier];

      if (v9)
      {
        _calendarAppIcon = v9;
        goto LABEL_25;
      }

      if ([v5 isEqualToString:@"com.apple.mobilecal"])
      {
        _calendarAppIcon = [(BCSActionCoordinator *)self _calendarAppIcon];
        if (!_calendarAppIcon)
        {
          goto LABEL_25;
        }
      }

      else
      {
        _bcs_mainScreenScale();
        v14 = v13;
        IsPad = _bcs_deviceIsPad();
        if (v14 == 2.0)
        {
          v16 = 24;
        }

        else
        {
          v16 = 1;
        }

        if (v14 == 2.0)
        {
          v17 = 15;
        }

        else
        {
          v17 = 32;
        }

        if (IsPad)
        {
          v18 = v16;
        }

        else
        {
          v18 = v17;
        }

        v19 = [v6 iconDataForVariant:v18];
        if (!v19)
        {
          _calendarAppIcon = 0;
          goto LABEL_25;
        }

        v20 = v19;
        v21 = LICreateIconFromCachedBitmap();
        _calendarAppIcon = [MEMORY[0x277D755B8] imageWithCGImage:v21 scale:0 orientation:v14];
        CGImageRelease(v21);

        if (!_calendarAppIcon)
        {
LABEL_25:

          goto LABEL_26;
        }
      }

      v22 = homeScreenAppIconWithIdentifier__iconCache;
      bundleIdentifier2 = [v6 bundleIdentifier];
      [v22 setObject:_calendarAppIcon forKey:bundleIdentifier2];

      goto LABEL_25;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [BCSActionCoordinator homeScreenAppIconWithIdentifier:];
  }

  _calendarAppIcon = 0;
LABEL_26:

  return _calendarAppIcon;
}

- (id)centerGlyphImageForAction:(id)action
{
  if ([action isApplePayInitiateAction])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x277D755B8] imageNamed:@"applePay-center-glyph" inBundle:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)logActivatedEventForAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  originalAction = actionCopy;
  if (objc_opt_isKindOfClass())
  {
    originalAction = [actionCopy originalAction];
  }

  mEMORY[0x277CF0AF0] = [MEMORY[0x277CF0AF0] sharedLogger];
  [mEMORY[0x277CF0AF0] logBarcodeActivatedEventForAction:originalAction];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  if (![(BCSActionCoordinator *)self _performActionAndReturnIfLogged:?])
  {
    [(BCSActionCoordinator *)self logActivatedEventForAction:actionCopy];
  }
}

- (BOOL)_performActionAndReturnIfLogged:(id)logged
{
  loggedCopy = logged;
  defaultActionTargetApplicationBundleIdentifier = [loggedCopy defaultActionTargetApplicationBundleIdentifier];
  v6 = [defaultActionTargetApplicationBundleIdentifier isEqualToString:@"com.apple.mobilesafari"];

  if (v6)
  {
    clipMetadataRequest = [loggedCopy clipMetadataRequest];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (!clipMetadataRequest)
    {
      actionPickerItems = objc_alloc_init(MEMORY[0x277CDB708]);
      [actionPickerItems setEntersReaderIfAvailable:0];
      [actionPickerItems _setEphemeral:1];
      linkResolver = self->_linkResolver;
      if (linkResolver)
      {
        safariViewController = [(_SFLinkRedirectionResolver *)linkResolver safariViewController];
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x277CDB700]);
        urlThatCanBeOpened = [loggedCopy urlThatCanBeOpened];
        safariViewController = [v15 initWithURL:urlThatCanBeOpened configuration:actionPickerItems];
      }

      [safariViewController setDelegate:self];
      [safariViewController setDismissButtonStyle:1];
      v17 = [WeakRetained actionCoordinatorPresentingViewController:self];
      presentedViewController = [v17 presentedViewController];

      if (!presentedViewController)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __56__BCSActionCoordinator__performActionAndReturnIfLogged___block_invoke;
        v23[3] = &unk_278D01C68;
        v23[4] = self;
        v24 = v17;
        [v24 presentViewController:safariViewController animated:1 completion:v23];
      }

      goto LABEL_18;
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  actionPickerItems = [loggedCopy actionPickerItems];
  safariViewController = [actionPickerItems firstObject];
  if ([(BCSActionCoordinator *)self _handleActionPickerItemIfSpecialHandlingRequired:safariViewController])
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  if (objc_opt_respondsToSelector())
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __56__BCSActionCoordinator__performActionAndReturnIfLogged___block_invoke_2;
    v20[3] = &unk_278D022C0;
    v20[4] = self;
    WeakRetained = WeakRetained;
    v21 = WeakRetained;
    v22 = loggedCopy;
    [v22 performDefaultActionWithCompletionHandler:v20];

    v12 = 1;
  }

  else
  {
    v13 = loggedCopy;
    if ([v13 isInvalidDataAction] && objc_msgSend(v13, "codeType") == 3)
    {
      v14 = [WeakRetained actionCoordinatorPresentingViewController:self];
      [(BCSActionCoordinator *)self _handleSpecialCodesForAction:v13 presentingViewController:v14];
    }

    else
    {
      [v13 performAction];
    }

    objc_opt_class();
    v12 = objc_opt_isKindOfClass() ^ 1;
  }

LABEL_19:

  return v12 & 1;
}

uint64_t __56__BCSActionCoordinator__performActionAndReturnIfLogged___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;

  v4 = *(a1 + 40);

  return [v4 setNeedsStatusBarAppearanceUpdate];
}

void __56__BCSActionCoordinator__performActionAndReturnIfLogged___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    v3 = objc_alloc_init(BCSAlertController);
    [(BCSAlertController *)v3 setDelegate:*(a1 + 32)];
    v4 = [*(a1 + 40) actionCoordinatorPresentingViewController:*(a1 + 32)];
    [(BCSAlertController *)v3 showErrorExplanationForAction:*(a1 + 48) error:v5 fromViewController:v4];
  }

  else
  {
    [*(a1 + 40) actionCoordinator:*(a1 + 32) didFinishPerformingAction:*(a1 + 48)];
  }
}

- (void)performActionPickerItem:(id)item
{
  itemCopy = item;
  if (![(BCSActionCoordinator *)self _handleActionPickerItemIfSpecialHandlingRequired:?])
  {
    [itemCopy performActionInExternalApp];
  }
}

- (BOOL)_handleActionPickerItemIfSpecialHandlingRequired:(id)required
{
  requiredCopy = required;
  v5 = [(BCSActionCoordinator *)self _handleActionPickerItemIfContactsAction:requiredCopy]|| [(BCSActionCoordinator *)self _handleActionPickerItemIfCalendarAction:requiredCopy]|| [(BCSActionCoordinator *)self _handleActionPickerItemIfHomeAction:requiredCopy];

  return v5;
}

- (void)requestDeviceUnlockIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  if (SBSGetScreenLockStatus())
  {
    self->_deviceIsBeingUnlocked = 1;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __66__BCSActionCoordinator_requestDeviceUnlockIfNeededWithCompletion___block_invoke;
    v5[3] = &unk_278D02310;
    v5[4] = self;
    v6 = completionCopy;
    [(BCSActionCoordinator *)self _launchBarcodeScannerAppFromLockscreenWithQueryOptions:0 completionBlock:v5];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __66__BCSActionCoordinator_requestDeviceUnlockIfNeededWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v4 = dispatch_time(0, 500000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__BCSActionCoordinator_requestDeviceUnlockIfNeededWithCompletion___block_invoke_2;
  block[3] = &unk_278D022E8;
  v5 = *(a1 + 40);
  v8 = a2;
  block[4] = *(a1 + 32);
  v7 = v5;
  dispatch_after(v4, MEMORY[0x277D85CD0], block);
}

uint64_t __66__BCSActionCoordinator_requestDeviceUnlockIfNeededWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  result = (*(*(a1 + 40) + 16))();
  *(*(a1 + 32) + 72) = 0;
  return result;
}

- (BOOL)_handleActionPickerItemIfContactsAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([actionCopy contact], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    [(BCSActionCoordinator *)self _handleContactInfo:v5];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_tempVCardFileURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v3 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v10];
  v4 = v10;

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [BCSActionCoordinator _tempVCardFileURL];
    }

    v5 = 0;
  }

  else
  {
    v6 = [v3 URLByAppendingPathComponent:@"com.apple.BarcodeSupport.Notification" isDirectory:1];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = 0;
    [defaultManager2 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v9];
    v4 = v9;

    if (v4)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BCSActionCoordinator _tempVCardFileURL];
      }

      v5 = 0;
    }

    else
    {
      v5 = [v6 URLByAppendingPathComponent:@"Transfer.vcf" isDirectory:0];
    }
  }

  return v5;
}

- (void)_handleContactInfo:(id)info
{
  infoCopy = info;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2419E7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSActionCoordinator: Handling contact action", buf, 2u);
  }

  v5 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__BCSActionCoordinator__handleContactInfo___block_invoke;
  v7[3] = &unk_278D02338;
  v8 = infoCopy;
  selfCopy = self;
  v6 = infoCopy;
  [v5 requestAccessForEntityType:0 completionHandler:v7];
}

void __43__BCSActionCoordinator__handleContactInfo___block_invoke(uint64_t a1, char a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277CBDAC8];
    v15[0] = *(a1 + 32);
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v8 = [v6 dataWithContacts:v7 error:0];

    v9 = [*(a1 + 40) _tempVCardFileURL];
    if (!v9)
    {
LABEL_12:

      goto LABEL_13;
    }

    [v8 writeToURL:v9 atomically:1];
    v10 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.MobileAddressBook"];
    if ([v10 isInstalled] && (objc_msgSend(v10, "isRestricted") & 1) == 0)
    {
      v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v12 = [v11 operationToOpenResource:v9 usingApplication:@"com.apple.MobileAddressBook" uniqueDocumentIdentifier:0 sourceIsManaged:0 userInfo:0 options:0 delegate:0];
      [v12 start];
    }

    else
    {
      v11 = [MEMORY[0x277CC1E60] applicationProxyForSystemPlaceholder:@"com.apple.MobileAddressBook"];
      if (!v11)
      {
LABEL_11:

        goto LABEL_12;
      }

      v12 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v13 = [v11 bundleIdentifier];
      [v12 _LSFailedToOpenURL:0 withBundle:v13];
    }

    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __43__BCSActionCoordinator__handleContactInfo___block_invoke_cold_1(v5);
  }

LABEL_13:

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleActionPickerItemIfHomeAction:(id)action
{
  actionCopy = action;
  targetApplicationBundleIdentifier = [actionCopy targetApplicationBundleIdentifier];
  v5 = [targetApplicationBundleIdentifier isEqualToString:@"com.apple.Home"];

  if (v5)
  {
    actionURL = [actionCopy actionURL];
    if (([actionURL _bcs_hasScheme:@"X-HM"] & 1) != 0 || objc_msgSend(actionURL, "_bcs_hasScheme:", @"com.apple.Home-private"))
    {
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v9 = 0;
      LOBYTE(v5) = [defaultWorkspace openSensitiveURL:actionURL withOptions:0 error:&v9];

      if ((v5 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [BCSActionCoordinator _handleActionPickerItemIfHomeAction:];
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (BOOL)_handleActionPickerItemIfCalendarAction:(id)action
{
  actionCopy = action;
  targetApplicationBundleIdentifier = [actionCopy targetApplicationBundleIdentifier];
  v6 = [targetApplicationBundleIdentifier isEqualToString:@"com.apple.mobilecal"];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      icsString = [actionCopy icsString];
    }

    else
    {
      icsString = 0;
    }

    v8 = [icsString length];
    LOBYTE(v6) = v8 != 0;
    if (v8)
    {
      [(BCSActionCoordinator *)self _handleCalendarICSString:icsString];
    }
  }

  return v6;
}

- (void)_handleCalendarICSString:(id)string
{
  stringCopy = string;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2419E7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "BCSActionCoordinator: Handling event action", buf, 2u);
  }

  v4 = objc_alloc_init(MEMORY[0x277CC5A40]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__BCSActionCoordinator__handleCalendarICSString___block_invoke;
  v7[3] = &unk_278D02338;
  v8 = v4;
  v9 = stringCopy;
  v5 = stringCopy;
  v6 = v4;
  [v6 requestWriteOnlyAccessToEventsWithCompletion:v7];
}

void __49__BCSActionCoordinator__handleCalendarICSString___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v28[0] = @"ICS";
  v28[1] = @"NotificationStyle";
  v29[0] = v5;
  v29[1] = MEMORY[0x277CBEC38];
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  v8 = v6;
  v9 = v7;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v10 = getDDUIEventForResultsSymbolLoc_ptr_0;
  v27 = getDDUIEventForResultsSymbolLoc_ptr_0;
  if (!getDDUIEventForResultsSymbolLoc_ptr_0)
  {
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __getDDUIEventForResultsSymbolLoc_block_invoke_0;
    v23[3] = &unk_278D021A8;
    v23[4] = &v24;
    __getDDUIEventForResultsSymbolLoc_block_invoke_0(v23);
    v10 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v10)
  {
    [BCSAlertController _createPreviewControllerForDataDetectionActionPickerItem:];
  }

  v11 = v10(v8, 0, v9);

  v12 = *(a1 + 32);
  v22 = 0;
  v13 = [v12 saveEvent:v11 span:0 error:&v22];
  v14 = v22;
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    [v11 reset];
    v16 = [MEMORY[0x277CC1E80] defaultWorkspace];
    v17 = [v11 externalURL];
    v21 = 0;
    v18 = [v16 openSensitiveURL:v17 withOptions:0 error:&v21];
    v19 = v21;

    if ((v18 & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __49__BCSActionCoordinator__handleCalendarICSString___block_invoke_cold_2();
      }

      [*(a1 + 32) removeEvent:v11 span:0 error:0];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __49__BCSActionCoordinator__handleCalendarICSString___block_invoke_cold_1(v14);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_launchBarcodeScannerAppFromLockscreenWithQueryOptions:(id)options completionBlock:(id)block
{
  optionsCopy = options;
  blockCopy = block;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v7 = getFBSSystemServiceClass_softClass;
  v30 = getFBSSystemServiceClass_softClass;
  if (!getFBSSystemServiceClass_softClass)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getFBSSystemServiceClass_block_invoke;
    v25 = &unk_278D021A8;
    v26 = &v27;
    __getFBSSystemServiceClass_block_invoke(&v22);
    v7 = v28[3];
  }

  v8 = v7;
  _Block_object_dispose(&v27, 8);
  v9 = objc_alloc_init(v7);
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  v12 = objc_opt_new();
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v13 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  v30 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_block_invoke;
    v25 = &unk_278D021A8;
    v26 = &v27;
    v14 = FrontBoardServicesLibrary();
    v15 = dlsym(v14, "FBSOpenApplicationOptionKeyUnlockDevice");
    *(v26[1] + 24) = v15;
    getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = *(v26[1] + 24);
    v13 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v13)
  {
    [BCSActionCoordinator _launchBarcodeScannerAppFromLockscreenWithQueryOptions:completionBlock:];
  }

  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v13];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v16 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  v30 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_block_invoke;
    v25 = &unk_278D021A8;
    v26 = &v27;
    v17 = FrontBoardServicesLibrary();
    v18 = dlsym(v17, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    *(v26[1] + 24) = v18;
    getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = *(v26[1] + 24);
    v16 = v28[3];
  }

  _Block_object_dispose(&v27, 8);
  if (!v16)
  {
    [BCSActionCoordinator _launchBarcodeScannerAppFromLockscreenWithQueryOptions:completionBlock:];
  }

  [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*v16];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __95__BCSActionCoordinator__launchBarcodeScannerAppFromLockscreenWithQueryOptions_completionBlock___block_invoke;
  v20[3] = &unk_278D02388;
  v21 = blockCopy;
  v19 = blockCopy;
  [v9 openApplication:bundleIdentifier options:v12 withResult:v20];
}

void __95__BCSActionCoordinator__launchBarcodeScannerAppFromLockscreenWithQueryOptions_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && [v3 code] == 7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __95__BCSActionCoordinator__launchBarcodeScannerAppFromLockscreenWithQueryOptions_completionBlock___block_invoke_cold_1(v4);
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v7 = MEMORY[0x277D85DD0];
    v8 = __95__BCSActionCoordinator__launchBarcodeScannerAppFromLockscreenWithQueryOptions_completionBlock___block_invoke_214;
    v9 = &unk_278D02360;
    v10 = v6;
    v11 = v5;
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      v8(&v7);
    }

    else
    {
      dispatch_sync(MEMORY[0x277D85CD0], &v7);
    }
  }
}

- (void)alertController:(id)controller didSelectActionItem:(id)item
{
  actionPickerItemBlock = self->_actionPickerItemBlock;
  if (actionPickerItemBlock)
  {
    actionPickerItemBlock[2](actionPickerItemBlock, item, controller);
    actionPickerItemBlock = self->_actionPickerItemBlock;
  }

  self->_actionPickerItemBlock = 0;
}

- (void)alertControllerDidAllow:(id)allow
{
  firstTimePromptBlock = self->_firstTimePromptBlock;
  if (firstTimePromptBlock)
  {
    firstTimePromptBlock[2](firstTimePromptBlock, 1, allow);
    firstTimePromptBlock = self->_firstTimePromptBlock;
  }

  self->_firstTimePromptBlock = 0;
}

- (void)alertControllerDidCancel:(id)cancel
{
  firstTimePromptBlock = self->_firstTimePromptBlock;
  self->_firstTimePromptBlock = 0;

  actionPickerItemBlock = self->_actionPickerItemBlock;
  self->_actionPickerItemBlock = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained actionCoordinator:self willDismissViewController:0];
}

- (void)safariViewControllerDidFinish:(id)finish
{
  finishCopy = finish;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained actionCoordinator:self willDismissViewController:finishCopy];
}

- (BCSActionCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __41__BCSActionCoordinator__parseVisualCode___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __66__BCSActionCoordinator_showFirstTimePromptIfNecessary_completion___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __50__BCSActionCoordinator__resolveRedirectionForURL___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_calendarAppIcon
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getkISImageDescriptorHomeScreen(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"BCSActionCoordinator.m" lineNumber:53 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_tempVCardFileURL
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __43__BCSActionCoordinator__handleContactInfo___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

void __49__BCSActionCoordinator__handleCalendarICSString___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_launchBarcodeScannerAppFromLockscreenWithQueryOptions:completionBlock:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getFBSOpenApplicationOptionKeyPromptUnlockDevice(void)"];
  [v0 handleFailureInFunction:v1 file:@"BCSActionCoordinator.m" lineNumber:46 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_launchBarcodeScannerAppFromLockscreenWithQueryOptions:completionBlock:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getFBSOpenApplicationOptionKeyUnlockDevice(void)"];
  [v0 handleFailureInFunction:v1 file:@"BCSActionCoordinator.m" lineNumber:45 description:{@"%s", dlerror()}];

  __break(1u);
}

void __95__BCSActionCoordinator__launchBarcodeScannerAppFromLockscreenWithQueryOptions_completionBlock___block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 _bcs_privacyPreservingDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

@end