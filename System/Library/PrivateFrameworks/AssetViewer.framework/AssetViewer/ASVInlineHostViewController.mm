@interface ASVInlineHostViewController
- (ASVInlineHostViewController)initWithUUID:(id)a3 child:(id)a4 fullscreenInlineService:(id)a5 canonicalWebPageURL:(id)a6;
- (void)documentInteractionControllerDidDismissOptionsMenu:(id)a3;
- (void)handleConnectionInterrupted;
- (void)queryShowShareSheetAndNotifyDidDismiss:(BOOL)a3;
- (void)requestNewShareSheetFrame;
- (void)showShareSheet:(id)a3 frame:(CGRect)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation ASVInlineHostViewController

- (ASVInlineHostViewController)initWithUUID:(id)a3 child:(id)a4 fullscreenInlineService:(id)a5 canonicalWebPageURL:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = ASVInlineHostViewController;
  v15 = [(ASVInlineHostViewController *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, a3);
    objc_storeStrong(&v16->_childVC, a4);
    objc_storeStrong(&v16->_fullscreenService, a5);
    objc_storeStrong(&v16->_canonicalWebPageURL, a6);
  }

  [(ASVInlineHostViewController *)v16 queryShowShareSheetAndNotifyDidDismiss:0];
  v17 = [MEMORY[0x277CCAB98] defaultCenter];
  [v17 addObserver:v16 selector:sel_handleConnectionInterrupted name:@"ASVConnectionInterrupted" object:0];

  return v16;
}

- (void)viewDidLoad
{
  v20[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = ASVInlineHostViewController;
  [(ASVInlineHostViewController *)&v16 viewDidLoad];
  [(ASVInlineHostViewController *)self addChildViewController:self->_childVC];
  v3 = [(ASVInlineHostViewController *)self view];
  v4 = [(UIViewController *)self->_childVC view];
  [v3 addSubview:v4];

  [(UIViewController *)self->_childVC didMoveToParentViewController:self];
  v5 = [(UIViewController *)self->_childVC view];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];

  v6 = [(ASVInlineHostViewController *)self view];
  v7 = MEMORY[0x277CCAAD0];
  v19 = @"childView";
  v8 = [(UIViewController *)self->_childVC view];
  v20[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = [v7 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v9];
  [v6 addConstraints:v10];

  v11 = [(ASVInlineHostViewController *)self view];
  v12 = MEMORY[0x277CCAAD0];
  v17 = @"childView";
  v13 = [(UIViewController *)self->_childVC view];
  v18 = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15 = [v12 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v14];
  [v11 addConstraints:v15];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = ASVInlineHostViewController;
  v7 = a4;
  [(ASVInlineHostViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__ASVInlineHostViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_278CCAFD0;
  v8[4] = self;
  [v7 animateAlongsideTransition:&__block_literal_global_3 completion:v8];
}

- (void)handleConnectionInterrupted
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__ASVInlineHostViewController_handleConnectionInterrupted__block_invoke;
  v2[3] = &unk_278CCADC0;
  v2[4] = self;
  ASVRunInMainThread(v2);
}

- (void)requestNewShareSheetFrame
{
  objc_initWeak(&location, self);
  fullscreenService = self->_fullscreenService;
  uuid = self->_uuid;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__ASVInlineHostViewController_requestNewShareSheetFrame__block_invoke;
  v5[3] = &unk_278CCAE80;
  objc_copyWeak(&v6, &location);
  [(ARQLInlineService2 *)fullscreenService sendARQLEvent:&unk_285313520 forUUID:uuid completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __56__ASVInlineHostViewController_requestNewShareSheetFrame__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__ASVInlineHostViewController_requestNewShareSheetFrame__block_invoke_2;
  v8[3] = &unk_278CCAE58;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = v5;
  v9 = v7;
  ASVRunInMainThread(v8);

  objc_destroyWeak(&v10);
}

void __56__ASVInlineHostViewController_requestNewShareSheetFrame__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (WeakRetained[127])
    {
      v15 = WeakRetained;
      v3 = [*(a1 + 32) objectForKeyedSubscript:@"frame"];

      WeakRetained = v15;
      if (v3)
      {
        v4 = [*(a1 + 32) objectForKeyedSubscript:@"frame"];
        v17 = CGRectFromString(v4);
        x = v17.origin.x;
        y = v17.origin.y;
        width = v17.size.width;
        height = v17.size.height;

        v9 = [v15 presentedViewController];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        WeakRetained = v15;
        if (isKindOfClass)
        {
          v11 = [v15 presentedViewController];
          v12 = [v11 popoverPresentationController];
          [v12 setSourceRect:{x, y, width, height}];

          v13 = [v15 presentedViewController];
          v14 = [v13 popoverPresentationController];
          [v14 containerViewWillLayoutSubviews];

          WeakRetained = v15;
        }
      }
    }
  }
}

- (void)queryShowShareSheetAndNotifyDidDismiss:(BOOL)a3
{
  if (self->_canonicalWebPageURL)
  {
    v3 = a3;
    v5 = [&unk_285313548 mutableCopy];
    v6 = v5;
    if (v3)
    {
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"didDismissActivityViewController"];
    }

    objc_initWeak(location, self);
    fullscreenService = self->_fullscreenService;
    uuid = self->_uuid;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__ASVInlineHostViewController_queryShowShareSheetAndNotifyDidDismiss___block_invoke;
    v10[3] = &unk_278CCAE80;
    objc_copyWeak(&v11, location);
    [(ARQLInlineService2 *)fullscreenService sendARQLEvent:v6 forUUID:uuid completion:v10];
    objc_destroyWeak(&v11);
    objc_destroyWeak(location);
  }

  else
  {
    v9 = _asvLogHandle;
    if (!_asvLogHandle)
    {
      ASVInitLogging();
      v9 = _asvLogHandle;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_241215000, v9, OS_LOG_TYPE_ERROR, "#Inline: No canonical web page provided, cannot show share sheet", location, 2u);
    }
  }
}

void __70__ASVInlineHostViewController_queryShowShareSheetAndNotifyDidDismiss___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__ASVInlineHostViewController_queryShowShareSheetAndNotifyDidDismiss___block_invoke_2;
  v8[3] = &unk_278CCAE58;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = v5;
  v9 = v7;
  ASVRunInMainThread(v8);

  objc_destroyWeak(&v10);
}

void __70__ASVInlineHostViewController_queryShowShareSheetAndNotifyDidDismiss___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) objectForKeyedSubscript:@"frame"];

    if (v2)
    {
      v3 = [*(a1 + 32) objectForKeyedSubscript:@"frame"];
      v10 = CGRectFromString(v3);
      x = v10.origin.x;
      y = v10.origin.y;
      width = v10.size.width;
      height = v10.size.height;

      [WeakRetained showShareSheet:WeakRetained[126] frame:{x, y, width, height}];
    }
  }
}

- (void)showShareSheet:(id)a3 frame:(CGRect)a4
{
  if (!self->_documentInteractionController)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
    v9 = a3;
    v10 = objc_opt_new();
    documentInteractionController = self->_documentInteractionController;
    self->_documentInteractionController = v10;

    [(UIDocumentInteractionController *)self->_documentInteractionController setURL:v9];
    [(UIDocumentInteractionController *)self->_documentInteractionController setDelegate:self];
    v12 = self->_documentInteractionController;
    v13 = [(ASVInlineHostViewController *)self view];
    [(UIDocumentInteractionController *)v12 presentOptionsMenuFromRect:v13 inView:1 animated:x, y, width, height];
  }
}

- (void)documentInteractionControllerDidDismissOptionsMenu:(id)a3
{
  documentInteractionController = self->_documentInteractionController;
  self->_documentInteractionController = 0;

  [(ASVInlineHostViewController *)self queryShowShareSheetAndNotifyDidDismiss:1];
}

@end