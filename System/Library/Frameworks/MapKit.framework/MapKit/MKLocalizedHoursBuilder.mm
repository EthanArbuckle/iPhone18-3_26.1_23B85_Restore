@interface MKLocalizedHoursBuilder
@end

@implementation MKLocalizedHoursBuilder

uint64_t __62___MKLocalizedHoursBuilder_concatenateStrings_joinedByString___block_invoke(uint64_t a1)
{
  result = MKApplicationLayoutDirectionIsRightToLeft();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __54___MKLocalizedHoursBuilder__findNextOperatingWeekday___block_invoke()
{
  v10[7] = *MEMORY[0x1E69E9840];
  v9[0] = &unk_1F16116B0;
  v0 = _MKLocalizedStringFromThisBundle(@"Closed till Sunday");
  v10[0] = v0;
  v9[1] = &unk_1F16116C8;
  v1 = _MKLocalizedStringFromThisBundle(@"Closed till Monday");
  v10[1] = v1;
  v9[2] = &unk_1F16116E0;
  v2 = _MKLocalizedStringFromThisBundle(@"Closed till Tuesday");
  v10[2] = v2;
  v9[3] = &unk_1F16116F8;
  v3 = _MKLocalizedStringFromThisBundle(@"Closed till Wednesday");
  v10[3] = v3;
  v9[4] = &unk_1F1611710;
  v4 = _MKLocalizedStringFromThisBundle(@"Closed till Thursday");
  v10[4] = v4;
  v9[5] = &unk_1F1611728;
  v5 = _MKLocalizedStringFromThisBundle(@"Closed till Friday");
  v10[5] = v5;
  v9[6] = &unk_1F1611740;
  v6 = _MKLocalizedStringFromThisBundle(@"Closed till Saturday");
  v10[6] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:7];
  v8 = _findNextOperatingWeekday__weekdays;
  _findNextOperatingWeekday__weekdays = v7;
}

void __66___MKLocalizedHoursBuilder__localizedTimeStringFromDate_timezone___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = _localizedTimeStringFromDate_timezone__formatter;
  _localizedTimeStringFromDate_timezone__formatter = v2;

  [_localizedTimeStringFromDate_timezone__formatter setLocalizedDateFormatFromTemplate:@"jmm"];
  v4 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v5 = _localizedTimeStringFromDate_timezone__calendar;
  _localizedTimeStringFromDate_timezone__calendar = v4;

  [_localizedTimeStringFromDate_timezone__calendar setTimeZone:*(a1 + 32)];
  v6 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [_localizedTimeStringFromDate_timezone__calendar setLocale:v6];

  v7 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  v8 = _localizedTimeStringFromDate_timezone__numberFormatter;
  _localizedTimeStringFromDate_timezone__numberFormatter = v7;
}

void __51___MKLocalizedHoursBuilder__isCurrentTimeSingular___block_invoke()
{
  v0 = [MEMORY[0x1E695DEE8] autoupdatingCurrentCalendar];
  v1 = _isCurrentTimeSingular__calendar;
  _isCurrentTimeSingular__calendar = v0;

  v2 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  [_isCurrentTimeSingular__calendar setLocale:v2];
}

uint64_t __39___MKLocalizedHoursBuilder__commonInit__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v3 = monthAndDayFormatter;
  monthAndDayFormatter = v2;

  [monthAndDayFormatter setDateFormat:@"MMMM dd"];
  [monthAndDayFormatter setFormattingContext:4];
  [monthAndDayFormatter setTimeZone:*(*(a1 + 32) + 88)];
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v5 = dayOfWeekFormatterFull;
  dayOfWeekFormatterFull = v4;

  [dayOfWeekFormatterFull setDateFormat:@"cccc"];
  [dayOfWeekFormatterFull setFormattingContext:4];
  [dayOfWeekFormatterFull setTimeZone:*(*(a1 + 32) + 88)];
  v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v7 = dayOfWeekFormatterShort;
  dayOfWeekFormatterShort = v6;

  [dayOfWeekFormatterShort setDateFormat:@"ccc"];
  [dayOfWeekFormatterShort setFormattingContext:4];
  [dayOfWeekFormatterShort setTimeZone:*(*(a1 + 32) + 88)];
  v8 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v9 = hoursFormatter;
  hoursFormatter = v8;

  [hoursFormatter setDateStyle:0];
  [hoursFormatter setTimeStyle:1];
  [hoursFormatter setTimeZone:*(*(a1 + 32) + 88)];
  v10 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v11 = twentyFourHourAbbreviatedFormatter;
  twentyFourHourAbbreviatedFormatter = v10;

  [twentyFourHourAbbreviatedFormatter setAllowedUnits:32];
  [twentyFourHourAbbreviatedFormatter setUnitsStyle:1];
  v12 = objc_alloc_init(MEMORY[0x1E696AB70]);
  v13 = twentyFourHourFullFormatter;
  twentyFourHourFullFormatter = v12;

  [twentyFourHourFullFormatter setAllowedUnits:32];
  v14 = twentyFourHourFullFormatter;

  return [v14 setUnitsStyle:3];
}

@end