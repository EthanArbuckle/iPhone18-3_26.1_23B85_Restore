@interface SafariCreditCardTableCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SafariCreditCardTableCell

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SafariCreditCardTableCell;
  [(SafariCreditCardTableCell *)&v6 layoutSubviews];
  titleLabel = [(SafariCreditCardTableCell *)self titleLabel];
  [titleLabel frame];
  [titleLabel setFrame:?];
  valueLabel = [(SafariCreditCardTableCell *)self valueLabel];
  [valueLabel frame];
  [valueLabel setFrame:?];
  iconImageView = [(SafariCreditCardTableCell *)self iconImageView];
  [iconImageView frame];
  [iconImageView setFrame:?];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = SafariCreditCardTableCell;
  specifierCopy = specifier;
  [(SafariCreditCardTableCell *)&v12 refreshCellContentsWithSpecifier:specifierCopy];
  userInfo = [specifierCopy userInfo];

  balance = [userInfo balance];
  formattedStringValue = [balance formattedStringValue];

  if ([formattedStringValue length])
  {
    cardNumber = SafariSettingsLocalizedString(@"Balance: %@", @"AppleCashAutoFill");
    [NSString localizedStringWithFormat:cardNumber, formattedStringValue];
  }

  else
  {
    cardNumber = [userInfo cardNumber];
    WBSDisplayTextForCreditCardNumber();
  }
  v9 = ;
  valueLabel = [(SafariCreditCardTableCell *)self valueLabel];
  [valueLabel setText:v9];

  virtualCard = [userInfo virtualCard];

  if (virtualCard)
  {
    [(SafariCreditCardTableCell *)self setUserInteractionEnabled:0];
  }
}

@end