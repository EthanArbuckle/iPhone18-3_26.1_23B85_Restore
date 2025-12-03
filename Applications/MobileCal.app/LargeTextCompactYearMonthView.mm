@interface LargeTextCompactYearMonthView
+ (double)heightForInterfaceOrientation:(int64_t)orientation windowSize:(CGSize)size heightSizeClass:(int64_t)class;
+ (double)leftMarginForWindowSize:(CGSize)size;
- (CGRect)frameForGridOfDays:(BOOL)days;
- (CGSize)roundedRectSizeForDayNumberString:(id)string;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)circleSize;
- (double)dayTextSize;
- (double)daysYAdjustTop;
- (double)headerFontMaxSize;
- (double)xSpacing;
- (double)ySpacing;
- (id)dayNumberFont;
- (id)headerFont;
@end

@implementation LargeTextCompactYearMonthView

+ (double)leftMarginForWindowSize:(CGSize)size
{
  width = size.width;
  if (qword_1002517B0 != -1)
  {
    sub_10016F934();
  }

  v4 = qword_1002517A8;

  [v4 valueForSize:width];
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  if (qword_1002517C0 != -1)
  {
    sub_10016F948();
  }

  v4 = qword_1002517B8;
  AnchoredValueCurrentWindowWidth(self);
  [v4 valueForSize:?];
  v6 = v5;
  v7 = EKUIInterfaceOrientationForViewHierarchy();
  v8 = objc_opt_class();
  EKUICurrentWindowSize();
  [v8 heightForInterfaceOrientation:v7 windowSize:EKUIHeightSizeClassForViewHierarchy() heightSizeClass:{v9, v10}];
  v12 = v11;
  v13 = v6;
  result.height = v12;
  result.width = v13;
  return result;
}

+ (double)heightForInterfaceOrientation:(int64_t)orientation windowSize:(CGSize)size heightSizeClass:(int64_t)class
{
  width = size.width;
  if (qword_1002517D0 != -1)
  {
    sub_10016F95C();
  }

  v6 = qword_1002517C8;

  [v6 valueForSize:width];
  return result;
}

- (double)headerFontMaxSize
{
  headerFont = [(LargeTextCompactYearMonthView *)self headerFont];
  [headerFont pointSize];
  v4 = v3;

  return v4;
}

- (id)headerFont
{
  if (qword_1002517E0 != -1)
  {
    sub_10016F970();
  }

  v3 = qword_1002517D8;
  AnchoredValueCurrentWindowWidth(self);
  [v3 valueForSize:?];

  return [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
}

- (id)dayNumberFont
{
  [(LargeTextCompactYearMonthView *)self dayTextSize];

  return [UIFont systemFontOfSize:?];
}

- (double)dayTextSize
{
  if (qword_1002517F0 != -1)
  {
    sub_10016F984();
  }

  v3 = qword_1002517E8;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)circleSize
{
  if (qword_100251800 != -1)
  {
    sub_10016F998();
  }

  v3 = qword_1002517F8;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)daysYAdjustTop
{
  if (qword_100251810 != -1)
  {
    sub_10016F9AC();
  }

  v3 = qword_100251808;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)xSpacing
{
  if (qword_100251820 != -1)
  {
    sub_10016F9C0();
  }

  v3 = qword_100251818;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)ySpacing
{
  if (qword_100251830 != -1)
  {
    sub_10016F9D4();
  }

  v3 = qword_100251828;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (CGSize)roundedRectSizeForDayNumberString:(id)string
{
  v16.receiver = self;
  v16.super_class = LargeTextCompactYearMonthView;
  stringCopy = string;
  [(LargeTextCompactYearMonthView *)&v16 roundedRectSizeForDayNumberString:stringCopy];
  v6 = v5;
  v8 = v7;
  v17 = NSFontAttributeName;
  dayNumberFont = [(LargeTextCompactYearMonthView *)self dayNumberFont];
  v18 = dayNumberFont;
  v10 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [stringCopy sizeWithAttributes:v10];
  v12 = v11;

  v13 = v12 + 4.0;
  if (v6 >= v13)
  {
    v14 = v6;
  }

  else
  {
    v14 = v13;
  }

  v15 = v8;
  result.height = v15;
  result.width = v14;
  return result;
}

- (CGRect)frameForGridOfDays:(BOOL)days
{
  [(LargeTextCompactYearMonthView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(LargeTextCompactYearMonthView *)self daysYAdjustTop];
  v11 = v10;
  [(LargeTextCompactYearMonthView *)self yInset];
  v13 = v7 + v11 + v12;
  calendar = [(LargeTextCompactYearMonthView *)self calendar];
  v15 = [calendar copy];

  [v15 setFirstWeekday:CUIKOneIndexedWeekStart()];
  calendarDate = [(LargeTextCompactYearMonthView *)self calendarDate];
  date = [calendarDate date];
  [v15 rangeOfUnit:4096 inUnit:8 forDate:date];
  v19 = v18;

  [(LargeTextCompactYearMonthView *)self ySpacing];
  v21 = v20 * v19;

  v22 = v5;
  v23 = v13;
  v24 = v9;
  v25 = v21;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

@end