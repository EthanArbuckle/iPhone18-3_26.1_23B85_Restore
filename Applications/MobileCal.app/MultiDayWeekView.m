@interface MultiDayWeekView
+ (double)dayWidthForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4;
+ (unint64_t)displayedDaysForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4;
- (MultiDayWeekView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4 targetWindow:(id)a5 rightClickDelegate:(id)a6;
- (int64_t)daysToDisplay;
- (void)hideNowDot:(BOOL)a3;
@end

@implementation MultiDayWeekView

- (MultiDayWeekView)initWithFrame:(CGRect)a3 sizeClass:(int64_t)a4 targetWindow:(id)a5 rightClickDelegate:(id)a6
{
  v11.receiver = self;
  v11.super_class = MultiDayWeekView;
  v6 = [(WeekView *)&v11 initWithFrame:a4 sizeClass:a5 targetWindow:a6 rightClickDelegate:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v7 = v6;
  if (v6)
  {
    v8 = [(WeekView *)v6 allDayView];
    [v8 setUseMultiDayHeaderStyle:1];

    v9 = [(WeekView *)v7 content];
    [v9 setUseMultiDayStyle:1];

    [(WeekView *)v7 setOrientation:1];
  }

  return v7;
}

+ (double)dayWidthForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4
{
  v6 = a4;
  [a1 windowSpaceForOrientation:a3 withViewInViewHierarchy:v6];
  v8 = v7;
  v9 = [a1 displayedDaysForOrientation:a3 withViewInViewHierarchy:v6];

  return v8 / v9;
}

+ (unint64_t)displayedDaysForOrientation:(int64_t)a3 withViewInViewHierarchy:(id)a4
{
  v4 = objc_opt_class();

  return [v4 numMultiDays];
}

- (int64_t)daysToDisplay
{
  v2 = objc_opt_class();

  return [v2 numMultiDays];
}

- (void)hideNowDot:(BOOL)a3
{
  v4 = [(WeekView *)self content];
  v3 = [v4 grid];
  [v3 hideNowDot:1];
}

@end