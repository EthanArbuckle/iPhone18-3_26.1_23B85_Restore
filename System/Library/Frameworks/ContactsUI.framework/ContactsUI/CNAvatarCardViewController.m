@interface CNAvatarCardViewController
- (BOOL)actionsReversed;
- (BOOL)bypassActionValidation;
- (BOOL)dismissesBeforePerforming;
- (BOOL)transitioningImageVisible;
- (CGRect)_photoFrameInView:(id)a3;
- (CGRect)transitioningContentFrame;
- (CGRect)transitioningFrame;
- (CGRect)transitioningImageFrame;
- (CNAvatarCardActionListController)actionListController;
- (CNAvatarCardActionListOrbSupport)actionListViewController;
- (CNAvatarCardController)cardController;
- (CNAvatarCardViewController)initWithContacts:(id)a3;
- (CNAvatarCardViewControllerDelegate)delegate;
- (NSArray)actionCategories;
- (UIImage)transitioningImage;
- (id)actionsView;
- (id)cardActionsView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5;
- (id)viewControllerForCardActionsView:(id)a3;
- (void)_updatePreferredSize;
- (void)cardActionsView:(id)a3 didShowActions:(id)a4;
- (void)contactActionsController:(id)a3 didSelectAction:(id)a4;
- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)didAddActionsViewToHierarchy;
- (void)dismissAnimated:(BOOL)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)refreshActions;
- (void)setActionCategories:(id)a3;
- (void)setActionsReversed:(BOOL)a3;
- (void)setBypassActionValidation:(BOOL)a3;
- (void)setDismissesBeforePerforming:(BOOL)a3;
- (void)setHeaderOnTop:(BOOL)a3;
- (void)setTransitioningImageVisible:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateActionsControllerHeightConstraint;
- (void)updateActionsViewBackgroundColor;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willAddActionsViewToHierarchy;
@end

@implementation CNAvatarCardViewController

- (CNAvatarCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNAvatarCardController)cardController
{
  WeakRetained = objc_loadWeakRetained(&self->_cardController);

  return WeakRetained;
}

- (void)contactActionsController:(id)a3 didUpdateWithMenu:(id)a4
{
  v5 = a4;
  v6 = [(CNAvatarCardViewController *)self cardController];
  [v6 updateWithMenuItems:v5];
}

- (void)contactActionsController:(id)a3 didSelectAction:(id)a4
{
  v5 = a4;
  [(CNAvatarCardViewController *)self dismissAnimated:1];
  v6 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v7 = [v5 performActionWithContext:v6];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CNAvatarCardViewController_contactActionsController_didSelectAction___block_invoke;
  v12[3] = &unk_1E74E5980;
  v8 = v5;
  v13 = v8;
  [v7 addSuccessBlock:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__CNAvatarCardViewController_contactActionsController_didSelectAction___block_invoke_2;
  v10[3] = &unk_1E74E5200;
  v11 = v8;
  v9 = v8;
  [v7 addFailureBlock:v10];
}

- (BOOL)transitioningImageVisible
{
  v2 = [(CNAvatarCardViewController *)self cardController];
  v3 = [v2 headerView];
  v4 = [v3 photoView];
  v5 = [v4 isHidden];

  return v5 ^ 1;
}

- (void)setTransitioningImageVisible:(BOOL)a3
{
  v3 = a3;
  v6 = [(CNAvatarCardViewController *)self cardController];
  v4 = [v6 headerView];
  v5 = [v4 photoView];
  [v5 setHidden:!v3];
}

- (CGRect)transitioningImageFrame
{
  v3 = [(CNAvatarCardViewController *)self cardController];
  v4 = [v3 headerView];
  v5 = [v4 photoView];
  v6 = [v5 avatarView];

  [v6 contentImageFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CNAvatarCardViewController *)self transitioningView];
  [v6 convertRect:v15 toView:{v8, v10, v12, v14}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (UIImage)transitioningImage
{
  v2 = [(CNAvatarCardViewController *)self cardController];
  v3 = [v2 headerView];
  v4 = [v3 photoView];
  v5 = [v4 avatarView];
  v6 = [v5 contentImage];

  return v6;
}

- (CGRect)transitioningContentFrame
{
  v3 = [(CNAvatarCardViewController *)self actionsView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = [(CNAvatarCardViewController *)self actionsView];
  v13 = [(CNAvatarCardViewController *)self transitioningView];
  [v12 convertRect:v13 toView:{v5, v7, v9, v11}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = v15;
  v23 = v17;
  v24 = v19;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CGRect)transitioningFrame
{
  v3 = [(CNAvatarCardViewController *)self cardController];
  v4 = [v3 headerView];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [(CNAvatarCardViewController *)self view];
  [v11 bounds];
  Width = CGRectGetWidth(v28);

  v13 = [(CNAvatarCardViewController *)self transitioningView];
  v14 = [(CNAvatarCardViewController *)self cardController];
  v15 = [v14 headerView];
  [v13 convertRect:v15 fromView:{v6, v8, Width, v10}];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  v24 = v17;
  v25 = v19;
  v26 = v21;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (void)dismissAnimated:(BOOL)a3
{
  v3 = a3;
  if (!a3)
  {
    v5 = [(CNAvatarCardViewController *)self view];
    [v5 setHidden:1];
  }

  v6 = [(CNAvatarCardViewController *)self cardController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CNAvatarCardViewController_dismissAnimated___block_invoke;
  v7[3] = &unk_1E74E6A88;
  v7[4] = self;
  [v6 dismissAnimated:v3 completionHandler:v7];
}

void __46__CNAvatarCardViewController_dismissAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setHidden:0];
}

- (id)viewControllerForCardActionsView:(id)a3
{
  if ([(CNAvatarCardViewController *)self dismissesBeforePerforming])
  {
    v4 = [(CNAvatarCardViewController *)self cardController];
    v5 = [v4 delegate];
    v6 = [(CNAvatarCardViewController *)self cardController];
    v7 = [v5 presentingViewControllerForAvatarCardController:v6];
  }

  else
  {
    v7 = self;
  }

  return v7;
}

- (void)cardActionsView:(id)a3 didShowActions:(id)a4
{
  [(CNAvatarCardViewController *)self _updatePreferredSize:a3];
  v5 = [(CNAvatarCardViewController *)self presentationController];
  [v5 systemLayoutFittingSizeDidChangeForChildContentContainer:self];
}

- (id)cardActionsView:(id)a3 orderedPropertiesForProperties:(id)a4 category:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CNAvatarCardViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CNAvatarCardViewController *)self delegate];
    v12 = [v11 cardViewController:self orderedPropertiesForProperties:v7 category:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)refreshActions
{
  v2 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [v2 refreshActions];
}

- (void)_updatePreferredSize
{
  v3 = [(CNAvatarCardViewController *)self view];
  [v3 frame];
  Width = CGRectGetWidth(v22);

  v5 = [(CNAvatarCardViewController *)self view];
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1112014848;
  [v5 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v6, v7}];
  v9 = v8;

  v10 = [(CNAvatarCardViewController *)self view];
  [v10 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [(CNAvatarCardViewController *)self view];
  [v17 setFrame:{v12, v14, v16, v9}];

  [(CNAvatarCardViewController *)self setPreferredContentSize:0.0, v9];
  v18 = [(CNAvatarCardViewController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    v20 = [(CNAvatarCardViewController *)self delegate];
    [v20 cardViewControllerDidUpdatePreferredSize:self];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNAvatarCardViewController;
  v4 = a3;
  [(CNAvatarCardViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:v4];
  v5 = [(CNAvatarCardViewController *)self actionsController:v7.receiver];
  v6 = [v5 viewController];

  if (v6 == v4)
  {
    [(CNAvatarCardViewController *)self updateActionsControllerHeightConstraint];
    [(CNAvatarCardViewController *)self _updatePreferredSize];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v5 viewDidDisappear:a3];
  [(CNAvatarCardViewController *)self setVisible:0];
  v4 = [(CNAvatarCardViewController *)self actionsController];
  [v4 cancelModels];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v5 viewWillDisappear:a3];
  v4 = [(CNAvatarCardViewController *)self actionListViewController];
  [v4 stopTrackingRollover];
}

- (void)viewDidAppear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v7 viewDidAppear:a3];
  v4 = [(CNAvatarCardViewController *)self actionListViewController];
  v5 = [(CNAvatarCardViewController *)self cardController];
  v6 = [v5 rolloverGestureRecognizer];
  [v4 startTrackingRolloverWithGestureRecognizer:v6];
}

- (void)updateActionsViewBackgroundColor
{
  if (UIAccessibilityIsReduceTransparencyEnabled() || ([MEMORY[0x1E69DC938] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "userInterfaceIdiom"), v3, (v4 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    v5 = +[CNUIColorRepository quickActionBackgroundColorReducedTransparency];
  }

  else
  {
    v5 = +[CNUIColorRepository quickActionBackgroundColorRegular];
  }

  v7 = v5;
  v6 = [(CNAvatarCardViewController *)self actionsView];
  [v6 setBackgroundColor:v7];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v4 traitCollectionDidChange:a3];
  [(CNAvatarCardViewController *)self updateActionsViewBackgroundColor];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v5 viewWillAppear:a3];
  [(CNAvatarCardViewController *)self setVisible:1];
  [(CNAvatarCardViewController *)self _updatePreferredSize];
  v4 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [v4 reset];
}

- (void)updateActionsControllerHeightConstraint
{
  v3 = [(CNAvatarCardViewController *)self actionsController];
  v4 = [v3 viewController];
  [v4 preferredContentSize];
  v6 = v5;

  v7 = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];
  [v7 setConstant:v6];
}

- (void)didAddActionsViewToHierarchy
{
  v21[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNAvatarCardViewController *)self actionsController];

  if (v3)
  {
    v4 = [(CNAvatarCardViewController *)self actionsController];
    v5 = [v4 viewController];
    [v5 didMoveToParentViewController:self];

    v6 = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];

    if (v6)
    {
      v7 = MEMORY[0x1E696ACD8];
      v8 = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];
      v21[0] = v8;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v7 deactivateConstraints:v9];
    }

    v10 = MEMORY[0x1E696ACD8];
    v11 = [(CNAvatarCardViewController *)self actionsController];
    v12 = [v11 viewController];
    v13 = [v12 view];
    v14 = [v10 constraintWithItem:v13 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    [(CNAvatarCardViewController *)self setActionsViewControllerHeightConstraint:v14];

    v15 = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];
    LODWORD(v16) = 1144750080;
    [v15 setPriority:v16];

    [(CNAvatarCardViewController *)self updateActionsControllerHeightConstraint];
    v17 = MEMORY[0x1E696ACD8];
    v18 = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];
    v20 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v17 activateConstraints:v19];
  }
}

- (void)willAddActionsViewToHierarchy
{
  v3 = [(CNAvatarCardViewController *)self actionsController];

  if (v3)
  {
    v5 = [(CNAvatarCardViewController *)self actionsController];
    v4 = [v5 viewController];
    [(CNAvatarCardViewController *)self addChildViewController:v4];
  }
}

- (CNAvatarCardActionListController)actionListController
{
  v3 = [(CNAvatarCardViewController *)self actionsController];

  if (v3)
  {
    [(CNAvatarCardViewController *)self actionsController];
  }

  else
  {
    [(CNAvatarCardViewController *)self legacyContactActionsView];
  }
  v4 = ;

  return v4;
}

- (CNAvatarCardActionListOrbSupport)actionListViewController
{
  v3 = [(CNAvatarCardViewController *)self actionsController];

  if (v3)
  {
    v4 = [(CNAvatarCardViewController *)self actionsController];
    v5 = [v4 displayedController];
  }

  else
  {
    v5 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  }

  return v5;
}

- (id)actionsView
{
  v3 = [(CNAvatarCardViewController *)self actionsController];

  if (v3)
  {
    v4 = [(CNAvatarCardViewController *)self actionsController];
    v5 = [v4 displayedController];
    v6 = [v5 view];
  }

  else
  {
    v6 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  }

  return v6;
}

- (BOOL)bypassActionValidation
{
  v2 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  v3 = [v2 bypassActionValidation];

  return v3;
}

- (void)setBypassActionValidation:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [v4 setBypassActionValidation:v3];
}

- (NSArray)actionCategories
{
  v2 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  v3 = [v2 actionCategories];

  return v3;
}

- (void)setActionCategories:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [v5 setActionCategories:v4];
}

- (CGRect)_photoFrameInView:(id)a3
{
  v4 = a3;
  v5 = [(CNAvatarCardViewController *)self cardController];
  v6 = [v5 headerView];
  v7 = [v6 photoView];

  [v7 bounds];
  [v4 convertRect:v7 fromView:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (BOOL)dismissesBeforePerforming
{
  v2 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  v3 = [v2 dismissesBeforePerforming];

  return v3;
}

- (void)setDismissesBeforePerforming:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [v4 setDismissesBeforePerforming:v3];
}

- (BOOL)actionsReversed
{
  v2 = [(CNAvatarCardViewController *)self actionListController];
  v3 = [v2 actionsReversed];

  return v3;
}

- (void)setActionsReversed:(BOOL)a3
{
  v3 = a3;
  v4 = [(CNAvatarCardViewController *)self actionListController];
  [v4 setActionsReversed:v3];
}

- (void)setHeaderOnTop:(BOOL)a3
{
  if (self->_headerOnTop != a3)
  {
    self->_headerOnTop = a3;
    v4 = [(CNAvatarCardViewController *)self view];
    [v4 setNeedsUpdateConstraints];
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(CNAvatarCardViewController *)self cardController];
  v5 = [v4 headerView];
  [v5 updateFontSizes];

  v6 = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [v6 reset];
}

- (void)updateViewConstraints
{
  v19[3] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v15 updateViewConstraints];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(CNAvatarCardViewController *)self verticalConstraints];
  [v3 deactivateConstraints:v4];

  if ([(CNAvatarCardViewController *)self hasHeader])
  {
    v18[0] = @"headerContainerView";
    v5 = [(CNAvatarCardViewController *)self headerContainerView];
    v19[0] = v5;
    v18[1] = @"actionsView";
    v6 = [(CNAvatarCardViewController *)self actionsView];
    v19[1] = v6;
    v18[2] = @"effectView";
    v7 = [(CNAvatarCardViewController *)self effectView];
    v19[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];

    if ([(CNAvatarCardViewController *)self headerOnTop])
    {
      v9 = @"V:|[headerContainerView]-8-[effectView]|";
    }

    else
    {
      v9 = @"V:|[effectView]-8-[headerContainerView]|";
    }

    v10 = MEMORY[0x1E696ACD8];
  }

  else
  {
    v16 = @"effectView";
    v11 = [(CNAvatarCardViewController *)self effectView];
    v17 = v11;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v10 = MEMORY[0x1E696ACD8];
    v9 = @"V:|[effectView]|";
  }

  v12 = [v10 constraintsWithVisualFormat:v9 options:0 metrics:0 views:v8];
  [(CNAvatarCardViewController *)self setVerticalConstraints:v12];

  v13 = MEMORY[0x1E696ACD8];
  v14 = [(CNAvatarCardViewController *)self verticalConstraints];
  [v13 activateConstraints:v14];
}

- (void)viewDidLoad
{
  v68[6] = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v64 viewDidLoad];
  v3 = [(CNAvatarCardViewController *)self view];
  [v3 setBackgroundColor:0];
  [(CNAvatarCardViewController *)self willAddActionsViewToHierarchy];
  v4 = 0;
  v5 = 0;
  if ([(CNAvatarCardViewController *)self hasHeader])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v6 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
    [v5 setBackgroundColor:v6];

    v7 = [v5 layer];
    [v7 setCornerRadius:13.0];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v5];
    [(CNAvatarCardViewController *)self setHeaderContainerView:v5];
    v8 = [(CNAvatarCardViewController *)self cardController];
    v4 = [v8 headerView];

    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:v4];
  }

  v9 = [(CNAvatarCardViewController *)self actionsView];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [v9 layer];
  [v10 setCornerRadius:13.0];

  v60 = v9;
  [v9 setClipsToBounds:1];
  [(CNAvatarCardViewController *)self updateActionsViewBackgroundColor];
  v11 = objc_alloc(MEMORY[0x1E69DD250]);
  v12 = *MEMORY[0x1E695F058];
  v13 = *(MEMORY[0x1E695F058] + 8);
  v14 = *(MEMORY[0x1E695F058] + 16);
  v15 = *(MEMORY[0x1E695F058] + 24);
  v16 = [v11 initWithFrame:{*MEMORY[0x1E695F058], v13, v14, v15}];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v17 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v12, v13, v14, v15}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v16 addSubview:v17];
  v18 = [(CNAvatarCardViewController *)self actionsView];
  [v17 addSubview:v18];

  v19 = [(CNAvatarCardViewController *)self actionsView];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];

  [v3 addSubview:v16];
  [(CNAvatarCardViewController *)self didAddActionsViewToHierarchy];
  [(CNAvatarCardViewController *)self setEffectView:v16];
  [(CNAvatarCardViewController *)self setActionsListView:v16];
  v20 = [MEMORY[0x1E695DF70] array];
  if (v5 && v4)
  {
    v67[0] = @"headerContainerView";
    v67[1] = @"headerView";
    v68[0] = v5;
    v68[1] = v4;
    v67[2] = @"actionsView";
    v21 = [(CNAvatarCardViewController *)self actionsView];
    v68[2] = v21;
    v68[3] = v16;
    v67[3] = @"effectView";
    v67[4] = @"vibrancyView";
    v67[5] = @"view";
    v68[4] = v17;
    v68[5] = v3;
    v22 = MEMORY[0x1E695DF20];
    v23 = v68;
    v24 = v67;
    v25 = 6;
  }

  else
  {
    v65[0] = @"actionsView";
    v21 = [(CNAvatarCardViewController *)self actionsView];
    v66[0] = v21;
    v66[1] = v16;
    v65[1] = @"effectView";
    v65[2] = @"vibrancyView";
    v65[3] = @"view";
    v66[2] = v17;
    v66[3] = v3;
    v22 = MEMORY[0x1E695DF20];
    v23 = v66;
    v24 = v65;
    v25 = 4;
  }

  v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
  v59 = v17;
  v61 = v4;
  v62 = v5;
  v63 = v3;

  if ([(CNAvatarCardViewController *)self hasHeader])
  {
    v27 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-0-[headerView]-(margin)-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
    [v20 addObjectsFromArray:v27];

    v28 = [(CNAvatarCardViewController *)self headerContainerView];
    v29 = [v28 leftAnchor];
    v30 = [(CNAvatarCardViewController *)self view];
    v31 = [v30 safeAreaLayoutGuide];
    v32 = [v31 leftAnchor];
    [(CNAvatarCardViewController *)self borderMargin];
    v33 = [v29 constraintEqualToAnchor:v32 constant:?];
    [v20 addObject:v33];

    v34 = [(CNAvatarCardViewController *)self headerContainerView];
    v35 = [v34 rightAnchor];
    v36 = [(CNAvatarCardViewController *)self view];
    v37 = [v36 safeAreaLayoutGuide];
    v38 = [v37 rightAnchor];
    [(CNAvatarCardViewController *)self borderMargin];
    v40 = [v35 constraintEqualToAnchor:v38 constant:-v39];
    [v20 addObject:v40];

    v41 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[headerView]|" options:0 metrics:&unk_1F0D4BB60 views:v26];
    [v20 addObjectsFromArray:v41];
  }

  v42 = [(CNAvatarCardViewController *)self effectView];
  v43 = [v42 leftAnchor];
  v44 = [(CNAvatarCardViewController *)self view];
  v45 = [v44 safeAreaLayoutGuide];
  v46 = [v45 leftAnchor];
  [(CNAvatarCardViewController *)self borderMargin];
  v47 = [v43 constraintEqualToAnchor:v46 constant:?];
  [v20 addObject:v47];

  v48 = [(CNAvatarCardViewController *)self effectView];
  v49 = [v48 rightAnchor];
  v50 = [(CNAvatarCardViewController *)self view];
  v51 = [v50 safeAreaLayoutGuide];
  v52 = [v51 rightAnchor];
  [(CNAvatarCardViewController *)self borderMargin];
  v54 = [v49 constraintEqualToAnchor:v52 constant:-v53];
  [v20 addObject:v54];

  v55 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[vibrancyView]-0-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
  [v20 addObjectsFromArray:v55];

  v56 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-0-[vibrancyView]-0-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
  [v20 addObjectsFromArray:v56];

  v57 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[actionsView]-0-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
  [v20 addObjectsFromArray:v57];

  v58 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-0-[actionsView]-0-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
  [v20 addObjectsFromArray:v58];

  [MEMORY[0x1E696ACD8] activateConstraints:v20];
  [v63 setNeedsUpdateConstraints];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v4 dealloc];
}

- (CNAvatarCardViewController)initWithContacts:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CNAvatarCardViewController;
  v5 = [(CNAvatarCardViewController *)&v16 initWithNibName:0 bundle:0];
  if ([v4 count] > 1)
  {
    goto LABEL_5;
  }

  v6 = [v4 firstObject];
  if ([v6 isUnknown])
  {

LABEL_5:
    v9 = [CNAvatarCardActionsView alloc];
    v10 = [(CNAvatarCardActionsView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CNAvatarCardActionsView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNAvatarCardActionsView *)v10 setDelegate:v5];
    [(CNAvatarCardActionsView *)v10 setContacts:v4];
    [(CNAvatarCardViewController *)v5 setLegacyContactActionsView:v10];
    goto LABEL_6;
  }

  v7 = [v4 firstObject];
  v8 = [v7 isSuggestedMe];

  if (v8)
  {
    goto LABEL_5;
  }

  if ([v4 count] != 1)
  {
    goto LABEL_7;
  }

  v13 = [CNContactActionsController alloc];
  v14 = [v4 firstObject];
  v15 = +[CNContactActionsController supportedActionTypes];
  v10 = [(CNContactActionsController *)v13 initWithContact:v14 actionTypes:v15];

  [(CNAvatarCardActionsView *)v10 setDisplayMenuIconAtTopLevel:1];
  [(CNAvatarCardActionsView *)v10 setDelegate:v5];
  [(CNAvatarCardViewController *)v5 setActionsController:v10];
LABEL_6:

LABEL_7:
  [(CNAvatarCardViewController *)v5 setBorderMargin:10.0];
  [(CNAvatarCardViewController *)v5 setModalPresentationStyle:4];
  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:v5 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v5;
}

@end