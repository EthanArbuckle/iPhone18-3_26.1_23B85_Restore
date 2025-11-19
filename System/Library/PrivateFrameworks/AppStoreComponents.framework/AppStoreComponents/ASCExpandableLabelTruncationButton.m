@interface ASCExpandableLabelTruncationButton
- (ASCExpandableLabelTruncationButton)initWithFrame:(CGRect)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIFont)font;
- (double)doubleSpaceWidth;
- (void)layoutSubviews;
- (void)setFont:(id)a3;
- (void)setGradientColor:(id)a3;
- (void)updateGradientLayer;
@end

@implementation ASCExpandableLabelTruncationButton

- (ASCExpandableLabelTruncationButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20[1] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = ASCExpandableLabelTruncationButton;
  v7 = [(ASCExpandableLabelTruncationButton *)&v19 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_isRTL = 0;
    v9 = [MEMORY[0x277D75348] clearColor];
    gradientColor = v8->_gradientColor;
    v8->_gradientColor = v9;

    v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{x, y, width, height}];
    moreLabel = v8->_moreLabel;
    v8->_moreLabel = v11;

    v14 = ASCLocalizedString(@"EXPANDABLE_LABEL_TRUNCATION_TEXT", v13);
    [(UILabel *)v8->_moreLabel setText:v14];

    v15 = [(ASCExpandableLabelTruncationButton *)v8 tintColor];
    [(UILabel *)v8->_moreLabel setTextColor:v15];

    [(UILabel *)v8->_moreLabel setAdjustsFontForContentSizeCategory:1];
    [(ASCExpandableLabelTruncationButton *)v8 addSubview:v8->_moreLabel];
    v20[0] = objc_opt_class();
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    v17 = [(ASCExpandableLabelTruncationButton *)v8 registerForTraitChanges:v16 withTarget:v8 action:sel_updateGradientLayer];
  }

  return v8;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(ASCExpandableLabelTruncationButton *)self moreLabel];
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = [(ASCExpandableLabelTruncationButton *)self moreLabel];
  v12 = [v11 font];
  [v12 lineHeight];
  v14 = v13 + v13;

  +[ASCExpandableLabelTruncationButton maximumFadeWidth];
  if (v14 >= v15)
  {
    v14 = v15;
  }

  [(ASCExpandableLabelTruncationButton *)self doubleSpaceWidth];
  v17 = v8 + v16 + v14;
  v18 = v10;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = ASCExpandableLabelTruncationButton;
  [(ASCExpandableLabelTruncationButton *)&v15 layoutSubviews];
  v3 = [(ASCExpandableLabelTruncationButton *)self moreLabel];
  [(ASCExpandableLabelTruncationButton *)self bounds];
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = 0.0;
  if (![(ASCExpandableLabelTruncationButton *)self isRTL])
  {
    [(ASCExpandableLabelTruncationButton *)self bounds];
    v10 = v11 - v7;
  }

  [(ASCExpandableLabelTruncationButton *)self bounds];
  v13 = v12 * 0.5 - v9 * 0.5;
  v14 = [(ASCExpandableLabelTruncationButton *)self moreLabel];
  [v14 setFrame:{v10, v13, v7, v9}];

  [(ASCExpandableLabelTruncationButton *)self updateGradientLayer];
}

- (UIFont)font
{
  v2 = [(ASCExpandableLabelTruncationButton *)self moreLabel];
  v3 = [v2 font];

  return v3;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(ASCExpandableLabelTruncationButton *)self moreLabel];
  [v5 setFont:v4];
}

- (double)doubleSpaceWidth
{
  v9[1] = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277D740A8];
  v2 = [(ASCExpandableLabelTruncationButton *)self moreLabel];
  v3 = [v2 font];
  v9[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [@"  " boundingRectWithSize:0 options:v4 attributes:0 context:{1.79769313e308, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (void)setGradientColor:(id)a3
{
  objc_storeStrong(&self->_gradientColor, a3);

  [(ASCExpandableLabelTruncationButton *)self updateGradientLayer];
}

- (void)updateGradientLayer
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = [(ASCExpandableLabelTruncationButton *)self gradientColor];
  v4 = [v3 colorWithAlphaComponent:0.0];
  v25[0] = [v4 CGColor];
  v5 = [(ASCExpandableLabelTruncationButton *)self gradientColor];
  v25[1] = [v5 CGColor];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v7 = [(ASCExpandableLabelTruncationButton *)self layer];
  [v7 setColors:v6];

  v8 = [(ASCExpandableLabelTruncationButton *)self moreLabel];
  [v8 frame];
  v10 = v9;
  [(ASCExpandableLabelTruncationButton *)self doubleSpaceWidth];
  v12 = v11 + v10;

  [(ASCExpandableLabelTruncationButton *)self bounds];
  v14 = v12 / v13;
  v24[0] = &unk_2827B3980;
  v15 = 1.0;
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:1.0 - v14];
  v24[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v18 = [(ASCExpandableLabelTruncationButton *)self layer];
  [v18 setLocations:v17];

  v19 = [(ASCExpandableLabelTruncationButton *)self isRTL];
  v20 = [(ASCExpandableLabelTruncationButton *)self layer];
  v21 = v20;
  if (v19)
  {
    v22 = 1.0;
  }

  else
  {
    v22 = 0.0;
  }

  if (v19)
  {
    v15 = 0.0;
  }

  [v20 setStartPoint:{v22, 0.5}];

  v23 = [(ASCExpandableLabelTruncationButton *)self layer];
  [v23 setEndPoint:{v15, 0.5}];
}

@end