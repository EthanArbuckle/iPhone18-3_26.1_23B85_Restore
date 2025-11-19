@interface AUAudioUnitViewService
- (CGSize)determineViewSize:(id)a3;
- (void)connectChildView;
- (void)dealloc;
- (void)initializeBlankView;
- (void)loadView;
- (void)setAUContainerViewConstraints:(id)a3 childView:(id)a4 auViewSize:(CGSize)a5;
@end

@implementation AUAudioUnitViewService

- (CGSize)determineViewSize:(id)a3
{
  v3 = a3;
  [v3 preferredContentSize];
  v5 = v4;
  [v3 preferredContentSize];
  v7 = v6;
  if (!v5)
  {
    v10 = [v3 view];
    [v10 frame];
    v8 = v11;

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = [v3 view];
    [v12 frame];
    v9 = v13;

    goto LABEL_6;
  }

  v8 = v5;
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = v7;
LABEL_6:

  v14 = v8;
  v15 = v9;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)setAUContainerViewConstraints:(id)a3 childView:(id)a4 auViewSize:(CGSize)a5
{
  v6 = a3;
  v9 = _NSDictionaryOfVariableBindings(&cfstr_Childview.isa, a4, 0);
  v7 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[childView]|" options:0 metrics:0 views:v9];
  [v6 addConstraints:v7];

  v8 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[childView]|" options:0 metrics:0 views:v9];
  [v6 addConstraints:v8];
}

- (void)connectChildView
{
  objc_initWeak(&location, self);
  v3 = [(AUAudioUnitViewService *)self auRemoteExtensionContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__AUAudioUnitViewService_connectChildView__block_invoke;
  v4[3] = &unk_278A25548;
  objc_copyWeak(&v5, &location);
  [v3 requestViewControllerWithCompletionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __42__AUAudioUnitViewService_connectChildView__block_invoke(uint64_t a1, void *a2)
{
  v16 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (v16 && WeakRetained)
  {
    [WeakRetained addChildViewController:v16];
    objc_storeStrong(WeakRetained + 124, a2);
    v5 = [v16 view];
    [WeakRetained determineViewSize:v16];
    v7 = v6;
    v9 = v8;
    [WeakRetained setPreferredContentSize:?];
    v10 = [WeakRetained view];
    v11 = [v10 window];
    [WeakRetained resizeWindow:v11 size:{v7, v9}];

    v12 = [WeakRetained view];
    [v12 setFrame:{0.0, 0.0, v7, v9}];

    v13 = [WeakRetained view];
    [v13 addSubview:v5];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [WeakRetained view];
    [WeakRetained setAUContainerViewConstraints:v14 childView:v5 auViewSize:{v7, v9}];

    v15 = [WeakRetained view];
    [WeakRetained markViewForRedraw:v15];

    [WeakRetained markViewForRedraw:v5];
  }
}

- (void)initializeBlankView
{
  v3 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 1.0, 1.0}];
  [(AUAudioUnitViewService *)self setView:v3];
}

- (void)loadView
{
  [(AUAudioUnitViewService *)self initializeBlankView];
  v3 = [(AUAudioUnitViewService *)self extensionContext];
  [(AUAudioUnitViewService *)self setAuRemoteExtensionContext:v3];

  v4 = [(AUAudioUnitViewService *)self auRemoteExtensionContext];
  [v4 setViewService:self];

  [(AUAudioUnitViewService *)self connectChildView];
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(AUAudioUnitViewService *)self childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * v7) view];
        [v8 removeFromSuperview];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = AUAudioUnitViewService;
  [(AUAudioUnitViewService *)&v9 dealloc];
}

@end