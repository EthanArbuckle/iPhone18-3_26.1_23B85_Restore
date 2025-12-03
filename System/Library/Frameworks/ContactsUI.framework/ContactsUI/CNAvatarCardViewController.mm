@interface CNAvatarCardViewController
- (BOOL)actionsReversed;
- (BOOL)bypassActionValidation;
- (BOOL)dismissesBeforePerforming;
- (BOOL)transitioningImageVisible;
- (CGRect)_photoFrameInView:(id)view;
- (CGRect)transitioningContentFrame;
- (CGRect)transitioningFrame;
- (CGRect)transitioningImageFrame;
- (CNAvatarCardActionListController)actionListController;
- (CNAvatarCardActionListOrbSupport)actionListViewController;
- (CNAvatarCardController)cardController;
- (CNAvatarCardViewController)initWithContacts:(id)contacts;
- (CNAvatarCardViewControllerDelegate)delegate;
- (NSArray)actionCategories;
- (UIImage)transitioningImage;
- (id)actionsView;
- (id)cardActionsView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category;
- (id)viewControllerForCardActionsView:(id)view;
- (void)_updatePreferredSize;
- (void)cardActionsView:(id)view didShowActions:(id)actions;
- (void)contactActionsController:(id)controller didSelectAction:(id)action;
- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)didAddActionsViewToHierarchy;
- (void)dismissAnimated:(BOOL)animated;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)refreshActions;
- (void)setActionCategories:(id)categories;
- (void)setActionsReversed:(BOOL)reversed;
- (void)setBypassActionValidation:(BOOL)validation;
- (void)setDismissesBeforePerforming:(BOOL)performing;
- (void)setHeaderOnTop:(BOOL)top;
- (void)setTransitioningImageVisible:(BOOL)visible;
- (void)traitCollectionDidChange:(id)change;
- (void)updateActionsControllerHeightConstraint;
- (void)updateActionsViewBackgroundColor;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)contactActionsController:(id)controller didUpdateWithMenu:(id)menu
{
  menuCopy = menu;
  cardController = [(CNAvatarCardViewController *)self cardController];
  [cardController updateWithMenuItems:menuCopy];
}

- (void)contactActionsController:(id)controller didSelectAction:(id)action
{
  actionCopy = action;
  [(CNAvatarCardViewController *)self dismissAnimated:1];
  v6 = objc_alloc_init(MEMORY[0x1E6996BD0]);
  v7 = [actionCopy performActionWithContext:v6];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CNAvatarCardViewController_contactActionsController_didSelectAction___block_invoke;
  v12[3] = &unk_1E74E5980;
  v8 = actionCopy;
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
  cardController = [(CNAvatarCardViewController *)self cardController];
  headerView = [cardController headerView];
  photoView = [headerView photoView];
  isHidden = [photoView isHidden];

  return isHidden ^ 1;
}

- (void)setTransitioningImageVisible:(BOOL)visible
{
  visibleCopy = visible;
  cardController = [(CNAvatarCardViewController *)self cardController];
  headerView = [cardController headerView];
  photoView = [headerView photoView];
  [photoView setHidden:!visibleCopy];
}

- (CGRect)transitioningImageFrame
{
  cardController = [(CNAvatarCardViewController *)self cardController];
  headerView = [cardController headerView];
  photoView = [headerView photoView];
  avatarView = [photoView avatarView];

  [avatarView contentImageFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  transitioningView = [(CNAvatarCardViewController *)self transitioningView];
  [avatarView convertRect:transitioningView toView:{v8, v10, v12, v14}];
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
  cardController = [(CNAvatarCardViewController *)self cardController];
  headerView = [cardController headerView];
  photoView = [headerView photoView];
  avatarView = [photoView avatarView];
  contentImage = [avatarView contentImage];

  return contentImage;
}

- (CGRect)transitioningContentFrame
{
  actionsView = [(CNAvatarCardViewController *)self actionsView];
  [actionsView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  actionsView2 = [(CNAvatarCardViewController *)self actionsView];
  transitioningView = [(CNAvatarCardViewController *)self transitioningView];
  [actionsView2 convertRect:transitioningView toView:{v5, v7, v9, v11}];
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
  cardController = [(CNAvatarCardViewController *)self cardController];
  headerView = [cardController headerView];
  [headerView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;

  view = [(CNAvatarCardViewController *)self view];
  [view bounds];
  Width = CGRectGetWidth(v28);

  transitioningView = [(CNAvatarCardViewController *)self transitioningView];
  cardController2 = [(CNAvatarCardViewController *)self cardController];
  headerView2 = [cardController2 headerView];
  [transitioningView convertRect:headerView2 fromView:{v6, v8, Width, v10}];
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

- (void)dismissAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (!animated)
  {
    view = [(CNAvatarCardViewController *)self view];
    [view setHidden:1];
  }

  cardController = [(CNAvatarCardViewController *)self cardController];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__CNAvatarCardViewController_dismissAnimated___block_invoke;
  v7[3] = &unk_1E74E6A88;
  v7[4] = self;
  [cardController dismissAnimated:animatedCopy completionHandler:v7];
}

void __46__CNAvatarCardViewController_dismissAnimated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setHidden:0];
}

- (id)viewControllerForCardActionsView:(id)view
{
  if ([(CNAvatarCardViewController *)self dismissesBeforePerforming])
  {
    cardController = [(CNAvatarCardViewController *)self cardController];
    delegate = [cardController delegate];
    cardController2 = [(CNAvatarCardViewController *)self cardController];
    selfCopy = [delegate presentingViewControllerForAvatarCardController:cardController2];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)cardActionsView:(id)view didShowActions:(id)actions
{
  [(CNAvatarCardViewController *)self _updatePreferredSize:view];
  presentationController = [(CNAvatarCardViewController *)self presentationController];
  [presentationController systemLayoutFittingSizeDidChangeForChildContentContainer:self];
}

- (id)cardActionsView:(id)view orderedPropertiesForProperties:(id)properties category:(id)category
{
  propertiesCopy = properties;
  categoryCopy = category;
  delegate = [(CNAvatarCardViewController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(CNAvatarCardViewController *)self delegate];
    v12 = [delegate2 cardViewController:self orderedPropertiesForProperties:propertiesCopy category:categoryCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)refreshActions
{
  legacyContactActionsView = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [legacyContactActionsView refreshActions];
}

- (void)_updatePreferredSize
{
  view = [(CNAvatarCardViewController *)self view];
  [view frame];
  Width = CGRectGetWidth(v22);

  view2 = [(CNAvatarCardViewController *)self view];
  LODWORD(v6) = 1148846080;
  LODWORD(v7) = 1112014848;
  [view2 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:0.0 verticalFittingPriority:{v6, v7}];
  v9 = v8;

  view3 = [(CNAvatarCardViewController *)self view];
  [view3 frame];
  v12 = v11;
  v14 = v13;
  v16 = v15;

  view4 = [(CNAvatarCardViewController *)self view];
  [view4 setFrame:{v12, v14, v16, v9}];

  [(CNAvatarCardViewController *)self setPreferredContentSize:0.0, v9];
  delegate = [(CNAvatarCardViewController *)self delegate];
  v19 = objc_opt_respondsToSelector();

  if (v19)
  {
    delegate2 = [(CNAvatarCardViewController *)self delegate];
    [delegate2 cardViewControllerDidUpdatePreferredSize:self];
  }
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v7.receiver = self;
  v7.super_class = CNAvatarCardViewController;
  containerCopy = container;
  [(CNAvatarCardViewController *)&v7 preferredContentSizeDidChangeForChildContentContainer:containerCopy];
  v5 = [(CNAvatarCardViewController *)self actionsController:v7.receiver];
  viewController = [v5 viewController];

  if (viewController == containerCopy)
  {
    [(CNAvatarCardViewController *)self updateActionsControllerHeightConstraint];
    [(CNAvatarCardViewController *)self _updatePreferredSize];
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v5 viewDidDisappear:disappear];
  [(CNAvatarCardViewController *)self setVisible:0];
  actionsController = [(CNAvatarCardViewController *)self actionsController];
  [actionsController cancelModels];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v5 viewWillDisappear:disappear];
  actionListViewController = [(CNAvatarCardViewController *)self actionListViewController];
  [actionListViewController stopTrackingRollover];
}

- (void)viewDidAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v7 viewDidAppear:appear];
  actionListViewController = [(CNAvatarCardViewController *)self actionListViewController];
  cardController = [(CNAvatarCardViewController *)self cardController];
  rolloverGestureRecognizer = [cardController rolloverGestureRecognizer];
  [actionListViewController startTrackingRolloverWithGestureRecognizer:rolloverGestureRecognizer];
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
  actionsView = [(CNAvatarCardViewController *)self actionsView];
  [actionsView setBackgroundColor:v7];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v4 traitCollectionDidChange:change];
  [(CNAvatarCardViewController *)self updateActionsViewBackgroundColor];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v5 viewWillAppear:appear];
  [(CNAvatarCardViewController *)self setVisible:1];
  [(CNAvatarCardViewController *)self _updatePreferredSize];
  legacyContactActionsView = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [legacyContactActionsView reset];
}

- (void)updateActionsControllerHeightConstraint
{
  actionsController = [(CNAvatarCardViewController *)self actionsController];
  viewController = [actionsController viewController];
  [viewController preferredContentSize];
  v6 = v5;

  actionsViewControllerHeightConstraint = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];
  [actionsViewControllerHeightConstraint setConstant:v6];
}

- (void)didAddActionsViewToHierarchy
{
  v21[1] = *MEMORY[0x1E69E9840];
  actionsController = [(CNAvatarCardViewController *)self actionsController];

  if (actionsController)
  {
    actionsController2 = [(CNAvatarCardViewController *)self actionsController];
    viewController = [actionsController2 viewController];
    [viewController didMoveToParentViewController:self];

    actionsViewControllerHeightConstraint = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];

    if (actionsViewControllerHeightConstraint)
    {
      v7 = MEMORY[0x1E696ACD8];
      actionsViewControllerHeightConstraint2 = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];
      v21[0] = actionsViewControllerHeightConstraint2;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
      [v7 deactivateConstraints:v9];
    }

    v10 = MEMORY[0x1E696ACD8];
    actionsController3 = [(CNAvatarCardViewController *)self actionsController];
    viewController2 = [actionsController3 viewController];
    view = [viewController2 view];
    v14 = [v10 constraintWithItem:view attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:0.0 constant:0.0];
    [(CNAvatarCardViewController *)self setActionsViewControllerHeightConstraint:v14];

    actionsViewControllerHeightConstraint3 = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];
    LODWORD(v16) = 1144750080;
    [actionsViewControllerHeightConstraint3 setPriority:v16];

    [(CNAvatarCardViewController *)self updateActionsControllerHeightConstraint];
    v17 = MEMORY[0x1E696ACD8];
    actionsViewControllerHeightConstraint4 = [(CNAvatarCardViewController *)self actionsViewControllerHeightConstraint];
    v20 = actionsViewControllerHeightConstraint4;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    [v17 activateConstraints:v19];
  }
}

- (void)willAddActionsViewToHierarchy
{
  actionsController = [(CNAvatarCardViewController *)self actionsController];

  if (actionsController)
  {
    actionsController2 = [(CNAvatarCardViewController *)self actionsController];
    viewController = [actionsController2 viewController];
    [(CNAvatarCardViewController *)self addChildViewController:viewController];
  }
}

- (CNAvatarCardActionListController)actionListController
{
  actionsController = [(CNAvatarCardViewController *)self actionsController];

  if (actionsController)
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
  actionsController = [(CNAvatarCardViewController *)self actionsController];

  if (actionsController)
  {
    actionsController2 = [(CNAvatarCardViewController *)self actionsController];
    displayedController = [actionsController2 displayedController];
  }

  else
  {
    displayedController = [(CNAvatarCardViewController *)self legacyContactActionsView];
  }

  return displayedController;
}

- (id)actionsView
{
  actionsController = [(CNAvatarCardViewController *)self actionsController];

  if (actionsController)
  {
    actionsController2 = [(CNAvatarCardViewController *)self actionsController];
    displayedController = [actionsController2 displayedController];
    view = [displayedController view];
  }

  else
  {
    view = [(CNAvatarCardViewController *)self legacyContactActionsView];
  }

  return view;
}

- (BOOL)bypassActionValidation
{
  legacyContactActionsView = [(CNAvatarCardViewController *)self legacyContactActionsView];
  bypassActionValidation = [legacyContactActionsView bypassActionValidation];

  return bypassActionValidation;
}

- (void)setBypassActionValidation:(BOOL)validation
{
  validationCopy = validation;
  legacyContactActionsView = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [legacyContactActionsView setBypassActionValidation:validationCopy];
}

- (NSArray)actionCategories
{
  legacyContactActionsView = [(CNAvatarCardViewController *)self legacyContactActionsView];
  actionCategories = [legacyContactActionsView actionCategories];

  return actionCategories;
}

- (void)setActionCategories:(id)categories
{
  categoriesCopy = categories;
  legacyContactActionsView = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [legacyContactActionsView setActionCategories:categoriesCopy];
}

- (CGRect)_photoFrameInView:(id)view
{
  viewCopy = view;
  cardController = [(CNAvatarCardViewController *)self cardController];
  headerView = [cardController headerView];
  photoView = [headerView photoView];

  [photoView bounds];
  [viewCopy convertRect:photoView fromView:?];
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
  legacyContactActionsView = [(CNAvatarCardViewController *)self legacyContactActionsView];
  dismissesBeforePerforming = [legacyContactActionsView dismissesBeforePerforming];

  return dismissesBeforePerforming;
}

- (void)setDismissesBeforePerforming:(BOOL)performing
{
  performingCopy = performing;
  legacyContactActionsView = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [legacyContactActionsView setDismissesBeforePerforming:performingCopy];
}

- (BOOL)actionsReversed
{
  actionListController = [(CNAvatarCardViewController *)self actionListController];
  actionsReversed = [actionListController actionsReversed];

  return actionsReversed;
}

- (void)setActionsReversed:(BOOL)reversed
{
  reversedCopy = reversed;
  actionListController = [(CNAvatarCardViewController *)self actionListController];
  [actionListController setActionsReversed:reversedCopy];
}

- (void)setHeaderOnTop:(BOOL)top
{
  if (self->_headerOnTop != top)
  {
    self->_headerOnTop = top;
    view = [(CNAvatarCardViewController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  cardController = [(CNAvatarCardViewController *)self cardController];
  headerView = [cardController headerView];
  [headerView updateFontSizes];

  legacyContactActionsView = [(CNAvatarCardViewController *)self legacyContactActionsView];
  [legacyContactActionsView reset];
}

- (void)updateViewConstraints
{
  v19[3] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v15 updateViewConstraints];
  v3 = MEMORY[0x1E696ACD8];
  verticalConstraints = [(CNAvatarCardViewController *)self verticalConstraints];
  [v3 deactivateConstraints:verticalConstraints];

  if ([(CNAvatarCardViewController *)self hasHeader])
  {
    v18[0] = @"headerContainerView";
    headerContainerView = [(CNAvatarCardViewController *)self headerContainerView];
    v19[0] = headerContainerView;
    v18[1] = @"actionsView";
    actionsView = [(CNAvatarCardViewController *)self actionsView];
    v19[1] = actionsView;
    v18[2] = @"effectView";
    effectView = [(CNAvatarCardViewController *)self effectView];
    v19[2] = effectView;
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
    effectView2 = [(CNAvatarCardViewController *)self effectView];
    v17 = effectView2;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];

    v10 = MEMORY[0x1E696ACD8];
    v9 = @"V:|[effectView]|";
  }

  v12 = [v10 constraintsWithVisualFormat:v9 options:0 metrics:0 views:v8];
  [(CNAvatarCardViewController *)self setVerticalConstraints:v12];

  v13 = MEMORY[0x1E696ACD8];
  verticalConstraints2 = [(CNAvatarCardViewController *)self verticalConstraints];
  [v13 activateConstraints:verticalConstraints2];
}

- (void)viewDidLoad
{
  v68[6] = *MEMORY[0x1E69E9840];
  v64.receiver = self;
  v64.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v64 viewDidLoad];
  view = [(CNAvatarCardViewController *)self view];
  [view setBackgroundColor:0];
  [(CNAvatarCardViewController *)self willAddActionsViewToHierarchy];
  headerView = 0;
  v5 = 0;
  if ([(CNAvatarCardViewController *)self hasHeader])
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v6 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
    [v5 setBackgroundColor:v6];

    layer = [v5 layer];
    [layer setCornerRadius:13.0];

    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [view addSubview:v5];
    [(CNAvatarCardViewController *)self setHeaderContainerView:v5];
    cardController = [(CNAvatarCardViewController *)self cardController];
    headerView = [cardController headerView];

    [headerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 addSubview:headerView];
  }

  actionsView = [(CNAvatarCardViewController *)self actionsView];
  [actionsView setTranslatesAutoresizingMaskIntoConstraints:0];
  layer2 = [actionsView layer];
  [layer2 setCornerRadius:13.0];

  v60 = actionsView;
  [actionsView setClipsToBounds:1];
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
  actionsView2 = [(CNAvatarCardViewController *)self actionsView];
  [v17 addSubview:actionsView2];

  actionsView3 = [(CNAvatarCardViewController *)self actionsView];
  [actionsView3 setTranslatesAutoresizingMaskIntoConstraints:0];

  [view addSubview:v16];
  [(CNAvatarCardViewController *)self didAddActionsViewToHierarchy];
  [(CNAvatarCardViewController *)self setEffectView:v16];
  [(CNAvatarCardViewController *)self setActionsListView:v16];
  array = [MEMORY[0x1E695DF70] array];
  if (v5 && headerView)
  {
    v67[0] = @"headerContainerView";
    v67[1] = @"headerView";
    v68[0] = v5;
    v68[1] = headerView;
    v67[2] = @"actionsView";
    actionsView4 = [(CNAvatarCardViewController *)self actionsView];
    v68[2] = actionsView4;
    v68[3] = v16;
    v67[3] = @"effectView";
    v67[4] = @"vibrancyView";
    v67[5] = @"view";
    v68[4] = v17;
    v68[5] = view;
    v22 = MEMORY[0x1E695DF20];
    v23 = v68;
    v24 = v67;
    v25 = 6;
  }

  else
  {
    v65[0] = @"actionsView";
    actionsView4 = [(CNAvatarCardViewController *)self actionsView];
    v66[0] = actionsView4;
    v66[1] = v16;
    v65[1] = @"effectView";
    v65[2] = @"vibrancyView";
    v65[3] = @"view";
    v66[2] = v17;
    v66[3] = view;
    v22 = MEMORY[0x1E695DF20];
    v23 = v66;
    v24 = v65;
    v25 = 4;
  }

  v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
  v59 = v17;
  v61 = headerView;
  v62 = v5;
  v63 = view;

  if ([(CNAvatarCardViewController *)self hasHeader])
  {
    v27 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-0-[headerView]-(margin)-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
    [array addObjectsFromArray:v27];

    headerContainerView = [(CNAvatarCardViewController *)self headerContainerView];
    leftAnchor = [headerContainerView leftAnchor];
    view2 = [(CNAvatarCardViewController *)self view];
    safeAreaLayoutGuide = [view2 safeAreaLayoutGuide];
    leftAnchor2 = [safeAreaLayoutGuide leftAnchor];
    [(CNAvatarCardViewController *)self borderMargin];
    v33 = [leftAnchor constraintEqualToAnchor:leftAnchor2 constant:?];
    [array addObject:v33];

    headerContainerView2 = [(CNAvatarCardViewController *)self headerContainerView];
    rightAnchor = [headerContainerView2 rightAnchor];
    view3 = [(CNAvatarCardViewController *)self view];
    safeAreaLayoutGuide2 = [view3 safeAreaLayoutGuide];
    rightAnchor2 = [safeAreaLayoutGuide2 rightAnchor];
    [(CNAvatarCardViewController *)self borderMargin];
    v40 = [rightAnchor constraintEqualToAnchor:rightAnchor2 constant:-v39];
    [array addObject:v40];

    v41 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|[headerView]|" options:0 metrics:&unk_1F0D4BB60 views:v26];
    [array addObjectsFromArray:v41];
  }

  effectView = [(CNAvatarCardViewController *)self effectView];
  leftAnchor3 = [effectView leftAnchor];
  view4 = [(CNAvatarCardViewController *)self view];
  safeAreaLayoutGuide3 = [view4 safeAreaLayoutGuide];
  leftAnchor4 = [safeAreaLayoutGuide3 leftAnchor];
  [(CNAvatarCardViewController *)self borderMargin];
  v47 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4 constant:?];
  [array addObject:v47];

  effectView2 = [(CNAvatarCardViewController *)self effectView];
  rightAnchor3 = [effectView2 rightAnchor];
  view5 = [(CNAvatarCardViewController *)self view];
  safeAreaLayoutGuide4 = [view5 safeAreaLayoutGuide];
  rightAnchor4 = [safeAreaLayoutGuide4 rightAnchor];
  [(CNAvatarCardViewController *)self borderMargin];
  v54 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4 constant:-v53];
  [array addObject:v54];

  v55 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[vibrancyView]-0-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
  [array addObjectsFromArray:v55];

  v56 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-0-[vibrancyView]-0-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
  [array addObjectsFromArray:v56];

  v57 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"V:|-0-[actionsView]-0-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
  [array addObjectsFromArray:v57];

  v58 = [MEMORY[0x1E696ACD8] constraintsWithVisualFormat:@"H:|-0-[actionsView]-0-|" options:0 metrics:&unk_1F0D4BB60 views:v26];
  [array addObjectsFromArray:v58];

  [MEMORY[0x1E696ACD8] activateConstraints:array];
  [v63 setNeedsUpdateConstraints];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNAvatarCardViewController;
  [(CNAvatarCardViewController *)&v4 dealloc];
}

- (CNAvatarCardViewController)initWithContacts:(id)contacts
{
  contactsCopy = contacts;
  v16.receiver = self;
  v16.super_class = CNAvatarCardViewController;
  v5 = [(CNAvatarCardViewController *)&v16 initWithNibName:0 bundle:0];
  if ([contactsCopy count] > 1)
  {
    goto LABEL_5;
  }

  firstObject = [contactsCopy firstObject];
  if ([firstObject isUnknown])
  {

LABEL_5:
    v9 = [CNAvatarCardActionsView alloc];
    v10 = [(CNAvatarCardActionsView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(CNAvatarCardActionsView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNAvatarCardActionsView *)v10 setDelegate:v5];
    [(CNAvatarCardActionsView *)v10 setContacts:contactsCopy];
    [(CNAvatarCardViewController *)v5 setLegacyContactActionsView:v10];
    goto LABEL_6;
  }

  firstObject2 = [contactsCopy firstObject];
  isSuggestedMe = [firstObject2 isSuggestedMe];

  if (isSuggestedMe)
  {
    goto LABEL_5;
  }

  if ([contactsCopy count] != 1)
  {
    goto LABEL_7;
  }

  v13 = [CNContactActionsController alloc];
  firstObject3 = [contactsCopy firstObject];
  v15 = +[CNContactActionsController supportedActionTypes];
  v10 = [(CNContactActionsController *)v13 initWithContact:firstObject3 actionTypes:v15];

  [(CNAvatarCardActionsView *)v10 setDisplayMenuIconAtTopLevel:1];
  [(CNAvatarCardActionsView *)v10 setDelegate:v5];
  [(CNAvatarCardViewController *)v5 setActionsController:v10];
LABEL_6:

LABEL_7:
  [(CNAvatarCardViewController *)v5 setBorderMargin:10.0];
  [(CNAvatarCardViewController *)v5 setModalPresentationStyle:4];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:v5 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

  return v5;
}

@end