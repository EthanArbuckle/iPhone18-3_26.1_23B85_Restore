@interface BaseDateProvider
- (BaseDateProvider)initWithCalendar:(id)calendar locale:(id)locale timeZone:(id)zone;
- (id)_timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:(id)format andRemovingDesignator:(BOOL)designator designatorExists:(BOOL *)exists;
- (id)formattedString;
- (id)formattedStringInContext:(id)context;
- (id)updateInterval;
@end

@implementation BaseDateProvider

- (BaseDateProvider)initWithCalendar:(id)calendar locale:(id)locale timeZone:(id)zone
{
  calendarCopy = calendar;
  localeCopy = locale;
  zoneCopy = zone;
  v15.receiver = self;
  v15.super_class = BaseDateProvider;
  v12 = [(BaseDateProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calendar, calendar);
    objc_storeStrong(&v13->_locale, locale);
    objc_storeStrong(&v13->_timeZone, zone);
  }

  return v13;
}

- (id)formattedString
{
  v3 = objc_alloc_init(DateFormattingContext);
  v4 = [(BaseDateProvider *)self formattedStringInContext:v3];

  return v4;
}

- (id)formattedStringInContext:(id)context
{
  contextCopy = context;
  referenceDate = [contextCopy referenceDate];
  [(BaseDateProvider *)self _startSessionWithDate:referenceDate];

  v6 = [(BaseDateProvider *)self _sessionTextForIndex:0 context:contextCopy];

  [(BaseDateProvider *)self _endSession];

  return v6;
}

- (id)updateInterval
{
  _updateFrequency = [(BaseDateProvider *)self _updateFrequency];
  if ((_updateFrequency - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7242310 + _updateFrequency - 1);
  }
}

- (id)_timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:(id)format andRemovingDesignator:(BOOL)designator designatorExists:(BOOL *)exists
{
  designatorCopy = designator;
  v48 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  [MEMORY[0x1E696AB78] _componentsFromFormatString:formatCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v46 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    existsCopy = exists;
    selfCopy = self;
    v41 = designatorCopy;
    v42 = formatCopy;
    v12 = *v44;
    v13 = *MEMORY[0x1E695D900];
    v14 = *MEMORY[0x1E695D910];
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v43 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:{v13, existsCopy, selfCopy}];
        if (([v17 BOOLValue] & 1) == 0)
        {
          v18 = [v16 objectForKeyedSubscript:v14];
          if ([v18 hasPrefix:@"a"])
          {
            v19 = [v9 indexOfObject:v16];

            goto LABEL_13;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v19 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_13:
    formatCopy = v42;
    designatorCopy = v41;
    exists = existsCopy;
    self = selfCopy;
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (exists)
  {
    *exists = v19 != 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BaseDateProvider *)self locale];

    if (designatorCopy)
    {
      if (v19)
      {
        v20 = [v9 objectAtIndexedSubscript:v19 - 1];
        v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E695D900]];
        if ([v21 BOOLValue])
        {
          v22 = [v20 objectForKeyedSubscript:*MEMORY[0x1E695D910]];
          whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v24 = [v22 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          v25 = [v24 length] == 0;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }

      if (v19 >= [v9 count] - 1)
      {
        v33 = [v9 mutableCopy];
      }

      else
      {
        v26 = formatCopy;
        v27 = [v9 objectAtIndexedSubscript:v19 + 1];
        v28 = [v27 objectForKeyedSubscript:*MEMORY[0x1E695D900]];
        if ([v28 BOOLValue])
        {
          v29 = [v27 objectForKeyedSubscript:*MEMORY[0x1E695D910]];
          whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v31 = [v29 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

          v32 = [v31 length] == 0;
        }

        else
        {
          v32 = 0;
        }

        v34 = [v9 mutableCopy];
        v33 = v34;
        if (v32)
        {
          [v34 removeObjectAtIndex:v19 + 1];
        }

        formatCopy = v26;
      }

      [v33 removeObjectAtIndex:v19];
      if (v25)
      {
        [v33 removeObjectAtIndex:v19 - 1];
      }

      v35 = v33;

      v36 = [MEMORY[0x1E696AB78] _formatStringFromComponents:v35];

      formatCopy = v36;
      v9 = v35;
    }
  }

  v37 = formatCopy;

  return formatCopy;
}

@end