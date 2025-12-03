@interface JSADateFormatter
+ (id)stringFromDate:(id)date dateFormat:(id)format;
+ (id)stringFromDate:(id)date dateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle;
+ (id)stringFromDateValue:(id)value dateFormatValue:(id)formatValue;
+ (id)stringFromDateValue:(id)value dateStyleValue:(id)styleValue timeStyleValue:(id)timeStyleValue;
@end

@implementation JSADateFormatter

+ (id)stringFromDateValue:(id)value dateStyleValue:(id)styleValue timeStyleValue:(id)timeStyleValue
{
  valueCopy = value;
  styleValueCopy = styleValue;
  timeStyleValueCopy = timeStyleValue;
  if ([valueCopy isDate])
  {
    toDate = [valueCopy toDate];
    if (toDate)
    {
      if ([styleValueCopy isString])
      {
        toString = [styleValueCopy toString];
      }

      else
      {
        toString = 0;
      }

      if ([timeStyleValueCopy isString])
      {
        toString2 = [timeStyleValueCopy toString];
      }

      else
      {
        toString2 = 0;
      }

      v15 = sub_4580(self, toString);
      v13 = [self stringFromDate:toDate dateStyle:v15 timeStyle:{sub_4580(self, toString2)}];

      goto LABEL_12;
    }
  }

  else
  {
    toDate = 0;
  }

  v13 = 0;
LABEL_12:

  return v13;
}

+ (id)stringFromDateValue:(id)value dateFormatValue:(id)formatValue
{
  valueCopy = value;
  formatValueCopy = formatValue;
  if ([valueCopy isDate])
  {
    toDate = [valueCopy toDate];
    if (toDate)
    {
      if ([formatValueCopy isString])
      {
        toString = [formatValueCopy toString];
      }

      else
      {
        toString = 0;
      }

      v10 = [self stringFromDate:toDate dateFormat:toString];

      goto LABEL_9;
    }
  }

  else
  {
    toDate = 0;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

+ (id)stringFromDate:(id)date dateStyle:(unint64_t)style timeStyle:(unint64_t)timeStyle
{
  dateCopy = date;
  if (qword_CC058 != -1)
  {
    sub_7EFDC();
  }

  v8 = qword_CC050;
  objc_sync_enter(v8);
  [qword_CC050 setDateStyle:style];
  [qword_CC050 setTimeStyle:timeStyle];
  v9 = [qword_CC050 stringFromDate:dateCopy];
  objc_sync_exit(v8);

  return v9;
}

+ (id)stringFromDate:(id)date dateFormat:(id)format
{
  dateCopy = date;
  formatCopy = format;
  if (qword_CC068 != -1)
  {
    sub_7EFF0();
  }

  v7 = qword_CC060;
  objc_sync_enter(v7);
  calendar = [qword_CC060 calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  v10 = calendarIdentifier;
  if (calendarIdentifier == NSCalendarIdentifierGregorian)
  {
  }

  else
  {
    v11 = [formatCopy containsString:@"y"];

    if (!v11)
    {
      goto LABEL_8;
    }

    [formatCopy stringByAppendingString:@"G"];
    formatCopy = calendar = formatCopy;
  }

LABEL_8:
  [qword_CC060 setLocalizedDateFormatFromTemplate:formatCopy];
  v12 = [qword_CC060 stringFromDate:dateCopy];
  objc_sync_exit(v7);

  return v12;
}

@end