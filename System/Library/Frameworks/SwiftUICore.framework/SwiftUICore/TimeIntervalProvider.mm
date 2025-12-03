@interface TimeIntervalProvider
- (TimeIntervalProvider)initWithStartDate:(id)date endDate:(id)endDate;
- (TimeIntervalProvider)initWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar locale:(id)locale timeZone:(id)zone;
- (_NSRange)_rangeOfAnnontatedTime:(id)time matchingPattern:(id)pattern;
- (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)time;
- (_NSRange)_rangeOfHoursInAnnotatedTime:(id)time;
- (id)_dateIntervalTextWithNarrow:(BOOL)narrow;
- (id)_fallbackSequence;
- (id)_sessionTextForIndex:(int64_t)index context:(id)context;
- (id)_stringByRemovingDesignatorRange:(_NSRange)range fromString:(id)string;
- (id)_textForSequenceItem:(int64_t)item;
- (id)_timeIntervalTextWithDropMinutes:(BOOL)minutes onlyStartDate:(BOOL)date;
@end

@implementation TimeIntervalProvider

- (TimeIntervalProvider)initWithStartDate:(id)date endDate:(id)endDate
{
  v6 = MEMORY[0x1E695DEE8];
  endDateCopy = endDate;
  dateCopy = date;
  currentCalendar = [v6 currentCalendar];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v11 = [(TimeIntervalProvider *)self initWithStartDate:dateCopy endDate:endDateCopy calendar:currentCalendar locale:currentLocale timeZone:0];

  return v11;
}

- (TimeIntervalProvider)initWithStartDate:(id)date endDate:(id)endDate calendar:(id)calendar locale:(id)locale timeZone:(id)zone
{
  dateCopy = date;
  endDateCopy = endDate;
  v18.receiver = self;
  v18.super_class = TimeIntervalProvider;
  v15 = [(BaseDateProvider *)&v18 initWithCalendar:calendar locale:locale timeZone:zone];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_startDate, date);
    objc_storeStrong(&v16->_endDate, endDate);
  }

  return v16;
}

- (id)_sessionTextForIndex:(int64_t)index context:(id)context
{
  contextCopy = context;
  if (!self->_startDate || !self->_endDate)
  {
    goto LABEL_11;
  }

  if (!self->_dateFormatter)
  {
    v7 = objc_opt_new();
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v7;

    timeZone = [(BaseDateProvider *)self timeZone];

    if (timeZone)
    {
      timeZone2 = [(BaseDateProvider *)self timeZone];
      [(NSDateFormatter *)self->_dateFormatter setTimeZone:timeZone2];
    }

    calendar = [(BaseDateProvider *)self calendar];
    [(NSDateFormatter *)self->_dateFormatter setCalendar:calendar];

    locale = [(BaseDateProvider *)self locale];
    [(NSDateFormatter *)self->_dateFormatter setLocale:locale];
  }

  fallbackSequence = self->_fallbackSequence;
  if (!fallbackSequence)
  {
    _fallbackSequence = [(TimeIntervalProvider *)self _fallbackSequence];
    v15 = self->_fallbackSequence;
    self->_fallbackSequence = _fallbackSequence;

    fallbackSequence = self->_fallbackSequence;
  }

  if ([(NSArray *)fallbackSequence count]> index)
  {
    v16 = [(NSArray *)self->_fallbackSequence objectAtIndex:index];
    integerValue = [v16 integerValue];

    v18 = [(TimeIntervalProvider *)self _textForSequenceItem:integerValue];
  }

  else
  {
LABEL_11:
    v18 = 0;
  }

  return v18;
}

- (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)time
{
  v3 = [(TimeIntervalProvider *)self _rangeOfAnnontatedTime:time matchingPattern:&__block_literal_global_4];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)_rangeOfHoursInAnnotatedTime:(id)time
{
  v3 = [(TimeIntervalProvider *)self _rangeOfAnnontatedTime:time matchingPattern:&__block_literal_global_11];
  result.length = v4;
  result.location = v3;
  return result;
}

uint64_t __53__TimeIntervalProvider__rangeOfHoursInAnnotatedTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"H"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"h") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"K"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasPrefix:@"k"];
  }

  return v3;
}

- (_NSRange)_rangeOfAnnontatedTime:(id)time matchingPattern:(id)pattern
{
  timeCopy = time;
  patternCopy = pattern;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_18DF3E30F;
  v20 = xmmword_18DD854F0;
  v7 = [timeCopy length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__TimeIntervalProvider__rangeOfAnnontatedTime_matchingPattern___block_invoke;
  v13[3] = &unk_1E7242288;
  v8 = patternCopy;
  v14 = v8;
  v15 = &v16;
  [timeCopy enumerateAttributesInRange:0 options:v7 usingBlock:{0, v13}];
  v9 = v17[4];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = v9;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

void __63__TimeIntervalProvider__rangeOfAnnontatedTime_matchingPattern___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = [a2 objectForKeyedSubscript:*MEMORY[0x1E695D8F8]];
  if ((*(*(a1 + 32) + 16))())
  {
    v9 = *(*(a1 + 40) + 8);
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
    *a5 = 1;
  }
}

- (id)_stringByRemovingDesignatorRange:(_NSRange)range fromString:(id)string
{
  v4 = [string stringByReplacingCharactersInRange:range.location withString:{range.length, &stru_1F00C2360}];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v6;
}

- (id)_fallbackSequence
{
  calendar = [(BaseDateProvider *)self calendar];
  timeZone = [(BaseDateProvider *)self timeZone];

  if (timeZone)
  {
    timeZone2 = [(BaseDateProvider *)self timeZone];
    [calendar setTimeZone:timeZone2];
  }

  v6 = [calendar components:16 fromDate:self->_startDate toDate:self->_endDate options:0];
  v7 = [v6 day];

  if (v7)
  {
    v8 = &unk_1F00D2258;
    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithObject:&unk_1F00D2270];
  v9 = [calendar component:64 fromDate:self->_startDate];
  if (v9 | [calendar component:64 fromDate:self->_endDate])
  {
    [v8 addObject:&unk_1F00D22A0];
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [v8 addObject:&unk_1F00D2288];
    [v8 addObject:&unk_1F00D22A0];
  }

  [v8 addObject:&unk_1F00D22B8];
LABEL_9:

  return v8;
}

- (id)_textForSequenceItem:(int64_t)item
{
  _startTimeDropMinutesText = 0;
  if (item > 2)
  {
    switch(item)
    {
      case 3:
        _startTimeDropMinutesText = [(TimeIntervalProvider *)self _startTimeDropMinutesText];
        break;
      case 4:
        _startTimeDropMinutesText = [(TimeIntervalProvider *)self _dateIntervalWideText];
        break;
      case 5:
        _startTimeDropMinutesText = [(TimeIntervalProvider *)self _dateIntervalNarrowText];
        break;
    }
  }

  else if (item)
  {
    if (item == 1)
    {
      _startTimeDropMinutesText = [(TimeIntervalProvider *)self _timeIntervalDropMinutesText];
    }

    else if (item == 2)
    {
      _startTimeDropMinutesText = [(TimeIntervalProvider *)self _startTimeFullText];
    }
  }

  else
  {
    _startTimeDropMinutesText = [(TimeIntervalProvider *)self _timeIntervalFullText];
  }

  return _startTimeDropMinutesText;
}

- (id)_timeIntervalTextWithDropMinutes:(BOOL)minutes onlyStartDate:(BOOL)date
{
  dateCopy = date;
  v6 = MEMORY[0x1E696AB78];
  v7 = _StandardTimeFormatTemplate;
  if (minutes)
  {
    v7 = &_NoMinutesTimeFormatTemplate;
  }

  v8 = *v7;
  locale = [(BaseDateProvider *)self locale];
  v10 = [v6 dateFormatFromTemplate:v8 options:0 locale:locale];

  v49 = 0;
  v11 = [(BaseDateProvider *)self _timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:v10 designatorExists:&v49];

  [(NSDateFormatter *)self->_dateFormatter setDateFormat:v11];
  v12 = [(NSDateFormatter *)self->_dateFormatter _attributedStringWithFieldsFromDate:self->_startDate];
  string = [v12 string];

  if (string)
  {
    v15 = [(TimeIntervalProvider *)self _rangeOfDesignatorInAnnotatedTime:v12];
    v16 = v14;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      string9 = 0;
      if (!dateCopy)
      {
LABEL_6:
        v18 = [(NSDateFormatter *)self->_dateFormatter _attributedStringWithFieldsFromDate:self->_endDate];
        string = [v18 string];

        if (!string)
        {
LABEL_30:

          goto LABEL_31;
        }

        v46 = v16;
        v48 = v11;
        v20 = [(TimeIntervalProvider *)self _rangeOfDesignatorInAnnotatedTime:v18];
        v21 = 0x7FFFFFFFFFFFFFFFLL;
        v22 = v18;
        v45 = v19;
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = v18;
          v24 = string9;
          string2 = 0;
        }

        else
        {
          v24 = string9;
          v25 = v22;
          v26 = [v22 attributedSubstringFromRange:{v20, v19}];
          string2 = [v26 string];

          v21 = v20;
        }

LABEL_12:
        locale2 = [(BaseDateProvider *)self locale];
        v29 = LocalizedString(@"INTERVAL_HYPHEN_NARROW", locale2);

        string9 = v24;
        if (!(v24 | string2))
        {
          v18 = v25;
          if (dateCopy)
          {
            string = [v12 string];
          }

          else
          {
            v32 = MEMORY[0x1E696AEC0];
            string3 = [v12 string];
            string4 = [v25 string];
            string = [v32 stringWithFormat:@"%@%@%@", string3, v29, string4];
          }

          v11 = v48;
          goto LABEL_29;
        }

        v47 = v24;
        string5 = [v12 string];
        v31 = string5;
        v18 = v25;
        if (dateCopy)
        {
          string = string5;
          v31 = string;
          v11 = v48;
LABEL_28:

          string9 = v47;
LABEL_29:

          goto LABEL_30;
        }

        string6 = [v25 string];
        v44 = v29;
        v11 = v48;
        if (string2 && [v47 isEqualToString:string2])
        {
          v43 = string6;
          locale3 = [(BaseDateProvider *)self locale];
          v42 = DropLeftRedundantDesignator(locale3);

          if (v42)
          {
            string6 = v43;
            if (v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              string7 = [v12 string];
              v38 = v15;
              string8 = string7;
              [(TimeIntervalProvider *)self _stringByRemovingDesignatorRange:v38 fromString:v46, string7];
              v31 = v40 = v31;
LABEL_26:
            }
          }

          else
          {
            string6 = v43;
            if (v21 != 0x7FFFFFFFFFFFFFFFLL)
            {
              string8 = [v18 string];
              [(TimeIntervalProvider *)self _stringByRemovingDesignatorRange:v21 fromString:v45, string8];
              string6 = v40 = v43;
              goto LABEL_26;
            }
          }
        }

        string = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v31];
        [string appendString:v44];
        [string appendString:string6];

        goto LABEL_28;
      }
    }

    else
    {
      v23 = [v12 attributedSubstringFromRange:{v15, v14}];
      string9 = [v23 string];

      if (!dateCopy)
      {
        goto LABEL_6;
      }
    }

    v45 = 0;
    v46 = v16;
    v48 = v11;
    v24 = string9;
    string2 = 0;
    v25 = 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

LABEL_31:

  return string;
}

- (id)_dateIntervalTextWithNarrow:(BOOL)narrow
{
  if (narrow)
  {
    v4 = @"M/d";
  }

  else
  {
    v4 = @"MMM d";
  }

  [(NSDateFormatter *)self->_dateFormatter setLocalizedDateFormatFromTemplate:v4];
  v5 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:self->_startDate];
  v6 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:self->_endDate];
  v7 = MEMORY[0x1E696AEC0];
  locale = [(BaseDateProvider *)self locale];
  v9 = LocalizedString(@"INTERVAL_HYPHEN_WIDE", locale);
  v10 = [v7 stringWithFormat:@"%@%@%@", v5, v9, v6];

  return v10;
}

@end