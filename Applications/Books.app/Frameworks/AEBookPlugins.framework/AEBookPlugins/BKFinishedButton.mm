@interface BKFinishedButton
- (BKFinishedButton)initWithCoder:(id)coder;
- (BKFinishedButton)initWithFrame:(CGRect)frame;
- (void)setFrameColor:(id)color;
- (void)setFrameWidth:(double)width;
@end

@implementation BKFinishedButton

- (BKFinishedButton)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = BKFinishedButton;
  v3 = [(BKFinishedButton *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKFinishedButton *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (BKFinishedButton)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = BKFinishedButton;
  v3 = [(BKFinishedButton *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(BKFinishedButton *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)setFrameWidth:(double)width
{
  if (self->_frameWidth != width)
  {
    self->_frameWidth = width;
    [(BKFinishedButton *)self frameWidth];
    v6 = v5;
    layer = [(BKFinishedButton *)self layer];
    [layer setBorderWidth:v6];
  }
}

- (void)setFrameColor:(id)color
{
  colorCopy = color;
  if (self->_frameColor != colorCopy)
  {
    v9 = colorCopy;
    objc_storeStrong(&self->_frameColor, color);
    v6 = v9;
    cGColor = [(UIColor *)v9 CGColor];
    layer = [(BKFinishedButton *)self layer];
    [layer setBorderColor:cGColor];

    colorCopy = v9;
  }
}

@end