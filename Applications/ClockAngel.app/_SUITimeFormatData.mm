@interface _SUITimeFormatData
+ (id)_timeFormatDataAccessLock;
+ (id)_timeLocaleForLocale:(id)a3;
+ (id)instanceForLocale:(id)a3;
- (_SUITimeFormatData)initWithLocale:(id)a3;
@end

@implementation _SUITimeFormatData

+ (id)instanceForLocale:(id)a3
{
  v4 = a3;
  v5 = [a1 _timeFormatDataAccessLock];
  [v5 lock];
  v6 = qword_100119B00;
  if (!qword_100119B00)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = qword_100119B00;
    qword_100119B00 = v7;

    v6 = qword_100119B00;
  }

  v9 = [v6 objectForKeyedSubscript:v4];
  if (!v9)
  {
    v9 = [[_SUITimeFormatData alloc] initWithLocale:v4];
    [qword_100119B00 setObject:v9 forKeyedSubscript:v4];
  }

  [v5 unlock];

  return v9;
}

+ (id)_timeFormatDataAccessLock
{
  if (qword_100119B10[0] != -1)
  {
    sub_1000C6550();
  }

  v3 = qword_100119B08;

  return v3;
}

+ (id)_timeLocaleForLocale:(id)a3
{
  v3 = a3;
  v4 = [NSLocale alloc];
  v5 = [v3 localeIdentifier];

  v6 = [v4 initWithLocaleIdentifier:v5];

  return v6;
}

- (_SUITimeFormatData)initWithLocale:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = _SUITimeFormatData;
  v5 = [(_SUITimeFormatData *)&v34 init];
  if (v5)
  {
    v6 = [objc_opt_class() _timeLocaleForLocale:v4];
    v7 = [NSDateFormatter dateFormatFromTemplate:@"HHmm" options:0 locale:v6];
    formatHourMin = v5->_formatHourMin;
    v5->_formatHourMin = v7;

    v9 = [NSDateFormatter dateFormatFromTemplate:@"HHmmssSS" options:0 locale:v6];
    formatHourMinSecSubsec = v5->_formatHourMinSecSubsec;
    v5->_formatHourMinSecSubsec = v9;

    v11 = [NSDateFormatter dateFormatFromTemplate:@"HHmmss" options:0 locale:v6];
    formatHourMinSec = v5->_formatHourMinSec;
    v5->_formatHourMinSec = v11;

    v13 = [NSDateFormatter dateFormatFromTemplate:@"mmssSS" options:0 locale:v6];
    formatMinSecSubsec = v5->_formatMinSecSubsec;
    v5->_formatMinSecSubsec = v13;

    v15 = [NSDateFormatter dateFormatFromTemplate:@"mmss" options:0 locale:v6];
    formatMinSec = v5->_formatMinSec;
    v5->_formatMinSec = v15;

    v17 = [NSDateFormatter dateFormatFromTemplate:@"m" options:0 locale:v6];
    formatMin = v5->_formatMin;
    v5->_formatMin = v17;

    v19 = [v6 localeIdentifier];
    v20 = [v19 hasPrefix:@"ee_"];

    if (v20)
    {
      if ([(NSString *)v5->_formatMinSecSubsec hasPrefix:@"'aɖabaƒoƒo' "])
      {
        v21 = -[NSString substringFromIndex:](v5->_formatMinSecSubsec, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);
        v22 = v5->_formatMinSecSubsec;
        v5->_formatMinSecSubsec = v21;
      }

      if ([(NSString *)v5->_formatMinSec hasPrefix:@"'aɖabaƒoƒo' "])
      {
        v23 = -[NSString substringFromIndex:](v5->_formatMinSec, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);
        v24 = v5->_formatMinSec;
        v5->_formatMinSec = v23;
      }
    }

    v25 = objc_alloc_init(NSNumberFormatter);
    singleWidthNumberFormatter = v5->_singleWidthNumberFormatter;
    v5->_singleWidthNumberFormatter = v25;

    [(NSNumberFormatter *)v5->_singleWidthNumberFormatter setNumberStyle:0];
    [(NSNumberFormatter *)v5->_singleWidthNumberFormatter setPositiveFormat:@"0"];
    [(NSNumberFormatter *)v5->_singleWidthNumberFormatter setLocale:v4];
    v27 = objc_alloc_init(NSNumberFormatter);
    doubleWidthNumberFormatter = v5->_doubleWidthNumberFormatter;
    v5->_doubleWidthNumberFormatter = v27;

    [(NSNumberFormatter *)v5->_doubleWidthNumberFormatter setNumberStyle:0];
    [(NSNumberFormatter *)v5->_doubleWidthNumberFormatter setPositiveFormat:@"00"];
    [(NSNumberFormatter *)v5->_doubleWidthNumberFormatter setLocale:v4];
    v29 = objc_alloc_init(NSDateComponentsFormatter);
    abbreviatedHourDateFormatter = v5->_abbreviatedHourDateFormatter;
    v5->_abbreviatedHourDateFormatter = v29;

    [(NSDateComponentsFormatter *)v5->_abbreviatedHourDateFormatter setUnitsStyle:1];
    [(NSDateComponentsFormatter *)v5->_abbreviatedHourDateFormatter setAllowedUnits:32];
    v31 = objc_alloc_init(NSDateComponentsFormatter);
    abbreviatedHourMinuteDateFormatter = v5->_abbreviatedHourMinuteDateFormatter;
    v5->_abbreviatedHourMinuteDateFormatter = v31;

    [(NSDateComponentsFormatter *)v5->_abbreviatedHourMinuteDateFormatter setUnitsStyle:1];
    [(NSDateComponentsFormatter *)v5->_abbreviatedHourMinuteDateFormatter setAllowedUnits:96];
  }

  return v5;
}

@end