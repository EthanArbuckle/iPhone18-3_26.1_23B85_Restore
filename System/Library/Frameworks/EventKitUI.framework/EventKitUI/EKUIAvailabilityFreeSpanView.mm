@interface EKUIAvailabilityFreeSpanView
- (EKUIAvailabilityFreeSpanView)initWithFrame:(CGRect)frame andColor:(id)color startDate:(id)date endDate:(id)endDate isFreeSpan:(BOOL)span;
- (void)drawRect:(CGRect)rect;
@end

@implementation EKUIAvailabilityFreeSpanView

- (EKUIAvailabilityFreeSpanView)initWithFrame:(CGRect)frame andColor:(id)color startDate:(id)date endDate:(id)endDate isFreeSpan:(BOOL)span
{
  spanCopy = span;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  dateCopy = date;
  endDateCopy = endDate;
  v32.receiver = self;
  v32.super_class = EKUIAvailabilityFreeSpanView;
  height = [(EKUIAvailabilityFreeSpanView *)&v32 initWithFrame:x, y, width, height];
  v19 = height;
  if (height)
  {
    objc_storeStrong(&height->_startDate, date);
    objc_storeStrong(&v19->_endDate, endDate);
    traitCollection = [(EKUIAvailabilityFreeSpanView *)v19 traitCollection];
    [traitCollection userInterfaceStyle];
    v21 = CUIKBackgroundColorForCalendarColorWithOpaqueForStyle();
    v22 = v21;
    if (spanCopy)
    {
      v23 = [v21 colorWithAlphaComponent:0.25];
      [(EKUIAvailabilityFreeSpanView *)v19 setBackgroundColor:v23];

      [(EKUIAvailabilityFreeSpanView *)v19 setBorderColor:colorCopy];
    }

    else
    {
      [(EKUIAvailabilityFreeSpanView *)v19 setBackgroundColor:v21];

      cGColor = [colorCopy CGColor];
      layer = [(EKUIAvailabilityFreeSpanView *)v19 layer];
      [layer setBorderColor:cGColor];

      layer2 = [(EKUIAvailabilityFreeSpanView *)v19 layer];
      [layer2 setBorderWidth:1.5];
    }
  }

  +[EKUIAvailabilityRowView cornerRadius];
  v28 = v27;
  layer3 = [(EKUIAvailabilityFreeSpanView *)v19 layer];
  [layer3 setCornerRadius:v28];

  layer4 = [(EKUIAvailabilityFreeSpanView *)v19 layer];
  [layer4 setMasksToBounds:1];

  return v19;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = *MEMORY[0x1E69E9840];
  borderColor = [(EKUIAvailabilityFreeSpanView *)self borderColor];

  if (borderColor)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(CurrentContext, 3.0);
    CGContextSetLineCap(CurrentContext, kCGLineCapRound);
    CGContextSetLineJoin(CurrentContext, kCGLineJoinRound);
    v14 = xmmword_1D36008A0;
    CGContextSetLineDash(CurrentContext, 0.0, &v14, 2uLL);
    borderColor2 = [(EKUIAvailabilityFreeSpanView *)self borderColor];
    CGContextSetStrokeColorWithColor(CurrentContext, [borderColor2 CGColor]);

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