@interface RPBroadcastActivityViewController
+ (void)loadBroadcastActivityViewControllerWithPreferredExtension:(id)a3 handler:(id)a4 broadcastActivitiesNotInstalledAlertTitle:(id)a5 broadcastActivitiesNotInstalledAlertMessage:(id)a6 atPoint:(CGPoint)a7 fromWindow:(id)a8;
+ (void)viewControllerForExtension:(id)a3 inputItems:(id)a4 completionHandler:(id)a5;
- (id)delegate;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)extensionDidFinishWithLaunchURL:(id)a3 broadcastURL:(id)a4 extensionBundleID:(id)a5 cancelled:(BOOL)a6;
- (void)setModalPresentationStyle:(int64_t)a3;
@end

@implementation RPBroadcastActivityViewController

+ (void)loadBroadcastActivityViewControllerWithPreferredExtension:(id)a3 handler:(id)a4 broadcastActivitiesNotInstalledAlertTitle:(id)a5 broadcastActivitiesNotInstalledAlertMessage:(id)a6 atPoint:(CGPoint)a7 fromWindow:(id)a8
{
  v57[2] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v48 = a5;
  v47 = a6;
  v13 = objc_alloc_init(RPBroadcastActivityViewController);
  [(RPBroadcastActivityViewController *)v13 setDidFinishHandler:v12];
  v14 = [MEMORY[0x277CCA8D8] mainBundle];
  v15 = [v14 infoDictionary];
  v16 = [v15 objectForKeyedSubscript:@"CFBundleIcons"];
  v17 = [v16 objectForKeyedSubscript:@"CFBundlePrimaryIcon"];

  objc_opt_class();
  v46 = v13;
  if (objc_opt_isKindOfClass())
  {
    v18 = [v17 objectForKeyedSubscript:@"CFBundleIconFiles"];
    v19 = [v18 firstObject];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }
  }

  v56[0] = @"RPBroadcastExtensionKeyExtensionHostInfoAppName";
  v20 = [v14 _rpLocalizedAppName];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = &stru_284D763F8;
  }

  v56[1] = @"RPBroadcastExtensionKeyExtensionHostInfoBundleID";
  v57[0] = v22;
  v23 = [v14 bundleIdentifier];
  v57[1] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v25 = [v24 mutableCopy];

  v44 = v19;
  v26 = [MEMORY[0x277D755B8] imageNamed:v19];
  v27 = v26;
  if (v26)
  {
    v28 = UIImagePNGRepresentation(v26);
    [v25 setObject:v28 forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoAppIcon"];
  }

  v30 = v47;
  v29 = v48;
  if (v48)
  {
    [v25 setObject:v48 forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoBroadcastActivitiesNotInstalledAlertTitle"];
  }

  if (v47)
  {
    [v25 setObject:v47 forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoBroadcastActivitiesNotInstalledAlertMessage"];
  }

  if (v11)
  {
    [v25 setObject:v11 forKeyedSubscript:@"RPBroadcastExtensionKeyExtensionHostInfoPreferredExtension"];
  }

  v45 = v17;
  v53 = 0;
  v31 = [MEMORY[0x277CCA9C8] extensionWithIdentifier:@"com.apple.ReplayKit.RPBroadcastActivityViewControllerExtension" error:&v53];
  v32 = v53;
  if (v32)
  {
    v12[2](v12, 0, v32);
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
    v38 = v43 = v11;
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
    v52 = v12;
    v41 = v39;
    v30 = v47;
    [v41 viewControllerForExtension:v31 inputItems:v40 completionHandler:v49];

    v11 = v43;
    v29 = v48;
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

+ (void)viewControllerForExtension:(id)a3 inputItems:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __93__RPBroadcastActivityViewController_viewControllerForExtension_inputItems_completionHandler___block_invoke;
    v9[3] = &unk_278B624C0;
    v10 = v7;
    v11 = v8;
    [v10 instantiateViewControllerWithInputItems:a4 connectionHandler:v9];
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

- (void)extensionDidFinishWithLaunchURL:(id)a3 broadcastURL:(id)a4 extensionBundleID:(id)a5 cancelled:(BOOL)a6
{
  v21 = a3;
  v10 = a4;
  v11 = a5;
  if (v21)
  {
    v12 = [MEMORY[0x277D75128] sharedApplication];
    [v12 openURL:v21 options:MEMORY[0x277CBEC10] completionHandler:0];
  }

  v13 = [(RPBroadcastActivityViewController *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    if (a6)
    {
      v15 = [(RPBroadcastActivityViewController *)self delegate];
      v16 = [MEMORY[0x277CCA9B8] _rpUserErrorForCode:-5801 userInfo:MEMORY[0x277CBEC10]];
      v17 = v15;
      v18 = self;
      v19 = 0;
      v20 = v16;
    }

    else
    {
      v15 = [[RPBroadcastController alloc] initWithExtensionBundleID:v11 broadcastURL:v10];
      v17 = [(RPBroadcastActivityViewController *)self delegate];
      v16 = v17;
      v18 = self;
      v19 = v15;
      v20 = 0;
    }

    [v17 broadcastActivityViewController:v18 didFinishWithBroadcastController:v19 error:v20];
  }
}

- (void)setModalPresentationStyle:(int64_t)a3
{
  if (a3 == 7)
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

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__RPBroadcastActivityViewController_dismissViewControllerAnimated_completion___block_invoke;
  v7[3] = &unk_278B61CF8;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
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