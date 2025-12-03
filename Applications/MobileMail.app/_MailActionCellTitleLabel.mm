@interface _MailActionCellTitleLabel
+ (id)preferredFontForDefaultTitle;
- (CGSize)sizeThatFits:(CGSize)fits sizeCategory:(id)category;
- (void)_updateStyle;
- (void)setText:(id)text;
- (void)setUseActionSheetStyle:(BOOL)style;
- (void)traitCollectionDidChange:(id)change;
- (void)updateFontWithSizeCategory:(id)category;
@end

@implementation _MailActionCellTitleLabel

- (void)setText:(id)text
{
  textCopy = text;
  text = [(_MailActionCellTitleLabel *)self text];
  v6 = [text isEqualToString:textCopy];

  if ((v6 & 1) == 0)
  {
    v9.receiver = self;
    v9.super_class = _MailActionCellTitleLabel;
    [(_MailActionCellTitleLabel *)&v9 setText:textCopy];
    traitCollection = [(_MailActionCellTitleLabel *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    [(_MailActionCellTitleLabel *)self updateFontWithSizeCategory:preferredContentSizeCategory];
  }
}

- (void)setUseActionSheetStyle:(BOOL)style
{
  if (self->_useActionSheetStyle != style)
  {
    self->_useActionSheetStyle = style;
    [(_MailActionCellTitleLabel *)self _updateStyle];
  }
}

- (void)_updateStyle
{
  if ([(_MailActionCellTitleLabel *)self useActionSheetStyle])
  {
    traitCollection = [(_MailActionCellTitleLabel *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    v5 = !UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

- (void)updateFontWithSizeCategory:(id)category
{
  isHorizontalTitle = [(_MailActionCellTitleLabel *)self isHorizontalTitle];
  v5 = objc_opt_class();
  if (isHorizontalTitle)
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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v11.receiver = self;
  v11.super_class = _MailActionCellTitleLabel;
  [(_MailActionCellTitleLabel *)&v11 traitCollectionDidChange:changeCopy];
  traitCollection = [(_MailActionCellTitleLabel *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
  v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v8 & 1) == 0)
  {
    [(_MailActionCellTitleLabel *)self _updateStyle];
    traitCollection2 = [(_MailActionCellTitleLabel *)self traitCollection];
    preferredContentSizeCategory3 = [traitCollection2 preferredContentSizeCategory];
    [(_MailActionCellTitleLabel *)self updateFontWithSizeCategory:preferredContentSizeCategory3];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits sizeCategory:(id)category
{
  height = fits.height;
  width = fits.width;
  categoryCopy = category;
  [(_MailActionCellTitleLabel *)self updateFontWithSizeCategory:categoryCopy];
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