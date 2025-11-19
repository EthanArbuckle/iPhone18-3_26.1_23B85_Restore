@interface PKPerforatedOpacitySliderKnobView
- (CGSize)sizeThatFits:(CGSize)a3;
- (PKPerforatedOpacitySliderKnobView)initWithFrame:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation PKPerforatedOpacitySliderKnobView

- (PKPerforatedOpacitySliderKnobView)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = PKPerforatedOpacitySliderKnobView;
  v3 = [(PKPerforatedOpacitySliderKnobView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PKPerforatedOpacitySliderKnobView *)v3 layer];
    v6 = [MEMORY[0x1E69794A0] layer];
    backgroundCircleLayer = v4->_backgroundCircleLayer;
    v4->_backgroundCircleLayer = v6;

    [v5 addSublayer:v4->_backgroundCircleLayer];
    [(CALayer *)v4->_backgroundCircleLayer setBorderWidth:3.0];
    v8 = [MEMORY[0x1E69DC888] whiteColor];
    -[CALayer setBorderColor:](v4->_backgroundCircleLayer, "setBorderColor:", [v8 CGColor]);

    [(CALayer *)v4->_backgroundCircleLayer setCornerCurve:*MEMORY[0x1E69796E8]];
    v9 = [MEMORY[0x1E69DC888] blackColor];
    [v5 setShadowColor:{objc_msgSend(v9, "CGColor")}];

    [v5 setShadowOffset:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
    [v5 setShadowRadius:1.0];
    LODWORD(v10) = 1036831949;
    [v5 setShadowOpacity:v10];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (a3.width >= a3.height)
  {
    a3.width = a3.height;
  }

  v3 = a3.width * 0.9;
  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = PKPerforatedOpacitySliderKnobView;
  [(PKPerforatedOpacitySliderKnobView *)&v18 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v17 = [(PKPerforatedOpacitySliderKnobView *)self layer];
  [v17 setShadowPath:CopyByStrokingPath];

  CGPathRelease(CopyByStrokingPath);
  [(CALayer *)self->_backgroundCircleLayer setFrame:v8, v9, v10, v11];
  [(CALayer *)self->_backgroundCircleLayer setCornerRadius:v13];
}

@end