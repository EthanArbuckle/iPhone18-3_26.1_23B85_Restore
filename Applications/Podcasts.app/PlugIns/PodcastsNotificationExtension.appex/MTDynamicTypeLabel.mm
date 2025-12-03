@interface MTDynamicTypeLabel
- (MTDynamicTypeLabel)initWithTextStyle:(id)style symbolicTraits:(unsigned int)traits;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
- (void)traitCollectionDidChange:(id)change;
- (void)updateForCurrentContentSizeCategory;
@end

@implementation MTDynamicTypeLabel

- (MTDynamicTypeLabel)initWithTextStyle:(id)style symbolicTraits:(unsigned int)traits
{
  v4 = *&traits;
  styleCopy = style;
  v11.receiver = self;
  v11.super_class = MTDynamicTypeLabel;
  v7 = [(MTDynamicTypeLabel *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_textStyle = styleCopy;
    v7->_symbolicTraits = v4;
    [(MTDynamicTypeLabel *)v7 setAdjustsFontForContentSizeCategory:1];
    v9 = [UIFont mt_preferredFontForTextStyle:styleCopy addingSymbolicTraits:v4];
    [(MTDynamicTypeLabel *)v8 setFont:v9];
  }

  return v8;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  categoryCopy = category;
  if ([(MTDynamicTypeLabel *)self adjustsFontForContentSizeCategory]!= category)
  {
    v5.receiver = self;
    v5.super_class = MTDynamicTypeLabel;
    [(MTDynamicTypeLabel *)&v5 setAdjustsFontForContentSizeCategory:categoryCopy];
    [(MTDynamicTypeLabel *)self updateForCurrentContentSizeCategory];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = MTDynamicTypeLabel;
  [(MTDynamicTypeLabel *)&v9 traitCollectionDidChange:changeCopy];
  if ([(MTDynamicTypeLabel *)self adjustsFontForContentSizeCategory])
  {
    preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
    traitCollection = [(MTDynamicTypeLabel *)self traitCollection];
    preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(MTDynamicTypeLabel *)self updateForCurrentContentSizeCategory];
    }
  }
}

- (void)updateForCurrentContentSizeCategory
{
  v3 = [UIFont mt_preferredFontForTextStyle:self->_textStyle addingSymbolicTraits:self->_symbolicTraits];
  [(MTDynamicTypeLabel *)self setFont:v3];
}

@end