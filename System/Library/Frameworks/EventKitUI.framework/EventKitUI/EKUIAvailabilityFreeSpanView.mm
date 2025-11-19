@interface EKUIAvailabilityFreeSpanView
- (EKUIAvailabilityFreeSpanView)initWithFrame:(CGRect)a3 andColor:(id)a4 startDate:(id)a5 endDate:(id)a6 isFreeSpan:(BOOL)a7;
- (void)drawRect:(CGRect)a3;
@end

@implementation EKUIAvailabilityFreeSpanView

- (EKUIAvailabilityFreeSpanView)initWithFrame:(CGRect)a3 andColor:(id)a4 startDate:(id)a5 endDate:(id)a6 isFreeSpan:(BOOL)a7
{
  v7 = a7;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v32.receiver = self;
  v32.super_class = EKUIAvailabilityFreeSpanView;
  v18 = [(EKUIAvailabilityFreeSpanView *)&v32 initWithFrame:x, y, width, height];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_startDate, a5);
    objc_storeStrong(&v19->_endDate, a6);
    v20 = [(EKUIAvailabilityFreeSpanView *)v19 traitCollection];
    [v20 userInterfaceStyle];
    v21 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
    v22 = v21;
    if (v7)
    {
      v23 = [v21 colorWithAlphaComponent:0.25];
      [(EKUIAvailabilityFreeSpanView *)v19 setBackgroundColor:v23];

      [(EKUIAvailabilityFreeSpanView *)v19 setBorderColor:v15];
    }

    else
    {
      [(EKUIAvailabilityFreeSpanView *)v19 setBackgroundColor:v21];

      v24 = [v15 CGColor];
      v25 = [(EKUIAvailabilityFreeSpanView *)v19 layer];
      [v25 setBorderColor:v24];

      v26 = [(EKUIAvailabilityFreeSpanView *)v19 layer];
      [v26 setBorderWidth:1.5];
    }
  }

  +[EKUIAvailabilityRowView cornerRadius];
  v28 = v27;
  v29 = [(EKUIAvailabilityFreeSpanView *)v19 layer];
  [v29 setCornerRadius:v28];

  v30 = [(EKUIAvailabilityFreeSpanView *)v19 layer];
  [v30 setMasksToBounds:1];

  return v19;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = *MEMORY[0x1E69E9840];
  v8 = [(EKUIAvailabilityFreeSpanView *)self borderColor];

  if (v8)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(CurrentContext, 3.0);
    CGContextSetLineCap(CurrentContext, kCGLineCapRound);
    CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
    v14 = xmmword_1D36008A0;
    CGContextSetLineDash(CurrentContext, 0.0, &v14, 2uLL);
    v10 = [(EKUIAvailabilityFreeSpanView *)self borderColor];
    CGContextSetStrokeColorWithColor(CurrentContext, [v10 CGColor]);

    CGContextBeginPath(CurrentContext);
    +[EKUIAvailabilityRowView cornerRadius];
    if (v11 + v11 <= width + -1.0)
    {
      v12 = v11;
    }

    else
    {
      v12 = (width + -1.0) * 0.5;
    }

    v13 = [MEMORY[0x1E69DC728] bezierPathWithRoundedRect:x cornerRadius:{y, width, height, v12}];
    CGContextAddPath(CurrentContext, [v13 CGPath]);

    CGContextDrawPath(CurrentContext, kCGPathStroke);
  }
}

@end