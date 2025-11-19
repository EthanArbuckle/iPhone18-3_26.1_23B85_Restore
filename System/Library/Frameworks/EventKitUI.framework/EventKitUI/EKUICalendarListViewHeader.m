@interface EKUICalendarListViewHeader
+ (BOOL)_isDateInCurrentYear:(id)a3 timeZone:(id)a4;
+ (BOOL)_overlayCalendarHasLongString;
+ (id)_mainDateStringWithDate:(id)a3 timeZone:(id)a4 abbreviate:(BOOL)a5;
+ (id)_overlayCalendarDateStringWithDate:(id)a3;
+ (id)_weekNumberStringWithDate:(id)a3 timeZone:(id)a4;
- (EKUICalendarListViewHeader)initWithReuseIdentifier:(id)a3;
- (id)calendarListContentConfiguration;
- (void)configureWithDate:(id)a3 timeZone:(id)a4;
@end

@implementation EKUICalendarListViewHeader

- (EKUICalendarListViewHeader)initWithReuseIdentifier:(id)a3
{
  v7.receiver = self;
  v7.super_class = EKUICalendarListViewHeader;
  v3 = [(EKUICalendarListViewHeader *)&v7 initWithReuseIdentifier:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [(EKUICalendarListViewHeader *)v3 calendarListContentConfiguration];
    [(EKUICalendarListViewHeader *)v4 setContentConfiguration:v5];
  }

  return v4;
}

- (void)configureWithDate:(id)a3 timeZone:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [(EKUICalendarListViewHeader *)self calendarListContentConfiguration];
  if (v19)
  {
    if (CUIKNSDateIsToday())
    {
      v8 = CUIKAppTintColor();
    }

    else
    {
      v9 = [MEMORY[0x1E69930C8] calendarDateWithDate:v19 timeZone:v6];
      v10 = [v9 calendarDateForEndOfDay];
      v11 = [v10 date];
      v12 = CUIKNowDate();
      v13 = [v11 compare:v12];

      if (v13 == -1)
      {
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] labelColor];
      }
      v8 = ;
    }

    v14 = v8;
    [v7 setMainTextColor:v8];
    v15 = [objc_opt_class() _mainDateStringWithDate:v19 timeZone:v6 abbreviate:0];
    [v7 setMainText:v15];

    v16 = [objc_opt_class() _mainDateStringWithDate:v19 timeZone:v6 abbreviate:1];
    [v7 setMainTextAbbr:v16];

    v17 = [objc_opt_class() _weekNumberStringWithDate:v19 timeZone:v6];
    [v7 setWeekNumberText:v17];

    v18 = [objc_opt_class() _overlayCalendarDateStringWithDate:v19];
    [v7 setAltCalendarText:v18];

    [v7 setUseAccessibilityLayoutForAltCalendarText:{objc_msgSend(objc_opt_class(), "_overlayCalendarHasLongString")}];
    [(EKUICalendarListViewHeader *)self setContentConfiguration:v7];
  }
}

+ (BOOL)_overlayCalendarHasLongString
{
  v2 = CUIKGetOverlayCalendar();
  v3 = [v2 calendarIdentifier];
  if ([v3 isEqualToString:*MEMORY[0x1E695D828]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695D860]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x1E695D8E0]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"dangi"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"islamic-civil"] ^ 1;
  }

  return v4;
}

+ (id)_overlayCalendarDateStringWithDate:(id)a3
{
  v3 = a3;
  v4 = CUIKGetOverlayCalendar();
  if (v4)
  {
    v5 = [MEMORY[0x1E69933D8] monthDayStringForDate:v3 inCalendar:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_weekNumberStringWithDate:(id)a3 timeZone:(id)a4
{
  v4 = a3;
  v5 = [MEMORY[0x1E6993470] sharedPreferences];
  v6 = [v5 showWeekNumbers];

  if (v6)
  {
    v7 = [v4 localizedWeekNumber];
    v8 = MEMORY[0x1E696AEC0];
    v9 = EventKitUIBundle();
    v10 = [v9 localizedStringForKey:@"W%@" value:&stru_1F4EF6790 table:0];
    v11 = [v8 localizedStringWithFormat:v10, v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_mainDateStringWithDate:(id)a3 timeZone:(id)a4 abbreviate:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (([a1 _isDateInCurrentYear:v8 timeZone:a4] & 1) != 0 || !v5)
  {
    v9 = CUIKEnDashDayStringForDate();
  }

  else
  {
    v9 = CUIKAbbreviatedEnDashDayStringForDate();
  }

  v10 = v9;

  return v10;
}

+ (BOOL)_isDateInCurrentYear:(id)a3 timeZone:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69930C8];
  v7 = a4;
  v8 = CUIKNowDate();
  v9 = [v6 calendarDateWithDate:v8 timeZone:v7];

  v10 = [v9 calendarDateForYear];
  v11 = [v10 calendarDateForEndOfYear];
  v12 = [v10 date];
  v13 = [v11 date];
  v14 = [v5 compare:v12] != -1 && objc_msgSend(v5, "compare:", v13) != 1;

  return v14;
}

- (id)calendarListContentConfiguration
{
  v2 = objc_alloc_init(EKUICalendarListContentConfiguration);
  v3 = [MEMORY[0x1E69DC888] labelColor];
  [(EKUICalendarListContentConfiguration *)v2 setMainTextColor:v3];

  v4 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(EKUICalendarListContentConfiguration *)v2 setSecondaryTextColor:v4];

  return v2;
}

@end