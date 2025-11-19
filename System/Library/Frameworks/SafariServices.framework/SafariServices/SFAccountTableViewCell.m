@interface SFAccountTableViewCell
- (BOOL)safari_hasOneTimeCodeGenerator;
- (BOOL)safari_hasWebsite;
- (SFAccountTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (SFAccountTableViewCellDelegate)delegate;
- (void)_layoutReusedPasswordWarningImageViewIfNecessary;
- (void)_updateAccessibilityIdentifiers;
- (void)_updateSharedAccountBadgeImageViewIfNecessary;
- (void)layoutSubviews;
- (void)safari_copyOneTimeCode;
- (void)safari_copyPassword;
- (void)safari_copyUserName;
- (void)safari_copyWebsite;
- (void)setIcon:(id)a3;
- (void)setSavedAccount:(id)a3 searchPattern:(id)a4 emphasizeUserName:(BOOL)a5;
- (void)setSavedAccount:(id)a3 searchPattern:(id)a4 emphasizeUserName:(BOOL)a5 isReusedPassword:(BOOL)a6;
- (void)setSavedAccount:(id)a3 searchPattern:(id)a4 emphasizeUserName:(BOOL)a5 shouldDifferentiateWithGroupName:(BOOL)a6;
- (void)setSavedAccount:(id)a3 withWarnings:(id)a4 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a5;
- (void)showPlaceholderImageForDomain:(id)a3 backgroundColor:(id)a4;
@end

@implementation SFAccountTableViewCell

- (SFAccountTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = SFAccountTableViewCell;
  v4 = [(SFAccountTableViewCell *)&v14 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [SFAccountIconSharingBadgeImageCoordinator alloc];
    v6 = [(SFAccountTableViewCell *)v4 imageView];
    [MEMORY[0x1E695A9A8] tableViewIconSize];
    v8 = v7;
    v9 = [(SFAccountTableViewCell *)v4 contentView];
    v10 = [(SFAccountIconSharingBadgeImageCoordinator *)v5 initWithIconImageView:v6 iconDiameter:v9 parentView:v8];
    badgeImageCoordinator = v4->_badgeImageCoordinator;
    v4->_badgeImageCoordinator = v10;

    v12 = v4;
  }

  return v4;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFAccountTableViewCell;
  [(SFAccountTableViewCell *)&v3 layoutSubviews];
  [(SFAccountIconSharingBadgeImageCoordinator *)self->_badgeImageCoordinator containerDidLayoutSubviews];
}

- (void)setIcon:(id)a3
{
  monogramLabel = self->_monogramLabel;
  v5 = a3;
  [(UILabel *)monogramLabel setHidden:1];
  [(UIView *)self->_monogramBackgroundView setHidden:1];
  v7 = [(SFAccountTableViewCell *)self imageView];
  v6 = [v7 layer];
  [v6 setMasksToBounds:1];

  [v7 _setContinuousCornerRadius:7.0];
  [v7 setImage:v5];

  [(SFAccountTableViewCell *)self _updateAccessibilityIdentifiers];
  [(SFAccountTableViewCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)showPlaceholderImageForDomain:(id)a3 backgroundColor:(id)a4
{
  v5 = a4;
  v25 = [(SFAccountTableViewCell *)self imageView];
  [v25 _setContinuousCornerRadius:0.0];
  v6 = [v25 layer];
  [v6 setMasksToBounds:0];

  if (!self->_monogramLabel)
  {
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    [MEMORY[0x1E695A9A8] tableViewIconSize];
    v10 = v9;
    v12 = v11;
    v13 = objc_alloc_init(MEMORY[0x1E69DD250]);
    monogramBackgroundView = self->_monogramBackgroundView;
    self->_monogramBackgroundView = v13;

    [(UIView *)self->_monogramBackgroundView setFrame:v7, v8, v10, v12];
    v15 = [(UIView *)self->_monogramBackgroundView layer];
    [v15 setMasksToBounds:1];

    [(UIView *)self->_monogramBackgroundView _setContinuousCornerRadius:7.0];
    [(UIView *)self->_monogramBackgroundView _setAllowsHighContrastForBackgroundColor:1];
    [v25 addSubview:self->_monogramBackgroundView];
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    monogramLabel = self->_monogramLabel;
    self->_monogramLabel = v16;

    [(UILabel *)self->_monogramLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_monogramLabel setTextAlignment:1];
    [(UILabel *)self->_monogramLabel setNumberOfLines:0];
    v18 = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_monogramLabel setTextColor:v18];

    [(UILabel *)self->_monogramLabel setFrame:v7, v8, v10, v12];
    v19 = [MEMORY[0x1E69DB878] _sf_roundedSystemFontOfSize:23 weight:*MEMORY[0x1E69DB978]];
    [(UILabel *)self->_monogramLabel setFont:v19];

    [(UILabel *)self->_monogramLabel setIsAccessibilityElement:0];
    [v25 addSubview:self->_monogramLabel];
  }

  if (blankImage_onceToken != -1)
  {
    [SFAccountTableViewCell showPlaceholderImageForDomain:backgroundColor:];
  }

  [v25 setImage:blankImage_image];
  [(UIView *)self->_monogramBackgroundView setBackgroundColor:v5];

  [(UIView *)self->_monogramBackgroundView setHidden:0];
  [(UILabel *)self->_monogramLabel setHidden:0];
  v20 = MEMORY[0x1E69C9888];
  v21 = [(WBSSavedAccount *)self->_savedAccount customTitle];
  v22 = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  v23 = [v22 safari_bestURLForUserTypedString];
  v24 = [v20 monogramStringForTitle:v21 url:v23 shouldRemoveGrammaticalArticles:0];
  [(UILabel *)self->_monogramLabel setText:v24];

  [(SFAccountTableViewCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)setSavedAccount:(id)a3 searchPattern:(id)a4 emphasizeUserName:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  savedAccount = self->_savedAccount;
  self->_savedAccount = v8;
  v11 = v8;

  searchPattern = self->_searchPattern;
  self->_searchPattern = v9;
  v13 = v9;

  v14 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v15 = [(SFAccountTableViewCell *)self detailTextLabel];
  [v15 setTextColor:v14];

  v21 = 0;
  v22 = 0;
  [(WBSSavedAccount *)v11 safari_getTitle:&v22 detail:&v21 forTableViewCell:self withSearchPattern:v13 emphasizeUserName:v5];
  v16 = v22;
  v17 = v21;
  v18 = [(SFAccountTableViewCell *)self textLabel];
  [v18 setAttributedText:v16];

  v19 = [(SFAccountTableViewCell *)self detailTextLabel];
  [v19 setAttributedText:v17];

  v20 = [(SFAccountTableViewCell *)self detailTextLabel];
  [v20 setLineBreakMode:4];

  [(SFAccountTableViewCell *)self _updateAccessibilityIdentifiers];
  [(SFAccountTableViewCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)setSavedAccount:(id)a3 withWarnings:(id)a4 savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)a5
{
  v5 = a5;
  v22 = a3;
  objc_storeStrong(&self->_savedAccount, a3);
  v9 = a4;
  v10 = +[_SFAccountManagerAppearanceValues titleFontForNarrowCell];
  v11 = [(SFAccountTableViewCell *)self textLabel];
  [v11 setFont:v10];

  if (v5)
  {
    v12 = [v22 effectiveTitle];
    v13 = [(SFAccountTableViewCell *)self textLabel];
    [v13 setText:v12];
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v12 = [v22 effectiveTitle];
    v13 = [v22 user];
    v15 = [v14 stringWithFormat:@"%@ — %@", v12, v13];
    v16 = [(SFAccountTableViewCell *)self textLabel];
    [v16 setText:v15];
  }

  v17 = [_SFAccountManagerAppearanceValues subtitleFontForNarrowCellWithText:v9];
  v18 = [(SFAccountTableViewCell *)self detailTextLabel];
  [v18 setFont:v17];

  v19 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  v20 = [(SFAccountTableViewCell *)self detailTextLabel];
  [v20 setTextColor:v19];

  v21 = [(SFAccountTableViewCell *)self detailTextLabel];
  [v21 setText:v9];

  [(SFAccountTableViewCell *)self _updateAccessibilityIdentifiers];
}

- (void)setSavedAccount:(id)a3 searchPattern:(id)a4 emphasizeUserName:(BOOL)a5 shouldDifferentiateWithGroupName:(BOOL)a6
{
  v6 = a6;
  v14 = a3;
  [SFAccountTableViewCell setSavedAccount:"setSavedAccount:searchPattern:emphasizeUserName:" searchPattern:? emphasizeUserName:?];
  if (v6)
  {
    v8 = [v14 sharedGroupName];

    if (v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = [v14 user];
      v11 = [v14 sharedGroupName];
      v12 = [v9 stringWithFormat:@"%@ — %@", v10, v11];
      v13 = [(SFAccountTableViewCell *)self detailTextLabel];
      [v13 setText:v12];
    }
  }
}

- (void)setSavedAccount:(id)a3 searchPattern:(id)a4 emphasizeUserName:(BOOL)a5 isReusedPassword:(BOOL)a6
{
  v6 = a6;
  [(SFAccountTableViewCell *)self setSavedAccount:a3 searchPattern:a4 emphasizeUserName:a5];
  if (v6)
  {
    [(SFAccountTableViewCell *)self _layoutReusedPasswordWarningImageViewIfNecessary];
  }

  reusedPasswordWarningImageView = self->_reusedPasswordWarningImageView;

  [(UIImageView *)reusedPasswordWarningImageView setHidden:!v6];
}

- (void)_layoutReusedPasswordWarningImageViewIfNecessary
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (!self->_reusedPasswordWarningImageView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v5 = [v3 initWithImage:v4];

    v6 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(UIImageView *)v5 setTintColor:v6];

    [(UIImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    reusedPasswordWarningImageView = self->_reusedPasswordWarningImageView;
    self->_reusedPasswordWarningImageView = v5;
    v19 = v5;

    v8 = [(SFAccountTableViewCell *)self contentView];
    [v8 addSubview:self->_reusedPasswordWarningImageView];

    v9 = MEMORY[0x1E696ACD8];
    v10 = [(UIImageView *)self->_reusedPasswordWarningImageView centerYAnchor];
    v11 = [(SFAccountTableViewCell *)self contentView];
    v12 = [v11 centerYAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v20[0] = v13;
    v14 = [(UIImageView *)self->_reusedPasswordWarningImageView trailingAnchor];
    v15 = [(SFAccountTableViewCell *)self contentView];
    v16 = [v15 trailingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:-10.0];
    v20[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    [v9 activateConstraints:v18];
  }
}

- (void)safari_copyUserName
{
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [(WBSSavedAccount *)self->_savedAccount user];
  [v4 safari_setSensitiveString:v3];
}

- (void)safari_copyPassword
{
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [(WBSSavedAccount *)self->_savedAccount password];
  [v4 safari_setSensitiveString:v3];
}

- (BOOL)safari_hasOneTimeCodeGenerator
{
  v2 = [(WBSSavedAccount *)self->_savedAccount totpGenerators];
  v3 = [v2 firstObject];
  v4 = v3 != 0;

  return v4;
}

- (void)safari_copyOneTimeCode
{
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [(WBSSavedAccount *)self->_savedAccount currentOneTimeCode];
  [v4 safari_setSensitiveString:v3];
}

- (void)_updateAccessibilityIdentifiers
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained updateAccessibilityIdentifierForAccountCell:self];
  }
}

- (BOOL)safari_hasWebsite
{
  v2 = [(WBSSavedAccount *)self->_savedAccount userVisibleDomain];
  v3 = [v2 length] != 0;

  return v3;
}

- (void)safari_copyWebsite
{
  v4 = [MEMORY[0x1E69DCD50] generalPasteboard];
  v3 = [(WBSSavedAccount *)self->_savedAccount userVisibleDomain];
  [v4 setString:v3];
}

- (void)_updateSharedAccountBadgeImageViewIfNecessary
{
  badgeImageCoordinator = self->_badgeImageCoordinator;
  v3 = [(WBSSavedAccount *)self->_savedAccount isSavedInPersonalKeychain]^ 1;

  [(SFAccountIconSharingBadgeImageCoordinator *)badgeImageCoordinator setShowsBadge:v3];
}

- (SFAccountTableViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end