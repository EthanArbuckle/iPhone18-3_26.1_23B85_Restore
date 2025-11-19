@interface RegionFormatSampleView
- (CGSize)sizeForLabel:(id)a3 maxWidth:(double)a4;
- (RegionFormatSampleView)initWithSpecifier:(id)a3;
- (double)preferredHeightForWidth:(double)a3;
- (id)generateRegionSampleLabel;
- (void)layoutSubviews;
- (void)setTextForRegionExample:(id)a3;
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

- (void)setTextForRegionExample:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"example-time"];
  [(UILabel *)self->_labels[1] setText:v5];

  v6 = [v4 propertyForKey:@"example-date"];
  [(UILabel *)self->_labels[2] setText:v6];

  v7 = [v4 propertyForKey:@"example-money-and-number"];

  [(UILabel *)self->_labels[3] setText:v7];
  self->_sized = 0.0;
  *self->_labelTopPadding = 0u;
  *&self->_labelTopPadding[2] = 0u;

  [(RegionFormatSampleView *)self setNeedsLayout];
}

- (RegionFormatSampleView)initWithSpecifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RegionFormatSampleView;
  v5 = [(RegionFormatSampleView *)&v15 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    for (i = 0; i != 4; ++i)
    {
      v7 = [(RegionFormatSampleView *)v5 generateRegionSampleLabel];
      labels = v5->_labels;
      v9 = v5->_labels[i];
      v5->_labels[i] = v7;
    }

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"EXAMPLE" value:&stru_35798 table:@"InternationalSettings"];
    [*labels setText:v11];

    for (j = 0; j != 4; ++j)
    {
      [labels[j] setNumberOfLines:0];
      [labels[j] setTextAlignment:1];
    }

    [(RegionFormatSampleView *)v5 setTextForRegionExample:v4];
    v13 = +[UIColor clearColor];
    [(RegionFormatSampleView *)v5 setBackgroundColor:v13];
  }

  return v5;
}

- (CGSize)sizeForLabel:(id)a3 maxWidth:(double)a4
{
  v6 = a3;
  [(RegionFormatSampleView *)self layoutMargins];
  v8 = v7;
  [(RegionFormatSampleView *)self layoutMargins];
  [v6 sizeThatFits:{a4 - (v8 + v9), INFINITY}];
  v11 = v10;
  v13 = v12;

  v14 = v11;
  v15 = v13;
  result.height = v15;
  result.width = v14;
  return result;
}

- (double)preferredHeightForWidth:(double)a3
{
  labels = self->_labels;
  v6 = [(UILabel *)self->_labels[0] font];
  [v6 ascender];
  PSRoundToPixel();
  v8 = v7;

  self->_labelTopPadding[0] = fmax(v8, 0.0);
  v9 = [labels[1] font];
  [v9 ascender];
  v10 = [*labels font];
  [v10 descender];
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
    [(RegionFormatSampleView *)self sizeForLabel:labels[v13] maxWidth:a3];
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