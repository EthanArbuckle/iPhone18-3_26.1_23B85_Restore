@interface MTCountChevronView
- (CGRect)_chevronFrameForViewSize:(CGSize)a3;
- (CGRect)_countFrameForViewSize:(CGSize)a3;
- (CGSize)_chevronSize;
- (CGSize)_countSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTChevronView)chevronView;
- (MTCountChevronView)initWithFrame:(CGRect)a3;
- (UIFont)font;
- (UILabel)countLabel;
- (void)_updateCurrentTextColor;
- (void)layoutSubviews;
- (void)setCount:(id)a3;
- (void)setFont:(id)a3;
- (void)setTextColor:(id)a3;
@end

@implementation MTCountChevronView

- (MTCountChevronView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MTCountChevronView;
  v3 = [(MTCountChevronView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(MTCountChevronView *)v3 countLabel];
    [(MTCountChevronView *)v4 addSubview:v5];

    v6 = [(MTCountChevronView *)v4 chevronView];
    [(MTCountChevronView *)v4 addSubview:v6];
  }

  return v4;
}

- (void)setCount:(id)a3
{
  v5 = a3;
  count = self->_count;
  if (count != v5)
  {
    v10 = v5;
    if (!v5 || (v7 = [(NSNumber *)count isEqualToNumber:v5], v5 = v10, (v7 & 1) == 0))
    {
      objc_storeStrong(&self->_count, a3);
      if ([(NSNumber *)v10 longLongValue]< 0)
      {
        v8 = @"!";
      }

      else if ([(NSNumber *)v10 unsignedLongLongValue])
      {
        v8 = [NSString localizedStringWithFormat:@"%lu", [(NSNumber *)v10 unsignedIntegerValue]];
      }

      else
      {
        v8 = 0;
      }

      v9 = [(MTCountChevronView *)self countLabel];
      [v9 setText:v8];

      [(MTCountChevronView *)self _updateCurrentTextColor];
      [(MTCountChevronView *)self setNeedsLayout];

      v5 = v10;
    }
  }
}

- (UIFont)font
{
  v2 = [(MTCountChevronView *)self countLabel];
  v3 = [v2 font];

  return v3;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(MTCountChevronView *)self countLabel];
  [v5 setFont:v4];

  [(MTCountChevronView *)self setNeedsLayout];
}

- (void)setTextColor:(id)a3
{
  objc_storeStrong(&self->_textColor, a3);

  [(MTCountChevronView *)self _updateCurrentTextColor];
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = MTCountChevronView;
  [(MTCountChevronView *)&v25 layoutSubviews];
  [(MTCountChevronView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(MTCountChevronView *)self _countFrameForViewSize:v3, v5];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(MTCountChevronView *)self countLabel];
  [v15 setFrame:{v8, v10, v12, v14}];

  [(MTCountChevronView *)self _chevronFrameForViewSize:v4, v6];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = [(MTCountChevronView *)self chevronView];
  [v24 setFrame:{v17, v19, v21, v23}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(MTCountChevronView *)self _countSize:a3.width];
  v5 = v4;
  v7 = v6;
  [(MTCountChevronView *)self _chevronSize];
  v10 = v5 + 14.0 + v9;
  if (v7 >= v8)
  {
    v8 = v7;
  }

  result.height = v8;
  result.width = v10;
  return result;
}

- (void)_updateCurrentTextColor
{
  v5 = [(MTCountChevronView *)self count];
  if (([v5 longLongValue] & 0x8000000000000000) != 0)
  {
    [(MTCountChevronView *)self tintColor];
  }

  else
  {
    [(MTCountChevronView *)self textColor];
  }
  v3 = ;
  v4 = [(MTCountChevronView *)self countLabel];
  [v4 setTextColor:v3];
}

- (CGRect)_chevronFrameForViewSize:(CGSize)a3
{
  width = a3.width;
  [(MTCountChevronView *)self _chevronSize];
  v6 = v5;
  v8 = v7;
  IMRoundToPixel();
  v10 = v9;
  v11 = [(MTCountChevronView *)self mt_isRTL];
  v12 = width - v6;
  if (v11)
  {
    v12 = 0.0;
  }

  v13 = v10;
  v14 = v6;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGSize)_chevronSize
{
  v2 = [(MTCountChevronView *)self chevronView];
  [v2 frame];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_countSize
{
  v2 = [(MTCountChevronView *)self countLabel];
  [v2 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)_countFrameForViewSize:(CGSize)a3
{
  width = a3.width;
  [(MTCountChevronView *)self _countSize];
  v6 = v5;
  v8 = v7;
  IMRoundToPixel();
  v10 = v9;
  v11 = [(MTCountChevronView *)self mt_isRTL];
  v12 = width - v6;
  if (!v11)
  {
    v12 = 0.0;
  }

  v13 = v10;
  v14 = v6;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (UILabel)countLabel
{
  countLabel = self->_countLabel;
  if (!countLabel)
  {
    v4 = objc_opt_new();
    v5 = self->_countLabel;
    self->_countLabel = v4;

    v6 = [(MTCountChevronView *)self font];
    [(UILabel *)self->_countLabel setFont:v6];

    v7 = [(MTCountChevronView *)self textColor];
    [(UILabel *)self->_countLabel setTextColor:v7];

    countLabel = self->_countLabel;
  }

  return countLabel;
}

- (MTChevronView)chevronView
{
  chevronView = self->_chevronView;
  if (!chevronView)
  {
    v4 = objc_opt_new();
    v5 = self->_chevronView;
    self->_chevronView = v4;

    [(MTChevronView *)self->_chevronView sizeToFit];
    chevronView = self->_chevronView;
  }

  return chevronView;
}

@end