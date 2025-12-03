@interface MultiDayWeekView
+ (double)dayWidthForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy;
+ (unint64_t)displayedDaysForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy;
- (MultiDayWeekView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class targetWindow:(id)window rightClickDelegate:(id)delegate;
- (int64_t)daysToDisplay;
- (void)hideNowDot:(BOOL)dot;
@end

@implementation MultiDayWeekView

- (MultiDayWeekView)initWithFrame:(CGRect)frame sizeClass:(int64_t)class targetWindow:(id)window rightClickDelegate:(id)delegate
{
  v11.receiver = self;
  v11.super_class = MultiDayWeekView;
  v6 = [(WeekView *)&v11 initWithFrame:class sizeClass:window targetWindow:delegate rightClickDelegate:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v7 = v6;
  if (v6)
  {
    allDayView = [(WeekView *)v6 allDayView];
    [allDayView setUseMultiDayHeaderStyle:1];

    content = [(WeekView *)v7 content];
    [content setUseMultiDayStyle:1];

    [(WeekView *)v7 setOrientation:1];
  }

  return v7;
}

+ (double)dayWidthForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  [self windowSpaceForOrientation:orientation withViewInViewHierarchy:hierarchyCopy];
  v8 = v7;
  v9 = [self displayedDaysForOrientation:orientation withViewInViewHierarchy:hierarchyCopy];

  return v8 / v9;
}

+ (unint64_t)displayedDaysForOrientation:(int64_t)orientation withViewInViewHierarchy:(id)hierarchy
{
  v4 = objc_opt_class();

  return [v4 numMultiDays];
}

- (int64_t)daysToDisplay
{
  v2 = objc_opt_class();

  return [v2 numMultiDays];
}

- (void)hideNowDot:(BOOL)dot
{
  content = [(WeekView *)self content];
  grid = [content grid];
  [grid hideNowDot:1];
}

@end