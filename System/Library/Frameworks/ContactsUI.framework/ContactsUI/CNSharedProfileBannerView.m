@interface CNSharedProfileBannerView
+ (id)log;
- (BOOL)isRTL;
- (CGSize)avatarSize;
- (CNSharedProfileBannerView)init;
- (CNSharedProfileBannerViewDelegate)delegate;
- (double)estimatedHeightForWidth:(double)a3;
- (id)actionButtonTitleForAction:(unint64_t)a3;
- (id)contactDisplayName;
- (id)horizontalConstraints;
- (id)subtitleForAction:(unint64_t)a3 contactName:(id)a4;
- (id)subtitleForTappedAction:(unint64_t)a3;
- (id)subtitleTextColorForTappedAction:(unint64_t)a3;
- (id)titleForAction:(unint64_t)a3;
- (id)verticalConstraintsWithAvatarView;
- (id)verticalConstraintsWithHiddenAvatarView;
- (id)xmarkImageWithColorConfiguration:(id)a3;
- (void)avatarCacheDidUpdateForIdentifiers:(id)a3;
- (void)didTapActionButton;
- (void)didTapDismiss;
- (void)invalidateAvatarCacheEntriesForContact:(id)a3;
- (void)layoutSubviews;
- (void)performAnimationIfNeeded;
- (void)setStyle:(id)a3;
- (void)setTappedAction:(unint64_t)a3;
- (void)setUpActionButton;
- (void)setUpAvatarView;
- (void)setUpDismissButton;
- (void)setUpLabels;
- (void)setUpViews;
- (void)setUpWithSharedProfileStateOracle:(id)a3 tappedAction:(unint64_t)a4 hasPerformedAnimation:(BOOL)a5;
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
  v2 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v3 = 60.0;
  if (v2)
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
  v2 = [(CNSharedProfileBannerView *)self traitCollection];
  v3 = [v2 layoutDirection] == 1;

  return v3;
}

- (id)contactDisplayName
{
  v2 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v3 = [v2 contact];

  v4 = &stru_1F0CE7398;
  if (v3)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695CD80]);
    [v5 setStyle:1000];
    [v5 setFallbackStyle:-1];
    v6 = [v5 stringFromContact:v3];
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

- (void)avatarCacheDidUpdateForIdentifiers:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(CNSharedProfileBannerView *)self shouldPerformActionUponCacheInvalidation])
  {
    [(CNSharedProfileBannerView *)self setShouldPerformActionUponCacheInvalidation:0];
    v4 = [(CNSharedProfileBannerView *)self tappedAction];
    v5 = [objc_opt_class() log];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x1E695CF98] descriptionForActionType:v4];
      v7 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
      v8 = [v7 contact];
      v9 = [v8 identifier];
      *buf = 138412546;
      v21 = v6;
      v22 = 2112;
      v23 = v9;
      _os_log_impl(&dword_199A75000, v5, OS_LOG_TYPE_DEFAULT, "Performing %@ action type on contact (%@) from banner view", buf, 0x16u);
    }

    v10 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
    v19 = 0;
    v11 = [v10 updateContactAndNicknamesForActionType:v4 error:&v19];
    v12 = v19;

    if (v11)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __64__CNSharedProfileBannerView_avatarCacheDidUpdateForIdentifiers___block_invoke;
      v16[3] = &unk_1E74E6DF8;
      v16[4] = self;
      v17 = v11;
      v18 = v4;
      dispatch_async(MEMORY[0x1E69E96A0], v16);
    }

    else
    {
      v13 = [objc_opt_class() log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = [0 identifier];
        v15 = [MEMORY[0x1E695CF98] descriptionForActionType:v4];
        *buf = 138412802;
        v21 = v14;
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

- (void)invalidateAvatarCacheEntriesForContact:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = +[CNUIContactsEnvironment currentEnvironment];
    v5 = [v4 cachingLikenessRenderer];
    v6 = &unk_1F0E28E18;
    if ([v5 conformsToProtocol:v6])
    {
      v7 = v5;
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
      v12 = v3;
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
  v3 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v4 = [v3 bannerActionTypeForEffectiveState];

  v5 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v9 = 0;
  v6 = [v5 updateContactAndNicknamesForDeclinedActionType:v4 error:&v9];
  v7 = v9;

  if (v6)
  {
    [(CNSharedProfileBannerView *)self setIsIgnored:1];
    v8 = [(CNSharedProfileBannerView *)self delegate];
    [v8 sharedProfileBannerView:self didDismissWithUpdatedContact:v6 forAction:v4];
  }

  else
  {
    v8 = [objc_opt_class() log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v7;
      _os_log_error_impl(&dword_199A75000, v8, OS_LOG_TYPE_ERROR, "Error updating contact for dismiss action: %@", buf, 0xCu);
    }
  }
}

- (void)updateContactForTappedAction
{
  [(CNSharedProfileBannerView *)self setShouldPerformActionUponCacheInvalidation:1];
  v4 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v3 = [v4 contact];
  [(CNSharedProfileBannerView *)self invalidateAvatarCacheEntriesForContact:v3];
}

- (void)didTapActionButton
{
  v3 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v4 = [v3 bannerActionTypeForEffectiveState];

  [(CNSharedProfileBannerView *)self setTappedAction:v4];

  [(CNSharedProfileBannerView *)self updateContactForTappedAction];
}

- (void)performAnimationIfNeeded
{
  v3 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v4 = [v3 bannerActionTypeForEffectiveState];

  if ([(CNSharedProfileBannerView *)self isRevertAction:v4])
  {
    v5 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
    v10 = [v5 targetProfileForActionType:v4];

    v6 = [(CNSharedProfileBannerView *)self animationGenerator];
    v7 = [(CNSharedProfileBannerView *)self avatarView];
    v8 = [v10 contact];
    v9 = [(CNSharedProfileBannerView *)self isRTL];
    [(CNSharedProfileBannerView *)self avatarSize];
    [v6 performCoinFlipAnimationForAnimatingAvatarView:v7 toContact:v8 rightToLeft:v9 avatarSize:0 completionHandler:?];
  }
}

- (id)actionButtonTitleForAction:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    v5 = &stru_1F0CE7398;
  }

  else
  {
    v3 = *(&off_1E74E47B8 + a3 - 1);
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v5;
}

- (id)subtitleTextColorForTappedAction:(unint64_t)a3
{
  if (a3 - 1 < 2)
  {
    v3 = +[CNUIColorRepository sharedProfileBannerSubtitleRevertedColor];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  if (a3 == 3)
  {
    v3 = +[CNUIColorRepository sharedProfileBannerSubtitleUpdatedColor];
    goto LABEL_5;
  }

  v5 = [(CNSharedProfileBannerView *)self style];
  v4 = [v5 subtitleTextColor];

LABEL_7:

  return v4;
}

- (id)subtitleForTappedAction:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    v5 = &stru_1F0CE7398;
  }

  else
  {
    v3 = *(&off_1E74E47A0 + a3 - 1);
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v5;
}

- (id)subtitleForAction:(unint64_t)a3 contactName:(id)a4
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a4;
  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"SNAP_PHOTO_BANNER_SUBTITLE_%@" value:&stru_1F0CE7398 table:@"Localized"];
  v8 = [v4 localizedStringWithFormat:v7, v5];

  return v8;
}

- (id)titleForAction:(unint64_t)a3
{
  if (a3 - 1 > 2)
  {
    v5 = &stru_1F0CE7398;
  }

  else
  {
    v3 = *(&off_1E74E4788 + a3 - 1);
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];
  }

  return v5;
}

- (void)setTappedAction:(unint64_t)a3
{
  if (self->_tappedAction != a3)
  {
    self->_tappedAction = a3;
    [(CNSharedProfileBannerView *)self updateUIForCurrentState];
  }
}

- (void)updateUIForCurrentState
{
  if (!self->_sharedProfileStateOracle)
  {
    return;
  }

  v3 = 504;
  tappedAction = self->_tappedAction;
  v5 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v6 = [v5 bannerActionTypeForEffectiveState];

  v7 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
  v25 = [v7 targetProfileForActionType:v6];

  if (tappedAction)
  {
    v8 = self->_tappedAction;
    v9 = self;
  }

  else
  {
    v9 = self;
    v8 = v6;
  }

  v10 = [(CNSharedProfileBannerView *)v9 titleForAction:v8];
  v11 = [(CNSharedProfileBannerView *)self titleLabel];
  [v11 setText:v10];

  if (tappedAction)
  {
    [(CNSharedProfileBannerView *)self subtitleForTappedAction:self->_tappedAction];
  }

  else
  {
    v10 = [(CNSharedProfileBannerView *)self contactDisplayName];
    [(CNSharedProfileBannerView *)self subtitleForAction:v6 contactName:v10];
  }
  v12 = ;
  v13 = [(CNSharedProfileBannerView *)self subtitleLabel];
  [v13 setText:v12];

  if (tappedAction)
  {
    [(CNSharedProfileBannerView *)self subtitleTextColorForTappedAction:self->_tappedAction];
  }

  else
  {

    v10 = [(CNSharedProfileBannerView *)self style];
    [v10 subtitleTextColor];
  }
  v14 = ;
  v15 = [(CNSharedProfileBannerView *)self subtitleLabel];
  [v15 setTextColor:v14];

  if (tappedAction)
  {
    v16 = [(CNSharedProfileBannerView *)self style];
    v14 = [v16 subtitleFont];
    v3 = [v14 fontDescriptor];
    [CNUIFontRepository boldFontWithFontDescriptor:v3];
  }

  else
  {

    v16 = [(CNSharedProfileBannerView *)self style];
    [v16 subtitleFont];
  }
  v17 = ;
  v18 = [(CNSharedProfileBannerView *)self subtitleLabel];
  [v18 setFont:v17];

  if (tappedAction)
  {

    v17 = v14;
  }

  v19 = [(CNSharedProfileBannerView *)self actionButton];
  v20 = [(CNSharedProfileBannerView *)self actionButtonTitleForAction:v6];
  [v19 setTitle:v20 forState:0];

  v21 = [(CNSharedProfileBannerView *)self actionButton];
  [v21 setHidden:tappedAction != 0];

  if ([(CNSharedProfileBannerView *)self isRevertAction:v6])
  {
    v22 = [(CNSharedProfileBannerView *)self sharedProfileStateOracle];
    v23 = [v22 contact];
    v24 = [(CNSharedProfileBannerView *)self avatarView];
    [v24 setContact:v23];

LABEL_21:
    goto LABEL_22;
  }

  if (!tappedAction)
  {
    v22 = [v25 contact];
    v23 = [(CNSharedProfileBannerView *)self avatarView];
    [v23 setContact:v22];
    goto LABEL_21;
  }

LABEL_22:
}

- (void)setUpWithSharedProfileStateOracle:(id)a3 tappedAction:(unint64_t)a4 hasPerformedAnimation:(BOOL)a5
{
  v9 = a3;
  objc_storeStrong(&self->_sharedProfileStateOracle, a3);
  self->_tappedAction = a4;
  [(CNSharedProfileBannerView *)self updateUIForCurrentState];
  if (!a5)
  {
    [(CNSharedProfileBannerView *)self performSelector:sel_performAnimationIfNeeded withObject:0 afterDelay:0.5];
  }
}

- (void)startObservingAvatarCacheInvalidation
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  v4 = [v3 cachingLikenessRenderer];
  if ([v4 conformsToProtocol:&unk_1F0E28E18])
  {
    v5 = v4;
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

- (double)estimatedHeightForWidth:(double)a3
{
  v5 = [(CNSharedProfileBannerView *)self dismissButton];
  [v5 sizeToFit];

  v6 = [(CNSharedProfileBannerView *)self avatarView];
  [v6 sizeToFit];

  v7 = [(CNSharedProfileBannerView *)self actionButton];
  [v7 sizeToFit];

  v8 = [MEMORY[0x1E69DB878] ab_preferredContentSizeCategoryIsAccessibilityCategory];
  v9 = [(CNSharedProfileBannerView *)self avatarView];
  v10 = [v9 isHidden];
  v11 = 0.0;
  if (v8)
  {
    if ((v10 & 1) == 0)
    {
      v12 = [(CNSharedProfileBannerView *)self avatarView];
      [v12 frame];
      v11 = v13;
    }

    v14 = [(CNSharedProfileBannerView *)self actionButton];
    [v14 frame];
    v16 = v15;

    v17 = v11 + v16 + 16.0;
  }

  else
  {
    if ((v10 & 1) == 0)
    {
      v18 = [(CNSharedProfileBannerView *)self avatarView];
      [v18 frame];
      v11 = v19;
    }

    v20 = [(CNSharedProfileBannerView *)self actionButton];
    [v20 frame];
    v22 = v21;
    v23 = [(CNSharedProfileBannerView *)self dismissButton];
    [v23 frame];
    v25 = v22 + v24;

    a3 = a3 - v11 - v25 + -40.0;
    v17 = 16.0;
  }

  v26 = [(CNSharedProfileBannerView *)self titleLabel];
  [v26 sizeThatFits:{a3, 3.40282347e38}];
  v28 = v27;

  v29 = [(CNSharedProfileBannerView *)self subtitleLabel];
  [v29 sizeThatFits:{a3, 3.40282347e38}];
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
  v55 = [(CNSharedProfileBannerView *)self avatarView];
  v54 = [v55 centerXAnchor];
  v53 = [(CNSharedProfileBannerView *)self centerXAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v56[0] = v52;
  v51 = [(CNSharedProfileBannerView *)self avatarView];
  v50 = [v51 topAnchor];
  v49 = [(CNSharedProfileBannerView *)self topAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:8.0];
  v56[1] = v48;
  v47 = [(CNSharedProfileBannerView *)self avatarView];
  v45 = [v47 heightAnchor];
  v46 = [(CNSharedProfileBannerView *)self avatarView];
  v44 = [v46 widthAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v56[2] = v43;
  v42 = [(CNSharedProfileBannerView *)self avatarView];
  v41 = [v42 heightAnchor];
  v40 = [v41 constraintEqualToConstant:60.0];
  v56[3] = v40;
  v39 = [(CNSharedProfileBannerView *)self labelStackView];
  v38 = [v39 topAnchor];
  v37 = [(CNSharedProfileBannerView *)self topAnchor];
  v36 = [v38 constraintEqualToAnchor:v37];
  v56[4] = v36;
  v35 = [(CNSharedProfileBannerView *)self labelStackView];
  v34 = [v35 leadingAnchor];
  v33 = [(CNSharedProfileBannerView *)self leadingAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v56[5] = v32;
  v31 = [(CNSharedProfileBannerView *)self labelStackView];
  v29 = [v31 trailingAnchor];
  v30 = [(CNSharedProfileBannerView *)self dismissButton];
  v28 = [v30 leadingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v56[6] = v27;
  v26 = [(CNSharedProfileBannerView *)self actionButton];
  v24 = [v26 topAnchor];
  v25 = [(CNSharedProfileBannerView *)self labelStackView];
  v23 = [v25 bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v56[7] = v22;
  v21 = [(CNSharedProfileBannerView *)self actionButton];
  v19 = [v21 centerXAnchor];
  v20 = [(CNSharedProfileBannerView *)self labelStackView];
  v18 = [v20 centerXAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v56[8] = v17;
  v16 = [(CNSharedProfileBannerView *)self actionButton];
  v15 = [v16 bottomAnchor];
  v3 = [(CNSharedProfileBannerView *)self bottomAnchor];
  v4 = [v15 constraintEqualToAnchor:v3 constant:-8.0];
  v56[9] = v4;
  v5 = [(CNSharedProfileBannerView *)self dismissButton];
  v6 = [v5 trailingAnchor];
  v7 = [(CNSharedProfileBannerView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v56[10] = v8;
  v9 = [(CNSharedProfileBannerView *)self dismissButton];
  v10 = [v9 centerYAnchor];
  v11 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v56[11] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:12];

  return v14;
}

- (id)verticalConstraintsWithAvatarView
{
  v56[12] = *MEMORY[0x1E69E9840];
  v55 = [(CNSharedProfileBannerView *)self avatarView];
  v54 = [v55 centerXAnchor];
  v53 = [(CNSharedProfileBannerView *)self centerXAnchor];
  v52 = [v54 constraintEqualToAnchor:v53];
  v56[0] = v52;
  v51 = [(CNSharedProfileBannerView *)self avatarView];
  v50 = [v51 topAnchor];
  v49 = [(CNSharedProfileBannerView *)self topAnchor];
  v48 = [v50 constraintEqualToAnchor:v49 constant:8.0];
  v56[1] = v48;
  v47 = [(CNSharedProfileBannerView *)self avatarView];
  v45 = [v47 heightAnchor];
  v46 = [(CNSharedProfileBannerView *)self avatarView];
  v44 = [v46 widthAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v56[2] = v43;
  v42 = [(CNSharedProfileBannerView *)self avatarView];
  v41 = [v42 heightAnchor];
  v40 = [v41 constraintEqualToConstant:60.0];
  v56[3] = v40;
  v39 = [(CNSharedProfileBannerView *)self labelStackView];
  v37 = [v39 topAnchor];
  v38 = [(CNSharedProfileBannerView *)self avatarView];
  v36 = [v38 bottomAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v56[4] = v35;
  v34 = [(CNSharedProfileBannerView *)self labelStackView];
  v33 = [v34 leadingAnchor];
  v32 = [(CNSharedProfileBannerView *)self leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v56[5] = v31;
  v30 = [(CNSharedProfileBannerView *)self labelStackView];
  v29 = [v30 trailingAnchor];
  v28 = [(CNSharedProfileBannerView *)self trailingAnchor];
  v27 = [v29 constraintEqualToAnchor:v28];
  v56[6] = v27;
  v26 = [(CNSharedProfileBannerView *)self actionButton];
  v24 = [v26 topAnchor];
  v25 = [(CNSharedProfileBannerView *)self labelStackView];
  v23 = [v25 bottomAnchor];
  v22 = [v24 constraintEqualToAnchor:v23];
  v56[7] = v22;
  v21 = [(CNSharedProfileBannerView *)self actionButton];
  v19 = [v21 centerXAnchor];
  v20 = [(CNSharedProfileBannerView *)self labelStackView];
  v18 = [v20 centerXAnchor];
  v17 = [v19 constraintEqualToAnchor:v18];
  v56[8] = v17;
  v16 = [(CNSharedProfileBannerView *)self actionButton];
  v15 = [v16 bottomAnchor];
  v3 = [(CNSharedProfileBannerView *)self bottomAnchor];
  v4 = [v15 constraintEqualToAnchor:v3 constant:-8.0];
  v56[9] = v4;
  v5 = [(CNSharedProfileBannerView *)self dismissButton];
  v6 = [v5 trailingAnchor];
  v7 = [(CNSharedProfileBannerView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v56[10] = v8;
  v9 = [(CNSharedProfileBannerView *)self dismissButton];
  v10 = [v9 topAnchor];
  v11 = [(CNSharedProfileBannerView *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v56[11] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:12];

  return v14;
}

- (id)horizontalConstraints
{
  v63[13] = *MEMORY[0x1E69E9840];
  v3 = [(CNSharedProfileBannerView *)self avatarView];
  v4 = [v3 isHidden];
  v5 = [(CNSharedProfileBannerView *)self labelStackView];
  v6 = [v5 leadingAnchor];
  if (v4)
  {
    v7 = [(CNSharedProfileBannerView *)self leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
  }

  else
  {
    v7 = [(CNSharedProfileBannerView *)self avatarView];
    v9 = [v7 trailingAnchor];
    v8 = [v6 constraintEqualToSystemSpacingAfterAnchor:v9 multiplier:1.0];
  }

  v38 = v8;

  v62 = [(CNSharedProfileBannerView *)self avatarView];
  v61 = [v62 centerYAnchor];
  v60 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v63[0] = v59;
  v58 = [(CNSharedProfileBannerView *)self avatarView];
  v57 = [v58 leadingAnchor];
  v56 = [(CNSharedProfileBannerView *)self leadingAnchor];
  v55 = [v57 constraintEqualToAnchor:v56];
  v63[1] = v55;
  v54 = [(CNSharedProfileBannerView *)self avatarView];
  v52 = [v54 heightAnchor];
  v53 = [(CNSharedProfileBannerView *)self avatarView];
  v51 = [v53 widthAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v63[2] = v50;
  v49 = [(CNSharedProfileBannerView *)self avatarView];
  v48 = [v49 heightAnchor];
  v47 = [v48 constraintEqualToConstant:40.0];
  v63[3] = v47;
  v46 = [(CNSharedProfileBannerView *)self labelStackView];
  v45 = [v46 centerYAnchor];
  v44 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v43 = [v45 constraintEqualToAnchor:v44];
  v63[4] = v43;
  v42 = [(CNSharedProfileBannerView *)self labelStackView];
  v41 = [v42 topAnchor];
  v40 = [(CNSharedProfileBannerView *)self topAnchor];
  v39 = [v41 constraintGreaterThanOrEqualToAnchor:v40 constant:8.0];
  v63[5] = v39;
  v37 = [(CNSharedProfileBannerView *)self labelStackView];
  v36 = [v37 bottomAnchor];
  v35 = [(CNSharedProfileBannerView *)self bottomAnchor];
  v34 = [v36 constraintLessThanOrEqualToAnchor:v35 constant:8.0];
  v63[6] = v34;
  v63[7] = v8;
  v33 = [(CNSharedProfileBannerView *)self actionButton];
  v31 = [v33 leadingAnchor];
  v32 = [(CNSharedProfileBannerView *)self labelStackView];
  v30 = [v32 trailingAnchor];
  v29 = [v31 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v30 multiplier:1.0];
  v63[8] = v29;
  v28 = [(CNSharedProfileBannerView *)self actionButton];
  v27 = [v28 centerYAnchor];
  v26 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v25 = [v27 constraintEqualToAnchor:v26];
  v63[9] = v25;
  v24 = [(CNSharedProfileBannerView *)self dismissButton];
  v22 = [v24 leadingAnchor];
  v23 = [(CNSharedProfileBannerView *)self actionButton];
  v10 = [v23 trailingAnchor];
  v11 = [v22 constraintEqualToAnchor:v10];
  v63[10] = v11;
  v12 = [(CNSharedProfileBannerView *)self dismissButton];
  v13 = [v12 trailingAnchor];
  v14 = [(CNSharedProfileBannerView *)self trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v63[11] = v15;
  v16 = [(CNSharedProfileBannerView *)self dismissButton];
  v17 = [v16 centerYAnchor];
  v18 = [(CNSharedProfileBannerView *)self centerYAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
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
    v3 = [(CNSharedProfileBannerView *)self avatarView];
    if ([v3 isHidden])
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
    v5 = [(CNSharedProfileBannerView *)self horizontalConstraints];
    v3 = self->_constraints;
    self->_constraints = v5;
    v6 = 4;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  v8 = [(CNSharedProfileBannerView *)self titleLabel];
  [v8 setTextAlignment:v6];

  v9 = [(CNSharedProfileBannerView *)self subtitleLabel];
  [v9 setTextAlignment:v6];
}

- (void)setStyle:(id)a3
{
  v6 = a3;
  if (self->_style != v6)
  {
    v22 = v6;
    objc_storeStrong(&self->_style, a3);
    v7 = [(CNSharedProfileBannerStyle *)v22 titleTextColor];
    v8 = [(CNSharedProfileBannerView *)self titleLabel];
    [v8 setTextColor:v7];

    v9 = [(CNSharedProfileBannerStyle *)v22 subtitleTextColor];
    v10 = [(CNSharedProfileBannerView *)self subtitleLabel];
    [v10 setTextColor:v9];

    v11 = [(CNSharedProfileBannerStyle *)v22 titleFont];
    v12 = [(CNSharedProfileBannerView *)self titleLabel];
    [v12 setFont:v11];

    v13 = [(CNSharedProfileBannerView *)self hasTappedAction];
    [(CNSharedProfileBannerStyle *)v22 subtitleFont];
    if (v13)
      v12 = {;
      v3 = [v12 fontDescriptor];
      [CNUIFontRepository boldFontWithFontDescriptor:v3];
    }
    v14 = ;
    v15 = [(CNSharedProfileBannerView *)self subtitleLabel];
    [v15 setFont:v14];

    if (v13)
    {

      v14 = v12;
    }

    v16 = [(CNSharedProfileBannerStyle *)v22 actionButtonConfiguration];
    v17 = [(CNSharedProfileBannerView *)self actionButton];
    [v17 setConfiguration:v16];

    v18 = [(CNSharedProfileBannerStyle *)v22 xmarkButtonColorConfiguration];
    v19 = [(CNSharedProfileBannerView *)self xmarkImageWithColorConfiguration:v18];
    v20 = [(CNSharedProfileBannerView *)self dismissButton];
    v21 = [v20 imageView];
    [v21 setImage:v19];

    v6 = v22;
  }
}

- (id)xmarkImageWithColorConfiguration:(id)a3
{
  v3 = MEMORY[0x1E69DCAD8];
  v4 = a3;
  v5 = [v3 configurationWithScale:2];
  v6 = [MEMORY[0x1E69DCAD8] configurationWithWeight:7];
  v7 = [v6 configurationByApplyingConfiguration:v4];

  v8 = [v5 configurationByApplyingConfiguration:v7];

  v9 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark" withConfiguration:v8];

  return v9;
}

- (void)setUpDismissButton
{
  v7 = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  v3 = [(CNSharedProfileBannerView *)self style];
  v4 = [v3 xmarkButtonColorConfiguration];
  v5 = [(CNSharedProfileBannerView *)self xmarkImageWithColorConfiguration:v4];
  [v7 setImage:v5];

  [v7 setButtonSize:2];
  v6 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setConfiguration:v7];
  [v6 addTarget:self action:sel_didTapDismiss forControlEvents:64];
  [(CNSharedProfileBannerView *)self addSubview:v6];
  [(CNSharedProfileBannerView *)self setDismissButton:v6];
}

- (void)setUpActionButton
{
  v5 = objc_alloc_init(MEMORY[0x1E69DC738]);
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [(CNSharedProfileBannerView *)self style];
  v4 = [v3 actionButtonConfiguration];
  [v5 setConfiguration:v4];

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
  v4 = [(CNSharedProfileBannerView *)self style];
  v5 = [v4 titleTextColor];
  [v3 setTextColor:v5];

  v6 = [(CNSharedProfileBannerView *)self style];
  v7 = [v6 titleFont];
  [v3 setFont:v7];

  [v3 setAdjustsFontSizeToFitWidth:1];
  [(CNSharedProfileBannerView *)self setTitleLabel:v3];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 setNumberOfLines:0];
  [v8 setLineBreakMode:1];
  v9 = [(CNSharedProfileBannerView *)self style];
  v10 = [v9 subtitleTextColor];
  [v8 setTextColor:v10];

  v11 = [(CNSharedProfileBannerView *)self style];
  v12 = [v11 subtitleFont];
  [v8 setFont:v12];

  [v8 setAdjustsFontSizeToFitWidth:1];
  [(CNSharedProfileBannerView *)self setSubtitleLabel:v8];
  v13 = objc_alloc(MEMORY[0x1E69DCF90]);
  v14 = [(CNSharedProfileBannerView *)self titleLabel];
  v18[0] = v14;
  v15 = [(CNSharedProfileBannerView *)self subtitleLabel];
  v18[1] = v15;
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
  v3 = [(CNSharedProfileBannerView *)self labelStackView];
  [v3 bounds];
  v5 = v4 + 20.0;
  v6 = [(CNSharedProfileBannerView *)self titleLabel];
  [v6 setPreferredMaxLayoutWidth:v5];
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