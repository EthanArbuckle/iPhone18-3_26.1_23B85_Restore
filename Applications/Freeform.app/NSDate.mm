@interface NSDate
- ($201E9A47BE70A2B12CCA2F48B75AA2F7)crl_DOSTime;
- (BOOL)crl_isEqualToDate:(id)date;
- (BOOL)crl_isEqualToFileModificationDateAccountingForTruncation:(id)truncation;
- (BOOL)p_localeUses24HourTimeCycle;
- (id)crl_fullFormattedDate;
- (id)crl_initWithDOSTime:(id)time;
- (id)crl_relativeAnnotationStringForEarlierDate:(id)date withDateFormatter:(id)formatter shortAsPossible:(BOOL)possible;
- (id)crl_shortFormattedDate;
- (id)dateFormatterFromTemplate12Hour:(id)hour template24Hour:(id)template24Hour withDateFormatter:(id)formatter;
- (id)p_rule1To23HoursAgo:(int64_t)ago;
- (id)p_rule1To59MinutesAgo:(int64_t)ago;
- (id)p_ruleForOverAWeekAgoForDate:(id)date withDateFormatter:(id)formatter;
- (id)p_ruleForOverAYearAgoForDate:(id)date withDateFormatter:(id)formatter;
- (id)p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:(id)date withDateFormatter:(id)formatter;
- (id)p_ruleForYesterday:(id)yesterday withDateFormatter:(id)formatter;
@end

@implementation NSDate

- (id)crl_initWithDOSTime:(id)time
{
  v4 = 0;
  memset(&v9.tm_wday, 0, 32);
  v9.tm_isdst = -1;
  v9.tm_sec = (*&time >> 15) & 0x3E;
  v9.tm_min = (*&time >> 21) & 0x3F;
  v9.tm_hour = *&time >> 27;
  v9.tm_mday = time.var0 & 0x1F;
  v5 = vand_s8(vshl_u32(vdup_n_s32(*&time), 0xFFFFFFF7FFFFFFFBLL), 0x7F0000000FLL);
  *&v9.tm_mon = vadd_s32(v5, 0x50FFFFFFFFLL);
  v7 = (v5.i32[0] - 13) < 0xFFFFFFF4 || *&time >> 30 == 3 || (time.var0 & 0x1F) == 0;
  if (!v7 && ((*&time >> 21) & 0x3F) <= 0x3B && ((*&time >> 15) & 0x3E) <= 0x3B)
  {
    v4 = [(NSDate *)self initWithTimeIntervalSince1970:mktime(&v9)];
  }

  return v4;
}

- ($201E9A47BE70A2B12CCA2F48B75AA2F7)crl_DOSTime
{
  [(NSDate *)self timeIntervalSince1970];
  v6 = v2;
  v3 = localtime(&v6);
  tm_year = v3->tm_year;
  if (tm_year <= 81)
  {
    LOWORD(tm_year) = 81;
  }

  return (((32 * v3->tm_mon + 32) | v3->tm_mday | ((tm_year << 9) + 24576)) | (((32 * LOWORD(v3->tm_min)) | (v3->tm_hour << 11) | (v3->tm_sec >> 1)) << 16));
}

- (id)crl_relativeAnnotationStringForEarlierDate:(id)date withDateFormatter:(id)formatter shortAsPossible:(BOOL)possible
{
  possibleCopy = possible;
  dateCopy = date;
  formatterCopy = formatter;
  if (!dateCopy)
  {
    crl_fullFormattedDate = @" ";
    goto LABEL_22;
  }

  if ([(NSDate *)self compare:dateCopy]== NSOrderedAscending)
  {
    crl_fullFormattedDate = [(NSDate *)self crl_fullFormattedDate];
    goto LABEL_22;
  }

  v10 = +[NSCalendar currentCalendar];
  v11 = [v10 components:240 fromDate:dateCopy toDate:self options:0];
  v12 = [v10 components:752 fromDate:dateCopy];
  v13 = [v10 components:512 fromDate:self];
  weekday = [v13 weekday];
  v15 = weekday - [v12 weekday] == 1 || objc_msgSend(v12, "weekday") == 7 && objc_msgSend(v13, "weekday") == 1;
  if ([v11 day] < 365)
  {
    if ([v11 day] < 8)
    {
      if ([v11 day] <= 1 && (objc_msgSend(v11, "day") != 1 || v15))
      {
        if ([v11 day] == 1 && v15)
        {
          if (!possibleCopy)
          {
            v17 = [(NSDate *)self p_ruleForYesterday:dateCopy withDateFormatter:formatterCopy];
            goto LABEL_20;
          }

          v18 = +[NSBundle mainBundle];
          v19 = v18;
          v20 = @"Yesterday";
        }

        else
        {
          if ([v11 hour] >= 1)
          {
            v17 = -[NSDate p_rule1To23HoursAgo:](self, "p_rule1To23HoursAgo:", [v11 hour]);
            goto LABEL_20;
          }

          if ([v11 minute] >= 1)
          {
            v17 = -[NSDate p_rule1To59MinutesAgo:](self, "p_rule1To59MinutesAgo:", [v11 minute]);
            goto LABEL_20;
          }

          v18 = +[NSBundle mainBundle];
          v19 = v18;
          v20 = @"Just now";
        }

        v21 = [v18 localizedStringForKey:v20 value:0 table:0];

        goto LABEL_21;
      }

      v17 = [(NSDate *)self p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:dateCopy withDateFormatter:formatterCopy];
    }

    else
    {
      v17 = [(NSDate *)self p_ruleForOverAWeekAgoForDate:dateCopy withDateFormatter:formatterCopy];
    }
  }

  else
  {
    v17 = [(NSDate *)self p_ruleForOverAYearAgoForDate:dateCopy withDateFormatter:formatterCopy];
  }

LABEL_20:
  v21 = v17;
LABEL_21:
  crl_fullFormattedDate = v21;

LABEL_22:

  return crl_fullFormattedDate;
}

- (id)p_rule1To59MinutesAgo:(int64_t)ago
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"%d min ago" value:0 table:0];

  v6 = [NSString localizedStringWithFormat:v5, ago];

  return v6;
}

- (id)p_rule1To23HoursAgo:(int64_t)ago
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"%ld hour(s) ago" value:0 table:0];
  v6 = [NSString localizedStringWithFormat:v5, ago];

  return v6;
}

- (id)p_ruleForYesterday:(id)yesterday withDateFormatter:(id)formatter
{
  yesterdayCopy = yesterday;
  v7 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"hhmma" template24Hour:@"HHmm" withDateFormatter:formatter];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Yesterday value:%@" table:{0, 0}];

  v10 = [v7 stringFromDate:yesterdayCopy];

  v11 = [NSString stringWithFormat:v9, v10];

  return v11;
}

- (id)p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:(id)date withDateFormatter:(id)formatter
{
  dateCopy = date;
  v7 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"eeehhmma" template24Hour:@"eeeHHmm" withDateFormatter:formatter];
  v8 = [v7 stringFromDate:dateCopy];

  return v8;
}

- (id)p_ruleForOverAWeekAgoForDate:(id)date withDateFormatter:(id)formatter
{
  dateCopy = date;
  v7 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"MMMdhhmma" template24Hour:@"MMMdHHmm" withDateFormatter:formatter];
  v8 = [v7 stringFromDate:dateCopy];

  return v8;
}

- (id)p_ruleForOverAYearAgoForDate:(id)date withDateFormatter:(id)formatter
{
  dateCopy = date;
  formatterCopy = formatter;
  v7 = formatterCopy;
  if (formatterCopy)
  {
    v8 = formatterCopy;
  }

  else
  {
    v8 = objc_alloc_init(NSDateFormatter);
  }

  v9 = v8;
  [v8 setLocalizedDateFormatFromTemplate:@"Mdy"];
  v10 = [v9 stringFromDate:dateCopy];

  return v10;
}

- (id)crl_fullFormattedDate
{
  v3 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"MMMMddyyyyhhmma" template24Hour:@"MMMMddyyyyHHmm" withDateFormatter:0];
  v4 = [v3 stringFromDate:self];

  return v4;
}

- (id)crl_shortFormattedDate
{
  v3 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"MMMdyhhmma" template24Hour:@"MMMdyHHmm" withDateFormatter:0];
  v4 = [v3 stringFromDate:self];

  return v4;
}

- (id)dateFormatterFromTemplate12Hour:(id)hour template24Hour:(id)template24Hour withDateFormatter:(id)formatter
{
  hourCopy = hour;
  template24HourCopy = template24Hour;
  formatterCopy = formatter;
  v11 = formatterCopy;
  if (formatterCopy)
  {
    v12 = formatterCopy;
  }

  else
  {
    v12 = objc_alloc_init(NSDateFormatter);
  }

  v13 = v12;
  if ([(NSDate *)self p_localeUses24HourTimeCycle])
  {
    v14 = template24HourCopy;
  }

  else
  {
    v14 = hourCopy;
  }

  [v13 setLocalizedDateFormatFromTemplate:v14];

  return v13;
}

- (BOOL)p_localeUses24HourTimeCycle
{
  v2 = +[NSLocale autoupdatingCurrentLocale];
  v3 = [NSDateFormatter dateFormatFromTemplate:@"j" options:0 locale:v2];
  v4 = [v3 rangeOfString:@"a"] == 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

- (BOOL)crl_isEqualToDate:(id)date
{
  dateCopy = date;
  if (dateCopy)
  {
    [(NSDate *)self timeIntervalSince1970];
    v6 = v5;
    [dateCopy timeIntervalSince1970];
    v8 = v6 == v7 || vabdd_f64(v6, v7) < fabs(v7 * 1.0e-10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)crl_isEqualToFileModificationDateAccountingForTruncation:(id)truncation
{
  truncationCopy = truncation;
  if (truncationCopy)
  {
    if (([(NSDate *)self isEqual:truncationCopy]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      [(NSDate *)self timeIntervalSinceReferenceDate];
      v7 = v6;
      [truncationCopy timeIntervalSinceReferenceDate];
      v5 = 1;
      v9 = v7 == floor(v8) || v7 == v8;
      if (!v9 && vabdd_f64(v7, v8) >= 0.001)
      {
        v5 = floor(v7) == v8;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end