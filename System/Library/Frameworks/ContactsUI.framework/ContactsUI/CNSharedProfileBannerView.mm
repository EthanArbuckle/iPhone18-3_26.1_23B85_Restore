@interface CNSharedProfileBannerView
+ (id)log;
- (BOOL)isRTL;
- (CGSize)avatarSize;
- (CNSharedProfileBannerView)init;
- (CNSharedProfileBannerViewDelegate)delegate;
- (double)estimatedHeightForWidth:(double)width;
- (id)actionButtonTitleForAction:(unint64_t)action;
- (id)contactDisplayName;
- (id)horizontalConstraints;
- (id)subtitleForAction:(unint64_t)action contactName:(id)name;
- (id)subtitleForTappedAction:(unint64_t)action;
- (id)subtitleTextColorForTappedAction:(unint64_t)action;
- (id)titleForAction:(unint64_t)action;
- (id)verticalConstraintsWithAvatarView;
- (id)verticalConstraintsWithHiddenAvatarView;
- (id)xmarkImageWithColorConfiguration:(id)configuration;
- (void)avatarCacheDidUpdateForIdentifiers:(id)identifiers;
- (void)didTapActionButton;
- (void)didTapDismiss;
- (void)invalidateAvatarCacheEntriesForContact:(id)contact;
- (void)layoutSubviews;
- (void)performAnimationIfNeeded;
- (void)setStyle:(id)style;
- (void)setTappedAction:(unint64_t)action;
- (void)setUpActionButton;
- (void)setUpAvatarView;
- (void)setUpDismissButton;
- (void)setUpLabels;
- (void)setUpViews;
- (void)setUpWithSharedProfileStateOracle:(id)oracle tappedAction:(unint64_t)action hasPerformedAnimation:(BOOL)animation;
- (void)startObservingAvatarCacheInvalidation;
- (void)updateConstraints;
- (void)updateContactForTappedAction;
- (void)updateUIForCurrentState;
@end

@implementation CNSharedProfileBannerView

- (CNSharedProfileBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)avatarSize
{
  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v3 = 60.0;
  if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
  {
    v3 = 40.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (BOOL)isRTL
{
  traitCollection = [(CNSharedProfileBannerView *)self traitCollection];
  v3 = [traitCollection layoutDirection] == 1;

  return v3;
}

- (id)contactDisplayName
{
  sharedProfileStateOracle = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  contact = [sharedProfileStateOracle contact];

  v4 = &stru_1F0CE7398;
  if (contact)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CD80]);
    [v5 setStyle:1000];
    [v5 setFallbackStyle:-1];
    v6 = [v5 stringFromContact:contact];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F0CE7398;
    }

    v4 = v8;
  }

  return v4;
}

- (void)avatarCacheDidUpdateForIdentifiers:(id)identifiers
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(CNSharedProfileBannerView *)self shouldPerformActionUponCacheInvalidation])
  {
    [(CNSharedProfileBannerView *)self setShouldPerformActionUponCacheInvalidation:0];
    tappedAction = [(CNSharedProfileBannerView *)self tappedAction];
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E695CF98] descriptionForActionType:tappedAction];
      sharedProfileStateOracle = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
      contact = [sharedProfileStateOracle contact];
      identifier = [contact identifier];
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = identifier;
      _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEFAULT, "Performing %@ action type on contact (%@) from banner view", buf, 0x16u);
    }

    sharedProfileStateOracle2 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
    v19 = 0;
    v11 = [sharedProfileStateOracle2 updateContactAndNicknamesForActionType:tappedAction error:&v19];
    v12 = v19;

    if (v11)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__CNSharedProfileBannerView_avatarCacheDidUpdateForIdentifiers___block_invoke;
      v16[3] = &unk_1E74E6DF8;
      v16[4] = self;
      v17 = v11;
      v18 = tappedAction;
      dispatch_async(MEMORY[0x1E69E96A0], v16);
    }

    else
    {
      v13 = [objc_opt_class() log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        identifier2 = [0 identifier];
        v15 = [MEMORY[0x1E695CF98] descriptionForActionType:tappedAction];
        *buf = 138412802;
        v21 = identifier2;
        v22 = 2112;
        v23 = v15;
        v24 = 2112;
        v25 = v12;
        _os_log_error_impl(&dword_199A75000, v13, OS_LOG_TYPE_ERROR, "Error updating contact (%@) for action %@ with error %@", buf, 0x20u);
      }
    }
  }
}

void __64__CNSharedProfileBannerView_avatarCacheDidUpdateForIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 sharedProfileBannerView:*(a1 + 32) didUpdateContact:*(a1 + 40) forAction:*(a1 + 48)];
}

- (void)invalidateAvatarCacheEntriesForContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v4 = +[CNUIContactsEnvironment currentEnvironment];
    cachingLikenessRenderer = [v4 cachingLikenessRenderer];
    v6 = &unk_1F0E28E18;
    if ([cachingLikenessRenderer conformsToProtocol:v6])
    {
      v7 = cachingLikenessRenderer;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (v8)
    {
      v9 = dispatch_get_global_queue(25, 0);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __68__CNSharedProfileBannerView_invalidateAvatarCacheEntriesForContact___block_invoke;
      v10[3] = &unk_1E74E77C0;
      v11 = v8;
      v12 = contactCopy;
      dispatch_async(v9, v10);
    }
  }
}

void __68__CNSharedProfileBannerView_invalidateAvatarCacheEntriesForContact___block_invoke(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) identifier];
  v4[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  [v1 updateContactsWithIdentifiers:v3];
}

- (void)didTapDismiss
{
  v12 = *MEMORY[0x1E69E9840];
  sharedProfileStateOracle = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  bannerActionTypeForEffectiveState = [sharedProfileStateOracle bannerActionTypeForEffectiveState];

  sharedProfileStateOracle2 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v9 = 0;
  v6 = [sharedProfileStateOracle2 updateContactAndNicknamesForDeclinedActionType:bannerActionTypeForEffectiveState error:&v9];
  v7 = v9;

  if (v6)
  {
    [(CNSharedProfileBannerView *)self setIsIgnored:1];
    delegate = [(CNSharedProfileBannerView *)self delegate];
    [delegate sharedProfileBannerView:self didDismissWithUpdatedContact:v6 forAction:bannerActionTypeForEffectiveState];
  }

  else
  {
    delegate = [objc_opt_class() log];
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_199A75000, delegate, OS_LOG_TYPE_ERROR, "Error updating contact for dismiss action: %@", buf, 0xCu);
    }
  }
}

- (void)updateContactForTappedAction
{
  [(CNSharedProfileBannerView *)self setShouldPerformActionUponCacheInvalidation:1];
  sharedProfileStateOracle = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  contact = [sharedProfileStateOracle contact];
  [(CNSharedProfileBannerView *)self invalidateAvatarCacheEntriesForContact:contact];
}

- (void)didTapActionButton
{
  sharedProfileStateOracle = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  bannerActionTypeForEffectiveState = [sharedProfileStateOracle bannerActionTypeForEffectiveState];

  [(CNSharedProfileBannerView *)self setTappedAction:bannerActionTypeForEffectiveState];

  [(CNSharedProfileBannerView *)self updateContactForTappedAction];
}

- (void)performAnimationIfNeeded
{
  sharedProfileStateOracle = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  bannerActionTypeForEffectiveState = [sharedProfileStateOracle bannerActionTypeForEffectiveState];

  if ([(CNSharedProfileBannerView *)self isRevertAction:bannerActionTypeForEffectiveState])
  {
    sharedProfileStateOracle2 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
    v10 = [sharedProfileStateOracle2 targetProfileForActionType:bannerActionTypeForEffectiveState];

    animationGenerator = [(CNSharedProfileBannerView *)self animationGenerator];
    avatarView = [(CNSharedProfileBannerView *)self avatarView];
    contact = [v10 contact];
    isRTL = [(CNSharedProfileBannerView *)self isRTL];
    [(CNSharedProfileBannerView *)self avatarSize];
    [animationGenerator performCoinFlipAnimationForAnimatingAvatarView:avatarView toContact:contact rightToLeft:isRTL avatarSize:0 completionHandler:?];
  }
}

- (id)actionButtonTitleForAction:(unint64_t)action
{
  if (action - 1 > 2)
  {
    v5 = &stru_1F0CE7398;
  }

  else
  {
    v3 = *(&off_1E74E47B8 + action - 1);
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v5;
}

- (id)subtitleTextColorForTappedAction:(unint64_t)action
{
  if (action - 1 < 2)
  {
    v3 = +[CNUIColorRepository sharedProfileBannerSubtitleRevertedColor];
LABEL_5:
    subtitleTextColor = v3;
    goto LABEL_7;
  }

  if (action == 3)
  {
    v3 = +[CNUIColorRepository sharedProfileBannerSubtitleUpdatedColor];
    goto LABEL_5;
  }

  style = [(CNSharedProfileBannerView *)self style];
  subtitleTextColor = [style subtitleTextColor];

LABEL_7:

  return subtitleTextColor;
}

- (id)subtitleForTappedAction:(unint64_t)action
{
  if (action - 1 > 2)
  {
    v5 = &stru_1F0CE7398;
  }

  else
  {
    v3 = *(&off_1E74E47A0 + action - 1);
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v5;
}

- (id)subtitleForAction:(unint64_t)action contactName:(id)name
{
  v4 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SNAP_PHOTO_BANNER_SUBTITLE_%@" value:&stru_1F0CE7398 table:@"Localized"];
  nameCopy = [v4 localizedStringWithFormat:v7, nameCopy];

  return nameCopy;
}

- (id)titleForAction:(unint64_t)action
{
  if (action - 1 > 2)
  {
    v5 = &stru_1F0CE7398;
  }

  else
  {
    v3 = *(&off_1E74E4788 + action - 1);
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v5;
}

- (void)setTappedAction:(unint64_t)action
{
  if (self->_tappedAction != action)
  {
    self->_tappedAction = action;
    [(CNSharedProfileBannerView *)self updateUIForCurrentState];
  }
}

- (void)updateUIForCurrentState
{
  if (!self->_sharedProfileStateOracle)
  {
    return;
  }

  fontDescriptor = 504;
  tappedAction = self->_tappedAction;
  sharedProfileStateOracle = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  bannerActionTypeForEffectiveState = [sharedProfileStateOracle bannerActionTypeForEffectiveState];

  sharedProfileStateOracle2 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v25 = [sharedProfileStateOracle2 targetProfileForActionType:bannerActionTypeForEffectiveState];

  if (tappedAction)
  {
    v8 = self->_tappedAction;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = self;
    v8 = bannerActionTypeForEffectiveState;
  }

  contactDisplayName = [(CNSharedProfileBannerView *)selfCopy2 titleForAction:v8];
  titleLabel = [(CNSharedProfileBannerView *)self titleLabel];
  [titleLabel setText:contactDisplayName];

  if (tappedAction)
  {
    [(CNSharedProfileBannerView *)self subtitleForTappedAction:self->_tappedAction];
  }

  else
  {
    contactDisplayName = [(CNSharedProfileBannerView *)self contactDisplayName];
    [(CNSharedProfileBannerView *)self subtitleForAction:bannerActionTypeForEffectiveState contactName:contactDisplayName];
  }
  v12 = ;
  subtitleLabel = [(CNSharedProfileBannerView *)self subtitleLabel];
  [subtitleLabel setText:v12];

  if (tappedAction)
  {
    [(CNSharedProfileBannerView *)self subtitleTextColorForTappedAction:self->_tappedAction];
  }

  else
  {

    contactDisplayName = [(CNSharedProfileBannerView *)self style];
    [contactDisplayName subtitleTextColor];
  }
  subtitleFont = ;
  subtitleLabel2 = [(CNSharedProfileBannerView *)self subtitleLabel];
  [subtitleLabel2 setTextColor:subtitleFont];

  if (tappedAction)
  {
    style = [(CNSharedProfileBannerView *)self style];
    subtitleFont = [style subtitleFont];
    fontDescriptor = [subtitleFont fontDescriptor];
    [CNUIFontRepository boldFontWithFontDescriptor:fontDescriptor];
  }

  else
  {

    style = [(CNSharedProfileBannerView *)self style];
    [style subtitleFont];
  }
  v17 = ;
  subtitleLabel3 = [(CNSharedProfileBannerView *)self subtitleLabel];
  [subtitleLabel3 setFont:v17];

  if (tappedAction)
  {

    v17 = subtitleFont;
  }

  actionButton = [(CNSharedProfileBannerView *)self actionButton];
  v20 = [(CNSharedProfileBannerView *)self actionButtonTitleForAction:bannerActionTypeForEffectiveState];
  [actionButton setTitle:v20 forState:0];

  actionButton2 = [(CNSharedProfileBannerView *)self actionButton];
  [actionButton2 setHidden:tappedAction != 0];

  if ([(CNSharedProfileBannerView *)self isRevertAction:bannerActionTypeForEffectiveState])
  {
    sharedProfileStateOracle3 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
    contact = [sharedProfileStateOracle3 contact];
    avatarView = [(CNSharedProfileBannerView *)self avatarView];
    [avatarView setContact:contact];

LABEL_21:
    goto LABEL_22;
  }

  if (!tappedAction)
  {
    sharedProfileStateOracle3 = [v25 contact];
    contact = [(CNSharedProfileBannerView *)self avatarView];
    [contact setContact:sharedProfileStateOracle3];
    goto LABEL_21;
  }

LABEL_22:
}

- (void)setUpWithSharedProfileStateOracle:(id)oracle tappedAction:(unint64_t)action hasPerformedAnimation:(BOOL)animation
{
  oracleCopy = oracle;
  objc_storeStrong(&self->_sharedProfileStateOracle, oracle);
  self->_tappedAction = action;
  [(CNSharedProfileBannerView *)self updateUIForCurrentState];
  if (!animation)
  {
    [(CNSharedProfileBannerView *)self performSelector:sel_performAnimationIfNeeded withObject:0 afterDelay:0.5];
  }
}

- (void)startObservingAvatarCacheInvalidation
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  cachingLikenessRenderer = [v3 cachingLikenessRenderer];
  if ([cachingLikenessRenderer conformsToProtocol:&unk_1F0E28E18])
  {
    v5 = cachingLikenessRenderer;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5;

  v6 = v7;
  if (v7)
  {
    [v7 addDelegate:self];
    v6 = v7;
  }
}

- (double)estimatedHeightForWidth:(double)width
{
  dismissButton = [(CNSharedProfileBannerView *)self dismissButton];
  [dismissButton sizeToFit];

  avatarView = [(CNSharedProfileBannerView *)self avatarView];
  [avatarView sizeToFit];

  actionButton = [(CNSharedProfileBannerView *)self actionButton];
  [actionButton sizeToFit];

  ab_preferredContentSizeCategoryIsAccessibilityCategory = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  avatarView2 = [(CNSharedProfileBannerView *)self avatarView];
  isHidden = [avatarView2 isHidden];
  v11 = 0.0;
  if (ab_preferredContentSizeCategoryIsAccessibilityCategory)
  {
    if ((isHidden & 1) == 0)
    {
      avatarView3 = [(CNSharedProfileBannerView *)self avatarView];
      [avatarView3 frame];
      v11 = v13;
    }

    actionButton2 = [(CNSharedProfileBannerView *)self actionButton];
    [actionButton2 frame];
    v16 = v15;

    v17 = v11 + v16 + 16.0;
  }

  else
  {
    if ((isHidden & 1) == 0)
    {
      avatarView4 = [(CNSharedProfileBannerView *)self avatarView];
      [avatarView4 frame];
      v11 = v19;
    }

    actionButton3 = [(CNSharedProfileBannerView *)self actionButton];
    [actionButton3 frame];
    v22 = v21;
    dismissButton2 = [(CNSharedProfileBannerView *)self dismissButton];
    [dismissButton2 frame];
    v25 = v22 + v24;

    width = width - v11 - v25 + -40.0;
    v17 = 16.0;
  }

  titleLabel = [(CNSharedProfileBannerView *)self titleLabel];
  [titleLabel sizeThatFits:{width, 3.40282347e38}];
  v28 = v27;

  subtitleLabel = [(CNSharedProfileBannerView *)self subtitleLabel];
  [subtitleLabel sizeThatFits:{width, 3.40282347e38}];
  v31 = v30;

  result = v17 + v28 + v31;
  if (result < 60.0)
  {
    return 60.0;
  }

  return result;
}

- (id)verticalConstraintsWithHiddenAvatarView
{
  v56[12] = *MEMORY[0x1E69E9840];
  avatarView = [(CNSharedProfileBannerView *)self avatarView];
  centerXAnchor = [avatarView centerXAnchor];
  centerXAnchor2 = [(CNSharedProfileBannerView *)self centerXAnchor];
  v52 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v56[0] = v52;
  avatarView2 = [(CNSharedProfileBannerView *)self avatarView];
  topAnchor = [avatarView2 topAnchor];
  topAnchor2 = [(CNSharedProfileBannerView *)self topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v56[1] = v48;
  avatarView3 = [(CNSharedProfileBannerView *)self avatarView];
  heightAnchor = [avatarView3 heightAnchor];
  avatarView4 = [(CNSharedProfileBannerView *)self avatarView];
  widthAnchor = [avatarView4 widthAnchor];
  v43 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  v56[2] = v43;
  avatarView5 = [(CNSharedProfileBannerView *)self avatarView];
  heightAnchor2 = [avatarView5 heightAnchor];
  v40 = [heightAnchor2 constraintEqualToConstant:60.0];
  v56[3] = v40;
  labelStackView = [(CNSharedProfileBannerView *)self labelStackView];
  topAnchor3 = [labelStackView topAnchor];
  topAnchor4 = [(CNSharedProfileBannerView *)self topAnchor];
  v36 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v56[4] = v36;
  labelStackView2 = [(CNSharedProfileBannerView *)self labelStackView];
  leadingAnchor = [labelStackView2 leadingAnchor];
  leadingAnchor2 = [(CNSharedProfileBannerView *)self leadingAnchor];
  v32 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v56[5] = v32;
  labelStackView3 = [(CNSharedProfileBannerView *)self labelStackView];
  trailingAnchor = [labelStackView3 trailingAnchor];
  dismissButton = [(CNSharedProfileBannerView *)self dismissButton];
  leadingAnchor3 = [dismissButton leadingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3];
  v56[6] = v27;
  actionButton = [(CNSharedProfileBannerView *)self actionButton];
  topAnchor5 = [actionButton topAnchor];
  labelStackView4 = [(CNSharedProfileBannerView *)self labelStackView];
  bottomAnchor = [labelStackView4 bottomAnchor];
  v22 = [topAnchor5 constraintEqualToAnchor:bottomAnchor];
  v56[7] = v22;
  actionButton2 = [(CNSharedProfileBannerView *)self actionButton];
  centerXAnchor3 = [actionButton2 centerXAnchor];
  labelStackView5 = [(CNSharedProfileBannerView *)self labelStackView];
  centerXAnchor4 = [labelStackView5 centerXAnchor];
  v17 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v56[8] = v17;
  actionButton3 = [(CNSharedProfileBannerView *)self actionButton];
  bottomAnchor2 = [actionButton3 bottomAnchor];
  bottomAnchor3 = [(CNSharedProfileBannerView *)self bottomAnchor];
  v4 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:-8.0];
  v56[9] = v4;
  dismissButton2 = [(CNSharedProfileBannerView *)self dismissButton];
  trailingAnchor2 = [dismissButton2 trailingAnchor];
  trailingAnchor3 = [(CNSharedProfileBannerView *)self trailingAnchor];
  v8 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v56[10] = v8;
  dismissButton3 = [(CNSharedProfileBannerView *)self dismissButton];
  centerYAnchor = [dismissButton3 centerYAnchor];
  centerYAnchor2 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v56[11] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:12];

  return v14;
}

- (id)verticalConstraintsWithAvatarView
{
  v56[12] = *MEMORY[0x1E69E9840];
  avatarView = [(CNSharedProfileBannerView *)self avatarView];
  centerXAnchor = [avatarView centerXAnchor];
  centerXAnchor2 = [(CNSharedProfileBannerView *)self centerXAnchor];
  v52 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v56[0] = v52;
  avatarView2 = [(CNSharedProfileBannerView *)self avatarView];
  topAnchor = [avatarView2 topAnchor];
  topAnchor2 = [(CNSharedProfileBannerView *)self topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
  v56[1] = v48;
  avatarView3 = [(CNSharedProfileBannerView *)self avatarView];
  heightAnchor = [avatarView3 heightAnchor];
  avatarView4 = [(CNSharedProfileBannerView *)self avatarView];
  widthAnchor = [avatarView4 widthAnchor];
  v43 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  v56[2] = v43;
  avatarView5 = [(CNSharedProfileBannerView *)self avatarView];
  heightAnchor2 = [avatarView5 heightAnchor];
  v40 = [heightAnchor2 constraintEqualToConstant:60.0];
  v56[3] = v40;
  labelStackView = [(CNSharedProfileBannerView *)self labelStackView];
  topAnchor3 = [labelStackView topAnchor];
  avatarView6 = [(CNSharedProfileBannerView *)self avatarView];
  bottomAnchor = [avatarView6 bottomAnchor];
  v35 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v56[4] = v35;
  labelStackView2 = [(CNSharedProfileBannerView *)self labelStackView];
  leadingAnchor = [labelStackView2 leadingAnchor];
  leadingAnchor2 = [(CNSharedProfileBannerView *)self leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v56[5] = v31;
  labelStackView3 = [(CNSharedProfileBannerView *)self labelStackView];
  trailingAnchor = [labelStackView3 trailingAnchor];
  trailingAnchor2 = [(CNSharedProfileBannerView *)self trailingAnchor];
  v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v56[6] = v27;
  actionButton = [(CNSharedProfileBannerView *)self actionButton];
  topAnchor4 = [actionButton topAnchor];
  labelStackView4 = [(CNSharedProfileBannerView *)self labelStackView];
  bottomAnchor2 = [labelStackView4 bottomAnchor];
  v22 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v56[7] = v22;
  actionButton2 = [(CNSharedProfileBannerView *)self actionButton];
  centerXAnchor3 = [actionButton2 centerXAnchor];
  labelStackView5 = [(CNSharedProfileBannerView *)self labelStackView];
  centerXAnchor4 = [labelStackView5 centerXAnchor];
  v17 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v56[8] = v17;
  actionButton3 = [(CNSharedProfileBannerView *)self actionButton];
  bottomAnchor3 = [actionButton3 bottomAnchor];
  bottomAnchor4 = [(CNSharedProfileBannerView *)self bottomAnchor];
  v4 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-8.0];
  v56[9] = v4;
  dismissButton = [(CNSharedProfileBannerView *)self dismissButton];
  trailingAnchor3 = [dismissButton trailingAnchor];
  trailingAnchor4 = [(CNSharedProfileBannerView *)self trailingAnchor];
  v8 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v56[10] = v8;
  dismissButton2 = [(CNSharedProfileBannerView *)self dismissButton];
  topAnchor5 = [dismissButton2 topAnchor];
  topAnchor6 = [(CNSharedProfileBannerView *)self topAnchor];
  v12 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v56[11] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:12];

  return v14;
}

- (id)horizontalConstraints
{
  v63[13] = *MEMORY[0x1E69E9840];
  avatarView = [(CNSharedProfileBannerView *)self avatarView];
  isHidden = [avatarView isHidden];
  labelStackView = [(CNSharedProfileBannerView *)self labelStackView];
  leadingAnchor = [labelStackView leadingAnchor];
  if (isHidden)
  {
    leadingAnchor2 = [(CNSharedProfileBannerView *)self leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  }

  else
  {
    leadingAnchor2 = [(CNSharedProfileBannerView *)self avatarView];
    trailingAnchor = [leadingAnchor2 trailingAnchor];
    v8 = [leadingAnchor constraintEqualToSystemSpacingAfterAnchor:trailingAnchor multiplier:1.0];
  }

  v38 = v8;

  avatarView2 = [(CNSharedProfileBannerView *)self avatarView];
  centerYAnchor = [avatarView2 centerYAnchor];
  centerYAnchor2 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v59 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v63[0] = v59;
  avatarView3 = [(CNSharedProfileBannerView *)self avatarView];
  leadingAnchor3 = [avatarView3 leadingAnchor];
  leadingAnchor4 = [(CNSharedProfileBannerView *)self leadingAnchor];
  v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v63[1] = v55;
  avatarView4 = [(CNSharedProfileBannerView *)self avatarView];
  heightAnchor = [avatarView4 heightAnchor];
  avatarView5 = [(CNSharedProfileBannerView *)self avatarView];
  widthAnchor = [avatarView5 widthAnchor];
  v50 = [heightAnchor constraintEqualToAnchor:widthAnchor];
  v63[2] = v50;
  avatarView6 = [(CNSharedProfileBannerView *)self avatarView];
  heightAnchor2 = [avatarView6 heightAnchor];
  v47 = [heightAnchor2 constraintEqualToConstant:40.0];
  v63[3] = v47;
  labelStackView2 = [(CNSharedProfileBannerView *)self labelStackView];
  centerYAnchor3 = [labelStackView2 centerYAnchor];
  centerYAnchor4 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v43 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v63[4] = v43;
  labelStackView3 = [(CNSharedProfileBannerView *)self labelStackView];
  topAnchor = [labelStackView3 topAnchor];
  topAnchor2 = [(CNSharedProfileBannerView *)self topAnchor];
  v39 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:8.0];
  v63[5] = v39;
  labelStackView4 = [(CNSharedProfileBannerView *)self labelStackView];
  bottomAnchor = [labelStackView4 bottomAnchor];
  bottomAnchor2 = [(CNSharedProfileBannerView *)self bottomAnchor];
  v34 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:8.0];
  v63[6] = v34;
  v63[7] = v8;
  actionButton = [(CNSharedProfileBannerView *)self actionButton];
  leadingAnchor5 = [actionButton leadingAnchor];
  labelStackView5 = [(CNSharedProfileBannerView *)self labelStackView];
  trailingAnchor2 = [labelStackView5 trailingAnchor];
  v29 = [leadingAnchor5 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor2 multiplier:1.0];
  v63[8] = v29;
  actionButton2 = [(CNSharedProfileBannerView *)self actionButton];
  centerYAnchor5 = [actionButton2 centerYAnchor];
  centerYAnchor6 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v25 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  v63[9] = v25;
  dismissButton = [(CNSharedProfileBannerView *)self dismissButton];
  leadingAnchor6 = [dismissButton leadingAnchor];
  actionButton3 = [(CNSharedProfileBannerView *)self actionButton];
  trailingAnchor3 = [actionButton3 trailingAnchor];
  v11 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor3];
  v63[10] = v11;
  dismissButton2 = [(CNSharedProfileBannerView *)self dismissButton];
  trailingAnchor4 = [dismissButton2 trailingAnchor];
  trailingAnchor5 = [(CNSharedProfileBannerView *)self trailingAnchor];
  v15 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v63[11] = v15;
  dismissButton3 = [(CNSharedProfileBannerView *)self dismissButton];
  centerYAnchor7 = [dismissButton3 centerYAnchor];
  centerYAnchor8 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v19 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v63[12] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:13];

  return v21;
}

- (void)updateConstraints
{
  v10.receiver = self;
  v10.super_class = CNSharedProfileBannerView;
  [(CNSharedProfileBannerView *)&v10 updateConstraints];
  if (self->_constraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  if ([MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory])
  {
    avatarView = [(CNSharedProfileBannerView *)self avatarView];
    if ([avatarView isHidden])
    {
      [(CNSharedProfileBannerView *)self verticalConstraintsWithHiddenAvatarView];
    }

    else
    {
      [(CNSharedProfileBannerView *)self verticalConstraintsWithAvatarView];
    }
    v4 = ;
    constraints = self->_constraints;
    self->_constraints = v4;

    v6 = 1;
  }

  else
  {
    horizontalConstraints = [(CNSharedProfileBannerView *)self horizontalConstraints];
    avatarView = self->_constraints;
    self->_constraints = horizontalConstraints;
    v6 = 4;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  titleLabel = [(CNSharedProfileBannerView *)self titleLabel];
  [titleLabel setTextAlignment:v6];

  subtitleLabel = [(CNSharedProfileBannerView *)self subtitleLabel];
  [subtitleLabel setTextAlignment:v6];
}

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (self->_style != styleCopy)
  {
    v22 = styleCopy;
    objc_storeStrong(&self->_style, style);
    titleTextColor = [(CNSharedProfileBannerStyle *)v22 titleTextColor];
    titleLabel = [(CNSharedProfileBannerView *)self titleLabel];
    [titleLabel setTextColor:titleTextColor];

    subtitleTextColor = [(CNSharedProfileBannerStyle *)v22 subtitleTextColor];
    subtitleLabel = [(CNSharedProfileBannerView *)self subtitleLabel];
    [subtitleLabel setTextColor:subtitleTextColor];

    titleFont = [(CNSharedProfileBannerStyle *)v22 titleFont];
    titleLabel2 = [(CNSharedProfileBannerView *)self titleLabel];
    [titleLabel2 setFont:titleFont];

    hasTappedAction = [(CNSharedProfileBannerView *)self hasTappedAction];
    [(CNSharedProfileBannerStyle *)v22 subtitleFont];
    if (hasTappedAction)
      titleLabel2 = {;
      fontDescriptor = [titleLabel2 fontDescriptor];
      [CNUIFontRepository boldFontWithFontDescriptor:fontDescriptor];
    }
    v14 = ;
    subtitleLabel2 = [(CNSharedProfileBannerView *)self subtitleLabel];
    [subtitleLabel2 setFont:v14];

    if (hasTappedAction)
    {

      v14 = titleLabel2;
    }

    actionButtonConfiguration = [(CNSharedProfileBannerStyle *)v22 actionButtonConfiguration];
    actionButton = [(CNSharedProfileBannerView *)self actionButton];
    [actionButton setConfiguration:actionButtonConfiguration];

    xmarkButtonColorConfiguration = [(CNSharedProfileBannerStyle *)v22 xmarkButtonColorConfiguration];
    v19 = [(CNSharedProfileBannerView *)self xmarkImageWithColorConfiguration:xmarkButtonColorConfiguration];
    dismissButton = [(CNSharedProfileBannerView *)self dismissButton];
    imageView = [dismissButton imageView];
    [imageView setImage:v19];

    styleCopy = v22;
  }
}

- (id)xmarkImageWithColorConfiguration:(id)configuration
{
  v3 = MEMORY[0x1E69DCAD8];
  configurationCopy = configuration;
  v5 = [v3 configurationWithScale:2];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
  v7 = [v6 configurationByApplyingConfiguration:configurationCopy];

  v8 = [v5 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v8];

  return v9;
}

- (void)setUpDismissButton
{
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  style = [(CNSharedProfileBannerView *)self style];
  xmarkButtonColorConfiguration = [style xmarkButtonColorConfiguration];
  v5 = [(CNSharedProfileBannerView *)self xmarkImageWithColorConfiguration:xmarkButtonColorConfiguration];
  [plainButtonConfiguration setImage:v5];

  [plainButtonConfiguration setButtonSize:2];
  v6 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setConfiguration:plainButtonConfiguration];
  [v6 addTarget:self action:sel_didTapDismiss forControlEvents:64];
  [(CNSharedProfileBannerView *)self addSubview:v6];
  [(CNSharedProfileBannerView *)self setDismissButton:v6];
}

- (void)setUpActionButton
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  style = [(CNSharedProfileBannerView *)self style];
  actionButtonConfiguration = [style actionButtonConfiguration];
  [v5 setConfiguration:actionButtonConfiguration];

  [v5 addTarget:self action:sel_didTapActionButton forControlEvents:64];
  [(CNSharedProfileBannerView *)self addSubview:v5];
  [(CNSharedProfileBannerView *)self setActionButton:v5];
}

- (void)setUpLabels
{
  v18[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 setNumberOfLines:0];
  style = [(CNSharedProfileBannerView *)self style];
  titleTextColor = [style titleTextColor];
  [v3 setTextColor:titleTextColor];

  style2 = [(CNSharedProfileBannerView *)self style];
  titleFont = [style2 titleFont];
  [v3 setFont:titleFont];

  [v3 setAdjustsFontSizeToFitWidth:1];
  [(CNSharedProfileBannerView *)self setTitleLabel:v3];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setNumberOfLines:0];
  [v8 setLineBreakMode:1];
  style3 = [(CNSharedProfileBannerView *)self style];
  subtitleTextColor = [style3 subtitleTextColor];
  [v8 setTextColor:subtitleTextColor];

  style4 = [(CNSharedProfileBannerView *)self style];
  subtitleFont = [style4 subtitleFont];
  [v8 setFont:subtitleFont];

  [v8 setAdjustsFontSizeToFitWidth:1];
  [(CNSharedProfileBannerView *)self setSubtitleLabel:v8];
  v13 = objc_alloc(MEMORY[0x1E69DCF90]);
  titleLabel = [(CNSharedProfileBannerView *)self titleLabel];
  v18[0] = titleLabel;
  subtitleLabel = [(CNSharedProfileBannerView *)self subtitleLabel];
  v18[1] = subtitleLabel;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v17 = [v13 initWithArrangedSubviews:v16];

  [v17 setAxis:1];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v17 setAlignment:1];
  [(CNSharedProfileBannerView *)self addSubview:v17];
  [(CNSharedProfileBannerView *)self setLabelStackView:v17];
}

- (void)setUpAvatarView
{
  v3 = objc_alloc_init(CNAvatarView);
  [(CNAvatarView *)v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(CNSharedProfileBannerView *)self addSubview:v3];
  [(CNSharedProfileBannerView *)self setAvatarView:v3];
}

- (void)setUpViews
{
  [(CNSharedProfileBannerView *)self setUpAvatarView];
  [(CNSharedProfileBannerView *)self setUpLabels];
  [(CNSharedProfileBannerView *)self setUpActionButton];

  [(CNSharedProfileBannerView *)self setUpDismissButton];
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = CNSharedProfileBannerView;
  [(CNSharedProfileBannerView *)&v7 layoutSubviews];
  labelStackView = [(CNSharedProfileBannerView *)self labelStackView];
  [labelStackView bounds];
  v5 = v4 + 20.0;
  titleLabel = [(CNSharedProfileBannerView *)self titleLabel];
  [titleLabel setPreferredMaxLayoutWidth:v5];
}

- (CNSharedProfileBannerView)init
{
  v9.receiver = self;
  v9.super_class = CNSharedProfileBannerView;
  v2 = [(CNSharedProfileBannerView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = +[CNSharedProfileBannerStyle defaultStyle];
    style = v2->_style;
    v2->_style = v3;

    v5 = objc_alloc_init(CNSharedProfileAnimationGenerator);
    animationGenerator = v2->_animationGenerator;
    v2->_animationGenerator = v5;

    [(CNSharedProfileBannerView *)v2 setUpViews];
    [(CNSharedProfileBannerView *)v2 startObservingAvatarCacheInvalidation];
    v7 = v2;
  }

  return v2;
}

+ (id)log
{
  if (log_cn_once_token_1_37722 != -1)
  {
    dispatch_once(&log_cn_once_token_1_37722, &__block_literal_global_37723);
  }

  v3 = log_cn_once_object_1_37724;

  return v3;
}

uint64_t __32__CNSharedProfileBannerView_log__block_invoke()
{
  v0 = os_log_create("com.apple.contactsui", "CNSharedProfileBannerView");
  v1 = log_cn_once_object_1_37724;
  log_cn_once_object_1_37724 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end