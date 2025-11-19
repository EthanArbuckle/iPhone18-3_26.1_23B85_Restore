@interface SafariCreditCardTableCell
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SafariCreditCardTableCell

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = SafariCreditCardTableCell;
  [(SafariCreditCardTableCell *)&v6 layoutSubviews];
  v3 = [(SafariCreditCardTableCell *)self titleLabel];
  [v3 frame];
  [v3 setFrame:?];
  v4 = [(SafariCreditCardTableCell *)self valueLabel];
  [v4 frame];
  [v4 setFrame:?];
  v5 = [(SafariCreditCardTableCell *)self iconImageView];
  [v5 frame];
  [v5 setFrame:?];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = SafariCreditCardTableCell;
  v4 = a3;
  [(SafariCreditCardTableCell *)&v12 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 userInfo];

  v6 = [v5 balance];
  v7 = [v6 formattedStringValue];

  if ([v7 length])
  {
    v8 = SafariSettingsLocalizedString(@"Balance: %@", @"AppleCashAutoFill");
    [NSString localizedStringWithFormat:v8, v7];
  }

  else
  {
    v8 = [v5 cardNumber];
    WBSDisplayTextForCreditCardNumber();
  }
  v9 = ;
  v10 = [(SafariCreditCardTableCell *)self valueLabel];
  [v10 setText:v9];

  v11 = [v5 virtualCard];

  if (v11)
  {
    [(SafariCreditCardTableCell *)self setUserInteractionEnabled:0];
  }
}

@end