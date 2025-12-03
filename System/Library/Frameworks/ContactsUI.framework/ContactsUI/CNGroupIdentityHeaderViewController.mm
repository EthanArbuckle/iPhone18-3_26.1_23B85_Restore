@interface CNGroupIdentityHeaderViewController
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)groupContactIsSameAsCurrentContact:(id)contact;
- (BOOL)preferredContentSizeCategoryIsXL;
- (BOOL)shouldShowActionButton;
- (BOOL)shouldShowActionsView;
- (BOOL)shouldShowSharedProfileBannerView;
- (BOOL)shouldUseTitleLabelWrappedFontGivenBoundingRect:(CGRect)rect;
- (CGRect)titleLabelBoundingRectForFont:(id)font text:(id)text maxWidth:(double)width context:(id)context;
- (CGSize)previousSize;
- (CGSize)sizeForLayoutInContainerSize:(CGSize)size;
- (CNGroupIdentityHeaderViewController)initWithGroupIdentity:(id)identity actionsViewConfiguration:(id)configuration avatarViewControllerSettings:(id)settings;
- (CNGroupIdentityHeaderViewControllerDelegate)delegate;
- (UIFont)titleLabelFont;
- (UIFont)titleLabelWrappedFont;
- (double)titleLabelBaselineOffset;
- (id)displayNameForGroupIdentity;
- (id)viewForActionAtIndex:(unint64_t)index;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)didTapActionButton;
- (void)groupIdentityDidUpdate:(id)update;
- (void)groupIdentityInlineActionsViewController:(id)controller didPerformActionOfType:(id)type fromDisambiguation:(BOOL)disambiguation;
- (void)groupIdentityInlineActionsViewController:(id)controller willPresentDisambiguationUIForActionType:(id)type;
- (void)hideSharedProfileBannerViewForDismiss;
- (void)loadView;
- (void)performAnimationToNewContact:(id)contact withCompletion:(id)completion;
- (void)setActionButtonTitle:(id)title;
- (void)setAvatarBadgeImage:(id)image;
- (void)setAvatarBadgeStyleSettings:(id)settings;
- (void)setCustomSubtitleLabel:(id)label;
- (void)setIsMarkedForSyndication:(BOOL)syndication;
- (void)setMediaContextBadge:(id)badge;
- (void)setSharedProfileBannerStyle:(id)style;
- (void)setSharedProfileStateOracle:(id)oracle;
- (void)setShouldHideTitleLabel:(BOOL)label;
- (void)setShouldShowContactBusy:(BOOL)busy;
- (void)setShouldShowStaticKeyBadge:(BOOL)badge;
- (void)setupActionButton;
- (void)setupActionsView;
- (void)setupAvatarView;
- (void)setupCustomSubtitleLabel;
- (void)setupEmptyActionsView;
- (void)setupPopulatedActionsView;
- (void)setupSharedProfileBannerView;
- (void)setupTitleLabel;
- (void)sharedProfileBannerView:(id)view didDismissWithUpdatedContact:(id)contact forAction:(unint64_t)action;
- (void)sharedProfileBannerView:(id)view didUpdateContact:(id)contact forAction:(unint64_t)action;
- (void)updateActionButton;
- (void)updateActionButtonFont;
- (void)updateGroupWithContact:(id)contact;
- (void)updateTitleLabel;
- (void)updateTitleLabelFont;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNGroupIdentityHeaderViewController

- (CGSize)previousSize
{
  width = self->_previousSize.width;
  height = self->_previousSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CNGroupIdentityHeaderViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sharedProfileBannerView:(id)view didDismissWithUpdatedContact:(id)contact forAction:(unint64_t)action
{
  contactCopy = contact;
  [(CNGroupIdentityHeaderViewController *)self setTappedSharedProfileBannerAction:0];
  [(CNGroupIdentityHeaderViewController *)self updateGroupWithContact:contactCopy];
  [(CNGroupIdentityHeaderViewController *)self hideSharedProfileBannerViewForDismiss];
  delegate = [(CNGroupIdentityHeaderViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CNGroupIdentityHeaderViewController *)self delegate];
    [delegate2 groupIdentityHeaderViewController:self didDismissSharedProfileBannerWithUpdatedContact:contactCopy forAction:action];
  }
}

- (void)sharedProfileBannerView:(id)view didUpdateContact:(id)contact forAction:(unint64_t)action
{
  contactCopy = contact;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__CNGroupIdentityHeaderViewController_sharedProfileBannerView_didUpdateContact_forAction___block_invoke;
  v9[3] = &unk_1E74E6DF8;
  v9[4] = self;
  v10 = contactCopy;
  actionCopy = action;
  v8 = contactCopy;
  [(CNGroupIdentityHeaderViewController *)self performAnimationToNewContact:v8 withCompletion:v9];
}

uint64_t __90__CNGroupIdentityHeaderViewController_sharedProfileBannerView_didUpdateContact_forAction___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    [v4 groupIdentityHeaderViewController:*(a1 + 32) sharedProfileBannerDidUpdateContact:*(a1 + 40) forAction:*(a1 + 48)];
  }

  [*(a1 + 32) setTappedSharedProfileBannerAction:*(a1 + 48)];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 updateGroupWithContact:v6];
}

- (void)groupIdentityInlineActionsViewController:(id)controller willPresentDisambiguationUIForActionType:(id)type
{
  typeCopy = type;
  delegate = [(CNGroupIdentityHeaderViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(CNGroupIdentityHeaderViewController *)self delegate];
    [delegate2 groupIdentityHeaderViewController:self willPresentDisambiguationUIForActionType:typeCopy];
  }
}

- (void)groupIdentityInlineActionsViewController:(id)controller didPerformActionOfType:(id)type fromDisambiguation:(BOOL)disambiguation
{
  disambiguationCopy = disambiguation;
  typeCopy = type;
  delegate = [(CNGroupIdentityHeaderViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(CNGroupIdentityHeaderViewController *)self delegate];
    [delegate2 groupIdentityHeaderViewController:self didPerformActionOfType:typeCopy fromDisambiguation:disambiguationCopy];
  }
}

- (id)displayNameForGroupIdentity
{
  contactFormatter = [(CNGroupIdentityHeaderViewController *)self contactFormatter];
  group = [(CNGroupIdentityHeaderViewController *)self group];
  v5 = [contactFormatter stringFromGroupIdentity:group];

  return v5;
}

- (CGSize)sizeForLayoutInContainerSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v57 = *MEMORY[0x1E69E9840];
  displayNameForGroupIdentity = [(CNGroupIdentityHeaderViewController *)self displayNameForGroupIdentity];
  v7 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v7 setMaximumNumberOfLines:2];
  titleLabelFont = [(CNGroupIdentityHeaderViewController *)self titleLabelFont];
  [(CNGroupIdentityHeaderViewController *)self titleLabelBoundingRectForFont:titleLabelFont text:displayNameForGroupIdentity maxWidth:v7 context:width];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0 && -[CNGroupIdentityHeaderViewController shouldUseTitleLabelWrappedFontGivenBoundingRect:](self, "shouldUseTitleLabelWrappedFontGivenBoundingRect:", v10, v12, v14, v16))
  {
    titleLabelWrappedFont = [(CNGroupIdentityHeaderViewController *)self titleLabelWrappedFont];
    [(CNGroupIdentityHeaderViewController *)self titleLabelBoundingRectForFont:titleLabelWrappedFont text:displayNameForGroupIdentity maxWidth:v7 context:width];
    v16 = v18;
  }

  v19 = v16 + 102.0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  titleLabelStackView = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  arrangedSubviews = [titleLabelStackView arrangedSubviews];

  v22 = [arrangedSubviews countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v51;
    do
    {
      v25 = 0;
      do
      {
        if (*v51 != v24)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        v26 = *(*(&v50 + 1) + 8 * v25);
        objc_opt_class();
        v27 = v26;
        if (objc_opt_isKindOfClass())
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v29 = v28;

        if (v29)
        {
          [v29 sizeToFit];
          [v29 bounds];
          v19 = v19 + v30;
        }

        ++v25;
      }

      while (v23 != v25);
      v23 = [arrangedSubviews countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v23);
  }

  if ([(CNGroupIdentityHeaderViewController *)self shouldShowActionButton])
  {
    actionButton = [(CNGroupIdentityHeaderViewController *)self actionButton];
    actionButtonTitle = [(CNGroupIdentityHeaderViewController *)self actionButtonTitle];
    [actionButton setTitle:actionButtonTitle forState:0];

    [v7 setMaximumNumberOfLines:2];
    actionButtonTitle2 = [(CNGroupIdentityHeaderViewController *)self actionButtonTitle];
    v54 = *MEMORY[0x1E69DB648];
    v34 = +[CNUIFontRepository groupHeaderActionButtonFont];
    v55 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [actionButtonTitle2 boundingRectWithSize:33 options:v35 attributes:v7 context:{width, height}];
    v37 = v36;

    v38 = v19 + v37 + -2.0;
    if ([(CNGroupIdentityHeaderViewController *)self preferredContentSizeCategoryIsXL])
    {
      v19 = v38 + 25.0;
    }

    else
    {
      v19 = v38;
    }
  }

  if ([(CNGroupIdentityHeaderViewController *)self shouldShowActionsView])
  {
    [(CNGroupIdentityHeaderViewController *)self actionsViewTopMargin];
    v40 = v19 + v39;
    actionsViewController = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
    [actionsViewController actionsViewHeightThatFits:{width, height}];
    v43 = v42;

    v19 = v40 + v43;
  }

  v44 = v19 + 10.0;
  if ([(CNGroupIdentityHeaderViewController *)self shouldShowSharedProfileBannerView])
  {
    sharedProfileBannerView = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerView];
    [sharedProfileBannerView estimatedHeightForWidth:width];
    v47 = v44 + v46 + 10.0;

    v44 = v47 + -5.0;
  }

  if (width > 454.0)
  {
    width = 454.0;
  }

  v48 = ceil(width);
  v49 = ceil(v44);
  result.height = v49;
  result.width = v48;
  return result;
}

- (id)viewForActionAtIndex:(unint64_t)index
{
  actionsViewController = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  v5 = [actionsViewController viewForActionAtIndex:index];

  return v5;
}

- (void)performAnimationToNewContact:(id)contact withCompletion:(id)completion
{
  completionCopy = completion;
  contactCopy = contact;
  groupAvatarViewController = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [groupAvatarViewController primaryAvatarSize];
  v10 = v9;
  v12 = v11;

  traitCollection = [(CNGroupIdentityHeaderViewController *)self traitCollection];
  v14 = [traitCollection layoutDirection] == 1;

  v16 = objc_alloc_init(CNSharedProfileAnimationGenerator);
  groupAvatarViewController2 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [(CNSharedProfileAnimationGenerator *)v16 performCoinFlipAnimationForAnimatingAvatarView:groupAvatarViewController2 toContact:contactCopy rightToLeft:v14 avatarSize:completionCopy completionHandler:v10, v12];
}

- (void)hideSharedProfileBannerViewForDismiss
{
  v9[1] = *MEMORY[0x1E69E9840];
  sharedProfileBannerContainerView = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];

  if (sharedProfileBannerContainerView)
  {
    sharedProfileBannerContainerView2 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];
    [sharedProfileBannerContainerView2 removeFromSuperview];
  }

  actionsViewBottomConstraint = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];

  if (actionsViewBottomConstraint)
  {
    v6 = MEMORY[0x1E696ACD8];
    actionsViewBottomConstraint2 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];
    v9[0] = actionsViewBottomConstraint2;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 activateConstraints:v8];
  }
}

- (void)setupSharedProfileBannerView
{
  v72[1] = *MEMORY[0x1E69E9840];
  sharedProfileBannerContainerView = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];

  if (sharedProfileBannerContainerView)
  {
    sharedProfileBannerContainerView2 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];
    [sharedProfileBannerContainerView2 removeFromSuperview];
  }

  if ([(CNGroupIdentityHeaderViewController *)self shouldShowSharedProfileBannerView])
  {
    actionsViewBottomConstraint4 = objc_alloc_init(CNSharedProfileBannerView);
    [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 setDelegate:self];
    sharedProfileBannerStyle = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 setStyle:sharedProfileBannerStyle];

    sharedProfileStateOracle = [(CNGroupIdentityHeaderViewController *)self sharedProfileStateOracle];
    [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 setUpWithSharedProfileStateOracle:sharedProfileStateOracle tappedAction:[(CNGroupIdentityHeaderViewController *)self tappedSharedProfileBannerAction] hasPerformedAnimation:[(CNGroupIdentityHeaderViewController *)self hasPerformedSharedProfileBannerAnimation]];

    [(CNGroupIdentityHeaderViewController *)self setHasPerformedSharedProfileBannerAnimation:1];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    sharedProfileBannerStyle2 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    backgroundColor = [sharedProfileBannerStyle2 backgroundColor];
    [v8 setBackgroundColor:backgroundColor];

    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v13 = [featureFlags isFeatureEnabled:29];

    layer = [v8 layer];
    v15 = layer;
    v16 = 12.0;
    if (v13)
    {
      v16 = 26.0;
    }

    [layer setCornerRadius:v16];

    view = [(CNGroupIdentityHeaderViewController *)self view];
    [view addSubview:v8];

    [v8 addSubview:actionsViewBottomConstraint4];
    sharedProfileBannerStyle3 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    backgroundVisualEffectView = [sharedProfileBannerStyle3 backgroundVisualEffectView];

    if (backgroundVisualEffectView)
    {
      sharedProfileBannerStyle4 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
      backgroundVisualEffectView2 = [sharedProfileBannerStyle4 backgroundVisualEffectView];
      [v8 addBackgroundVisualEffectView:backgroundVisualEffectView2 withCornerRadius:12.0];
    }

    actionsViewBottomConstraint = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];

    if (actionsViewBottomConstraint)
    {
      v23 = MEMORY[0x1E696ACD8];
      actionsViewBottomConstraint2 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];
      v71 = actionsViewBottomConstraint2;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
      [v23 deactivateConstraints:v25];
    }

    shouldShowActionsView = [(CNGroupIdentityHeaderViewController *)self shouldShowActionsView];
    topAnchor = [v8 topAnchor];
    if (shouldShowActionsView)
    {
      actionsViewController = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
      view2 = [actionsViewController view];
      bottomAnchor = [view2 bottomAnchor];
      v31 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:10.0];
    }

    else
    {
      actionsViewController = [(CNGroupIdentityHeaderViewController *)self actionButton];
      view2 = [actionsViewController bottomAnchor];
      v31 = [topAnchor constraintEqualToAnchor:view2 constant:10.0];
    }

    v60 = v31;

    leadingAnchor = [v8 leadingAnchor];
    view3 = [(CNGroupIdentityHeaderViewController *)self view];
    leadingAnchor2 = [view3 leadingAnchor];
    sharedProfileBannerStyle5 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    [sharedProfileBannerStyle5 leadingTrailingInset];
    v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    [(CNGroupIdentityHeaderViewController *)self setSharedProfileBannerContainerLeadingConstraint:v38];

    trailingAnchor = [v8 trailingAnchor];
    view4 = [(CNGroupIdentityHeaderViewController *)self view];
    trailingAnchor2 = [view4 trailingAnchor];
    sharedProfileBannerStyle6 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    [sharedProfileBannerStyle6 leadingTrailingInset];
    v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v43];
    [(CNGroupIdentityHeaderViewController *)self setSharedProfileBannerContainerTrailingConstraint:v44];

    v59 = MEMORY[0x1E696ACD8];
    v70[0] = v31;
    sharedProfileBannerContainerLeadingConstraint = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerLeadingConstraint];
    v70[1] = sharedProfileBannerContainerLeadingConstraint;
    sharedProfileBannerContainerTrailingConstraint = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerTrailingConstraint];
    v70[2] = sharedProfileBannerContainerTrailingConstraint;
    bottomAnchor2 = [v8 bottomAnchor];
    view5 = [(CNGroupIdentityHeaderViewController *)self view];
    bottomAnchor3 = [view5 bottomAnchor];
    v64 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v70[3] = v64;
    topAnchor2 = [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 topAnchor];
    topAnchor3 = [v8 topAnchor];
    v61 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
    v70[4] = v61;
    leadingAnchor3 = [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 leadingAnchor];
    layoutMarginsGuide = [v8 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v70[5] = v55;
    trailingAnchor3 = [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 trailingAnchor];
    layoutMarginsGuide2 = [v8 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide2 trailingAnchor];
    v45 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v70[6] = v45;
    bottomAnchor4 = [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 bottomAnchor];
    bottomAnchor5 = [v8 bottomAnchor];
    v48 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
    v70[7] = v48;
    heightAnchor = [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 heightAnchor];
    [(CNSharedProfileBannerView *)actionsViewBottomConstraint4 estimatedHeight];
    v50 = [heightAnchor constraintGreaterThanOrEqualToConstant:?];
    v70[8] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:9];
    [v59 activateConstraints:v51];

    [(CNGroupIdentityHeaderViewController *)self setSharedProfileBannerContainerView:v8];
    [(CNGroupIdentityHeaderViewController *)self setSharedProfileBannerView:actionsViewBottomConstraint4];
  }

  else
  {
    actionsViewBottomConstraint3 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];

    if (!actionsViewBottomConstraint3)
    {
      return;
    }

    v33 = MEMORY[0x1E696ACD8];
    actionsViewBottomConstraint4 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];
    v72[0] = actionsViewBottomConstraint4;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
    [v33 activateConstraints:v8];
  }
}

- (BOOL)shouldShowSharedProfileBannerView
{
  currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
  featureFlags = [currentEnvironment featureFlags];
  v5 = [featureFlags isFeatureEnabled:28];

  if (!v5)
  {
    return 0;
  }

  sharedProfileStateOracle = [(CNGroupIdentityHeaderViewController *)self sharedProfileStateOracle];

  if (!sharedProfileStateOracle)
  {
    return 0;
  }

  group = [(CNGroupIdentityHeaderViewController *)self group];
  contacts = [group contacts];
  v9 = [contacts count];

  if (v9 != 1)
  {
    return 0;
  }

  sharedProfileBannerView = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerView];
  isIgnored = [sharedProfileBannerView isIgnored];

  if (isIgnored)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEFAULT, "Not showing banner view, user dismissed banner view", v16, 2u);
    }

    return 0;
  }

  sharedProfileStateOracle2 = [(CNGroupIdentityHeaderViewController *)self sharedProfileStateOracle];
  if ([sharedProfileStateOracle2 bannerActionTypeForEffectiveState])
  {
    v13 = 1;
  }

  else
  {
    v13 = [(CNGroupIdentityHeaderViewController *)self tappedSharedProfileBannerAction]!= 0;
  }

  return v13;
}

- (void)setSharedProfileBannerStyle:(id)style
{
  styleCopy = style;
  if (self->_sharedProfileBannerStyle != styleCopy)
  {
    objc_storeStrong(&self->_sharedProfileBannerStyle, style);
    sharedProfileBannerView = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerView];
    [sharedProfileBannerView setStyle:styleCopy];

    backgroundColor = [(CNSharedProfileBannerStyle *)styleCopy backgroundColor];
    sharedProfileBannerContainerView = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];
    [sharedProfileBannerContainerView setBackgroundColor:backgroundColor];

    backgroundVisualEffectView = [(CNSharedProfileBannerStyle *)styleCopy backgroundVisualEffectView];

    if (backgroundVisualEffectView)
    {
      sharedProfileBannerContainerView2 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];
      backgroundVisualEffectView2 = [(CNSharedProfileBannerStyle *)styleCopy backgroundVisualEffectView];
      [sharedProfileBannerContainerView2 addBackgroundVisualEffectView:backgroundVisualEffectView2 withCornerRadius:12.0];
    }

    [(CNSharedProfileBannerStyle *)styleCopy leadingTrailingInset];
    v12 = v11;
    sharedProfileBannerContainerLeadingConstraint = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerLeadingConstraint];
    [sharedProfileBannerContainerLeadingConstraint setConstant:v12];

    [(CNSharedProfileBannerStyle *)styleCopy leadingTrailingInset];
    v15 = -v14;
    sharedProfileBannerContainerTrailingConstraint = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerTrailingConstraint];
    [sharedProfileBannerContainerTrailingConstraint setConstant:v15];
  }
}

- (void)setSharedProfileStateOracle:(id)oracle
{
  oracleCopy = oracle;
  if (self->_sharedProfileStateOracle != oracleCopy)
  {
    v7 = oracleCopy;
    objc_storeStrong(&self->_sharedProfileStateOracle, oracle);
    [(CNGroupIdentityHeaderViewController *)self setupSharedProfileBannerView];
    view = [(CNGroupIdentityHeaderViewController *)self view];
    [view setNeedsUpdateConstraints];

    oracleCopy = v7;
  }
}

- (void)setMediaContextBadge:(id)badge
{
  objc_storeStrong(&self->_mediaContextBadge, badge);
  badgeCopy = badge;
  groupAvatarViewController = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [groupAvatarViewController setMediaContextBadge:badgeCopy];
}

- (void)setShouldShowContactBusy:(BOOL)busy
{
  busyCopy = busy;
  self->_shouldShowContactBusy = busy;
  groupAvatarViewController = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [groupAvatarViewController setIsDoNotDisturb:busyCopy];
}

- (void)setIsMarkedForSyndication:(BOOL)syndication
{
  syndicationCopy = syndication;
  self->_isMarkedForSyndication = syndication;
  groupAvatarViewController = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [groupAvatarViewController setIsMarkedForSyndication:syndicationCopy];
}

- (void)setAvatarBadgeStyleSettings:(id)settings
{
  objc_storeStrong(&self->_avatarBadgeStyleSettings, settings);
  settingsCopy = settings;
  groupAvatarViewController = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [groupAvatarViewController setBadgeStyleSettings:settingsCopy];
}

- (void)setAvatarBadgeImage:(id)image
{
  objc_storeStrong(&self->_avatarBadgeImage, image);
  imageCopy = image;
  groupAvatarViewController = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [groupAvatarViewController setBadgeImage:imageCopy];
}

- (void)setupCustomSubtitleLabel
{
  customSubtitleLabel = [(CNGroupIdentityHeaderViewController *)self customSubtitleLabel];

  if (customSubtitleLabel)
  {
    titleLabelStackView = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
    customSubtitleLabel2 = [(CNGroupIdentityHeaderViewController *)self customSubtitleLabel];
    [titleLabelStackView addArrangedSubview:customSubtitleLabel2];
  }
}

- (void)setCustomSubtitleLabel:(id)label
{
  labelCopy = label;
  customSubtitleLabel = self->_customSubtitleLabel;
  if (customSubtitleLabel != labelCopy)
  {
    v7 = labelCopy;
    [(UILabel *)customSubtitleLabel removeFromSuperview];
    objc_storeStrong(&self->_customSubtitleLabel, label);
    customSubtitleLabel = [(CNGroupIdentityHeaderViewController *)self setupCustomSubtitleLabel];
    labelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](customSubtitleLabel, labelCopy);
}

- (void)didTapActionButton
{
  delegate = [(CNGroupIdentityHeaderViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CNGroupIdentityHeaderViewController *)self delegate];
    [delegate2 headerViewControllerDidTapActionButton:self];
  }
}

- (BOOL)groupContactIsSameAsCurrentContact:(id)contact
{
  contactCopy = contact;
  contacts = [contactCopy contacts];
  if ([contacts count] == 1)
  {
    group = [(CNGroupIdentityHeaderViewController *)self group];
    contacts2 = [group contacts];
    v8 = [contacts2 count];

    if (v8 != 1)
    {
      v15 = 0;
      goto LABEL_7;
    }

    group2 = [(CNGroupIdentityHeaderViewController *)self group];
    contacts3 = [group2 contacts];
    contacts = [contacts3 firstObject];

    contacts4 = [contactCopy contacts];
    firstObject = [contacts4 firstObject];

    identifier = [contacts identifier];
    identifier2 = [firstObject identifier];
    v15 = [identifier isEqualToString:identifier2];
  }

  else
  {
    v15 = 0;
  }

LABEL_7:
  return v15;
}

- (void)groupIdentityDidUpdate:(id)update
{
  updateCopy = update;
  if (![(CNGroupIdentityHeaderViewController *)self groupContactIsSameAsCurrentContact:updateCopy])
  {
    [(CNGroupIdentityHeaderViewController *)self setTappedSharedProfileBannerAction:0];
    [(CNGroupIdentityHeaderViewController *)self setHasPerformedSharedProfileBannerAnimation:0];
    [(CNGroupIdentityHeaderViewController *)self setSharedProfileStateOracle:0];
  }

  [(CNGroupIdentityHeaderViewController *)self setGroup:updateCopy];
  groupAvatarViewController = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  sharedProfileStateOracle = [(CNGroupIdentityHeaderViewController *)self sharedProfileStateOracle];
  [groupAvatarViewController setSharedProfileStateOracle:sharedProfileStateOracle];

  groupAvatarViewController2 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [groupAvatarViewController2 groupIdentityDidUpdate:updateCopy];

  [(CNGroupIdentityHeaderViewController *)self updateTitleLabel];
  actionsViewController = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  [actionsViewController setGroup:updateCopy];
}

- (void)updateGroupWithContact:(id)contact
{
  v8[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  group = [(CNGroupIdentityHeaderViewController *)self group];
  v6 = [group copy];

  v8[0] = contactCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  [v6 updateContacts:v7];
  [(CNGroupIdentityHeaderViewController *)self groupIdentityDidUpdate:v6];
}

- (void)setShouldShowStaticKeyBadge:(BOOL)badge
{
  if (badge)
  {
    v4 = +[CNStaticIdentityBadgeView sealLockImage];
    staticIdentityBadge = [(CNGroupIdentityHeaderViewController *)self staticIdentityBadge];
    [staticIdentityBadge setImage:v4];

    titleBadgeStackView = [(CNGroupIdentityHeaderViewController *)self titleBadgeStackView];
    staticIdentityBadge2 = [(CNGroupIdentityHeaderViewController *)self staticIdentityBadge];
    [titleBadgeStackView addArrangedSubview:staticIdentityBadge2];

    v8 = MEMORY[0x1E696ACD8];
    horizontalTitleLabelConstraints = [(CNGroupIdentityHeaderViewController *)self horizontalTitleLabelConstraints];
    [v8 deactivateConstraints:?];
  }

  else
  {
    staticIdentityBadge3 = [(CNGroupIdentityHeaderViewController *)self staticIdentityBadge];
    [staticIdentityBadge3 setImage:0];

    staticIdentityBadge4 = [(CNGroupIdentityHeaderViewController *)self staticIdentityBadge];
    [staticIdentityBadge4 removeFromSuperview];

    v11 = MEMORY[0x1E696ACD8];
    horizontalTitleLabelConstraints = [(CNGroupIdentityHeaderViewController *)self horizontalTitleLabelConstraints];
    [v11 activateConstraints:?];
  }
}

- (void)setShouldHideTitleLabel:(BOOL)label
{
  labelCopy = label;
  titleLabel = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  isHidden = [titleLabel isHidden];

  if (isHidden != labelCopy)
  {
    titleLabel2 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    [titleLabel2 setHidden:labelCopy];
  }
}

- (BOOL)shouldUseTitleLabelWrappedFontGivenBoundingRect:(CGRect)rect
{
  height = rect.size.height;
  v4 = [(CNGroupIdentityHeaderViewController *)self titleLabelFont:rect.origin.x];
  [v4 lineHeight];
  v6 = ceil(height / v5) > 1.0;

  return v6;
}

- (CGRect)titleLabelBoundingRectForFont:(id)font text:(id)text maxWidth:(double)width context:(id)context
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26 = *MEMORY[0x1E69DB648];
  v27[0] = font;
  v9 = MEMORY[0x1E695DF20];
  contextCopy = context;
  textCopy = text;
  fontCopy = font;
  v13 = [v9 dictionaryWithObjects:v27 forKeys:&v26 count:1];

  [textCopy boundingRectWithSize:33 options:v13 attributes:contextCopy context:{width, 1.79769313e308}];
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

- (void)updateTitleLabelFont
{
  titleLabel = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  [titleLabel frame];
  v5 = v4;
  v7 = v6;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);

  if (v5 == v8 && v7 == v9)
  {
    view = [(CNGroupIdentityHeaderViewController *)self view];
    [view bounds];
  }

  else
  {
    view = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    [view frame];
  }

  v13 = v12;

  titleLabelFont = [(CNGroupIdentityHeaderViewController *)self titleLabelFont];
  titleLabel2 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  text = [titleLabel2 text];
  [(CNGroupIdentityHeaderViewController *)self titleLabelBoundingRectForFont:titleLabelFont text:text maxWidth:0 context:v13];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  titleLabelFont2 = [(CNGroupIdentityHeaderViewController *)self titleLabelFont];
  if ([(CNGroupIdentityHeaderViewController *)self shouldUseTitleLabelWrappedFontGivenBoundingRect:v18, v20, v22, v24])
  {
    titleLabelWrappedFont = [(CNGroupIdentityHeaderViewController *)self titleLabelWrappedFont];

    titleLabelFont2 = titleLabelWrappedFont;
  }

  titleLabel3 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  font = [titleLabel3 font];

  v28 = titleLabelFont2;
  if (font != titleLabelFont2)
  {
    titleLabel4 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    [titleLabel4 setFont:titleLabelFont2];

    v28 = titleLabelFont2;
  }
}

- (void)updateTitleLabel
{
  displayNameForGroupIdentity = [(CNGroupIdentityHeaderViewController *)self displayNameForGroupIdentity];
  if (!displayNameForGroupIdentity)
  {
    titleLabel = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    text = [titleLabel text];
    if (!text)
    {
      v7 = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  titleLabel2 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  text2 = [titleLabel2 text];
  v7 = [displayNameForGroupIdentity isEqual:text2] ^ 1;

  if (!displayNameForGroupIdentity)
  {
    goto LABEL_6;
  }

LABEL_7:
  titleLabel3 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  [titleLabel3 setText:displayNameForGroupIdentity];

  if (v7)
  {
    titleLabel4 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    [titleLabel4 frame];
    v11 = v10;
    v13 = v12;
    v14 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);

    if (v11 != v14 || v13 != v15)
    {
      [(CNGroupIdentityHeaderViewController *)self updateTitleLabelFont];
    }
  }
}

- (void)updateActionButton
{
  shouldShowActionButton = [(CNGroupIdentityHeaderViewController *)self shouldShowActionButton];
  actionButtonZeroHeightConstraint = [(CNGroupIdentityHeaderViewController *)self actionButtonZeroHeightConstraint];
  v5 = actionButtonZeroHeightConstraint;
  if (shouldShowActionButton)
  {
    v6 = 0;
  }

  else
  {

    if (!v5)
    {
      actionButton = [(CNGroupIdentityHeaderViewController *)self actionButton];
      heightAnchor = [actionButton heightAnchor];
      v9 = [heightAnchor constraintEqualToConstant:0.0];
      [(CNGroupIdentityHeaderViewController *)self setActionButtonZeroHeightConstraint:v9];
    }

    actionButtonZeroHeightConstraint = [(CNGroupIdentityHeaderViewController *)self actionButtonZeroHeightConstraint];
    v5 = actionButtonZeroHeightConstraint;
    v6 = 1;
  }

  [actionButtonZeroHeightConstraint setActive:v6];

  actionButton2 = [(CNGroupIdentityHeaderViewController *)self actionButton];
  actionButtonTitle = [(CNGroupIdentityHeaderViewController *)self actionButtonTitle];
  [actionButton2 setTitle:actionButtonTitle forState:0];
}

- (BOOL)shouldShowActionButton
{
  v2 = *MEMORY[0x1E6996570];
  actionButtonTitle = [(CNGroupIdentityHeaderViewController *)self actionButtonTitle];
  LOBYTE(v2) = (*(v2 + 16))(v2, actionButtonTitle);

  return v2;
}

- (void)setActionButtonTitle:(id)title
{
  titleCopy = title;
  if (self->_actionButtonTitle != titleCopy)
  {
    v6 = titleCopy;
    objc_storeStrong(&self->_actionButtonTitle, title);
    [(CNGroupIdentityHeaderViewController *)self updateActionButton];
    titleCopy = v6;
  }
}

- (void)setupPopulatedActionsView
{
  v61[7] = *MEMORY[0x1E69E9840];
  v3 = [CNGroupIdentityInlineActionsViewController alloc];
  group = [(CNGroupIdentityHeaderViewController *)self group];
  actionsViewConfiguration = [(CNGroupIdentityHeaderViewController *)self actionsViewConfiguration];
  v6 = [(CNGroupIdentityInlineActionsViewController *)v3 initWithGroupIdentity:group actionsViewConfiguration:actionsViewConfiguration];

  [(CNGroupIdentityInlineActionsViewController *)v6 setDelegate:self];
  view = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  view2 = [(CNGroupIdentityHeaderViewController *)self view];
  [view2 bounds];
  [(CNGroupIdentityInlineActionsViewController *)v6 actionsViewHeightThatFits:v9, v10];
  v12 = v11;

  [(CNGroupIdentityHeaderViewController *)self addChildViewController:v6];
  view3 = [(CNGroupIdentityHeaderViewController *)self view];
  view4 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  [view3 addSubview:view4];

  [(CNGroupIdentityInlineActionsViewController *)v6 didMoveToParentViewController:self];
  view5 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  widthAnchor = [view5 widthAnchor];
  v60 = [widthAnchor constraintLessThanOrEqualToConstant:454.0];

  LODWORD(v17) = 1148846080;
  [v60 setPriority:v17];
  [(CNGroupIdentityInlineActionsViewController *)v6 style];
  view6 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  leadingAnchor = [view6 leadingAnchor];
  view7 = [(CNGroupIdentityHeaderViewController *)self view];
  leadingAnchor2 = [view7 leadingAnchor];
  v22 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];

  view8 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  trailingAnchor = [view8 trailingAnchor];
  view9 = [(CNGroupIdentityHeaderViewController *)self view];
  trailingAnchor2 = [view9 trailingAnchor];
  v27 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];

  v28 = v22;
  v59 = v22;
  LODWORD(v29) = 1144766464;
  [v22 setPriority:v29];
  v58 = v27;
  LODWORD(v30) = 1144766464;
  [v27 setPriority:v30];
  view10 = [(CNGroupIdentityHeaderViewController *)self view];
  [view10 bounds];
  v32 = 22.0;
  if (v33 > 896.0)
  {
    v32 = 20.0;
  }

  [(CNGroupIdentityHeaderViewController *)self setActionsViewTopMargin:v32];

  view11 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  topAnchor = [view11 topAnchor];
  actionButton = [(CNGroupIdentityHeaderViewController *)self actionButton];
  bottomAnchor = [actionButton bottomAnchor];
  [(CNGroupIdentityHeaderViewController *)self actionsViewTopMargin];
  v38 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];

  LODWORD(v39) = 1148829696;
  v57 = v38;
  [v38 setPriority:v39];
  view12 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  bottomAnchor2 = [view12 bottomAnchor];
  view13 = [(CNGroupIdentityHeaderViewController *)self view];
  bottomAnchor3 = [view13 bottomAnchor];
  v44 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-5.0];
  [(CNGroupIdentityHeaderViewController *)self setActionsViewBottomConstraint:v44];

  v61[0] = v38;
  v61[1] = v28;
  v61[2] = v27;
  view14 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  centerXAnchor = [view14 centerXAnchor];
  view15 = [(CNGroupIdentityHeaderViewController *)self view];
  centerXAnchor2 = [view15 centerXAnchor];
  v47 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v61[3] = v47;
  view16 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  heightAnchor = [view16 heightAnchor];
  v50 = [heightAnchor constraintEqualToConstant:v12];
  v61[4] = v50;
  v61[5] = v60;
  actionsViewBottomConstraint = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];
  v61[6] = actionsViewBottomConstraint;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:7];

  view17 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  LODWORD(v54) = 1144750080;
  [view17 setContentHuggingPriority:1 forAxis:v54];

  [MEMORY[0x1E696ACD8] activateConstraints:v52];
  [(CNGroupIdentityHeaderViewController *)self setActionsViewController:v6];
}

- (void)setupEmptyActionsView
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  actionButton = [(CNGroupIdentityHeaderViewController *)self actionButton];
  bottomAnchor = [actionButton bottomAnchor];
  view = [(CNGroupIdentityHeaderViewController *)self view];
  bottomAnchor2 = [view bottomAnchor];
  v8 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:-5.0];
  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v3 activateConstraints:v9];
}

- (BOOL)shouldShowActionsView
{
  v2 = *MEMORY[0x1E6996530];
  actionsViewConfiguration = [(CNGroupIdentityHeaderViewController *)self actionsViewConfiguration];
  supportedActionTypes = [actionsViewConfiguration supportedActionTypes];
  LOBYTE(v2) = (*(v2 + 16))(v2, supportedActionTypes);

  return v2 ^ 1;
}

- (void)setupActionsView
{
  if ([(CNGroupIdentityHeaderViewController *)self shouldShowActionsView])
  {

    [(CNGroupIdentityHeaderViewController *)self setupPopulatedActionsView];
  }

  else
  {

    [(CNGroupIdentityHeaderViewController *)self setupEmptyActionsView];
  }
}

- (void)updateActionButtonFont
{
  if ([(CNGroupIdentityHeaderViewController *)self preferredContentSizeCategoryIsXL])
  {
    +[CNUIFontRepository groupHeaderActionButtonWrappedFont];
  }

  else
  {
    +[CNUIFontRepository groupHeaderActionButtonFont];
  }
  v5 = ;
  actionButton = [(CNGroupIdentityHeaderViewController *)self actionButton];
  titleLabel = [actionButton titleLabel];
  [titleLabel setFont:v5];
}

- (void)setupActionButton
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DC738]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentEdgeInsets:{1.0, 0.0, 1.0, 0.0}];
  view = [(CNGroupIdentityHeaderViewController *)self view];
  tintColor = [view tintColor];
  [v4 setTitleColor:tintColor forState:0];

  titleLabel = [v4 titleLabel];
  [titleLabel setAdjustsFontForContentSizeCategory:1];

  titleLabel2 = [v4 titleLabel];
  [titleLabel2 setNumberOfLines:2];

  titleLabel3 = [v4 titleLabel];
  [titleLabel3 setTextAlignment:1];

  [v4 addTarget:self action:sel_didTapActionButton forControlEvents:64];
  view2 = [(CNGroupIdentityHeaderViewController *)self view];
  [view2 addSubview:v4];

  topAnchor = [v4 topAnchor];
  titleLabelStackView = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  bottomAnchor = [titleLabelStackView bottomAnchor];
  v25 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:2.0];
  v29[0] = v25;
  leadingAnchor = [v4 leadingAnchor];
  titleLabelStackView2 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  leadingAnchor2 = [titleLabelStackView2 leadingAnchor];
  v21 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v29[1] = v21;
  trailingAnchor = [v4 trailingAnchor];
  titleLabelStackView3 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  trailingAnchor2 = [titleLabelStackView3 trailingAnchor];
  v14 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2];
  v29[2] = v14;
  centerXAnchor = [v4 centerXAnchor];
  view3 = [(CNGroupIdentityHeaderViewController *)self view];
  centerXAnchor2 = [view3 centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v29[3] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v20];
  LODWORD(v19) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v19];
  [(CNGroupIdentityHeaderViewController *)self setActionButton:v4];
  [(CNGroupIdentityHeaderViewController *)self updateActionButtonFont];
  [(CNGroupIdentityHeaderViewController *)self updateActionButton];
}

- (double)titleLabelBaselineOffset
{
  titleLabelStackView = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  [titleLabelStackView frame];
  v5 = v4;
  titleLabelStackView2 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  [titleLabelStackView2 frame];
  v8 = v5 + v7;
  titleLabel = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  font = [titleLabel font];
  [font descender];
  v12 = v8 + v11;

  return v12;
}

- (void)setupTitleLabel
{
  v48[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCF90]);
  [v3 setAxis:1];
  [v3 setAlignment:3];
  [v3 setDistribution:3];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNGroupIdentityHeaderViewController *)self setTitleLabelStackView:v3];
  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setNumberOfLines:2];
  [v5 setMinimumScaleFactor:0.8];
  [v5 setAdjustsFontForContentSizeCategory:1];
  titleLabelFont = [(CNGroupIdentityHeaderViewController *)self titleLabelFont];
  [v5 setFont:titleLabelFont];

  [v5 setTextAlignment:1];
  [v5 sizeToFit];
  v7 = objc_alloc(MEMORY[0x1E69DCF90]);
  v48[0] = v5;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
  v9 = [v7 initWithArrangedSubviews:v8];

  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setAxis:0];
  [v9 setAlignment:3];
  [v9 setDistribution:0];
  [v9 setSpacing:2.0];
  [(CNGroupIdentityHeaderViewController *)self setTitleBadgeStackView:v9];
  v45 = v9;
  [v3 addArrangedSubview:v9];
  view = [(CNGroupIdentityHeaderViewController *)self view];
  [view addSubview:v3];

  topAnchor = [v3 topAnchor];
  groupAvatarViewController = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view2 = [groupAvatarViewController view];
  bottomAnchor = [view2 bottomAnchor];
  v15 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:-4.0];

  if (![(CNGroupIdentityHeaderViewController *)self preferredContentSizeCategoryIsXL])
  {
    LODWORD(v16) = 1132068864;
    [v15 setPriority:v16];
  }

  leadingAnchor = [v5 leadingAnchor];
  leadingAnchor2 = [v3 leadingAnchor];
  v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v47[0] = v19;
  trailingAnchor = [v5 trailingAnchor];
  [v3 trailingAnchor];
  v21 = v43 = v5;
  [trailingAnchor constraintEqualToAnchor:v21];
  v22 = v44 = v15;
  v47[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  [(CNGroupIdentityHeaderViewController *)self setHorizontalTitleLabelConstraints:v23];

  v46[0] = v15;
  leadingAnchor3 = [v3 leadingAnchor];
  groupAvatarViewController2 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view3 = [groupAvatarViewController2 view];
  leadingAnchor4 = [view3 leadingAnchor];
  v24 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v46[1] = v24;
  trailingAnchor2 = [v3 trailingAnchor];
  groupAvatarViewController3 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view4 = [groupAvatarViewController3 view];
  trailingAnchor3 = [view4 trailingAnchor];
  v29 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v46[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  horizontalTitleLabelConstraints = [(CNGroupIdentityHeaderViewController *)self horizontalTitleLabelConstraints];
  [v30 arrayByAddingObjectsFromArray:horizontalTitleLabelConstraints];
  v32 = v38 = v3;

  [MEMORY[0x1E696ACD8] activateConstraints:v32];
  LODWORD(v33) = 1148846080;
  [v38 setContentHuggingPriority:1 forAxis:v33];
  [(CNGroupIdentityHeaderViewController *)self setTitleLabel:v43];
  [(CNGroupIdentityHeaderViewController *)self updateTitleLabel];
  v34 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  LODWORD(v35) = 1148846080;
  [v34 setContentCompressionResistancePriority:0 forAxis:v35];
  [v34 setAccessibilityIdentifier:@"VerifiedBadge"];
  v36 = CNContactsUIBundle();
  v37 = [v36 localizedStringForKey:@"GROUP_IDENTITY_HEADER_BADGE_ACCESSIBILITY_LABEL" value:&stru_1F0CE7398 table:@"Localized"];
  [v34 setAccessibilityLabel:v37];

  [v34 setIsAccessibilityElement:1];
  [(CNGroupIdentityHeaderViewController *)self setStaticIdentityBadge:v34];
  [(CNGroupIdentityHeaderViewController *)self setupCustomSubtitleLabel];
}

- (BOOL)preferredContentSizeCategoryIsXL
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  if ([preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC30]] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", *MEMORY[0x1E69DDC28]))
  {
    v3 = 1;
  }

  else
  {
    v3 = [preferredContentSizeCategory isEqualToString:*MEMORY[0x1E69DDC20]];
  }

  return v3;
}

- (UIFont)titleLabelWrappedFont
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __60__CNGroupIdentityHeaderViewController_titleLabelWrappedFont__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1104);
  if (!v2)
  {
    v3 = +[CNUIFontRepository groupHeaderWrappedTitleFont];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1104);
    *(v4 + 1104) = v3;

    v2 = *(*(a1 + 32) + 1104);
  }

  return v2;
}

- (UIFont)titleLabelFont
{
  v2 = cn_objectResultWithObjectLock();

  return v2;
}

id __53__CNGroupIdentityHeaderViewController_titleLabelFont__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1096);
  if (!v2)
  {
    v3 = +[CNUIFontRepository groupHeaderTitleFont];
    v4 = *(a1 + 32);
    v5 = *(v4 + 1096);
    *(v4 + 1096) = v3;

    v2 = *(*(a1 + 32) + 1096);
  }

  return v2;
}

- (void)setupAvatarView
{
  v40[5] = *MEMORY[0x1E69E9840];
  groupAvatarViewController = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view = [groupAvatarViewController view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  groupAvatarViewController2 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [(CNGroupIdentityHeaderViewController *)self addChildViewController:groupAvatarViewController2];

  view2 = [(CNGroupIdentityHeaderViewController *)self view];
  groupAvatarViewController3 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view3 = [groupAvatarViewController3 view];
  [view2 addSubview:view3];

  groupAvatarViewController4 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view4 = [groupAvatarViewController4 view];
  heightAnchor = [view4 heightAnchor];
  v39 = [heightAnchor constraintLessThanOrEqualToConstant:106.0];

  LODWORD(v12) = 1148846080;
  [v39 setPriority:v12];
  groupAvatarViewController5 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view5 = [groupAvatarViewController5 view];
  heightAnchor2 = [view5 heightAnchor];
  view6 = [(CNGroupIdentityHeaderViewController *)self view];
  heightAnchor3 = [view6 heightAnchor];
  v38 = [heightAnchor2 constraintGreaterThanOrEqualToAnchor:heightAnchor3 multiplier:0.3];

  LODWORD(v18) = 1148829696;
  [v38 setPriority:v18];
  groupAvatarViewController6 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view7 = [groupAvatarViewController6 view];
  topAnchor = [view7 topAnchor];
  view8 = [(CNGroupIdentityHeaderViewController *)self view];
  topAnchor2 = [view8 topAnchor];
  v32 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:5.0];
  v40[0] = v32;
  groupAvatarViewController7 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view9 = [groupAvatarViewController7 view];
  leadingAnchor = [view9 leadingAnchor];
  view10 = [(CNGroupIdentityHeaderViewController *)self view];
  leadingAnchor2 = [view10 leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v40[1] = v21;
  groupAvatarViewController8 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  view11 = [groupAvatarViewController8 view];
  trailingAnchor = [view11 trailingAnchor];
  view12 = [(CNGroupIdentityHeaderViewController *)self view];
  trailingAnchor2 = [view12 trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-0.0];
  v40[2] = v27;
  v40[3] = v38;
  v40[4] = v39;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:5];

  [MEMORY[0x1E696ACD8] activateConstraints:v28];
}

- (void)contentSizeCategoryDidChange:(id)change
{
  actionsViewController = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  [actionsViewController willMoveToParentViewController:0];

  actionsViewController2 = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  view = [actionsViewController2 view];
  [view removeFromSuperview];

  actionsViewController3 = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  [actionsViewController3 removeFromParentViewController];

  [(CNGroupIdentityHeaderViewController *)self updateActionButtonFont];
  if ([(CNGroupIdentityHeaderViewController *)self shouldShowActionsView])
  {
    [(CNGroupIdentityHeaderViewController *)self setupPopulatedActionsView];
  }

  view2 = [(CNGroupIdentityHeaderViewController *)self view];
  [view2 invalidateIntrinsicContentSize];
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = CNGroupIdentityHeaderViewController;
  [(CNGroupIdentityHeaderViewController *)&v11 viewDidLayoutSubviews];
  view = [(CNGroupIdentityHeaderViewController *)self view];
  [view frame];
  v5 = v4;
  v7 = v6;

  [(CNGroupIdentityHeaderViewController *)self previousSize];
  if (v9 != v5 || v8 != v7)
  {
    [(CNGroupIdentityHeaderViewController *)self setPreviousSize:v5, v7];
    [(CNGroupIdentityHeaderViewController *)self updateTitleLabelFont];
  }
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = CNGroupIdentityHeaderViewController;
  [(CNGroupIdentityHeaderViewController *)&v3 viewDidLoad];
  [(CNGroupIdentityHeaderViewController *)self setupAvatarView];
  [(CNGroupIdentityHeaderViewController *)self setupTitleLabel];
}

- (void)loadView
{
  v3 = [CNGroupIdentityHeaderContainerView alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v5 = [(CNGroupIdentityHeaderContainerView *)v3 initWithFrame:?];

  [(CNGroupIdentityHeaderContainerView *)v5 setDelegate:self];
  [(CNGroupIdentityHeaderViewController *)self setView:v5];
}

- (CNGroupIdentityHeaderViewController)initWithGroupIdentity:(id)identity actionsViewConfiguration:(id)configuration avatarViewControllerSettings:(id)settings
{
  identityCopy = identity;
  configurationCopy = configuration;
  settingsCopy = settings;
  v23.receiver = self;
  v23.super_class = CNGroupIdentityHeaderViewController;
  v12 = [(CNGroupIdentityHeaderViewController *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, identity);
    v14 = [[CNGroupAvatarViewController alloc] initWithGroup:identityCopy avatarViewControllerSettings:settingsCopy];
    groupAvatarViewController = v13->_groupAvatarViewController;
    v13->_groupAvatarViewController = v14;

    objc_storeStrong(&v13->_actionsViewConfiguration, configuration);
    v16 = objc_alloc_init(MEMORY[0x1E695CD80]);
    contactFormatter = v13->_contactFormatter;
    v13->_contactFormatter = v16;

    [(CNContactFormatter *)v13->_contactFormatter setStyle:1000];
    [(CNContactFormatter *)v13->_contactFormatter setFallbackStyle:-1];
    v18 = +[CNSharedProfileBannerStyle defaultStyle];
    sharedProfileBannerStyle = v13->_sharedProfileBannerStyle;
    v13->_sharedProfileBannerStyle = v18;

    [(CNGroupIdentityHeaderViewController *)v13 setupActionButton];
    [(CNGroupIdentityHeaderViewController *)v13 setupActionsView];
    [(CNGroupIdentityHeaderViewController *)v13 setupSharedProfileBannerView];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v13 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

    v21 = v13;
  }

  return v13;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_2_5498 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_2_5498, &__block_literal_global_18_5499);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_2_5500;

  return v3;
}

void __64__CNGroupIdentityHeaderViewController_descriptorForRequiredKeys__block_invoke()
{
  v8[3] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695CD58];
  v1 = +[CNGroupAvatarViewController descriptorForRequiredKeys];
  v2 = +[CNGroupIdentityInlineActionsViewController descriptorForRequiredKeys];
  v8[1] = v2;
  v3 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
  v8[2] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNGroupIdentityHeaderViewController descriptorForRequiredKeys]_block_invoke"];
  v6 = [v0 descriptorWithKeyDescriptors:v4 description:v5];
  v7 = descriptorForRequiredKeys_cn_once_object_2_5500;
  descriptorForRequiredKeys_cn_once_object_2_5500 = v6;
}

+ (id)log
{
  if (log_cn_once_token_1 != -1)
  {
    dispatch_once(&log_cn_once_token_1, &__block_literal_global_5504);
  }

  v3 = log_cn_once_object_1;

  return v3;
}

uint64_t __42__CNGroupIdentityHeaderViewController_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.ui", "CNGroupIdentityHeaderViewController");
  v1 = log_cn_once_object_1;
  log_cn_once_object_1 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end