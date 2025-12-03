@interface PKPerforatedOpacitySliderKnobView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPerforatedOpacitySliderKnobView)initWithFrame:(CGRect)frame;
- (void)setFrame:(CGRect)frame;
@end

@implementation PKPerforatedOpacitySliderKnobView

- (PKPerforatedOpacitySliderKnobView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = PKPerforatedOpacitySliderKnobView;
  v3 = [(PKPerforatedOpacitySliderKnobView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PKPerforatedOpacitySliderKnobView *)v3 layer];
    layer2 = [MEMORY[0x1E69794A0] layer];
    backgroundCircleLayer = v4->_backgroundCircleLayer;
    v4->_backgroundCircleLayer = layer2;

    [layer addSublayer:v4->_backgroundCircleLayer];
    [(CALayer *)v4->_backgroundCircleLayer setBorderWidth:3.0];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBorderColor:](v4->_backgroundCircleLayer, "setBorderColor:", [whiteColor CGColor]);

    [(CALayer *)v4->_backgroundCircleLayer setCornerCurve:*MEMORY[0x1E69796E8]];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [layer setShadowColor:{objc_msgSend(blackColor, "CGColor")}];

    [layer setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [layer setShadowRadius:1.0];
    LODWORD(v10) = 1036831949;
    [layer setShadowOpacity:v10];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (fits.width >= fits.height)
  {
    fits.width = fits.height;
  }

  v3 = fits.width * 0.9;
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  v18.receiver = self;
  v18.super_class = PKPerforatedOpacitySliderKnobView;
  [(PKPerforatedOpacitySliderKnobView *)&v18 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [(PKPerforatedOpacitySliderKnobView *)self bounds];
  v8 = v7;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  if (v5 >= v6)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  v13 = v12 * 0.5;
  v14 = v8;
  v15 = CGPathCreateWithRoundedRect(*(&v4 - 1), v13, v13, 0);
  CopyByStrokingPath = CGPathCreateCopyByStrokingPath(v15, 0, 3.0, kCGLineCapRound, kCGLineJoinRound, 0.0);
  CGPathRelease(v15);
  layer = [(PKPerforatedOpacitySliderKnobView *)self layer];
  [layer setShadowPath:CopyByStrokingPath];

  CGPathRelease(CopyByStrokingPath);
  [(CALayer *)self->_backgroundCircleLayer setFrame:v8, v9, v10, v11];
  [(CALayer *)self->_backgroundCircleLayer setCornerRadius:v13];
}

@end