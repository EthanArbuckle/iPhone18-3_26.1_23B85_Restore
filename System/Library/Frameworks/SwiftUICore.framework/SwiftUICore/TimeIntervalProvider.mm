@interface TimeIntervalProvider
- (TimeIntervalProvider)initWithStartDate:(id)a3 endDate:(id)a4;
- (TimeIntervalProvider)initWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 locale:(id)a6 timeZone:(id)a7;
- (_NSRange)_rangeOfAnnontatedTime:(id)a3 matchingPattern:(id)a4;
- (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)a3;
- (_NSRange)_rangeOfHoursInAnnotatedTime:(id)a3;
- (id)_dateIntervalTextWithNarrow:(BOOL)a3;
- (id)_fallbackSequence;
- (id)_sessionTextForIndex:(int64_t)a3 context:(id)a4;
- (id)_stringByRemovingDesignatorRange:(_NSRange)a3 fromString:(id)a4;
- (id)_textForSequenceItem:(int64_t)a3;
- (id)_timeIntervalTextWithDropMinutes:(BOOL)a3 onlyStartDate:(BOOL)a4;
@end

@implementation TimeIntervalProvider

- (TimeIntervalProvider)initWithStartDate:(id)a3 endDate:(id)a4
{
  v6 = MEMORY[0x1E695DEE8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentCalendar];
  v10 = [MEMORY[0x1E695DF58] currentLocale];
  v11 = [(TimeIntervalProvider *)self initWithStartDate:v8 endDate:v7 calendar:v9 locale:v10 timeZone:0];

  return v11;
}

- (TimeIntervalProvider)initWithStartDate:(id)a3 endDate:(id)a4 calendar:(id)a5 locale:(id)a6 timeZone:(id)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = TimeIntervalProvider;
  v15 = [(BaseDateProvider *)&v18 initWithCalendar:a5 locale:a6 timeZone:a7];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_startDate, a3);
    objc_storeStrong(&v16->_endDate, a4);
  }

  return v16;
}

- (id)_sessionTextForIndex:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  if (!self->_startDate || !self->_endDate)
  {
    goto LABEL_11;
  }

  if (!self->_dateFormatter)
  {
    v7 = objc_opt_new();
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v7;

    v9 = [(BaseDateProvider *)self timeZone];

    if (v9)
    {
      v10 = [(BaseDateProvider *)self timeZone];
      [(NSDateFormatter *)self->_dateFormatter setTimeZone:v10];
    }

    v11 = [(BaseDateProvider *)self calendar];
    [(NSDateFormatter *)self->_dateFormatter setCalendar:v11];

    v12 = [(BaseDateProvider *)self locale];
    [(NSDateFormatter *)self->_dateFormatter setLocale:v12];
  }

  fallbackSequence = self->_fallbackSequence;
  if (!fallbackSequence)
  {
    v14 = [(TimeIntervalProvider *)self _fallbackSequence];
    v15 = self->_fallbackSequence;
    self->_fallbackSequence = v14;

    fallbackSequence = self->_fallbackSequence;
  }

  if ([(NSArray *)fallbackSequence count]> a3)
  {
    v16 = [(NSArray *)self->_fallbackSequence objectAtIndex:a3];
    v17 = [v16 integerValue];

    v18 = [(TimeIntervalProvider *)self _textForSequenceItem:v17];
  }

  else
  {
LABEL_11:
    v18 = 0;
  }

  return v18;
}

- (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)a3
{
  v3 = [(TimeIntervalProvider *)self _rangeOfAnnontatedTime:a3 matchingPattern:&__block_literal_global_4];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)_rangeOfHoursInAnnotatedTime:(id)a3
{
  v3 = [(TimeIntervalProvider *)self _rangeOfAnnontatedTime:a3 matchingPattern:&__block_literal_global_11];
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

- (_NSRange)_rangeOfAnnontatedTime:(id)a3 matchingPattern:(id)a4
{
  v5 = a3;
  v6 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_18DF3E30F;
  v20 = xmmword_18DD854F0;
  v7 = [v5 length];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__TimeIntervalProvider__rangeOfAnnontatedTime_matchingPattern___block_invoke;
  v13[3] = &unk_1E7242288;
  v8 = v6;
  v14 = v8;
  v15 = &v16;
  [v5 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v13}];
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

- (id)_stringByRemovingDesignatorRange:(_NSRange)a3 fromString:(id)a4
{
  v4 = [a4 stringByReplacingCharactersInRange:a3.location withString:{a3.length, &stru_1F00C2360}];
  v5 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:v5];

  return v6;
}

- (id)_fallbackSequence
{
  v3 = [(BaseDateProvider *)self calendar];
  v4 = [(BaseDateProvider *)self timeZone];

  if (v4)
  {
    v5 = [(BaseDateProvider *)self timeZone];
    [v3 setTimeZone:v5];
  }

  v6 = [v3 components:16 fromDate:self->_startDate toDate:self->_endDate options:0];
  v7 = [v6 day];

  if (v7)
  {
    v8 = &unk_1F00D2258;
    goto LABEL_9;
  }

  v8 = [MEMORY[0x1E695DF70] arrayWithObject:&unk_1F00D2270];
  v9 = [v3 component:64 fromDate:self->_startDate];
  if (v9 | [v3 component:64 fromDate:self->_endDate])
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

- (id)_textForSequenceItem:(int64_t)a3
{
  v4 = 0;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v4 = [(TimeIntervalProvider *)self _startTimeDropMinutesText];
        break;
      case 4:
        v4 = [(TimeIntervalProvider *)self _dateIntervalWideText];
        break;
      case 5:
        v4 = [(TimeIntervalProvider *)self _dateIntervalNarrowText];
        break;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v4 = [(TimeIntervalProvider *)self _timeIntervalDropMinutesText];
    }

    else if (a3 == 2)
    {
      v4 = [(TimeIntervalProvider *)self _startTimeFullText];
    }
  }

  else
  {
    v4 = [(TimeIntervalProvider *)self _timeIntervalFullText];
  }

  return v4;
}

- (id)_timeIntervalTextWithDropMinutes:(BOOL)a3 onlyStartDate:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x1E696AB78];
  v7 = _StandardTimeFormatTemplate;
  if (a3)
  {
    v7 = &_NoMinutesTimeFormatTemplate;
  }

  v8 = *v7;
  v9 = [(BaseDateProvider *)self locale];
  v10 = [v6 dateFormatFromTemplate:v8 options:0 locale:v9];

  v49 = 0;
  v11 = [(BaseDateProvider *)self _timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:v10 designatorExists:&v49];

  [(NSDateFormatter *)self->_dateFormatter setDateFormat:v11];
  v12 = [(NSDateFormatter *)self->_dateFormatter _attributedStringWithFieldsFromDate:self->_startDate];
  v13 = [v12 string];

  if (v13)
  {
    v15 = [(TimeIntervalProvider *)self _rangeOfDesignatorInAnnotatedTime:v12];
    v16 = v14;
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = 0;
      if (!v4)
      {
LABEL_6:
        v18 = [(NSDateFormatter *)self->_dateFormatter _attributedStringWithFieldsFromDate:self->_endDate];
        v13 = [v18 string];

        if (!v13)
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
          v24 = v17;
          v27 = 0;
        }

        else
        {
          v24 = v17;
          v25 = v22;
          v26 = [v22 attributedSubstringFromRange:{v20, v19}];
          v27 = [v26 string];

          v21 = v20;
        }

LABEL_12:
        v28 = [(BaseDateProvider *)self locale];
        v29 = LocalizedString(@"INTERVAL_HYPHEN_NARROW", v28);

        v17 = v24;
        if (!(v24 | v27))
        {
          v18 = v25;
          if (v4)
          {
            v13 = [v12 string];
          }

          else
          {
            v32 = MEMORY[0x1E696AEC0];
            v33 = [v12 string];
            v34 = [v25 string];
            v13 = [v32 stringWithFormat:@"%@%@%@", v33, v29, v34];
          }

          v11 = v48;
          goto LABEL_29;
        }

        v47 = v24;
        v30 = [v12 string];
        v31 = v30;
        v18 = v25;
        if (v4)
        {
          v13 = v30;
          v31 = v13;
          v11 = v48;
LABEL_28:

          v17 = v47;
LABEL_29:

          goto LABEL_30;
        }

        v35 = [v25 string];
        v44 = v29;
        v11 = v48;
        if (v27 && [v47 isEqualToString:v27])
        {
          v43 = v35;
          v36 = [(BaseDateProvider *)self locale];
          v42 = DropLeftRedundantDesignator(v36);

          if (v42)
          {
            v35 = v43;
            if (v15 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v37 = [v12 string];
              v38 = v15;
              v39 = v37;
              [(TimeIntervalProvider *)self _stringByRemovingDesignatorRange:v38 fromString:v46, v37];
              v31 = v40 = v31;
LABEL_26:
            }
          }

          else
          {
            v35 = v43;
            if (v21 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v39 = [v18 string];
              [(TimeIntervalProvider *)self _stringByRemovingDesignatorRange:v21 fromString:v45, v39];
              v35 = v40 = v43;
              goto LABEL_26;
            }
          }
        }

        v13 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:v31];
        [v13 appendString:v44];
        [v13 appendString:v35];

        goto LABEL_28;
      }
    }

    else
    {
      v23 = [v12 attributedSubstringFromRange:{v15, v14}];
      v17 = [v23 string];

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v45 = 0;
    v46 = v16;
    v48 = v11;
    v24 = v17;
    v27 = 0;
    v25 = 0;
    v21 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_12;
  }

LABEL_31:

  return v13;
}

- (id)_dateIntervalTextWithNarrow:(BOOL)a3
{
  if (a3)
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
  v8 = [(BaseDateProvider *)self locale];
  v9 = LocalizedString(@"INTERVAL_HYPHEN_WIDE", v8);
  v10 = [v7 stringWithFormat:@"%@%@%@", v5, v9, v6];

  return v10;
}

@end