@interface RCDurationFormatter
+ (id)_localizedDateTimeFormatForDurationFormattingStyle:(int64_t)style;
+ (id)_localizedPositionalFormatStringForDurationFormattingStyle:(int64_t)style;
+ (id)_localizedPositionalFormatStringForLocalizedDateTimeFormat:(id)format;
+ (id)sharedFormatter;
- (RCDurationFormatter)init;
- (id)_hiddenComponentStringWithString:(id)string;
- (id)_onQueuePositionalFormatStringForStyle:(int64_t)style;
- (id)_onQueueStringFromDuration:(double)duration byReplacingDigitsWithDigit:(int64_t)digit hideComponentOptions:(int64_t)options style:(int64_t)style;
- (id)stringFromDuration:(double)duration hideComponentOptions:(int64_t)options style:(int64_t)style;
- (id)stringFromDuration:(double)duration replacingDigitsWithDigit:(unint64_t)digit style:(int64_t)style;
- (id)stringFromDuration:(double)duration style:(int64_t)style;
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

- (id)stringFromDuration:(double)duration replacingDigitsWithDigit:(unint64_t)digit style:(int64_t)style
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
  *&block[6] = duration;
  block[7] = digit;
  block[8] = style;
  dispatch_sync(queue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)stringFromDuration:(double)duration hideComponentOptions:(int64_t)options style:(int64_t)style
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
  *&block[6] = duration;
  block[7] = options;
  block[8] = style;
  dispatch_sync(queue, block);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)stringFromDuration:(double)duration style:(int64_t)style
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
  *&v7[6] = duration;
  v7[7] = style;
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

- (id)_onQueueStringFromDuration:(double)duration byReplacingDigitsWithDigit:(int64_t)digit hideComponentOptions:(int64_t)options style:(int64_t)style
{
  digitCopy5 = (duration * 100.0) % 0x64;
  durationCopy = duration;
  v12 = @"0";
  if (style <= 2)
  {
    if (style)
    {
      if (style == 1)
      {
        v12 = @"00";
      }

      else if (style != 2)
      {
        digitCopy2 = 0;
        digitCopy3 = 0;
        digitCopy4 = 0;
        goto LABEL_16;
      }
    }

    digitCopy4 = durationCopy % 0x3C;
    digitCopy3 = durationCopy / 0x3C - 60 * (((durationCopy / 0x3C * 0x888888888888889uLL) >> 64) >> 1);
    digitCopy2 = duration / 0xE10;
  }

  else
  {
    v13 = style - 3;
    v14 = durationCopy / 0x3C;
    v15 = durationCopy % 0x3C;
    if ((style - 5) >= 2)
    {
      durationCopy = 0;
    }

    v12 = @"0";
    digitCopy2 = 0;
    if (v13 >= 2)
    {
      digitCopy3 = 0;
    }

    else
    {
      digitCopy3 = v14;
    }

    if (v13 >= 2)
    {
      digitCopy4 = durationCopy;
    }

    else
    {
      digitCopy4 = v15;
    }
  }

LABEL_16:
  selfCopy = self;
  if ((digit & 0x8000000000000000) == 0)
  {
    v19 = [(__CFString *)v12 length];
    v20 = RCNumberOfDigitsInInteger(digitCopy2);
    if (v19 <= v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    digitCopy2 = digit;
    v22 = v21 - 1;
    if (v22)
    {
      v23 = 10;
      digitCopy2 = digit;
      do
      {
        digitCopy2 += v23 * digit;
        v23 *= 10;
        --v22;
      }

      while (v22);
    }

    v24 = RCNumberOfDigitsInInteger(digitCopy3);
    v25 = 2;
    if (v24 > 2)
    {
      v25 = v24;
    }

    v26 = v25 - 1;
    v27 = 10;
    digitCopy3 = digit;
    do
    {
      digitCopy3 += v27 * digit;
      v27 *= 10;
      --v26;
    }

    while (v26);
    v28 = RCNumberOfDigitsInInteger(digitCopy4);
    v29 = 2;
    if (v28 > 2)
    {
      v29 = v28;
    }

    v30 = v29 - 1;
    v31 = 10;
    digitCopy4 = digit;
    self = selfCopy;
    do
    {
      digitCopy4 += v31 * digit;
      v31 *= 10;
      --v30;
    }

    while (v30);
    v32 = RCNumberOfDigitsInInteger(digitCopy5);
    v33 = 2;
    if (v32 > 2)
    {
      v33 = v32;
    }

    v34 = v33 - 1;
    v35 = 10;
    digitCopy5 = digit;
    do
    {
      digitCopy5 += v35 * digit;
      v35 *= 10;
      --v34;
    }

    while (v34);
  }

  p_defaultFormatter = &self->_defaultFormatter;
  defaultFormatter = self->_defaultFormatter;
  v38 = [NSNumber numberWithUnsignedInteger:digitCopy5];
  v39 = [(NSNumberFormatter *)defaultFormatter stringFromNumber:v38];

  if (options)
  {
    v40 = [(RCDurationFormatter *)self _hiddenComponentStringWithString:v39];

    v39 = v40;
  }

  v41 = *p_defaultFormatter;
  v42 = [NSNumber numberWithUnsignedInteger:digitCopy4];
  v43 = [v41 stringFromNumber:v42];

  if ((options & 2) != 0)
  {
    v44 = [(RCDurationFormatter *)self _hiddenComponentStringWithString:v43];

    v43 = v44;
  }

  v45 = *p_defaultFormatter;
  v46 = [NSNumber numberWithUnsignedInteger:digitCopy3];
  v47 = [v45 stringFromNumber:v46];

  if ((options & 4) != 0)
  {
    v48 = [(RCDurationFormatter *)selfCopy _hiddenComponentStringWithString:v47];

    v47 = v48;
  }

  if (style == 2)
  {
LABEL_44:
    p_defaultFormatter = &selfCopy->_nonPaddedHourFormatter;
    goto LABEL_45;
  }

  if (style != 1)
  {
    if (style)
    {
      v49 = 0;
      goto LABEL_47;
    }

    goto LABEL_44;
  }

LABEL_45:
  v49 = *p_defaultFormatter;
LABEL_47:
  v50 = [NSNumber numberWithUnsignedInteger:digitCopy2];
  optionsCopy = [v49 stringFromNumber:v50];

  if ((options & 8) != 0)
  {
    options = [(RCDurationFormatter *)selfCopy _hiddenComponentStringWithString:optionsCopy];

    optionsCopy = options;
  }

  v52 = [(RCDurationFormatter *)selfCopy _onQueuePositionalFormatStringForStyle:style];
  if (style > 6)
  {
    goto LABEL_55;
  }

  if (((1 << style) & 0x16) != 0)
  {
    goto LABEL_57;
  }

  if (((1 << style) & 0x60) != 0)
  {
LABEL_56:
    v54 = v39;
LABEL_57:
    [NSString stringWithFormat:v52, optionsCopy, v47, v43, v54];
    goto LABEL_58;
  }

  if (style != 3)
  {
LABEL_55:
    if (style)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  [NSString stringWithFormat:v52, v47, v43, v39, v54];
  options = LABEL_58:;
LABEL_59:

  return options;
}

- (id)_hiddenComponentStringWithString:(id)string
{
  stringCopy = string;
  v4 = +[NSMutableString string];
  v5 = [stringCopy length];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1CA30;
  v9[3] = &unk_6D5E8;
  v10 = v4;
  v6 = v4;
  [stringCopy enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v9}];

  v7 = [v6 copy];

  return v7;
}

- (id)_onQueuePositionalFormatStringForStyle:(int64_t)style
{
  positionalParameterFormatStrings = self->_positionalParameterFormatStrings;
  v4 = [NSNumber numberWithInteger:style];
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

+ (id)_localizedDateTimeFormatForDurationFormattingStyle:(int64_t)style
{
  if (qword_823E8 != -1)
  {
    sub_424D8();
  }

  v4 = [NSLocale alloc];
  v5 = +[NSLocale currentLocale];
  localeIdentifier = [v5 localeIdentifier];
  v7 = [v4 initWithLocaleIdentifier:localeIdentifier];

  v8 = qword_823E0;
  v9 = [NSNumber numberWithInteger:style];
  v10 = [v8 objectForKeyedSubscript:v9];

  DateFormatFromTemplate = CFDateFormatterCreateDateFormatFromTemplate(kCFAllocatorDefault, v10, 0, v7);
  localeIdentifier2 = [v7 localeIdentifier];
  if ([localeIdentifier2 hasPrefix:@"ee_"] && -[__CFString hasPrefix:](DateFormatFromTemplate, "hasPrefix:", @"'aɖabaƒoƒo' "))
  {
    v13 = -[__CFString substringFromIndex:](DateFormatFromTemplate, "substringFromIndex:", [@"'aɖabaƒoƒo' " length]);

    DateFormatFromTemplate = v13;
  }

  return DateFormatFromTemplate;
}

+ (id)_localizedPositionalFormatStringForLocalizedDateTimeFormat:(id)format
{
  v3 = [format mutableCopy];
  [v3 replaceOccurrencesOfString:@"HH" withString:@"%1$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"H" withString:@"%1$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"mm" withString:@"%2$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"m" withString:@"%2$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"ss" withString:@"%3$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"s" withString:@"%3$@" options:0 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"SS" withString:@"%4$@" options:0 range:{0, objc_msgSend(v3, "length")}];

  return v3;
}

+ (id)_localizedPositionalFormatStringForDurationFormattingStyle:(int64_t)style
{
  v4 = [objc_opt_class() _localizedDateTimeFormatForDurationFormattingStyle:style];
  v5 = [self _localizedPositionalFormatStringForLocalizedDateTimeFormat:v4];

  return v5;
}

@end