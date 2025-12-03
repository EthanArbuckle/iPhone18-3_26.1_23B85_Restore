@interface SFAccountHeaderViewCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldReturn:(id)return;
- (SFAccountHeaderViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SFAccountHeaderViewCellDelegate)delegate;
- (void)_hideMonogramIcon;
- (void)_showMonogramIconWithBackgroundColor:(id)color;
- (void)_textFieldChanged:(id)changed;
- (void)_updateSharedAccountBadgeImageViewIfNecessary;
- (void)commitCustomTitle;
- (void)layoutSubviews;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setHeaderTitleForHighLevelDomain:(id)domain customTitle:(id)title;
- (void)setIcon:(id)icon;
- (void)setSavedAccount:(id)account;
@end

@implementation SFAccountHeaderViewCell

- (SFAccountHeaderViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v65[2] = *MEMORY[0x1E69E9840];
  v63.receiver = self;
  v63.super_class = SFAccountHeaderViewCell;
  v4 = [(SFAccountHeaderViewCell *)&v63 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(SFAccountHeaderViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = v5->_iconImageView;
    v5->_iconImageView = v7;

    [(UIImageView *)v5->_iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [contentView addSubview:v5->_iconImageView];
    v9 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    titleTextField = v5->_titleTextField;
    v5->_titleTextField = v9;

    [(UITextField *)v5->_titleTextField setDelegate:v5];
    v11 = +[_SFAccountManagerAppearanceValues titleFontForStackViewLabel];
    [(UITextField *)v5->_titleTextField setFont:v11];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UITextField *)v5->_titleTextField setBackgroundColor:clearColor];

    [(UITextField *)v5->_titleTextField addTarget:v5 action:sel__textFieldChanged_ forControlEvents:0x20000];
    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    lastModifiedDateLabel = v5->_lastModifiedDateLabel;
    v5->_lastModifiedDateLabel = v13;

    v15 = +[_SFAccountManagerAppearanceValues subtitleFontForStackViewLabel];
    [(UILabel *)v5->_lastModifiedDateLabel setFont:v15];

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5->_lastModifiedDateLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v5->_lastModifiedDateLabel setAdjustsFontForContentSizeCategory:1];
    [(UILabel *)v5->_lastModifiedDateLabel setNumberOfLines:0];
    v17 = MEMORY[0x1E69DCF90];
    v62 = v5->_titleTextField;
    v18 = [v17 alloc];
    v65[0] = v62;
    v65[1] = v5->_lastModifiedDateLabel;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:2];
    v20 = [v18 initWithArrangedSubviews:v19];
    labelStackView = v5->_labelStackView;
    v5->_labelStackView = v20;

    [(UIStackView *)v5->_labelStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v5->_labelStackView setAxis:1];
    [(UIStackView *)v5->_labelStackView setSpacing:1.0];
    v61 = contentView;
    [contentView addSubview:v5->_labelStackView];
    layoutMarginsGuide = [contentView layoutMarginsGuide];
    v48 = MEMORY[0x1E696ACD8];
    leadingAnchor = [(UIImageView *)v5->_iconImageView leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v58 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v64[0] = v58;
    centerYAnchor = [(UIImageView *)v5->_iconImageView centerYAnchor];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v55 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v64[1] = v55;
    heightAnchor = [(UIImageView *)v5->_iconImageView heightAnchor];
    v53 = [heightAnchor constraintEqualToConstant:56.0];
    v64[2] = v53;
    widthAnchor = [(UIImageView *)v5->_iconImageView widthAnchor];
    v50 = [widthAnchor constraintEqualToConstant:56.0];
    v64[3] = v50;
    bottomAnchor = [layoutMarginsGuide bottomAnchor];
    bottomAnchor2 = [(UIImageView *)v5->_iconImageView bottomAnchor];
    v46 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v64[4] = v46;
    trailingAnchor = [(UIImageView *)v5->_iconImageView trailingAnchor];
    leadingAnchor3 = [(UIStackView *)v5->_labelStackView leadingAnchor];
    v43 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-11.0];
    v64[5] = v43;
    trailingAnchor2 = [(UIStackView *)v5->_labelStackView trailingAnchor];
    v51 = layoutMarginsGuide;
    trailingAnchor3 = [layoutMarginsGuide trailingAnchor];
    v40 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v64[6] = v40;
    centerYAnchor3 = [(UIStackView *)v5->_labelStackView centerYAnchor];
    centerYAnchor4 = [(UIImageView *)v5->_iconImageView centerYAnchor];
    v24 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v64[7] = v24;
    bottomAnchor3 = [layoutMarginsGuide bottomAnchor];
    bottomAnchor4 = [(UIStackView *)v5->_labelStackView bottomAnchor];
    v27 = [bottomAnchor3 constraintGreaterThanOrEqualToAnchor:bottomAnchor4];
    v64[8] = v27;
    heightAnchor2 = [(UITextField *)v5->_titleTextField heightAnchor];
    v29 = +[_SFAccountManagerAppearanceValues titleFontForStackViewLabel];
    [v29 lineHeight];
    v30 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:?];
    v64[9] = v30;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:10];
    [v48 activateConstraints:v31];

    v32 = [SFAccountIconSharingBadgeImageCoordinator alloc];
    v33 = v5->_iconImageView;
    contentView2 = [(SFAccountHeaderViewCell *)v5 contentView];
    v35 = [(SFAccountIconSharingBadgeImageCoordinator *)v32 initWithIconImageView:v33 iconDiameter:contentView2 parentView:56.0];
    badgeImageCoordinator = v5->_badgeImageCoordinator;
    v5->_badgeImageCoordinator = v35;

    v37 = v5;
  }

  return v5;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFAccountHeaderViewCell;
  [(SFAccountHeaderViewCell *)&v3 layoutSubviews];
  [(SFAccountIconSharingBadgeImageCoordinator *)self->_badgeImageCoordinator containerDidLayoutSubviews];
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  [(SFAccountHeaderViewCell *)self _hideMonogramIcon];
  [(UIImageView *)self->_iconImageView _setContinuousCornerRadius:12.0];
  layer = [(UIImageView *)self->_iconImageView layer];
  [layer setMasksToBounds:1];

  [(UIImageView *)self->_iconImageView setImage:iconCopy];

  [(SFAccountHeaderViewCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)setHeaderTitleForHighLevelDomain:(id)domain customTitle:(id)title
{
  v28[1] = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  titleCopy = title;
  v8 = [domainCopy length];
  if (v8)
  {
    v9 = [domainCopy copy];
  }

  else
  {
    v9 = 0;
  }

  objc_storeStrong(&self->_highLevelDomain, v9);
  if (v8)
  {
  }

  v10 = [titleCopy length];
  if (v10)
  {
    v11 = [titleCopy copy];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_customTitle, v11);
  if (v10)
  {
  }

  v12 = _WBSLocalizedString();
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (self->_highLevelDomain)
  {
    highLevelDomain = self->_highLevelDomain;
  }

  else
  {
    highLevelDomain = v12;
  }

  v27 = *MEMORY[0x1E69DB650];
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  v28[0] = tertiaryLabelColor;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v17 = [v13 initWithString:highLevelDomain attributes:v16];
  [(UITextField *)self->_titleTextField setAttributedPlaceholder:v17];

  if ([(NSString *)self->_customTitle length])
  {
    [(UITextField *)self->_titleTextField setText:self->_customTitle];
  }

  image = [(UIImageView *)self->_iconImageView image];

  if (!image)
  {
    safari_stringByTrimmingWhitespace = [(NSString *)self->_highLevelDomain safari_stringByTrimmingWhitespace];
    if ([safari_stringByTrimmingWhitespace length])
    {
    }

    else
    {
      safari_stringByTrimmingWhitespace2 = [(NSString *)self->_customTitle safari_stringByTrimmingWhitespace];
      v21 = [safari_stringByTrimmingWhitespace2 length];

      if (!v21)
      {
        [(UIImageView *)self->_keyIconImageView setHidden:0];
        p_monogramLabel = &self->_monogramLabel;
        v26 = 1;
        goto LABEL_21;
      }
    }

    v22 = MEMORY[0x1E69C9888];
    safari_bestURLForUserTypedString = [domainCopy safari_bestURLForUserTypedString];
    v24 = [v22 monogramStringForTitle:titleCopy url:safari_bestURLForUserTypedString shouldRemoveGrammaticalArticles:0];
    p_monogramLabel = &self->_monogramLabel;
    [(UILabel *)self->_monogramLabel setText:v24];

    [(UIImageView *)self->_keyIconImageView setHidden:1];
    v26 = 0;
LABEL_21:
    [(UILabel *)*p_monogramLabel setHidden:v26];
  }
}

- (void)commitCustomTitle
{
  text = [(UITextField *)self->_titleTextField text];
  obj = [text safari_stringByTrimmingWhitespace];

  if (([obj isEqualToString:self->_highLevelDomain] & 1) == 0)
  {
    objc_storeStrong(&self->_customTitle, obj);
    [(UITextField *)self->_titleTextField setText:self->_customTitle];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  editingCopy = editing;
  v7.receiver = self;
  v7.super_class = SFAccountHeaderViewCell;
  [(SFAccountHeaderViewCell *)&v7 setEditing:editing animated:animated];
  [(UITextField *)self->_titleTextField setUserInteractionEnabled:editingCopy];
  if (![(NSString *)self->_customTitle length]|| self->_savedAccount && [(NSString *)self->_customTitle isEqualToString:self->_highLevelDomain])
  {
    if (editingCopy)
    {
      highLevelDomain = 0;
    }

    else
    {
      highLevelDomain = self->_highLevelDomain;
    }

    [(UITextField *)self->_titleTextField setText:highLevelDomain];
  }
}

- (void)_showMonogramIconWithBackgroundColor:(id)color
{
  v32 = self->_iconImageView;
  colorCopy = color;
  [(UIImageView *)v32 _setContinuousCornerRadius:0.0];
  layer = [(UIImageView *)v32 layer];
  [layer setMasksToBounds:0];

  if (!self->_monogramBackgroundView)
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = objc_alloc_init(MEMORY[0x1E69DD250]);
    monogramBackgroundView = self->_monogramBackgroundView;
    self->_monogramBackgroundView = v9;

    [(UIView *)self->_monogramBackgroundView setFrame:v7, v8, 56.0, 56.0];
    layer2 = [(UIView *)self->_monogramBackgroundView layer];
    [layer2 setMasksToBounds:1];

    [(UIView *)self->_monogramBackgroundView _setContinuousCornerRadius:12.0];
    [(UIView *)self->_monogramBackgroundView _setAllowsHighContrastForBackgroundColor:1];
    [(UIImageView *)v32 addSubview:self->_monogramBackgroundView];
    v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"key.fill"];
    v13 = [v12 imageWithAlignmentRectInsets:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v15 = [v13 imageWithTintColor:whiteColor renderingMode:1];

    v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v15];
    keyIconImageView = self->_keyIconImageView;
    self->_keyIconImageView = v16;

    [(UIImageView *)self->_keyIconImageView setContentMode:4];
    v18 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:30.0];
    [(UIImageView *)self->_keyIconImageView setPreferredSymbolConfiguration:v18];

    [(UIImageView *)v32 bounds];
    [(UIImageView *)self->_keyIconImageView setFrame:?];
    [(UIImageView *)self->_keyIconImageView setAutoresizingMask:18];
    [(UIImageView *)v32 addSubview:self->_keyIconImageView];
    v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    monogramLabel = self->_monogramLabel;
    self->_monogramLabel = v19;

    [(UILabel *)self->_monogramLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_monogramLabel setTextAlignment:1];
    [(UILabel *)self->_monogramLabel setNumberOfLines:0];
    whiteColor2 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_monogramLabel setTextColor:whiteColor2];

    [(UILabel *)self->_monogramLabel setFrame:v7, v8, 56.0, 56.0];
    v22 = [MEMORY[0x1E69DB878] _sf_roundedSystemFontOfSize:42 weight:*MEMORY[0x1E69DB978]];
    [(UILabel *)self->_monogramLabel setFont:v22];

    [(UILabel *)self->_monogramLabel setIsAccessibilityElement:0];
    [(UIImageView *)v32 addSubview:self->_monogramLabel];
  }

  [(UIImageView *)v32 setImage:0];
  [(UIView *)self->_monogramBackgroundView setBackgroundColor:colorCopy];

  [(UIView *)self->_monogramBackgroundView setHidden:0];
  [(UILabel *)self->_monogramLabel setHidden:0];
  safari_stringByTrimmingWhitespace = [(NSString *)self->_highLevelDomain safari_stringByTrimmingWhitespace];
  if ([safari_stringByTrimmingWhitespace length])
  {

LABEL_6:
    v26 = MEMORY[0x1E69C9888];
    customTitle = self->_customTitle;
    safari_bestURLForUserTypedString = [(NSString *)self->_highLevelDomain safari_bestURLForUserTypedString];
    v29 = [v26 monogramStringForTitle:customTitle url:safari_bestURLForUserTypedString shouldRemoveGrammaticalArticles:0];
    [(UILabel *)self->_monogramLabel setText:v29];

    v30 = 0;
    v31 = 1;
    goto LABEL_7;
  }

  safari_stringByTrimmingWhitespace2 = [(NSString *)self->_customTitle safari_stringByTrimmingWhitespace];
  v25 = [safari_stringByTrimmingWhitespace2 length];

  if (v25)
  {
    goto LABEL_6;
  }

  v31 = 0;
  v30 = 1;
LABEL_7:
  [(UIImageView *)self->_keyIconImageView setHidden:v31];
  [(UILabel *)self->_monogramLabel setHidden:v30];
  [(SFAccountHeaderViewCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)_hideMonogramIcon
{
  [(UIView *)self->_monogramBackgroundView setHidden:1];
  [(UIImageView *)self->_keyIconImageView setHidden:1];
  monogramLabel = self->_monogramLabel;

  [(UILabel *)monogramLabel setHidden:1];
}

- (void)setSavedAccount:(id)account
{
  objc_storeStrong(&self->_savedAccount, account);

  [(SFAccountHeaderViewCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)_updateSharedAccountBadgeImageViewIfNecessary
{
  badgeImageCoordinator = self->_badgeImageCoordinator;
  savedAccount = self->_savedAccount;
  if (savedAccount)
  {
    v4 = [(WBSSavedAccount *)savedAccount isSavedInPersonalKeychain]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [(SFAccountIconSharingBadgeImageCoordinator *)badgeImageCoordinator setShowsBadge:v4];
}

- (void)_textFieldChanged:(id)changed
{
  [(SFAccountHeaderViewCell *)self invalidateIntrinsicContentSize];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained accountDetailHeaderViewCell:self titleTextFieldDidChange:self->_titleTextField];
  }
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  stringCopy = string;
  text = [field text];
  v10 = [text length];
  v11 = [stringCopy length];

  v12 = *MEMORY[0x1E69C8D40];
  if (v12 <= [(NSString *)self->_customTitle length])
  {
    v12 = [(NSString *)self->_customTitle length];
  }

  return v10 - length + v11 <= v12;
}

- (BOOL)textFieldShouldReturn:(id)return
{
  if (self->_titleTextField == return)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (objc_opt_respondsToSelector())
    {
      [WeakRetained returnKeyActivatedInAccountDetailHeaderViewCell:self];
    }
  }

  return 0;
}

- (SFAccountHeaderViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end