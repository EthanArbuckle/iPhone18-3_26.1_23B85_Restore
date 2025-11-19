@interface AMPOnboardingViewController
- (AMPOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 primaryButtonText:(id)a6 privacyLinkController:(id)a7;
- (AMPOnboardingViewController)initWithTitleText:(id)a3 features:(id)a4 primaryButtonText:(id)a5 privacyLinkController:(id)a6;
- (BOOL)isPresentedInFormSheet;
- (UITraitCollection)cappedTraitCollection;
- (id)childTraitCollectionForViewController:(id)a3;
- (unint64_t)supportedInterfaceOrientations;
- (void)didTapPrimaryButton:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateOverrideTraits;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation AMPOnboardingViewController

- (AMPOnboardingViewController)initWithHeaderImage:(id)a3 titleText:(id)a4 descriptionText:(id)a5 primaryButtonText:(id)a6 privacyLinkController:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v26.receiver = self;
  v26.super_class = AMPOnboardingViewController;
  v18 = [(AMPOnboardingViewController *)&v26 initWithNibName:0 bundle:0];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_titleText, a4);
    objc_storeStrong(&v19->_descriptionText, a5);
    objc_storeStrong(&v19->_primaryButtonText, a6);
    objc_storeStrong(&v19->_image, a3);
    v20 = [objc_alloc(getAMSUIOnboardingViewControllerClass()) initWithHeaderImage:v13 titleText:v14 descriptionText:v15 primaryButtonText:v16 privacyLinkController:v17];
    onboardingController = v19->_onboardingController;
    v19->_onboardingController = v20;

    objc_initWeak(&location, v19);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __117__AMPOnboardingViewController_initWithHeaderImage_titleText_descriptionText_primaryButtonText_privacyLinkController___block_invoke;
    v23[3] = &unk_278BC1F30;
    objc_copyWeak(&v24, &location);
    [(AMSUIOnboardingViewController *)v19->_onboardingController setPrimaryButtonCallback:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v19;
}

void __117__AMPOnboardingViewController_initWithHeaderImage_titleText_descriptionText_primaryButtonText_privacyLinkController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained primaryButtonCallback];

  if (v1)
  {
    v2 = [WeakRetained primaryButtonCallback];
    (v2)[2](v2, WeakRetained);
  }
}

- (AMPOnboardingViewController)initWithTitleText:(id)a3 features:(id)a4 primaryButtonText:(id)a5 privacyLinkController:(id)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v27 = a3;
  v30 = a4;
  v28 = a5;
  v29 = a6;
  v39.receiver = self;
  v39.super_class = AMPOnboardingViewController;
  val = [(AMPOnboardingViewController *)&v39 initWithNibName:0 bundle:0];
  if (val)
  {
    objc_storeStrong(&val->_titleText, a3);
    objc_storeStrong(&val->_primaryButtonText, a5);
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v30, "count")}];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v30;
    v12 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v12)
    {
      v13 = *v36;
      do
      {
        v14 = 0;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          v41 = 0;
          v42 = &v41;
          v43 = 0x2050000000;
          v16 = getAMSUIOnboardingFeatureClass_softClass;
          v44 = getAMSUIOnboardingFeatureClass_softClass;
          if (!getAMSUIOnboardingFeatureClass_softClass)
          {
            location[0] = MEMORY[0x277D85DD0];
            location[1] = 3221225472;
            location[2] = __getAMSUIOnboardingFeatureClass_block_invoke;
            location[3] = &unk_278BC1F78;
            location[4] = &v41;
            __getAMSUIOnboardingFeatureClass_block_invoke(location);
            v16 = v42[3];
          }

          v17 = v16;
          _Block_object_dispose(&v41, 8);
          v18 = [v16 alloc];
          v19 = [v15 image];
          v20 = [v15 titleText];
          v21 = [v15 descriptionText];
          v22 = [v18 initWithImage:v19 titleText:v20 descriptionText:v21];

          [v11 addObject:v22];
          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v12);
    }

    v23 = [objc_alloc(getAMSUIOnboardingViewControllerClass()) initWithTitleText:v27 features:v11 primaryButtonText:v28 privacyLinkController:v29];
    onboardingController = val->_onboardingController;
    val->_onboardingController = v23;

    objc_initWeak(location, val);
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __98__AMPOnboardingViewController_initWithTitleText_features_primaryButtonText_privacyLinkController___block_invoke;
    v33[3] = &unk_278BC1F30;
    objc_copyWeak(&v34, location);
    [(AMSUIOnboardingViewController *)val->_onboardingController setPrimaryButtonCallback:v33];
    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
  }

  v25 = *MEMORY[0x277D85DE8];
  return val;
}

void __98__AMPOnboardingViewController_initWithTitleText_features_primaryButtonText_privacyLinkController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained primaryButtonCallback];

  if (v1)
  {
    v2 = [WeakRetained primaryButtonCallback];
    (v2)[2](v2, WeakRetained);
  }
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = AMPOnboardingViewController;
  [(AMPOnboardingViewController *)&v11 viewDidLoad];
  v3 = [MEMORY[0x277D75348] systemBackgroundColor];
  v4 = [(AMPOnboardingViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(AMPOnboardingViewController *)self onboardingController];

  if (v5)
  {
    v6 = [(AMPOnboardingViewController *)self onboardingController];
    [(AMPOnboardingViewController *)self addChildViewController:v6];

    v7 = [(AMPOnboardingViewController *)self view];
    v8 = [(AMPOnboardingViewController *)self onboardingController];
    v9 = [v8 view];
    [v7 addSubview:v9];

    v10 = [(AMPOnboardingViewController *)self onboardingController];
    [v10 didMoveToParentViewController:self];
  }
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = AMPOnboardingViewController;
  [(AMPOnboardingViewController *)&v14 viewDidLayoutSubviews];
  v3 = [(AMPOnboardingViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(AMPOnboardingViewController *)self onboardingController];
  v13 = [v12 view];
  [v13 setFrame:{v5, v7, v9, v11}];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = AMPOnboardingViewController;
  [(AMPOnboardingViewController *)&v5 traitCollectionDidChange:a3];
  [(AMPOnboardingViewController *)self updateOverrideTraits];
  v4 = [(AMPOnboardingViewController *)self view];
  [v4 setNeedsLayout];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(AMPOnboardingViewController *)self traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (UITraitCollection)cappedTraitCollection
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (cappedTraitCollection_onceToken != -1)
  {
    [AMPOnboardingViewController cappedTraitCollection];
  }

  v3 = [(AMPOnboardingViewController *)self traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  if (UIContentSizeCategoryIsAccessibilityCategory(v4))
  {
    v5 = cappedTraitCollection_cappedSizes;
    v6 = [(AMPOnboardingViewController *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    LODWORD(v5) = [v5 containsObject:v7];

    if (v5)
    {
      v8 = MEMORY[0x277D75C80];
      v9 = [(AMPOnboardingViewController *)self traitCollection];
      v15[0] = v9;
      v10 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x277D76800]];
      v15[1] = v10;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
      v12 = [v8 traitCollectionWithTraitsFromCollections:v11];

      goto LABEL_8;
    }
  }

  else
  {
  }

  v12 = 0;
LABEL_8:
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __52__AMPOnboardingViewController_cappedTraitCollection__block_invoke()
{
  v4[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D767F0];
  v4[0] = *MEMORY[0x277D767F8];
  v4[1] = v0;
  v4[2] = *MEMORY[0x277D767E8];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];
  v2 = cappedTraitCollection_cappedSizes;
  cappedTraitCollection_cappedSizes = v1;

  v3 = *MEMORY[0x277D85DE8];
}

- (id)childTraitCollectionForViewController:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v5 = getOBPrivacyLinkControllerClass_softClass;
  v13 = getOBPrivacyLinkControllerClass_softClass;
  if (!getOBPrivacyLinkControllerClass_softClass)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getOBPrivacyLinkControllerClass_block_invoke;
    v9[3] = &unk_278BC1F78;
    v9[4] = &v10;
    __getOBPrivacyLinkControllerClass_block_invoke(v9);
    v5 = v11[3];
  }

  v6 = v5;
  _Block_object_dispose(&v10, 8);
  if (objc_opt_isKindOfClass())
  {
    v7 = [(AMPOnboardingViewController *)self cappedTraitCollection];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)updateOverrideTraits
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(AMPOnboardingViewController *)self childViewControllers];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [(AMPOnboardingViewController *)self childTraitCollectionForViewController:v8];
        [(AMPOnboardingViewController *)self setOverrideTraitCollection:v9 forChildViewController:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)didTapPrimaryButton:(id)a3
{
  v4 = [(AMPOnboardingViewController *)self primaryButtonCallback];

  if (v4)
  {
    v5 = [(AMPOnboardingViewController *)self primaryButtonCallback];
    v5[2](v5, self);
  }
}

- (BOOL)isPresentedInFormSheet
{
  v3 = [(AMPOnboardingViewController *)self navigationController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  v7 = [(AMPOnboardingViewController *)v6 presentationController];

  v8 = [v7 _activePresentationController];
  v9 = [v8 presentationStyle] == 2;

  return v9;
}

@end