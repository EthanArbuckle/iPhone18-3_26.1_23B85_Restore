@interface CNGroupIdentityHeaderViewController
+ (id)descriptorForRequiredKeys;
+ (id)log;
- (BOOL)groupContactIsSameAsCurrentContact:(id)a3;
- (BOOL)preferredContentSizeCategoryIsXL;
- (BOOL)shouldShowActionButton;
- (BOOL)shouldShowActionsView;
- (BOOL)shouldShowSharedProfileBannerView;
- (BOOL)shouldUseTitleLabelWrappedFontGivenBoundingRect:(CGRect)a3;
- (CGRect)titleLabelBoundingRectForFont:(id)a3 text:(id)a4 maxWidth:(double)a5 context:(id)a6;
- (CGSize)previousSize;
- (CGSize)sizeForLayoutInContainerSize:(CGSize)a3;
- (CNGroupIdentityHeaderViewController)initWithGroupIdentity:(id)a3 actionsViewConfiguration:(id)a4 avatarViewControllerSettings:(id)a5;
- (CNGroupIdentityHeaderViewControllerDelegate)delegate;
- (UIFont)titleLabelFont;
- (UIFont)titleLabelWrappedFont;
- (double)titleLabelBaselineOffset;
- (id)displayNameForGroupIdentity;
- (id)viewForActionAtIndex:(unint64_t)a3;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)didTapActionButton;
- (void)groupIdentityDidUpdate:(id)a3;
- (void)groupIdentityInlineActionsViewController:(id)a3 didPerformActionOfType:(id)a4 fromDisambiguation:(BOOL)a5;
- (void)groupIdentityInlineActionsViewController:(id)a3 willPresentDisambiguationUIForActionType:(id)a4;
- (void)hideSharedProfileBannerViewForDismiss;
- (void)loadView;
- (void)performAnimationToNewContact:(id)a3 withCompletion:(id)a4;
- (void)setActionButtonTitle:(id)a3;
- (void)setAvatarBadgeImage:(id)a3;
- (void)setAvatarBadgeStyleSettings:(id)a3;
- (void)setCustomSubtitleLabel:(id)a3;
- (void)setIsMarkedForSyndication:(BOOL)a3;
- (void)setMediaContextBadge:(id)a3;
- (void)setSharedProfileBannerStyle:(id)a3;
- (void)setSharedProfileStateOracle:(id)a3;
- (void)setShouldHideTitleLabel:(BOOL)a3;
- (void)setShouldShowContactBusy:(BOOL)a3;
- (void)setShouldShowStaticKeyBadge:(BOOL)a3;
- (void)setupActionButton;
- (void)setupActionsView;
- (void)setupAvatarView;
- (void)setupCustomSubtitleLabel;
- (void)setupEmptyActionsView;
- (void)setupPopulatedActionsView;
- (void)setupSharedProfileBannerView;
- (void)setupTitleLabel;
- (void)sharedProfileBannerView:(id)a3 didDismissWithUpdatedContact:(id)a4 forAction:(unint64_t)a5;
- (void)sharedProfileBannerView:(id)a3 didUpdateContact:(id)a4 forAction:(unint64_t)a5;
- (void)updateActionButton;
- (void)updateActionButtonFont;
- (void)updateGroupWithContact:(id)a3;
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

- (void)sharedProfileBannerView:(id)a3 didDismissWithUpdatedContact:(id)a4 forAction:(unint64_t)a5
{
  v10 = a4;
  [(CNGroupIdentityHeaderViewController *)self setTappedSharedProfileBannerAction:0];
  [(CNGroupIdentityHeaderViewController *)self updateGroupWithContact:v10];
  [(CNGroupIdentityHeaderViewController *)self hideSharedProfileBannerViewForDismiss];
  v7 = [(CNGroupIdentityHeaderViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNGroupIdentityHeaderViewController *)self delegate];
    [v9 groupIdentityHeaderViewController:self didDismissSharedProfileBannerWithUpdatedContact:v10 forAction:a5];
  }
}

- (void)sharedProfileBannerView:(id)a3 didUpdateContact:(id)a4 forAction:(unint64_t)a5
{
  v7 = a4;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __90__CNGroupIdentityHeaderViewController_sharedProfileBannerView_didUpdateContact_forAction___block_invoke;
  v9[3] = &unk_1E74E6DF8;
  v9[4] = self;
  v10 = v7;
  v11 = a5;
  v8 = v7;
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

- (void)groupIdentityInlineActionsViewController:(id)a3 willPresentDisambiguationUIForActionType:(id)a4
{
  v8 = a4;
  v5 = [(CNGroupIdentityHeaderViewController *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(CNGroupIdentityHeaderViewController *)self delegate];
    [v7 groupIdentityHeaderViewController:self willPresentDisambiguationUIForActionType:v8];
  }
}

- (void)groupIdentityInlineActionsViewController:(id)a3 didPerformActionOfType:(id)a4 fromDisambiguation:(BOOL)a5
{
  v5 = a5;
  v10 = a4;
  v7 = [(CNGroupIdentityHeaderViewController *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(CNGroupIdentityHeaderViewController *)self delegate];
    [v9 groupIdentityHeaderViewController:self didPerformActionOfType:v10 fromDisambiguation:v5];
  }
}

- (id)displayNameForGroupIdentity
{
  v3 = [(CNGroupIdentityHeaderViewController *)self contactFormatter];
  v4 = [(CNGroupIdentityHeaderViewController *)self group];
  v5 = [v3 stringFromGroupIdentity:v4];

  return v5;
}

- (CGSize)sizeForLayoutInContainerSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v57 = *MEMORY[0x1E69E9840];
  v6 = [(CNGroupIdentityHeaderViewController *)self displayNameForGroupIdentity];
  v7 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  [v7 setMaximumNumberOfLines:2];
  v8 = [(CNGroupIdentityHeaderViewController *)self titleLabelFont];
  [(CNGroupIdentityHeaderViewController *)self titleLabelBoundingRectForFont:v8 text:v6 maxWidth:v7 context:width];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if (([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory] & 1) == 0 && -[CNGroupIdentityHeaderViewController shouldUseTitleLabelWrappedFontGivenBoundingRect:](self, "shouldUseTitleLabelWrappedFontGivenBoundingRect:", v10, v12, v14, v16))
  {
    v17 = [(CNGroupIdentityHeaderViewController *)self titleLabelWrappedFont];
    [(CNGroupIdentityHeaderViewController *)self titleLabelBoundingRectForFont:v17 text:v6 maxWidth:v7 context:width];
    v16 = v18;
  }

  v19 = v16 + 102.0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v20 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  v21 = [v20 arrangedSubviews];

  v22 = [v21 countByEnumeratingWithState:&v50 objects:v56 count:16];
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
          objc_enumerationMutation(v21);
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
      v23 = [v21 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v23);
  }

  if ([(CNGroupIdentityHeaderViewController *)self shouldShowActionButton])
  {
    v31 = [(CNGroupIdentityHeaderViewController *)self actionButton];
    v32 = [(CNGroupIdentityHeaderViewController *)self actionButtonTitle];
    [v31 setTitle:v32 forState:0];

    [v7 setMaximumNumberOfLines:2];
    v33 = [(CNGroupIdentityHeaderViewController *)self actionButtonTitle];
    v54 = *MEMORY[0x1E69DB648];
    v34 = +[CNUIFontRepository groupHeaderActionButtonFont];
    v55 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [v33 boundingRectWithSize:33 options:v35 attributes:v7 context:{width, height}];
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
    v41 = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
    [v41 actionsViewHeightThatFits:{width, height}];
    v43 = v42;

    v19 = v40 + v43;
  }

  v44 = v19 + 10.0;
  if ([(CNGroupIdentityHeaderViewController *)self shouldShowSharedProfileBannerView])
  {
    v45 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerView];
    [v45 estimatedHeightForWidth:width];
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

- (id)viewForActionAtIndex:(unint64_t)a3
{
  v4 = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  v5 = [v4 viewForActionAtIndex:a3];

  return v5;
}

- (void)performAnimationToNewContact:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [v8 primaryAvatarSize];
  v10 = v9;
  v12 = v11;

  v13 = [(CNGroupIdentityHeaderViewController *)self traitCollection];
  v14 = [v13 layoutDirection] == 1;

  v16 = objc_alloc_init(CNSharedProfileAnimationGenerator);
  v15 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [(CNSharedProfileAnimationGenerator *)v16 performCoinFlipAnimationForAnimatingAvatarView:v15 toContact:v7 rightToLeft:v14 avatarSize:v6 completionHandler:v10, v12];
}

- (void)hideSharedProfileBannerViewForDismiss
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];

  if (v3)
  {
    v4 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];
    [v4 removeFromSuperview];
  }

  v5 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];

  if (v5)
  {
    v6 = MEMORY[0x1E696ACD8];
    v7 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];
    v9[0] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v6 activateConstraints:v8];
  }
}

- (void)setupSharedProfileBannerView
{
  v72[1] = *MEMORY[0x1E69E9840];
  v3 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];

  if (v3)
  {
    v4 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];
    [v4 removeFromSuperview];
  }

  if ([(CNGroupIdentityHeaderViewController *)self shouldShowSharedProfileBannerView])
  {
    v5 = objc_alloc_init(CNSharedProfileBannerView);
    [(CNSharedProfileBannerView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CNSharedProfileBannerView *)v5 setDelegate:self];
    v6 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    [(CNSharedProfileBannerView *)v5 setStyle:v6];

    v7 = [(CNGroupIdentityHeaderViewController *)self sharedProfileStateOracle];
    [(CNSharedProfileBannerView *)v5 setUpWithSharedProfileStateOracle:v7 tappedAction:[(CNGroupIdentityHeaderViewController *)self tappedSharedProfileBannerAction] hasPerformedAnimation:[(CNGroupIdentityHeaderViewController *)self hasPerformedSharedProfileBannerAnimation]];

    [(CNGroupIdentityHeaderViewController *)self setHasPerformedSharedProfileBannerAnimation:1];
    v8 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    v10 = [v9 backgroundColor];
    [v8 setBackgroundColor:v10];

    v11 = [MEMORY[0x1E69966E8] currentEnvironment];
    v12 = [v11 featureFlags];
    v13 = [v12 isFeatureEnabled:29];

    v14 = [v8 layer];
    v15 = v14;
    v16 = 12.0;
    if (v13)
    {
      v16 = 26.0;
    }

    [v14 setCornerRadius:v16];

    v17 = [(CNGroupIdentityHeaderViewController *)self view];
    [v17 addSubview:v8];

    [v8 addSubview:v5];
    v18 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    v19 = [v18 backgroundVisualEffectView];

    if (v19)
    {
      v20 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
      v21 = [v20 backgroundVisualEffectView];
      [v8 addBackgroundVisualEffectView:v21 withCornerRadius:12.0];
    }

    v22 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];

    if (v22)
    {
      v23 = MEMORY[0x1E696ACD8];
      v24 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];
      v71 = v24;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v71 count:1];
      [v23 deactivateConstraints:v25];
    }

    v26 = [(CNGroupIdentityHeaderViewController *)self shouldShowActionsView];
    v27 = [v8 topAnchor];
    if (v26)
    {
      v28 = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
      v29 = [v28 view];
      v30 = [v29 bottomAnchor];
      v31 = [v27 constraintEqualToAnchor:v30 constant:10.0];
    }

    else
    {
      v28 = [(CNGroupIdentityHeaderViewController *)self actionButton];
      v29 = [v28 bottomAnchor];
      v31 = [v27 constraintEqualToAnchor:v29 constant:10.0];
    }

    v60 = v31;

    v34 = [v8 leadingAnchor];
    v35 = [(CNGroupIdentityHeaderViewController *)self view];
    v36 = [v35 leadingAnchor];
    v37 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    [v37 leadingTrailingInset];
    v38 = [v34 constraintEqualToAnchor:v36 constant:?];
    [(CNGroupIdentityHeaderViewController *)self setSharedProfileBannerContainerLeadingConstraint:v38];

    v39 = [v8 trailingAnchor];
    v40 = [(CNGroupIdentityHeaderViewController *)self view];
    v41 = [v40 trailingAnchor];
    v42 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerStyle];
    [v42 leadingTrailingInset];
    v44 = [v39 constraintEqualToAnchor:v41 constant:-v43];
    [(CNGroupIdentityHeaderViewController *)self setSharedProfileBannerContainerTrailingConstraint:v44];

    v59 = MEMORY[0x1E696ACD8];
    v70[0] = v31;
    v69 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerLeadingConstraint];
    v70[1] = v69;
    v68 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerTrailingConstraint];
    v70[2] = v68;
    v66 = [v8 bottomAnchor];
    v67 = [(CNGroupIdentityHeaderViewController *)self view];
    v65 = [v67 bottomAnchor];
    v64 = [v66 constraintEqualToAnchor:v65];
    v70[3] = v64;
    v63 = [(CNSharedProfileBannerView *)v5 topAnchor];
    v62 = [v8 topAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v70[4] = v61;
    v57 = [(CNSharedProfileBannerView *)v5 leadingAnchor];
    v58 = [v8 layoutMarginsGuide];
    v56 = [v58 leadingAnchor];
    v55 = [v57 constraintEqualToAnchor:v56];
    v70[5] = v55;
    v53 = [(CNSharedProfileBannerView *)v5 trailingAnchor];
    v54 = [v8 layoutMarginsGuide];
    v52 = [v54 trailingAnchor];
    v45 = [v53 constraintEqualToAnchor:v52];
    v70[6] = v45;
    v46 = [(CNSharedProfileBannerView *)v5 bottomAnchor];
    v47 = [v8 bottomAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    v70[7] = v48;
    v49 = [(CNSharedProfileBannerView *)v5 heightAnchor];
    [(CNSharedProfileBannerView *)v5 estimatedHeight];
    v50 = [v49 constraintGreaterThanOrEqualToConstant:?];
    v70[8] = v50;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:9];
    [v59 activateConstraints:v51];

    [(CNGroupIdentityHeaderViewController *)self setSharedProfileBannerContainerView:v8];
    [(CNGroupIdentityHeaderViewController *)self setSharedProfileBannerView:v5];
  }

  else
  {
    v32 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];

    if (!v32)
    {
      return;
    }

    v33 = MEMORY[0x1E696ACD8];
    v5 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];
    v72[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:1];
    [v33 activateConstraints:v8];
  }
}

- (BOOL)shouldShowSharedProfileBannerView
{
  v3 = [MEMORY[0x1E69966E8] currentEnvironment];
  v4 = [v3 featureFlags];
  v5 = [v4 isFeatureEnabled:28];

  if (!v5)
  {
    return 0;
  }

  v6 = [(CNGroupIdentityHeaderViewController *)self sharedProfileStateOracle];

  if (!v6)
  {
    return 0;
  }

  v7 = [(CNGroupIdentityHeaderViewController *)self group];
  v8 = [v7 contacts];
  v9 = [v8 count];

  if (v9 != 1)
  {
    return 0;
  }

  v10 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerView];
  v11 = [v10 isIgnored];

  if (v11)
  {
    v12 = [objc_opt_class() log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&dword_199A75000, v12, OS_LOG_TYPE_DEFAULT, "Not showing banner view, user dismissed banner view", v16, 2u);
    }

    return 0;
  }

  v15 = [(CNGroupIdentityHeaderViewController *)self sharedProfileStateOracle];
  if ([v15 bannerActionTypeForEffectiveState])
  {
    v13 = 1;
  }

  else
  {
    v13 = [(CNGroupIdentityHeaderViewController *)self tappedSharedProfileBannerAction]!= 0;
  }

  return v13;
}

- (void)setSharedProfileBannerStyle:(id)a3
{
  v17 = a3;
  if (self->_sharedProfileBannerStyle != v17)
  {
    objc_storeStrong(&self->_sharedProfileBannerStyle, a3);
    v5 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerView];
    [v5 setStyle:v17];

    v6 = [(CNSharedProfileBannerStyle *)v17 backgroundColor];
    v7 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];
    [v7 setBackgroundColor:v6];

    v8 = [(CNSharedProfileBannerStyle *)v17 backgroundVisualEffectView];

    if (v8)
    {
      v9 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerView];
      v10 = [(CNSharedProfileBannerStyle *)v17 backgroundVisualEffectView];
      [v9 addBackgroundVisualEffectView:v10 withCornerRadius:12.0];
    }

    [(CNSharedProfileBannerStyle *)v17 leadingTrailingInset];
    v12 = v11;
    v13 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerLeadingConstraint];
    [v13 setConstant:v12];

    [(CNSharedProfileBannerStyle *)v17 leadingTrailingInset];
    v15 = -v14;
    v16 = [(CNGroupIdentityHeaderViewController *)self sharedProfileBannerContainerTrailingConstraint];
    [v16 setConstant:v15];
  }
}

- (void)setSharedProfileStateOracle:(id)a3
{
  v5 = a3;
  if (self->_sharedProfileStateOracle != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_sharedProfileStateOracle, a3);
    [(CNGroupIdentityHeaderViewController *)self setupSharedProfileBannerView];
    v6 = [(CNGroupIdentityHeaderViewController *)self view];
    [v6 setNeedsUpdateConstraints];

    v5 = v7;
  }
}

- (void)setMediaContextBadge:(id)a3
{
  objc_storeStrong(&self->_mediaContextBadge, a3);
  v5 = a3;
  v6 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [v6 setMediaContextBadge:v5];
}

- (void)setShouldShowContactBusy:(BOOL)a3
{
  v3 = a3;
  self->_shouldShowContactBusy = a3;
  v4 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [v4 setIsDoNotDisturb:v3];
}

- (void)setIsMarkedForSyndication:(BOOL)a3
{
  v3 = a3;
  self->_isMarkedForSyndication = a3;
  v4 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [v4 setIsMarkedForSyndication:v3];
}

- (void)setAvatarBadgeStyleSettings:(id)a3
{
  objc_storeStrong(&self->_avatarBadgeStyleSettings, a3);
  v5 = a3;
  v6 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [v6 setBadgeStyleSettings:v5];
}

- (void)setAvatarBadgeImage:(id)a3
{
  objc_storeStrong(&self->_avatarBadgeImage, a3);
  v5 = a3;
  v6 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [v6 setBadgeImage:v5];
}

- (void)setupCustomSubtitleLabel
{
  v3 = [(CNGroupIdentityHeaderViewController *)self customSubtitleLabel];

  if (v3)
  {
    v5 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
    v4 = [(CNGroupIdentityHeaderViewController *)self customSubtitleLabel];
    [v5 addArrangedSubview:v4];
  }
}

- (void)setCustomSubtitleLabel:(id)a3
{
  v5 = a3;
  customSubtitleLabel = self->_customSubtitleLabel;
  if (customSubtitleLabel != v5)
  {
    v7 = v5;
    [(UILabel *)customSubtitleLabel removeFromSuperview];
    objc_storeStrong(&self->_customSubtitleLabel, a3);
    customSubtitleLabel = [(CNGroupIdentityHeaderViewController *)self setupCustomSubtitleLabel];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](customSubtitleLabel, v5);
}

- (void)didTapActionButton
{
  v3 = [(CNGroupIdentityHeaderViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CNGroupIdentityHeaderViewController *)self delegate];
    [v5 headerViewControllerDidTapActionButton:self];
  }
}

- (BOOL)groupContactIsSameAsCurrentContact:(id)a3
{
  v4 = a3;
  v5 = [v4 contacts];
  if ([v5 count] == 1)
  {
    v6 = [(CNGroupIdentityHeaderViewController *)self group];
    v7 = [v6 contacts];
    v8 = [v7 count];

    if (v8 != 1)
    {
      v15 = 0;
      goto LABEL_7;
    }

    v9 = [(CNGroupIdentityHeaderViewController *)self group];
    v10 = [v9 contacts];
    v5 = [v10 firstObject];

    v11 = [v4 contacts];
    v12 = [v11 firstObject];

    v13 = [v5 identifier];
    v14 = [v12 identifier];
    v15 = [v13 isEqualToString:v14];
  }

  else
  {
    v15 = 0;
  }

LABEL_7:
  return v15;
}

- (void)groupIdentityDidUpdate:(id)a3
{
  v4 = a3;
  if (![(CNGroupIdentityHeaderViewController *)self groupContactIsSameAsCurrentContact:v4])
  {
    [(CNGroupIdentityHeaderViewController *)self setTappedSharedProfileBannerAction:0];
    [(CNGroupIdentityHeaderViewController *)self setHasPerformedSharedProfileBannerAnimation:0];
    [(CNGroupIdentityHeaderViewController *)self setSharedProfileStateOracle:0];
  }

  [(CNGroupIdentityHeaderViewController *)self setGroup:v4];
  v5 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v6 = [(CNGroupIdentityHeaderViewController *)self sharedProfileStateOracle];
  [v5 setSharedProfileStateOracle:v6];

  v7 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [v7 groupIdentityDidUpdate:v4];

  [(CNGroupIdentityHeaderViewController *)self updateTitleLabel];
  v8 = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  [v8 setGroup:v4];
}

- (void)updateGroupWithContact:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(CNGroupIdentityHeaderViewController *)self group];
  v6 = [v5 copy];

  v8[0] = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  [v6 updateContacts:v7];
  [(CNGroupIdentityHeaderViewController *)self groupIdentityDidUpdate:v6];
}

- (void)setShouldShowStaticKeyBadge:(BOOL)a3
{
  if (a3)
  {
    v4 = +[CNStaticIdentityBadgeView sealLockImage];
    v5 = [(CNGroupIdentityHeaderViewController *)self staticIdentityBadge];
    [v5 setImage:v4];

    v6 = [(CNGroupIdentityHeaderViewController *)self titleBadgeStackView];
    v7 = [(CNGroupIdentityHeaderViewController *)self staticIdentityBadge];
    [v6 addArrangedSubview:v7];

    v8 = MEMORY[0x1E696ACD8];
    v12 = [(CNGroupIdentityHeaderViewController *)self horizontalTitleLabelConstraints];
    [v8 deactivateConstraints:?];
  }

  else
  {
    v9 = [(CNGroupIdentityHeaderViewController *)self staticIdentityBadge];
    [v9 setImage:0];

    v10 = [(CNGroupIdentityHeaderViewController *)self staticIdentityBadge];
    [v10 removeFromSuperview];

    v11 = MEMORY[0x1E696ACD8];
    v12 = [(CNGroupIdentityHeaderViewController *)self horizontalTitleLabelConstraints];
    [v11 activateConstraints:?];
  }
}

- (void)setShouldHideTitleLabel:(BOOL)a3
{
  v3 = a3;
  v5 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  v6 = [v5 isHidden];

  if (v6 != v3)
  {
    v7 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    [v7 setHidden:v3];
  }
}

- (BOOL)shouldUseTitleLabelWrappedFontGivenBoundingRect:(CGRect)a3
{
  height = a3.size.height;
  v4 = [(CNGroupIdentityHeaderViewController *)self titleLabelFont:a3.origin.x];
  [v4 lineHeight];
  v6 = ceil(height / v5) > 1.0;

  return v6;
}

- (CGRect)titleLabelBoundingRectForFont:(id)a3 text:(id)a4 maxWidth:(double)a5 context:(id)a6
{
  v27[1] = *MEMORY[0x1E69E9840];
  v26 = *MEMORY[0x1E69DB648];
  v27[0] = a3;
  v9 = MEMORY[0x1E695DF20];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [v9 dictionaryWithObjects:v27 forKeys:&v26 count:1];

  [v11 boundingRectWithSize:33 options:v13 attributes:v10 context:{a5, 1.79769313e308}];
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
  v3 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v8 = *MEMORY[0x1E695F060];
  v9 = *(MEMORY[0x1E695F060] + 8);

  if (v5 == v8 && v7 == v9)
  {
    v11 = [(CNGroupIdentityHeaderViewController *)self view];
    [v11 bounds];
  }

  else
  {
    v11 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    [v11 frame];
  }

  v13 = v12;

  v14 = [(CNGroupIdentityHeaderViewController *)self titleLabelFont];
  v15 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  v16 = [v15 text];
  [(CNGroupIdentityHeaderViewController *)self titleLabelBoundingRectForFont:v14 text:v16 maxWidth:0 context:v13];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v30 = [(CNGroupIdentityHeaderViewController *)self titleLabelFont];
  if ([(CNGroupIdentityHeaderViewController *)self shouldUseTitleLabelWrappedFontGivenBoundingRect:v18, v20, v22, v24])
  {
    v25 = [(CNGroupIdentityHeaderViewController *)self titleLabelWrappedFont];

    v30 = v25;
  }

  v26 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  v27 = [v26 font];

  v28 = v30;
  if (v27 != v30)
  {
    v29 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    [v29 setFont:v30];

    v28 = v30;
  }
}

- (void)updateTitleLabel
{
  v17 = [(CNGroupIdentityHeaderViewController *)self displayNameForGroupIdentity];
  if (!v17)
  {
    v2 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    v3 = [v2 text];
    if (!v3)
    {
      v7 = 0;
LABEL_6:

      goto LABEL_7;
    }
  }

  v5 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  v6 = [v5 text];
  v7 = [v17 isEqual:v6] ^ 1;

  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_7:
  v8 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  [v8 setText:v17];

  if (v7)
  {
    v9 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
    [v9 frame];
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
  v3 = [(CNGroupIdentityHeaderViewController *)self shouldShowActionButton];
  v4 = [(CNGroupIdentityHeaderViewController *)self actionButtonZeroHeightConstraint];
  v5 = v4;
  if (v3)
  {
    v6 = 0;
  }

  else
  {

    if (!v5)
    {
      v7 = [(CNGroupIdentityHeaderViewController *)self actionButton];
      v8 = [v7 heightAnchor];
      v9 = [v8 constraintEqualToConstant:0.0];
      [(CNGroupIdentityHeaderViewController *)self setActionButtonZeroHeightConstraint:v9];
    }

    v4 = [(CNGroupIdentityHeaderViewController *)self actionButtonZeroHeightConstraint];
    v5 = v4;
    v6 = 1;
  }

  [v4 setActive:v6];

  v11 = [(CNGroupIdentityHeaderViewController *)self actionButton];
  v10 = [(CNGroupIdentityHeaderViewController *)self actionButtonTitle];
  [v11 setTitle:v10 forState:0];
}

- (BOOL)shouldShowActionButton
{
  v2 = *MEMORY[0x1E6996570];
  v3 = [(CNGroupIdentityHeaderViewController *)self actionButtonTitle];
  LOBYTE(v2) = (*(v2 + 16))(v2, v3);

  return v2;
}

- (void)setActionButtonTitle:(id)a3
{
  v5 = a3;
  if (self->_actionButtonTitle != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_actionButtonTitle, a3);
    [(CNGroupIdentityHeaderViewController *)self updateActionButton];
    v5 = v6;
  }
}

- (void)setupPopulatedActionsView
{
  v61[7] = *MEMORY[0x1E69E9840];
  v3 = [CNGroupIdentityInlineActionsViewController alloc];
  v4 = [(CNGroupIdentityHeaderViewController *)self group];
  v5 = [(CNGroupIdentityHeaderViewController *)self actionsViewConfiguration];
  v6 = [(CNGroupIdentityInlineActionsViewController *)v3 initWithGroupIdentity:v4 actionsViewConfiguration:v5];

  [(CNGroupIdentityInlineActionsViewController *)v6 setDelegate:self];
  v7 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(CNGroupIdentityHeaderViewController *)self view];
  [v8 bounds];
  [(CNGroupIdentityInlineActionsViewController *)v6 actionsViewHeightThatFits:v9, v10];
  v12 = v11;

  [(CNGroupIdentityHeaderViewController *)self addChildViewController:v6];
  v13 = [(CNGroupIdentityHeaderViewController *)self view];
  v14 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  [v13 addSubview:v14];

  [(CNGroupIdentityInlineActionsViewController *)v6 didMoveToParentViewController:self];
  v15 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  v16 = [v15 widthAnchor];
  v60 = [v16 constraintLessThanOrEqualToConstant:454.0];

  LODWORD(v17) = 1148846080;
  [v60 setPriority:v17];
  [(CNGroupIdentityInlineActionsViewController *)v6 style];
  v18 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  v19 = [v18 leadingAnchor];
  v20 = [(CNGroupIdentityHeaderViewController *)self view];
  v21 = [v20 leadingAnchor];
  v22 = [v19 constraintGreaterThanOrEqualToAnchor:v21];

  v23 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  v24 = [v23 trailingAnchor];
  v25 = [(CNGroupIdentityHeaderViewController *)self view];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintGreaterThanOrEqualToAnchor:v26];

  v28 = v22;
  v59 = v22;
  LODWORD(v29) = 1144766464;
  [v22 setPriority:v29];
  v58 = v27;
  LODWORD(v30) = 1144766464;
  [v27 setPriority:v30];
  v31 = [(CNGroupIdentityHeaderViewController *)self view];
  [v31 bounds];
  v32 = 22.0;
  if (v33 > 896.0)
  {
    v32 = 20.0;
  }

  [(CNGroupIdentityHeaderViewController *)self setActionsViewTopMargin:v32];

  v34 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  v35 = [v34 topAnchor];
  v36 = [(CNGroupIdentityHeaderViewController *)self actionButton];
  v37 = [v36 bottomAnchor];
  [(CNGroupIdentityHeaderViewController *)self actionsViewTopMargin];
  v38 = [v35 constraintEqualToAnchor:v37 constant:?];

  LODWORD(v39) = 1148829696;
  v57 = v38;
  [v38 setPriority:v39];
  v40 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  v41 = [v40 bottomAnchor];
  v42 = [(CNGroupIdentityHeaderViewController *)self view];
  v43 = [v42 bottomAnchor];
  v44 = [v41 constraintEqualToAnchor:v43 constant:-5.0];
  [(CNGroupIdentityHeaderViewController *)self setActionsViewBottomConstraint:v44];

  v61[0] = v38;
  v61[1] = v28;
  v61[2] = v27;
  v56 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  v55 = [v56 centerXAnchor];
  v45 = [(CNGroupIdentityHeaderViewController *)self view];
  v46 = [v45 centerXAnchor];
  v47 = [v55 constraintEqualToAnchor:v46];
  v61[3] = v47;
  v48 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  v49 = [v48 heightAnchor];
  v50 = [v49 constraintEqualToConstant:v12];
  v61[4] = v50;
  v61[5] = v60;
  v51 = [(CNGroupIdentityHeaderViewController *)self actionsViewBottomConstraint];
  v61[6] = v51;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:7];

  v53 = [(CNGroupIdentityInlineActionsViewController *)v6 view];
  LODWORD(v54) = 1144750080;
  [v53 setContentHuggingPriority:1 forAxis:v54];

  [MEMORY[0x1E696ACD8] activateConstraints:v52];
  [(CNGroupIdentityHeaderViewController *)self setActionsViewController:v6];
}

- (void)setupEmptyActionsView
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ACD8];
  v4 = [(CNGroupIdentityHeaderViewController *)self actionButton];
  v5 = [v4 bottomAnchor];
  v6 = [(CNGroupIdentityHeaderViewController *)self view];
  v7 = [v6 bottomAnchor];
  v8 = [v5 constraintLessThanOrEqualToAnchor:v7 constant:-5.0];
  v10[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v3 activateConstraints:v9];
}

- (BOOL)shouldShowActionsView
{
  v2 = *MEMORY[0x1E6996530];
  v3 = [(CNGroupIdentityHeaderViewController *)self actionsViewConfiguration];
  v4 = [v3 supportedActionTypes];
  LOBYTE(v2) = (*(v2 + 16))(v2, v4);

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
  v3 = [(CNGroupIdentityHeaderViewController *)self actionButton];
  v4 = [v3 titleLabel];
  [v4 setFont:v5];
}

- (void)setupActionButton
{
  v29[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DC738]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setContentEdgeInsets:{1.0, 0.0, 1.0, 0.0}];
  v5 = [(CNGroupIdentityHeaderViewController *)self view];
  v6 = [v5 tintColor];
  [v4 setTitleColor:v6 forState:0];

  v7 = [v4 titleLabel];
  [v7 setAdjustsFontForContentSizeCategory:1];

  v8 = [v4 titleLabel];
  [v8 setNumberOfLines:2];

  v9 = [v4 titleLabel];
  [v9 setTextAlignment:1];

  [v4 addTarget:self action:sel_didTapActionButton forControlEvents:64];
  v10 = [(CNGroupIdentityHeaderViewController *)self view];
  [v10 addSubview:v4];

  v27 = [v4 topAnchor];
  v28 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  v26 = [v28 bottomAnchor];
  v25 = [v27 constraintEqualToAnchor:v26 constant:2.0];
  v29[0] = v25;
  v23 = [v4 leadingAnchor];
  v24 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  v22 = [v24 leadingAnchor];
  v21 = [v23 constraintGreaterThanOrEqualToAnchor:v22];
  v29[1] = v21;
  v11 = [v4 trailingAnchor];
  v12 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintGreaterThanOrEqualToAnchor:v13];
  v29[2] = v14;
  v15 = [v4 centerXAnchor];
  v16 = [(CNGroupIdentityHeaderViewController *)self view];
  v17 = [v16 centerXAnchor];
  v18 = [v15 constraintEqualToAnchor:v17];
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
  v3 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  [v3 frame];
  v5 = v4;
  v6 = [(CNGroupIdentityHeaderViewController *)self titleLabelStackView];
  [v6 frame];
  v8 = v5 + v7;
  v9 = [(CNGroupIdentityHeaderViewController *)self titleLabel];
  v10 = [v9 font];
  [v10 descender];
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
  v6 = [(CNGroupIdentityHeaderViewController *)self titleLabelFont];
  [v5 setFont:v6];

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
  v10 = [(CNGroupIdentityHeaderViewController *)self view];
  [v10 addSubview:v3];

  v11 = [v3 topAnchor];
  v12 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v13 = [v12 view];
  v14 = [v13 bottomAnchor];
  v15 = [v11 constraintEqualToAnchor:v14 constant:-4.0];

  if (![(CNGroupIdentityHeaderViewController *)self preferredContentSizeCategoryIsXL])
  {
    LODWORD(v16) = 1132068864;
    [v15 setPriority:v16];
  }

  v17 = [v5 leadingAnchor];
  v18 = [v3 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v47[0] = v19;
  v20 = [v5 trailingAnchor];
  [v3 trailingAnchor];
  v21 = v43 = v5;
  [v20 constraintEqualToAnchor:v21];
  v22 = v44 = v15;
  v47[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  [(CNGroupIdentityHeaderViewController *)self setHorizontalTitleLabelConstraints:v23];

  v46[0] = v15;
  v41 = [v3 leadingAnchor];
  v42 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v40 = [v42 view];
  v39 = [v40 leadingAnchor];
  v24 = [v41 constraintEqualToAnchor:v39];
  v46[1] = v24;
  v25 = [v3 trailingAnchor];
  v26 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v27 = [v26 view];
  v28 = [v27 trailingAnchor];
  v29 = [v25 constraintEqualToAnchor:v28];
  v46[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
  v31 = [(CNGroupIdentityHeaderViewController *)self horizontalTitleLabelConstraints];
  [v30 arrayByAddingObjectsFromArray:v31];
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
  v2 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  if ([v2 isEqualToString:*MEMORY[0x1E69DDC30]] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", *MEMORY[0x1E69DDC28]))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isEqualToString:*MEMORY[0x1E69DDC20]];
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
  v3 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v4 = [v3 view];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];

  v5 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  [(CNGroupIdentityHeaderViewController *)self addChildViewController:v5];

  v6 = [(CNGroupIdentityHeaderViewController *)self view];
  v7 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v8 = [v7 view];
  [v6 addSubview:v8];

  v9 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v10 = [v9 view];
  v11 = [v10 heightAnchor];
  v39 = [v11 constraintLessThanOrEqualToConstant:106.0];

  LODWORD(v12) = 1148846080;
  [v39 setPriority:v12];
  v13 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v14 = [v13 view];
  v15 = [v14 heightAnchor];
  v16 = [(CNGroupIdentityHeaderViewController *)self view];
  v17 = [v16 heightAnchor];
  v38 = [v15 constraintGreaterThanOrEqualToAnchor:v17 multiplier:0.3];

  LODWORD(v18) = 1148829696;
  [v38 setPriority:v18];
  v37 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v36 = [v37 view];
  v34 = [v36 topAnchor];
  v35 = [(CNGroupIdentityHeaderViewController *)self view];
  v33 = [v35 topAnchor];
  v32 = [v34 constraintEqualToAnchor:v33 constant:5.0];
  v40[0] = v32;
  v31 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v30 = [v31 view];
  v29 = [v30 leadingAnchor];
  v19 = [(CNGroupIdentityHeaderViewController *)self view];
  v20 = [v19 leadingAnchor];
  v21 = [v29 constraintEqualToAnchor:v20 constant:0.0];
  v40[1] = v21;
  v22 = [(CNGroupIdentityHeaderViewController *)self groupAvatarViewController];
  v23 = [v22 view];
  v24 = [v23 trailingAnchor];
  v25 = [(CNGroupIdentityHeaderViewController *)self view];
  v26 = [v25 trailingAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:-0.0];
  v40[2] = v27;
  v40[3] = v38;
  v40[4] = v39;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:5];

  [MEMORY[0x1E696ACD8] activateConstraints:v28];
}

- (void)contentSizeCategoryDidChange:(id)a3
{
  v4 = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  [v4 willMoveToParentViewController:0];

  v5 = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  v6 = [v5 view];
  [v6 removeFromSuperview];

  v7 = [(CNGroupIdentityHeaderViewController *)self actionsViewController];
  [v7 removeFromParentViewController];

  [(CNGroupIdentityHeaderViewController *)self updateActionButtonFont];
  if ([(CNGroupIdentityHeaderViewController *)self shouldShowActionsView])
  {
    [(CNGroupIdentityHeaderViewController *)self setupPopulatedActionsView];
  }

  v8 = [(CNGroupIdentityHeaderViewController *)self view];
  [v8 invalidateIntrinsicContentSize];
}

- (void)viewDidLayoutSubviews
{
  v11.receiver = self;
  v11.super_class = CNGroupIdentityHeaderViewController;
  [(CNGroupIdentityHeaderViewController *)&v11 viewDidLayoutSubviews];
  v3 = [(CNGroupIdentityHeaderViewController *)self view];
  [v3 frame];
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
  v4 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v4 bounds];
  v5 = [(CNGroupIdentityHeaderContainerView *)v3 initWithFrame:?];

  [(CNGroupIdentityHeaderContainerView *)v5 setDelegate:self];
  [(CNGroupIdentityHeaderViewController *)self setView:v5];
}

- (CNGroupIdentityHeaderViewController)initWithGroupIdentity:(id)a3 actionsViewConfiguration:(id)a4 avatarViewControllerSettings:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = CNGroupIdentityHeaderViewController;
  v12 = [(CNGroupIdentityHeaderViewController *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_group, a3);
    v14 = [[CNGroupAvatarViewController alloc] initWithGroup:v9 avatarViewControllerSettings:v11];
    groupAvatarViewController = v13->_groupAvatarViewController;
    v13->_groupAvatarViewController = v14;

    objc_storeStrong(&v13->_actionsViewConfiguration, a4);
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
    v20 = [MEMORY[0x1E696AD88] defaultCenter];
    [v20 addObserver:v13 selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];

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