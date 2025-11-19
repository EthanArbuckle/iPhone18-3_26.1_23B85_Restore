@interface THDottedHairlineView
- (THDottedHairlineView)initWithFrame:(CGRect)a3;
- (void)awakeFromNib;
- (void)dealloc;
- (void)drawRect:(CGRect)a3;
@end

@implementation THDottedHairlineView

- (THDottedHairlineView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = THDottedHairlineView;
  v3 = [(THDottedHairlineView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(THDottedHairlineView *)v3 p_initCommon];
  }

  return v4;
}

- (void)dealloc
{
  [(THDottedHairlineView *)self setColor:0];
  v3.receiver = self;
  v3.super_class = THDottedHairlineView;
  [(THDottedHairlineView *)&v3 dealloc];
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = THDottedHairlineView;
  [(THDottedHairlineView *)&v3 awakeFromNib];
  [(THDottedHairlineView *)self p_initCommon];
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  CGContextSetStrokeColorWithColor(CurrentContext, [(UIColor *)self->mColor CGColor]);
  CGContextSetLineDash(CurrentContext, 0.0, dbl_34A720, 2uLL);
  [(THDottedHairlineView *)self frame];
  if (v5 >= 2.0)
  {
    [(THDottedHairlineView *)self frame];
    if (v7 >= 2.0)
    {
      [(THDottedHairlineView *)self frame];
      CGContextStrokeRect(CurrentContext, v12);
      goto LABEL_7;
    }

    points.x = 0.0;
    points.y = 0.0;
    [(THDottedHairlineView *)self frame];
    v10 = v8;
    v11 = 0;
  }

  else
  {
    points.x = 0.0;
    points.y = 0.0;
    [(THDottedHairlineView *)self frame];
    v10 = 0;
    v11 = v6;
  }

  CGContextStrokeLineSegments(CurrentContext, &points, 2uLL);
LABEL_7:
  CGContextRestoreGState(CurrentContext);
}

@end