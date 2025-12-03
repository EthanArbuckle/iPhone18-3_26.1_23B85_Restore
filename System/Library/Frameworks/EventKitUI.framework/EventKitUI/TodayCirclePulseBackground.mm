@interface TodayCirclePulseBackground
- (TodayCirclePulseBackground)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation TodayCirclePulseBackground

- (TodayCirclePulseBackground)initWithFrame:(CGRect)frame
{
  v4.receiver = self;
  v4.super_class = TodayCirclePulseBackground;
  result = [(TodayCirclePulseBackground *)&v4 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->_roundedRectCornerRadius = 8.0;
  }

  return result;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  if (CurrentContext)
  {
    v5 = CurrentContext;
    v6 = CalendarAppTintColor();
    [v6 setFill];

    if ([(TodayCirclePulseBackground *)self usesRoundedRectInsteadOfCircle])
    {
      v7 = MEMORY[0x1E69DC728];
      [(TodayCirclePulseBackground *)self bounds];
      v9 = v8;
      v11 = v10;
      v13 = v12;
      v15 = v14;
      [(TodayCirclePulseBackground *)self roundedRectCornerRadius];
      v17 = [v7 bezierPathWithRoundedRect:v9 cornerRadius:{v11, v13, v15, v16}];
      [v17 fill];
    }

    else
    {
      [(TodayCirclePulseBackground *)self bounds];
      CGContextFillEllipseInRect(v5, v19);
    }

    CGContextFlush(v5);
  }
}

@end