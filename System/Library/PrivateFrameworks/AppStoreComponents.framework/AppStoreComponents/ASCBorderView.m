@interface ASCBorderView
- (ASCBorderView)initWithCoder:(id)a3;
- (ASCBorderView)initWithFrame:(CGRect)a3;
- (NSString)cornerCurve;
- (double)cornerRadius;
- (double)width;
- (unint64_t)cornerMask;
- (void)setColor:(id)a3;
- (void)setCornerCurve:(id)a3;
- (void)setCornerMask:(unint64_t)a3;
- (void)setCornerRadius:(double)a3;
- (void)setWidth:(double)a3;
- (void)updateBorderColor;
@end

@implementation ASCBorderView

- (ASCBorderView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = ASCBorderView;
  v3 = [(ASCBorderView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    color = v3->_color;
    v3->_color = v4;

    [(ASCBorderView *)v3 updateBorderColor];
    v6 = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v7 = [(ASCBorderView *)v3 registerForTraitChanges:v6 withAction:sel_updateBorderColor];
  }

  return v3;
}

- (ASCBorderView)initWithCoder:(id)a3
{
  [(ASCBorderView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);

  [(ASCBorderView *)self updateBorderColor];
}

- (double)width
{
  v2 = [(ASCBorderView *)self layer];
  [v2 borderWidth];
  v4 = v3;

  return v4;
}

- (void)setWidth:(double)a3
{
  v4 = [(ASCBorderView *)self layer];
  [v4 setBorderWidth:a3];
}

- (double)cornerRadius
{
  v2 = [(ASCBorderView *)self layer];
  [v2 cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)a3
{
  v4 = [(ASCBorderView *)self layer];
  [v4 setCornerRadius:a3];
}

- (NSString)cornerCurve
{
  v2 = [(ASCBorderView *)self layer];
  v3 = [v2 cornerCurve];

  return v3;
}

- (void)setCornerCurve:(id)a3
{
  v4 = a3;
  v5 = [(ASCBorderView *)self layer];
  [v5 setCornerCurve:v4];
}

- (unint64_t)cornerMask
{
  v2 = [(ASCBorderView *)self layer];
  v3 = [v2 maskedCorners];

  return v3;
}

- (void)setCornerMask:(unint64_t)a3
{
  v4 = [(ASCBorderView *)self layer];
  [v4 setMaskedCorners:a3];
}

- (void)updateBorderColor
{
  v6 = [(ASCBorderView *)self color];
  v3 = v6;
  v4 = [v6 CGColor];
  v5 = [(ASCBorderView *)self layer];
  [v5 setBorderColor:v4];
}

@end