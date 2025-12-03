@interface BEHairlineDividerView
- (BEHairlineDividerView)initWithCoder:(id)coder;
- (BEHairlineDividerView)initWithFrame:(CGRect)frame;
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
- (void)p_init;
- (void)setDividerColor:(id)color;
- (void)setHorizontal:(BOOL)horizontal;
@end

@implementation BEHairlineDividerView

- (BEHairlineDividerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BEHairlineDividerView;
  v3 = [(BEHairlineDividerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BEHairlineDividerView *)v3 p_init];
  }

  return v4;
}

- (BEHairlineDividerView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BEHairlineDividerView;
  v3 = [(BEHairlineDividerView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(BEHairlineDividerView *)v3 p_init];
  }

  return v4;
}

- (void)p_init
{
  [(BEHairlineDividerView *)self setUserInteractionEnabled:0];

  [(BEHairlineDividerView *)self setOpaque:0];
}

- (void)setHorizontal:(BOOL)horizontal
{
  if (self->_horizontal != horizontal)
  {
    self->_horizontal = horizontal;
    [(BEHairlineDividerView *)self invalidateIntrinsicContentSize];
  }
}

- (void)setDividerColor:(id)color
{
  colorCopy = color;
  if (self->_dividerColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_dividerColor, color);
    [(CALayer *)self->_dividerLayer setBackgroundColor:[(UIColor *)self->_dividerColor CGColor]];
    colorCopy = v6;
  }
}

- (void)layoutSubviews
{
  if (!self->_dividerLayer)
  {
    v3 = objc_alloc_init(CALayer);
    dividerLayer = self->_dividerLayer;
    self->_dividerLayer = v3;

    [(CALayer *)self->_dividerLayer setBackgroundColor:[(UIColor *)self->_dividerColor CGColor]];
    layer = [(BEHairlineDividerView *)self layer];
    [layer addSublayer:self->_dividerLayer];
  }

  [(BEHairlineDividerView *)self bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = +[UIScreen mainScreen];
  [v14 scale];
  v16 = 1.0 / v15;

  isHorizontal = [(BEHairlineDividerView *)self isHorizontal];
  v18 = v7;
  v19 = v9;
  v20 = v11;
  v21 = v13;
  if (isHorizontal)
  {
    Width = CGRectGetWidth(*&v18);
  }

  else
  {
    Height = CGRectGetHeight(*&v18);
    Width = v16;
    v16 = Height;
  }

  [(CALayer *)self->_dividerLayer setBounds:0.0, 0.0, Width, v16];
  v28.origin.x = v7;
  v28.origin.y = v9;
  v28.size.width = v11;
  v28.size.height = v13;
  v24 = CGRectGetWidth(v28) * 0.5;
  v29.origin.x = v7;
  v29.origin.y = v9;
  v29.size.width = v11;
  v29.size.height = v13;
  v25 = CGRectGetHeight(v29) * 0.5;
  v26 = self->_dividerLayer;

  [(CALayer *)v26 setPosition:v24, v25];
}

- (CGSize)intrinsicContentSize
{
  v13.receiver = self;
  v13.super_class = BEHairlineDividerView;
  [(BEHairlineDividerView *)&v13 intrinsicContentSize];
  v4 = v3;
  v6 = v5;
  v7 = +[UIScreen mainScreen];
  [v7 scale];
  v9 = 1.0 / v8;

  isHorizontal = [(BEHairlineDividerView *)self isHorizontal];
  if (isHorizontal)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (isHorizontal)
  {
    v12 = v4;
  }

  else
  {
    v12 = v9;
  }

  result.height = v11;
  result.width = v12;
  return result;
}

@end