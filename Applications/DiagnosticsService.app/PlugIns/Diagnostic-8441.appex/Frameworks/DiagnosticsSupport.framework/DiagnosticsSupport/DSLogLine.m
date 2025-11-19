@interface DSLogLine
+ (id)logLinesFromArray:(id)a3;
- (BOOL)BOOLFromFieldAtIndex:(int)a3;
- (DSLogLine)initWithLine:(id)a3;
- (DSLogLine)initWithLogLine:(id)a3;
- (double)doubleFromFieldAtIndex:(int)a3;
- (id)blankingStringFromFieldAtIndex:(int)a3;
- (id)stringFromFieldAtIndex:(int)a3;
- (int)integerFromFieldAtIndex:(int)a3;
- (int64_t)longLongFromFieldAtIndex:(int)a3;
@end

@implementation DSLogLine

- (DSLogLine)initWithLine:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = DSLogLine;
  v5 = [(DSLogLine *)&v28 init];
  if (!v5)
  {
LABEL_26:
    v23 = v5;
    goto LABEL_27;
  }

  if ([v4 length] >= 2)
  {
    v6 = [v4 componentsSeparatedByString:{@", "}];
    p_fields = &v5->_fields;
    fields = v5->_fields;
    v5->_fields = v6;

    if ([(NSArray *)v5->_fields count]<= 1)
    {
      v9 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(DSLogLine *)&v5->_fields initWithLine:v9];
      }

      goto LABEL_20;
    }

    v10 = +[DSDateFormatter sharedFormatter];
    v11 = [v10 formatterWithType:2];
    v12 = [(NSArray *)v5->_fields objectAtIndex:0];
    v13 = [v11 dateFromString:v12];
    date = v5->_date;
    v5->_date = v13;

    v15 = v5->_date;
    if (v15)
    {
      v16 = +[NSDate date];
      [(NSDate *)v15 timeIntervalSinceDate:v16];
      v18 = v17;

      if (v18 > 86400.0 || v18 <= -1209600.0)
      {
        v22 = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(DSLogLine *)v22 initWithLine:v18];
        }
      }

      else
      {
        v19 = [(NSArray *)v5->_fields objectAtIndex:1];
        type = v5->_type;
        v5->_type = v19;

        if ([(NSString *)v5->_type length])
        {
          v5->_isUsable = 1;
          if ([(NSArray *)v5->_fields count]< 7)
          {
            v21 = 0;
          }

          else
          {
            v21 = [*p_fields objectAtIndexedSubscript:6];
          }

          exception = v5->_exception;
          v5->_exception = v21;

          if ([(NSArray *)v5->_fields count]< 6)
          {
            v25 = 0;
          }

          else
          {
            v25 = [*p_fields objectAtIndexedSubscript:5];
          }

          bundleID = v5->_bundleID;
          v5->_bundleID = v25;

          goto LABEL_26;
        }

        v22 = DiagnosticLogHandleForCategory(3);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [DSLogLine initWithLine:v22];
        }
      }
    }

    else
    {
      v22 = DiagnosticLogHandleForCategory(3);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [DSLogLine initWithLine:v22];
      }
    }
  }

LABEL_20:
  v23 = 0;
LABEL_27:

  return v23;
}

- (DSLogLine)initWithLogLine:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = DSLogLine;
  v5 = [(DSLogLine *)&v15 init];
  if (v5)
  {
    v6 = [v4 type];
    type = v5->_type;
    v5->_type = v6;

    v8 = [v4 date];
    date = v5->_date;
    v5->_date = v8;

    v5->_isUsable = [v4 isUsable];
    v10 = [v4 exception];
    exception = v5->_exception;
    v5->_exception = v10;

    v12 = [v4 fields];
    fields = v5->_fields;
    v5->_fields = v12;
  }

  return v5;
}

+ (id)logLinesFromArray:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [DSLogLine alloc];
        v12 = [(DSLogLine *)v11 initWithLine:v10, v14];
        if (v12)
        {
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

- (int)integerFromFieldAtIndex:(int)a3
{
  v5 = [(DSLogLine *)self fields];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(DSLogLine *)self fields];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 intValue];

  return v9;
}

- (int64_t)longLongFromFieldAtIndex:(int)a3
{
  v5 = [(DSLogLine *)self fields];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(DSLogLine *)self fields];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 longLongValue];

  return v9;
}

- (double)doubleFromFieldAtIndex:(int)a3
{
  v5 = [(DSLogLine *)self fields];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0.0;
  }

  v7 = [(DSLogLine *)self fields];
  v8 = [v7 objectAtIndexedSubscript:a3];
  [v8 doubleValue];
  v10 = v9;

  return v10;
}

- (BOOL)BOOLFromFieldAtIndex:(int)a3
{
  v5 = [(DSLogLine *)self fields];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    return 0;
  }

  v7 = [(DSLogLine *)self fields];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 BOOLValue];

  return v9;
}

- (id)blankingStringFromFieldAtIndex:(int)a3
{
  v5 = [(DSLogLine *)self fields];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = &stru_1C970;
  }

  else
  {
    v7 = [(DSLogLine *)self fields];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (id)stringFromFieldAtIndex:(int)a3
{
  v5 = [(DSLogLine *)self fields];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(DSLogLine *)self fields];
    v8 = [v7 objectAtIndexedSubscript:a3];
  }

  return v8;
}

- (void)initWithLine:(os_log_t)log .cold.2(os_log_t log, double a2)
{
  v2 = 134217984;
  v3 = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[DSLogLine] ignoring log line, log date out of range: %ld", &v2, 0xCu);
}

- (void)initWithLine:(id *)a1 .cold.4(id *a1, NSObject *a2)
{
  v3 = [*a1 count];
  v4 = 134217984;
  v5 = v3;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "[DSLogLine] ignoring log line, field count too small: %ld", &v4, 0xCu);
}

@end