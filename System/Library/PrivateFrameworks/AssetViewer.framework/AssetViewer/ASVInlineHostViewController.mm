@interface ASVInlineHostViewController
- (ASVInlineHostViewController)initWithUUID:(id)d child:(id)child fullscreenInlineService:(id)service canonicalWebPageURL:(id)l;
- (void)documentInteractionControllerDidDismissOptionsMenu:(id)menu;
- (void)handleConnectionInterrupted;
- (void)queryShowShareSheetAndNotifyDidDismiss:(BOOL)dismiss;
- (void)requestNewShareSheetFrame;
- (void)showShareSheet:(id)sheet frame:(CGRect)frame;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation ASVInlineHostViewController

- (ASVInlineHostViewController)initWithUUID:(id)d child:(id)child fullscreenInlineService:(id)service canonicalWebPageURL:(id)l
{
  dCopy = d;
  childCopy = child;
  serviceCopy = service;
  lCopy = l;
  v19.receiver = self;
  v19.super_class = ASVInlineHostViewController;
  v15 = [(ASVInlineHostViewController *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, d);
    objc_storeStrong(&v16->_childVC, child);
    objc_storeStrong(&v16->_fullscreenService, service);
    objc_storeStrong(&v16->_canonicalWebPageURL, l);
  }

  [(ASVInlineHostViewController *)v16 queryShowShareSheetAndNotifyDidDismiss:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:v16 selector:sel_handleConnectionInterrupted name:@"ASVConnectionInterrupted" object:0];

  return v16;
}

- (void)viewDidLoad
{
  v20[1] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = ASVInlineHostViewController;
  [(ASVInlineHostViewController *)&v16 viewDidLoad];
  [(ASVInlineHostViewController *)self addChildViewController:self->_childVC];
  view = [(ASVInlineHostViewController *)self view];
  view2 = [(UIViewController *)self->_childVC view];
  [view addSubview:view2];

  [(UIViewController *)self->_childVC didMoveToParentViewController:self];
  view3 = [(UIViewController *)self->_childVC view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(ASVInlineHostViewController *)self view];
  v7 = MEMORY[0x277CCAAD0];
  v19 = @"childView";
  view5 = [(UIViewController *)self->_childVC view];
  v20[0] = view5;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = [v7 constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v9];
  [view4 addConstraints:v10];

  view6 = [(ASVInlineHostViewController *)self view];
  v12 = MEMORY[0x277CCAAD0];
  v17 = @"childView";
  view7 = [(UIViewController *)self->_childVC view];
  v18 = view7;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v15 = [v12 constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v14];
  [view6 addConstraints:v15];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v9.receiver = self;
  v9.super_class = ASVInlineHostViewController;
  coordinatorCopy = coordinator;
  [(ASVInlineHostViewController *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __82__ASVInlineHostViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke_2;
  v8[3] = &unk_278CCAFD0;
  v8[4] = self;
  [coordinatorCopy animateAlongsideTransition:&__block_literal_global_3 completion:v8];
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

- (void)queryShowShareSheetAndNotifyDidDismiss:(BOOL)dismiss
{
  if (self->_canonicalWebPageURL)
  {
    dismissCopy = dismiss;
    v5 = [&unk_285313548 mutableCopy];
    v6 = v5;
    if (dismissCopy)
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

- (void)showShareSheet:(id)sheet frame:(CGRect)frame
{
  if (!self->_documentInteractionController)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    sheetCopy = sheet;
    v10 = objc_opt_new();
    documentInteractionController = self->_documentInteractionController;
    self->_documentInteractionController = v10;

    [(UIDocumentInteractionController *)self->_documentInteractionController setURL:sheetCopy];
    [(UIDocumentInteractionController *)self->_documentInteractionController setDelegate:self];
    v12 = self->_documentInteractionController;
    view = [(ASVInlineHostViewController *)self view];
    [(UIDocumentInteractionController *)v12 presentOptionsMenuFromRect:view inView:1 animated:x, y, width, height];
  }
}

- (void)documentInteractionControllerDidDismissOptionsMenu:(id)menu
{
  documentInteractionController = self->_documentInteractionController;
  self->_documentInteractionController = 0;

  [(ASVInlineHostViewController *)self queryShowShareSheetAndNotifyDidDismiss:1];
}

@end