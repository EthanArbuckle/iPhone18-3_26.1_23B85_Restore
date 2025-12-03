@interface CLKTimeFormatter
- (BOOL)isTopOfHour;
- (CLKTimeFormatter)initWithForcedNumberSystem:(unint64_t)system clockTimer:(id)timer;
- (CLKTimeFormatterDelegate)delegate;
- (NSString)designatorText;
- (NSString)timeAndDesignatorText;
- (NSString)timeAndDesignatorTextWithoutMinutesIfZero;
- (NSString)timeSubstringFromSeparatorText;
- (NSString)timeSubstringToSeparatorText;
- (NSString)timeText;
- (_NSRange)blinkerRangeInTimeAndDesignatorText;
- (_NSRange)blinkerRangeInTimeSubstringFromSeparatorText;
- (_NSRange)blinkerRangeInTimeSubstringToSeparatorText;
- (_NSRange)blinkerRangeInTimeText;
- (_NSRange)designatorRangeInTimeAndDesignatorText;
- (_NSRange)designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero;
- (_NSRange)lastBlinkerRangeInTimeText;
- (_NSRange)rangeInTimeSubstringFromSecondsSeparatorText;
- (_NSRange)separatorNSRangeInTimeText:(id)text;
- (_NSRange)separatorRangeInTimeAndDesignatorText;
- (_NSRange)separatorRangeInTimeText;
- (id)_blinkerRangeInTimeAndDesignatorText;
- (id)_blinkerRangeInTimeSubstringFromSeparatorText;
- (id)_blinkerRangeInTimeSubstringToSeparatorText;
- (id)_blinkerRangeInTimeText;
- (id)_designatorRangeInText:(id)text;
- (id)_designatorRangeInTimeAndDesignatorText;
- (id)_designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero;
- (id)_lastBlinkerRangeInTimeText;
- (id)_rangeInTimeSubstringFromSecondsSeparatorText;
- (id)_separatorRangeInTimeAndDesignatorText;
- (id)_separatorRangeInTimeText;
- (id)_timeAndDesignatorFormatter;
- (id)timeSubstringToSeparatorTextWithZeroPadding:(BOOL)padding;
- (id)timeTextForNumberSystem:(unint64_t)system;
- (id)trimLeadingLeftRightMarkerFrom:(id)from;
- (void)_handleSignificantTimeChange;
- (void)_invalidateDate:(id)date;
- (void)_invalidateText;
- (void)_notifyReportingLiveTimeDidChange;
- (void)_notifyTextDidChange;
- (void)_setUseNarrowDesignatorTextForGerman:(BOOL)german;
- (void)_startOrStopUpdatesIfNecessary;
- (void)_stopMinuteUpdates:(BOOL)updates;
- (void)_stopSecondsUpdates:(BOOL)updates;
- (void)dealloc;
- (void)setForcedNumberSystem:(unint64_t)system;
- (void)setIncludeSeparatorInTimeSubstringFromSeparatorText:(BOOL)text;
- (void)setOverrideDate:(id)date;
- (void)setPaused:(BOOL)paused forReason:(id)reason;
- (void)setShowSeconds:(BOOL)seconds;
- (void)setSuppressesDesignatorWhitespace:(BOOL)whitespace;
- (void)setTimeOffset:(double)offset;
- (void)setTimeZone:(id)zone;
- (void)setZeroPadTimeSubstringToSeparatorText:(BOOL)text;
@end

@implementation CLKTimeFormatter

- (CLKTimeFormatter)initWithForcedNumberSystem:(unint64_t)system clockTimer:(id)timer
{
  timerCopy = timer;
  v19.receiver = self;
  v19.super_class = CLKTimeFormatter;
  v7 = [(CLKTimeFormatter *)&v19 init];
  v8 = v7;
  if (v7)
  {
    v7->_forcedNumberSystem = system;
    v9 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v8->_observers;
    v8->_observers = v9;

    v11 = [MEMORY[0x277CBEB58] set];
    reasonsToPause = v8->_reasonsToPause;
    v8->_reasonsToPause = v11;

    [(CLKTimeFormatter *)v8 _invalidateDate:0];
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__CLKTimeFormatter_initWithForcedNumberSystem_clockTimer___block_invoke;
      block[3] = &unk_278A1F1B8;
      v18 = v8;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      [(CLKTimeFormatter *)v8 _startOrStopUpdatesIfNecessary];
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__invalidateText name:@"_FormatterCacheInvalidatedNotification" object:0];
    [defaultCenter addObserver:v8 selector:sel__handleSignificantTimeChange name:*MEMORY[0x277D766F0] object:0];
    v8->_includeSeparatorInTimeSubstringFromSeparatorText = 1;
    if (timerCopy)
    {
      v14 = timerCopy;
    }

    else
    {
      v14 = +[CLKClockTimer sharedInstance];
    }

    timer = v8->_timer;
    v8->_timer = v14;
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_secondsUpdateToken)
  {
    [(CLKClockTimer *)self->_timer stopUpdatesForToken:?];
  }

  if (self->_minutesUpdateToken)
  {
    [(CLKClockTimer *)self->_timer stopUpdatesForToken:?];
  }

  v4.receiver = self;
  v4.super_class = CLKTimeFormatter;
  [(CLKTimeFormatter *)&v4 dealloc];
}

- (void)setPaused:(BOOL)paused forReason:(id)reason
{
  reasonsToPause = self->_reasonsToPause;
  if (paused)
  {
    [(NSMutableSet *)reasonsToPause addObject:reason];
  }

  else
  {
    [(NSMutableSet *)reasonsToPause removeObject:reason];
  }

  [(CLKTimeFormatter *)self _startOrStopUpdatesIfNecessary];
}

- (void)setOverrideDate:(id)date
{
  dateCopy = date;
  if (([dateCopy isEqualToDate:self->_overrideDate] & 1) == 0)
  {
    objc_storeStrong(&self->_overrideDate, date);
    [(CLKTimeFormatter *)self _startOrStopUpdatesIfNecessary];
    [(CLKTimeFormatter *)self _invalidateDate:0];
  }
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  if (([zoneCopy isEqualToTimeZone:self->_timeZone] & 1) == 0)
  {
    objc_storeStrong(&self->_timeZone, zone);
    [(CLKTimeFormatter *)self _invalidateText];
  }
}

- (void)setTimeOffset:(double)offset
{
  if (!CLKFloatEqualsFloat(offset, self->_timeOffset))
  {
    self->_timeOffset = offset;

    [(CLKTimeFormatter *)self _invalidateDate:0];
  }
}

- (void)setSuppressesDesignatorWhitespace:(BOOL)whitespace
{
  if (self->_suppressesDesignatorWhitespace != whitespace)
  {
    self->_suppressesDesignatorWhitespace = whitespace;
    [(CLKTimeFormatter *)self _invalidateText];
  }
}

- (void)_setUseNarrowDesignatorTextForGerman:(BOOL)german
{
  if (self->_useNarrowDesignatorTextForGerman != german)
  {
    self->_useNarrowDesignatorTextForGerman = german;
    [(CLKTimeFormatter *)self _invalidateText];
  }
}

- (void)setForcedNumberSystem:(unint64_t)system
{
  if (self->_forcedNumberSystem != system)
  {
    self->_forcedNumberSystem = system;
    [(CLKTimeFormatter *)self _invalidateText];
  }
}

- (NSString)timeText
{
  timeText = self->_timeText;
  if (!timeText)
  {
    v4 = +[_CLKTimeFormatterCache sharedInstance];
    v5 = [v4 timeOnlyFormatterForTimeZone:self->_timeZone hasSeconds:self->_showSeconds forcedNumberSystem:self->_forcedNumberSystem];
    v6 = [v5 stringFromDate:self->_date];
    v7 = self->_timeText;
    self->_timeText = v6;

    v8 = [(CLKTimeFormatter *)self trimLeadingLeftRightMarkerFrom:self->_timeText];
    v9 = self->_timeText;
    self->_timeText = v8;

    timeText = self->_timeText;
  }

  return timeText;
}

- (NSString)designatorText
{
  designatorText = self->_designatorText;
  if (!designatorText)
  {
    _designatorRangeInTimeAndDesignatorText = [(CLKTimeFormatter *)self _designatorRangeInTimeAndDesignatorText];
    timeAndDesignatorText = [(CLKTimeFormatter *)self timeAndDesignatorText];
    v6 = [_designatorRangeInTimeAndDesignatorText substringFromString:timeAndDesignatorText];
    v7 = self->_designatorText;
    self->_designatorText = v6;

    designatorText = self->_designatorText;
  }

  return designatorText;
}

- (NSString)timeAndDesignatorText
{
  timeAndDesignatorText = self->_timeAndDesignatorText;
  if (!timeAndDesignatorText)
  {
    _timeAndDesignatorFormatter = [(CLKTimeFormatter *)self _timeAndDesignatorFormatter];
    v5 = [_timeAndDesignatorFormatter stringFromDate:self->_date];

    _timeAndDesignatorFormatter2 = [(CLKTimeFormatter *)self _timeAndDesignatorFormatter];
    locale = [_timeAndDesignatorFormatter2 locale];
    v8 = [locale objectForKey:*MEMORY[0x277CBE6C8]];

    if ([v8 isEqualToString:@"th"])
    {
      v9 = [v5 stringByReplacingOccurrencesOfString:@"ก่อนเที่ยง" withString:@"AM"];

      v10 = [v9 stringByReplacingOccurrencesOfString:@"หลังเที่ยง" withString:@"PM"];
      v5 = v9;
    }

    else
    {
      if (!self->_useNarrowDesignatorTextForGerman || ![v8 isEqualToString:@"de"])
      {
        goto LABEL_10;
      }

      if ([v5 rangeOfString:@"vorm."] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = [v5 stringByReplacingOccurrencesOfString:@"vorm." withString:@"v."];

        v5 = v11;
      }

      if ([v5 rangeOfString:@"nachm."] == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_10;
      }

      v10 = [v5 stringByReplacingOccurrencesOfString:@"nachm." withString:@"n."];
    }

    v5 = v10;
LABEL_10:
    v12 = self->_timeAndDesignatorText;
    self->_timeAndDesignatorText = v5;

    timeAndDesignatorText = self->_timeAndDesignatorText;
  }

  return timeAndDesignatorText;
}

- (NSString)timeAndDesignatorTextWithoutMinutesIfZero
{
  p_timeAndDesignatorTextWithoutMinutesIfZero = &self->_timeAndDesignatorTextWithoutMinutesIfZero;
  timeAndDesignatorTextWithoutMinutesIfZero = self->_timeAndDesignatorTextWithoutMinutesIfZero;
  if (!timeAndDesignatorTextWithoutMinutesIfZero)
  {
    timeAndDesignatorText = [(CLKTimeFormatter *)self timeAndDesignatorText];
    separatorRangeInTimeAndDesignatorText = [(CLKTimeFormatter *)self separatorRangeInTimeAndDesignatorText];
    v8 = v7;
    designatorRangeInTimeAndDesignatorText = [(CLKTimeFormatter *)self designatorRangeInTimeAndDesignatorText];
    if (v10)
    {
      if (designatorRangeInTimeAndDesignatorText > separatorRangeInTimeAndDesignatorText)
      {
        timeSubstringFromSeparatorText = [(CLKTimeFormatter *)self timeSubstringFromSeparatorText];
        v12 = [timeSubstringFromSeparatorText length];

        v13 = [timeAndDesignatorText substringWithRange:{separatorRangeInTimeAndDesignatorText + v8, v12 - v8}];
        LODWORD(timeSubstringFromSeparatorText) = [v13 isEqualToString:@"00"];

        if (timeSubstringFromSeparatorText)
        {
          v14 = [timeAndDesignatorText stringByReplacingCharactersInRange:separatorRangeInTimeAndDesignatorText withString:{v12, &stru_284A20458}];
          v15 = *p_timeAndDesignatorTextWithoutMinutesIfZero;
          *p_timeAndDesignatorTextWithoutMinutesIfZero = v14;
        }
      }
    }

    if (!*p_timeAndDesignatorTextWithoutMinutesIfZero)
    {
      objc_storeStrong(p_timeAndDesignatorTextWithoutMinutesIfZero, timeAndDesignatorText);
    }

    timeAndDesignatorTextWithoutMinutesIfZero = *p_timeAndDesignatorTextWithoutMinutesIfZero;
  }

  return timeAndDesignatorTextWithoutMinutesIfZero;
}

- (NSString)timeSubstringToSeparatorText
{
  timeSubstringToSeparatorText = self->_timeSubstringToSeparatorText;
  if (!timeSubstringToSeparatorText)
  {
    v4 = [(CLKTimeFormatter *)self timeSubstringToSeparatorTextWithZeroPadding:self->_zeroPadTimeSubstringToSeparatorText];
    v5 = self->_timeSubstringToSeparatorText;
    self->_timeSubstringToSeparatorText = v4;

    timeSubstringToSeparatorText = self->_timeSubstringToSeparatorText;
  }

  return timeSubstringToSeparatorText;
}

- (id)timeSubstringToSeparatorTextWithZeroPadding:(BOOL)padding
{
  paddingCopy = padding;
  separatorRangeInTimeText = [(CLKTimeFormatter *)self separatorRangeInTimeText];
  timeText = [(CLKTimeFormatter *)self timeText];
  v7 = timeText;
  if (separatorRangeInTimeText != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [timeText substringToIndex:separatorRangeInTimeText];

    if (paddingCopy)
    {
      v9 = CLKLocaleNumberSystemIdentifier(self->_forcedNumberSystem);
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"en_US@numbers=%@", v9];
      v11 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:v10];
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%02ld" locale:v11, objc_msgSend(v8, "integerValue")];
    }

    else
    {
      v7 = v8;
    }
  }

  return v7;
}

- (void)setZeroPadTimeSubstringToSeparatorText:(BOOL)text
{
  if (self->_zeroPadTimeSubstringToSeparatorText != text)
  {
    self->_zeroPadTimeSubstringToSeparatorText = text;
    self->_timeSubstringToSeparatorText = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (NSString)timeSubstringFromSeparatorText
{
  if (!self->_timeSubstringFromSeparatorText)
  {
    separatorRangeInTimeText = [(CLKTimeFormatter *)self separatorRangeInTimeText];
    if (separatorRangeInTimeText == 0x7FFFFFFFFFFFFFFFLL)
    {
      timeSubstringFromSeparatorText = self->_timeSubstringFromSeparatorText;
      self->_timeSubstringFromSeparatorText = &stru_284A20458;
    }

    else
    {
      v6 = separatorRangeInTimeText;
      v7 = v4;
      includeSeparatorInTimeSubstringFromSeparatorText = self->_includeSeparatorInTimeSubstringFromSeparatorText;
      timeText = [(CLKTimeFormatter *)self timeText];
      timeSubstringFromSeparatorText = timeText;
      if (includeSeparatorInTimeSubstringFromSeparatorText)
      {
        v10 = v6;
      }

      else
      {
        v10 = v6 + v7;
      }

      v11 = [(NSString *)timeText substringFromIndex:v10];
      v12 = self->_timeSubstringFromSeparatorText;
      self->_timeSubstringFromSeparatorText = v11;
    }
  }

  v13 = self->_timeSubstringFromSeparatorText;

  return v13;
}

- (void)setIncludeSeparatorInTimeSubstringFromSeparatorText:(BOOL)text
{
  if (self->_includeSeparatorInTimeSubstringFromSeparatorText != text)
  {
    self->_includeSeparatorInTimeSubstringFromSeparatorText = text;
    self->_timeSubstringFromSeparatorText = 0;
    MEMORY[0x2821F96F8]();
  }
}

- (_NSRange)designatorRangeInTimeAndDesignatorText
{
  _designatorRangeInTimeAndDesignatorText = [(CLKTimeFormatter *)self _designatorRangeInTimeAndDesignatorText];
  range = [_designatorRangeInTimeAndDesignatorText range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero
{
  _designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero = [(CLKTimeFormatter *)self _designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero];
  range = [_designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (BOOL)isTopOfHour
{
  timeSubstringFromSeparatorText = [(CLKTimeFormatter *)self timeSubstringFromSeparatorText];
  integerValue = [timeSubstringFromSeparatorText integerValue];

  return integerValue == 0;
}

- (_NSRange)separatorRangeInTimeText
{
  _separatorRangeInTimeText = [(CLKTimeFormatter *)self _separatorRangeInTimeText];
  range = [_separatorRangeInTimeText range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)separatorRangeInTimeAndDesignatorText
{
  _separatorRangeInTimeAndDesignatorText = [(CLKTimeFormatter *)self _separatorRangeInTimeAndDesignatorText];
  range = [_separatorRangeInTimeAndDesignatorText range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)blinkerRangeInTimeText
{
  _blinkerRangeInTimeText = [(CLKTimeFormatter *)self _blinkerRangeInTimeText];
  range = [_blinkerRangeInTimeText range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)lastBlinkerRangeInTimeText
{
  _lastBlinkerRangeInTimeText = [(CLKTimeFormatter *)self _lastBlinkerRangeInTimeText];
  range = [_lastBlinkerRangeInTimeText range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)blinkerRangeInTimeAndDesignatorText
{
  _blinkerRangeInTimeAndDesignatorText = [(CLKTimeFormatter *)self _blinkerRangeInTimeAndDesignatorText];
  range = [_blinkerRangeInTimeAndDesignatorText range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)blinkerRangeInTimeSubstringToSeparatorText
{
  _blinkerRangeInTimeSubstringToSeparatorText = [(CLKTimeFormatter *)self _blinkerRangeInTimeSubstringToSeparatorText];
  range = [_blinkerRangeInTimeSubstringToSeparatorText range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)blinkerRangeInTimeSubstringFromSeparatorText
{
  _blinkerRangeInTimeSubstringFromSeparatorText = [(CLKTimeFormatter *)self _blinkerRangeInTimeSubstringFromSeparatorText];
  range = [_blinkerRangeInTimeSubstringFromSeparatorText range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (_NSRange)rangeInTimeSubstringFromSecondsSeparatorText
{
  _rangeInTimeSubstringFromSecondsSeparatorText = [(CLKTimeFormatter *)self _rangeInTimeSubstringFromSecondsSeparatorText];
  range = [_rangeInTimeSubstringFromSecondsSeparatorText range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (id)_designatorRangeInText:(id)text
{
  textCopy = text;
  _timeAndDesignatorFormatter = [(CLKTimeFormatter *)self _timeAndDesignatorFormatter];
  aMSymbol = [_timeAndDesignatorFormatter AMSymbol];
  pMSymbol = [_timeAndDesignatorFormatter PMSymbol];
  locale = [_timeAndDesignatorFormatter locale];
  v9 = [locale objectForKey:*MEMORY[0x277CBE6C8]];

  if ([v9 isEqualToString:@"th"])
  {
    v10 = [aMSymbol stringByReplacingOccurrencesOfString:@"ก่อนเที่ยง" withString:@"AM"];

    v11 = [pMSymbol stringByReplacingOccurrencesOfString:@"หลังเที่ยง" withString:@"PM"];
    aMSymbol = v10;
LABEL_3:

    pMSymbol = v11;
    goto LABEL_9;
  }

  if (self->_useNarrowDesignatorTextForGerman && [v9 isEqualToString:@"de"])
  {
    if ([aMSymbol rangeOfString:@"vorm."] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [aMSymbol stringByReplacingOccurrencesOfString:@"vorm." withString:@"v."];

      aMSymbol = v12;
    }

    if ([pMSymbol rangeOfString:@"nachm."] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [pMSymbol stringByReplacingOccurrencesOfString:@"nachm." withString:@"n."];
      goto LABEL_3;
    }
  }

LABEL_9:
  v13 = [textCopy rangeOfString:aMSymbol];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [textCopy rangeOfString:pMSymbol];
  }

  v15 = [_CLKTimeFormatterSubstringRange rangeWithRange:v13, v14];

  return v15;
}

- (id)_designatorRangeInTimeAndDesignatorText
{
  designatorRangeInTimeAndDesignatorText = self->_designatorRangeInTimeAndDesignatorText;
  if (!designatorRangeInTimeAndDesignatorText)
  {
    timeAndDesignatorText = [(CLKTimeFormatter *)self timeAndDesignatorText];
    v5 = [(CLKTimeFormatter *)self _designatorRangeInText:timeAndDesignatorText];
    v6 = self->_designatorRangeInTimeAndDesignatorText;
    self->_designatorRangeInTimeAndDesignatorText = v5;

    designatorRangeInTimeAndDesignatorText = self->_designatorRangeInTimeAndDesignatorText;
  }

  return designatorRangeInTimeAndDesignatorText;
}

- (id)_designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero
{
  designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero = self->_designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero;
  if (!designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero)
  {
    timeAndDesignatorTextWithoutMinutesIfZero = [(CLKTimeFormatter *)self timeAndDesignatorTextWithoutMinutesIfZero];
    v5 = [(CLKTimeFormatter *)self _designatorRangeInText:timeAndDesignatorTextWithoutMinutesIfZero];
    v6 = self->_designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero;
    self->_designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero = v5;

    designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero = self->_designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero;
  }

  return designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero;
}

- (id)_separatorRangeInTimeText
{
  separatorRangeInTimeText = self->_separatorRangeInTimeText;
  if (!separatorRangeInTimeText)
  {
    timeText = [(CLKTimeFormatter *)self timeText];
    v5 = [(CLKTimeFormatter *)self separatorNSRangeInTimeText:timeText];
    v7 = v6;

    v8 = [_CLKTimeFormatterSubstringRange rangeWithRange:v5, v7];
    v9 = self->_separatorRangeInTimeText;
    self->_separatorRangeInTimeText = v8;

    separatorRangeInTimeText = self->_separatorRangeInTimeText;
  }

  return separatorRangeInTimeText;
}

- (id)_separatorRangeInTimeAndDesignatorText
{
  separatorRangeInTimeAndDesignatorText = self->_separatorRangeInTimeAndDesignatorText;
  if (!separatorRangeInTimeAndDesignatorText)
  {
    decimalDigitCharacterSet = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    invertedSet = [decimalDigitCharacterSet invertedSet];

    timeAndDesignatorText = [(CLKTimeFormatter *)self timeAndDesignatorText];
    v7 = [timeAndDesignatorText rangeOfCharacterFromSet:invertedSet];
    v9 = v8;

    v10 = [_CLKTimeFormatterSubstringRange rangeWithRange:v7, v9];
    v11 = self->_separatorRangeInTimeAndDesignatorText;
    self->_separatorRangeInTimeAndDesignatorText = v10;

    separatorRangeInTimeAndDesignatorText = self->_separatorRangeInTimeAndDesignatorText;
  }

  return separatorRangeInTimeAndDesignatorText;
}

- (id)_blinkerRangeInTimeText
{
  blinkerRangeInTimeText = self->_blinkerRangeInTimeText;
  if (!blinkerRangeInTimeText)
  {
    timeText = [(CLKTimeFormatter *)self timeText];
    _clkBlinkerRange = [timeText _clkBlinkerRange];
    v7 = v6;

    v8 = [_CLKTimeFormatterSubstringRange rangeWithRange:_clkBlinkerRange, v7];
    v9 = self->_blinkerRangeInTimeText;
    self->_blinkerRangeInTimeText = v8;

    blinkerRangeInTimeText = self->_blinkerRangeInTimeText;
  }

  return blinkerRangeInTimeText;
}

- (id)_lastBlinkerRangeInTimeText
{
  lastBlinkerRangeInTimeText = self->_lastBlinkerRangeInTimeText;
  if (!lastBlinkerRangeInTimeText)
  {
    timeText = [(CLKTimeFormatter *)self timeText];
    _clkBlinkerRangeByBackwardsSearch = [timeText _clkBlinkerRangeByBackwardsSearch];
    v7 = v6;

    v8 = [_CLKTimeFormatterSubstringRange rangeWithRange:_clkBlinkerRangeByBackwardsSearch, v7];
    v9 = self->_lastBlinkerRangeInTimeText;
    self->_lastBlinkerRangeInTimeText = v8;

    lastBlinkerRangeInTimeText = self->_lastBlinkerRangeInTimeText;
  }

  return lastBlinkerRangeInTimeText;
}

- (id)_blinkerRangeInTimeAndDesignatorText
{
  blinkerRangeInTimeAndDesignatorText = self->_blinkerRangeInTimeAndDesignatorText;
  if (!blinkerRangeInTimeAndDesignatorText)
  {
    timeAndDesignatorText = [(CLKTimeFormatter *)self timeAndDesignatorText];
    _clkBlinkerRange = [timeAndDesignatorText _clkBlinkerRange];
    v7 = v6;

    v8 = [_CLKTimeFormatterSubstringRange rangeWithRange:_clkBlinkerRange, v7];
    v9 = self->_blinkerRangeInTimeAndDesignatorText;
    self->_blinkerRangeInTimeAndDesignatorText = v8;

    blinkerRangeInTimeAndDesignatorText = self->_blinkerRangeInTimeAndDesignatorText;
  }

  return blinkerRangeInTimeAndDesignatorText;
}

- (id)_blinkerRangeInTimeSubstringToSeparatorText
{
  blinkerRangeInTimeSubstringToSeparatorText = self->_blinkerRangeInTimeSubstringToSeparatorText;
  if (!blinkerRangeInTimeSubstringToSeparatorText)
  {
    timeSubstringToSeparatorText = [(CLKTimeFormatter *)self timeSubstringToSeparatorText];
    _clkBlinkerRange = [timeSubstringToSeparatorText _clkBlinkerRange];
    v7 = v6;

    v8 = [_CLKTimeFormatterSubstringRange rangeWithRange:_clkBlinkerRange, v7];
    v9 = self->_blinkerRangeInTimeSubstringToSeparatorText;
    self->_blinkerRangeInTimeSubstringToSeparatorText = v8;

    blinkerRangeInTimeSubstringToSeparatorText = self->_blinkerRangeInTimeSubstringToSeparatorText;
  }

  return blinkerRangeInTimeSubstringToSeparatorText;
}

- (id)_blinkerRangeInTimeSubstringFromSeparatorText
{
  blinkerRangeInTimeSubstringFromSeparatorText = self->_blinkerRangeInTimeSubstringFromSeparatorText;
  if (!blinkerRangeInTimeSubstringFromSeparatorText)
  {
    timeSubstringFromSeparatorText = [(CLKTimeFormatter *)self timeSubstringFromSeparatorText];
    _clkBlinkerRange = [timeSubstringFromSeparatorText _clkBlinkerRange];
    v7 = v6;

    v8 = [_CLKTimeFormatterSubstringRange rangeWithRange:_clkBlinkerRange, v7];
    v9 = self->_blinkerRangeInTimeSubstringFromSeparatorText;
    self->_blinkerRangeInTimeSubstringFromSeparatorText = v8;

    blinkerRangeInTimeSubstringFromSeparatorText = self->_blinkerRangeInTimeSubstringFromSeparatorText;
  }

  return blinkerRangeInTimeSubstringFromSeparatorText;
}

- (id)_rangeInTimeSubstringFromSecondsSeparatorText
{
  rangeInTimeSubstringFromSecondsSeparatorText = self->_rangeInTimeSubstringFromSecondsSeparatorText;
  if (!rangeInTimeSubstringFromSecondsSeparatorText)
  {
    timeText = [(CLKTimeFormatter *)self timeText];
    _clkBlinkerRangeByBackwardsSearch = [timeText _clkBlinkerRangeByBackwardsSearch];
    v7 = v6;

    v8 = _clkBlinkerRangeByBackwardsSearch + v7;
    timeText2 = [(CLKTimeFormatter *)self timeText];
    v10 = [timeText2 length] - v8;

    v11 = [_CLKTimeFormatterSubstringRange rangeWithRange:v8, v10];
    v12 = self->_rangeInTimeSubstringFromSecondsSeparatorText;
    self->_rangeInTimeSubstringFromSecondsSeparatorText = v11;

    rangeInTimeSubstringFromSecondsSeparatorText = self->_rangeInTimeSubstringFromSecondsSeparatorText;
  }

  return rangeInTimeSubstringFromSecondsSeparatorText;
}

- (id)_timeAndDesignatorFormatter
{
  v3 = +[_CLKTimeFormatterCache sharedInstance];
  v4 = [v3 timeAndDesignatorFormatterForTimeZone:self->_timeZone suppressWhitespace:self->_suppressesDesignatorWhitespace forcedNumberSystem:self->_forcedNumberSystem];

  return v4;
}

- (id)trimLeadingLeftRightMarkerFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy hasPrefix:@"\u200E"])
  {
    v4 = [fromCopy substringFromIndex:1];
  }

  else
  {
    v4 = fromCopy;
  }

  v5 = v4;

  return v5;
}

- (void)_notifyTextDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 timeFormatterTextDidChange:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_notifyReportingLiveTimeDidChange
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_observers;
  v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        if (objc_opt_respondsToSelector())
        {
          [v8 timeFormatterReportingLiveTimeDidChange:{self, v9}];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)_stopMinuteUpdates:(BOOL)updates
{
  updatesCopy = updates;
  if (self->_minutesUpdateToken)
  {
    [(CLKClockTimer *)self->_timer stopUpdatesForToken:?];
    minutesUpdateToken = self->_minutesUpdateToken;
    self->_minutesUpdateToken = 0;

    if (updatesCopy)
    {

      [(CLKTimeFormatter *)self _notifyReportingLiveTimeDidChange];
    }
  }
}

- (void)_stopSecondsUpdates:(BOOL)updates
{
  updatesCopy = updates;
  if (self->_secondsUpdateToken)
  {
    [(CLKClockTimer *)self->_timer stopUpdatesForToken:?];
    secondsUpdateToken = self->_secondsUpdateToken;
    self->_secondsUpdateToken = 0;

    if (updatesCopy)
    {

      [(CLKTimeFormatter *)self _notifyReportingLiveTimeDidChange];
    }
  }
}

- (void)_startOrStopUpdatesIfNecessary
{
  if ([(CLKTimeFormatter *)self reportingLiveTime])
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__CLKTimeFormatter__startOrStopUpdatesIfNecessary__block_invoke;
    v10[3] = &unk_278A1EFF8;
    objc_copyWeak(&v11, &location);
    v3 = MEMORY[0x2383C4AF0](v10);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __50__CLKTimeFormatter__startOrStopUpdatesIfNecessary__block_invoke_67;
    v8[3] = &unk_278A1F020;
    objc_copyWeak(&v9, &location);
    v4 = MEMORY[0x2383C4AF0](v8);
    if (self->_showSeconds)
    {
      [(CLKTimeFormatter *)self _stopMinuteUpdates:0];
      if (!self->_secondsUpdateToken)
      {
        v5 = [(CLKClockTimer *)self->_timer startUpdatesWithUpdateFrequency:1 withHandler:v3 identificationLog:v4];
        secondsUpdateToken = self->_secondsUpdateToken;
        self->_secondsUpdateToken = v5;
LABEL_10:

        [(CLKTimeFormatter *)self _notifyReportingLiveTimeDidChange];
      }
    }

    else
    {
      [(CLKTimeFormatter *)self _stopSecondsUpdates:0];
      if (!self->_minutesUpdateToken)
      {
        v7 = [(CLKClockTimer *)self->_timer startUpdatesWithUpdateFrequency:0 withHandler:v3 identificationLog:v4];
        secondsUpdateToken = self->_minutesUpdateToken;
        self->_minutesUpdateToken = v7;
        goto LABEL_10;
      }
    }

    [(CLKTimeFormatter *)self _invalidateDate:0];

    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
    return;
  }

  [(CLKTimeFormatter *)self _stopMinuteUpdates:1];

  [(CLKTimeFormatter *)self _stopSecondsUpdates:1];
}

void __50__CLKTimeFormatter__startOrStopUpdatesIfNecessary__block_invoke(uint64_t a1, void *a2, id *a3)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidateDate:*a3];
}

__CFString *__50__CLKTimeFormatter__startOrStopUpdatesIfNecessary__block_invoke_67(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(WeakRetained + 31);
    v4 = [v3 identifyingInfoForTimeFormatter:v2];
  }

  else
  {
    v4 = @"ERROR - nil self";
  }

  return v4;
}

- (void)_invalidateDate:(id)date
{
  dateCopy = date;
  overrideDate = self->_overrideDate;
  v8 = dateCopy;
  if (overrideDate)
  {
    v6 = overrideDate;
  }

  else
  {
    v7 = dateCopy;
    if (!dateCopy)
    {
      v7 = +[CLKClockTimer now];
    }

    v6 = [v7 dateByAddingTimeInterval:self->_timeOffset];
    if (!v8)
    {
    }
  }

  if (![(NSDate *)v6 isEqualToDate:self->_date])
  {
    objc_storeStrong(&self->_date, v6);
    [(CLKTimeFormatter *)self _invalidateText];
  }
}

- (void)_invalidateText
{
  timeText = self->_timeText;
  self->_timeText = 0;

  designatorText = self->_designatorText;
  self->_designatorText = 0;

  timeAndDesignatorText = self->_timeAndDesignatorText;
  self->_timeAndDesignatorText = 0;

  timeAndDesignatorTextWithoutMinutesIfZero = self->_timeAndDesignatorTextWithoutMinutesIfZero;
  self->_timeAndDesignatorTextWithoutMinutesIfZero = 0;

  timeSubstringToSeparatorText = self->_timeSubstringToSeparatorText;
  self->_timeSubstringToSeparatorText = 0;

  timeSubstringFromSeparatorText = self->_timeSubstringFromSeparatorText;
  self->_timeSubstringFromSeparatorText = 0;

  timeRange = self->_timeRange;
  self->_timeRange = 0;

  designatorRangeInTimeAndDesignatorText = self->_designatorRangeInTimeAndDesignatorText;
  self->_designatorRangeInTimeAndDesignatorText = 0;

  designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero = self->_designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero;
  self->_designatorRangeInTimeAndDesignatorTextWithoutMinutesIfZero = 0;

  blinkerRangeInTimeText = self->_blinkerRangeInTimeText;
  self->_blinkerRangeInTimeText = 0;

  lastBlinkerRangeInTimeText = self->_lastBlinkerRangeInTimeText;
  self->_lastBlinkerRangeInTimeText = 0;

  blinkerRangeInTimeAndDesignatorText = self->_blinkerRangeInTimeAndDesignatorText;
  self->_blinkerRangeInTimeAndDesignatorText = 0;

  separatorRangeInTimeText = self->_separatorRangeInTimeText;
  self->_separatorRangeInTimeText = 0;

  separatorRangeInTimeAndDesignatorText = self->_separatorRangeInTimeAndDesignatorText;
  self->_separatorRangeInTimeAndDesignatorText = 0;

  rangeInTimeSubstringFromSecondsSeparatorText = self->_rangeInTimeSubstringFromSecondsSeparatorText;
  self->_rangeInTimeSubstringFromSecondsSeparatorText = 0;

  v18 = self->_lastBlinkerRangeInTimeText;
  self->_lastBlinkerRangeInTimeText = 0;

  [(CLKTimeFormatter *)self _notifyTextDidChange];
}

- (void)_handleSignificantTimeChange
{
  if (!self->_timeZone)
  {
    [(CLKTimeFormatter *)self _invalidateText];
  }
}

- (void)setShowSeconds:(BOOL)seconds
{
  if (self->_showSeconds != seconds)
  {
    self->_showSeconds = seconds;
    [(CLKTimeFormatter *)self _invalidateText];
  }
}

- (CLKTimeFormatterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)timeTextForNumberSystem:(unint64_t)system
{
  if (self->_forcedNumberSystem == system)
  {
    timeText = [(CLKTimeFormatter *)self timeText];
  }

  else
  {
    v6 = +[_CLKTimeFormatterCache sharedInstance];
    v7 = [v6 timeOnlyFormatterForTimeZone:self->_timeZone hasSeconds:self->_showSeconds forcedNumberSystem:system];
    v8 = [v7 stringFromDate:self->_date];

    timeText = [(CLKTimeFormatter *)self trimLeadingLeftRightMarkerFrom:v8];
  }

  return timeText;
}

- (_NSRange)separatorNSRangeInTimeText:(id)text
{
  v3 = MEMORY[0x277CCA900];
  textCopy = text;
  punctuationCharacterSet = [v3 punctuationCharacterSet];
  v6 = [textCopy rangeOfCharacterFromSet:punctuationCharacterSet];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

@end