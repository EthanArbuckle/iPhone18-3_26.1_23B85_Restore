@interface CLKDateTextProvider
+ (CLKDateTextProvider)textProviderWithDate:(NSDate *)date units:(NSCalendarUnit)calendarUnits timeZone:(NSTimeZone *)timeZone;
- (BOOL)_validate;
- (BOOL)isEqual:(id)a3;
- (CLKDateTextProvider)initWithCoder:(id)a3;
- (CLKDateTextProvider)initWithDate:(NSDate *)date units:(NSCalendarUnit)calendarUnits timeZone:(NSTimeZone *)timeZone;
- (id)JSONObjectRepresentation;
- (id)_completeDateTemplateSeries;
- (id)_initWithJSONObjectRepresentation:(id)a3;
- (id)_partialDateTemplateSeriesForUnits:(unint64_t)a3;
- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKDateTextProvider

- (CLKDateTextProvider)initWithDate:(NSDate *)date units:(NSCalendarUnit)calendarUnits timeZone:(NSTimeZone *)timeZone
{
  v8 = date;
  v9 = timeZone;
  v13.receiver = self;
  v13.super_class = CLKDateTextProvider;
  v10 = [(CLKTextProvider *)&v13 initPrivate];
  v11 = v10;
  if (v10)
  {
    [(CLKDateTextProvider *)v10 setDate:v8];
    [(CLKDateTextProvider *)v11 setCalendarUnits:calendarUnits];
    [(CLKDateTextProvider *)v11 setTimeZone:v9];
    [(CLKDateTextProvider *)v11 setFormattingContext:2];
  }

  return v11;
}

+ (CLKDateTextProvider)textProviderWithDate:(NSDate *)date units:(NSCalendarUnit)calendarUnits timeZone:(NSTimeZone *)timeZone
{
  v8 = timeZone;
  v9 = date;
  v10 = [[a1 alloc] initWithDate:v9 units:calendarUnits timeZone:v8];

  return v10;
}

- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4
{
  v6 = a4;
  if (!self->_date)
  {
    goto LABEL_14;
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

    if ([(NSString *)self->_alternateCalendarLocaleID length])
    {
      v9 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:self->_alternateCalendarLocaleID];
      [(NSDateFormatter *)self->_dateFormatter setLocale:v9];

      [(NSDateFormatter *)self->_dateFormatter setDateStyle:2];
    }

    [(NSDateFormatter *)self->_dateFormatter setFormattingContext:self->_formattingContext];
  }

  templateSeries = self->_templateSeries;
  if (!templateSeries)
  {
    v11 = [(CLKDateTextProvider *)self _completeDateTemplateSeries];
    v12 = self->_templateSeries;
    self->_templateSeries = v11;

    templateSeries = self->_templateSeries;
  }

  if ([(NSArray *)templateSeries count]<= a3)
  {
LABEL_14:
    v14 = 0;
    goto LABEL_38;
  }

  v13 = [(NSArray *)self->_templateSeries objectAtIndex:a3];
  if (![v13 isEqualToString:@"d"])
  {
    if (!_isWeekdayDayTemplate(v13))
    {
      goto LABEL_18;
    }

    v15 = [MEMORY[0x277CBEAF8] currentLocale];
    v16 = [v15 objectForKey:*MEMORY[0x277CBE6C8]];

    LODWORD(v15) = [v16 isEqualToString:@"en"];
    if (!v15)
    {
      goto LABEL_18;
    }

LABEL_17:
    [(NSDateFormatter *)self->_dateFormatter setDateFormat:v13];
    goto LABEL_19;
  }

  if (CLKIsCurrentLocaleCJK())
  {
    goto LABEL_17;
  }

LABEL_18:
  [(NSDateFormatter *)self->_dateFormatter setLocalizedDateFormatFromTemplate:v13];
LABEL_19:
  v17 = [(NSDateFormatter *)self->_dateFormatter stringFromDate:self->_date];
  v18 = v13;
  v19 = [@"MMMMM" stringByAppendingString:@"d"];
  v20 = [v18 isEqualToString:v19];

  if (v20 && (CLKIsCurrentLocaleCJK() & 1) != 0)
  {
    v21 = 1;
  }

  else
  {
    v22 = v17;
    v17 = v22;
    if (_isWeekdayDayTemplate(v18))
    {
      v17 = v22;
      if (CLKRemovesPunctuationFromWeekdayDay())
      {
        if (!_removePunctationIfNecessaryFromTextForTemplate_punctuationExceptDash)
        {
          v23 = [MEMORY[0x277CCAB50] punctuationCharacterSet];
          [v23 removeCharactersInString:@"-"];
          v24 = _removePunctationIfNecessaryFromTextForTemplate_punctuationExceptDash;
          _removePunctationIfNecessaryFromTextForTemplate_punctuationExceptDash = v23;
        }

        v25 = [v22 componentsSeparatedByCharactersInSet:?];
        v17 = [v25 componentsJoinedByString:&stru_284A20458];
      }
    }

    v21 = 0;
  }

  if (([v6 uppercase] & 1) != 0 || self->_uppercase)
  {
    v26 = [MEMORY[0x277CBEAF8] currentLocale];
    v27 = [v17 uppercaseStringWithLocale:v26];

    v17 = v27;
  }

  v28 = objc_opt_new();
  v29 = [v6 font];
  v30 = *MEMORY[0x277D740A8];
  [v28 setObject:v29 forKeyedSubscript:*MEMORY[0x277D740A8]];

  v31 = [v6 otherAttributes];
  [v28 addEntriesFromDictionary:v31];

  if ([v6 shouldEmbedTintColors])
  {
    v32 = [(CLKTextProvider *)self tintColor];

    if (v32)
    {
      v33 = [(CLKTextProvider *)self tintColor];
      [v28 setObject:v33 forKeyedSubscript:*MEMORY[0x277D740C0]];
    }
  }

  if (v21)
  {
    v46 = [v28 objectForKeyedSubscript:v30];
    v34 = [v28 mutableCopy];
    [v46 pointSize];
    v36 = [v46 fontWithSize:v35 + -2.0];
    [v34 setObject:v36 forKeyedSubscript:v30];

    v37 = [(NSDateFormatter *)self->_dateFormatter _attributedStringWithFieldsFromDate:self->_date];
    v38 = objc_alloc(MEMORY[0x277CCAB48]);
    v39 = [v37 string];
    v40 = [v38 initWithString:v39];

    v41 = [v37 length];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __64__CLKDateTextProvider__sessionAttributedTextForIndex_withStyle___block_invoke;
    v47[3] = &unk_278A1E778;
    v42 = v40;
    v48 = v42;
    v49 = v34;
    v50 = v28;
    v43 = v34;
    [v37 enumerateAttributesInRange:0 options:v41 usingBlock:{0, v47}];
    v44 = v50;
    v14 = v42;
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v17 attributes:v28];
  }

LABEL_38:

  return v14;
}

uint64_t __64__CLKDateTextProvider__sessionAttributedTextForIndex_withStyle___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 count];
  v8 = 48;
  if (!v7)
  {
    v8 = 40;
  }

  v9 = *(a1 + v8);
  v10 = *(a1 + 32);

  return [v10 setAttributes:v9 range:{a3, a4}];
}

- (BOOL)_validate
{
  v6.receiver = self;
  v6.super_class = CLKDateTextProvider;
  v3 = [(CLKTextProvider *)&v6 _validate];
  if (v3)
  {
    if (self->_date)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v4 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [(CLKTimeTextProvider *)self _validate];
      }

      LOBYTE(v3) = 0;
    }
  }

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CLKDateTextProvider;
  v2 = [(CLKTextProvider *)&v4 description];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CLKDateTextProvider;
  v4 = [(CLKTextProvider *)&v7 copyWithZone:a3];
  v5 = v4;
  if (v4 != self)
  {
    objc_storeStrong(&v4->_date, self->_date);
    v5->_calendarUnits = self->_calendarUnits;
    objc_storeStrong(&v5->_timeZone, self->_timeZone);
    v5->_shortUnits = self->_shortUnits;
    v5->_allowsNarrowUnits = self->_allowsNarrowUnits;
    v5->_narrowStandaloneWeekdayDay = self->_narrowStandaloneWeekdayDay;
    objc_storeStrong(&v5->_alternateCalendarLocaleID, self->_alternateCalendarLocaleID);
    v5->_formattingContext = self->_formattingContext;
    v5->_uppercase = self->_uppercase;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CLKDateTextProvider;
  v5 = [(CLKTextProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_date, v4[19]) && CLKEqualObjects(self->_timeZone, v4[21]) && self->_calendarUnits == v4[20] && self->_shortUnits == *(v4 + 145) && self->_allowsNarrowUnits == *(v4 + 146) && self->_narrowStandaloneWeekdayDay == *(v4 + 147) && CLKEqualObjects(self->_alternateCalendarLocaleID, v4[22]) && self->_formattingContext == v4[23];

  return v5;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = CLKDateTextProvider;
  v3 = [(CLKTextProvider *)&v7 hash];
  v4 = &v3[[(NSDate *)self->_date hash]];
  v5 = &v4[0x10000 * self->_allowsNarrowUnits + 256 * self->_shortUnits + 16 * self->_calendarUnits + 4 * [(NSTimeZone *)self->_timeZone hash]];
  return v5 + [(NSString *)self->_alternateCalendarLocaleID hash]+ (self->_formattingContext << 17) + (self->_narrowStandaloneWeekdayDay << 18);
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKDateTextProvider;
  v4 = a3;
  [(CLKTextProvider *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_date forKey:{@"_date", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_calendarUnits forKey:@"_calendarUnits"];
  [v4 encodeObject:self->_timeZone forKey:@"_timeZone"];
  [v4 encodeBool:self->_shortUnits forKey:@"_shortUnits"];
  [v4 encodeBool:self->_allowsNarrowUnits forKey:@"_allowsNarrowUnits"];
  [v4 encodeBool:self->_narrowStandaloneWeekdayDay forKey:@"_narrowStandaloneWeekdayDay"];
  [v4 encodeObject:self->_alternateCalendarLocaleID forKey:@"_alternateCalendarLocaleID"];
  [v4 encodeInteger:self->_formattingContext forKey:@"_formattingContext"];
  [v4 encodeInteger:self->_formattingContext forKey:@"_formattingContext"];
  [v4 encodeBool:self->_uppercase forKey:@"_uppercase"];
}

- (CLKDateTextProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CLKDateTextProvider;
  v5 = [(CLKTextProvider *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v5->_calendarUnits = [v4 decodeIntegerForKey:@"_calendarUnits"];
    v5->_shortUnits = [v4 decodeBoolForKey:@"_shortUnits"];
    v5->_allowsNarrowUnits = [v4 decodeBoolForKey:@"_allowsNarrowUnits"];
    v5->_narrowStandaloneWeekdayDay = [v4 decodeBoolForKey:@"_narrowStandaloneWeekdayDay"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_alternateCalendarLocaleID"];
    alternateCalendarLocaleID = v5->_alternateCalendarLocaleID;
    v5->_alternateCalendarLocaleID = v10;

    v5->_formattingContext = [v4 decodeIntegerForKey:@"_formattingContext"];
    v5->_uppercase = [v4 decodeBoolForKey:@"_uppercase"];
  }

  return v5;
}

- (id)_initWithJSONObjectRepresentation:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CLKDateTextProvider;
  v5 = [(CLKTextProvider *)&v15 _initWithJSONObjectRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"date"];
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v6];
    v8 = v5[19];
    v5[19] = v7;

    v9 = [v4 objectForKeyedSubscript:@"calendarUnits"];
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5[20] = [v9 intValue];
      }
    }

    v10 = [v4 objectForKeyedSubscript:@"timeZone"];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithJSONObjectRepresentation:v10];
      v12 = v5[21];
      v5[21] = v11;
    }

    v13 = [v4 objectForKeyedSubscript:@"_uppercase"];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"_uppercase", v13}];
      }

      *(v5 + 144) = [v13 BOOLValue];
    }
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v9.receiver = self;
  v9.super_class = CLKDateTextProvider;
  v3 = [(CLKTextProvider *)&v9 JSONObjectRepresentation];
  v4 = [(NSDate *)self->_date JSONObjectRepresentation];
  [v3 setObject:v4 forKeyedSubscript:@"date"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_calendarUnits];
  [v3 setObject:v5 forKeyedSubscript:@"calendarUnits"];

  v6 = [(NSTimeZone *)self->_timeZone JSONObjectRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"timeZone"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_uppercase];
  [v3 setObject:v7 forKeyedSubscript:@"_uppercase"];

  return v3;
}

- (id)_completeDateTemplateSeries
{
  calendarUnits = self->_calendarUnits;
  v4 = [MEMORY[0x277CBEB18] array];
  if ((calendarUnits & 0x21C) != 0)
  {
    v5 = calendarUnits & 0x21C;
  }

  else
  {
    v5 = 16;
  }

  do
  {
    v6 = [(CLKDateTextProvider *)self _partialDateTemplateSeriesForUnits:v5];
    [v4 addObjectsFromArray:v6];

    v7 = v5 & 0xFFFFFFFFFFFFFDE3;
    if ((v5 & 0x10) == 0)
    {
      v7 = v5;
    }

    if ((v5 & 8) != 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFDF3;
    }

    if ((v5 & 0x200) != 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFDFBLL;
    }

    if ((v5 & 4) != 0)
    {
      v5 &= ~4uLL;
    }

    else
    {
      v5 = v7;
    }
  }

  while (v5);

  return v4;
}

- (id)_partialDateTemplateSeriesForUnits:(unint64_t)a3
{
  v28[3] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  v6 = v5;
  if (a3 == 528)
  {
    if (self->_narrowStandaloneWeekdayDay)
    {
      v7 = @"ccccc d";
    }

    else
    {
      if (!self->_shortUnits)
      {
        [v5 addObject:@"EEEE d"];
      }

      v7 = @"EEE d";
    }

    [v6 addObject:v7];
    goto LABEL_41;
  }

  if ((~a3 & 0x208) == 0)
  {
    if (!self->_shortUnits)
    {
      v28[0] = @"MMMMEEEE";
      v28[1] = @"MMMMEEE";
      v28[2] = @"MMMEEEE";
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:3];
      [v6 addObjectsFromArray:v8];
    }

    [v6 addObject:@"MMMEEE"];
    if (self->_allowsNarrowUnits)
    {
      v27[0] = @"MMMEEEEEE";
      v27[1] = @"MMMMMEEE";
      v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
      [v6 addObjectsFromArray:v9];
    }

    goto LABEL_25;
  }

  if ((a3 & 8) != 0)
  {
    if (!self->_shortUnits)
    {
      [v5 addObject:@"MMMM"];
    }

    [v6 addObject:@"MMM"];
    if (self->_allowsNarrowUnits)
    {
      v10 = @"MMMMM";
      goto LABEL_24;
    }
  }

  else
  {
    if ((a3 & 0x200) == 0)
    {
      v10 = &stru_284A20458;
LABEL_24:
      [v6 addObject:v10];
      goto LABEL_25;
    }

    if (!self->_shortUnits)
    {
      [v5 addObject:@"EEEE"];
    }

    [v6 addObject:@"EEE"];
    if (self->_allowsNarrowUnits)
    {
      v10 = @"EEEEEE";
      goto LABEL_24;
    }
  }

LABEL_25:
  if ((a3 & 0x10) == 0)
  {
    v11 = &stru_284A20458;
    if ((a3 & 4) == 0)
    {
      goto LABEL_33;
    }

LABEL_29:
    if (self->_alternateCalendarLocaleID)
    {
      v12 = @"U";
    }

    else
    {
      v12 = @"y";
    }

    v13 = [(__CFString *)v11 stringByAppendingString:v12];

    v11 = v13;
    goto LABEL_33;
  }

  v11 = [&stru_284A20458 stringByAppendingString:@"d"];
  if ((a3 & 4) != 0)
  {
    goto LABEL_29;
  }

LABEL_33:
  v14 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v22 + 1) + 8 * i) stringByAppendingString:{v11, v22}];
        [v14 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v17);
  }

  v6 = v14;
LABEL_41:

  return v6;
}

@end