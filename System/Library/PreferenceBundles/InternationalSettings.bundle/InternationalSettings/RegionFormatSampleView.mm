@interface RegionFormatSampleView
- (CGSize)sizeForLabel:(id)label maxWidth:(double)width;
- (RegionFormatSampleView)initWithSpecifier:(id)specifier;
- (double)preferredHeightForWidth:(double)width;
- (id)generateRegionSampleLabel;
- (void)layoutSubviews;
- (void)setTextForRegionExample:(id)example;
@end

@implementation RegionFormatSampleView

- (id)generateRegionSampleLabel
{
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v3 setFont:v4];

  [v3 setAdjustsFontForContentSizeCategory:1];
  [(RegionFormatSampleView *)self addSubview:v3];

  return v3;
}

- (void)setTextForRegionExample:(id)example
{
  exampleCopy = example;
  v5 = [exampleCopy propertyForKey:@"example-time"];
  [(UILabel *)self->_labels[1] setText:v5];

  v6 = [exampleCopy propertyForKey:@"example-date"];
  [(UILabel *)self->_labels[2] setText:v6];

  v7 = [exampleCopy propertyForKey:@"example-money-and-number"];

  [(UILabel *)self->_labels[3] setText:v7];
  self->_sized = 0.0;
  *self->_labelTopPadding = 0u;
  *&self->_labelTopPadding[2] = 0u;

  [(RegionFormatSampleView *)self setNeedsLayout];
}

- (RegionFormatSampleView)initWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v15.receiver = self;
  v15.super_class = RegionFormatSampleView;
  v5 = [(RegionFormatSampleView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    for (i = 0; i != 4; ++i)
    {
      generateRegionSampleLabel = [(RegionFormatSampleView *)v5 generateRegionSampleLabel];
      labels = v5->_labels;
      v9 = v5->_labels[i];
      v5->_labels[i] = generateRegionSampleLabel;
    }

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"EXAMPLE" value:&stru_35798 table:@"InternationalSettings"];
    [*labels setText:v11];

    for (j = 0; j != 4; ++j)
    {
      [labels[j] setNumberOfLines:0];
      [labels[j] setTextAlignment:1];
    }

    [(RegionFormatSampleView *)v5 setTextForRegionExample:specifierCopy];
    v13 = +[UIColor clearColor];
    [(RegionFormatSampleView *)v5 setBackgroundColor:v13];
  }

  return v5;
}

- (CGSize)sizeForLabel:(id)label maxWidth:(double)width
{
  labelCopy = label;
  [(RegionFormatSampleView *)self layoutMargins];
  v8 = v7;
  [(RegionFormatSampleView *)self layoutMargins];
  [labelCopy sizeThatFits:{width - (v8 + v9), INFINITY}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)preferredHeightForWidth:(double)width
{
  labels = self->_labels;
  font = [(UILabel *)self->_labels[0] font];
  [font ascender];
  PSRoundToPixel();
  v8 = v7;

  self->_labelTopPadding[0] = fmax(v8, 0.0);
  font2 = [labels[1] font];
  [font2 ascender];
  font3 = [*labels font];
  [font3 descender];
  PSRoundToPixel();
  v12 = v11;

  v13 = 0;
  self->_labelTopPadding[1] = fmax(v12, 6.0);
  __asm { FMOV            V0.2D, #2.0 }

  *&self->_labelTopPadding[2] = _Q0;
  self->_sized = 0.0;
  do
  {
    [labels[v13] sizeToFit];
    v19 = self->_labelTopPadding[v13];
    [(RegionFormatSampleView *)self sizeForLabel:labels[v13] maxWidth:width];
    result = self->_sized + v19 + v20;
    self->_sized = result;
    ++v13;
  }

  while (v13 != 4);
  return result;
}

- (void)layoutSubviews
{
  if (self->_sized == 0.0)
  {
    [(RegionFormatSampleView *)self bounds];
    [(RegionFormatSampleView *)self preferredHeightForWidth:v3];
  }

  v4 = 0;
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  labels = self->_labels;
  do
  {
    [(UILabel *)labels[v4] frame];
    v10 = labels[v4];
    [(RegionFormatSampleView *)self bounds];
    [(RegionFormatSampleView *)self sizeForLabel:v10 maxWidth:v11];
    v13 = v12;
    v15 = v14;
    [(RegionFormatSampleView *)self bounds];
    v17 = round((v16 - v13) * 0.5);
    v18 = self->_labelTopPadding[v4];
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    y = v18 + CGRectGetMaxY(v19);
    [(UILabel *)labels[v4++] setFrame:v17, y, v13, v15];
    x = v17;
    width = v13;
    height = v15;
  }

  while (v4 != 4);
}

@end