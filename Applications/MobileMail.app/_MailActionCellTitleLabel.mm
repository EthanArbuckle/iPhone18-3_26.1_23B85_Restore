@interface _MailActionCellTitleLabel
+ (id)preferredFontForDefaultTitle;
- (CGSize)sizeThatFits:(CGSize)a3 sizeCategory:(id)a4;
- (void)_updateStyle;
- (void)setText:(id)a3;
- (void)setUseActionSheetStyle:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateFontWithSizeCategory:(id)a3;
@end

@implementation _MailActionCellTitleLabel

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(_MailActionCellTitleLabel *)self text];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = _MailActionCellTitleLabel;
    [(_MailActionCellTitleLabel *)&v9 setText:v4];
    v7 = [(_MailActionCellTitleLabel *)self traitCollection];
    v8 = [v7 preferredContentSizeCategory];
    [(_MailActionCellTitleLabel *)self updateFontWithSizeCategory:v8];
  }
}

- (void)setUseActionSheetStyle:(BOOL)a3
{
  if (self->_useActionSheetStyle != a3)
  {
    self->_useActionSheetStyle = a3;
    [(_MailActionCellTitleLabel *)self _updateStyle];
  }
}

- (void)_updateStyle
{
  if ([(_MailActionCellTitleLabel *)self useActionSheetStyle])
  {
    v3 = [(_MailActionCellTitleLabel *)self traitCollection];
    v4 = [v3 preferredContentSizeCategory];
    v5 = !UIContentSizeCategoryIsAccessibilityCategory(v4);

    v6 = 4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  [(_MailActionCellTitleLabel *)self setNumberOfLines:v5];

  [(_MailActionCellTitleLabel *)self setLineBreakMode:v6];
}

- (void)updateFontWithSizeCategory:(id)a3
{
  v4 = [(_MailActionCellTitleLabel *)self isHorizontalTitle];
  v5 = objc_opt_class();
  if (v4)
  {
    [v5 preferredFontForHorizontalTitle];
  }

  else
  {
    [v5 preferredFontForDefaultTitle];
  }
  v6 = ;
  [(_MailActionCellTitleLabel *)self setFont:v6];

  [(_MailActionCellTitleLabel *)self setNeedsDisplay];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _MailActionCellTitleLabel;
  [(_MailActionCellTitleLabel *)&v11 traitCollectionDidChange:v4];
  v5 = [(_MailActionCellTitleLabel *)self traitCollection];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(_MailActionCellTitleLabel *)self _updateStyle];
    v9 = [(_MailActionCellTitleLabel *)self traitCollection];
    v10 = [v9 preferredContentSizeCategory];
    [(_MailActionCellTitleLabel *)self updateFontWithSizeCategory:v10];
  }
}

- (CGSize)sizeThatFits:(CGSize)a3 sizeCategory:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  [(_MailActionCellTitleLabel *)self updateFontWithSizeCategory:v7];
  v14.receiver = self;
  v14.super_class = _MailActionCellTitleLabel;
  [(_MailActionCellTitleLabel *)&v14 sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

+ (id)preferredFontForDefaultTitle
{
  v2 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v3 = [v2 fontDescriptorWithSymbolicTraits:0x8000];

  v4 = [UIFont fontWithDescriptor:v3 size:0.0];

  return v4;
}

@end