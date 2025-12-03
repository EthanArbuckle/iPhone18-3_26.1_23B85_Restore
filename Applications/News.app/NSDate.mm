@interface NSDate
+ (id)_fr_sharedDayOfWeekDateFormatter;
+ (id)_fr_sharedGregorianCalendar;
+ (id)_fr_sharedShortDateDateFormatter;
+ (id)_fr_sharedShortTimeDateFormatter;
+ (id)randomDateBeforeNow;
- (BOOL)isToday;
- (BOOL)isYesterday;
- (id)fr_gregorianLongDisplayString;
- (id)fr_gregorianLongDisplayStringPreferringToday;
- (id)fr_gregorianMediumDisplayString;
- (id)fr_gregorianMediumDisplayStringPreferringToday;
- (id)fr_gregorianShortDisplayString;
- (id)fr_gregorianShortDisplayStringPreferringToday;
- (id)fr_localDate;
- (id)fr_partOfDay;
- (id)stringWithFormat:(id)format;
- (id)stringWithTopStoriesFormat;
@end

@implementation NSDate

- (BOOL)isToday
{
  v3 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v3 isDateInToday:self];

  return self;
}

- (BOOL)isYesterday
{
  v3 = +[NSCalendar currentCalendar];
  LOBYTE(self) = [v3 isDateInYesterday:self];

  return self;
}

+ (id)randomDateBeforeNow
{
  +[NSDate timeIntervalSinceReferenceDate];
  v3 = v2;
  FCRandom();
  v5 = v3 * v4;

  return [NSDate dateWithTimeIntervalSinceReferenceDate:v5];
}

- (id)stringWithFormat:(id)format
{
  v4 = [NSDateFormatter dateFormatterWithFormat:format forReuse:1];
  v5 = [v4 stringFromDate:self];

  return v5;
}

- (id)stringWithTopStoriesFormat
{
  fr_partOfDay = [(NSDate *)self fr_partOfDay];
  v4 = [NSString alloc];
  v5 = [NSDateFormatter dateFormatterWithFormat:@"EEEE '%@' forReuse:MMMM d", 1];
  v6 = [v5 stringFromDate:self];
  v7 = [v4 initWithFormat:v6, fr_partOfDay];

  return v7;
}

- (id)fr_partOfDay
{
  v3 = +[NSCalendar currentCalendar];
  v4 = [v3 component:32 fromDate:self];
  if (v4 > 0xB)
  {
    if ((v4 - 12) > 4)
    {
      v8 = (v4 - 17);
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      if (v8 > 3)
      {
        v7 = @"Night";
      }

      else
      {
        v7 = @"Evening";
      }
    }

    else
    {
      v5 = +[NSBundle mainBundle];
      v6 = v5;
      v7 = @"Afternoon";
    }
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v6 = v5;
    v7 = @"Morning";
  }

  v9 = [v5 localizedStringForKey:v7 value:&stru_1000C67A8 table:0];

  return v9;
}

- (id)fr_gregorianShortDisplayStringPreferringToday
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100009B48;
  v9 = sub_100009EF8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001E994;
  v4[3] = &unk_1000C24B8;
  v4[4] = &v5;
  [(NSDate *)self nss_gregorianDescriptionWithFlags:1 options:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)fr_gregorianMediumDisplayStringPreferringToday
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100009B48;
  v9 = sub_100009EF8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001EAAC;
  v4[3] = &unk_1000C24B8;
  v4[4] = &v5;
  [(NSDate *)self nss_gregorianDescriptionWithFlags:2 options:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)fr_gregorianLongDisplayStringPreferringToday
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100009B48;
  v9 = sub_100009EF8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001EBC8;
  v4[3] = &unk_1000C24B8;
  v4[4] = &v5;
  [(NSDate *)self nss_gregorianDescriptionWithFlags:4 options:1 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)fr_gregorianShortDisplayString
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100009B48;
  v9 = sub_100009EF8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001ECE4;
  v4[3] = &unk_1000C24B8;
  v4[4] = &v5;
  [(NSDate *)self nss_gregorianDescriptionWithFlags:1 options:0 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)fr_gregorianMediumDisplayString
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100009B48;
  v9 = sub_100009EF8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001EDFC;
  v4[3] = &unk_1000C24B8;
  v4[4] = &v5;
  [(NSDate *)self nss_gregorianDescriptionWithFlags:2 options:0 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)fr_gregorianLongDisplayString
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100009B48;
  v9 = sub_100009EF8;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001EF18;
  v4[3] = &unk_1000C24B8;
  v4[4] = &v5;
  [(NSDate *)self nss_gregorianDescriptionWithFlags:4 options:0 completion:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)fr_localDate
{
  v3 = objc_alloc_init(NSDateFormatter);
  v4 = +[NSTimeZone defaultTimeZone];
  [v3 setTimeZone:v4];

  [v3 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'"];
  v5 = objc_alloc_init(NSDateFormatter);
  v6 = [NSTimeZone timeZoneWithName:@"UTC"];
  [v5 setTimeZone:v6];

  [v5 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'"];
  v7 = [v3 stringFromDate:self];
  v8 = [v5 dateFromString:v7];

  return v8;
}

+ (id)_fr_sharedGregorianCalendar
{
  if (qword_1000E6130 != -1)
  {
    sub_10006BBA4();
  }

  v3 = qword_1000E6138;

  return v3;
}

+ (id)_fr_sharedDayOfWeekDateFormatter
{
  if (qword_1000E6140 != -1)
  {
    sub_10006BBB8();
  }

  v3 = qword_1000E6148;

  return v3;
}

+ (id)_fr_sharedShortTimeDateFormatter
{
  if (qword_1000E6150 != -1)
  {
    sub_10006BBCC();
  }

  v3 = qword_1000E6158;

  return v3;
}

+ (id)_fr_sharedShortDateDateFormatter
{
  if (qword_1000E6160 != -1)
  {
    sub_10006BBE0();
  }

  v3 = qword_1000E6168;

  return v3;
}

@end