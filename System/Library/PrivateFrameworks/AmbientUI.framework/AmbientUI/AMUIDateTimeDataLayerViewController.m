@interface AMUIDateTimeDataLayerViewController
- (BOOL)updatePosterConfiguration:(id)a3 withAnimationSettings:(id)a4;
- (void)_noteWindowWillRotate:(id)a3;
- (void)_updateDateTimeConstraintsForChromeOrientation;
- (void)_updateDateTimeConstraintsForChromeOrientationWithInterfaceOrientation:(int64_t)a3;
- (void)_updateNominalSafeAreaGuide;
- (void)loadView;
- (void)setChromeOrientationPolicy:(int64_t)a3;
- (void)setDateProvider:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidLoad;
- (void)viewWillMoveToWindow:(id)a3;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation AMUIDateTimeDataLayerViewController

- (void)setChromeOrientationPolicy:(int64_t)a3
{
  self->_chromeOrientationPolicy = a3;
  v3 = [(AMUIDateTimeDataLayerViewController *)self viewIfLoaded];
  [v3 setNeedsUpdateConstraints];
}

- (void)setDateProvider:(id)a3
{
  objc_storeStrong(&self->_dateProvider, a3);
  v5 = a3;
  [(AMUIDateTimeViewController *)self->_dateTimeViewController setDateProvider:self->_dateProvider];
}

- (BOOL)updatePosterConfiguration:(id)a3 withAnimationSettings:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v32 = 0;
  v8 = [v6 pr_loadTitleStyleConfigurationWithError:&v32];
  v9 = v32;
  if (!v8)
  {
    v10 = AMUILogDataLayer();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_23F38B000, v10, OS_LOG_TYPE_INFO, "Failed to load poster title style configuration (will use default style) %@", &buf, 0xCu);
    }

    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v11 = getPRMutablePosterTitleStyleConfigurationClass_softClass;
    v36 = getPRMutablePosterTitleStyleConfigurationClass_softClass;
    if (!getPRMutablePosterTitleStyleConfigurationClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v38 = __getPRMutablePosterTitleStyleConfigurationClass_block_invoke;
      v39 = &unk_278C75E70;
      v40 = &v33;
      __getPRMutablePosterTitleStyleConfigurationClass_block_invoke(&buf);
      v11 = v34[3];
    }

    v12 = v11;
    _Block_object_dispose(&v33, 8);
    v13 = objc_alloc_init(v11);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v14 = getPRPosterColorClass_softClass;
    v36 = getPRPosterColorClass_softClass;
    if (!getPRPosterColorClass_softClass)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v38 = __getPRPosterColorClass_block_invoke;
      v39 = &unk_278C75E70;
      v40 = &v33;
      __getPRPosterColorClass_block_invoke(&buf);
      v14 = v34[3];
    }

    v15 = v14;
    _Block_object_dispose(&v33, 8);
    v16 = [v14 alloc];
    v17 = [MEMORY[0x277D75348] whiteColor];
    v18 = [v17 colorWithAlphaComponent:0.9];
    v19 = [v16 initWithColor:v18 preferredStyle:2];

    [v13 setTitleColor:v19];
    v8 = [v13 copy];
  }

  v20 = [v6 pr_posterProvider];
  if (v20)
  {
    v21 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v20 error:0];
    v22 = [v21 URL];

    if (v22)
    {
      v23 = [v8 vibrancyConfigurationWithExtensionBundleURL:v22];

      goto LABEL_18;
    }
  }

  else
  {
    v24 = AMUILogDataLayer();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [AMUIDateTimeDataLayerViewController updatePosterConfiguration:v6 withAnimationSettings:v24];
    }
  }

  v25 = AMUILogDataLayer();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
  {
    [AMUIDateTimeDataLayerViewController updatePosterConfiguration:v6 withAnimationSettings:v25];
  }

  v23 = [v8 vibrancyConfiguration];
LABEL_18:
  v26 = MEMORY[0x277CF0D38];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __87__AMUIDateTimeDataLayerViewController_updatePosterConfiguration_withAnimationSettings___block_invoke;
  v30[3] = &unk_278C75DD8;
  v30[4] = self;
  v31 = v23;
  v27 = v23;
  [v26 animateWithSettings:v7 actions:v30];

  v28 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)loadView
{
  v3 = objc_alloc_init(AMUITouchPassthroughView);
  [(AMUIDateTimeDataLayerViewController *)self setView:v3];
}

- (void)viewDidLoad
{
  v49.receiver = self;
  v49.super_class = AMUIDateTimeDataLayerViewController;
  [(AMUIDateTimeDataLayerViewController *)&v49 viewDidLoad];
  v3 = objc_alloc_init(AMUIDateTimeViewController);
  [(AMUIDateTimeViewController *)v3 setDateProvider:self->_dateProvider];
  v4 = [(AMUIDateTimeDataLayerViewController *)self view];
  v5 = [(AMUIDateTimeViewController *)v3 view];
  [v5 setUserInteractionEnabled:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  dateTimeViewController = self->_dateTimeViewController;
  self->_dateTimeViewController = v3;
  v7 = v3;

  v8 = objc_alloc_init(MEMORY[0x277D756D0]);
  nominalSafeAreaLayoutGuide = self->_nominalSafeAreaLayoutGuide;
  self->_nominalSafeAreaLayoutGuide = v8;

  [v4 addLayoutGuide:self->_nominalSafeAreaLayoutGuide];
  v10 = [(UILayoutGuide *)self->_nominalSafeAreaLayoutGuide topAnchor];
  v11 = [v4 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11 constant:0.0];
  nominalSafeAreaTopConstraint = self->_nominalSafeAreaTopConstraint;
  self->_nominalSafeAreaTopConstraint = v12;

  v14 = [(UILayoutGuide *)self->_nominalSafeAreaLayoutGuide bottomAnchor];
  v15 = [v4 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:0.0];
  nominalSafeAreaBottomConstraint = self->_nominalSafeAreaBottomConstraint;
  self->_nominalSafeAreaBottomConstraint = v16;

  v18 = [(UILayoutGuide *)self->_nominalSafeAreaLayoutGuide leftAnchor];
  v19 = [v4 leftAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:0.0];
  nominalSafeAreaLeftConstraint = self->_nominalSafeAreaLeftConstraint;
  self->_nominalSafeAreaLeftConstraint = v20;

  v22 = [(UILayoutGuide *)self->_nominalSafeAreaLayoutGuide rightAnchor];
  v23 = [v4 rightAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:0.0];
  nominalSafeAreaRightConstraint = self->_nominalSafeAreaRightConstraint;
  self->_nominalSafeAreaRightConstraint = v24;

  v26 = [v5 leadingAnchor];
  v27 = [(UILayoutGuide *)self->_nominalSafeAreaLayoutGuide leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];
  dateTimeLeadingEdgeConstraint = self->_dateTimeLeadingEdgeConstraint;
  self->_dateTimeLeadingEdgeConstraint = v28;

  v30 = [v5 trailingAnchor];
  v31 = [(UILayoutGuide *)self->_nominalSafeAreaLayoutGuide trailingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];
  dateTimeTrailingEdgeConstraint = self->_dateTimeTrailingEdgeConstraint;
  self->_dateTimeTrailingEdgeConstraint = v32;

  v34 = [v5 leftAnchor];
  v35 = [(UILayoutGuide *)self->_nominalSafeAreaLayoutGuide leftAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  dateTimeLeftEdgeConstraint = self->_dateTimeLeftEdgeConstraint;
  self->_dateTimeLeftEdgeConstraint = v36;

  v38 = [v5 rightAnchor];
  v39 = [(UILayoutGuide *)self->_nominalSafeAreaLayoutGuide rightAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  dateTimeRightEdgeConstraint = self->_dateTimeRightEdgeConstraint;
  self->_dateTimeRightEdgeConstraint = v40;

  v42 = self->_dateTimeViewController;
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __50__AMUIDateTimeDataLayerViewController_viewDidLoad__block_invoke;
  v45[3] = &unk_278C75E00;
  v46 = v5;
  v47 = v4;
  v48 = self;
  v43 = v4;
  v44 = v5;
  [(AMUIDateTimeDataLayerViewController *)self bs_addChildViewController:v42 animated:0 transitionBlock:v45];
}

void __50__AMUIDateTimeDataLayerViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAD0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 topAnchor];
  v7 = [*(a1 + 40) topAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:34.0];
  v13[0] = v8;
  v9 = *(a1 + 48);
  v13[1] = v9[126];
  v13[2] = v9[127];
  v13[3] = v9[128];
  v13[4] = v9[129];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:5];
  [v3 activateConstraints:v10];

  v11 = [*(a1 + 48) view];
  [v11 setNeedsUpdateConstraints];

  v5[2](v5);
  v12 = *MEMORY[0x277D85DE8];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = AMUIDateTimeDataLayerViewController;
  [(AMUIDateTimeDataLayerViewController *)&v3 updateViewConstraints];
  [(AMUIDateTimeDataLayerViewController *)self _updateNominalSafeAreaGuide];
  [(AMUIDateTimeDataLayerViewController *)self _updateDateTimeConstraintsForChromeOrientation];
}

- (void)viewWillMoveToWindow:(id)a3
{
  v5.receiver = self;
  v5.super_class = AMUIDateTimeDataLayerViewController;
  [(AMUIDateTimeDataLayerViewController *)&v5 viewWillMoveToWindow:a3];
  v4 = [(AMUIDateTimeDataLayerViewController *)self viewIfLoaded];
  [v4 setNeedsUpdateConstraints];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __90__AMUIDateTimeDataLayerViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v4[3] = &unk_278C75E28;
  v4[4] = self;
  [a4 animateAlongsideTransition:v4 completion:&__block_literal_global_0];
}

- (void)_updateNominalSafeAreaGuide
{
  v3 = [(AMUIDateTimeDataLayerViewController *)self viewIfLoaded];
  v11 = [v3 window];

  if (v11)
  {
    [v11 safeAreaInsets];
    v6 = v5;
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v4 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v8 = *(MEMORY[0x277D768C8] + 16);
    v10 = *(MEMORY[0x277D768C8] + 24);
  }

  [(NSLayoutConstraint *)self->_nominalSafeAreaTopConstraint setConstant:v4];
  [(NSLayoutConstraint *)self->_nominalSafeAreaBottomConstraint setConstant:-v8];
  [(NSLayoutConstraint *)self->_nominalSafeAreaLeftConstraint setConstant:v6];
  [(NSLayoutConstraint *)self->_nominalSafeAreaRightConstraint setConstant:-v10];
}

- (void)_updateDateTimeConstraintsForChromeOrientation
{
  v4 = [(AMUIDateTimeDataLayerViewController *)self viewIfLoaded];
  v3 = [v4 window];
  -[AMUIDateTimeDataLayerViewController _updateDateTimeConstraintsForChromeOrientationWithInterfaceOrientation:](self, "_updateDateTimeConstraintsForChromeOrientationWithInterfaceOrientation:", [v3 _windowInterfaceOrientation]);
}

- (void)_updateDateTimeConstraintsForChromeOrientationWithInterfaceOrientation:(int64_t)a3
{
  chromeOrientationPolicy = self->_chromeOrientationPolicy;
  v5 = a3 == 4;
  v6 = a3 != 4;
  if (a3 == 3)
  {
    v5 = 0;
  }

  v7 = a3 == 3;
  if (a3 == 3)
  {
    v6 = 0;
  }

  v8 = chromeOrientationPolicy == 2 && v5;
  v9 = chromeOrientationPolicy == 2 && v7;
  if (chromeOrientationPolicy == 2)
  {
    v10 = v6;
  }

  else
  {
    v10 = chromeOrientationPolicy != 1;
  }

  v11 = chromeOrientationPolicy != 2 && chromeOrientationPolicy == 1;
  [(NSLayoutConstraint *)self->_dateTimeLeftEdgeConstraint setActive:v8];
  [(NSLayoutConstraint *)self->_dateTimeRightEdgeConstraint setActive:v9];
  [(NSLayoutConstraint *)self->_dateTimeLeadingEdgeConstraint setActive:v10];
  dateTimeTrailingEdgeConstraint = self->_dateTimeTrailingEdgeConstraint;

  [(NSLayoutConstraint *)dateTimeTrailingEdgeConstraint setActive:v11];
}

- (void)_noteWindowWillRotate:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D772C0]];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = MEMORY[0x277D75D18];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__AMUIDateTimeDataLayerViewController__noteWindowWillRotate___block_invoke;
  v12[3] = &unk_278C75DD8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 performWithoutAnimation:v12];
}

uint64_t __61__AMUIDateTimeDataLayerViewController__noteWindowWillRotate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) integerValue];

  return [v1 _updateDateTimeConstraintsForChromeOrientationWithInterfaceOrientation:v2];
}

- (void)updatePosterConfiguration:(uint64_t)a1 withAnimationSettings:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_23F38B000, a2, OS_LOG_TYPE_ERROR, "Missing poster provider from the poster configuration %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)updatePosterConfiguration:(uint64_t)a1 withAnimationSettings:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_23F38B000, a2, OS_LOG_TYPE_FAULT, "Unable to find extension bundle URL for config %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end