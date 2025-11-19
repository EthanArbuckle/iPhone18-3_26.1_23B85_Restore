@interface NSDate(InternetDateTime)
+ (id)dateFromInternetDateTimeString:()InternetDateTime formatHint:;
+ (id)dateFromRFC3339String:()InternetDateTime;
+ (id)dateFromRFC822String:()InternetDateTime;
+ (id)internetDateTimeFormatter;
@end

@implementation NSDate(InternetDateTime)

+ (id)dateFromRFC3339String:()InternetDateTime
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] internetDateTimeFormatter];
    objc_sync_enter(v4);
    v5 = [MEMORY[0x277CCACA8] stringWithString:v3];
    v6 = [v5 uppercaseString];

    v7 = [v6 stringByReplacingOccurrencesOfString:@"Z" withString:@"-0000"];

    if ([v7 length] >= 0x15)
    {
      v8 = [v7 stringByReplacingOccurrencesOfString:@":" withString:&stru_2850323E8 options:0 range:{20, objc_msgSend(v7, "length") - 20}];

      v7 = v8;
    }

    [v4 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ssZZZ"];
    v9 = [v4 dateFromString:v7];
    if (!v9)
    {
      [v4 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss.SSSZZZ"];
      v9 = [v4 dateFromString:v7];
      if (!v9)
      {
        [v4 setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss"];
        v9 = [v4 dateFromString:v7];
        if (!v9)
        {
          NSLog(&cfstr_CouldNotParseR_0.isa, v3);
          v9 = 0;
        }
      }
    }

    objc_sync_exit(v4);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)dateFromRFC822String:()InternetDateTime
{
  v3 = a3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_15;
  }

  v4 = [MEMORY[0x277CBEAA8] internetDateTimeFormatter];
  objc_sync_enter(v4);
  v5 = [MEMORY[0x277CCACA8] stringWithString:v3];
  v6 = [v5 uppercaseString];

  if ([v6 rangeOfString:{@", "}] == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setDateFormat:@"d MMM yyyy HH:mm:ss zzz"];
    v7 = [v4 dateFromString:v6];
    if (!v7)
    {
      [v4 setDateFormat:@"d MMM yyyy HH:mm zzz"];
      v7 = [v4 dateFromString:v6];
      if (!v7)
      {
        [v4 setDateFormat:@"d MMM yyyy HH:mm:ss"];
        v7 = [v4 dateFromString:v6];
        if (!v7)
        {
          v8 = @"d MMM yyyy HH:mm";
          goto LABEL_12;
        }
      }
    }
  }

  else
  {
    [v4 setDateFormat:@"EEE, d MMM yyyy HH:mm:ss zzz"];
    v7 = [v4 dateFromString:v6];
    if (!v7)
    {
      [v4 setDateFormat:@"EEE, d MMM yyyy HH:mm zzz"];
      v7 = [v4 dateFromString:v6];
      if (!v7)
      {
        [v4 setDateFormat:@"EEE, d MMM yyyy HH:mm:ss"];
        v7 = [v4 dateFromString:v6];
        if (!v7)
        {
          v8 = @"EEE, d MMM yyyy HH:mm";
LABEL_12:
          [v4 setDateFormat:v8];
          v7 = [v4 dateFromString:v6];
          if (!v7)
          {
            NSLog(&cfstr_CouldNotParseR.isa, v3);
            v7 = 0;
          }
        }
      }
    }
  }

  objc_sync_exit(v4);
LABEL_15:

  return v7;
}

+ (id)dateFromInternetDateTimeString:()InternetDateTime formatHint:
{
  v5 = a3;
  if (v5)
  {
    if (a4 == 2)
    {
      v6 = [MEMORY[0x277CBEAA8] dateFromRFC3339String:v5];
      if (!v6)
      {
        v6 = [MEMORY[0x277CBEAA8] dateFromRFC822String:v5];
      }
    }

    else
    {
      v6 = [MEMORY[0x277CBEAA8] dateFromRFC822String:v5];
      if (!v6)
      {
        v6 = [MEMORY[0x277CBEAA8] dateFromRFC3339String:v5];
      }
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)internetDateTimeFormatter
{
  v1 = a1;
  objc_sync_enter(v1);
  if (!_internetDateTimeFormatter)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
    v3 = objc_alloc_init(MEMORY[0x277CCA968]);
    v4 = _internetDateTimeFormatter;
    _internetDateTimeFormatter = v3;

    [_internetDateTimeFormatter setLocale:v2];
    v5 = _internetDateTimeFormatter;
    v6 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
    [v5 setTimeZone:v6];
  }

  objc_sync_exit(v1);

  v7 = _internetDateTimeFormatter;

  return v7;
}

@end