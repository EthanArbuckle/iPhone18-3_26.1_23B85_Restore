@interface WFSetWallpaperActionUIKitUserInterface
- (BOOL)isiPad;
- (void)cancelPresentationWithCompletionHandler:(id)handler;
- (void)finishWithError:(id)error;
- (void)modalRemoteViewController:(id)controller didDismissWithResponse:(id)response;
- (void)showPreviewForConfiguration:(id)configuration selectedPoster:(id)poster completionHandler:(id)handler;
- (void)showPreviewWithInput:(id)input key:(id)key wallpaperLocation:(int64_t)location completionHandler:(id)handler;
- (void)wallpaperPreviewViewControllerCancelButtonPressed:(id)pressed;
- (void)wallpaperPreviewViewControllerSetButtonPressed:(id)pressed;
@end

@implementation WFSetWallpaperActionUIKitUserInterface

- (void)modalRemoteViewController:(id)controller didDismissWithResponse:(id)response
{
  responseCopy = response;
  completionHandler = [(WFSetWallpaperActionUIKitUserInterface *)self completionHandler];

  v6 = responseCopy;
  if (completionHandler)
  {
    if ([responseCopy entryPointResult])
    {
      userCancelledError = 0;
    }

    else
    {
      userCancelledError = [MEMORY[0x277CCA9B8] userCancelledError];
    }

    completionHandler2 = [(WFSetWallpaperActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, userCancelledError);

    v6 = responseCopy;
  }
}

- (void)wallpaperPreviewViewControllerSetButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_initWeak(&location, pressedCopy);
  locations = [(WFSetWallpaperActionUIKitUserInterface *)self locations];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __89__WFSetWallpaperActionUIKitUserInterface_wallpaperPreviewViewControllerSetButtonPressed___block_invoke;
  v6[3] = &unk_278C37310;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [pressedCopy setWallpaperForLocations:locations completionHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __89__WFSetWallpaperActionUIKitUserInterface_wallpaperPreviewViewControllerSetButtonPressed___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __89__WFSetWallpaperActionUIKitUserInterface_wallpaperPreviewViewControllerSetButtonPressed___block_invoke_2;
  v2[3] = &unk_278C37310;
  objc_copyWeak(&v3, (a1 + 40));
  v2[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
}

void __89__WFSetWallpaperActionUIKitUserInterface_wallpaperPreviewViewControllerSetButtonPressed___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __89__WFSetWallpaperActionUIKitUserInterface_wallpaperPreviewViewControllerSetButtonPressed___block_invoke_3;
  v3[3] = &unk_278C37538;
  v3[4] = *(a1 + 32);
  [WeakRetained dismissViewControllerAnimated:1 completion:v3];
}

- (void)wallpaperPreviewViewControllerCancelButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __92__WFSetWallpaperActionUIKitUserInterface_wallpaperPreviewViewControllerCancelButtonPressed___block_invoke;
  v6[3] = &unk_278C375A0;
  v7 = pressedCopy;
  selfCopy = self;
  v5 = pressedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __92__WFSetWallpaperActionUIKitUserInterface_wallpaperPreviewViewControllerCancelButtonPressed___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__WFSetWallpaperActionUIKitUserInterface_wallpaperPreviewViewControllerCancelButtonPressed___block_invoke_2;
  v3[3] = &unk_278C37538;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 dismissViewControllerAnimated:1 completion:v3];
}

void __92__WFSetWallpaperActionUIKitUserInterface_wallpaperPreviewViewControllerCancelButtonPressed___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v1 finishWithError:v2];
}

- (BOOL)isiPad
{
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  v3 = [currentDevice idiom] == 1;

  return v3;
}

- (void)finishWithError:(id)error
{
  errorCopy = error;
  if (![(WFSetWallpaperActionUIKitUserInterface *)self isiPad])
  {
    delegate = [(WFActionUserInterface *)self delegate];
    [delegate actionUserInterface:self setSupportedInterfaceOrientations:30];
  }

  completionHandler = [(WFSetWallpaperActionUIKitUserInterface *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFSetWallpaperActionUIKitUserInterface *)self completionHandler];
    (completionHandler2)[2](completionHandler2, errorCopy);
  }

  [(WFSetWallpaperActionUIKitUserInterface *)self setCompletionHandler:0];
}

- (void)cancelPresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __82__WFSetWallpaperActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C375C8;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFSetWallpaperActionUIKitUserInterface;
  v5 = handlerCopy;
  [(WFEmbeddableActionUserInterface *)&v6 cancelPresentationWithCompletionHandler:v7];
}

uint64_t __82__WFSetWallpaperActionUIKitUserInterface_cancelPresentationWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCA9B8] userCancelledError];
  [v2 finishWithError:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)showPreviewWithInput:(id)input key:(id)key wallpaperLocation:(int64_t)location completionHandler:(id)handler
{
  inputCopy = input;
  keyCopy = key;
  handlerCopy = handler;
  if (!keyCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"key"}];

    if (location)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFSetWallpaperActionUIKitUserInterface.m" lineNumber:96 description:@"You must have a valid wallpaper location to set a wallpaper"];

    goto LABEL_3;
  }

  if (!location)
  {
    goto LABEL_5;
  }

LABEL_3:
  [(WFSetWallpaperActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  v14 = MEMORY[0x277CCAAC8];
  v15 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __103__WFSetWallpaperActionUIKitUserInterface_showPreviewWithInput_key_wallpaperLocation_completionHandler___block_invoke;
  v20[3] = &unk_278C372E8;
  v20[4] = self;
  v21 = keyCopy;
  locationCopy = location;
  v16 = keyCopy;
  v17 = [v14 wf_securelyUnarchiveObjectWithData:inputCopy allowedClasses:v15 completionHandler:v20];
}

void __103__WFSetWallpaperActionUIKitUserInterface_showPreviewWithInput_key_wallpaperLocation_completionHandler___block_invoke(void *a1, void *a2)
{
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __103__WFSetWallpaperActionUIKitUserInterface_showPreviewWithInput_key_wallpaperLocation_completionHandler___block_invoke_2;
  v8[3] = &unk_278C372C0;
  v4 = a1[5];
  v8[4] = a1[4];
  v5 = v4;
  v6 = a1[6];
  v9 = v5;
  v10 = v6;
  v7 = a2;
  [v7 getObjectRepresentation:v8 forClass:objc_opt_class()];
}

void __103__WFSetWallpaperActionUIKitUserInterface_showPreviewWithInput_key_wallpaperLocation_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __103__WFSetWallpaperActionUIKitUserInterface_showPreviewWithInput_key_wallpaperLocation_completionHandler___block_invoke_3;
  v9[3] = &unk_278C37298;
  v4 = a1[4];
  v5 = a1[5];
  v10 = v3;
  v11 = v4;
  v6 = v5;
  v7 = a1[6];
  v12 = v6;
  v13 = v7;
  v8 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

void __103__WFSetWallpaperActionUIKitUserInterface_showPreviewWithInput_key_wallpaperLocation_completionHandler___block_invoke_3(uint64_t a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2050000000;
    v2 = getSBFWallpaperOptionsClass_softClass;
    v42 = getSBFWallpaperOptionsClass_softClass;
    if (!getSBFWallpaperOptionsClass_softClass)
    {
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __getSBFWallpaperOptionsClass_block_invoke;
      v37 = &unk_278C37610;
      v38 = &v39;
      __getSBFWallpaperOptionsClass_block_invoke(&v34);
      v2 = v40[3];
    }

    v3 = v2;
    _Block_object_dispose(&v39, 8);
    v4 = objc_alloc_init(v2);
    [v4 setSupportsCropping:1];
    [v4 setHasVideo:0];
    v5 = *(a1 + 32);
    v45 = *(a1 + 48);
    v46[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v43 = *(a1 + 48);
    v44 = v4;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    [*(a1 + 40) setLocations:*(a1 + 56)];
    v39 = 0;
    v40 = &v39;
    v41 = 0x2050000000;
    v8 = getSBSUIWallpaperPreviewViewControllerClass_softClass;
    v42 = getSBSUIWallpaperPreviewViewControllerClass_softClass;
    if (!getSBSUIWallpaperPreviewViewControllerClass_softClass)
    {
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __getSBSUIWallpaperPreviewViewControllerClass_block_invoke;
      v37 = &unk_278C37610;
      v38 = &v39;
      __getSBSUIWallpaperPreviewViewControllerClass_block_invoke(&v34);
      v8 = v40[3];
    }

    v9 = v8;
    _Block_object_dispose(&v39, 8);
    LOBYTE(v32) = 0;
    v10 = [[v8 alloc] initWithImages:v6 videos:0 variant:-1 options:v7 disableSegmentedControl:1 enableButtons:1 disableContents:v32];
    [(WFSetWallpaperWrapperViewController *)v10 setPreviewDelegate:*(a1 + 40)];
    if ([*(a1 + 40) isiPad])
    {
      [(WFSetWallpaperWrapperViewController *)v10 setModalPresentationStyle:0];
      v11 = 0;
    }

    else
    {
      v11 = objc_alloc_init(WFSetWallpaperWrapperViewController);
      [(WFSetWallpaperWrapperViewController *)v11 setModalPresentationStyle:0];
      v14 = [(WFSetWallpaperWrapperViewController *)v11 view];
      v15 = [(WFSetWallpaperWrapperViewController *)v10 view];
      [v14 addSubview:v15];

      v16 = [(WFSetWallpaperWrapperViewController *)v11 view];
      [v16 bounds];
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = [(WFSetWallpaperWrapperViewController *)v10 view];
      [v25 setFrame:{v18, v20, v22, v24}];

      v26 = [(WFSetWallpaperWrapperViewController *)v10 view];
      [v26 setAutoresizingMask:18];

      [(WFSetWallpaperWrapperViewController *)v11 addChildViewController:v10];
      [(WFSetWallpaperWrapperViewController *)v10 didMoveToParentViewController:v11];
      v27 = [*(a1 + 40) delegate];
      [v27 actionUserInterface:*(a1 + 40) setSupportedInterfaceOrientations:2];
    }

    v29 = *(a1 + 40);
    v28 = (a1 + 40);
    if ([v29 isiPad])
    {
      v30 = v10;
    }

    else
    {
      v30 = v11;
    }

    [*v28 presentContent:v30];

    v31 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v12 = *(a1 + 40);
    v33 = [MEMORY[0x277CE8888] unableToGetImageError];
    [v12 finishWithError:v33];
    v13 = *MEMORY[0x277D85DE8];
  }
}

- (void)showPreviewForConfiguration:(id)configuration selectedPoster:(id)poster completionHandler:(id)handler
{
  configurationCopy = configuration;
  posterCopy = poster;
  handlerCopy = handler;
  [(WFSetWallpaperActionUIKitUserInterface *)self setCompletionHandler:handlerCopy];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2050000000;
  v11 = getPRSServiceClass_softClass;
  v26 = getPRSServiceClass_softClass;
  if (!getPRSServiceClass_softClass)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __getPRSServiceClass_block_invoke;
    v22[3] = &unk_278C37610;
    v22[4] = &v23;
    __getPRSServiceClass_block_invoke(v22);
    v11 = v24[3];
  }

  v12 = v11;
  _Block_object_dispose(&v23, 8);
  v13 = objc_alloc_init(v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __103__WFSetWallpaperActionUIKitUserInterface_showPreviewForConfiguration_selectedPoster_completionHandler___block_invoke;
  v17[3] = &unk_278C37270;
  v18 = posterCopy;
  v19 = configurationCopy;
  selfCopy = self;
  v21 = handlerCopy;
  v14 = configurationCopy;
  v15 = handlerCopy;
  v16 = posterCopy;
  [v13 fetchPosterConfigurationsForExtension:@"com.apple.PhotosUIPrivate.PhotosPosterProvider" completion:v17];
}

void __103__WFSetWallpaperActionUIKitUserInterface_showPreviewForConfiguration_selectedPoster_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __103__WFSetWallpaperActionUIKitUserInterface_showPreviewForConfiguration_selectedPoster_completionHandler___block_invoke_2;
  block[3] = &unk_278C37248;
  v11 = v3;
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(a1 + 40);
  *&v7 = *(a1 + 48);
  *(&v7 + 1) = v5;
  *&v8 = v4;
  *(&v8 + 1) = v6;
  v12 = v8;
  v13 = v7;
  v9 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __103__WFSetWallpaperActionUIKitUserInterface_showPreviewForConfiguration_selectedPoster_completionHandler___block_invoke_2(uint64_t a1)
{
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __103__WFSetWallpaperActionUIKitUserInterface_showPreviewForConfiguration_selectedPoster_completionHandler___block_invoke_3;
  v17 = &unk_278C37220;
  v2 = *(a1 + 32);
  v18 = *(a1 + 40);
  v3 = [v2 if_firstObjectPassingTest:&v14];
  if (v3)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v4 = getPRSPosterUpdateSessionInfoClass_softClass;
    v27 = getPRSPosterUpdateSessionInfoClass_softClass;
    if (!getPRSPosterUpdateSessionInfoClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getPRSPosterUpdateSessionInfoClass_block_invoke;
      v22 = &unk_278C37610;
      v23 = &v24;
      __getPRSPosterUpdateSessionInfoClass_block_invoke(&v19);
      v4 = v25[3];
    }

    v5 = v4;
    _Block_object_dispose(&v24, 8);
    v6 = objc_alloc_init(v4);
    [v6 setShortcutsWallpaperConfiguration:{*(a1 + 48), v14, v15, v16, v17}];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v7 = getPRUISModalEntryPointEditingClass_softClass;
    v27 = getPRUISModalEntryPointEditingClass_softClass;
    if (!getPRUISModalEntryPointEditingClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getPRUISModalEntryPointEditingClass_block_invoke;
      v22 = &unk_278C37610;
      v23 = &v24;
      __getPRUISModalEntryPointEditingClass_block_invoke(&v19);
      v7 = v25[3];
    }

    v8 = v7;
    _Block_object_dispose(&v24, 8);
    v9 = [[v7 alloc] initWithServiceConfiguration:v3 updateSessionInfo:v6];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2050000000;
    v10 = getPRUISModalRemoteViewControllerClass_softClass;
    v27 = getPRUISModalRemoteViewControllerClass_softClass;
    if (!getPRUISModalRemoteViewControllerClass_softClass)
    {
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __getPRUISModalRemoteViewControllerClass_block_invoke;
      v22 = &unk_278C37610;
      v23 = &v24;
      __getPRUISModalRemoteViewControllerClass_block_invoke(&v19);
      v10 = v25[3];
    }

    v11 = v10;
    _Block_object_dispose(&v24, 8);
    v12 = [[v10 alloc] initWithEntryPoint:v9];
    [v12 setModalPresentationStyle:0];
    [v12 setDelegate:*(a1 + 56)];
    [*(a1 + 56) presentContent:v12];
  }

  else
  {
    v13 = *(a1 + 64);
    v6 = [MEMORY[0x277CE8888] invalidPosterError];
    (*(v13 + 16))(v13, v6);
  }
}

uint64_t __103__WFSetWallpaperActionUIKitUserInterface_showPreviewForConfiguration_selectedPoster_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 serverUUID];
  v4 = [*(a1 + 32) UUID];
  v5 = [v3 isEqual:v4];

  return v5;
}

@end