@interface MTDynamicTypeLabel
- (MTDynamicTypeLabel)initWithTextStyle:(id)a3 symbolicTraits:(unsigned int)a4;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateForCurrentContentSizeCategory;
@end

@implementation MTDynamicTypeLabel

- (MTDynamicTypeLabel)initWithTextStyle:(id)a3 symbolicTraits:(unsigned int)a4
{
  v4 = *&a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = MTDynamicTypeLabel;
  v7 = [(MTDynamicTypeLabel *)&v11 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v8 = v7;
  if (v7)
  {
    v7->_textStyle = v6;
    v7->_symbolicTraits = v4;
    [(MTDynamicTypeLabel *)v7 setAdjustsFontForContentSizeCategory:1];
    v9 = [UIFont mt_preferredFontForTextStyle:v6 addingSymbolicTraits:v4];
    [(MTDynamicTypeLabel *)v8 setFont:v9];
  }

  return v8;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)a3
{
  v3 = a3;
  if ([(MTDynamicTypeLabel *)self adjustsFontForContentSizeCategory]!= a3)
  {
    v5.receiver = self;
    v5.super_class = MTDynamicTypeLabel;
    [(MTDynamicTypeLabel *)&v5 setAdjustsFontForContentSizeCategory:v3];
    [(MTDynamicTypeLabel *)self updateForCurrentContentSizeCategory];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MTDynamicTypeLabel;
  [(MTDynamicTypeLabel *)&v9 traitCollectionDidChange:v4];
  if ([(MTDynamicTypeLabel *)self adjustsFontForContentSizeCategory])
  {
    v5 = [v4 preferredContentSizeCategory];
    v6 = [(MTDynamicTypeLabel *)self traitCollection];
    v7 = [v6 preferredContentSizeCategory];
    v8 = [v5 isEqualToString:v7];

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