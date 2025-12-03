@interface EKExpandedReminderDayCircleView
- (EKExpandedReminderDayCircleView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
@end

@implementation EKExpandedReminderDayCircleView

- (EKExpandedReminderDayCircleView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = EKExpandedReminderDayCircleView;
  v3 = [(EKExpandedReminderDayCircleView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(EKExpandedReminderDayCircleView *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = CalendarAppCircleNonTodayBGColor();
    circleColor = v3->_circleColor;
    v3->_circleColor = v5;
  }

  return v3;
}

- (void)drawRect:(CGRect)rect
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(UIColor *)self->_circleColor set];
  [(EKExpandedReminderDayCircleView *)self bounds];

  CGContextFillEllipseInRect(CurrentContext, *&v5);
}

@end