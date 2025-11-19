@interface BKFinishedButton
- (BKFinishedButton)initWithCoder:(id)a3;
- (BKFinishedButton)initWithFrame:(CGRect)a3;
- (void)setFrameColor:(id)a3;
- (void)setFrameWidth:(double)a3;
@end

@implementation BKFinishedButton

- (BKFinishedButton)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = BKFinishedButton;
  v3 = [(BKFinishedButton *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(BKFinishedButton *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (BKFinishedButton)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKFinishedButton;
  v3 = [(BKFinishedButton *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(BKFinishedButton *)v3 setClipsToBounds:1];
  }

  return v4;
}

- (void)setFrameWidth:(double)a3
{
  if (self->_frameWidth != a3)
  {
    self->_frameWidth = a3;
    [(BKFinishedButton *)self frameWidth];
    v6 = v5;
    v7 = [(BKFinishedButton *)self layer];
    [v7 setBorderWidth:v6];
  }
}

- (void)setFrameColor:(id)a3
{
  v5 = a3;
  if (self->_frameColor != v5)
  {
    v9 = v5;
    objc_storeStrong(&self->_frameColor, a3);
    v6 = v9;
    v7 = [(UIColor *)v9 CGColor];
    v8 = [(BKFinishedButton *)self layer];
    [v8 setBorderColor:v7];

    v5 = v9;
  }
}

@end