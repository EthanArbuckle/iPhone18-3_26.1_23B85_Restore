@interface LargeYearMonthView
+ (double)heightForInterfaceOrientation:(int64_t)orientation windowSize:(CGSize)size heightSizeClass:(int64_t)class;
- (BOOL)showWeekDayInitials;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)circleFrameYAdjustment;
- (double)circleSize;
- (double)dayTextSize;
- (double)daysYAdjustTop;
- (double)headerFontMaxSize;
- (double)headerXAdjust;
- (double)todayTextSize;
- (double)todayTextYAdjustment;
- (double)viewWidthForSizing;
- (double)weekDayInitialsAdjustTop;
- (double)xSpacing;
- (double)ySpacing;
- (id)dayNumberFont;
- (id)headerFont;
- (id)todayNumberFont;
- (id)weekDayInitialsFont;
@end

@implementation LargeYearMonthView

- (double)viewWidthForSizing
{
  v3 = AnchoredValueCurrentWindowWidth(self);
  window = [(LargeYearMonthView *)self window];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    window2 = [(LargeYearMonthView *)self window];
    [window2 mainContentSize];
    v3 = v7;
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(LargeYearMonthView *)self xSpacing:fits.width];
  v5 = v4 * [(LargeYearMonthView *)self daysInWeek]+ 2.0;
  v6 = EKUIInterfaceOrientationForViewHierarchy();
  v7 = objc_opt_class();
  EKUICurrentWindowSize();
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
  v6 = EKUIWindowSizeParadigmForWindowSize();
  v7 = v6;
  if (v6 > 0x1FFFFFF)
  {
    if (v6 == 0x2000000 || v6 == 0x20000000)
    {
LABEL_7:

      CalRoundToScreenScale();
      return result;
    }
  }

  else if (v6 == 0x80000 || v6 == 0x800000)
  {
    goto LABEL_7;
  }

  if (EKUIWindowInterfaceParadigmForWindowSize() == 8)
  {
    goto LABEL_7;
  }

  if (v7 == 0x2000)
  {
    return 300.0;
  }

  if (qword_100251F08 != -1)
  {
    sub_100170E7C();
  }

  v9 = qword_100251F00;

  [v9 valueForSize:width];
  return result;
}

- (double)headerXAdjust
{
  if (EKUICurrentWindowInterfaceParadigm() == 8)
  {

    CalRoundToScreenScale();
  }

  else
  {
    if (qword_100251F18 != -1)
    {
      sub_100170E90();
    }

    v4 = qword_100251F10;
    v5 = AnchoredValueCurrentWindowWidth(self);

    [v4 valueForSize:v5];
  }

  return result;
}

- (double)headerFontMaxSize
{
  v2 = EKUICurrentWindowInterfaceParadigm();
  v3 = 16.0;
  if ((v2 & 0xC) != 0)
  {
    return v3;
  }

  v4 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  v3 = 17.0;
  if ((v4 & 6) != 0)
  {
    return v3;
  }

  v5 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  v3 = 20.0;
  result = 30.0;
  if (v5 != 0x2000)
  {
    return v3;
  }

  return result;
}

- (id)headerFont
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100147EC0;
  block[3] = &unk_10020EB00;
  block[4] = self;
  if (qword_100251F28 != -1)
  {
    dispatch_once(&qword_100251F28, block);
  }

  return qword_100251F20;
}

- (id)dayNumberFont
{
  if (!qword_100251F30)
  {
    goto LABEL_5;
  }

  [(LargeYearMonthView *)self dayTextSize];
  v4 = v3 - *&qword_100250C98;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.0001)
  {
LABEL_5:
    [(LargeYearMonthView *)self dayTextSize];
    qword_100250C98 = v5;
    [(LargeYearMonthView *)self dayTextSize];
    v6 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    v7 = qword_100251F30;
    qword_100251F30 = v6;
  }

  v8 = qword_100251F30;

  return v8;
}

- (id)todayNumberFont
{
  if (!qword_100251F38)
  {
    goto LABEL_5;
  }

  [(LargeYearMonthView *)self todayTextSize];
  v4 = v3 - *&qword_100250CA0;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.0001)
  {
LABEL_5:
    [(LargeYearMonthView *)self todayTextSize];
    qword_100250CA0 = v5;
    [(LargeYearMonthView *)self todayTextSize];
    v6 = [UIFont boldSystemFontOfSize:?];
    v7 = qword_100251F38;
    qword_100251F38 = v6;
  }

  v8 = qword_100251F38;

  return v8;
}

- (double)dayTextSize
{
  v3 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  v4 = [(LargeYearMonthView *)self _useNewPhonePlusMetricsForSizeParadigm:v3];
  result = 9.0;
  if ((v4 & 1) == 0)
  {
    v6 = EKUICurrentWindowInterfaceParadigm();
    result = 8.0;
    if (v6 != 8)
    {
      result = 17.0;
      if (v3 != 0x2000)
      {
        if (qword_100251F48 != -1)
        {
          sub_100170EA4();
        }

        v7 = qword_100251F40;
        [(LargeYearMonthView *)self viewWidthForSizing];
        [v7 valueForSize:?];
        return fmin(v8, 19.5);
      }
    }
  }

  return result;
}

- (double)todayTextSize
{
  v3 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  v4 = [(LargeYearMonthView *)self _useNewPhonePlusMetricsForSizeParadigm:v3];
  result = 9.0;
  if ((v4 & 1) == 0)
  {
    if (EKUICurrentWindowInterfaceParadigm() == 8)
    {

      CalRoundToScreenScale();
    }

    else
    {
      result = 17.0;
      if (v3 != 0x2000)
      {
        if (qword_100251F58 != -1)
        {
          sub_100170EB8();
        }

        v6 = qword_100251F50;
        [(LargeYearMonthView *)self viewWidthForSizing];
        [v6 valueForSize:?];
        return fmin(v7, 19.5);
      }
    }
  }

  return result;
}

- (double)circleSize
{
  if (EKUICurrentWindowInterfaceParadigm() == 8)
  {

    CalRoundToScreenScale();
  }

  else
  {
    v4 = EKUICurrentWindowSizeParadigmForViewHierarchy();
    result = 28.0;
    if (v4 != 0x2000)
    {
      if (qword_100251F68 != -1)
      {
        sub_100170ECC();
      }

      v5 = qword_100251F60;
      [(LargeYearMonthView *)self viewWidthForSizing];
      [v5 valueForSize:?];
      return fmin(v6, 34.5);
    }
  }

  return result;
}

- (double)todayTextYAdjustment
{
  if (EKUICurrentWindowInterfaceParadigm() == 8)
  {

    CalRoundToScreenScale();
  }

  else
  {
    v4.receiver = self;
    v4.super_class = LargeYearMonthView;
    [(LargeYearMonthView *)&v4 todayTextYAdjustment];
  }

  return result;
}

- (double)circleFrameYAdjustment
{
  v3 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  if ([(LargeYearMonthView *)self _useNewPhonePlusMetricsForSizeParadigm:v3])
  {
    return 3.0;
  }

  if (EKUICurrentWindowInterfaceParadigm() == 8 || v3 == 0x2000)
  {

    CalRoundToScreenScale();
  }

  else
  {
    if (qword_100251F78 != -1)
    {
      sub_100170EE0();
    }

    v5 = qword_100251F70;
    [(LargeYearMonthView *)self viewWidthForSizing];

    [v5 valueForSize:?];
  }

  return result;
}

- (double)daysYAdjustTop
{
  v3 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  if ([(LargeYearMonthView *)self _useNewPhonePlusMetricsForSizeParadigm:v3]|| EKUICurrentWindowInterfaceParadigm() == 8)
  {

    CalRoundToScreenScale();
  }

  else if (v3 == 0x2000)
  {
    return 75.0;
  }

  else
  {
    if (qword_100251F88 != -1)
    {
      sub_100170EF4();
    }

    v5 = qword_100251F80;
    [(LargeYearMonthView *)self viewWidthForSizing];

    [v5 valueForSize:?];
  }

  return result;
}

- (double)xSpacing
{
  v3 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  if ([(LargeYearMonthView *)self _useNewPhonePlusMetricsForSizeParadigm:v3]|| EKUICurrentWindowInterfaceParadigm() == 8)
  {

    CalRoundToScreenScale();
  }

  else
  {
    result = 31.0;
    if (v3 != 0x2000)
    {
      if (qword_100251F98 != -1)
      {
        sub_100170F08();
      }

      v5 = qword_100251F90;
      [(LargeYearMonthView *)self viewWidthForSizing];
      [v5 valueForSize:?];
      return fmin(v6, 31.0);
    }
  }

  return result;
}

- (double)ySpacing
{
  if (EKUICurrentWindowInterfaceParadigm() == 8)
  {

    CalRoundToScreenScale();
  }

  else if (EKUICurrentWindowSizeParadigmForViewHierarchy() == 0x2000)
  {
    return 30.0;
  }

  else
  {
    if (qword_100251FA8 != -1)
    {
      sub_100170F1C();
    }

    v4 = qword_100251FA0;
    [(LargeYearMonthView *)self viewWidthForSizing];

    [v4 valueForSize:?];
  }

  return result;
}

- (BOOL)showWeekDayInitials
{
  v2 = +[NSLocale currentLocale];
  localeIdentifier = [v2 localeIdentifier];
  v4 = [localeIdentifier hasPrefix:@"ar"];

  if (v4)
  {
    return 0;
  }

  return EKUICurrentHeightSizeClassIsRegular();
}

- (id)weekDayInitialsFont
{
  if (qword_100251FB8 != -1)
  {
    sub_100170F30();
  }

  v3 = qword_100251FB0;
  [(LargeYearMonthView *)self viewWidthForSizing];
  [v3 valueForSize:?];

  return [UIFont systemFontOfSize:?];
}

- (double)weekDayInitialsAdjustTop
{
  if (EKUICurrentWindowInterfaceParadigm() == 8)
  {

    CalRoundToScreenScale();
  }

  else if (EKUICurrentWindowSizeParadigmForViewHierarchy() == 0x2000)
  {
    return 50.0;
  }

  else
  {
    if (qword_100251FC8 != -1)
    {
      sub_100170F44();
    }

    v4 = qword_100251FC0;
    [(LargeYearMonthView *)self viewWidthForSizing];

    [v4 valueForSize:?];
  }

  return result;
}

@end