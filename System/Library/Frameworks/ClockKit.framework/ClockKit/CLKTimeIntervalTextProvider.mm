@interface CLKTimeIntervalTextProvider
+ (CLKTimeIntervalTextProvider)textProviderWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate timeZone:(NSTimeZone *)timeZone;
+ (id)finalizedTextProviderWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone;
- (BOOL)_validate;
- (BOOL)isEqual:(id)equal;
- (CLKTimeIntervalTextProvider)initWithCoder:(id)coder;
- (CLKTimeIntervalTextProvider)initWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate timeZone:(NSTimeZone *)timeZone;
- (_NSRange)_rangeOfAnnontatedTime:(id)time matchingPattern:(id)pattern;
- (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)time;
- (_NSRange)_rangeOfHoursInAnnotatedTime:(id)time;
- (id)JSONObjectRepresentation;
- (id)_attributedTextForSequenceItem:(int64_t)item style:(id)style;
- (id)_dateIntervalAttributedTextWithStyle:(id)style narrow:(BOOL)narrow;
- (id)_fallbackSequence;
- (id)_initWithJSONObjectRepresentation:(id)representation;
- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style;
- (id)_stringByRemovingDesignatorRange:(_NSRange)range fromString:(id)string;
- (id)_timeIntervalAttributedTextWithStyle:(id)style dropMinutes:(BOOL)minutes onlyStartDate:(BOOL)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)_validate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKTimeIntervalTextProvider

- (CLKTimeIntervalTextProvider)initWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate timeZone:(NSTimeZone *)timeZone
{
  v8 = startDate;
  v9 = endDate;
  v10 = timeZone;
  v14.receiver = self;
  v14.super_class = CLKTimeIntervalTextProvider;
  initPrivate = [(CLKTextProvider *)&v14 initPrivate];
  v12 = initPrivate;
  if (initPrivate)
  {
    [(CLKTimeIntervalTextProvider *)initPrivate setStartDate:v8];
    [(CLKTimeIntervalTextProvider *)v12 setEndDate:v9];
    [(CLKTimeIntervalTextProvider *)v12 setTimeZone:v10];
  }

  return v12;
}

+ (CLKTimeIntervalTextProvider)textProviderWithStartDate:(NSDate *)startDate endDate:(NSDate *)endDate timeZone:(NSTimeZone *)timeZone
{
  v8 = timeZone;
  v9 = endDate;
  v10 = startDate;
  v11 = [[self alloc] initWithStartDate:v10 endDate:v9 timeZone:v8];

  return v11;
}

+ (id)finalizedTextProviderWithStartDate:(id)date endDate:(id)endDate timeZone:(id)zone
{
  v5 = [self textProviderWithStartDate:date endDate:endDate timeZone:zone];
  [v5 finalize];

  return v5;
}

- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style
{
  styleCopy = style;
  if (!self->_startDate || !self->_endDate)
  {
    goto LABEL_13;
  }

  if (!self->_dateFormatter)
  {
    v7 = objc_opt_new();
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v7;

    if (self->_timeZone)
    {
      [(NSDateFormatter *)self->_dateFormatter setTimeZone:?];
    }
  }

  fallbackSequence = self->_fallbackSequence;
  if (!fallbackSequence)
  {
    _fallbackSequence = [(CLKTimeIntervalTextProvider *)self _fallbackSequence];
    v11 = self->_fallbackSequence;
    self->_fallbackSequence = _fallbackSequence;

    fallbackSequence = self->_fallbackSequence;
  }

  if ([(NSArray *)fallbackSequence count]> index)
  {
    v12 = [(NSArray *)self->_fallbackSequence objectAtIndex:index];
    integerValue = [v12 integerValue];

    v14 = [(CLKTimeIntervalTextProvider *)self _attributedTextForSequenceItem:integerValue style:styleCopy];
    if ([styleCopy shouldEmbedTintColors])
    {
      tintColor = [(CLKTextProvider *)self tintColor];

      if (tintColor)
      {
        tintColor2 = [(CLKTextProvider *)self tintColor];
        v17 = [v14 _attributedStringWithForegroundColor:tintColor2];

        v14 = v17;
      }
    }

    v18 = [v14 _attributedStringWithOtherAttributesFromStyle:styleCopy];
  }

  else
  {
LABEL_13:
    v18 = 0;
  }

  return v18;
}

- (BOOL)_validate
{
  v9.receiver = self;
  v9.super_class = CLKTimeIntervalTextProvider;
  _validate = [(CLKTextProvider *)&v9 _validate];
  if (_validate)
  {
    startDate = self->_startDate;
    if (startDate)
    {
      if (self->_endDate)
      {
        v5 = [(NSDate *)startDate earlierDate:?];
        endDate = self->_endDate;

        if (v5 != endDate)
        {
          LOBYTE(_validate) = 1;
          return _validate;
        }

        v7 = CLKLoggingObjectForDomain(10);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [CLKTimeIntervalTextProvider _validate];
        }
      }

      else
      {
        v7 = CLKLoggingObjectForDomain(10);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          [CLKTimeIntervalTextProvider _validate];
        }
      }
    }

    else
    {
      v7 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [CLKTimeIntervalTextProvider _validate];
      }
    }

    LOBYTE(_validate) = 0;
  }

  return _validate;
}

- (_NSRange)_rangeOfDesignatorInAnnotatedTime:(id)time
{
  v3 = [(CLKTimeIntervalTextProvider *)self _rangeOfAnnontatedTime:time matchingPattern:&__block_literal_global_21];
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)_rangeOfHoursInAnnotatedTime:(id)time
{
  v3 = [(CLKTimeIntervalTextProvider *)self _rangeOfAnnontatedTime:time matchingPattern:&__block_literal_global_17_0];
  result.length = v4;
  result.location = v3;
  return result;
}

uint64_t __60__CLKTimeIntervalTextProvider__rangeOfHoursInAnnotatedTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasPrefix:@"H"] & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"h") & 1) != 0 || (objc_msgSend(v2, "hasPrefix:", @"K"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasPrefix:@"k"];
  }

  return v3;
}

- (_NSRange)_rangeOfAnnontatedTime:(id)time matchingPattern:(id)pattern
{
  timeCopy = time;
  patternCopy = pattern;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_2370AF046;
  v20 = xmmword_2370A4BA0;
  v7 = [timeCopy length];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__CLKTimeIntervalTextProvider__rangeOfAnnontatedTime_matchingPattern___block_invoke;
  v13[3] = &unk_278A1FDB0;
  v8 = patternCopy;
  v14 = v8;
  v15 = &v16;
  [timeCopy enumerateAttributesInRange:0 options:v7 usingBlock:{0, v13}];
  v9 = v17[4];
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);
  v11 = v9;
  v12 = v10;
  result.length = v12;
  result.location = v11;
  return result;
}

void __70__CLKTimeIntervalTextProvider__rangeOfAnnontatedTime_matchingPattern___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v10 = [a2 objectForKeyedSubscript:*MEMORY[0x277CBE628]];
  if ((*(*(a1 + 32) + 16))())
  {
    v9 = *(*(a1 + 40) + 8);
    *(v9 + 32) = a3;
    *(v9 + 40) = a4;
    *a5 = 1;
  }
}

- (id)_stringByRemovingDesignatorRange:(_NSRange)range fromString:(id)string
{
  v4 = [string stringByReplacingCharactersInRange:range.location withString:{range.length, &stru_284A20458}];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v6;
}

- (id)_fallbackSequence
{
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v4 = currentCalendar;
  if (self->_timeZone)
  {
    [currentCalendar setTimeZone:?];
  }

  v5 = [v4 components:16 fromDate:self->_startDate toDate:self->_endDate options:0];
  v6 = [v5 day];

  if (v6)
  {
    v7 = &unk_284A35188;
    goto LABEL_9;
  }

  v7 = [MEMORY[0x277CBEB18] arrayWithObject:&unk_284A34C50];
  v8 = [v4 component:64 fromDate:self->_startDate];
  if (v8 | [v4 component:64 fromDate:self->_endDate])
  {
    [v7 addObject:&unk_284A34C80];
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [v7 addObject:&unk_284A34C68];
    [v7 addObject:&unk_284A34C80];
  }

  [v7 addObject:&unk_284A34C98];
LABEL_9:

  return v7;
}

- (id)_attributedTextForSequenceItem:(int64_t)item style:(id)style
{
  styleCopy = style;
  v7 = 0;
  if (item > 2)
  {
    switch(item)
    {
      case 3:
        v8 = [(CLKTimeIntervalTextProvider *)self _startTimeDropMinutesAttributedTextWithStyle:styleCopy];
        break;
      case 4:
        v8 = [(CLKTimeIntervalTextProvider *)self _dateIntervalWideAttributedTextWithStyle:styleCopy];
        break;
      case 5:
        v8 = [(CLKTimeIntervalTextProvider *)self _dateIntervalNarrowAttributedTextWithStyle:styleCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (item)
  {
    if (item == 1)
    {
      v8 = [(CLKTimeIntervalTextProvider *)self _timeIntervalDropMinutesAttributedTextWithStyle:styleCopy];
    }

    else
    {
      if (item != 2)
      {
        goto LABEL_15;
      }

      v8 = [(CLKTimeIntervalTextProvider *)self _startTimeFullAttributedTextWithStyle:styleCopy];
    }
  }

  else
  {
    v8 = [(CLKTimeIntervalTextProvider *)self _timeIntervalFullAttributedTextWithStyle:styleCopy];
  }

  v7 = v8;
LABEL_15:

  return v7;
}

- (id)_timeIntervalAttributedTextWithStyle:(id)style dropMinutes:(BOOL)minutes onlyStartDate:(BOOL)date
{
  dateCopy = date;
  minutesCopy = minutes;
  v102[1] = *MEMORY[0x277D85DE8];
  styleCopy = style;
  font = [styleCopy font];
  cLKFontWithAlternativePunctuation = [font CLKFontWithAlternativePunctuation];

  fontFeatures = [(CLKTextProvider *)self fontFeatures];

  if (fontFeatures)
  {
    fontFeatures2 = [(CLKTextProvider *)self fontFeatures];
    v13 = [cLKFontWithAlternativePunctuation CLKFontByApplyingFeatureSettings:fontFeatures2];

    cLKFontWithAlternativePunctuation = v13;
  }

  v14 = MEMORY[0x277CCA968];
  if (minutesCopy)
  {
    v15 = &_CLKNoMinutesTimeFormatTemplate;
  }

  else
  {
    v15 = _CLKStandardTimeFormatTemplate;
  }

  v16 = *v15;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v18 = [v14 dateFormatFromTemplate:v16 options:0 locale:currentLocale];

  v88 = 0;
  v19 = [(CLKTextProvider *)self _timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:v18 designatorExists:&v88];

  [(NSDateFormatter *)self->_dateFormatter setDateFormat:v19];
  v20 = [(NSDateFormatter *)self->_dateFormatter _attributedStringWithFieldsFromDate:self->_startDate];
  string = [v20 string];

  if (string)
  {
    v23 = [(CLKTimeIntervalTextProvider *)self _rangeOfDesignatorInAnnotatedTime:v20];
    v24 = v22;
    v85 = v19;
    if (v23 == 0x7FFFFFFFFFFFFFFFLL)
    {
      string2 = 0;
    }

    else
    {
      v26 = [v20 attributedSubstringFromRange:{v23, v22}];
      string2 = [v26 string];
    }

    v83 = v24;
    if (dateCopy)
    {
      v81 = v23;
      v27 = 0;
      string4 = 0;
      v29 = 0;
      v80 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v29 = [(NSDateFormatter *)self->_dateFormatter _attributedStringWithFieldsFromDate:self->_endDate];
      string3 = [v29 string];

      if (!string3)
      {
        v33 = CLKLoggingObjectForDomain(4);
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v25 = 0;
          v19 = v85;
          v34 = v33;
LABEL_49:

          goto LABEL_50;
        }

        v34 = v33;
        [CLKTimeIntervalTextProvider _timeIntervalAttributedTextWithStyle:v33 dropMinutes:? onlyStartDate:?];
        v25 = 0;
LABEL_48:
        v19 = v85;
        goto LABEL_49;
      }

      v81 = v23;
      v31 = [(CLKTimeIntervalTextProvider *)self _rangeOfDesignatorInAnnotatedTime:v29];
      v27 = v32;
      if (v31 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v80 = 0x7FFFFFFFFFFFFFFFLL;
        string4 = 0;
      }

      else
      {
        v35 = v31;
        [v29 attributedSubstringFromRange:{v31, v32}];
        v37 = v36 = styleCopy;
        string4 = [v37 string];

        styleCopy = v36;
        v80 = v35;
      }
    }

    v86 = CLKLocalizedString(@"INTERVAL_HYPHEN_NARROW");
    v84 = string4;
    if (!(string2 | string4))
    {
      if (dateCopy)
      {
        string5 = [v20 string];
      }

      else
      {
        v50 = MEMORY[0x277CCACA8];
        string6 = [v20 string];
        string7 = [v29 string];
        string5 = [v50 stringWithFormat:@"%@%@%@", string6, v86, string7];
      }

      v53 = objc_alloc(MEMORY[0x277CCA898]);
      v101 = *MEMORY[0x277D740A8];
      v102[0] = cLKFontWithAlternativePunctuation;
      v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:&v101 count:1];
      v25 = [v53 initWithString:string5 attributes:v54];
      v34 = v84;
      goto LABEL_47;
    }

    v79 = v29;
    v39 = *MEMORY[0x277D740A8];
    v99 = *MEMORY[0x277D740A8];
    v100 = cLKFontWithAlternativePunctuation;
    v82 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    smallCapsBaseFont = [styleCopy smallCapsBaseFont];
    fontFeatures3 = [(CLKTextProvider *)self fontFeatures];

    if (fontFeatures3)
    {
      fontFeatures4 = [(CLKTextProvider *)self fontFeatures];
      [smallCapsBaseFont CLKFontByApplyingFeatureSettings:fontFeatures4];
      v44 = v43 = styleCopy;

      smallCapsBaseFont = v44;
      styleCopy = v43;
    }

    v77 = smallCapsBaseFont;
    v78 = styleCopy;
    if (CLKUsesFauxSmallCaps())
    {
      smallCapsBaseFont2 = [styleCopy smallCapsBaseFont];
      font2 = [styleCopy font];
      v47 = [smallCapsBaseFont2 isEqual:font2];

      if (v47)
      {
        [cLKFontWithAlternativePunctuation pointSize];
        v49 = [cLKFontWithAlternativePunctuation fontWithSize:v48 + -2.5];
      }

      else
      {
        v49 = smallCapsBaseFont;
      }

      cLKFontWithLocalizedSmallCaps = v49;
      v98[0] = v49;
      v56 = *MEMORY[0x277CC4830];
      v97[0] = v39;
      v97[1] = v56;
      v95 = *MEMORY[0x277CC4828];
      v96 = v49;
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
      v98[1] = v57;
      v58 = MEMORY[0x277CBEAC0];
      v59 = v98;
      v60 = v97;
    }

    else
    {
      if ((CTFontGetSymbolicTraits(cLKFontWithAlternativePunctuation) & 1) == 0)
      {
        v89 = v39;
        cLKFontWithLocalizedSmallCaps = [smallCapsBaseFont CLKFontWithLocalizedSmallCaps];
        v90 = cLKFontWithLocalizedSmallCaps;
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        goto LABEL_37;
      }

      [cLKFontWithAlternativePunctuation pointSize];
      cLKFontWithLocalizedSmallCaps = [cLKFontWithAlternativePunctuation fontWithSize:v61 * 0.75];
      v94[0] = cLKFontWithLocalizedSmallCaps;
      v62 = *MEMORY[0x277CC4830];
      v93[0] = v39;
      v93[1] = v62;
      v91 = *MEMORY[0x277CC4828];
      v92 = cLKFontWithLocalizedSmallCaps;
      v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
      v94[1] = v57;
      v58 = MEMORY[0x277CBEAC0];
      v59 = v94;
      v60 = v93;
    }

    v54 = [v58 dictionaryWithObjects:v59 forKeys:v60 count:2];

LABEL_37:
    v63 = objc_alloc(MEMORY[0x277CCAB48]);
    string8 = [v20 string];
    v65 = [v63 initWithString:string8 attributes:v82];

    [v65 addAttributes:v54 range:{v81, v83}];
    if (dateCopy)
    {
      v25 = v65;
      v65 = v25;
      v29 = v79;
      v34 = v84;
LABEL_46:

      styleCopy = v78;
      string5 = v82;
LABEL_47:

      goto LABEL_48;
    }

    v66 = objc_alloc(MEMORY[0x277CCAB48]);
    string9 = [v79 string];
    v68 = [v66 initWithString:string9 attributes:v82];

    [v68 addAttributes:v54 range:{v80, v27}];
    v76 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v86 attributes:v82];
    v34 = v84;
    if (v84 && [string2 isEqualToString:v84])
    {
      v29 = v79;
      if (CLKDropLeftRedundantDesignator())
      {
        if (v81 != 0x7FFFFFFFFFFFFFFFLL)
        {
          string10 = [v20 string];
          v70 = [(CLKTimeIntervalTextProvider *)self _stringByRemovingDesignatorRange:v81 fromString:v83, string10];

          v71 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v70 attributes:v82];
          v72 = v65;
          v65 = v71;
LABEL_55:

          v34 = v84;
        }
      }

      else if (v80 != 0x7FFFFFFFFFFFFFFFLL)
      {
        string11 = [v79 string];
        v70 = [(CLKTimeIntervalTextProvider *)self _stringByRemovingDesignatorRange:v80 fromString:v27, string11];

        v75 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v70 attributes:v82];
        v72 = v68;
        v68 = v75;
        goto LABEL_55;
      }
    }

    else
    {
      v29 = v79;
    }

    v25 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v65];
    [v25 appendAttributedString:v76];
    [v25 appendAttributedString:v68];

    goto LABEL_46;
  }

  string2 = CLKLoggingObjectForDomain(4);
  if (os_log_type_enabled(string2, OS_LOG_TYPE_ERROR))
  {
    [CLKTimeIntervalTextProvider _timeIntervalAttributedTextWithStyle:string2 dropMinutes:? onlyStartDate:?];
  }

  v25 = 0;
LABEL_50:

  return v25;
}

- (id)_dateIntervalAttributedTextWithStyle:(id)style narrow:(BOOL)narrow
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (narrow)
  {
    v5 = @"M/d";
  }

  else
  {
    v5 = @"MMM d";
  }

  dateFormatter = self->_dateFormatter;
  styleCopy = style;
  [(NSDateFormatter *)dateFormatter setLocalizedDateFormatFromTemplate:v5];
  v8 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:self->_startDate];
  v9 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:self->_endDate];
  font = [styleCopy font];

  fontFeatures = [(CLKTextProvider *)self fontFeatures];

  if (fontFeatures)
  {
    fontFeatures2 = [(CLKTextProvider *)self fontFeatures];
    v13 = [font CLKFontByApplyingFeatureSettings:fontFeatures2];

    font = v13;
  }

  v14 = MEMORY[0x277CCACA8];
  v15 = CLKLocalizedString(@"INTERVAL_HYPHEN_WIDE");
  v16 = [v14 stringWithFormat:@"%@%@%@", v8, v15, v9];

  v17 = objc_alloc(MEMORY[0x277CCA898]);
  v21 = *MEMORY[0x277D740A8];
  v22[0] = font;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v19 = [v17 initWithString:v16 attributes:v18];

  return v19;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CLKTimeIntervalTextProvider;
  v2 = [(CLKTextProvider *)&v4 description];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CLKTimeIntervalTextProvider;
  v4 = [(CLKTextProvider *)&v7 copyWithZone:zone];
  p_isa = &v4->super.super.isa;
  if (v4 != self)
  {
    objc_storeStrong(&v4->_startDate, self->_startDate);
    objc_storeStrong(p_isa + 19, self->_endDate);
    objc_storeStrong(p_isa + 20, self->_timeZone);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = CLKTimeIntervalTextProvider;
  if ([(CLKTextProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_startDate, equalCopy[18]) && CLKEqualObjects(self->_endDate, equalCopy[19]))
  {
    v5 = CLKEqualObjects(self->_timeZone, equalCopy[20]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = CLKTimeIntervalTextProvider;
  v3 = [(CLKTextProvider *)&v7 hash];
  v4 = &v3[[(NSDate *)self->_startDate hash]];
  v5 = &v4[4 * [(NSDate *)self->_endDate hash]];
  return &v5[16 * [(NSTimeZone *)self->_timeZone hash]];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKTimeIntervalTextProvider;
  coderCopy = coder;
  [(CLKTextProvider *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_startDate forKey:{@"_startDate", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_endDate forKey:@"_endDate"];
  [coderCopy encodeObject:self->_timeZone forKey:@"_timeZone"];
}

- (CLKTimeIntervalTextProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CLKTimeIntervalTextProvider;
  v5 = [(CLKTextProvider *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v10;
  }

  return v5;
}

- (id)_initWithJSONObjectRepresentation:(id)representation
{
  representationCopy = representation;
  v16.receiver = self;
  v16.super_class = CLKTimeIntervalTextProvider;
  v5 = [(CLKTextProvider *)&v16 _initWithJSONObjectRepresentation:representationCopy];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"startDate"];
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v6];
    v8 = v5[18];
    v5[18] = v7;

    v9 = [representationCopy objectForKeyedSubscript:@"endDate"];
    v10 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v9];
    v11 = v5[19];
    v5[19] = v10;

    v12 = [representationCopy objectForKeyedSubscript:@"timeZone"];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithJSONObjectRepresentation:v12];
      v14 = v5[20];
      v5[20] = v13;
    }
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v8.receiver = self;
  v8.super_class = CLKTimeIntervalTextProvider;
  jSONObjectRepresentation = [(CLKTextProvider *)&v8 JSONObjectRepresentation];
  jSONObjectRepresentation2 = [(NSDate *)self->_startDate JSONObjectRepresentation];
  [jSONObjectRepresentation setObject:jSONObjectRepresentation2 forKeyedSubscript:@"startDate"];

  jSONObjectRepresentation3 = [(NSDate *)self->_endDate JSONObjectRepresentation];
  [jSONObjectRepresentation setObject:jSONObjectRepresentation3 forKeyedSubscript:@"endDate"];

  jSONObjectRepresentation4 = [(NSTimeZone *)self->_timeZone JSONObjectRepresentation];
  [jSONObjectRepresentation setObject:jSONObjectRepresentation4 forKeyedSubscript:@"timeZone"];

  return jSONObjectRepresentation;
}

- (void)_validate
{
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_0_1(v1);
  OUTLINED_FUNCTION_1_0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_timeIntervalAttributedTextWithStyle:(uint64_t *)a1 dropMinutes:(NSObject *)a2 onlyStartDate:.cold.1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "CLKTimeIntervalTextProvider unexpected nil annotated end string (endDate = %@)", &v3, 0xCu);
}

- (void)_timeIntervalAttributedTextWithStyle:(uint64_t *)a1 dropMinutes:(NSObject *)a2 onlyStartDate:.cold.2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_23702D000, a2, OS_LOG_TYPE_ERROR, "CLKTimeIntervalTextProvider unexpected nil annotated start string (startDate = %@)", &v3, 0xCu);
}

@end