@interface CNSharingProfileOnboardingAddressingGrammarCell
- (CNSharingProfileOnboardingAddressingGrammarCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAddressingGrammarLabel:(id)label;
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

- (void)setAddressingGrammarLabel:(id)label
{
  labelCopy = label;
  addressingGrammarLabel = self->_addressingGrammarLabel;
  v10 = labelCopy;
  if (addressingGrammarLabel != labelCopy)
  {
    superview = [(UILabel *)addressingGrammarLabel superview];
    contentView = [(CNSharingProfileOnboardingAddressingGrammarCell *)self contentView];

    if (superview == contentView)
    {
      [(UILabel *)self->_addressingGrammarLabel removeFromSuperview];
    }

    objc_storeStrong(&self->_addressingGrammarLabel, label);
    contentView2 = [(CNSharingProfileOnboardingAddressingGrammarCell *)self contentView];
    [contentView2 addSubview:self->_addressingGrammarLabel];
  }

  [(CNSharingProfileOnboardingAddressingGrammarCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CNSharingProfileOnboardingAddressingGrammarCell;
  [(CNSharingProfileOnboardingAddressingGrammarCell *)&v14 layoutSubviews];
  effectiveUserInterfaceLayoutDirection = [(CNSharingProfileOnboardingAddressingGrammarCell *)self effectiveUserInterfaceLayoutDirection];
  contentView = [(CNSharingProfileOnboardingAddressingGrammarCell *)self contentView];
  [contentView bounds];
  Width = CGRectGetWidth(v15);
  [(CNSharingProfileOnboardingAddressingGrammarCell *)self layoutMargins];
  v7 = v6;
  [(CNSharingProfileOnboardingAddressingGrammarCell *)self layoutMargins];
  v9 = v8;

  [(CNSharingProfileOnboardingAddressingGrammarCell *)self layoutMargins];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  contentView2 = [(CNSharingProfileOnboardingAddressingGrammarCell *)self contentView];
  [contentView2 bounds];
  [(UILabel *)self->_addressingGrammarLabel setFrame:v12, 0.0, Width - v7 - v9];
}

- (CNSharingProfileOnboardingAddressingGrammarCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = CNSharingProfileOnboardingAddressingGrammarCell;
  v4 = [(CNSharingProfileOnboardingAddressingGrammarCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CNSharingProfileOnboardingAddressingGrammarCell *)v4 setAccessoryType:1];
    v6 = v5;
  }

  return v5;
}

@end