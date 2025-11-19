@interface LargeTextLargeYearMonthView
+ (BOOL)_showWeekDayInitialsForHeightSizeClass:(int64_t)a3;
+ (double)_dayTextSizeForWindowSize:(CGSize)a3;
+ (double)_daysYAdjustTopForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5;
+ (double)_daysYAdjustTopForWindowSize:(CGSize)a3 heightSizeClass:(int64_t)a4;
+ (double)_headerFontSizeForWindowSize:(CGSize)a3;
+ (double)_heightForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5;
+ (double)_xSpacingForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4;
+ (double)_xSpacingForWindowSize:(CGSize)a3;
+ (double)_ySpacingForWindowSize:(CGSize)a3;
+ (double)heightForInterfaceOrientation:(int64_t)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5;
+ (double)leftMarginForWindowSize:(CGSize)a3;
+ (double)rightMarginForWindowSize:(CGSize)a3;
+ (id)_dayNumberFontForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4;
+ (id)_dayNumberFontForWindowSize:(CGSize)a3;
+ (id)_headerFontForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4;
+ (id)_headerFontForWindowSize:(CGSize)a3;
+ (id)_weekDayInitialsFontForWindowSize:(CGSize)a3;
+ (unint64_t)numberOfMonthsPerRowForWindowSize:(CGSize)a3;
- (BOOL)showWeekDayInitials;
- (CGSize)_availableSpace;
- (CGSize)roundedRectSizeForDayNumberString:(id)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (double)circleSize;
- (double)dayTextSize;
- (double)daysYAdjustTop;
- (double)headerFontMaxSize;
- (double)headerFontMinSize;
- (double)weekDayInitialsAdjustTop;
- (double)xSpacing;
- (double)ySpacing;
- (id)dayNumberFont;
- (id)headerFont;
- (id)todayNumberFont;
- (id)weekDayInitialsFont;
@end

@implementation LargeTextLargeYearMonthView

+ (unint64_t)numberOfMonthsPerRowForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = EKUIWindowInterfaceParadigmForWindowSize();
  if (vabdd_f64(*&qword_100251FD0, width) >= 2.22044605e-16 || qword_100250CA8 != v6)
  {
    v8 = v6;
    if (v6 == 8)
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    qword_100251FD8 = v9;
    v10 = [LargeYearViewController defaultMonthsPerRowForWindowSize:width, height];
    if (v10 > v9)
    {
      v11 = v10;
      while (1)
      {
        [a1 _headerFontSizeForNumberOfMonthsPerRow:v11 windowSize:{width, height}];
        v13 = v12;
        v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
        [v14 pointSize];
        v16 = v15;

        if (v13 >= v16)
        {
          break;
        }

        if (--v11 <= v9)
        {
          goto LABEL_14;
        }
      }

      qword_100251FD8 = v11;
    }

LABEL_14:
    qword_100251FD0 = *&width;
    qword_100250CA8 = v8;
  }

  return qword_100251FD8;
}

+ (double)leftMarginForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [a1 numberOfMonthsPerRowForWindowSize:?];

  [a1 _leftMarginForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

+ (double)rightMarginForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [a1 numberOfMonthsPerRowForWindowSize:?];

  [a1 _rightMarginForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

- (CGSize)_availableSpace
{
  v3 = [(LargeTextLargeYearMonthView *)self window];

  if (v3)
  {
    v4 = [(LargeTextLargeYearMonthView *)self window];
    [v4 mainContentSize];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {

    EKUICurrentWindowSize();
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(LargeTextLargeYearMonthView *)self xSpacing:a3.width];
  v5 = v4 * 7.0;
  v6 = EKUIInterfaceOrientationForViewHierarchy();
  v7 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];
  [v7 heightForInterfaceOrientation:v6 windowSize:EKUIHeightSizeClassForViewHierarchy() heightSizeClass:{v8, v9}];
  v11 = v10;
  v12 = v5;
  result.height = v11;
  result.width = v12;
  return result;
}

+ (double)heightForInterfaceOrientation:(int64_t)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5
{
  width = a4.width;
  if (vabdd_f64(*&qword_100251FE0, a4.width) < 2.22044605e-16)
  {
    return *&qword_100251FE8;
  }

  [a1 _heightForNumberOfMonthsPerRow:objc_msgSend(a1 windowSize:"numberOfMonthsPerRowForWindowSize:" heightSizeClass:{a3, a4.width, a4.height), a5, a4.width, a4.height}];
  qword_100251FE8 = *&result;
  qword_100251FE0 = *&width;
  return result;
}

+ (double)_heightForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  [a1 _daysYAdjustTopForNumberOfMonthsPerRow:a3 windowSize:a5 heightSizeClass:?];
  v10 = v9;
  [a1 _ySpacingForNumberOfMonthsPerRow:a3 windowSize:{width, height}];
  return v10 + v11 * 6.0;
}

+ (double)_headerFontSizeForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [a1 numberOfMonthsPerRowForWindowSize:?];

  [a1 _headerFontSizeForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

- (double)headerFontMaxSize
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];

  [v3 _headerFontSizeForWindowSize:?];
  return result;
}

- (double)headerFontMinSize
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];

  [v3 _headerFontSizeForWindowSize:?];
  return result;
}

- (id)headerFont
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];

  return [v3 _headerFontForWindowSize:?];
}

+ (id)_headerFontForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [a1 numberOfMonthsPerRowForWindowSize:?];

  return [a1 _headerFontForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
}

+ (id)_headerFontForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4
{
  [a1 _headerFontSizeForNumberOfMonthsPerRow:a3 windowSize:{a4.width, a4.height}];
  v5 = qword_100251FF0;
  if (!qword_100251FF0 || vabdd_f64(v4, *&qword_100250CB0) >= 2.22044605e-16)
  {
    qword_100250CB0 = *&v4;
    v6 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    v7 = qword_100251FF0;
    qword_100251FF0 = v6;

    v5 = qword_100251FF0;
  }

  return v5;
}

- (id)dayNumberFont
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];

  return [v3 _dayNumberFontForWindowSize:?];
}

+ (id)_dayNumberFontForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [a1 numberOfMonthsPerRowForWindowSize:?];

  return [a1 _dayNumberFontForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
}

+ (id)_dayNumberFontForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4
{
  [a1 _dayTextSizeForNumberOfMonthsPerRow:a3 windowSize:{a4.width, a4.height}];
  v5 = qword_100251FF8;
  if (!qword_100251FF8)
  {
    goto LABEL_5;
  }

  v6 = v4 - *&qword_100250CB8;
  if (v4 - *&qword_100250CB8 < 0.0)
  {
    v6 = -v6;
  }

  if (v6 > 0.0001)
  {
LABEL_5:
    qword_100250CB8 = *&v4;
    v7 = [UIFont systemFontOfSize:?];
    v8 = qword_100251FF8;
    qword_100251FF8 = v7;

    v5 = qword_100251FF8;
  }

  return v5;
}

- (id)todayNumberFont
{
  if (!qword_100252000)
  {
    goto LABEL_5;
  }

  [(LargeTextLargeYearMonthView *)self todayTextSize];
  v4 = v3 - *&qword_100250CC0;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.0001)
  {
LABEL_5:
    [(LargeTextLargeYearMonthView *)self todayTextSize];
    qword_100250CC0 = v5;
    [(LargeTextLargeYearMonthView *)self todayTextSize];
    v6 = [UIFont boldSystemFontOfSize:?];
    v7 = qword_100252000;
    qword_100252000 = v6;
  }

  v8 = qword_100252000;

  return v8;
}

- (double)dayTextSize
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];

  [v3 _dayTextSizeForWindowSize:?];
  return result;
}

+ (double)_dayTextSizeForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [a1 numberOfMonthsPerRowForWindowSize:?];

  [a1 _dayTextSizeForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

- (double)circleSize
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];
  [v3 _dayTextSizeForWindowSize:?];

  CalRoundToScreenScale();
  return result;
}

- (double)daysYAdjustTop
{
  [(LargeTextLargeYearMonthView *)self _availableSpace];
  v3 = v2;
  v5 = v4;
  v6 = EKUIHeightSizeClassForViewHierarchy();
  if (CUIKCurrentLocaleRequiresIndianLanguageAdjustments())
  {
    v7 = 10.0;
  }

  else
  {
    v7 = 3.0;
  }

  [objc_opt_class() _daysYAdjustTopForWindowSize:v6 heightSizeClass:{v3, v5}];
  return v7 + v8;
}

+ (double)_daysYAdjustTopForWindowSize:(CGSize)a3 heightSizeClass:(int64_t)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [a1 numberOfMonthsPerRowForWindowSize:?];

  [a1 _daysYAdjustTopForNumberOfMonthsPerRow:v8 windowSize:a4 heightSizeClass:{width, height}];
  return result;
}

+ (double)_daysYAdjustTopForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5
{
  height = a4.height;
  width = a4.width;
  v10 = [a1 _headerFontForNumberOfMonthsPerRow:? windowSize:?];
  [v10 _bodyLeading];

  if ([a1 _showWeekDayInitialsForHeightSizeClass:a5])
  {
    v11 = [a1 _weekDayInitialsFontForNumberOfMonthsPerRow:a3 windowSize:{width, height}];
    [v11 _bodyLeading];
  }

  CalRoundToScreenScale();
  return result;
}

- (double)xSpacing
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];

  [v3 _xSpacingForWindowSize:?];
  return result;
}

+ (double)_xSpacingForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [a1 numberOfMonthsPerRowForWindowSize:?];

  [a1 _xSpacingForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

+ (double)_xSpacingForNumberOfMonthsPerRow:(unint64_t)a3 windowSize:(CGSize)a4
{
  if (EKUIWindowInterfaceParadigmForWindowSize() == 8)
  {
    EKUIWidthForWindowSizeParadigm();
  }

  CalFloorToScreenScale();
  return result;
}

- (double)ySpacing
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];

  [v3 _ySpacingForWindowSize:?];
  return result;
}

+ (double)_ySpacingForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [a1 numberOfMonthsPerRowForWindowSize:?];

  [a1 _ySpacingForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

- (BOOL)showWeekDayInitials
{
  v2 = objc_opt_class();
  v3 = EKUIHeightSizeClassForViewHierarchy();

  return [v2 _showWeekDayInitialsForHeightSizeClass:v3];
}

+ (BOOL)_showWeekDayInitialsForHeightSizeClass:(int64_t)a3
{
  v4 = +[NSLocale currentLocale];
  v5 = [v4 localeIdentifier];
  v6 = [v5 hasPrefix:@"ar"];

  if (v6)
  {
    return 0;
  }

  EKUIMultiwindowAssert();
  return a3 == 2;
}

- (id)weekDayInitialsFont
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];

  return [v3 _weekDayInitialsFontForWindowSize:?];
}

+ (id)_weekDayInitialsFontForWindowSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [a1 numberOfMonthsPerRowForWindowSize:?];

  return [a1 _weekDayInitialsFontForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
}

- (double)weekDayInitialsAdjustTop
{
  if (CUIKCurrentLocaleRequiresIndianLanguageAdjustments())
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 3.0;
  }

  v4 = [(LargeTextLargeYearMonthView *)self headerFont];
  [v4 _bodyLeading];
  CalRoundToScreenScale();
  v6 = v3 + v5;

  return v6;
}

- (CGSize)roundedRectSizeForDayNumberString:(id)a3
{
  v15.receiver = self;
  v15.super_class = LargeTextLargeYearMonthView;
  v4 = a3;
  [(LargeTextLargeYearMonthView *)&v15 roundedRectSizeForDayNumberString:v4];
  v6 = v5;
  v8 = v7;
  v16 = NSFontAttributeName;
  v9 = [(LargeTextLargeYearMonthView *)self dayNumberFont];
  v17 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [v4 sizeWithAttributes:v10];

  [(LargeTextLargeYearMonthView *)self dayTextSize];
  CalRoundToScreenScale();
  v12 = v11;

  if (v6 >= v12)
  {
    v13 = v6;
  }

  else
  {
    v13 = v12;
  }

  v14 = v8;
  result.height = v14;
  result.width = v13;
  return result;
}

@end