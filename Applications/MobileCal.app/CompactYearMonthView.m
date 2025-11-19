@interface CompactYearMonthView
+ (double)heightForInterfaceOrientation:(int64_t)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5;
- (CGRect)frameForGridOfDays:(BOOL)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CompactYearMonthView)initWithCalendarDate:(id)a3 calendar:(id)a4;
- (double)_gridOfDaysHeightAdjustment;
- (double)_gridOfDaysYAdjustment;
- (double)circleFrameYAdjustment;
- (double)circleSize;
- (double)dayNumberKerning;
- (double)dayTextSize;
- (double)daysYAdjustTop;
- (double)headerFontMaxSize;
- (double)todayNumberKerning;
- (double)todayTextSize;
- (double)xInset;
- (double)xSpacing;
- (double)ySpacing;
- (id)dayNumberFont;
- (id)headerFont;
- (id)todayNumberFont;
- (void)_localeChanged:(id)a3;
@end

@implementation CompactYearMonthView

- (CompactYearMonthView)initWithCalendarDate:(id)a3 calendar:(id)a4
{
  v8.receiver = self;
  v8.super_class = CompactYearMonthView;
  v4 = [(CompactYearMonthView *)&v8 init:a3];
  if (v4)
  {
    v5 = +[UIColor systemBackgroundColor];
    [(CompactYearMonthView *)v4 setBackgroundColor:v5];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v4 selector:"_localeChanged:" name:NSCurrentLocaleDidChangeNotification object:0];
  }

  return v4;
}

- (void)_localeChanged:(id)a3
{
  v3 = qword_100251BC8;
  qword_100251BC8 = 0;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  if (qword_100251BD8 != -1)
  {
    sub_1001709D8();
  }

  v3 = qword_100251BD0;
  EKUICurrentWindowSize();
  [v3 valueForSize:?];
  v5 = v4;
  EKUICurrentWindowSize();
  v6 = EKUIWindowSizeParadigmForWindowSize();
  if (v6 == 0x400000)
  {
    *&v5 = 110.0;
  }

  else if (v6 == 0x1000000)
  {
    *&v5 = 122.0;
  }

  v7 = EKUIInterfaceOrientationForViewHierarchy();
  v8 = objc_opt_class();
  EKUICurrentWindowSize();
  [v8 heightForInterfaceOrientation:v7 windowSize:EKUIHeightSizeClassForViewHierarchy() heightSizeClass:{v9, v10}];
  v12 = v11;
  v13 = *&v5;
  result.height = v12;
  result.width = v13;
  return result;
}

+ (double)heightForInterfaceOrientation:(int64_t)a3 windowSize:(CGSize)a4 heightSizeClass:(int64_t)a5
{
  width = a4.width;
  if (qword_100251BE8 != -1)
  {
    sub_1001709EC();
  }

  v6 = EKUIWindowSizeParadigmForWindowSize();
  if (v6 > 0xFFFFFF)
  {
    switch(v6)
    {
      case 0x1000000:
        return 161.0;
      case 0x4000000:
        return 150.0;
      case 0x10000000:
        return 165.0;
    }
  }

  else
  {
    switch(v6)
    {
      case 0x20000:
        return 138.0;
      case 0x40000:
        return 147.0;
      case 0x400000:
        return 148.0;
    }
  }

  v8 = qword_100251BE0;

  [v8 valueForSize:width];
  return result;
}

- (CGRect)frameForGridOfDays:(BOOL)a3
{
  v3 = a3;
  [(CompactYearMonthView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CompactYearMonthView *)self daysYAdjustTop];
  v12 = v11;
  [(CompactYearMonthView *)self yInset];
  v14 = v8 + v12 + v13 + -1.5;
  v15 = [(CompactYearMonthView *)self calendar];
  v16 = [v15 copy];

  [v16 setFirstWeekday:CUIKOneIndexedWeekStart()];
  v17 = [(CompactYearMonthView *)self calendarDate];
  v18 = [v17 date];
  [v16 rangeOfUnit:4096 inUnit:8 forDate:v18];
  v20 = v19;

  [(CompactYearMonthView *)self ySpacing];
  v22 = v21 * v20;
  if (v3)
  {
    [(CompactYearMonthView *)self _gridOfDaysYAdjustment];
    v14 = v14 + v23;
    [(CompactYearMonthView *)self _gridOfDaysHeightAdjustment];
    v22 = v22 + v24;
  }

  v25 = v6;
  v26 = v14;
  v27 = v10;
  v28 = v22;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (double)_gridOfDaysYAdjustment
{
  if (qword_100251BF8 != -1)
  {
    sub_100170A00();
  }

  v3 = qword_100251BF0;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)_gridOfDaysHeightAdjustment
{
  if (qword_100251C08 != -1)
  {
    sub_100170A14();
  }

  v3 = qword_100251C00;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)xInset
{
  if (qword_100251C18 != -1)
  {
    sub_100170A28();
  }

  v3 = qword_100251C10;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)headerFontMaxSize
{
  v2 = EKUICurrentWindowSizeParadigmForViewHierarchy();
  result = 17.0;
  if ((v2 & 6) == 0)
  {
    return 20.0;
  }

  return result;
}

- (id)headerFont
{
  v3 = qword_100251C20;
  if (!qword_100251C20)
  {
    v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle3 addingSymbolicTraits:32770 options:0];
    [(CompactYearMonthView *)self headerFontMaxSize];
    v5 = [UIFont fontWithDescriptor:v4 size:?];
    v6 = qword_100251C20;
    qword_100251C20 = v5;

    v3 = qword_100251C20;
  }

  return v3;
}

- (id)dayNumberFont
{
  if (!qword_100251C28)
  {
    goto LABEL_5;
  }

  [(CompactYearMonthView *)self dayTextSize];
  v4 = v3 - *&qword_1002502C0;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.0001)
  {
LABEL_5:
    [(CompactYearMonthView *)self dayTextSize];
    qword_1002502C0 = v5;
    [(CompactYearMonthView *)self dayTextSize];
    v6 = [UIFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];
    v7 = qword_100251C28;
    qword_100251C28 = v6;
  }

  v8 = qword_100251C28;

  return v8;
}

- (id)todayNumberFont
{
  if (!qword_100251C30)
  {
    goto LABEL_5;
  }

  [(CompactYearMonthView *)self todayTextSize];
  v4 = v3 - *&qword_1002502C8;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.0001)
  {
LABEL_5:
    [(CompactYearMonthView *)self todayTextSize];
    qword_1002502C8 = v5;
    [(CompactYearMonthView *)self todayTextSize];
    v6 = [UIFont boldSystemFontOfSize:?];
    v7 = qword_100251C30;
    qword_100251C30 = v6;
  }

  v8 = qword_100251C30;

  return v8;
}

- (double)dayTextSize
{
  v3 = qword_100251BC8;
  if (!qword_100251BC8)
  {
    v4 = objc_opt_new();
    v5 = qword_100251BC8;
    qword_100251BC8 = v4;

    v6 = +[NSLocale currentLocale];
    v7 = [v6 objectForKey:NSLocaleLanguageCode];

    v8 = CUIKLocalizedStringForInteger();
    v9 = [v8 isEqual:@"൧"];

    v10 = CUIKLocalizedStringForInteger();
    v11 = [v10 isEqual:@"௧"];

    v12 = 8.0;
    v13 = 7.0;
    v14 = 6.0;
    v15 = 5.0;
    v16 = 7.666;
    if ((![v7 isEqual:@"ml"] || (v9 & 1) == 0) && (objc_msgSend(v7, "isEqual:", @"ta") & v11 & 1) == 0)
    {
      v12 = 11.0;
      v13 = 10.0;
      v14 = 9.0;
      v15 = 8.0;
      v16 = 10.6666667;
    }

    [v4 addAnchoredValue:2 forWindowSizeWidth:v15];
    [v4 addAnchoredValue:16 forWindowSizeWidth:v14];
    [v4 addAnchoredValue:32 forWindowSizeWidth:v16];
    [v4 addAnchoredValue:0x400000 forWindowSizeWidth:v13];
    [v4 addAnchoredValue:0x1000000 forWindowSizeWidth:v12];
    [v4 addAnchoredValue:128 forWindowSizeWidth:v12];

    v3 = qword_100251BC8;
  }

  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)todayTextSize
{
  if (qword_100251C40 != -1)
  {
    sub_100170A3C();
  }

  v3 = qword_100251C38;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)circleSize
{
  if (qword_100251C50 != -1)
  {
    sub_100170A50();
  }

  v3 = qword_100251C48;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)daysYAdjustTop
{
  if (qword_100251C60 != -1)
  {
    sub_100170A64();
  }

  if (EKUICurrentWindowSizeParadigmForViewHierarchy() == 0x20000)
  {
    return 32.0;
  }

  v4 = CUIKCurrentLocaleRequiresIndianLanguageAdjustments();
  v5 = qword_100251C58;
  AnchoredValueCurrentWindowWidth(self);
  [v5 valueForSize:?];
  v7 = 3.0;
  if (v4)
  {
    v7 = 10.0;
  }

  return v7 + v6;
}

- (double)xSpacing
{
  if (qword_100251C70 != -1)
  {
    sub_100170A78();
  }

  v3 = qword_100251C68;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)ySpacing
{
  if (qword_100251C80 != -1)
  {
    sub_100170A8C();
  }

  v3 = qword_100251C78;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)dayNumberKerning
{
  if (qword_100251C90 != -1)
  {
    sub_100170AA0();
  }

  v3 = qword_100251C88;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)todayNumberKerning
{
  if (qword_100251CA0 != -1)
  {
    sub_100170AB4();
  }

  v3 = qword_100251C98;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

- (double)circleFrameYAdjustment
{
  if (qword_100251CB0 != -1)
  {
    sub_100170AC8();
  }

  v3 = qword_100251CA8;
  AnchoredValueCurrentWindowWidth(self);

  [v3 valueForSize:?];
  return result;
}

@end