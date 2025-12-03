@interface RPBroadcastActivityViewController
+ (void)loadBroadcastActivityViewControllerWithPreferredExtension:(id)extension handler:(id)handler broadcastActivitiesNotInstalledAlertTitle:(id)title broadcastActivitiesNotInstalledAlertMessage:(id)message atPoint:(CGPoint)point fromWindow:(id)window;
+ (void)viewControllerForExtension:(id)extension inputItems:(id)items completionHandler:(id)handler;
- (id)delegate;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)extensionDidFinishWithLaunchURL:(id)l broadcastURL:(id)rL extensionBundleID:(id)d cancelled:(BOOL)cancelled;
- (void)setModalPresentationStyle:(int64_t)style;
@end

@implementation RPBroadcastActivityViewController

+ (void)loadBroadcastActivityViewControllerWithPreferredExtension:(id)extension handler:(id)handler broadcastActivitiesNotInstalledAlertTitle:(id)title broadcastActivitiesNotInstalledAlertMessage:(id)message atPoint:(CGPoint)point fromWindow:(id)window
{
  v57[2] = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  handlerCopy = handler;
  titleCopy = title;
  messageCopy = message;
  v13 = objc_alloc_init(RPBroadcastActivityViewController);
  [(RPBroadcastActivityViewController *)v13 setDidFinishHandler:handlerCopy];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v16 = [infoDictionary objectForKeyedSubscript:@"CFBundleIcons"];
  v17 = [v16 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];

  objc_opt_class();
  v46 = v13;
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 objectForKeyedSubscript:@"CFBundleIconFiles"];
    firstObject = [v18 firstObject];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = v17;
    }

    else
    {
      firstObject = 0;
    }
  }

  v56[0] = @"RPBroadcastExtensionKeyExtensionHostInfoAppName";
  _rpLocalizedAppName = [mainBundle _rpLocalizedAppName];
  v21 = _rpLocalizedAppName;
  if (_rpLocalizedAppName)
  {
    v22 = _rpLocalizedAppName;
  }

  else
  {
    v22 = &stru_284D763F8;
  }

  v56[1] = @"RPBroadcastExtensionKeyExtensionHostInfoBundleID";
  v57[0] = v22;
  bundleIdentifier = [mainBundle bundleIdentifier];
  v57[1] = bundleIdentifier;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v25 = [v24 mutableCopy];

  v44 = firstObject;
  v26 = [MEMORY[0x277D755B8] imageNamed:firstObject];
  v27 = v26;
  if (v26)
  {
    v28 = UIImagePNGRepresentation(v26);
    [v25 setObject:v28 forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppIcon"];
  }

  v30 = messageCopy;
  v29 = titleCopy;
  if (titleCopy)
  {
    [v25 setObject:titleCopy forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoBroadcastActivitiesNotInstalledAlertTitle"];
  }

  if (messageCopy)
  {
    [v25 setObject:messageCopy forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoBroadcastActivitiesNotInstalledAlertMessage"];
  }

  if (extensionCopy)
  {
    [v25 setObject:extensionCopy forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoPreferredExtension"];
  }

  v45 = v17;
  v53 = 0;
  v31 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.ReplayKit.RPBroadcastActivityViewControllerExtension" error:&v53];
  v32 = v53;
  if (v32)
  {
    handlerCopy[2](handlerCopy, 0, v32);
    v33 = v46;
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x277CCA9D8]);
    v35 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@"RPBroadcastExtensionKeyExtensionHostInfo" attributes:0];
    [v34 setAttributedTitle:v35];

    v36 = objc_alloc(MEMORY[0x277CCAA88]);
    v37 = [v36 initWithItem:v25 typeIdentifier:*MEMORY[0x277CC2050]];
    v55 = v37;
    [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
    v38 = v43 = extensionCopy;
    [v34 setAttachments:v38];

    v39 = objc_opt_class();
    v54 = v34;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __208__RPBroadcastActivityViewController_loadBroadcastActivityViewControllerWithPreferredExtension_handler_broadcastActivitiesNotInstalledAlertTitle_broadcastActivitiesNotInstalledAlertMessage_atPoint_fromWindow___block_invoke;
    v49[3] = &unk_278B62498;
    v33 = v46;
    v50 = v46;
    v51 = 0;
    v52 = handlerCopy;
    v41 = v39;
    v30 = messageCopy;
    [v41 viewControllerForExtension:v31 inputItems:v40 completionHandler:v49];

    extensionCopy = v43;
    v29 = titleCopy;
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __208__RPBroadcastActivityViewController_loadBroadcastActivityViewControllerWithPreferredExtension_handler_broadcastActivitiesNotInstalledAlertTitle_broadcastActivitiesNotInstalledAlertMessage_atPoint_fromWindow___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __208__RPBroadcastActivityViewController_loadBroadcastActivityViewControllerWithPreferredExtension_handler_broadcastActivitiesNotInstalledAlertTitle_broadcastActivitiesNotInstalledAlertMessage_atPoint_fromWindow___block_invoke_2;
  v5[3] = &unk_278B62470;
  v6 = v3;
  v7 = a1[4];
  v9 = a1[6];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __208__RPBroadcastActivityViewController_loadBroadcastActivityViewControllerWithPreferredExtension_handler_broadcastActivitiesNotInstalledAlertTitle_broadcastActivitiesNotInstalledAlertMessage_atPoint_fromWindow___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v19 = *(a1 + 32);
  [v2 setModalPresentationStyle:6];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [*(a1 + 40) view];
  [v4 setBackgroundColor:v3];

  [*(a1 + 40) setHostViewController:v19];
  [v19 setBroadcastActivityViewController:*(a1 + 40)];
  v5 = [*(a1 + 40) view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [v19 view];
  [v14 setFrame:{v7, v9, v11, v13}];

  [*(a1 + 40) addChildViewController:v19];
  v15 = [*(a1 + 40) view];
  v16 = [v19 view];
  [v15 addSubview:v16];

  [v19 didMoveToParentViewController:*(a1 + 40)];
  v17 = *(a1 + 48);
  v18 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
}

+ (void)viewControllerForExtension:(id)extension inputItems:(id)items completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  if (extensionCopy)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __93__RPBroadcastActivityViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke;
    v9[3] = &unk_278B624C0;
    v10 = extensionCopy;
    v11 = handlerCopy;
    [v10 instantiateViewControllerWithInputItems:items connectionHandler:v9];
  }
}

void __93__RPBroadcastActivityViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = v7;
  v9 = [*(a1 + 32) _extensionContextForUUID:a2];
  [v9 setHostViewController:v11];
  if (v8)
  {
    NSLog(&cfstr_ErrorInstantia_0.isa, [v8 code]);
  }

  else
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v11);
    }
  }
}

- (void)extensionDidFinishWithLaunchURL:(id)l broadcastURL:(id)rL extensionBundleID:(id)d cancelled:(BOOL)cancelled
{
  lCopy = l;
  rLCopy = rL;
  dCopy = d;
  if (lCopy)
  {
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    [mEMORY[0x277D75128] openURL:lCopy options:MEMORY[0x277CBEC10] completionHandler:0];
  }

  delegate = [(RPBroadcastActivityViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    if (cancelled)
    {
      delegate2 = [(RPBroadcastActivityViewController *)self delegate];
      v16 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5801 userInfo:MEMORY[0x277CBEC10]];
      delegate3 = delegate2;
      selfCopy2 = self;
      v19 = 0;
      v20 = v16;
    }

    else
    {
      delegate2 = [[RPBroadcastController alloc] initWithExtensionBundleID:dCopy broadcastURL:rLCopy];
      delegate3 = [(RPBroadcastActivityViewController *)self delegate];
      v16 = delegate3;
      selfCopy2 = self;
      v19 = delegate2;
      v20 = 0;
    }

    [delegate3 broadcastActivityViewController:selfCopy2 didFinishWithBroadcastController:v19 error:v20];
  }
}

- (void)setModalPresentationStyle:(int64_t)style
{
  if (style == 7)
  {
    v4 = [objc_alloc(MEMORY[0x277D758A8]) initWithPresentedViewController:self->_hostViewController presentingViewController:self];
    [(RPBroadcastActivityViewController *)self setPopoverPresentationControllerProxy:v4];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = RPBroadcastActivityViewController;
    [(RPBroadcastActivityViewController *)&v5 setModalPresentationStyle:?];
  }
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__RPBroadcastActivityViewController_dismissViewControllerAnimated_completion___block_invoke;
  v7[3] = &unk_278B61CF8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

id __78__RPBroadcastActivityViewController_dismissViewControllerAnimated_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = RPBroadcastActivityViewController;
  return objc_msgSendSuper2(&v3, sel_dismissViewControllerAnimated_completion_, 0, v1);
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end