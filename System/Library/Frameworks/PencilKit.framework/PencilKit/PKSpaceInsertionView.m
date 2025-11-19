@interface PKSpaceInsertionView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (PKSpaceInsertionView)initWithFrame:(CGRect)a3 insertionType:(unint64_t)a4 path:(CGPath *)a5 handleLocation:(CGPoint)a6 scale:(double)a7;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation PKSpaceInsertionView

- (PKSpaceInsertionView)initWithFrame:(CGRect)a3 insertionType:(unint64_t)a4 path:(CGPath *)a5 handleLocation:(CGPoint)a6 scale:(double)a7
{
  y = a6.y;
  x = a6.x;
  v17.receiver = self;
  v17.super_class = PKSpaceInsertionView;
  v12 = [(PKSpaceInsertionView *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v13 = v12;
  if (v12)
  {
    [(PKSpaceInsertionView *)v12 setOpaque:0];
    v13->_insertionType = a4;
    v13->_lassoPath = CGPathRetain(a5);
    v13->_handleLocation.x = x;
    v13->_handleLocation.y = y;
    v13->_scale = a7;
    v14 = objc_alloc_init(PKDrawingAdjustmentKnob);
    knobHandle = v13->_knobHandle;
    v13->_knobHandle = v14;

    [(PKSpaceInsertionView *)v13 addSubview:v13->_knobHandle];
    [(PKSpaceInsertionView *)v13 setAccessibilityIdentifier:@"com.apple.pencilkit.insertSpaceHandle"];
  }

  return v13;
}

- (void)dealloc
{
  CGPathRelease(self->_lassoPath);
  v3.receiver = self;
  v3.super_class = PKSpaceInsertionView;
  [(PKSpaceInsertionView *)&v3 dealloc];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(PKSpaceInsertionView *)self bounds];
  v12.x = x;
  v12.y = y;
  if (!CGRectContainsPoint(v13, v12))
  {
    return 0;
  }

  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeTranslation(&v10, 0.0, 15.0);
  v7 = CGPathCreateCopyByStrokingPath(self->_lassoPath, &v10, 80.0, kCGLineCapRound, kCGLineJoinRound, 1.0);
  v11.x = x;
  v11.y = y;
  v8 = CGPathContainsPoint(v7, 0, v11, 0);
  CGPathRelease(v7);
  return v8;
}

- (void)layoutSubviews
{
  if ([(PKSpaceInsertionView *)self effectiveUserInterfaceLayoutDirection])
  {
    [(PKSpaceInsertionView *)self bounds];
    v4 = v3 + -7.5 + -7.5;
  }

  else
  {
    v4 = 0.0;
  }

  [(PKDrawingAdjustmentKnob *)self->_knobHandle setFrame:v4, self->_handleLocation.y + 15.0 + -8.0, 15.0, 16.0];
  v5 = [(PKSpaceInsertionView *)self tintColor];
  [(PKDrawingAdjustmentKnob *)self->_knobHandle setTintColor:?];
}

- (void)drawRect:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKSpaceInsertionView;
  [(PKSpaceInsertionView *)&v6 drawRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = [(PKSpaceInsertionView *)self tintColor];
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetStrokeColorWithColor(CurrentContext, [v4 CGColor]);
  CGContextTranslateCTM(CurrentContext, 0.0, 15.0);
  CGContextBeginPath(CurrentContext);
  CGContextSetLineCap(CurrentContext, kCGLineCapRound);
  CGContextSetLineWidth(CurrentContext, 0.5);
  CGContextAddPath(CurrentContext, self->_lassoPath);
  CGContextStrokePath(CurrentContext);
}

@end