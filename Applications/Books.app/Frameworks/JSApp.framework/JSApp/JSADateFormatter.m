@interface JSADateFormatter
+ (id)stringFromDate:(id)a3 dateFormat:(id)a4;
+ (id)stringFromDate:(id)a3 dateStyle:(unint64_t)a4 timeStyle:(unint64_t)a5;
+ (id)stringFromDateValue:(id)a3 dateFormatValue:(id)a4;
+ (id)stringFromDateValue:(id)a3 dateStyleValue:(id)a4 timeStyleValue:(id)a5;
@end

@implementation JSADateFormatter

+ (id)stringFromDateValue:(id)a3 dateStyleValue:(id)a4 timeStyleValue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isDate])
  {
    v11 = [v8 toDate];
    if (v11)
    {
      if ([v9 isString])
      {
        v12 = [v9 toString];
      }

      else
      {
        v12 = 0;
      }

      if ([v10 isString])
      {
        v14 = [v10 toString];
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_4580(a1, v12);
      v13 = [a1 stringFromDate:v11 dateStyle:v15 timeStyle:{sub_4580(a1, v14)}];

      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (id)stringFromDateValue:(id)a3 dateFormatValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isDate])
  {
    v8 = [v6 toDate];
    if (v8)
    {
      if ([v7 isString])
      {
        v9 = [v7 toString];
      }

      else
      {
        v9 = 0;
      }

      v10 = [a1 stringFromDate:v8 dateFormat:v9];

      goto LABEL_9;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)stringFromDate:(id)a3 dateStyle:(unint64_t)a4 timeStyle:(unint64_t)a5
{
  v7 = a3;
  if (qword_CC058 != -1)
  {
    sub_7EFDC();
  }

  v8 = qword_CC050;
  objc_sync_enter(v8);
  [qword_CC050 setDateStyle:a4];
  [qword_CC050 setTimeStyle:a5];
  v9 = [qword_CC050 stringFromDate:v7];
  objc_sync_exit(v8);

  return v9;
}

+ (id)stringFromDate:(id)a3 dateFormat:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_CC068 != -1)
  {
    sub_7EFF0();
  }

  v7 = qword_CC060;
  objc_sync_enter(v7);
  v8 = [qword_CC060 calendar];
  v9 = [v8 calendarIdentifier];
  v10 = v9;
  if (v9 == NSCalendarIdentifierGregorian)
  {
  }

  else
  {
    v11 = [v6 containsString:@"y"];

    if (!v11)
    {
      goto LABEL_8;
    }

    [v6 stringByAppendingString:@"G"];
    v6 = v8 = v6;
  }

LABEL_8:
  [qword_CC060 setLocalizedDateFormatFromTemplate:v6];
  v12 = [qword_CC060 stringFromDate:v5];
  objc_sync_exit(v7);

  return v12;
}

@end