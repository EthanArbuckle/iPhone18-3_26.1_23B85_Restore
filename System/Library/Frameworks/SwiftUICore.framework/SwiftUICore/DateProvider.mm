@interface DateProvider
- (DateProvider)initWithDate:(id)date units:(unint64_t)units;
- (DateProvider)initWithDate:(id)date units:(unint64_t)units calendar:(id)calendar locale:(id)locale timeZone:(id)zone;
- (DateProvider)initWithDateFormat:(id)format calendar:(id)calendar locale:(id)locale timeZone:(id)zone;
- (DateProvider)initWithDateFormatTemplate:(id)template calendar:(id)calendar locale:(id)locale timeZone:(id)zone;
- (NSDateFormatter)dateFormatter;
- (id)_completeDateTemplateSeries;
- (id)_partialDateTemplateSeriesForUnits:(unint64_t)units;
- (id)_sessionTextForIndex:(int64_t)index context:(id)context;
- (int64_t)updateType;
- (unint64_t)_minCalendarUnitFromFormat:(id)format;
- (void)_startSessionWithDate:(id)date;
@end

@implementation DateProvider

- (DateProvider)initWithDate:(id)date units:(unint64_t)units
{
  v6 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  currentCalendar = [v6 currentCalendar];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [(DateProvider *)self initWithDate:dateCopy units:units calendar:currentCalendar locale:currentLocale timeZone:0];

  return v10;
}

- (DateProvider)initWithDate:(id)date units:(unint64_t)units calendar:(id)calendar locale:(id)locale timeZone:(id)zone
{
  dateCopy = date;
  v17.receiver = self;
  v17.super_class = DateProvider;
  v14 = [(BaseDateProvider *)&v17 initWithCalendar:calendar locale:locale timeZone:zone];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_date, date);
    v15->_calendarUnits = units;
  }

  return v15;
}

- (DateProvider)initWithDateFormat:(id)format calendar:(id)calendar locale:(id)locale timeZone:(id)zone
{
  formatCopy = format;
  v16.receiver = self;
  v16.super_class = DateProvider;
  v12 = [(BaseDateProvider *)&v16 initWithCalendar:calendar locale:locale timeZone:zone];
  if (v12)
  {
    date = [MEMORY[0x1E695DF00] date];
    date = v12->_date;
    v12->_date = date;

    objc_storeStrong(&v12->_dateFormat, format);
    v12->_updateWallClockAlignment = [(DateProvider *)v12 _minCalendarUnitFromFormat:formatCopy];
  }

  return v12;
}

- (DateProvider)initWithDateFormatTemplate:(id)template calendar:(id)calendar locale:(id)locale timeZone:(id)zone
{
  templateCopy = template;
  v16.receiver = self;
  v16.super_class = DateProvider;
  v12 = [(BaseDateProvider *)&v16 initWithCalendar:calendar locale:locale timeZone:zone];
  if (v12)
  {
    date = [MEMORY[0x1E695DF00] date];
    date = v12->_date;
    v12->_date = date;

    objc_storeStrong(&v12->_dateFormatTemplate, template);
    v12->_updateWallClockAlignment = [(DateProvider *)v12 _minCalendarUnitFromFormat:templateCopy];
  }

  return v12;
}

- (int64_t)updateType
{
  dateFormatTemplate = [(DateProvider *)self dateFormatTemplate];
  if (dateFormatTemplate)
  {

    return 1;
  }

  else
  {
    dateFormat = [(DateProvider *)self dateFormat];
    v4 = dateFormat != 0;
  }

  return v4;
}

- (void)_startSessionWithDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    v6 = dateCopy;
    objc_storeStrong(&self->_date, date);
    dateCopy = v6;
  }
}

- (id)_sessionTextForIndex:(int64_t)index context:(id)context
{
  contextCopy = context;
  if (self->_date)
  {
    dateFormatter = [(DateProvider *)self dateFormatter];
    [dateFormatter setDateFormat:0];

    dateFormatTemplate = [(DateProvider *)self dateFormatTemplate];

    if (dateFormatTemplate)
    {
      dateFormatter2 = [(DateProvider *)self dateFormatter];
      dateFormatTemplate2 = [(DateProvider *)self dateFormatTemplate];
      [dateFormatter2 setLocalizedDateFormatFromTemplate:dateFormatTemplate2];

LABEL_6:
      dateFormatter3 = [(DateProvider *)self dateFormatter];
      v13 = [dateFormatter3 stringFromDate:self->_date];
LABEL_7:

      goto LABEL_15;
    }

    dateFormat = self->_dateFormat;
    if (dateFormat)
    {
      dateFormatter2 = [(DateProvider *)self dateFormatter];
      [dateFormatter2 setDateFormat:dateFormat];
      goto LABEL_6;
    }

    templateSeries = self->_templateSeries;
    if (!templateSeries)
    {
      _completeDateTemplateSeries = [(DateProvider *)self _completeDateTemplateSeries];
      v16 = self->_templateSeries;
      self->_templateSeries = _completeDateTemplateSeries;

      templateSeries = self->_templateSeries;
    }

    if ([(NSArray *)templateSeries count]> index)
    {
      v17 = [(NSArray *)self->_templateSeries objectAtIndex:index];
      locale = [(BaseDateProvider *)self locale];
      v19 = v17;
      v20 = locale;
      if ([v19 isEqualToString:@"d"])
      {
        if (LocaleIsCJK(v20))
        {

LABEL_20:
          dateFormatter4 = [(DateProvider *)self dateFormatter];
          [dateFormatter4 setDateFormat:v19];
          goto LABEL_23;
        }
      }

      else if (_isWeekdayDayTemplate(v19))
      {
        v22 = [v20 objectForKey:*MEMORY[0x1E695D9B0]];
        v23 = [v22 isEqualToString:@"en"];

        if (v23)
        {
          goto LABEL_20;
        }

LABEL_22:
        dateFormatter4 = [(DateProvider *)self dateFormatter];
        [dateFormatter4 setLocalizedDateFormatFromTemplate:v19];
LABEL_23:

        dateFormatter5 = [(DateProvider *)self dateFormatter];
        v26 = [dateFormatter5 stringFromDate:self->_date];

        locale2 = [(BaseDateProvider *)self locale];
        dateFormatter3 = v19;
        v28 = [@"MMMMM" stringByAppendingString:@"d"];
        v29 = [dateFormatter3 isEqualToString:v28];

        if (v29 && (LocaleIsCJK(locale2) & 1) != 0)
        {

          dateFormatter6 = [(DateProvider *)self dateFormatter];
          v13 = [dateFormatter6 stringFromDate:self->_date];
        }

        else
        {

          locale3 = [(BaseDateProvider *)self locale];
          v32 = v26;
          v33 = v32;
          if (_isWeekdayDayTemplate(dateFormatter3))
          {
            v33 = v32;
            if (RemovesPunctuationFromWeekdayDay(locale3))
            {
              if (!_removePunctuationIfNecessaryFromTextForTemplate_punctuationExceptDash)
              {
                punctuationCharacterSet = [MEMORY[0x1E696AD48] punctuationCharacterSet];
                [punctuationCharacterSet removeCharactersInString:@"-"];
                v35 = _removePunctuationIfNecessaryFromTextForTemplate_punctuationExceptDash;
                _removePunctuationIfNecessaryFromTextForTemplate_punctuationExceptDash = punctuationCharacterSet;
              }

              v36 = [v32 componentsSeparatedByCharactersInSet:?];
              v33 = [v36 componentsJoinedByString:&stru_1F00C2360];
            }
          }

          v26 = v33;
          v13 = v26;
        }

        goto LABEL_7;
      }

      goto LABEL_22;
    }
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (NSDateFormatter)dateFormatter
{
  if (!self->_dateFormatter)
  {
    v3 = objc_opt_new();
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v3;

    [(NSDateFormatter *)self->_dateFormatter setFormattingContext:2];
    calendar = [(BaseDateProvider *)self calendar];
    [(NSDateFormatter *)self->_dateFormatter setCalendar:calendar];

    locale = [(BaseDateProvider *)self locale];
    [(NSDateFormatter *)self->_dateFormatter setLocale:locale];

    timeZone = [(BaseDateProvider *)self timeZone];

    if (timeZone)
    {
      timeZone2 = [(BaseDateProvider *)self timeZone];
      [(NSDateFormatter *)self->_dateFormatter setTimeZone:timeZone2];
    }
  }

  v9 = self->_dateFormatter;

  return v9;
}

- (id)_completeDateTemplateSeries
{
  calendarUnits = self->_calendarUnits;
  array = [MEMORY[0x1E695DF70] array];
  if ((calendarUnits & 0x21C) != 0)
  {
    v5 = calendarUnits & 0x21C;
  }

  else
  {
    v5 = 16;
  }

  do
  {
    v6 = [(DateProvider *)self _partialDateTemplateSeriesForUnits:v5];
    [array addObjectsFromArray:v6];

    v7 = v5 & 0xFFFFFFFFFFFFFDE3;
    if ((v5 & 0x10) == 0)
    {
      v7 = v5;
    }

    if ((v5 & 8) != 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFDF3;
    }

    if ((v5 & 0x200) != 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFDFBLL;
    }

    if ((v5 & 4) != 0)
    {
      v5 &= ~4uLL;
    }

    else
    {
      v5 = v7;
    }
  }

  while (v5);

  return array;
}

- (id)_partialDateTemplateSeriesForUnits:(unint64_t)units
{
  v23[3] = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = v4;
  if (units == 528)
  {
    [v4 addObject:@"EEEE d"];
    [v5 addObject:@"EEE d"];
    array = v5;
    goto LABEL_23;
  }

  if ((~units & 0x208) != 0)
  {
    if ((units & 8) != 0)
    {
      [v4 addObject:@"MMMM"];
      v8 = @"MMM";
    }

    else if ((units & 0x200) != 0)
    {
      [v4 addObject:@"EEEE"];
      v8 = @"EEE";
    }

    else
    {
      v8 = &stru_1F00C2360;
    }
  }

  else
  {
    v23[0] = @"MMMMEEEE";
    v23[1] = @"MMMMEEE";
    v23[2] = @"MMMEEEE";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
    [v5 addObjectsFromArray:v7];

    v8 = @"MMMEEE";
  }

  [v5 addObject:v8];
  if ((units & 0x10) == 0)
  {
    v9 = &stru_1F00C2360;
    if ((units & 4) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v9 = [&stru_1F00C2360 stringByAppendingString:@"d"];
  if ((units & 4) != 0)
  {
LABEL_14:
    v10 = [(__CFString *)v9 stringByAppendingString:@"y"];

    v9 = v10;
  }

LABEL_15:
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) stringByAppendingString:{v9, v18}];
        [array addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

LABEL_23:

  return array;
}

- (unint64_t)_minCalendarUnitFromFormat:(id)format
{
  formatCopy = format;
  if (![formatCopy length])
  {
    goto LABEL_9;
  }

  if ([formatCopy isEqualToString:@"a"])
  {
    SkeletonFromTemplate = 32;
    goto LABEL_10;
  }

  locale = [(BaseDateProvider *)self locale];
  SkeletonFromTemplate = _CFDateFormatterCreateSkeletonFromTemplate();

  if (!SkeletonFromTemplate)
  {
    goto LABEL_10;
  }

  UnitsFromDateFormat = _CFCalendarGetUnitsFromDateFormat();
  CFRelease(SkeletonFromTemplate);
  if (!UnitsFromDateFormat)
  {
LABEL_9:
    SkeletonFromTemplate = 0;
    goto LABEL_10;
  }

  v8 = 0;
  while (1)
  {
    SkeletonFromTemplate = qword_18DD85278[v8];
    if ((SkeletonFromTemplate & UnitsFromDateFormat) != 0)
    {
      break;
    }

    if (++v8 == 14)
    {
      goto LABEL_9;
    }
  }

LABEL_10:

  return SkeletonFromTemplate;
}

@end