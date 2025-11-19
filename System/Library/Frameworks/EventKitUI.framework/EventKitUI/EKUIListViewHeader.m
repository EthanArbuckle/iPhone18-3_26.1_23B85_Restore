@interface EKUIListViewHeader
+ (BOOL)_isDateInCurrentYear:(id)a3 currentYearStart:(id *)a4 currentYearEnd:(id *)a5 timeZone:(id)a6;
+ (id)_stringForHeaderDate:(id)a3 currentYearStart:(id *)a4 currentYearEnd:(id *)a5 timeZone:(id)a6;
+ (id)headerWithTableView:(id)a3 reuseIdentifier:(id)a4 date:(id)a5 timeZone:(id)a6 currentYearStart:(id *)a7 currentYearEnd:(id *)a8;
@end

@implementation EKUIListViewHeader

+ (id)headerWithTableView:(id)a3 reuseIdentifier:(id)a4 date:(id)a5 timeZone:(id)a6 currentYearStart:(id *)a7 currentYearEnd:(id *)a8
{
  v14 = a5;
  v15 = a6;
  v16 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:a4];
  v17 = [MEMORY[0x1E69DCC28] plainHeaderConfiguration];
  if (v14)
  {
    v18 = [a1 _stringForHeaderDate:v14 currentYearStart:a7 currentYearEnd:a8 timeZone:v15];
    [v17 setText:v18];
    [v17 setPrefersSideBySideTextAndSecondaryText:1];
    if (CUIKNSDateIsToday())
    {
      CUIKAppTintColor();
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v19 = ;
    v20 = [v17 textProperties];
    [v20 setColor:v19];

    v21 = CUIKGetOverlayCalendar();
    if (v21)
    {
      v22 = [MEMORY[0x1E69933D8] monthDayStringForDate:v14 inCalendar:v21];
      [v17 setSecondaryText:v22];
    }

    else
    {
      [v17 setSecondaryText:0];
    }
  }

  [v16 setContentConfiguration:v17];

  return v16;
}

+ (id)_stringForHeaderDate:(id)a3 currentYearStart:(id *)a4 currentYearEnd:(id *)a5 timeZone:(id)a6
{
  v10 = a3;
  if ([a1 _isDateInCurrentYear:v10 currentYearStart:a4 currentYearEnd:a5 timeZone:a6])
  {
    CUIKLongDayStringForDateNoYear();
  }

  else
  {
    CUIKLongDayStringForDate();
  }
  v11 = ;

  v12 = [v11 localizedUppercaseString];

  return v12;
}

+ (BOOL)_isDateInCurrentYear:(id)a3 currentYearStart:(id *)a4 currentYearEnd:(id *)a5 timeZone:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (!*a4)
  {
    v11 = MEMORY[0x1E69930C8];
    v12 = CUIKNowDate();
    v13 = [v11 calendarDateWithDate:v12 timeZone:v10];

    v14 = [v13 calendarDateForYear];
    v15 = [v14 calendarDateForEndOfYear];
    *a4 = [v14 date];
    *a5 = [v15 date];
  }

  v16 = [v9 compare:?] != -1 && objc_msgSend(v9, "compare:", *a5) != 1;

  return v16;
}

@end