@interface CLKRelativeDateTextProvider
+ (BOOL)_configureComponentsFormatter:(id)a3 fallbackIndex:(unint64_t)a4 style:(int64_t)a5;
+ (BOOL)_configureRelativeFormatter:(id)a3 fallbackIndex:(unint64_t)a4 style:(int64_t)a5;
+ (CLKRelativeDateTextProvider)textProviderWithDate:(NSDate *)date relativeToDate:(NSDate *)relativeToDate style:(CLKRelativeDateStyle)style units:(NSCalendarUnit)calendarUnits;
- (BOOL)_validate;
- (BOOL)isEqual:(id)a3;
- (CLKRelativeDateTextProvider)initWithCoder:(id)a3;
- (CLKRelativeDateTextProvider)initWithDate:(NSDate *)date relativeToDate:(NSDate *)relativeDate style:(CLKRelativeDateStyle)style units:(NSCalendarUnit)calendarUnits;
- (id)JSONObjectRepresentation;
- (id)_componentsForDate:(id)a3 visibleUnits:(unint64_t *)a4;
- (id)_initWithJSONObjectRepresentation:(id)a3;
- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4;
- (id)_sessionCacheKey;
- (id)_signPrefixString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)_timePeriodForElapsedTime:(double)a3;
- (int64_t)_updateFrequency;
- (unint64_t)hash;
- (void)_configureFormatterForTimerStyle;
- (void)_endSession;
- (void)_startSessionWithDate:(id)a3;
- (void)_validate;
- (void)encodeWithCoder:(id)a3;
- (void)finalize;
@end

@implementation CLKRelativeDateTextProvider

- (CLKRelativeDateTextProvider)initWithDate:(NSDate *)date relativeToDate:(NSDate *)relativeDate style:(CLKRelativeDateStyle)style units:(NSCalendarUnit)calendarUnits
{
  v10 = date;
  v11 = relativeDate;
  v15.receiver = self;
  v15.super_class = CLKRelativeDateTextProvider;
  v12 = [(CLKTextProvider *)&v15 initPrivate];
  v13 = v12;
  if (v12)
  {
    [(CLKRelativeDateTextProvider *)v12 setDate:v10];
    [(CLKRelativeDateTextProvider *)v13 setRelativeToDate:v11];
    [(CLKRelativeDateTextProvider *)v13 setRelativeDateStyle:style];
    [(CLKRelativeDateTextProvider *)v13 setCalendarUnits:calendarUnits];
    [(CLKTextProvider *)v13 setTimeTravelUpdateFrequency:2 * (v13->_relativeToDate == 0)];
    [(CLKRelativeDateTextProvider *)v13 setTritiumDateStyle:5];
  }

  return v13;
}

+ (CLKRelativeDateTextProvider)textProviderWithDate:(NSDate *)date relativeToDate:(NSDate *)relativeToDate style:(CLKRelativeDateStyle)style units:(NSCalendarUnit)calendarUnits
{
  v10 = relativeToDate;
  v11 = date;
  v12 = [[a1 alloc] initWithDate:v11 relativeToDate:v10 style:style units:calendarUnits];

  return v12;
}

- (void)_startSessionWithDate:(id)a3
{
  v4 = a3;
  relativeToDate = self->_relativeToDate;
  v11 = v4;
  if (relativeToDate)
  {
    v6 = relativeToDate;

    v11 = v6;
  }

  v7 = [(CLKRelativeDateTextProvider *)self date];
  [v7 timeIntervalSinceDate:v11];
  self->_elapsedTime = v8;

  self->_sessionTimePeriod = [(CLKRelativeDateTextProvider *)self _timePeriodForElapsedTime:self->_elapsedTime];
  v9 = [(CLKRelativeDateTextProvider *)self _componentsForDate:v11 visibleUnits:&self->_sessionVisibleUnits];
  sessionComponents = self->_sessionComponents;
  self->_sessionComponents = v9;

  self->_sessionInProgress = 1;
}

- (void)finalize
{
  if (self->_relativeDateStyle == 2)
  {
    self->_calendarUnits = 224;
  }

  v5 = v2;
  v6 = v3;
  v4.receiver = self;
  v4.super_class = CLKRelativeDateTextProvider;
  [(CLKTextProvider *)&v4 finalize];
}

- (id)_sessionCacheKey
{
  sessionCacheKey = self->_sessionCacheKey;
  if (!sessionCacheKey)
  {
    v4 = [MEMORY[0x277CCAB68] string];
    sessionVisibleUnits = self->_sessionVisibleUnits;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __47__CLKRelativeDateTextProvider__sessionCacheKey__block_invoke;
    v15 = &unk_278A1F070;
    v16 = self;
    v6 = v4;
    v17 = v6;
    v18 = 0;
    v7 = 0x38u;
    do
    {
      if ((*(&__allAllowedUnits + v7) & ~sessionVisibleUnits) != 0)
      {
        v8 = 0;
        if (!v7)
        {
          break;
        }
      }

      else
      {
        (v14)(&v12);
        v8 = v18;
        if (!v7)
        {
          break;
        }
      }

      v7 -= 8;
    }

    while ((v8 & 1) == 0);
    if (self->_relativeDateStyle == 1)
    {
      [v6 appendFormat:@"%ld", self->_sessionTimePeriod, v12, v13];
    }

    v9 = self->_sessionCacheKey;
    self->_sessionCacheKey = v6;
    v10 = v6;

    sessionCacheKey = self->_sessionCacheKey;
  }

  return sessionCacheKey;
}

void __47__CLKRelativeDateTextProvider__sessionCacheKey__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 144) valueForComponent:a2];
  v5 = [*(a1 + 32) _timerIsPausedAtZero];
  v6 = *(a1 + 40);
  if (a2 > 63)
  {
    if (a2 > 4095)
    {
      if (a2 == 4096)
      {
        v7 = @"wk";
        goto LABEL_21;
      }

      if (a2 == 0x8000)
      {
        v7 = @"ss";
        goto LABEL_21;
      }
    }

    else
    {
      if (a2 == 64)
      {
        v7 = @"min";
        goto LABEL_21;
      }

      if (a2 == 128)
      {
        v7 = @"sec";
        goto LABEL_21;
      }
    }
  }

  else if (a2 > 15)
  {
    if (a2 == 16)
    {
      v7 = @"day";
      goto LABEL_21;
    }

    if (a2 == 32)
    {
      v7 = @"hr";
      goto LABEL_21;
    }
  }

  else
  {
    if (a2 == 4)
    {
      v7 = @"yr";
      goto LABEL_21;
    }

    if (a2 == 8)
    {
      v7 = @"mo";
      goto LABEL_21;
    }
  }

  v7 = @"?";
LABEL_21:
  v8 = v4 / 0x989680;
  if (a2 != 0x8000)
  {
    v8 = v4;
  }

  if (v5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
  [v6 appendFormat:@"%@%@", v7, v10];
}

- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4
{
  v82[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (!self->_date)
  {
    goto LABEL_50;
  }

  if (!self->_sessionInProgress)
  {
    v7 = CLKLoggingObjectForDomain(4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CLKRelativeDateTextProvider _sessionAttributedTextForIndex:v7 withStyle:?];
    }
  }

  relativeDateStyle = self->_relativeDateStyle;
  sessionVisibleUnits = self->_sessionVisibleUnits;
  disableSmallCapUnits = self->_disableSmallCapUnits;
  if (relativeDateStyle != 2)
  {
    if ((relativeDateStyle & 0xFFFFFFFFFFFFFFFELL) == 6)
    {
      relativeDateTimeFormatter = self->_relativeDateTimeFormatter;
      if (!relativeDateTimeFormatter)
      {
        v13 = objc_alloc_init(MEMORY[0x277CCAC78]);
        v14 = self->_relativeDateTimeFormatter;
        self->_relativeDateTimeFormatter = v13;

        relativeDateTimeFormatter = self->_relativeDateTimeFormatter;
      }

      if ([CLKRelativeDateTextProvider _configureRelativeFormatter:relativeDateTimeFormatter fallbackIndex:a3 style:relativeDateStyle]&& self->_sessionComponents)
      {
        v15 = [(NSRelativeDateTimeFormatter *)self->_relativeDateTimeFormatter localizedStringFromDateComponents:?];
LABEL_46:
        v16 = v15;
        goto LABEL_47;
      }

LABEL_50:
      v32 = 0;
      goto LABEL_85;
    }

LABEL_41:
    formatter = self->_formatter;
    if (!formatter)
    {
      v29 = objc_alloc_init(MEMORY[0x277CCA958]);
      v30 = self->_formatter;
      self->_formatter = v29;

      formatter = self->_formatter;
    }

    if ([CLKRelativeDateTextProvider _configureComponentsFormatter:formatter fallbackIndex:a3 style:relativeDateStyle]&& self->_sessionComponents)
    {
      [(NSDateComponentsFormatter *)self->_formatter setAllowedUnits:sessionVisibleUnits];
      v15 = [(NSDateComponentsFormatter *)self->_formatter stringFromDateComponents:self->_sessionComponents];
      goto LABEL_46;
    }

    goto LABEL_50;
  }

  v11 = self->_wantsSubseconds || self->_twoDigitMinuteZeroPadding;
  LODWORD(v16) = 0;
  wantsSubsecondsAsDashes = self->_wantsSubsecondsAsDashes;
  if (a3 <= 2)
  {
    if (a3)
    {
      v18 = 0;
      if (a3 == 2)
      {
        LODWORD(v16) = 0;
        v18 = 1;
      }
    }

    else
    {
      v18 = 0;
      LODWORD(v16) = self->_wantsSubseconds;
    }

LABEL_29:
    elapsedTime = self->_elapsedTime;
    if (elapsedTime >= 0.0)
    {
      v20 = self->_elapsedTime;
    }

    else
    {
      v20 = -elapsedTime;
    }

    if ([(CLKRelativeDateTextProvider *)self _timerIsPausedAtZero])
    {
      v20 = 0.0;
    }

    if (!self->_relativeToDate && v20 * 1000.0 <= 1.84467441e19)
    {
      v77 = wantsSubsecondsAsDashes;
      v22 = disableSmallCapUnits;
      v23 = sessionVisibleUnits;
      v24 = v11;
      v25 = v6;
      v26 = _TimeAdjustedForDigitalDisplay_leastSignificantDigits[(121 * ((v20 * 1000.0) - 100 * (((v20 * 1000.0) / 0x64) & 0x3FFFFFFF))) >> 12];
      v27 = arc4random_uniform(3u) + v26;
      v6 = v25;
      v11 = v24;
      sessionVisibleUnits = v23;
      disableSmallCapUnits = v22;
      wantsSubsecondsAsDashes = v77;
      v20 = ((10 * v27) + floor(v20 * 10.0) * 100.0) / 1000.0;
    }

    *v21.i64 = v20;
    if ((v16 & wantsSubsecondsAsDashes) == 1)
    {
      CLKFormatTimeIntervalSecondsForLowerFidelity(0, 0, v20 < 3600.0, 1, 1, 0, v21);
    }

    else
    {
      CLKFormatTimeIntervalSeconds(0, 0, v16, 1, v11, v18, v21);
    }
    v16 = ;
    if (v16)
    {
      goto LABEL_47;
    }

    goto LABEL_41;
  }

  if (a3 != 3)
  {
    v18 = 0;
    if (a3 == 4)
    {
      goto LABEL_50;
    }

    goto LABEL_29;
  }

  if (self->_showLeadingMinutes || [(NSDateComponents *)self->_sessionComponents hour]|| [(NSDateComponents *)self->_sessionComponents minute]|| !self->_sessionComponents)
  {
    LODWORD(v16) = 0;
LABEL_28:
    v18 = 0;
    goto LABEL_29;
  }

  [(CLKRelativeDateTextProvider *)self _configureFormatterForTimerStyle];
  [(NSDateComponentsFormatter *)self->_formatter setAllowedUnits:sessionVisibleUnits & 0xFFFFFFFFFFFF7FFFLL];
  v16 = [(NSDateComponentsFormatter *)self->_formatter stringFromDateComponents:self->_sessionComponents];
  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_47:
  if (self->_relativeToDate || (sessionVisibleUnits & 0x80) == 0)
  {
    v31 = [v6 font];
  }

  else
  {
    v31 = [v6 monospacedDigitsFont];
  }

  v33 = v31;
  v34 = [(CLKTextProvider *)self fontFeatures];

  if (v34)
  {
    v35 = [(CLKTextProvider *)self fontFeatures];
    v36 = [v33 CLKFontByApplyingFeatureSettings:v35];

    v33 = v36;
  }

  v37 = [MEMORY[0x277CBEAF8] currentLocale];
  v38 = [v16 lowercaseStringWithLocale:v37];

  v79 = v6;
  if (relativeDateStyle != 2 && !disableSmallCapUnits)
  {
    v39 = [v33 CLKFontWithLocalizedLowerCaseSmallCaps];

    v40 = [MEMORY[0x277CBEAF8] currentLocale];
    v41 = [v38 uppercaseStringWithLocale:v40];

    v33 = v39;
    v38 = v41;
  }

  SymbolicTraits = CTFontGetSymbolicTraits(v33);
  v43 = !CLKSmallCapsAllowed();
  if (!v38)
  {
    v43 = 1;
  }

  v44 = (!v43 && relativeDateStyle != 2 && !disableSmallCapUnits) & SymbolicTraits;
  if (self->_shrinkUnitsInCJK)
  {
    v45 = CLKIsCurrentLocaleCJK();
  }

  else
  {
    v45 = 0;
  }

  v46 = [v79 uppercase] & disableSmallCapUnits | v44;
  v47 = [MEMORY[0x277CBEAF8] currentLocale];
  if (v46)
  {
    [v38 uppercaseStringWithLocale:v47];
  }

  else
  {
    [v38 lowercaseStringWithLocale:v47];
  }
  v48 = ;

  v49 = relativeDateStyle == 1 && !self->_disableOffsetPrefix;
  v50 = v48 != 0 && v49;
  if (v48)
  {
    v51 = v48;
  }

  else
  {
    v51 = @"---";
  }

  v52 = *MEMORY[0x277D740A8];
  v81 = *MEMORY[0x277D740A8];
  v82[0] = v33;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
  v54 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v51 attributes:v53];
  if ((v44 | v45))
  {
    v75 = v50;
    v76 = v53;
    v55 = [MEMORY[0x277CCAB50] whitespaceAndNewlineCharacterSet];
    v56 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    [v55 formUnionWithCharacterSet:v56];

    v78 = v51;
    v57 = [MEMORY[0x277CCAC80] scannerWithString:v51];
    [v57 setCharactersToBeSkipped:v55];
    [v33 pointSize];
    v59 = v58 + -2.0;
    v60 = v58 * 0.75;
    if (v45)
    {
      v60 = v59;
    }

    v61 = [v33 fontWithSize:v60];
    v80 = 0;
    v62 = [v57 scanUpToCharactersFromSet:v55 intoString:&v80];
    v63 = v80;
    v64 = v63;
    if (v62)
    {
      do
      {
        v65 = [v64 length];
        [v54 addAttribute:v52 value:v61 range:{objc_msgSend(v57, "scanLocation") - v65, v65}];
        v80 = v64;
        v66 = [v57 scanUpToCharactersFromSet:v55 intoString:&v80];
        v67 = v80;

        v64 = v67;
      }

      while ((v66 & 1) != 0);
    }

    else
    {
      v67 = v63;
    }

    v53 = v76;
    v51 = v78;
    v50 = v75;
  }

  if (v50)
  {
    v68 = objc_alloc(MEMORY[0x277CCA898]);
    v69 = [(CLKRelativeDateTextProvider *)self _signPrefixString];
    v70 = [v68 initWithString:v69 attributes:v53];

    [v54 insertAttributedString:v70 atIndex:0];
  }

  v6 = v79;
  if ([v79 shouldEmbedTintColors])
  {
    v71 = [(CLKTextProvider *)self tintColor];

    if (v71)
    {
      v72 = *MEMORY[0x277D740C0];
      v73 = [(CLKTextProvider *)self tintColor];
      [v54 addAttribute:v72 value:v73 range:{0, objc_msgSend(v54, "length")}];
    }
  }

  v32 = [v54 _attributedStringWithOtherAttributesFromStyle:v79];

LABEL_85:

  return v32;
}

- (int64_t)_timePeriodForElapsedTime:(double)a3
{
  if (a3 >= 0.0)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

- (id)_signPrefixString
{
  v3 = CLKLocaleCurrentNumberSystem();
  v4 = &stru_284A20458;
  v5 = @"\u200F";
  if (v3 != 1)
  {
    v5 = &stru_284A20458;
  }

  sessionTimePeriod = self->_sessionTimePeriod;
  if (sessionTimePeriod == 3)
  {
    v4 = @"−";
  }

  if (sessionTimePeriod == 1)
  {
    v4 = @"+";
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, v4];
}

- (void)_endSession
{
  sessionComponents = self->_sessionComponents;
  self->_sessionComponents = 0;

  self->_sessionVisibleUnits = 0;
  sessionCacheKey = self->_sessionCacheKey;
  self->_sessionCacheKey = 0;

  self->_sessionInProgress = 0;
}

- (BOOL)_validate
{
  v10.receiver = self;
  v10.super_class = CLKRelativeDateTextProvider;
  v3 = [(CLKTextProvider *)&v10 _validate];
  if (v3)
  {
    if (self->_date)
    {
      calendarUnits = self->_calendarUnits;
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v18 = 0;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v12 = ___HighestOrderUnit_block_invoke;
      v13 = &unk_278A1F0C0;
      v14 = &v15;
      v19 = 0;
      v5 = 0x38u;
      do
      {
        if ((*(&__allAllowedUnits + v5) & ~calendarUnits) != 0)
        {
          v6 = 0;
          if (!v5)
          {
            break;
          }
        }

        else
        {
          v12(v11);
          v6 = v19;
          if (!v5)
          {
            break;
          }
        }

        v5 -= 8;
      }

      while ((v6 & 1) == 0);
      v7 = v16[3];
      _Block_object_dispose(&v15, 8);
      if (v7)
      {
        LOBYTE(v3) = 1;
        return v3;
      }

      v8 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(CLKRelativeDateTextProvider *)self _validate];
      }
    }

    else
    {
      v8 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(CLKRelativeDateTextProvider *)self _validate];
      }
    }

    LOBYTE(v3) = 0;
  }

  return v3;
}

- (int64_t)_updateFrequency
{
  if (self->_relativeToDate)
  {
    return 0;
  }

  v8[3] = v2;
  v8[4] = v3;
  if (self->_relativeDateStyle == 2 && self->_wantsSubseconds && !self->_wantsSubsecondsAsDashes)
  {
    return 3;
  }

  if ((self->_calendarUnits & 0x80) != 0)
  {
    v8[0] = 0;
    v6 = +[CLKDate complicationDate];
    v7 = [(CLKRelativeDateTextProvider *)self _componentsForDate:v6 visibleUnits:v8];

    if ((v8[0] & 0x80) != 0)
    {
      return 2;
    }
  }

  return 1;
}

- (id)_componentsForDate:(id)a3 visibleUnits:(unint64_t *)a4
{
  v6 = a3;
  v7 = v6;
  calendarUnits = self->_calendarUnits;
  wantsSubseconds = self->_wantsSubseconds;
  relativeDateStyle = self->_relativeDateStyle;
  v29 = a4;
  if (relativeDateStyle > 2)
  {
    if (relativeDateStyle != 3 && relativeDateStyle != 5)
    {
      goto LABEL_56;
    }

LABEL_12:
    calendarUnits |= (calendarUnits >> 1) & 0x40;
LABEL_13:
    v12 = [v6 earlierDate:self->_date];
    v13 = [v7 laterDate:self->_date];
    goto LABEL_14;
  }

  if (!relativeDateStyle)
  {
    goto LABEL_12;
  }

  if (relativeDateStyle == 2)
  {
    if (self->_wantsSubseconds)
    {
      calendarUnits = 32992;
    }

    else
    {
      calendarUnits = 224;
    }

    goto LABEL_13;
  }

LABEL_56:
  if ((relativeDateStyle & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    goto LABEL_13;
  }

  v12 = v6;
  v13 = self->_date;
LABEL_14:
  v14 = v13;
  v15 = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = [v15 components:calendarUnits fromDate:v12 toDate:v14 options:0];

  if (!wantsSubseconds)
  {
    [v16 setNanosecond:0];
    if ((calendarUnits & 0x80) == 0 && [v16 minute] >= 1)
    {
      [v16 setSecond:0];
    }
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v31 = __63__CLKRelativeDateTextProvider__componentsForDate_visibleUnits___block_invoke;
  v32 = &unk_278A1F098;
  v17 = v16;
  v33 = v17;
  v34 = &v35;
  LOBYTE(v39) = 0;
  v18 = 7u;
  do
  {
    if ((__allAllowedUnits[v18] & ~calendarUnits) != 0)
    {
      v19 = 0;
      if (!(v18 * 8))
      {
        break;
      }
    }

    else
    {
      v31(v30);
      v19 = v39;
      if (!(v18 * 8))
      {
        break;
      }
    }

    --v18;
  }

  while ((v19 & 1) == 0);
  v20 = v36[3];
  if (!v20)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = ___LowestOrderUnit_block_invoke;
    v42 = &unk_278A1F0C0;
    v43 = &v49;
    LOBYTE(v48[0]) = 0;
    do
    {
      if ((__allAllowedUnits[v20] & ~calendarUnits) != 0)
      {
        v21 = 0;
      }

      else
      {
        v41(&v39);
        v21 = v48[0];
      }

      if (v20 > 6)
      {
        break;
      }

      ++v20;
    }

    while ((v21 & 1) == 0);
    v20 = v50[3];
    _Block_object_dispose(&v49, 8);
    v36[3] = v20;
  }

  if (v29)
  {
    v22 = self->_relativeDateStyle;
    if (v22 > 2)
    {
      if (v22 != 3 && v22 != 5)
      {
LABEL_52:
        *v29 = v20;
        goto LABEL_53;
      }
    }

    else if (v22)
    {
      v23 = calendarUnits & 0xFFFFFFFFFFFFFFDFLL;
      if (v20 == 32)
      {
        v23 = calendarUnits;
      }

      if (v22 == 2)
      {
        v20 = v23;
      }

      goto LABEL_52;
    }

    v24 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v48[3] = 0;
    v47[0] = 0;
    v47[1] = v47;
    v47[2] = 0x2020000000;
    v47[3] = 0;
    v39 = MEMORY[0x277D85DD0];
    v40 = 3221225472;
    v41 = ___GetNeighboringUnits_block_invoke;
    v42 = &unk_278A1F0E8;
    v43 = &v49;
    v44 = v47;
    v45 = v48;
    v46 = v20;
    v53 = 0;
    do
    {
      if ((__allAllowedUnits[v24] & ~calendarUnits) != 0)
      {
        v25 = 0;
      }

      else
      {
        v41(&v39);
        v25 = v53;
      }

      if (v24 > 6)
      {
        break;
      }

      ++v24;
    }

    while ((v25 & 1) == 0);
    v26 = v50[3];
    _Block_object_dispose(v47, 8);
    _Block_object_dispose(v48, 8);
    _Block_object_dispose(&v49, 8);
    if ([v17 valueForComponent:v26] | v26 & 0x80E0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v20 = v36[3] | v27;
    goto LABEL_52;
  }

LABEL_53:

  _Block_object_dispose(&v35, 8);

  return v17;
}

uint64_t __63__CLKRelativeDateTextProvider__componentsForDate_visibleUnits___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) valueForComponent:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a3 = 1;
  }

  return result;
}

+ (BOOL)_configureComponentsFormatter:(id)a3 fallbackIndex:(unint64_t)a4 style:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (a5 > 2)
  {
    switch(a5)
    {
      case 3:
        a4 += 2;
        break;
      case 5:
        break;
      case 4:
        ++a4;
        goto LABEL_8;
      default:
        goto LABEL_16;
    }

LABEL_12:
    [v7 setZeroFormattingBehavior:2];
    if (a4 < 4)
    {
      v10 = qword_2370A43F0[a4];
      v11 = qword_2370A4410[a4];
      goto LABEL_14;
    }

LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  if (!a5)
  {
    ++a4;
    goto LABEL_12;
  }

  if (a5 == 1)
  {
LABEL_8:
    [v7 setZeroFormattingBehavior:2];
    if (a4 < 3)
    {
      v10 = 3 - a4;
      v11 = 1;
LABEL_14:
      [v8 setUnitsStyle:v10];
      [v8 setMaximumUnitCount:v11];
      v9 = 1;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_16:

  return v9;
}

+ (BOOL)_configureRelativeFormatter:(id)a3 fallbackIndex:(unint64_t)a4 style:(int64_t)a5
{
  v7 = a3;
  v8 = v7;
  if (a5 == 7)
  {
    v9 = a4 + 1;
  }

  else
  {
    v9 = a4;
  }

  [v7 setDateTimeStyle:0];
  if (v9 <= 2)
  {
    [v8 setUnitsStyle:qword_2370A4430[v9]];
  }

  return v9 < 3;
}

- (void)_configureFormatterForTimerStyle
{
  formatter = self->_formatter;
  if (!formatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA958]);
    v5 = self->_formatter;
    self->_formatter = v4;

    formatter = self->_formatter;
  }

  [(NSDateComponentsFormatter *)formatter setZeroFormattingBehavior:1];
  [(NSDateComponentsFormatter *)self->_formatter setUnitsStyle:0];
  v6 = self->_formatter;

  [(NSDateComponentsFormatter *)v6 setMaximumUnitCount:1];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CLKRelativeDateTextProvider;
  v2 = [(CLKTextProvider *)&v4 description];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CLKRelativeDateTextProvider;
  v4 = [(CLKTextProvider *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4 != self)
  {
    objc_storeStrong(&v4->_date, self->_date);
    v5->_relativeDateStyle = self->_relativeDateStyle;
    v5->_calendarUnits = self->_calendarUnits;
    objc_storeStrong(&v5->_relativeToDate, self->_relativeToDate);
    v5->_twoDigitMinuteZeroPadding = self->_twoDigitMinuteZeroPadding;
    v5->_showLeadingMinutes = self->_showLeadingMinutes;
    v5->_wantsSubsecondsAsDashes = self->_wantsSubsecondsAsDashes;
    v5->_wantsSubseconds = self->_wantsSubseconds;
    v5->_disableSmallCapUnits = self->_disableSmallCapUnits;
    v5->_shrinkUnitsInCJK = self->_shrinkUnitsInCJK;
    v5->_disableOffsetPrefix = self->_disableOffsetPrefix;
    v5->_pauseTimerAtZero = self->_pauseTimerAtZero;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CLKRelativeDateTextProvider;
  v5 = [(CLKTextProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_date, v4[25]) && self->_relativeDateStyle == v4[27] && self->_calendarUnits == v4[28] && CLKEqualObjects(self->_relativeToDate, v4[26]) && self->_twoDigitMinuteZeroPadding == *(v4 + 188) && self->_showLeadingMinutes == *(v4 + 189) && self->_wantsSubseconds == *(v4 + 190) && self->_wantsSubsecondsAsDashes == *(v4 + 191) && self->_disableSmallCapUnits == *(v4 + 185) && self->_shrinkUnitsInCJK == *(v4 + 186) && self->_disableOffsetPrefix == *(v4 + 187) && self->_pauseTimerAtZero == *(v4 + 192);

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = CLKRelativeDateTextProvider;
  v3 = [(CLKTextProvider *)&v6 hash];
  v4 = v3 + 16 * self->_calendarUnits + 4 * self->_relativeDateStyle + [(NSDate *)self->_date hash];
  return v4 + ([(NSDate *)self->_relativeToDate hash]<< 8) + (self->_twoDigitMinuteZeroPadding << 9) + (self->_showLeadingMinutes << 10) + (self->_wantsSubseconds << 11) + (self->_disableSmallCapUnits << 12) + (self->_disableOffsetPrefix << 13) + (self->_pauseTimerAtZero << 14) + (self->_shrinkUnitsInCJK << 15);
}

- (CLKRelativeDateTextProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CLKRelativeDateTextProvider;
  v5 = [(CLKTextProvider *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v6;

    v5->_relativeDateStyle = [v4 decodeIntegerForKey:@"_style"];
    v5->_calendarUnits = [v4 decodeIntegerForKey:@"_units"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_relativeToDate"];
    relativeToDate = v5->_relativeToDate;
    v5->_relativeToDate = v8;

    v5->_twoDigitMinuteZeroPadding = [v4 decodeBoolForKey:@"_twoDigitiMinuteZeroPadding"];
    v5->_showLeadingMinutes = [v4 decodeBoolForKey:@"_showLeadingMinutes"];
    v5->_wantsSubseconds = [v4 decodeBoolForKey:@"_wantsSubseconds"];
    v5->_disableSmallCapUnits = [v4 decodeBoolForKey:@"_disableSmallCapUnits"];
    v5->_shrinkUnitsInCJK = [v4 decodeBoolForKey:@"_shrinkUnitsInCJK"];
    v5->_disableOffsetPrefix = [v4 decodeBoolForKey:@"_disableOffsetPrefix"];
    v5->_pauseTimerAtZero = [v4 decodeBoolForKey:@"_pauseTimerAtZero"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKRelativeDateTextProvider;
  v4 = a3;
  [(CLKTextProvider *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_date forKey:{@"_date", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_relativeDateStyle forKey:@"_style"];
  [v4 encodeInteger:self->_calendarUnits forKey:@"_units"];
  [v4 encodeObject:self->_relativeToDate forKey:@"_relativeToDate"];
  [v4 encodeBool:self->_twoDigitMinuteZeroPadding forKey:@"_twoDigitiMinuteZeroPadding"];
  [v4 encodeBool:self->_showLeadingMinutes forKey:@"_showLeadingMinutes"];
  [v4 encodeBool:self->_wantsSubseconds forKey:@"_wantsSubseconds"];
  [v4 encodeBool:self->_disableSmallCapUnits forKey:@"_disableSmallCapUnits"];
  [v4 encodeBool:self->_shrinkUnitsInCJK forKey:@"_shrinkUnitsInCJK"];
  [v4 encodeBool:self->_disableOffsetPrefix forKey:@"_disableOffsetPrefix"];
  [v4 encodeBool:self->_pauseTimerAtZero forKey:@"_pauseTimerAtZero"];
}

- (id)_initWithJSONObjectRepresentation:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CLKRelativeDateTextProvider;
  v5 = [(CLKTextProvider *)&v15 _initWithJSONObjectRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"date"];
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v6];
    v8 = v5[25];
    v5[25] = v7;

    v9 = [v4 objectForKeyedSubscript:@"relativeToDate"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v9];
      v11 = v5[26];
      v5[26] = v10;
    }

    v12 = [v4 objectForKeyedSubscript:@"relativeDateStyle"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"relativeDateStyle", v12}];
    }

    v5[27] = [v12 intValue];
    v13 = [v4 objectForKeyedSubscript:@"calendarUnits"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"calendarUnits", v13}];
    }

    v5[28] = [v13 intValue];
    [v5 setTimeTravelUpdateFrequency:2 * (v5[26] == 0)];
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v10.receiver = self;
  v10.super_class = CLKRelativeDateTextProvider;
  v3 = [(CLKTextProvider *)&v10 JSONObjectRepresentation];
  v4 = [(NSDate *)self->_date JSONObjectRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"date"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:self->_relativeDateStyle];
  [v3 setObject:v5 forKeyedSubscript:@"relativeDateStyle"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_calendarUnits];
  [v3 setObject:v6 forKeyedSubscript:@"calendarUnits"];

  relativeToDate = self->_relativeToDate;
  if (relativeToDate)
  {
    v8 = [(NSDate *)relativeToDate JSONObjectRepresentation];
    [v3 setObject:v8 forKeyedSubscript:@"relativeToDate"];
  }

  return v3;
}

- (void)_sessionAttributedTextForIndex:(NSObject *)a1 withStyle:.cold.1(NSObject *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACC8] callStackSymbols];
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23702D000, a1, OS_LOG_TYPE_ERROR, "CLKRelativeDateTextProvider _sessionAttributedTextForIndex:withStyle: called outside of session.\n%@", &v3, 0xCu);
}

- (void)_validate
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = v3;
  v6 = 138412802;
  v7 = @"date";
  v8 = 2112;
  v9 = v3;
  v10 = 2112;
  v11 = objc_opt_class();
  v5 = v11;
  _os_log_fault_impl(&dword_23702D000, a2, OS_LOG_TYPE_FAULT, "Property '%@' is not set on %@. This property must not be nil when passing %@ to the complication data handler.", &v6, 0x20u);
}

@end