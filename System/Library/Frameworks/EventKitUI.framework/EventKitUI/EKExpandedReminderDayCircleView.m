@interface EKExpandedReminderDayCircleView
- (EKExpandedReminderDayCircleView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
@end

@implementation EKExpandedReminderDayCircleView

- (EKExpandedReminderDayCircleView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = EKExpandedReminderDayCircleView;
  v3 = [(EKExpandedReminderDayCircleView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(EKExpandedReminderDayCircleView *)v3 setBackgroundColor:v4];

    v5 = CalendarAppCircleNonTodayBGColor();
    circleColor = v3->_circleColor;
    v3->_circleColor = v5;
  }

  return v3;
}

- (void)drawRect:(CGRect)a3
{
  CurrentContext = UIGraphicsGetCurrentContext();
  [(UIColor *)self->_circleColor set];
  [(EKExpandedReminderDayCircleView *)self bounds];

  CGContextFillEllipseInRect(CurrentContext, *&v5);
}

@end