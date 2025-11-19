@interface CNSharingProfileOnboardingAddressingGrammarCell
- (CNSharingProfileOnboardingAddressingGrammarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAddressingGrammarLabel:(id)a3;
@end

@implementation CNSharingProfileOnboardingAddressingGrammarCell

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CNSharingProfileOnboardingAddressingGrammarCell;
  [(CNSharingProfileOnboardingAddressingGrammarCell *)&v4 prepareForReuse];
  [(UILabel *)self->_addressingGrammarLabel removeFromSuperview];
  addressingGrammarLabel = self->_addressingGrammarLabel;
  self->_addressingGrammarLabel = 0;
}

- (void)setAddressingGrammarLabel:(id)a3
{
  v5 = a3;
  addressingGrammarLabel = self->_addressingGrammarLabel;
  v10 = v5;
  if (addressingGrammarLabel != v5)
  {
    v7 = [(UILabel *)addressingGrammarLabel superview];
    v8 = [(CNSharingProfileOnboardingAddressingGrammarCell *)self contentView];

    if (v7 == v8)
    {
      [(UILabel *)self->_addressingGrammarLabel removeFromSuperview];
    }

    objc_storeStrong(&self->_addressingGrammarLabel, a3);
    v9 = [(CNSharingProfileOnboardingAddressingGrammarCell *)self contentView];
    [v9 addSubview:self->_addressingGrammarLabel];
  }

  [(CNSharingProfileOnboardingAddressingGrammarCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CNSharingProfileOnboardingAddressingGrammarCell;
  [(CNSharingProfileOnboardingAddressingGrammarCell *)&v14 layoutSubviews];
  v3 = [(CNSharingProfileOnboardingAddressingGrammarCell *)self effectiveUserInterfaceLayoutDirection];
  v4 = [(CNSharingProfileOnboardingAddressingGrammarCell *)self contentView];
  [v4 bounds];
  Width = CGRectGetWidth(v15);
  [(CNSharingProfileOnboardingAddressingGrammarCell *)self layoutMargins];
  v7 = v6;
  [(CNSharingProfileOnboardingAddressingGrammarCell *)self layoutMargins];
  v9 = v8;

  [(CNSharingProfileOnboardingAddressingGrammarCell *)self layoutMargins];
  if (v3 == 1)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = [(CNSharingProfileOnboardingAddressingGrammarCell *)self contentView];
  [v13 bounds];
  [(UILabel *)self->_addressingGrammarLabel setFrame:v12, 0.0, Width - v7 - v9];
}

- (CNSharingProfileOnboardingAddressingGrammarCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = CNSharingProfileOnboardingAddressingGrammarCell;
  v4 = [(CNSharingProfileOnboardingAddressingGrammarCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CNSharingProfileOnboardingAddressingGrammarCell *)v4 setAccessoryType:1];
    v6 = v5;
  }

  return v5;
}

@end