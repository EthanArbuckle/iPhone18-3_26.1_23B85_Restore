@interface MFMailComposeInternalViewController
+ (BOOL)_canSendMailInNewScene;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (MFMailComposeInternalViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (MFMailComposeViewControllerDelegate)mailComposeDelegate;
- (id)addAttachmentData:(id)a3 mimeType:(id)a4 fileName:(id)a5;
- (id)addAttachmentFileURL:(id)a3 mimeType:(id)a4;
- (id)addAttachmentItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5;
- (id)addContentVariationWithName:(id)a3;
- (id)placeholderForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6 proxy:(id)a7;
- (id)securityScopeForURL:(id)a3 proxy:(id)a4;
- (void)_beginDelayingCompositionPresenation;
- (void)_cancelComposition:(id)a3;
- (void)_cancelRemoteServiceViewControllerRequest;
- (void)_configureRemoteViewContoller;
- (void)_didEndDelayingCompositionPresentation;
- (void)_endDelayingCompositionPresentation;
- (void)_finishServiceViewControllerRequestWithSuccess:(BOOL)a3;
- (void)_loadContentViewControllerForcingPlaceholder:(BOOL)a3;
- (void)_notifyBodyDidFinishLoadingWithResult:(BOOL)a3;
- (void)_notifyCompositionDidFinish;
- (void)_presentComposeInNewWindowFromComposeViewController:(id)a3 completion:(id)a4;
- (void)_presentComposeInNewWindowFromComposeViewController:(id)a3 completion:(id)a4 dissmisal:(id)a5;
- (void)_processAttachmentsViaProxy:(id)a3 withHandler:(id)a4;
- (void)_serviceViewControllerReady:(id)a3 error:(id)a4;
- (void)_setCKShare:(id)a3 setupContainerInfo:(id)a4 permissionType:(int64_t)a5 allowOthersToInvite:(BOOL)a6;
- (void)_setCKShareURLWrapper:(id)a3 share:(id)a4 permissionType:(int64_t)a5 allowOthersToInvite:(BOOL)a6;
- (void)_setPlaceHolderSubject:(id)a3;
- (void)autosaveWithHandler:(id)a3;
- (void)composeFinishedWithResult:(int64_t)a3;
- (void)composeShouldSendMail:(id)a3 toRecipients:(id)a4 completion:(id)a5;
- (void)compositionFinishedWithResult:(int64_t)a3 error:(id)a4;
- (void)compositionRequestsSendWithBody:(id)a3 recipients:(id)a4 completion:(id)a5;
- (void)compositionViewServiceTerminatedWithError:(id)a3;
- (void)dealloc;
- (void)finalizeCompositionValues;
- (void)loadView;
- (void)requestFramesForAttachmentsWithIdentifiers:(id)a3 resultHandler:(id)a4;
- (void)setContentVisible:(BOOL)a3;
- (void)setDefaultContentVariation:(id)a3;
- (void)setMailComposeDelegate:(id)a3;
- (void)setMessageBody:(id)a3 isHTML:(BOOL)a4;
- (void)setSubject:(id)a3;
- (void)setURL:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)willMoveToParentViewController:(id)a3;
@end

@implementation MFMailComposeInternalViewController

- (MFMailComposeInternalViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = MFMailComposeInternalViewController;
  v8 = [(MFMailComposeInternalViewController *)&v17 initWithNibName:v6 bundle:v7];
  v9 = v8;
  if (v8)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__MFMailComposeInternalViewController_initWithNibName_bundle___block_invoke;
    v15[3] = &unk_1E806F618;
    v10 = v8;
    v16 = v10;
    v11 = [MFMailComposeRemoteViewController requestViewControllerWithConnectionHandler:v15];
    objc_storeStrong(&v10->_cancellationInvocation, v11);
    v10->_defaultContentVariationIndex = 0x7FFFFFFFFFFFFFFFLL;
    v12 = objc_alloc_init(MFMailCompositionValues);
    compositionValues = v10->_compositionValues;
    v10->_compositionValues = v12;
  }

  return v9;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  [(MFMailComposeRemoteViewController *)self->_serviceViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = MFMailComposeInternalViewController;
  [(MFMailComposeInternalViewController *)&v3 dealloc];
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = MFMailComposeInternalViewController;
  [(MFMailComposeInternalViewController *)&v3 loadView];
  [(MFMailComposeInternalViewController *)self _loadContentViewControllerForcingPlaceholder:0];
}

- (void)_loadContentViewControllerForcingPlaceholder:(BOOL)a3
{
  if (([(MFMailComposeInternalViewController *)self isViewLoaded]& 1) != 0)
  {
    if ((*(self + 1096) & 8) == 0)
    {
      goto LABEL_3;
    }

    p_serviceViewController = &self->_serviceViewController;
    serviceViewController = self->_serviceViewController;
    if (serviceViewController && !a3)
    {
      if (!self->_placeholderViewController)
      {
        v5 = 0;
        v10 = 1;
        goto LABEL_18;
      }

      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BE819000, v8, OS_LOG_TYPE_INFO, "#CompositionServices Removing placeholder view controller", buf, 2u);
      }

      v5 = self->_placeholderViewController;
      placeholderViewController = self->_placeholderViewController;
      self->_placeholderViewController = 0;

      v10 = 1;
      goto LABEL_17;
    }

    if (serviceViewController)
    {
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v27 = 0;
        _os_log_impl(&dword_1BE819000, v11, OS_LOG_TYPE_INFO, "#CompositionServices Removing service view controller", v27, 2u);
      }

      v5 = *p_serviceViewController;
      v12 = *p_serviceViewController;
      *p_serviceViewController = 0;
    }

    else
    {
LABEL_3:
      v5 = 0;
    }

    p_serviceViewController = &self->_placeholderViewController;
    serviceViewController = self->_placeholderViewController;
    if (serviceViewController)
    {
      v10 = 0;
LABEL_18:
      v15 = serviceViewController;
      if (v5 && ([(MFMailComposePlaceholderViewController *)v5 parentViewController], v16 = objc_claimAutoreleasedReturnValue(), v16, v16 == self))
      {
        [(MFMailComposePlaceholderViewController *)v5 willMoveToParentViewController:0];
        v24 = [(MFMailComposePlaceholderViewController *)v5 view];
        v25 = [v24 superview];
        v26 = [(MFMailComposeInternalViewController *)self view];

        if (v25 == v26)
        {
          [v24 removeFromSuperview];
        }

        [(MFMailComposePlaceholderViewController *)v5 removeFromParentViewController];

        if (!v15)
        {
          goto LABEL_25;
        }
      }

      else if (!v15)
      {
LABEL_25:
        v23 = [(MFMailComposeInternalViewController *)self navigationController];
        [v23 setNavigationBarHidden:v10 animated:0];

        return;
      }

      v17 = [v15 parentViewController];

      if (v17 != self)
      {
        [(MFMailComposeInternalViewController *)self addChildViewController:v15];
        v18 = [v15 view];
        v19 = [v18 superview];
        v20 = [(MFMailComposeInternalViewController *)self view];

        if (v19 != v20)
        {
          v21 = [(MFMailComposeInternalViewController *)self view];
          [v21 addSubview:v18];

          v22 = [(MFMailComposeInternalViewController *)self view];
          [v22 bounds];
          [v18 setFrame:?];
        }

        [v15 didMoveToParentViewController:self];
      }

      goto LABEL_25;
    }

    v13 = objc_alloc_init(MFMailComposePlaceholderViewController);
    v14 = *p_serviceViewController;
    *p_serviceViewController = v13;

    [*p_serviceViewController setSubject:self->_placeholderSubject];
    v10 = 0;
LABEL_17:
    serviceViewController = *p_serviceViewController;
    goto LABEL_18;
  }
}

- (void)_setPlaceHolderSubject:(id)a3
{
  v4 = a3;
  if (self->_placeholderSubject != v4)
  {
    v7 = v4;
    v5 = [(NSString *)v4 copy];
    placeholderSubject = self->_placeholderSubject;
    self->_placeholderSubject = v5;

    v4 = v7;
  }
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = MFMailComposeInternalViewController;
  [(MFMailComposeInternalViewController *)&v20 viewDidLoad];
  v3 = [(MFMailComposeInternalViewController *)self navigationItem];
  if ([MEMORY[0x1E69DC938] mf_isSmallPhone])
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAB8]);
    v5 = [MEMORY[0x1E69DC888] whiteColor];
    v6 = [v4 _initWithFilledSystemImageNamed:@"arrow.up.circle.fill" fillColor:v5];

    v7 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v6 style:0 target:0 action:0];
    [v7 setEnabled:0];
    v8 = [(MFMailComposeInternalViewController *)self navigationItem];
    [v8 setRightBarButtonItem:v7];
  }

  else
  {
    v9 = [(MFMailComposeInternalViewController *)self navigationController];
    v10 = [v9 navigationBar];
    [v10 setPrefersLargeTitles:1];

    [v3 setLargeTitleDisplayMode:1];
    v6 = [MFComposeSendAccessoryButton buttonWithType:0];
    [v3 _setLargeTitleAccessoryView:v6 alignToBaseline:0];
  }

  v11 = objc_alloc(MEMORY[0x1E69DC708]);
  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CANCEL" value:&stru_1F3CF3758 table:@"Main"];
  v14 = [v11 initWithTitle:v13 style:0 target:self action:sel__cancelComposition_];

  v15 = [(MFMailComposeInternalViewController *)self navigationItem];
  [v15 setLeftBarButtonItem:v14];

  if ([(NSString *)self->_placeholderSubject length])
  {
    placeholderSubject = self->_placeholderSubject;
    v17 = [(MFMailComposeInternalViewController *)self navigationItem];
    [v17 setTitle:placeholderSubject];
  }

  else
  {
    if ([MEMORY[0x1E69DC938] mf_isPadIdiom])
    {
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      [v17 localizedStringForKey:@"NEW_MESSAGE_LONG" value:&stru_1F3CF3758 table:@"Main"];
    }

    else
    {
      v17 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      [v17 localizedStringForKey:@"NEW_MESSAGE" value:&stru_1F3CF3758 table:@"Main"];
    }
    v18 = ;
    v19 = [(MFMailComposeInternalViewController *)self navigationItem];
    [v19 setTitle:v18];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MFMailComposeInternalViewController;
  [(MFMailComposeInternalViewController *)&v4 viewWillAppear:a3];
  if ((*(self + 1096) & 0x10) == 0)
  {
    *(self + 1096) |= 0x10u;
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = MFMailComposeInternalViewController;
  [(MFMailComposeInternalViewController *)&v6 viewDidAppear:a3];
  if ((*(self + 1096) & 0x20) == 0)
  {
    *(self + 1096) &= ~0x10u;
    *(self + 1096) |= 0x20u;
    [(MFMailComposeInternalViewController *)self _loadContentViewControllerForcingPlaceholder:0];
    if ((*(self + 1096) & 0x40) != 0)
    {
      [(MFMailComposeInternalViewController *)self _notifyCompositionDidFinish];
    }

    v4 = [MEMORY[0x1E69DC668] sharedApplication];
    v5 = [v4 isPPTAvailable];

    if (v5)
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_21);
    }
  }
}

void __53__MFMailComposeInternalViewController_viewDidAppear___block_invoke()
{
  v0 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v0 postNotificationName:@"MFMailShareComposeViewDidShow" object:0 userInfo:0 deliverImmediately:1];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  if (![MEMORY[0x1E69DC938] mf_isPadIdiom])
  {
    return 1;
  }

  v5 = [(MFMailComposeInternalViewController *)self parentViewController];
  v6 = [v5 shouldAutorotateToInterfaceOrientation:a3];

  return v6;
}

- (void)willMoveToParentViewController:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFMailComposeInternalViewController;
  [(MFMailComposeInternalViewController *)&v5 willMoveToParentViewController:v4];
  if (v4 && (*(self + 1096) & 8) == 0)
  {
    [(MFMailComposeInternalViewController *)self _beginDelayingCompositionPresenation];
  }
}

- (void)_beginDelayingCompositionPresenation
{
  if ((*(self + 1096) & 1) == 0)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_INFO, "#CompositionServices Began delaying composition presentation", buf, 2u);
    }

    v4 = [(MFMailComposeInternalViewController *)self navigationController];
    v5 = v4;
    if (v4)
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __75__MFMailComposeInternalViewController__beginDelayingCompositionPresenation__block_invoke;
      v6[3] = &unk_1E806F640;
      v6[4] = self;
      v6[5] = 0x3FE6666666666666;
      [v4 _beginDelayingPresentation:v6 cancellationHandler:0.7];
      self->_presentationDelayBeganTimestamp = CFAbsoluteTimeGetCurrent();
      *(self + 1096) |= 1u;
    }
  }
}

uint64_t __75__MFMailComposeInternalViewController__beginDelayingCompositionPresenation__block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 40);
      v6 = 134217984;
      v7 = v4;
      _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_INFO, "#CompositionServices Delayed presentation timed out (%f.1 seconds)", &v6, 0xCu);
    }
  }

  [*(a1 + 32) _didEndDelayingCompositionPresentation];
  return 1;
}

- (void)_endDelayingCompositionPresentation
{
  if ((*(self + 1096) & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:324 description:@"should have delayed presentation"];
  }

  if ((*(self + 1096) & 2) == 0)
  {
    v4 = [(MFMailComposeInternalViewController *)self navigationController];
    if (v4)
    {
      [v4 _endDelayingPresentation];
    }

    [(MFMailComposeInternalViewController *)self _didEndDelayingCompositionPresentation];
  }
}

- (void)_didEndDelayingCompositionPresentation
{
  v9 = *MEMORY[0x1E69E9840];
  if ((*(self + 1096) & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:339 description:{@"Invalid parameter not satisfying: %@", @"!_didEndDelayedPresentation"}];
  }

  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = CFAbsoluteTimeGetCurrent() - self->_presentationDelayBeganTimestamp;
    *buf = 134217984;
    v8 = v4;
    _os_log_impl(&dword_1BE819000, v3, OS_LOG_TYPE_INFO, "#CompositionServices Ended delaying composition presentation (%.2f seconds)", buf, 0xCu);
  }

  *(self + 1096) |= 2u;
}

- (void)_serviceViewControllerReady:(id)a3 error:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (self->_serviceViewController)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:346 description:{@"Invalid parameter not satisfying: %@", @"!_serviceViewController"}];
  }

  cancellationInvocation = self->_cancellationInvocation;
  self->_cancellationInvocation = 0;

  if (v9)
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [v9 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      [MFMailComposeInternalViewController _serviceViewControllerReady:error:];
    }
  }

  if (v8)
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1BE819000, v12, OS_LOG_TYPE_INFO, "#CompositionServices Connected to view service: %@", buf, 0xCu);
    }

    objc_storeStrong(&self->_serviceViewController, a3);
    [(MFMailComposeRemoteViewController *)self->_serviceViewController setDelegate:self];
    if ((*(self + 1096) & 4) != 0)
    {
      [(MFMailComposeInternalViewController *)self _configureRemoteViewContoller];
    }
  }

  else
  {
    [(MFMailComposeInternalViewController *)self _finishServiceViewControllerRequestWithSuccess:0];
  }
}

- (id)placeholderForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6 proxy:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x1E699B868] promise];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __96__MFMailComposeInternalViewController_placeholderForFileName_fileSize_mimeType_contentID_proxy___block_invoke;
  v20[3] = &unk_1E806EA08;
  v16 = v15;
  v21 = v16;
  [v14 serializedPlaceholderForFileName:v11 fileSize:a4 mimeType:v12 contentID:v13 withReply:v20];
  v17 = [v16 future];
  v18 = [v17 result:0];

  return v18;
}

void __96__MFMailComposeInternalViewController_placeholderForFileName_fileSize_mimeType_contentID_proxy___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69B15D8] placeholderFromSerializedRepresentation:a2];
  [*(a1 + 32) finishWithResult:?];
}

- (id)securityScopeForURL:(id)a3 proxy:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E699B868] promise];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __65__MFMailComposeInternalViewController_securityScopeForURL_proxy___block_invoke;
  v16 = &unk_1E806F668;
  v8 = v5;
  v17 = v8;
  v9 = v7;
  v18 = v9;
  [v6 securityScopeForURL:v8 withReply:&v13];
  v10 = [v9 future];
  v11 = [v10 result:0];

  return v11;
}

void __65__MFMailComposeInternalViewController_securityScopeForURL_proxy___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E69B15E8] securityScopedURL:*(a1 + 32) withToken:a2];
  [*(a1 + 40) finishWithResult:?];
}

- (void)_processAttachmentsViaProxy:(id)a3 withHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__MFMailComposeInternalViewController__processAttachmentsViaProxy_withHandler___block_invoke;
  block[3] = &unk_1E806CA10;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

void __79__MFMailComposeInternalViewController__processAttachmentsViaProxy_withHandler___block_invoke(void *a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v47 = [MEMORY[0x1E69B15B8] capabilitiesDictionary];
  v1 = [v47 objectForKeyedSubscript:*MEMORY[0x1E69B1550]];
  v2 = [v1 BOOLValue];

  v3 = [v47 objectForKeyedSubscript:*MEMORY[0x1E69B1548]];
  v4 = [v3 integerValue];

  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__MFMailComposeInternalViewController__processAttachmentsViaProxy_withHandler___block_invoke_2;
  aBlock[3] = &unk_1E806F690;
  v57 = v2;
  aBlock[4] = &v58;
  aBlock[5] = v4;
  v49 = _Block_copy(aBlock);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = *(a1[4] + 1056);
  v5 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v5)
  {
    v50 = *v53;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v53 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v52 + 1) + 8 * i);
        v8 = [v7 fileSize];
        v9 = [v7 fileURL];

        if (v9)
        {
          v10 = MEMORY[0x1E69B15E8];
          v11 = [v7 fileURL];
          v12 = [v10 securityScopedURL:v11];

          if (v49[2](v49, v8))
          {
            v13 = [v12 startReadAccess];
            v14 = a1[4];
            v15 = [v13 lastPathComponent];
            v16 = [v7 mimeType];
            v17 = [v7 identifier];
            v18 = [v14 placeholderForFileName:v15 fileSize:v8 mimeType:v16 contentID:v17 proxy:a1[5]];

            v19 = a1[4];
            v20 = [v18 fileURL];
            v21 = [v19 securityScopeForURL:v20 proxy:a1[5]];

            v22 = [v21 startWriteAccess];
            [MEMORY[0x1E69B15D8] cloneFileAtURL:v13 toPlaceholderURL:v22];
            v23 = a1[5];
            v24 = [v18 serializedRepresentation];
            [v23 addAttachmentWithPlaceholderData:v24];

            [v12 stopAccess];
            [v21 stopAccess];
          }

          else
          {
            v29 = [v12 startReadAccess];
            v30 = [v12 data];
            v31 = a1[5];
            v32 = [v7 mimeType];
            v33 = [v29 lastPathComponent];
            v34 = [v7 identifier];
            [v31 addAttachmentWithData:v30 mimeType:v32 fileName:v33 hostIdentifier:v34];

            [v12 stopAccess];
            v21 = 0;
          }
        }

        else
        {
          v25 = [v7 itemProvider];

          if (v25)
          {
            v26 = a1[5];
            v12 = [v7 itemProvider];
            v21 = [v7 mimeType];
            v27 = [v7 fileName];
            v28 = [v7 identifier];
            [v26 addAttachmentWithItemProvider:v12 mimeType:v21 filename:v27 hostIdentifier:v28];
LABEL_17:

            goto LABEL_18;
          }

          if (!v49[2](v49, v8))
          {
            v46 = a1[5];
            v12 = [v7 data];
            v21 = [v7 mimeType];
            v27 = [v7 fileName];
            v28 = [v7 identifier];
            [v46 addAttachmentWithData:v12 mimeType:v21 fileName:v27 hostIdentifier:v28];
            goto LABEL_17;
          }

          v35 = a1[4];
          v36 = [v7 fileName];
          v37 = [v7 mimeType];
          v38 = [v7 identifier];
          v12 = [v35 placeholderForFileName:v36 fileSize:v8 mimeType:v37 contentID:v38 proxy:a1[5]];

          v39 = a1[4];
          v40 = [v12 fileURL];
          v21 = [v39 securityScopeForURL:v40 proxy:a1[5]];

          v41 = [v21 startWriteAccess];
          v42 = MEMORY[0x1E69B15D8];
          v43 = [v7 data];
          LODWORD(v42) = [v42 writeData:v43 forURL:v41];

          if (v42)
          {
            v44 = a1[5];
            v45 = [v12 serializedRepresentation];
            [v44 addAttachmentWithPlaceholderData:v45];
          }

          [v21 stopAccess];
        }

LABEL_18:

        v59[3] += v8;
      }

      v5 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v5);
  }

  (*(a1[6] + 16))();
  _Block_object_dispose(&v58, 8);
}

BOOL __79__MFMailComposeInternalViewController__processAttachmentsViaProxy_withHandler___block_invoke_2(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  if (*(a1 + 40) >= a2)
  {
    return *(*(*(a1 + 32) + 8) + 24) + a2 > 0x500000;
  }

  return 1;
}

- (void)_configureRemoteViewContoller
{
  if ((*(self + 1096) & 4) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:485 description:{@"Invalid parameter not satisfying: %@", @"_compositionValuesAreFinalized"}];
  }

  if ((*(self + 1096) & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:486 description:{@"Invalid parameter not satisfying: %@", @"!_remoteViewControllerIsConfigured"}];
  }

  serviceViewController = self->_serviceViewController;
  if (serviceViewController)
  {
    v5 = [(_UIRemoteViewController *)serviceViewController serviceViewControllerProxy];
    v6 = [(MFMailCompositionValues *)self->_compositionValues dictionaryRepresentation];
    [v5 setCompositionValues:v6];

    v7 = [(MFMailComposeInternalViewController *)self navigationController];
    v8 = [v7 mf_dataForUICustomization];
    [v5 setUICustomizationData:v8];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__MFMailComposeInternalViewController__configureRemoteViewContoller__block_invoke;
    v11[3] = &unk_1E806C570;
    v11[4] = self;
    [(MFMailComposeInternalViewController *)self _processAttachmentsViaProxy:v5 withHandler:v11];
  }
}

void __68__MFMailComposeInternalViewController__configureRemoteViewContoller__block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__MFMailComposeInternalViewController__configureRemoteViewContoller__block_invoke_2;
  aBlock[3] = &unk_1E806EA30;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = [*(*(a1 + 32) + 1016) serviceViewControllerProxyWithErrorHandler:v2];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__MFMailComposeInternalViewController__configureRemoteViewContoller__block_invoke_2_120;
  v5[3] = &unk_1E806D728;
  v4 = v2;
  v6 = v4;
  [v3 commitCompositionValuesWithReply:v5];
}

void __68__MFMailComposeInternalViewController__configureRemoteViewContoller__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = "succeeded";
    if (v3)
    {
      v5 = "failed";
    }

    v6 = "";
    if (v3)
    {
      v6 = " with error: ";
    }

    *buf = 136315650;
    v11 = v5;
    v7 = &stru_1F3CF3758;
    if (v3)
    {
      v7 = v3;
    }

    v12 = 2080;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_INFO, "#CompositionServices Committing composition values %s%s%@", buf, 0x20u);
  }

  *(*(a1 + 32) + 1096) |= 8u;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MFMailComposeInternalViewController__configureRemoteViewContoller__block_invoke_118;
  v8[3] = &unk_1E806CDA8;
  v8[4] = *(a1 + 32);
  v9 = v3 != 0;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

- (void)_finishServiceViewControllerRequestWithSuccess:(BOOL)a3
{
  if (a3)
  {
    if ((*(self + 1096) & 8) == 0)
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"_remoteViewControllerIsConfigured"}];
    }

    [(MFMailComposeInternalViewController *)self _notifyBodyDidFinishLoadingWithResult:1];
  }

  else
  {
    [(MFMailComposeInternalViewController *)self _notifyBodyDidFinishLoadingWithResult:?];
    [(MFMailComposeInternalViewController *)self compositionFinishedWithResult:0 error:0];
  }

  if ((*(self + 1096) & 0x10) == 0)
  {
    [(MFMailComposeInternalViewController *)self _loadContentViewControllerForcingPlaceholder:0];
  }

  [(MFMailComposeInternalViewController *)self _endDelayingCompositionPresentation];
}

- (void)_cancelComposition:(id)a3
{
  [(MFMailComposeInternalViewController *)self _cancelRemoteServiceViewControllerRequest];

  [(MFMailComposeInternalViewController *)self compositionFinishedWithResult:0 error:0];
}

- (void)_cancelRemoteServiceViewControllerRequest
{
  cancellationInvocation = self->_cancellationInvocation;
  if (cancellationInvocation)
  {
    v4 = [(_UIAsyncInvocation *)cancellationInvocation invoke];
    v5 = self->_cancellationInvocation;
    self->_cancellationInvocation = 0;
  }
}

- (void)compositionFinishedWithResult:(int64_t)a3 error:(id)a4
{
  v9 = a4;
  if ((*(self + 1096) & 0x40) == 0)
  {
    *(self + 1096) |= 0x40u;
    self->_composeResult = a3;
    objc_storeStrong(&self->_composeResultError, a4);
    v7 = [MEMORY[0x1E69DC938] mf_isPadIdiom] ^ 1;
    if (a3 != 2)
    {
      LOBYTE(v7) = 1;
    }

    if ((v7 & 1) == 0)
    {
      v8 = [(MFMailComposeInternalViewController *)self parentViewController];
      [v8 setModalTransitionStyle:13];
    }

    if ((*(self + 1096) & 0x20) != 0)
    {
      [(MFMailComposeInternalViewController *)self _notifyCompositionDidFinish];
    }
  }
}

- (void)compositionRequestsSendWithBody:(id)a3 recipients:(id)a4 completion:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeDelegate);
  if (objc_opt_respondsToSelector())
  {
    v11 = [(MFMailComposeInternalViewController *)self navigationController];
    [WeakRetained mailComposeController:v11 shouldSendMail:v12 toRecipients:v8 completion:v9];
  }

  else
  {
    v9[2](v9, 1);
  }
}

- (void)setMailComposeDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_mailComposeDelegate, obj);
    if (objc_opt_respondsToSelector())
    {
      v6 = 0x80;
    }

    else
    {
      v6 = 0;
    }

    *(self + 1096) = v6 & 0x80 | *(self + 1096) & 0x7F;
    v5 = obj;
  }
}

- (void)_notifyCompositionDidFinish
{
  v18 = *MEMORY[0x1E69E9840];
  if ((*(self + 1096) & 0x40) == 0)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:589 description:{@"Invalid parameter not satisfying: %@", @"_didFinish"}];
  }

  if ((*(self + 1096) & 0x20) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:590 description:{@"Invalid parameter not satisfying: %@", @"_didAppear"}];
  }

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    composeResult = self->_composeResult;
    composeResultError = self->_composeResultError;
    v7 = @", error: ";
    if (!composeResultError)
    {
      v7 = &stru_1F3CF3758;
    }

    *buf = 134218498;
    if (!composeResultError)
    {
      composeResultError = &stru_1F3CF3758;
    }

    v13 = composeResult;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = composeResultError;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_INFO, "#CompositionServices Notifying delegate that composition finished with result %ld%@%@", buf, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_mailComposeDelegate);
  if (objc_opt_respondsToSelector())
  {
    v9 = [(MFMailComposeInternalViewController *)self navigationController];
    [WeakRetained mailComposeController:v9 didFinishWithResult:self->_composeResult error:self->_composeResultError];
  }
}

- (void)_notifyBodyDidFinishLoadingWithResult:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x1E69E9840];
  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = "DID NOT";
    if (v3)
    {
      v6 = "DID";
    }

    v9 = 136315138;
    v10 = v6;
    _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_INFO, "#CompositionServices Notifying delegate that composition message body %s finish loading", &v9, 0xCu);
  }

  if (*(self + 1096) < 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_mailComposeDelegate);
    v8 = [(MFMailComposeInternalViewController *)self navigationController];
    [WeakRetained mailComposeController:v8 bodyFinishedLoadingWithResult:v3 error:0];
  }
}

- (void)compositionViewServiceTerminatedWithError:(id)a3
{
  [(MFMailComposeInternalViewController *)self _cancelRemoteServiceViewControllerRequest];
  [(MFMailComposeInternalViewController *)self _loadContentViewControllerForcingPlaceholder:1];

  [(MFMailComposeInternalViewController *)self compositionFinishedWithResult:0 error:0];
}

- (void)setURL:(id)a3
{
  v7 = a3;
  [(MFMailCompositionValues *)self->_compositionValues setMailtoURL:?];
  v4 = [objc_alloc(MEMORY[0x1E699AD10]) initWithURL:v7];
  v5 = [v4 subject];

  if (v5)
  {
    v6 = [v4 subject];
    [(MFMailComposeInternalViewController *)self _setPlaceHolderSubject:v6];
  }
}

- (void)setSubject:(id)a3
{
  v4 = [a3 copy];
  [(MFMailCompositionValues *)self->_compositionValues setSubject:?];
  [(MFMailComposeInternalViewController *)self _setPlaceHolderSubject:v4];
}

- (void)setMessageBody:(id)a3 isHTML:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v6)
  {
    [(MFMailCompositionValues *)self->_compositionValues setMessageBody:v6];
    [(MFMailCompositionValues *)self->_compositionValues setIsHTML:v4];
  }
}

- (void)setContentVisible:(BOOL)a3
{
  serviceViewController = self->_serviceViewController;
  if (serviceViewController)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __57__MFMailComposeInternalViewController_setContentVisible___block_invoke;
    v5[3] = &unk_1E806CDA8;
    v5[4] = self;
    v6 = a3;
    [(_UIRemoteViewController *)serviceViewController synchronizeAnimationsInActions:v5];
  }

  else
  {
    compositionValues = self->_compositionValues;

    [(MFMailCompositionValues *)compositionValues setShowContentImmediately:a3];
  }
}

void __57__MFMailComposeInternalViewController_setContentVisible___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 1016) serviceViewControllerProxy];
  [v2 setContentVisible:*(a1 + 40)];
}

- (id)addContentVariationWithName:(id)a3
{
  v3 = [(MFMailCompositionValues *)self->_compositionValues addContentVariationWithName:a3];

  return v3;
}

- (void)setDefaultContentVariation:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableArray *)self->_contentVariations indexOfObject:?];
  if (self->_contentVariations)
  {
    v5 = v4 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:0 userInfo:0];
    objc_exception_throw(v6);
  }

  self->_defaultContentVariationIndex = v4;
}

- (void)_setCKShareURLWrapper:(id)a3 share:(id)a4 permissionType:(int64_t)a5 allowOthersToInvite:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v10 = a4;
  [(MFMailCompositionValues *)self->_compositionValues setSharingSandboxingURLWrapper:v11];
  [(MFMailCompositionValues *)self->_compositionValues setCkShare:v10];
  [(MFMailCompositionValues *)self->_compositionValues setCkSharePermissionType:a5];
  [(MFMailCompositionValues *)self->_compositionValues setCkShareAllowOthersToInvite:v6];
}

- (void)_setCKShare:(id)a3 setupContainerInfo:(id)a4 permissionType:(int64_t)a5 allowOthersToInvite:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v10 = a4;
  [(MFMailCompositionValues *)self->_compositionValues setCkShare:v11];
  [(MFMailCompositionValues *)self->_compositionValues setCkContainerSetupInfo:v10];
  [(MFMailCompositionValues *)self->_compositionValues setCkSharePermissionType:a5];
  [(MFMailCompositionValues *)self->_compositionValues setCkShareAllowOthersToInvite:v6];
}

- (id)addAttachmentFileURL:(id)a3 mimeType:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:768 description:{@"%s fileURL must not be nil.", "-[MFMailComposeInternalViewController addAttachmentFileURL:mimeType:]"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:769 description:{@"%s mimeType must not be nil.", "-[MFMailComposeInternalViewController addAttachmentFileURL:mimeType:]"}];

LABEL_3:
  v10 = [MFMailComposeAttachmentWrapper wrapperWithFileURL:v7 mimeType:v9];
  attachments = self->_attachments;
  if (!attachments)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v13 = self->_attachments;
    self->_attachments = v12;

    attachments = self->_attachments;
  }

  [(NSMutableArray *)attachments addObject:v10];
  v14 = [v10 identifier];

  return v14;
}

- (id)addAttachmentData:(id)a3 mimeType:(id)a4 fileName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_10:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:784 description:{@"%s mimeType must not be nil.", "-[MFMailComposeInternalViewController addAttachmentData:mimeType:fileName:]"}];

    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v18 = [MEMORY[0x1E696AAA8] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:783 description:{@"%s attachment must not be nil.", "-[MFMailComposeInternalViewController addAttachmentData:mimeType:fileName:]"}];

  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v11)
  {
    goto LABEL_4;
  }

LABEL_11:
  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:785 description:{@"%s filename must not be nil.", "-[MFMailComposeInternalViewController addAttachmentData:mimeType:fileName:]"}];

LABEL_4:
  v12 = [MFMailComposeAttachmentWrapper wrapperWithData:v9 mimeType:v10 fileName:v11];
  attachments = self->_attachments;
  if (!attachments)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = self->_attachments;
    self->_attachments = v14;

    attachments = self->_attachments;
  }

  [(NSMutableArray *)attachments addObject:v12];
  v16 = [v12 identifier];

  return v16;
}

- (id)addAttachmentItemProvider:(id)a3 mimeType:(id)a4 fileName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MFMailComposeInternalViewController.m" lineNumber:799 description:{@"Invalid parameter not satisfying: %@", @"itemProvider"}];
  }

  v12 = [MFMailComposeAttachmentWrapper wrapperWithItemProvider:v9 mimeType:v10 fileName:v11];
  attachments = self->_attachments;
  if (!attachments)
  {
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v15 = self->_attachments;
    self->_attachments = v14;

    attachments = self->_attachments;
  }

  [(NSMutableArray *)attachments addObject:v12];
  v16 = [v12 identifier];

  return v16;
}

- (void)finalizeCompositionValues
{
  if ((*(self + 1096) & 4) == 0)
  {
    v3 = [(NSMutableArray *)self->_contentVariations copy];
    [(MFMailCompositionValues *)self->_compositionValues setContentVariations:v3];

    [(MFMailCompositionValues *)self->_compositionValues setDefaultContentVariationIndex:self->_defaultContentVariationIndex];
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_INFO, "#CompositionServices Finalizing composition values", v5, 2u);
    }

    *(self + 1096) |= 4u;
    [(MFMailComposeInternalViewController *)self _configureRemoteViewContoller];
  }
}

+ (BOOL)_canSendMailInNewScene
{
  v2 = [MEMORY[0x1E69DC938] mf_isPadIdiom];
  if (v2)
  {

    LOBYTE(v2) = MEMORY[0x1EEE1ACD0]();
  }

  return v2;
}

- (void)_presentComposeInNewWindowFromComposeViewController:(id)a3 completion:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __102__MFMailComposeInternalViewController__presentComposeInNewWindowFromComposeViewController_completion___block_invoke;
  v4[3] = &unk_1E806C570;
  v4[4] = self;
  [(MFMailComposeInternalViewController *)self _presentComposeInNewWindowFromComposeViewController:a3 completion:a4 dissmisal:v4];
}

void __102__MFMailComposeInternalViewController__presentComposeInNewWindowFromComposeViewController_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1104);
  *(v1 + 1104) = 0;
}

- (void)_presentComposeInNewWindowFromComposeViewController:(id)a3 completion:(id)a4 dissmisal:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(MFMailComposeInternalViewController *)self mailComposeDelegate];

  if (v13)
  {
    listener = self->_listener;
    if (!listener)
    {
      v15 = [MEMORY[0x1E696B0D8] anonymousListener];
      v16 = self->_listener;
      self->_listener = v15;

      [(NSXPCListener *)self->_listener setDelegate:self];
      [(NSXPCListener *)self->_listener resume];
      listener = self->_listener;
    }

    v13 = [(NSXPCListener *)listener endpoint];
    v17 = _Block_copy(v12);
    sceneDismissal = self->_sceneDismissal;
    self->_sceneDismissal = v17;

    objc_storeStrong(&self->_composeViewController, a3);
  }

  v19 = objc_alloc(MEMORY[0x1E69ADAE0]);
  v20 = [(MFMailCompositionValues *)self->_compositionValues autosaveIdentifier];
  v21 = v20;
  if (!v20)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v21 = [v5 UUIDString];
  }

  v22 = [(MFMailCompositionValues *)self->_compositionValues dictionaryRepresentation];
  v23 = [v19 initWithAutosaveIdentifier:v21 compositionValues:v22 attachments:self->_attachments];

  if (!v20)
  {
  }

  v24 = MFLogGeneral();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = [v23 autosaveIdentifier];
    *buf = 138543362;
    v31 = v25;
    _os_log_impl(&dword_1BE819000, v24, OS_LOG_TYPE_INFO, "#CompositionServices Present compose in new window with identifier: %{public}@", buf, 0xCu);
  }

  v26 = MEMORY[0x1E69ADAD8];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __112__MFMailComposeInternalViewController__presentComposeInNewWindowFromComposeViewController_completion_dissmisal___block_invoke;
  v28[3] = &unk_1E806EC98;
  v27 = v11;
  v29 = v27;
  [v26 presentNewMailWithContext:v23 delegateEndpoint:v13 completion:v28];
}

void __112__MFMailComposeInternalViewController__presentComposeInNewWindowFromComposeViewController_completion_dissmisal___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [v3 ef_publicDescription];
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_INFO, "#CompositionServices Present compose in new window failed with error: %{public}@", &v7, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3 == 0);
  }
}

- (void)composeShouldSendMail:(id)a3 toRecipients:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = MEMORY[0x1E69E9820];
  v16 = self;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v13 = v10;
  v19 = v13;
  v14 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v14 performBlock:&v15];
}

void __85__MFMailComposeInternalViewController_composeShouldSendMail_toRecipients_completion___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) mailComposeDelegate];
  if (objc_opt_respondsToSelector())
  {
    v2 = [*(a1 + 32) navigationController];
    [v3 mailComposeController:v2 shouldSendMail:*(a1 + 40) toRecipients:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

- (void)composeFinishedWithResult:(int64_t)a3
{
  v3 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v3 performBlock:&v4];
}

void __65__MFMailComposeInternalViewController_composeFinishedWithResult___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = MFMailComposeResultMake(*(a1 + 40));
  if (v3 != *v2)
  {
    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __65__MFMailComposeInternalViewController_composeFinishedWithResult___block_invoke_cold_1(v2, v4);
    }
  }

  v5 = [*(a1 + 32) mailComposeDelegate];
  v6 = [*(a1 + 32) navigationController];
  [v5 mailComposeController:v6 didFinishWithResult:v3 error:0];

  v7 = *(a1 + 32);
  v8 = *(v7 + 1104);
  if (v8)
  {
    (*(v8 + 16))();
    v7 = *(a1 + 32);
  }

  v9 = *(v7 + 1000);
  *(v7 + 1000) = 0;

  v10 = *(*(a1 + 32) + 992);
  v11 = v10;
  if (v10)
  {
    [v10 setDelegate:0];
    [v11 invalidate];
    v12 = *(a1 + 32);
    v13 = *(v12 + 992);
    *(v12 + 992) = 0;
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.mobilemail.mailservices"];
  if ((objc_opt_respondsToSelector() & 1) != 0 || ([v6 BOOLValue] & 1) == 0)
  {
    v8 = MSDEntitledOpenComposeProtocolDelegateXPCInterface();
    [v5 setExportedInterface:v8];

    [v5 setExportedObject:self];
    [v5 resume];
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)requestFramesForAttachmentsWithIdentifiers:(id)a3 resultHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_serviceViewController)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v9 = [MEMORY[0x1E69DC668] sharedApplication];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke;
    v23[3] = &unk_1E806CA38;
    v23[4] = &v24;
    v10 = [v9 beginBackgroundTaskWithExpirationHandler:v23];

    v25[3] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke_169;
    aBlock[3] = &unk_1E806F708;
    aBlock[4] = self;
    v21 = v8;
    v22 = &v24;
    v11 = _Block_copy(aBlock);
    serviceViewController = self->_serviceViewController;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke_2;
    v18[3] = &unk_1E806EC98;
    v13 = v11;
    v19 = v13;
    v14 = [(_UIRemoteViewController *)serviceViewController serviceViewControllerProxyWithErrorHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke_3;
    v16[3] = &unk_1E806F730;
    v15 = v13;
    v17 = v15;
    [v14 framesForAttachmentsWithIdentifiers:v6 withReply:v16];

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_INFO, "#CompositionServices Background task expired (requestFramesForAttachmentsWithIdentifiers)", v4, 2u);
  }

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke_169(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke_169_cold_1();
    }
  }

  if (v5)
  {
    v8 = [*(a1 + 32) navigationController];
    v9 = [v8 view];

    v10 = [*(a1 + 32) view];
    v11 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v5, "count")}];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke_171;
    v16[3] = &unk_1E806F6E0;
    v12 = v9;
    v17 = v12;
    v13 = v10;
    v18 = v13;
    v14 = v11;
    v19 = v14;
    [v5 enumerateKeysAndObjectsUsingBlock:v16];
  }

  else
  {
    v14 = 0;
  }

  (*(*(a1 + 40) + 16))();
  v15 = [MEMORY[0x1E69DC668] sharedApplication];
  [v15 endBackgroundTask:*(*(*(a1 + 48) + 8) + 24)];
}

void __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke_171(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  [v5 CGRectValue];
  [v6 convertRect:*(a1 + 40) fromView:?];
  v7 = [MEMORY[0x1E696B098] valueWithCGRect:?];
  [*(a1 + 48) setObject:v7 forKey:v8];
}

- (void)autosaveWithHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_serviceViewController)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v6 = [MEMORY[0x1E69DC668] sharedApplication];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59__MFMailComposeInternalViewController_autosaveWithHandler___block_invoke;
    v20[3] = &unk_1E806CA38;
    v20[4] = &v21;
    v7 = [v6 beginBackgroundTaskWithExpirationHandler:v20];

    v22[3] = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__MFMailComposeInternalViewController_autosaveWithHandler___block_invoke_176;
    aBlock[3] = &unk_1E806F758;
    v18 = v5;
    v19 = &v21;
    v8 = _Block_copy(aBlock);
    serviceViewController = self->_serviceViewController;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __59__MFMailComposeInternalViewController_autosaveWithHandler___block_invoke_178;
    v15[3] = &unk_1E806EC98;
    v10 = v8;
    v16 = v10;
    v11 = [(_UIRemoteViewController *)serviceViewController serviceViewControllerProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __59__MFMailComposeInternalViewController_autosaveWithHandler___block_invoke_2;
    v13[3] = &unk_1E806F780;
    v12 = v10;
    v14 = v12;
    [v11 autosaveWithReply:v13];

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    (*(v4 + 2))(v4, 0);
  }
}

void __59__MFMailComposeInternalViewController_autosaveWithHandler___block_invoke(uint64_t a1)
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_INFO, "#CompositionServices Background task expired (autosaveWithHandler)", v4, 2u);
  }

  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 endBackgroundTask:*(*(*(a1 + 32) + 8) + 24)];
}

void __59__MFMailComposeInternalViewController_autosaveWithHandler___block_invoke_176(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [v6 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __59__MFMailComposeInternalViewController_autosaveWithHandler___block_invoke_176_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
  v8 = [MEMORY[0x1E69DC668] sharedApplication];
  [v8 endBackgroundTask:*(*(*(a1 + 40) + 8) + 24)];
}

- (MFMailComposeViewControllerDelegate)mailComposeDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_mailComposeDelegate);

  return WeakRetained;
}

- (void)_serviceViewControllerReady:error:.cold.1()
{
  OUTLINED_FUNCTION_3();
  *v1 = 138543362;
  *(v1 + 4) = v2;
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v1, v3, "#CompositionServices _serviceViewControllerReady: %{public}@", v4);
}

void __79__MFMailComposeInternalViewController__processAttachmentsViaProxy_withHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3();
  *v1 = 138412290;
  *v3 = v2;
  _os_log_error_impl(&dword_1BE819000, v5, OS_LOG_TYPE_ERROR, "Failed to write placeholder for [%@]", v4, 0xCu);
}

void __65__MFMailComposeInternalViewController_composeFinishedWithResult___block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "#CompositionServices Remote compose window returned invalid result: %ld", &v3, 0xCu);
}

void __96__MFMailComposeInternalViewController_requestFramesForAttachmentsWithIdentifiers_resultHandler___block_invoke_169_cold_1()
{
  OUTLINED_FUNCTION_3();
  *v1 = 138543362;
  *(v1 + 4) = v2;
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v1, v3, "#CompositionServices requestFramesForAttachmentsWithIdentifiers: %{public}@", v4);
}

void __59__MFMailComposeInternalViewController_autosaveWithHandler___block_invoke_176_cold_1()
{
  OUTLINED_FUNCTION_3();
  *v1 = 138543362;
  *(v1 + 4) = v2;
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, v1, v3, "#CompositionServices autosaveWithHandler: %{public}@", v4);
}

@end