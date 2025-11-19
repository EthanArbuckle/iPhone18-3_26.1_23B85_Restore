@interface NSDate
- ($201E9A47BE70A2B12CCA2F48B75AA2F7)crl_DOSTime;
- (BOOL)crl_isEqualToDate:(id)a3;
- (BOOL)crl_isEqualToFileModificationDateAccountingForTruncation:(id)a3;
- (BOOL)p_localeUses24HourTimeCycle;
- (id)crl_fullFormattedDate;
- (id)crl_initWithDOSTime:(id)a3;
- (id)crl_relativeAnnotationStringForEarlierDate:(id)a3 withDateFormatter:(id)a4 shortAsPossible:(BOOL)a5;
- (id)crl_shortFormattedDate;
- (id)dateFormatterFromTemplate12Hour:(id)a3 template24Hour:(id)a4 withDateFormatter:(id)a5;
- (id)p_rule1To23HoursAgo:(int64_t)a3;
- (id)p_rule1To59MinutesAgo:(int64_t)a3;
- (id)p_ruleForOverAWeekAgoForDate:(id)a3 withDateFormatter:(id)a4;
- (id)p_ruleForOverAYearAgoForDate:(id)a3 withDateFormatter:(id)a4;
- (id)p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:(id)a3 withDateFormatter:(id)a4;
- (id)p_ruleForYesterday:(id)a3 withDateFormatter:(id)a4;
@end

@implementation NSDate

- (id)crl_initWithDOSTime:(id)a3
{
  v4 = 0;
  memset(&v9.tm_wday, 0, 32);
  v9.tm_isdst = -1;
  v9.tm_sec = (*&a3 >> 15) & 0x3E;
  v9.tm_min = (*&a3 >> 21) & 0x3F;
  v9.tm_hour = *&a3 >> 27;
  v9.tm_mday = a3.var0 & 0x1F;
  v5 = vand_s8(vshl_u32(vdup_n_s32(*&a3), 0xFFFFFFF7FFFFFFFBLL), 0x7F0000000FLL);
  *&v9.tm_mon = vadd_s32(v5, 0x50FFFFFFFFLL);
  v7 = (v5.i32[0] - 13) < 0xFFFFFFF4 || *&a3 >> 30 == 3 || (a3.var0 & 0x1F) == 0;
  if (!v7 && ((*&a3 >> 21) & 0x3F) <= 0x3B && ((*&a3 >> 15) & 0x3E) <= 0x3B)
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

- (id)crl_relativeAnnotationStringForEarlierDate:(id)a3 withDateFormatter:(id)a4 shortAsPossible:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v16 = @" ";
    goto LABEL_22;
  }

  if ([(NSDate *)self compare:v8]== NSOrderedAscending)
  {
    v16 = [(NSDate *)self crl_fullFormattedDate];
    goto LABEL_22;
  }

  v10 = +[NSCalendar currentCalendar];
  v11 = [v10 components:240 fromDate:v8 toDate:self options:0];
  v12 = [v10 components:752 fromDate:v8];
  v13 = [v10 components:512 fromDate:self];
  v14 = [v13 weekday];
  v15 = v14 - [v12 weekday] == 1 || objc_msgSend(v12, "weekday") == 7 && objc_msgSend(v13, "weekday") == 1;
  if ([v11 day] < 365)
  {
    if ([v11 day] < 8)
    {
      if ([v11 day] <= 1 && (objc_msgSend(v11, "day") != 1 || v15))
      {
        if ([v11 day] == 1 && v15)
        {
          if (!v5)
          {
            v17 = [(NSDate *)self p_ruleForYesterday:v8 withDateFormatter:v9];
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

      v17 = [(NSDate *)self p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:v8 withDateFormatter:v9];
    }

    else
    {
      v17 = [(NSDate *)self p_ruleForOverAWeekAgoForDate:v8 withDateFormatter:v9];
    }
  }

  else
  {
    v17 = [(NSDate *)self p_ruleForOverAYearAgoForDate:v8 withDateFormatter:v9];
  }

LABEL_20:
  v21 = v17;
LABEL_21:
  v16 = v21;

LABEL_22:

  return v16;
}

- (id)p_rule1To59MinutesAgo:(int64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"%d min ago" value:0 table:0];

  v6 = [NSString localizedStringWithFormat:v5, a3];

  return v6;
}

- (id)p_rule1To23HoursAgo:(int64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = [v4 localizedStringForKey:@"%ld hour(s) ago" value:0 table:0];
  v6 = [NSString localizedStringWithFormat:v5, a3];

  return v6;
}

- (id)p_ruleForYesterday:(id)a3 withDateFormatter:(id)a4
{
  v6 = a3;
  v7 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"hhmma" template24Hour:@"HHmm" withDateFormatter:a4];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"Yesterday value:%@" table:{0, 0}];

  v10 = [v7 stringFromDate:v6];

  v11 = [NSString stringWithFormat:v9, v10];

  return v11;
}

- (id)p_ruleForUpToSevenDaysAgoAndNotYesterdayForDate:(id)a3 withDateFormatter:(id)a4
{
  v6 = a3;
  v7 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"eeehhmma" template24Hour:@"eeeHHmm" withDateFormatter:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

- (id)p_ruleForOverAWeekAgoForDate:(id)a3 withDateFormatter:(id)a4
{
  v6 = a3;
  v7 = [(NSDate *)self dateFormatterFromTemplate12Hour:@"MMMdhhmma" template24Hour:@"MMMdHHmm" withDateFormatter:a4];
  v8 = [v7 stringFromDate:v6];

  return v8;
}

- (id)p_ruleForOverAYearAgoForDate:(id)a3 withDateFormatter:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_alloc_init(NSDateFormatter);
  }

  v9 = v8;
  [v8 setLocalizedDateFormatFromTemplate:@"Mdy"];
  v10 = [v9 stringFromDate:v5];

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

- (id)dateFormatterFromTemplate12Hour:(id)a3 template24Hour:(id)a4 withDateFormatter:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_alloc_init(NSDateFormatter);
  }

  v13 = v12;
  if ([(NSDate *)self p_localeUses24HourTimeCycle])
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
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

- (BOOL)crl_isEqualToDate:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(NSDate *)self timeIntervalSince1970];
    v6 = v5;
    [v4 timeIntervalSince1970];
    v8 = v6 == v7 || vabdd_f64(v6, v7) < fabs(v7 * 1.0e-10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)crl_isEqualToFileModificationDateAccountingForTruncation:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (([(NSDate *)self isEqual:v4]& 1) != 0)
    {
      v5 = 1;
    }

    else
    {
      [(NSDate *)self timeIntervalSinceReferenceDate];
      v7 = v6;
      [v4 timeIntervalSinceReferenceDate];
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