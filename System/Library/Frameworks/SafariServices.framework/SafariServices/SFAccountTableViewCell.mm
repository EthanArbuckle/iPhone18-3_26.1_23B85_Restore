@interface SFAccountTableViewCell
- (BOOL)safari_hasOneTimeCodeGenerator;
- (BOOL)safari_hasWebsite;
- (SFAccountTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (SFAccountTableViewCellDelegate)delegate;
- (void)_layoutReusedPasswordWarningImageViewIfNecessary;
- (void)_updateAccessibilityIdentifiers;
- (void)_updateSharedAccountBadgeImageViewIfNecessary;
- (void)layoutSubviews;
- (void)safari_copyOneTimeCode;
- (void)safari_copyPassword;
- (void)safari_copyUserName;
- (void)safari_copyWebsite;
- (void)setIcon:(id)icon;
- (void)setSavedAccount:(id)account searchPattern:(id)pattern emphasizeUserName:(BOOL)name;
- (void)setSavedAccount:(id)account searchPattern:(id)pattern emphasizeUserName:(BOOL)name isReusedPassword:(BOOL)password;
- (void)setSavedAccount:(id)account searchPattern:(id)pattern emphasizeUserName:(BOOL)name shouldDifferentiateWithGroupName:(BOOL)groupName;
- (void)setSavedAccount:(id)account withWarnings:(id)warnings savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)domain;
- (void)showPlaceholderImageForDomain:(id)domain backgroundColor:(id)color;
@end

@implementation SFAccountTableViewCell

- (SFAccountTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = SFAccountTableViewCell;
  v4 = [(SFAccountTableViewCell *)&v14 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [SFAccountIconSharingBadgeImageCoordinator alloc];
    imageView = [(SFAccountTableViewCell *)v4 imageView];
    [MEMORY[0x1E695A9A8] tableViewIconSize];
    v8 = v7;
    contentView = [(SFAccountTableViewCell *)v4 contentView];
    v10 = [(SFAccountIconSharingBadgeImageCoordinator *)v5 initWithIconImageView:imageView iconDiameter:contentView parentView:v8];
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

- (void)setIcon:(id)icon
{
  monogramLabel = self->_monogramLabel;
  iconCopy = icon;
  [(UILabel *)monogramLabel setHidden:1];
  [(UIView *)self->_monogramBackgroundView setHidden:1];
  imageView = [(SFAccountTableViewCell *)self imageView];
  layer = [imageView layer];
  [layer setMasksToBounds:1];

  [imageView _setContinuousCornerRadius:7.0];
  [imageView setImage:iconCopy];

  [(SFAccountTableViewCell *)self _updateAccessibilityIdentifiers];
  [(SFAccountTableViewCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)showPlaceholderImageForDomain:(id)domain backgroundColor:(id)color
{
  colorCopy = color;
  imageView = [(SFAccountTableViewCell *)self imageView];
  [imageView _setContinuousCornerRadius:0.0];
  layer = [imageView layer];
  [layer setMasksToBounds:0];

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
    layer2 = [(UIView *)self->_monogramBackgroundView layer];
    [layer2 setMasksToBounds:1];

    [(UIView *)self->_monogramBackgroundView _setContinuousCornerRadius:7.0];
    [(UIView *)self->_monogramBackgroundView _setAllowsHighContrastForBackgroundColor:1];
    [imageView addSubview:self->_monogramBackgroundView];
    v16 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    monogramLabel = self->_monogramLabel;
    self->_monogramLabel = v16;

    [(UILabel *)self->_monogramLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_monogramLabel setTextAlignment:1];
    [(UILabel *)self->_monogramLabel setNumberOfLines:0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    [(UILabel *)self->_monogramLabel setTextColor:whiteColor];

    [(UILabel *)self->_monogramLabel setFrame:v7, v8, v10, v12];
    v19 = [MEMORY[0x1E69DB878] _sf_roundedSystemFontOfSize:23 weight:*MEMORY[0x1E69DB978]];
    [(UILabel *)self->_monogramLabel setFont:v19];

    [(UILabel *)self->_monogramLabel setIsAccessibilityElement:0];
    [imageView addSubview:self->_monogramLabel];
  }

  if (blankImage_onceToken != -1)
  {
    [SFAccountTableViewCell showPlaceholderImageForDomain:backgroundColor:];
  }

  [imageView setImage:blankImage_image];
  [(UIView *)self->_monogramBackgroundView setBackgroundColor:colorCopy];

  [(UIView *)self->_monogramBackgroundView setHidden:0];
  [(UILabel *)self->_monogramLabel setHidden:0];
  v20 = MEMORY[0x1E69C9888];
  customTitle = [(WBSSavedAccount *)self->_savedAccount customTitle];
  highLevelDomain = [(WBSSavedAccount *)self->_savedAccount highLevelDomain];
  safari_bestURLForUserTypedString = [highLevelDomain safari_bestURLForUserTypedString];
  v24 = [v20 monogramStringForTitle:customTitle url:safari_bestURLForUserTypedString shouldRemoveGrammaticalArticles:0];
  [(UILabel *)self->_monogramLabel setText:v24];

  [(SFAccountTableViewCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)setSavedAccount:(id)account searchPattern:(id)pattern emphasizeUserName:(BOOL)name
{
  nameCopy = name;
  accountCopy = account;
  patternCopy = pattern;
  savedAccount = self->_savedAccount;
  self->_savedAccount = accountCopy;
  v11 = accountCopy;

  searchPattern = self->_searchPattern;
  self->_searchPattern = patternCopy;
  v13 = patternCopy;

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  detailTextLabel = [(SFAccountTableViewCell *)self detailTextLabel];
  [detailTextLabel setTextColor:secondaryLabelColor];

  v21 = 0;
  v22 = 0;
  [(WBSSavedAccount *)v11 safari_getTitle:&v22 detail:&v21 forTableViewCell:self withSearchPattern:v13 emphasizeUserName:nameCopy];
  v16 = v22;
  v17 = v21;
  textLabel = [(SFAccountTableViewCell *)self textLabel];
  [textLabel setAttributedText:v16];

  detailTextLabel2 = [(SFAccountTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setAttributedText:v17];

  detailTextLabel3 = [(SFAccountTableViewCell *)self detailTextLabel];
  [detailTextLabel3 setLineBreakMode:4];

  [(SFAccountTableViewCell *)self _updateAccessibilityIdentifiers];
  [(SFAccountTableViewCell *)self _updateSharedAccountBadgeImageViewIfNecessary];
}

- (void)setSavedAccount:(id)account withWarnings:(id)warnings savedAccountIsOnlySavedAccountForHighLevelDomain:(BOOL)domain
{
  domainCopy = domain;
  accountCopy = account;
  objc_storeStrong(&self->_savedAccount, account);
  warningsCopy = warnings;
  v10 = +[_SFAccountManagerAppearanceValues titleFontForNarrowCell];
  textLabel = [(SFAccountTableViewCell *)self textLabel];
  [textLabel setFont:v10];

  if (domainCopy)
  {
    effectiveTitle = [accountCopy effectiveTitle];
    textLabel2 = [(SFAccountTableViewCell *)self textLabel];
    [textLabel2 setText:effectiveTitle];
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    effectiveTitle = [accountCopy effectiveTitle];
    textLabel2 = [accountCopy user];
    v15 = [v14 stringWithFormat:@"%@ — %@", effectiveTitle, textLabel2];
    textLabel3 = [(SFAccountTableViewCell *)self textLabel];
    [textLabel3 setText:v15];
  }

  v17 = [_SFAccountManagerAppearanceValues subtitleFontForNarrowCellWithText:warningsCopy];
  detailTextLabel = [(SFAccountTableViewCell *)self detailTextLabel];
  [detailTextLabel setFont:v17];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  detailTextLabel2 = [(SFAccountTableViewCell *)self detailTextLabel];
  [detailTextLabel2 setTextColor:secondaryLabelColor];

  detailTextLabel3 = [(SFAccountTableViewCell *)self detailTextLabel];
  [detailTextLabel3 setText:warningsCopy];

  [(SFAccountTableViewCell *)self _updateAccessibilityIdentifiers];
}

- (void)setSavedAccount:(id)account searchPattern:(id)pattern emphasizeUserName:(BOOL)name shouldDifferentiateWithGroupName:(BOOL)groupName
{
  groupNameCopy = groupName;
  accountCopy = account;
  [SFAccountTableViewCell setSavedAccount:"setSavedAccount:searchPattern:emphasizeUserName:" searchPattern:? emphasizeUserName:?];
  if (groupNameCopy)
  {
    sharedGroupName = [accountCopy sharedGroupName];

    if (sharedGroupName)
    {
      v9 = MEMORY[0x1E696AEC0];
      user = [accountCopy user];
      sharedGroupName2 = [accountCopy sharedGroupName];
      v12 = [v9 stringWithFormat:@"%@ — %@", user, sharedGroupName2];
      detailTextLabel = [(SFAccountTableViewCell *)self detailTextLabel];
      [detailTextLabel setText:v12];
    }
  }
}

- (void)setSavedAccount:(id)account searchPattern:(id)pattern emphasizeUserName:(BOOL)name isReusedPassword:(BOOL)password
{
  passwordCopy = password;
  [(SFAccountTableViewCell *)self setSavedAccount:account searchPattern:pattern emphasizeUserName:name];
  if (passwordCopy)
  {
    [(SFAccountTableViewCell *)self _layoutReusedPasswordWarningImageViewIfNecessary];
  }

  reusedPasswordWarningImageView = self->_reusedPasswordWarningImageView;

  [(UIImageView *)reusedPasswordWarningImageView setHidden:!passwordCopy];
}

- (void)_layoutReusedPasswordWarningImageViewIfNecessary
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (!self->_reusedPasswordWarningImageView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"exclamationmark.triangle.fill"];
    v5 = [v3 initWithImage:v4];

    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(UIImageView *)v5 setTintColor:systemYellowColor];

    [(UIImageView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    reusedPasswordWarningImageView = self->_reusedPasswordWarningImageView;
    self->_reusedPasswordWarningImageView = v5;
    v19 = v5;

    contentView = [(SFAccountTableViewCell *)self contentView];
    [contentView addSubview:self->_reusedPasswordWarningImageView];

    v9 = MEMORY[0x1E696ACD8];
    centerYAnchor = [(UIImageView *)self->_reusedPasswordWarningImageView centerYAnchor];
    contentView2 = [(SFAccountTableViewCell *)self contentView];
    centerYAnchor2 = [contentView2 centerYAnchor];
    v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v20[0] = v13;
    trailingAnchor = [(UIImageView *)self->_reusedPasswordWarningImageView trailingAnchor];
    contentView3 = [(SFAccountTableViewCell *)self contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    v20[1] = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    [v9 activateConstraints:v18];
  }
}

- (void)safari_copyUserName
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  user = [(WBSSavedAccount *)self->_savedAccount user];
  [generalPasteboard safari_setSensitiveString:user];
}

- (void)safari_copyPassword
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  password = [(WBSSavedAccount *)self->_savedAccount password];
  [generalPasteboard safari_setSensitiveString:password];
}

- (BOOL)safari_hasOneTimeCodeGenerator
{
  totpGenerators = [(WBSSavedAccount *)self->_savedAccount totpGenerators];
  firstObject = [totpGenerators firstObject];
  v4 = firstObject != 0;

  return v4;
}

- (void)safari_copyOneTimeCode
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  currentOneTimeCode = [(WBSSavedAccount *)self->_savedAccount currentOneTimeCode];
  [generalPasteboard safari_setSensitiveString:currentOneTimeCode];
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
  userVisibleDomain = [(WBSSavedAccount *)self->_savedAccount userVisibleDomain];
  v3 = [userVisibleDomain length] != 0;

  return v3;
}

- (void)safari_copyWebsite
{
  generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
  userVisibleDomain = [(WBSSavedAccount *)self->_savedAccount userVisibleDomain];
  [generalPasteboard setString:userVisibleDomain];
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