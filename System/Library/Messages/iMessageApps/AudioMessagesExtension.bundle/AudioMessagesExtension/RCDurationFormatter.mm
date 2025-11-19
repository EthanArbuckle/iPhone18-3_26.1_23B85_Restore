@interface RCDurationFormatter
+ (id)_localizedDateTimeFormatForDurationFormattingStyle:(int64_t)a3;
+ (id)_localizedPositionalFormatStringForDurationFormattingStyle:(int64_t)a3;
+ (id)_localizedPositionalFormatStringForLocalizedDateTimeFormat:(id)a3;
+ (id)sharedFormatter;
- (RCDurationFormatter)init;
- (id)_hiddenComponentStringWithString:(id)a3;
- (id)_onQueuePositionalFormatStringForStyle:(int64_t)a3;
- (id)_onQueueStringFromDuration:(double)a3 byReplacingDigitsWithDigit:(int64_t)a4 hideComponentOptions:(int64_t)a5 style:(int64_t)a6;
- (id)stringFromDuration:(double)a3 hideComponentOptions:(int64_t)a4 style:(int64_t)a5;
- (id)stringFromDuration:(double)a3 replacingDigitsWithDigit:(unint64_t)a4 style:(int64_t)a5;
- (id)stringFromDuration:(double)a3 style:(int64_t)a4;
- (void)_onQueueReloadLocalizedFormatStrings;
- (void)reloadLocalizedFormatStrings;
@end

@implementation RCDurationFormatter

- (RCDurationFormatter)init
{
  v15.receiver = self;
  v15.super_class = RCDurationFormatter;
  v2 = [(RCDurationFormatter *)&v15 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = +[NSNotificationCenter defaultCenter];
    v4 = +[NSOperationQueue mainQueue];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1BF6C;
    v12 = &unk_6D670;
    objc_copyWeak(&v13, &location);
    v5 = [v3 addObserverForName:NSCurrentLocaleDidChangeNotification object:0 queue:v4 usingBlock:&v9];

    v6 = dispatch_queue_create(0, 0);
    queue = v2->_queue;
    v2->_queue = v6;

    [(RCDurationFormatter *)v2 reloadLocalizedFormatStrings:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)sharedFormatter
{
  if (qword_823D0 != -1)
  {
    sub_424C4();
  }

  v3 = qword_823D8;

  return v3;
}

- (id)stringFromDuration:(double)a3 replacingDigitsWithDigit:(unint64_t)a4 style:(int64_t)a5
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1C124;
  v13 = sub_1C134;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1C13C;
  block[3] = &unk_6D6B8;
  block[4] = self;
  block[5] = &v9;
  *&block[6] = a3;
  block[7] = a4;
  block[8] = a5;
  dispatch_sync(queue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)stringFromDuration:(double)a3 hideComponentOptions:(int64_t)a4 style:(int64_t)a5
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1C124;
  v13 = sub_1C134;
  v14 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1C28C;
  block[3] = &unk_6D6B8;
  block[4] = self;
  block[5] = &v9;
  *&block[6] = a3;
  block[7] = a4;
  block[8] = a5;
  dispatch_sync(queue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)stringFromDuration:(double)a3 style:(int64_t)a4
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_1C124;
  v12 = sub_1C134;
  v13 = 0;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1C3DC;
  v7[3] = &unk_6D520;
  v7[4] = self;
  v7[5] = &v8;
  *&v7[6] = a3;
  v7[7] = a4;
  dispatch_sync(queue, v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (void)reloadLocalizedFormatStrings
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1C4A4;
  block[3] = &unk_6D458;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (id)_onQueueStringFromDuration:(double)a3 byReplacingDigitsWithDigit:(int64_t)a4 hideComponentOptions:(int64_t)a5 style:(int64_t)a6
{
  v10 = (a3 * 100.0) % 0x64;
  v11 = a3;
  v12 = @"0";
  if (a6 <= 2)
  {
    if (a6)
    {
      if (a6 == 1)
      {
        v12 = @"00";
      }

      else if (a6 != 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        goto LABEL_16;
      }
    }

    v18 = v11 % 0x3C;
    v17 = v11 / 0x3C - 60 * (((v11 / 0x3C * 0x888888888888889uLL) >> 64) >> 1);
    v16 = a3 / 0xE10;
  }

  else
  {
    v13 = a6 - 3;
    v14 = v11 / 0x3C;
    v15 = v11 % 0x3C;
    if ((a6 - 5) >= 2)
    {
      v11 = 0;
    }

    v12 = @"0";
    v16 = 0;
    if (v13 >= 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    if (v13 >= 2)
    {
      v18 = v11;
    }

    else
    {
      v18 = v15;
    }
  }

LABEL_16:
  v55 = self;
  if ((a4 & 0x8000000000000000) == 0)
  {
    v19 = [(__CFString *)v12 length];
    v20 = RCNumberOfDigitsInInteger(v16);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    v16 = a4;
    v22 = v21 - 1;
    if (v22)
    {
      v23 = 10;
      v16 = a4;
      do
      {
        v16 += v23 * a4;
        v23 *= 10;
        --v22;
      }

      while (v22);
    }

    v24 = RCNumberOfDigitsInInteger(v17);
    v25 = 2;
    if (v24 > 2)
    {
      v25 = v24;
    }

    v26 = v25 - 1;
    v27 = 10;
    v17 = a4;
    do
    {
      v17 += v27 * a4;
      v27 *= 10;
      --v26;
    }

    while (v26);
    v28 = RCNumberOfDigitsInInteger(v18);
    v29 = 2;
    if (v28 > 2)
    {
      v29 = v28;
    }

    v30 = v29 - 1;
    v31 = 10;
    v18 = a4;
    self = v55;
    do
    {
      v18 += v31 * a4;
      v31 *= 10;
      --v30;
    }

    while (v30);
    v32 = RCNumberOfDigitsInInteger(v10);
    v33 = 2;
    if (v32 > 2)
    {
      v33 = v32;
    }

    v34 = v33 - 1;
    v35 = 10;
    v10 = a4;
    do
    {
      v10 += v35 * a4;
      v35 *= 10;
      --v34;
    }

    while (v34);
  }

  p_defaultFormatter = &self->_defaultFormatter;
  defaultFormatter = self->_defaultFormatter;
  v38 = [NSNumber numberWithUnsignedInteger:v10];
  v39 = [(NSNumberFormatter *)defaultFormatter stringFromNumber:v38];

  if (a5)
  {
    v40 = [(RCDurationFormatter *)self _hiddenComponentStringWithString:v39];

    v39 = v40;
  }

  v41 = *p_defaultFormatter;
  v42 = [NSNumber numberWithUnsignedInteger:v18];
  v43 = [v41 stringFromNumber:v42];

  if ((a5 & 2) != 0)
  {
    v44 = [(RCDurationFormatter *)self _hiddenComponentStringWithString:v43];

    v43 = v44;
  }

  v45 = *p_defaultFormatter;
  v46 = [NSNumber numberWithUnsignedInteger:v17];
  v47 = [v45 stringFromNumber:v46];

  if ((a5 & 4) != 0)
  {
    v48 = [(RCDurationFormatter *)v55 _hiddenComponentStringWithString:v47];

    v47 = v48;
  }

  if (a6 == 2)
  {
LABEL_44:
    p_defaultFormatter = &v55->_nonPaddedHourFormatter;
    goto LABEL_45;
  }

  if (a6 != 1)
  {
    if (a6)
    {
      v49 = 0;
      goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_45:
  v49 = *p_defaultFormatter;
LABEL_47:
  v50 = [NSNumber numberWithUnsignedInteger:v16];
  v51 = [v49 stringFromNumber:v50];

  if ((a5 & 8) != 0)
  {
    a5 = [(RCDurationFormatter *)v55 _hiddenComponentStringWithString:v51];

    v51 = a5;
  }

  v52 = [(RCDurationFormatter *)v55 _onQueuePositionalFormatStringForStyle:a6];
  if (a6 > 6)
  {
    goto LABEL_55;
  }

  if (((1 << a6) & 0x16) != 0)
  {
    goto LABEL_57;
  }

  if (((1 << a6) & 0x60) != 0)
  {
LABEL_56:
    v54 = v39;
LABEL_57:
    [NSString stringWithFormat:v52, v51, v47, v43, v54];
    goto LABEL_58;
  }

  if (a6 != 3)
  {
LABEL_55:
    if (a6)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  [NSString stringWithFormat:v52, v47, v43, v39, v54];
  a5 = LABEL_58:;
LABEL_59:

  return a5;
}

- (id)_hiddenComponentStringWithString:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableString string];
  v5 = [v3 length];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1CA30;
  v9[3] = &unk_6D5E8;
  v10 = v4;
  v6 = v4;
  [v3 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v9}];

  v7 = [v6 copy];

  return v7;
}

- (id)_onQueuePositionalFormatStringForStyle:(int64_t)a3
{
  positionalParameterFormatStrings = self->_positionalParameterFormatStrings;
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)positionalParameterFormatStrings objectForKey:v4];

  return v5;
}

- (void)_onQueueReloadLocalizedFormatStrings
{
  v3 = +[NSMutableDictionary dictionary];
  positionalParameterFormatStrings = self->_positionalParameterFormatStrings;
  self->_positionalParameterFormatStrings = v3;

  for (i = 0; i != 7; ++i)
  {
    v6 = [objc_opt_class() _localizedPositionalFormatStringForDurationFormattingStyle:i];
    if (v6)
    {
      v7 = self->_positionalParameterFormatStrings;
      v8 = [NSNumber numberWithInteger:i];
      [(NSMutableDictionary *)v7 setObject:v6 forKey:v8];
    }
  }

  v9 = objc_alloc_init(NSNumberFormatter);
  defaultFormatter = self->_defaultFormatter;
  self->_defaultFormatter = v9;

  [(NSNumberFormatter *)self->_defaultFormatter setNumberStyle:0];
  [(NSNumberFormatter *)self->_defaultFormatter setMinimumIntegerDigits:2];
  [(NSNumberFormatter *)self->_defaultFormatter setPositiveFormat:@"00"];
  v11 = objc_alloc_init(NSNumberFormatter);
  nonPaddedHourFormatter = self->_nonPaddedHourFormatter;
  self->_nonPaddedHourFormatter = v11;

  [(NSNumberFormatter *)self->_nonPaddedHourFormatter setNumberStyle:0];
  [(NSNumberFormatter *)self->_nonPaddedHourFormatter setMinimumIntegerDigits:1];
  v13 = self->_nonPaddedHourFormatter;

  [(NSNumberFormatter *)v13 setPositiveFormat:@"0"];
}

+ (id)_localizedDateTimeFormatForDurationFormattingStyle:(int64_t)a3
{
  if (qword_823E8 != -1)
  {
    sub_424D8();
  }

  v4 = [NSLocale alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [v5 localeIdentifier];
  v7 = [v4 initWithLocaleIdentifier:v6];

  v8 = qword_823E0;
  v9 = [NSNumber numberWithInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(kCFAllocatorDefault, v10, 0, v7);
  v12 = [v7 localeIdentifier];
  if ([v12 hasPrefix:@"ee_"] && -[__CFString hasPrefix:](DateFormatFromTemplate, "hasPrefix:", @"'aɖabaƒoƒo' "))
  {
    v13 = -[__CFString substringFromIndex:](DateFormatFromTemplate, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);

    DateFormatFromTemplate = v13;
  }

  return DateFormatFromTemplate;
}

+ (id)_localizedPositionalFormatStringForLocalizedDateTimeFormat:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 replaceOccurrencesOfString:@"HH" withString:@"%1$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"H" withString:@"%1$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"mm" withString:@"%2$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"m" withString:@"%2$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"ss" withString:@"%3$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"s" withString:@"%3$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"SS" withString:@"%4$@" options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

+ (id)_localizedPositionalFormatStringForDurationFormattingStyle:(int64_t)a3
{
  v4 = [objc_opt_class() _localizedDateTimeFormatForDurationFormattingStyle:a3];
  v5 = [a1 _localizedPositionalFormatStringForLocalizedDateTimeFormat:v4];

  return v5;
}

@end