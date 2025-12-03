@interface MTCountChevronView
- (CGRect)_chevronFrameForViewSize:(CGSize)size;
- (CGRect)_countFrameForViewSize:(CGSize)size;
- (CGSize)_chevronSize;
- (CGSize)_countSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTChevronView)chevronView;
- (MTCountChevronView)initWithFrame:(CGRect)frame;
- (UIFont)font;
- (UILabel)countLabel;
- (void)_updateCurrentTextColor;
- (void)layoutSubviews;
- (void)setCount:(id)count;
- (void)setFont:(id)font;
- (void)setTextColor:(id)color;
@end

@implementation MTCountChevronView

- (MTCountChevronView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MTCountChevronView;
  v3 = [(MTCountChevronView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    countLabel = [(MTCountChevronView *)v3 countLabel];
    [(MTCountChevronView *)v4 addSubview:countLabel];

    chevronView = [(MTCountChevronView *)v4 chevronView];
    [(MTCountChevronView *)v4 addSubview:chevronView];
  }

  return v4;
}

- (void)setCount:(id)count
{
  countCopy = count;
  count = self->_count;
  if (count != countCopy)
  {
    v10 = countCopy;
    if (!countCopy || (v7 = [(NSNumber *)count isEqualToNumber:countCopy], countCopy = v10, (v7 & 1) == 0))
    {
      objc_storeStrong(&self->_count, count);
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

      countLabel = [(MTCountChevronView *)self countLabel];
      [countLabel setText:v8];

      [(MTCountChevronView *)self _updateCurrentTextColor];
      [(MTCountChevronView *)self setNeedsLayout];

      countCopy = v10;
    }
  }
}

- (UIFont)font
{
  countLabel = [(MTCountChevronView *)self countLabel];
  font = [countLabel font];

  return font;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  countLabel = [(MTCountChevronView *)self countLabel];
  [countLabel setFont:fontCopy];

  [(MTCountChevronView *)self setNeedsLayout];
}

- (void)setTextColor:(id)color
{
  objc_storeStrong(&self->_textColor, color);

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
  countLabel = [(MTCountChevronView *)self countLabel];
  [countLabel setFrame:{v8, v10, v12, v14}];

  [(MTCountChevronView *)self _chevronFrameForViewSize:v4, v6];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  chevronView = [(MTCountChevronView *)self chevronView];
  [chevronView setFrame:{v17, v19, v21, v23}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(MTCountChevronView *)self _countSize:fits.width];
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
  countLabel = [(MTCountChevronView *)self countLabel];
  [countLabel setTextColor:v3];
}

- (CGRect)_chevronFrameForViewSize:(CGSize)size
{
  width = size.width;
  [(MTCountChevronView *)self _chevronSize];
  v6 = v5;
  v8 = v7;
  IMRoundToPixel();
  v10 = v9;
  mt_isRTL = [(MTCountChevronView *)self mt_isRTL];
  v12 = width - v6;
  if (mt_isRTL)
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
  chevronView = [(MTCountChevronView *)self chevronView];
  [chevronView frame];
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
  countLabel = [(MTCountChevronView *)self countLabel];
  [countLabel sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGRect)_countFrameForViewSize:(CGSize)size
{
  width = size.width;
  [(MTCountChevronView *)self _countSize];
  v6 = v5;
  v8 = v7;
  IMRoundToPixel();
  v10 = v9;
  mt_isRTL = [(MTCountChevronView *)self mt_isRTL];
  v12 = width - v6;
  if (!mt_isRTL)
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

    font = [(MTCountChevronView *)self font];
    [(UILabel *)self->_countLabel setFont:font];

    textColor = [(MTCountChevronView *)self textColor];
    [(UILabel *)self->_countLabel setTextColor:textColor];

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