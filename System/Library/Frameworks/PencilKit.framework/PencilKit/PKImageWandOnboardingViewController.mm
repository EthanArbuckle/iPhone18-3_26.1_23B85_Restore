@interface PKImageWandOnboardingViewController
- (BOOL)canBecomeFirstResponder;
- (PKImageWandOnboardingViewController)init;
- (void)_didTouchUpInsideContinueButton:(id)button;
- (void)_updateUI;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation PKImageWandOnboardingViewController

- (PKImageWandOnboardingViewController)init
{
  v43[4] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PKImageWandOnboardingViewController;
  v2 = [(PKImageWandOnboardingViewController *)&v42 initWithTitle:&stru_1F476BD20 detailText:0 symbolName:0 contentLayout:1];
  v3 = v2;
  if (v2)
  {
    v2->_lastUserInterfaceStyle = 0;
    v4 = [PKImageWandOnboardingContentViewController alloc];
    v5 = _PencilKitBundle();
    v6 = [v5 localizedStringForKey:@"IMAGE_WAND_TITLE" value:&stru_1F476BD20 table:@"ImageWand"];
    v7 = [(PKImageWandOnboardingContentViewController *)v4 initWithTitle:v6 titleBadgeText:@"BETA" detailText:0 symbolName:0 contentLayout:2];
    contentViewController = v3->_contentViewController;
    v3->_contentViewController = v7;

    [(PKImageWandOnboardingViewController *)v3 addChildViewController:v3->_contentViewController];
    view = [(PKImageWandOnboardingViewController *)v3 view];
    view2 = [(PKImageWandOnboardingContentViewController *)v3->_contentViewController view];
    [view addSubview:view2];

    view3 = [(PKImageWandOnboardingContentViewController *)v3->_contentViewController view];
    [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v25 = MEMORY[0x1E696ACD8];
    view4 = [(PKImageWandOnboardingContentViewController *)v3->_contentViewController view];
    leadingAnchor = [view4 leadingAnchor];
    view5 = [(PKImageWandOnboardingViewController *)v3 view];
    leadingAnchor2 = [view5 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v43[0] = v34;
    view6 = [(PKImageWandOnboardingContentViewController *)v3->_contentViewController view];
    trailingAnchor = [view6 trailingAnchor];
    view7 = [(PKImageWandOnboardingViewController *)v3 view];
    trailingAnchor2 = [view7 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v43[1] = v29;
    view8 = [(PKImageWandOnboardingContentViewController *)v3->_contentViewController view];
    topAnchor = [view8 topAnchor];
    contentView = [(PKImageWandOnboardingViewController *)v3 contentView];
    bottomAnchor = [contentView bottomAnchor];
    v13 = [topAnchor constraintEqualToAnchor:bottomAnchor];
    v43[2] = v13;
    view9 = [(PKImageWandOnboardingContentViewController *)v3->_contentViewController view];
    bottomAnchor2 = [view9 bottomAnchor];
    view10 = [(PKImageWandOnboardingViewController *)v3 view];
    bottomAnchor3 = [view10 bottomAnchor];
    v18 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v43[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:4];
    [v25 activateConstraints:v19];

    v20 = v3->_contentViewController;
    if (v20)
    {
      v20 = v20->_continueButton;
    }

    v21 = v20;
    [(PKImageWandOnboardingContentViewController *)v21 addTarget:v3 action:sel__didTouchUpInsideContinueButton_ forControlEvents:64];

    [(PKImageWandOnboardingContentViewController *)v3->_contentViewController didMoveToParentViewController:v3];
    objc_initWeak(&location, v3);
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __43__PKImageWandOnboardingViewController_init__block_invoke;
    v39[3] = &unk_1E82D7FB0;
    objc_copyWeak(&v40, &location);
    v23 = [(PKImageWandOnboardingViewController *)v3 registerForTraitChanges:systemTraitsAffectingColorAppearance withHandler:v39];

    [(PKImageWandOnboardingViewController *)v3 _updateUI];
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __43__PKImageWandOnboardingViewController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(PKImageWandOnboardingViewController *)WeakRetained _updateUI];
}

- (void)_updateUI
{
  if (self)
  {
    v2 = self[155];
    if (!v2 || ([self traitCollection], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceStyle"), v3, v2 != v4))
    {
      traitCollection = [self traitCollection];
      self[155] = [traitCollection userInterfaceStyle];

      traitCollection2 = [self traitCollection];
      userInterfaceStyle = [traitCollection2 userInterfaceStyle];

      v8 = userInterfaceStyle == 2;
      v9 = @"ImageWandOnboarding_Light";
      if (v8)
      {
        v9 = @"ImageWandOnboarding_Dark";
      }

      v10 = v9;
      v11 = MEMORY[0x1E69DD250];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __48__PKImageWandOnboardingViewController__updateUI__block_invoke;
      v13[3] = &unk_1E82DA090;
      v13[4] = self;
      v14 = v10;
      v15 = v8;
      v12 = v10;
      [v11 performWithoutAnimation:v13];
    }
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v8.receiver = self;
  v8.super_class = PKImageWandOnboardingViewController;
  [(OBBaseWelcomeController *)&v8 viewDidAppear:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_loadWeakRetained(&self->_delegate);
    [v7 imageWandOnboardingControllerViewDidAppear:self animated:appearCopy];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v7.receiver = self;
  v7.super_class = PKImageWandOnboardingViewController;
  [(OBBaseWelcomeController *)&v7 viewDidDisappear:disappear];
  if ([(PKImageWandOnboardingViewController *)self isBeingDismissed])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = objc_loadWeakRetained(&self->_delegate);
      [v6 imageWandOnboardingControllerIsBeingDismissed:self];
    }
  }
}

- (BOOL)canBecomeFirstResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = [v5 imageWandOnboardingControllerCanBecomeFirstResponder:self];

    return v6;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PKImageWandOnboardingViewController;
    return [(PKImageWandOnboardingViewController *)&v8 canBecomeFirstResponder];
  }
}

- (void)_didTouchUpInsideContinueButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 imageWandOnboardingControllerDidSelectContinue:self];
  }
}

void __48__PKImageWandOnboardingViewController__updateUI__block_invoke(uint64_t a1)
{
  v28[4] = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 1232) removeFromSuperview];
  v2 = _PencilKitBundle();
  v3 = [v2 URLForResource:*(a1 + 40) withExtension:@"mov"];

  v27 = v3;
  v4 = [[PKMovieView alloc] initWithURL:v3];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1232);
  *(v5 + 1232) = v4;

  if (*(a1 + 48) == 1)
  {
    [MEMORY[0x1E69DC888] blackColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] whiteColor];
  }
  v7 = ;
  [*(*(a1 + 32) + 1232) setBackgroundColor:v7];

  [*(*(a1 + 32) + 1232) setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [*(a1 + 32) contentView];
  [v8 addSubview:*(*(a1 + 32) + 1232)];

  v20 = MEMORY[0x1E696ACD8];
  v25 = [*(*(a1 + 32) + 1232) topAnchor];
  v26 = [*(a1 + 32) contentView];
  v24 = [v26 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v28[0] = v23;
  v21 = [*(*(a1 + 32) + 1232) leadingAnchor];
  v22 = [*(a1 + 32) contentView];
  v19 = [v22 leadingAnchor];
  v9 = [v21 constraintEqualToAnchor:v19];
  v28[1] = v9;
  v10 = [*(*(a1 + 32) + 1232) widthAnchor];
  v11 = [*(a1 + 32) contentView];
  v12 = [v11 widthAnchor];
  v13 = [v10 constraintEqualToAnchor:v12];
  v28[2] = v13;
  v14 = [*(*(a1 + 32) + 1232) heightAnchor];
  v15 = [*(a1 + 32) contentView];
  v16 = [v15 heightAnchor];
  v17 = [v14 constraintEqualToAnchor:v16];
  v28[3] = v17;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  [v20 activateConstraints:v18];
}

@end