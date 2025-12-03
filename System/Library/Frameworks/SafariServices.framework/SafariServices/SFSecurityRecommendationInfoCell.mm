@interface SFSecurityRecommendationInfoCell
- (CGSize)_hideButtonViewSize;
- (SFSecurityRecommendationInfoCell)initWithConfiguration:(unint64_t)configuration reuseIdentifier:(id)identifier;
- (SFSecurityRecommendationInfoCellDelegate)delegate;
- (double)_iconWidth;
- (void)_createHideButton;
- (void)_hideButtonPressed:(id)pressed;
- (void)_updateSharedAccountBadgeImageViewIfNecessary;
- (void)layoutSubviews;
- (void)setIcon:(id)icon;
- (void)setSavedAccount:(id)account;
- (void)setShowsHideButton:(BOOL)button;
- (void)setShowsUpgradeCompletionCheckmark:(BOOL)checkmark;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)showCheckmarkForDetailView;
- (void)showPlaceholderImageForDomain:(id)domain backgroundColor:(id)color;
@end

@implementation SFSecurityRecommendationInfoCell

- (SFSecurityRecommendationInfoCell)initWithConfiguration:(unint64_t)configuration reuseIdentifier:(id)identifier
{
  v95[12] = *MEMORY[0x1E69E9840];
  v93.receiver = self;
  v93.super_class = SFSecurityRecommendationInfoCell;
  v5 = [(SFSecurityRecommendationInfoCell *)&v93 initWithStyle:0 reuseIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    v5->_configuration = configuration;
    contentView = [(SFSecurityRecommendationInfoCell *)v5 contentView];
    v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconView = v6->_iconView;
    v6->_iconView = v8;

    if (v6->_configuration == 1)
    {
      [(UIImageView *)v6->_iconView _setContinuousCornerRadius:12.0];
    }

    [(UIImageView *)v6->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    layer = [(UIImageView *)v6->_iconView layer];
    [layer setMasksToBounds:1];

    [(UIImageView *)v6->_iconView setContentMode:2];
    [(UIImageView *)v6->_iconView setClipsToBounds:1];
    [contentView addSubview:v6->_iconView];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v6->_titleLabel;
    v6->_titleLabel = v11;

    v13 = +[_SFAccountManagerAppearanceValues titleFontForLargerCell];
    [(UILabel *)v6->_titleLabel setFont:v13];

    [(UILabel *)v6->_titleLabel setNumberOfLines:0];
    [(UILabel *)v6->_titleLabel setTextAlignment:4];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v6->_titleLabel setTextColor:labelColor];

    [(UILabel *)v6->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v6->_titleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v15) = 1148846080;
    [(UILabel *)v6->_titleLabel setContentHuggingPriority:1 forAxis:v15];
    LODWORD(v16) = 1148846080;
    [(UILabel *)v6->_titleLabel setContentCompressionResistancePriority:1 forAxis:v16];
    [contentView addSubview:v6->_titleLabel];
    v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v6->_subtitleLabel;
    v6->_subtitleLabel = v17;

    v19 = +[_SFAccountManagerAppearanceValues subtitleFontForLargerCell];
    [(UILabel *)v6->_subtitleLabel setFont:v19];

    [(UILabel *)v6->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v6->_subtitleLabel setLineBreakMode:0];
    [(UILabel *)v6->_subtitleLabel setTextAlignment:4];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v6->_subtitleLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v6->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v6->_subtitleLabel setAdjustsFontForContentSizeCategory:1];
    LODWORD(v21) = 1148846080;
    [(UILabel *)v6->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v21];
    [contentView addSubview:v6->_subtitleLabel];
    if (configuration)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = -1.5;
    }

    contentView2 = [(SFSecurityRecommendationInfoCell *)v6 contentView];
    layoutMarginsGuide = [contentView2 layoutMarginsGuide];

    trailingAnchor = [(UILabel *)v6->_titleLabel trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v27 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    standardTitleTrailingConstraint = v6->_standardTitleTrailingConstraint;
    v6->_standardTitleTrailingConstraint = v27;

    widthAnchor = [(UIImageView *)v6->_iconView widthAnchor];
    [(SFSecurityRecommendationInfoCell *)v6 _iconWidth];
    v85 = [widthAnchor constraintEqualToConstant:?];
    v95[0] = v85;
    heightAnchor = [(UIImageView *)v6->_iconView heightAnchor];
    widthAnchor2 = [(UIImageView *)v6->_iconView widthAnchor];
    v81 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v95[1] = v81;
    leadingAnchor = [(UIImageView *)v6->_iconView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v78 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:v22];
    v95[2] = v78;
    leadingAnchor3 = [(UILabel *)v6->_titleLabel leadingAnchor];
    trailingAnchor3 = [(UIImageView *)v6->_iconView trailingAnchor];
    v75 = [leadingAnchor3 constraintEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.5];
    v95[3] = v75;
    leadingAnchor4 = [(UILabel *)v6->_subtitleLabel leadingAnchor];
    leadingAnchor5 = [(UILabel *)v6->_titleLabel leadingAnchor];
    v72 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
    v95[4] = v72;
    trailingAnchor4 = [(UILabel *)v6->_subtitleLabel trailingAnchor];
    v92 = layoutMarginsGuide;
    trailingAnchor5 = [layoutMarginsGuide trailingAnchor];
    v69 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v95[5] = v69;
    v95[6] = v6->_standardTitleTrailingConstraint;
    topAnchor = [(UIImageView *)v6->_iconView topAnchor];
    topAnchor2 = [contentView topAnchor];
    v66 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.5];
    v95[7] = v66;
    bottomAnchor = [contentView bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v6->_iconView bottomAnchor];
    v63 = [bottomAnchor constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor2 multiplier:1.5];
    v95[8] = v63;
    topAnchor3 = [(UILabel *)v6->_titleLabel topAnchor];
    topAnchor4 = [(UIImageView *)v6->_iconView topAnchor];
    v31 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v95[9] = v31;
    topAnchor5 = [(UILabel *)v6->_subtitleLabel topAnchor];
    bottomAnchor3 = [(UILabel *)v6->_titleLabel bottomAnchor];
    v34 = [topAnchor5 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:0.5];
    v95[10] = v34;
    [contentView bottomAnchor];
    v35 = v91 = contentView;
    bottomAnchor4 = [(UILabel *)v6->_subtitleLabel bottomAnchor];
    v37 = [v35 constraintGreaterThanOrEqualToSystemSpacingBelowAnchor:bottomAnchor4 multiplier:1.5];
    v95[11] = v37;
    v89 = [MEMORY[0x1E695DEC8] arrayWithObjects:v95 count:12];

    if (v6->_configuration == 1)
    {
      v38 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
      completedUpgradeCheckmarkView = v6->_completedUpgradeCheckmarkView;
      v6->_completedUpgradeCheckmarkView = v38;

      [(UIImageView *)v6->_completedUpgradeCheckmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
      v40 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
      systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
      v42 = [v40 imageWithTintColor:systemGreenColor renderingMode:1];
      [(UIImageView *)v6->_completedUpgradeCheckmarkView setImage:v42];

      [(UIImageView *)v6->_completedUpgradeCheckmarkView setAlpha:0.0];
      [v91 addSubview:v6->_completedUpgradeCheckmarkView];
      widthAnchor3 = [(UIImageView *)v6->_completedUpgradeCheckmarkView widthAnchor];
      v88 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:28.0];
      v94[0] = v88;
      heightAnchor2 = [(UIImageView *)v6->_completedUpgradeCheckmarkView heightAnchor];
      v84 = [heightAnchor2 constraintEqualToConstant:28.0];
      v94[1] = v84;
      trailingAnchor6 = [(UIImageView *)v6->_completedUpgradeCheckmarkView trailingAnchor];
      trailingAnchor7 = [v92 trailingAnchor];
      v45 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
      v94[2] = v45;
      leadingAnchor6 = [(UIImageView *)v6->_completedUpgradeCheckmarkView leadingAnchor];
      trailingAnchor8 = [(UILabel *)v6->_titleLabel trailingAnchor];
      v48 = [leadingAnchor6 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor8 multiplier:1.0];
      v94[3] = v48;
      topAnchor6 = [(UIImageView *)v6->_completedUpgradeCheckmarkView topAnchor];
      topAnchor7 = [v91 topAnchor];
      v51 = [topAnchor6 constraintEqualToSystemSpacingBelowAnchor:topAnchor7 multiplier:1.0];
      v94[4] = v51;
      v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v94 count:5];
      completedUpgradeCheckmarkViewConstraints = v6->_completedUpgradeCheckmarkViewConstraints;
      v6->_completedUpgradeCheckmarkViewConstraints = v52;
    }

    [MEMORY[0x1E696ACD8] activateConstraints:v89];
    v54 = [SFAccountIconSharingBadgeImageCoordinator alloc];
    v55 = v6->_iconView;
    [(SFSecurityRecommendationInfoCell *)v6 _iconWidth];
    v57 = v56;
    contentView3 = [(SFSecurityRecommendationInfoCell *)v6 contentView];
    v59 = [(SFAccountIconSharingBadgeImageCoordinator *)v54 initWithIconImageView:v55 iconDiameter:contentView3 parentView:v57];
    badgeImageCoordinator = v6->_badgeImageCoordinator;
    v6->_badgeImageCoordinator = v59;

    v61 = v6;
  }

  return v6;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFSecurityRecommendationInfoCell;
  [(SFSecurityRecommendationInfoCell *)&v3 layoutSubviews];
  [(SFAccountIconSharingBadgeImageCoordinator *)self->_badgeImageCoordinator containerDidLayoutSubviews];
}

- (void)setIcon:(id)icon
{
  monogramLabel = self->_monogramLabel;
  iconCopy = icon;
  [(UILabel *)monogramLabel setHidden:1];
  [(UIView *)self->_monogramBackgroundView setHidden:1];
  [(UIImageView *)self->_iconView setImage:iconCopy];

  [(SFSecurityRecommendationInfoCell *)self setNeedsLayout];

  [(SFSecurityRecommendationInfoCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)showCheckmarkForDetailView
{
  [(UILabel *)self->_monogramLabel setHidden:1];
  [(UIView *)self->_monogramBackgroundView setHidden:1];
  v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark.circle.fill"];
  systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
  v5 = [v3 imageWithTintColor:systemGreenColor renderingMode:1];
  [(UIImageView *)self->_iconView setImage:v5];

  [(SFSecurityRecommendationInfoCell *)self setNeedsLayout];
}

- (void)setShowsUpgradeCompletionCheckmark:(BOOL)checkmark
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ACD8];
  if (checkmark)
  {
    v10[0] = self->_standardTitleTrailingConstraint;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [v4 deactivateConstraints:v5];

    [MEMORY[0x1E696ACD8] activateConstraints:self->_completedUpgradeCheckmarkViewConstraints];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __71__SFSecurityRecommendationInfoCell_setShowsUpgradeCompletionCheckmark___block_invoke;
    v8[3] = &unk_1E848F810;
    v8[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.25];
  }

  else
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_completedUpgradeCheckmarkViewConstraints];
    v6 = MEMORY[0x1E696ACD8];
    standardTitleTrailingConstraint = self->_standardTitleTrailingConstraint;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&standardTitleTrailingConstraint count:1];
    [v6 activateConstraints:v7];

    [(UIImageView *)self->_completedUpgradeCheckmarkView setAlpha:0.0];
  }

  [(SFSecurityRecommendationInfoCell *)self setNeedsLayout];
}

- (void)setShowsHideButton:(BOOL)button
{
  buttonCopy = button;
  v11[1] = *MEMORY[0x1E69E9840];
  if (button)
  {
    p_hideButton = &self->_hideButton;
    if (!self->_hideButton)
    {
      [(SFSecurityRecommendationInfoCell *)self _createHideButton];
    }

    v6 = MEMORY[0x1E696ACD8];
    standardTitleTrailingConstraint = self->_standardTitleTrailingConstraint;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&standardTitleTrailingConstraint count:1];
    [v6 deactivateConstraints:v7];

    [MEMORY[0x1E696ACD8] activateConstraints:self->_hideButtonConstraints];
  }

  else
  {
    v8 = MEMORY[0x1E696ACD8];
    v11[0] = self->_standardTitleTrailingConstraint;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
    [v8 activateConstraints:v9];

    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_hideButtonConstraints];
    p_hideButton = &self->_hideButton;
  }

  [(UIButton *)*p_hideButton setHidden:!buttonCopy];
}

- (void)_createHideButton
{
  v32[5] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DC738]);
  hideButton = self->_hideButton;
  self->_hideButton = v3;

  [(UIButton *)self->_hideButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_hideButton;
  v6 = MEMORY[0x1E69DCAB8];
  v7 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v8 = [v6 systemImageNamed:@"xmark" withConfiguration:v7];
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v10 = [v8 imageWithTintColor:tertiaryLabelColor renderingMode:1];
  [(UIButton *)v5 setImage:v10 forState:0];

  if (UIAccessibilityButtonShapesEnabled())
  {
    v11 = self->_hideButton;
    systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
    [(UIButton *)v11 setBackgroundColor:systemGray5Color];

    [(UIButton *)self->_hideButton _setContinuousCornerRadius:5.0];
  }

  [(UIButton *)self->_hideButton addTarget:self action:sel__hideButtonPressed_ forControlEvents:0x2000];
  contentView = [(SFSecurityRecommendationInfoCell *)self contentView];
  [contentView addSubview:self->_hideButton];
  widthAnchor = [(UIButton *)self->_hideButton widthAnchor];
  [(SFSecurityRecommendationInfoCell *)self _hideButtonViewSize];
  v30 = [widthAnchor constraintGreaterThanOrEqualToConstant:?];
  v32[0] = v30;
  heightAnchor = [(UIButton *)self->_hideButton heightAnchor];
  [(SFSecurityRecommendationInfoCell *)self _hideButtonViewSize];
  v28 = [heightAnchor constraintEqualToConstant:v14];
  v32[1] = v28;
  trailingAnchor = [(UIButton *)self->_hideButton trailingAnchor];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:5.0];
  v32[2] = v15;
  leadingAnchor = [(UIButton *)self->_hideButton leadingAnchor];
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  v18 = [leadingAnchor constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:trailingAnchor3 multiplier:1.0];
  v32[3] = v18;
  topAnchor = [(UIButton *)self->_hideButton topAnchor];
  layoutMarginsGuide2 = [contentView layoutMarginsGuide];
  topAnchor2 = [layoutMarginsGuide2 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v32[4] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:5];
  hideButtonConstraints = self->_hideButtonConstraints;
  self->_hideButtonConstraints = v23;
}

- (void)_hideButtonPressed:(id)pressed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained securityRecommendationInfoCellHideButtonPressed:self];
  }
}

- (void)setTitle:(id)title
{
  [(UILabel *)self->_titleLabel setText:title];

  [(SFSecurityRecommendationInfoCell *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  [(UILabel *)self->_subtitleLabel setText:subtitle];

  [(SFSecurityRecommendationInfoCell *)self setNeedsLayout];
}

- (void)setSavedAccount:(id)account
{
  objc_storeStrong(&self->_savedAccount, account);

  [(SFSecurityRecommendationInfoCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)showPlaceholderImageForDomain:(id)domain backgroundColor:(id)color
{
  domainCopy = domain;
  colorCopy = color;
  if (!self->_monogramLabel)
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    [(SFSecurityRecommendationInfoCell *)self _iconWidth];
    v10 = v9;
    v11 = objc_alloc_init(MEMORY[0x1E69DD250]);
    monogramBackgroundView = self->_monogramBackgroundView;
    self->_monogramBackgroundView = v11;

    [(UIView *)self->_monogramBackgroundView setFrame:v7, v8, v10, v10];
    layer = [(UIView *)self->_monogramBackgroundView layer];
    [layer setMasksToBounds:1];

    [(UIView *)self->_monogramBackgroundView _setContinuousCornerRadius:12.0];
    [(UIView *)self->_monogramBackgroundView _setAllowsHighContrastForBackgroundColor:1];
    [(UIImageView *)self->_iconView addSubview:self->_monogramBackgroundView];
    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    monogramLabel = self->_monogramLabel;
    self->_monogramLabel = v14;

    [(UILabel *)self->_monogramLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_monogramLabel setTextAlignment:1];
    [(UILabel *)self->_monogramLabel setNumberOfLines:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_monogramLabel setTextColor:whiteColor];

    [(UILabel *)self->_monogramLabel setFrame:v7, v8, v10, v10];
    v17 = [MEMORY[0x1E69DB878] _sf_roundedSystemFontOfSize:34 weight:*MEMORY[0x1E69DB978]];
    [(UILabel *)self->_monogramLabel setFont:v17];

    [(UIImageView *)self->_iconView addSubview:self->_monogramLabel];
  }

  if (blankImage_onceToken_0 != -1)
  {
    [SFSecurityRecommendationInfoCell showPlaceholderImageForDomain:backgroundColor:];
  }

  [(UIImageView *)self->_iconView setImage:blankImage_image_0];
  [(UIView *)self->_monogramBackgroundView setBackgroundColor:colorCopy];
  [(UIView *)self->_monogramBackgroundView setHidden:0];
  [(UILabel *)self->_monogramLabel setHidden:0];
  v18 = MEMORY[0x1E69C9888];
  effectiveTitle = [(WBSSavedAccount *)self->_savedAccount effectiveTitle];
  safari_bestURLForUserTypedString = [domainCopy safari_bestURLForUserTypedString];
  v21 = [v18 monogramStringForTitle:effectiveTitle url:safari_bestURLForUserTypedString];
  [(UILabel *)self->_monogramLabel setText:v21];

  [(SFSecurityRecommendationInfoCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
  [(SFSecurityRecommendationInfoCell *)self setNeedsLayout];
}

- (double)_iconWidth
{
  result = 48.0;
  if (self->_configuration != 1)
  {
    return 28.0;
  }

  return result;
}

- (void)_updateSharedAccountBadgeImageViewIfNecessary
{
  if (self->_configuration == 1)
  {
    v3 = [(WBSSavedAccount *)self->_savedAccount isSavedInPersonalKeychain]^ 1;
  }

  else
  {
    v3 = 0;
  }

  badgeImageCoordinator = self->_badgeImageCoordinator;

  [(SFAccountIconSharingBadgeImageCoordinator *)badgeImageCoordinator setShowsBadge:v3];
}

- (CGSize)_hideButtonViewSize
{
  v2 = UIAccessibilityButtonShapesEnabled();
  v3 = 20.0;
  if (v2)
  {
    v3 = 30.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (SFSecurityRecommendationInfoCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end