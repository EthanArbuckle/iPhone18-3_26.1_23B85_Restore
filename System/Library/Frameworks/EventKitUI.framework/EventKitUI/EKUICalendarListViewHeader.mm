@interface EKUICalendarListViewHeader
+ (BOOL)_isDateInCurrentYear:(id)year timeZone:(id)zone;
+ (BOOL)_overlayCalendarHasLongString;
+ (id)_mainDateStringWithDate:(id)date timeZone:(id)zone abbreviate:(BOOL)abbreviate;
+ (id)_overlayCalendarDateStringWithDate:(id)date;
+ (id)_weekNumberStringWithDate:(id)date timeZone:(id)zone;
- (EKUICalendarListViewHeader)initWithReuseIdentifier:(id)identifier;
- (id)calendarListContentConfiguration;
- (void)configureWithDate:(id)date timeZone:(id)zone;
@end

@implementation EKUICalendarListViewHeader

- (EKUICalendarListViewHeader)initWithReuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = EKUICalendarListViewHeader;
  v3 = [(EKUICalendarListViewHeader *)&v7 initWithReuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    calendarListContentConfiguration = [(EKUICalendarListViewHeader *)v3 calendarListContentConfiguration];
    [(EKUICalendarListViewHeader *)v4 setContentConfiguration:calendarListContentConfiguration];
  }

  return v4;
}

- (void)configureWithDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  calendarListContentConfiguration = [(EKUICalendarListViewHeader *)self calendarListContentConfiguration];
  if (dateCopy)
  {
    if (CUIKNSDateIsToday())
    {
      v8 = CUIKAppTintColor();
    }

    else
    {
      v9 = [MEMORY[0x1E69930C8] calendarDateWithDate:dateCopy timeZone:zoneCopy];
      calendarDateForEndOfDay = [v9 calendarDateForEndOfDay];
      date = [calendarDateForEndOfDay date];
      v12 = CUIKNowDate();
      v13 = [date compare:v12];

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
    [calendarListContentConfiguration setMainTextColor:v8];
    v15 = [objc_opt_class() _mainDateStringWithDate:dateCopy timeZone:zoneCopy abbreviate:0];
    [calendarListContentConfiguration setMainText:v15];

    v16 = [objc_opt_class() _mainDateStringWithDate:dateCopy timeZone:zoneCopy abbreviate:1];
    [calendarListContentConfiguration setMainTextAbbr:v16];

    v17 = [objc_opt_class() _weekNumberStringWithDate:dateCopy timeZone:zoneCopy];
    [calendarListContentConfiguration setWeekNumberText:v17];

    v18 = [objc_opt_class() _overlayCalendarDateStringWithDate:dateCopy];
    [calendarListContentConfiguration setAltCalendarText:v18];

    [calendarListContentConfiguration setUseAccessibilityLayoutForAltCalendarText:{objc_msgSend(objc_opt_class(), "_overlayCalendarHasLongString")}];
    [(EKUICalendarListViewHeader *)self setContentConfiguration:calendarListContentConfiguration];
  }
}

+ (BOOL)_overlayCalendarHasLongString
{
  v2 = CUIKGetOverlayCalendar();
  calendarIdentifier = [v2 calendarIdentifier];
  if ([calendarIdentifier isEqualToString:*MEMORY[0x1E695D828]] & 1) != 0 || (objc_msgSend(calendarIdentifier, "isEqualToString:", *MEMORY[0x1E695D860]) & 1) != 0 || (objc_msgSend(calendarIdentifier, "isEqualToString:", *MEMORY[0x1E695D8E0]) & 1) != 0 || (objc_msgSend(calendarIdentifier, "isEqualToString:", @"dangi"))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [calendarIdentifier isEqualToString:@"islamic-civil"] ^ 1;
  }

  return v4;
}

+ (id)_overlayCalendarDateStringWithDate:(id)date
{
  dateCopy = date;
  v4 = CUIKGetOverlayCalendar();
  if (v4)
  {
    v5 = [MEMORY[0x1E69933D8] monthDayStringForDate:dateCopy inCalendar:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_weekNumberStringWithDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  mEMORY[0x1E6993470] = [MEMORY[0x1E6993470] sharedPreferences];
  showWeekNumbers = [mEMORY[0x1E6993470] showWeekNumbers];

  if (showWeekNumbers)
  {
    localizedWeekNumber = [dateCopy localizedWeekNumber];
    v8 = MEMORY[0x1E696AEC0];
    v9 = EventKitUIBundle();
    v10 = [v9 localizedStringForKey:@"W%@" value:&stru_1F4EF6790 table:0];
    v11 = [v8 localizedStringWithFormat:v10, localizedWeekNumber];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)_mainDateStringWithDate:(id)date timeZone:(id)zone abbreviate:(BOOL)abbreviate
{
  abbreviateCopy = abbreviate;
  dateCopy = date;
  if (([self _isDateInCurrentYear:dateCopy timeZone:zone] & 1) != 0 || !abbreviateCopy)
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

+ (BOOL)_isDateInCurrentYear:(id)year timeZone:(id)zone
{
  yearCopy = year;
  v6 = MEMORY[0x1E69930C8];
  zoneCopy = zone;
  v8 = CUIKNowDate();
  v9 = [v6 calendarDateWithDate:v8 timeZone:zoneCopy];

  calendarDateForYear = [v9 calendarDateForYear];
  calendarDateForEndOfYear = [calendarDateForYear calendarDateForEndOfYear];
  date = [calendarDateForYear date];
  date2 = [calendarDateForEndOfYear date];
  v14 = [yearCopy compare:date] != -1 && objc_msgSend(yearCopy, "compare:", date2) != 1;

  return v14;
}

- (id)calendarListContentConfiguration
{
  v2 = objc_alloc_init(EKUICalendarListContentConfiguration);
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(EKUICalendarListContentConfiguration *)v2 setMainTextColor:labelColor];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(EKUICalendarListContentConfiguration *)v2 setSecondaryTextColor:secondaryLabelColor];

  return v2;
}

@end