@interface BaseDateProvider
- (BaseDateProvider)initWithCalendar:(id)a3 locale:(id)a4 timeZone:(id)a5;
- (id)_timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:(id)a3 andRemovingDesignator:(BOOL)a4 designatorExists:(BOOL *)a5;
- (id)formattedString;
- (id)formattedStringInContext:(id)a3;
- (id)updateInterval;
@end

@implementation BaseDateProvider

- (BaseDateProvider)initWithCalendar:(id)a3 locale:(id)a4 timeZone:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = BaseDateProvider;
  v12 = [(BaseDateProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_calendar, a3);
    objc_storeStrong(&v13->_locale, a4);
    objc_storeStrong(&v13->_timeZone, a5);
  }

  return v13;
}

- (id)formattedString
{
  v3 = objc_alloc_init(DateFormattingContext);
  v4 = [(BaseDateProvider *)self formattedStringInContext:v3];

  return v4;
}

- (id)formattedStringInContext:(id)a3
{
  v4 = a3;
  v5 = [v4 referenceDate];
  [(BaseDateProvider *)self _startSessionWithDate:v5];

  v6 = [(BaseDateProvider *)self _sessionTextForIndex:0 context:v4];

  [(BaseDateProvider *)self _endSession];

  return v6;
}

- (id)updateInterval
{
  v2 = [(BaseDateProvider *)self _updateFrequency];
  if ((v2 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7242310 + v2 - 1);
  }
}

- (id)_timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:(id)a3 andRemovingDesignator:(BOOL)a4 designatorExists:(BOOL *)a5
{
  v6 = a4;
  v48 = *MEMORY[0x1E69E9840];
  v8 = a3;
  [MEMORY[0x1E696AB78] _componentsFromFormatString:v8];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v9 = v46 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v10)
  {
    v11 = v10;
    v39 = a5;
    v40 = self;
    v41 = v6;
    v42 = v8;
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
        v17 = [v16 objectForKeyedSubscript:{v13, v39, v40}];
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
    v8 = v42;
    v6 = v41;
    a5 = v39;
    self = v40;
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a5)
  {
    *a5 = v19 != 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BaseDateProvider *)self locale];

    if (v6)
    {
      if (v19)
      {
        v20 = [v9 objectAtIndexedSubscript:v19 - 1];
        v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E695D900]];
        if ([v21 BOOLValue])
        {
          v22 = [v20 objectForKeyedSubscript:*MEMORY[0x1E695D910]];
          v23 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v24 = [v22 stringByTrimmingCharactersInSet:v23];

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
        v26 = v8;
        v27 = [v9 objectAtIndexedSubscript:v19 + 1];
        v28 = [v27 objectForKeyedSubscript:*MEMORY[0x1E695D900]];
        if ([v28 BOOLValue])
        {
          v29 = [v27 objectForKeyedSubscript:*MEMORY[0x1E695D910]];
          v30 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
          v31 = [v29 stringByTrimmingCharactersInSet:v30];

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

        v8 = v26;
      }

      [v33 removeObjectAtIndex:v19];
      if (v25)
      {
        [v33 removeObjectAtIndex:v19 - 1];
      }

      v35 = v33;

      v36 = [MEMORY[0x1E696AB78] _formatStringFromComponents:v35];

      v8 = v36;
      v9 = v35;
    }
  }

  v37 = v8;

  return v8;
}

@end