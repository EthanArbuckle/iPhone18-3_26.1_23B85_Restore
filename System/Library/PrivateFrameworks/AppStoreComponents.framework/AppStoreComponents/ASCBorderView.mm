@interface ASCBorderView
- (ASCBorderView)initWithCoder:(id)coder;
- (ASCBorderView)initWithFrame:(CGRect)frame;
- (NSString)cornerCurve;
- (double)cornerRadius;
- (double)width;
- (unint64_t)cornerMask;
- (void)setColor:(id)color;
- (void)setCornerCurve:(id)curve;
- (void)setCornerMask:(unint64_t)mask;
- (void)setCornerRadius:(double)radius;
- (void)setWidth:(double)width;
- (void)updateBorderColor;
@end

@implementation ASCBorderView

- (ASCBorderView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = ASCBorderView;
  v3 = [(ASCBorderView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    color = v3->_color;
    v3->_color = clearColor;

    [(ASCBorderView *)v3 updateBorderColor];
    systemTraitsAffectingColorAppearance = [MEMORY[0x277D75C80] systemTraitsAffectingColorAppearance];
    v7 = [(ASCBorderView *)v3 registerForTraitChanges:systemTraitsAffectingColorAppearance withAction:sel_updateBorderColor];
  }

  return v3;
}

- (ASCBorderView)initWithCoder:(id)coder
{
  [(ASCBorderView *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);

  [(ASCBorderView *)self updateBorderColor];
}

- (double)width
{
  layer = [(ASCBorderView *)self layer];
  [layer borderWidth];
  v4 = v3;

  return v4;
}

- (void)setWidth:(double)width
{
  layer = [(ASCBorderView *)self layer];
  [layer setBorderWidth:width];
}

- (double)cornerRadius
{
  layer = [(ASCBorderView *)self layer];
  [layer cornerRadius];
  v4 = v3;

  return v4;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(ASCBorderView *)self layer];
  [layer setCornerRadius:radius];
}

- (NSString)cornerCurve
{
  layer = [(ASCBorderView *)self layer];
  cornerCurve = [layer cornerCurve];

  return cornerCurve;
}

- (void)setCornerCurve:(id)curve
{
  curveCopy = curve;
  layer = [(ASCBorderView *)self layer];
  [layer setCornerCurve:curveCopy];
}

- (unint64_t)cornerMask
{
  layer = [(ASCBorderView *)self layer];
  maskedCorners = [layer maskedCorners];

  return maskedCorners;
}

- (void)setCornerMask:(unint64_t)mask
{
  layer = [(ASCBorderView *)self layer];
  [layer setMaskedCorners:mask];
}

- (void)updateBorderColor
{
  color = [(ASCBorderView *)self color];
  v3 = color;
  cGColor = [color CGColor];
  layer = [(ASCBorderView *)self layer];
  [layer setBorderColor:cGColor];
}

@end