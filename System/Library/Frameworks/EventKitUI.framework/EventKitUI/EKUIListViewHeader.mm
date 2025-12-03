@interface EKUIListViewHeader
+ (BOOL)_isDateInCurrentYear:(id)year currentYearStart:(id *)start currentYearEnd:(id *)end timeZone:(id)zone;
+ (id)_stringForHeaderDate:(id)date currentYearStart:(id *)start currentYearEnd:(id *)end timeZone:(id)zone;
+ (id)headerWithTableView:(id)view reuseIdentifier:(id)identifier date:(id)date timeZone:(id)zone currentYearStart:(id *)start currentYearEnd:(id *)end;
@end

@implementation EKUIListViewHeader

+ (id)headerWithTableView:(id)view reuseIdentifier:(id)identifier date:(id)date timeZone:(id)zone currentYearStart:(id *)start currentYearEnd:(id *)end
{
  dateCopy = date;
  zoneCopy = zone;
  v16 = [view dequeueReusableHeaderFooterViewWithIdentifier:identifier];
  plainHeaderConfiguration = [MEMORY[0x1E69DCC28] plainHeaderConfiguration];
  if (dateCopy)
  {
    v18 = [self _stringForHeaderDate:dateCopy currentYearStart:start currentYearEnd:end timeZone:zoneCopy];
    [plainHeaderConfiguration setText:v18];
    [plainHeaderConfiguration setPrefersSideBySideTextAndSecondaryText:1];
    if (CUIKNSDateIsToday())
    {
      CUIKAppTintColor();
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v19 = ;
    textProperties = [plainHeaderConfiguration textProperties];
    [textProperties setColor:v19];

    v21 = CUIKGetOverlayCalendar();
    if (v21)
    {
      v22 = [MEMORY[0x1E69933D8] monthDayStringForDate:dateCopy inCalendar:v21];
      [plainHeaderConfiguration setSecondaryText:v22];
    }

    else
    {
      [plainHeaderConfiguration setSecondaryText:0];
    }
  }

  [v16 setContentConfiguration:plainHeaderConfiguration];

  return v16;
}

+ (id)_stringForHeaderDate:(id)date currentYearStart:(id *)start currentYearEnd:(id *)end timeZone:(id)zone
{
  dateCopy = date;
  if ([self _isDateInCurrentYear:dateCopy currentYearStart:start currentYearEnd:end timeZone:zone])
  {
    CUIKLongDayStringForDateNoYear();
  }

  else
  {
    CUIKLongDayStringForDate();
  }
  v11 = ;

  localizedUppercaseString = [v11 localizedUppercaseString];

  return localizedUppercaseString;
}

+ (BOOL)_isDateInCurrentYear:(id)year currentYearStart:(id *)start currentYearEnd:(id *)end timeZone:(id)zone
{
  yearCopy = year;
  zoneCopy = zone;
  if (!*start)
  {
    v11 = MEMORY[0x1E69930C8];
    v12 = CUIKNowDate();
    v13 = [v11 calendarDateWithDate:v12 timeZone:zoneCopy];

    calendarDateForYear = [v13 calendarDateForYear];
    calendarDateForEndOfYear = [calendarDateForYear calendarDateForEndOfYear];
    *start = [calendarDateForYear date];
    *end = [calendarDateForEndOfYear date];
  }

  v16 = [yearCopy compare:?] != -1 && objc_msgSend(yearCopy, "compare:", *end) != 1;

  return v16;
}

@end