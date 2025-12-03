@interface LargeTextLargeYearMonthView
+ (BOOL)_showWeekDayInitialsForHeightSizeClass:(int64_t)class;
+ (double)_dayTextSizeForWindowSize:(CGSize)size;
+ (double)_daysYAdjustTopForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size heightSizeClass:(int64_t)class;
+ (double)_daysYAdjustTopForWindowSize:(CGSize)size heightSizeClass:(int64_t)class;
+ (double)_headerFontSizeForWindowSize:(CGSize)size;
+ (double)_heightForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size heightSizeClass:(int64_t)class;
+ (double)_xSpacingForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size;
+ (double)_xSpacingForWindowSize:(CGSize)size;
+ (double)_ySpacingForWindowSize:(CGSize)size;
+ (double)heightForInterfaceOrientation:(int64_t)orientation windowSize:(CGSize)size heightSizeClass:(int64_t)class;
+ (double)leftMarginForWindowSize:(CGSize)size;
+ (double)rightMarginForWindowSize:(CGSize)size;
+ (id)_dayNumberFontForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size;
+ (id)_dayNumberFontForWindowSize:(CGSize)size;
+ (id)_headerFontForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size;
+ (id)_headerFontForWindowSize:(CGSize)size;
+ (id)_weekDayInitialsFontForWindowSize:(CGSize)size;
+ (unint64_t)numberOfMonthsPerRowForWindowSize:(CGSize)size;
- (BOOL)showWeekDayInitials;
- (CGSize)_availableSpace;
- (CGSize)roundedRectSizeForDayNumberString:(id)string;
- (CGSize)sizeThatFits:(CGSize)fits;
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

+ (unint64_t)numberOfMonthsPerRowForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
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
    height = [LargeYearViewController defaultMonthsPerRowForWindowSize:width, height];
    if (height > v9)
    {
      v11 = height;
      while (1)
      {
        [self _headerFontSizeForNumberOfMonthsPerRow:v11 windowSize:{width, height}];
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

+ (double)leftMarginForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfMonthsPerRowForWindowSize:?];

  [self _leftMarginForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

+ (double)rightMarginForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfMonthsPerRowForWindowSize:?];

  [self _rightMarginForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

- (CGSize)_availableSpace
{
  window = [(LargeTextLargeYearMonthView *)self window];

  if (window)
  {
    window2 = [(LargeTextLargeYearMonthView *)self window];
    [window2 mainContentSize];
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(LargeTextLargeYearMonthView *)self xSpacing:fits.width];
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

+ (double)heightForInterfaceOrientation:(int64_t)orientation windowSize:(CGSize)size heightSizeClass:(int64_t)class
{
  width = size.width;
  if (vabdd_f64(*&qword_100251FE0, size.width) < 2.22044605e-16)
  {
    return *&qword_100251FE8;
  }

  [self _heightForNumberOfMonthsPerRow:objc_msgSend(self windowSize:"numberOfMonthsPerRowForWindowSize:" heightSizeClass:{orientation, size.width, size.height), class, size.width, size.height}];
  qword_100251FE8 = *&result;
  qword_100251FE0 = *&width;
  return result;
}

+ (double)_heightForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size heightSizeClass:(int64_t)class
{
  height = size.height;
  width = size.width;
  [self _daysYAdjustTopForNumberOfMonthsPerRow:row windowSize:class heightSizeClass:?];
  v10 = v9;
  [self _ySpacingForNumberOfMonthsPerRow:row windowSize:{width, height}];
  return v10 + v11 * 6.0;
}

+ (double)_headerFontSizeForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfMonthsPerRowForWindowSize:?];

  [self _headerFontSizeForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
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

+ (id)_headerFontForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfMonthsPerRowForWindowSize:?];

  return [self _headerFontForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
}

+ (id)_headerFontForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size
{
  [self _headerFontSizeForNumberOfMonthsPerRow:row windowSize:{size.width, size.height}];
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

+ (id)_dayNumberFontForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfMonthsPerRowForWindowSize:?];

  return [self _dayNumberFontForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
}

+ (id)_dayNumberFontForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size
{
  [self _dayTextSizeForNumberOfMonthsPerRow:row windowSize:{size.width, size.height}];
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

+ (double)_dayTextSizeForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfMonthsPerRowForWindowSize:?];

  [self _dayTextSizeForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
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

+ (double)_daysYAdjustTopForWindowSize:(CGSize)size heightSizeClass:(int64_t)class
{
  height = size.height;
  width = size.width;
  v8 = [self numberOfMonthsPerRowForWindowSize:?];

  [self _daysYAdjustTopForNumberOfMonthsPerRow:v8 windowSize:class heightSizeClass:{width, height}];
  return result;
}

+ (double)_daysYAdjustTopForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size heightSizeClass:(int64_t)class
{
  height = size.height;
  width = size.width;
  v10 = [self _headerFontForNumberOfMonthsPerRow:? windowSize:?];
  [v10 _bodyLeading];

  if ([self _showWeekDayInitialsForHeightSizeClass:class])
  {
    v11 = [self _weekDayInitialsFontForNumberOfMonthsPerRow:row windowSize:{width, height}];
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

+ (double)_xSpacingForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfMonthsPerRowForWindowSize:?];

  [self _xSpacingForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

+ (double)_xSpacingForNumberOfMonthsPerRow:(unint64_t)row windowSize:(CGSize)size
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

+ (double)_ySpacingForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfMonthsPerRowForWindowSize:?];

  [self _ySpacingForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
  return result;
}

- (BOOL)showWeekDayInitials
{
  v2 = objc_opt_class();
  v3 = EKUIHeightSizeClassForViewHierarchy();

  return [v2 _showWeekDayInitialsForHeightSizeClass:v3];
}

+ (BOOL)_showWeekDayInitialsForHeightSizeClass:(int64_t)class
{
  v4 = +[NSLocale currentLocale];
  localeIdentifier = [v4 localeIdentifier];
  v6 = [localeIdentifier hasPrefix:@"ar"];

  if (v6)
  {
    return 0;
  }

  EKUIMultiwindowAssert();
  return class == 2;
}

- (id)weekDayInitialsFont
{
  v3 = objc_opt_class();
  [(LargeTextLargeYearMonthView *)self _availableSpace];

  return [v3 _weekDayInitialsFontForWindowSize:?];
}

+ (id)_weekDayInitialsFontForWindowSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [self numberOfMonthsPerRowForWindowSize:?];

  return [self _weekDayInitialsFontForNumberOfMonthsPerRow:v6 windowSize:{width, height}];
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

  headerFont = [(LargeTextLargeYearMonthView *)self headerFont];
  [headerFont _bodyLeading];
  CalRoundToScreenScale();
  v6 = v3 + v5;

  return v6;
}

- (CGSize)roundedRectSizeForDayNumberString:(id)string
{
  v15.receiver = self;
  v15.super_class = LargeTextLargeYearMonthView;
  stringCopy = string;
  [(LargeTextLargeYearMonthView *)&v15 roundedRectSizeForDayNumberString:stringCopy];
  v6 = v5;
  v8 = v7;
  v16 = NSFontAttributeName;
  dayNumberFont = [(LargeTextLargeYearMonthView *)self dayNumberFont];
  v17 = dayNumberFont;
  v10 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  [stringCopy sizeWithAttributes:v10];

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