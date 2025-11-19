@interface CLKTimeTextProvider
+ (CLKTimeTextProvider)textProviderWithDate:(NSDate *)date timeZone:(NSTimeZone *)timeZone;
- (BOOL)_validate;
- (BOOL)isEqual:(id)a3;
- (CLKTimeTextProvider)initWithCoder:(id)a3;
- (CLKTimeTextProvider)initWithDate:(NSDate *)date timeZone:(NSTimeZone *)timeZone;
- (id)JSONObjectRepresentation;
- (id)_initWithJSONObjectRepresentation:(id)a3;
- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4;
- (id)_timeAttributedTextWithStyle:(id)a3 dropMinutes:(BOOL)a4 dropDesignator:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)_validate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKTimeTextProvider

- (CLKTimeTextProvider)initWithDate:(NSDate *)date timeZone:(NSTimeZone *)timeZone
{
  v6 = date;
  v7 = timeZone;
  v11.receiver = self;
  v11.super_class = CLKTimeTextProvider;
  v8 = [(CLKTextProvider *)&v11 initPrivate];
  v9 = v8;
  if (v8)
  {
    [(CLKTimeTextProvider *)v8 setDate:v6];
    [(CLKTimeTextProvider *)v9 setTimeZone:v7];
  }

  return v9;
}

+ (CLKTimeTextProvider)textProviderWithDate:(NSDate *)date timeZone:(NSTimeZone *)timeZone
{
  v6 = timeZone;
  v7 = date;
  v8 = [[a1 alloc] initWithDate:v7 timeZone:v6];

  return v8;
}

- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4
{
  v6 = a4;
  v7 = [(CLKTimeTextProvider *)self date];

  if (v7)
  {
    if (CLKCurrentLocaleIs24HourMode())
    {
      v8 = 0;
    }

    else
    {
      v10 = [MEMORY[0x277CBEA80] currentCalendar];
      v11 = [(CLKTimeTextProvider *)self date];
      v12 = [v10 components:64 fromDate:v11];
      v8 = [v12 minute] == 0;
    }

    sizingFallbackBlocks = self->_sizingFallbackBlocks;
    if (!sizingFallbackBlocks)
    {
      v14 = [MEMORY[0x277CBEB18] array];
      v15 = self->_sizingFallbackBlocks;
      self->_sizingFallbackBlocks = v14;

      objc_initWeak(&location, self);
      if (!self->_disallowBothMinutesAndDesignator)
      {
        v16 = self->_sizingFallbackBlocks;
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __64__CLKTimeTextProvider__sessionAttributedTextForIndex_withStyle___block_invoke;
        v40[3] = &unk_278A1E750;
        objc_copyWeak(&v41, &location);
        v17 = MEMORY[0x2383C4AF0](v40);
        [(NSMutableArray *)v16 addObject:v17];

        objc_destroyWeak(&v41);
      }

      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __64__CLKTimeTextProvider__sessionAttributedTextForIndex_withStyle___block_invoke_2;
      v38[3] = &unk_278A1E750;
      objc_copyWeak(&v39, &location);
      v18 = [v38 copy];
      v19 = self->_sizingFallbackBlocks;
      v20 = MEMORY[0x2383C4AF0]();
      [(NSMutableArray *)v19 addObject:v20];

      if (v8)
      {
        v33 = MEMORY[0x277D85DD0];
        v34 = 3221225472;
        v35 = __64__CLKTimeTextProvider__sessionAttributedTextForIndex_withStyle___block_invoke_3;
        v36 = &unk_278A1E750;
        objc_copyWeak(&v37, &location);
        v21 = MEMORY[0x2383C4AF0](&v33);
        v22 = v21;
        v23 = self->_sizingFallbackBlocks;
        if (self->_prefersDesignatorToMinutes)
        {
          v24 = MEMORY[0x2383C4AF0](v18);
          v25 = [(NSMutableArray *)v23 indexOfObject:v24, v33, v34, v35, v36];

          v26 = self->_sizingFallbackBlocks;
          v27 = MEMORY[0x2383C4AF0](v22);
          [(NSMutableArray *)v26 insertObject:v27 atIndex:v25];
        }

        else
        {
          v27 = MEMORY[0x2383C4AF0](v21);
          [(NSMutableArray *)v23 addObject:v27, v33, v34, v35, v36];
        }

        objc_destroyWeak(&v37);
      }

      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
      sizingFallbackBlocks = self->_sizingFallbackBlocks;
    }

    if ([(NSMutableArray *)sizingFallbackBlocks count]<= a3)
    {
      v9 = 0;
    }

    else
    {
      v28 = [(NSMutableArray *)self->_sizingFallbackBlocks objectAtIndexedSubscript:a3];
      v9 = (v28)[2](v28, v6);
    }

    if ([v6 shouldEmbedTintColors])
    {
      v29 = [(CLKTextProvider *)self tintColor];

      if (v29)
      {
        v30 = [(CLKTextProvider *)self tintColor];
        v31 = [v9 _attributedStringWithForegroundColor:v30];

        v9 = v31;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __64__CLKTimeTextProvider__sessionAttributedTextForIndex_withStyle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _timeAttributedTextWithStyle:v3 dropMinutes:0 dropDesignator:0];

  return v5;
}

id __64__CLKTimeTextProvider__sessionAttributedTextForIndex_withStyle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _timeAttributedTextWithStyle:v3 dropMinutes:0 dropDesignator:1];

  return v5;
}

id __64__CLKTimeTextProvider__sessionAttributedTextForIndex_withStyle___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _timeAttributedTextWithStyle:v3 dropMinutes:1 dropDesignator:0];

  return v5;
}

- (id)_timeAttributedTextWithStyle:(id)a3 dropMinutes:(BOOL)a4 dropDesignator:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v40[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (!self->_dateFormatter)
  {
    v9 = objc_opt_new();
    dateFormatter = self->_dateFormatter;
    self->_dateFormatter = v9;

    if (self->_timeZone)
    {
      [(NSDateFormatter *)self->_dateFormatter setTimeZone:?];
    }
  }

  v11 = &_CLKNoMinutesTimeFormatTemplate;
  if (!v6)
  {
    v11 = _CLKStandardTimeFormatTemplate;
  }

  v12 = *v11;
  v13 = MEMORY[0x277CCA968];
  v14 = [MEMORY[0x277CBEAF8] currentLocale];
  v15 = [v13 dateFormatFromTemplate:v12 options:0 locale:v14];

  v38 = 0;
  v16 = [(CLKTextProvider *)self _timeFormatByRemovingWhitespaceAroundDesignatorOfTimeFormat:v15 andRemovingDesignator:v5 designatorExists:&v38];

  [(NSDateFormatter *)self->_dateFormatter setDateFormat:v16];
  v17 = [v8 font];
  v18 = [(CLKTextProvider *)self fontFeatures];

  if (v18)
  {
    v19 = [(CLKTextProvider *)self fontFeatures];
    v20 = [v17 CLKFontByApplyingFeatureSettings:v19];

    v17 = v20;
  }

  v39 = *MEMORY[0x277D740A8];
  v40[0] = v17;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v22 = self->_dateFormatter;
  v23 = [(CLKTimeTextProvider *)self date];
  v24 = [(NSDateFormatter *)v22 _attributedStringWithFieldsFromDate:v23];

  v25 = objc_alloc(MEMORY[0x277CCAB48]);
  v26 = [v24 string];
  v27 = [v25 initWithString:v26 attributes:v21];

  if (v38 != 1 || v5)
  {
    v31 = v27;
  }

  else
  {
    v28 = [v24 length];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __79__CLKTimeTextProvider__timeAttributedTextWithStyle_dropMinutes_dropDesignator___block_invoke;
    v34[3] = &unk_278A1E778;
    v35 = v8;
    v36 = self;
    v29 = v27;
    v37 = v29;
    [v24 enumerateAttributesInRange:0 options:v28 usingBlock:{0, v34}];
    v30 = v29;
  }

  v32 = [v27 _attributedStringWithOtherAttributesFromStyle:v8];

  return v32;
}

void __79__CLKTimeTextProvider__timeAttributedTextWithStyle_dropMinutes_dropDesignator___block_invoke(id *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = [a2 objectForKeyedSubscript:*MEMORY[0x277CBE628]];
  if ([v13 hasPrefix:@"a"])
  {
    v7 = [a1[4] smallCapsBaseFont];
    v8 = [a1[5] fontFeatures];

    if (v8)
    {
      v9 = [a1[5] fontFeatures];
      v10 = [v7 CLKFontByApplyingFeatureSettings:v9];

      v7 = v10;
    }

    if (CTFontGetSymbolicTraits(v7))
    {
      [v7 pointSize];
      [v7 fontWithSize:v11 * 0.75];
    }

    else
    {
      [v7 CLKFontWithLocalizedSmallCaps];
    }
    v12 = ;

    [a1[6] addAttribute:*MEMORY[0x277D740A8] value:v12 range:{a3, a4}];
  }
}

- (BOOL)_validate
{
  v7.receiver = self;
  v7.super_class = CLKTimeTextProvider;
  v3 = [(CLKTextProvider *)&v7 _validate];
  if (v3)
  {
    v4 = [(CLKTimeTextProvider *)self date];

    if (v4)
    {
      LOBYTE(v3) = 1;
    }

    else
    {
      v5 = CLKLoggingObjectForDomain(10);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
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
  v4.super_class = CLKTimeTextProvider;
  v2 = [(CLKTextProvider *)&v4 description];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CLKTimeTextProvider;
  v4 = [(CLKTextProvider *)&v8 copyWithZone:a3];
  if (v4 != self)
  {
    v5 = [(CLKTimeTextProvider *)self date];
    date = v4->_date;
    v4->_date = v5;

    objc_storeStrong(&v4->_timeZone, self->_timeZone);
    v4->_disallowBothMinutesAndDesignator = self->_disallowBothMinutesAndDesignator;
    v4->_prefersDesignatorToMinutes = self->_prefersDesignatorToMinutes;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CLKTimeTextProvider;
  if ([(CLKTextProvider *)&v8 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(CLKTimeTextProvider *)self date];
    v6 = CLKEqualObjects(v5, v4[19]) && CLKEqualObjects(self->_timeZone, v4[20]) && self->_prefersDesignatorToMinutes == *(v4 + 145) && self->_disallowBothMinutesAndDesignator == *(v4 + 144);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = CLKTimeTextProvider;
  v3 = [(CLKTextProvider *)&v12 hash];
  v4 = [(CLKTimeTextProvider *)self date];
  v5 = v3 + [v4 hash] * 100.0;
  v6 = [(NSTimeZone *)self->_timeZone hash];
  v7 = 0x408F400000000000;
  LOBYTE(v7) = self->_prefersDesignatorToMinutes;
  *&v8 = v7;
  v9 = v5 + v6 * 1000.0 + *&v8 * 10000.0;
  LOBYTE(v8) = self->_disallowBothMinutesAndDesignator;
  v10 = (v9 + v8 * 100000.0);

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLKTimeTextProvider;
  v4 = a3;
  [(CLKTextProvider *)&v6 encodeWithCoder:v4];
  v5 = [(CLKTimeTextProvider *)self date:v6.receiver];
  [v4 encodeObject:v5 forKey:@"_date"];

  [v4 encodeObject:self->_timeZone forKey:@"_timeZone"];
  [v4 encodeBool:self->_disallowBothMinutesAndDesignator forKey:@"_disallowBothMinutesAndDesignator"];
  [v4 encodeBool:self->_prefersDesignatorToMinutes forKey:@"_prefersDesignatorToMinutes"];
}

- (CLKTimeTextProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CLKTimeTextProvider;
  v5 = [(CLKTextProvider *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v8;

    v5->_disallowBothMinutesAndDesignator = [v4 decodeBoolForKey:@"_disallowBothMinutesAndDesignator"];
    v5->_prefersDesignatorToMinutes = [v4 decodeBoolForKey:@"_prefersDesignatorToMinutes"];
  }

  return v5;
}

- (id)_initWithJSONObjectRepresentation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CLKTimeTextProvider;
  v5 = [(CLKTextProvider *)&v13 _initWithJSONObjectRepresentation:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"date"];
    v7 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithJSONObjectRepresentation:v6];
    v8 = v5[19];
    v5[19] = v7;

    v9 = [v4 objectForKeyedSubscript:@"timeZone"];
    if (v9)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEBB0]) initWithJSONObjectRepresentation:v9];
      v11 = v5[20];
      v5[20] = v10;
    }
  }

  return v5;
}

- (id)JSONObjectRepresentation
{
  v8.receiver = self;
  v8.super_class = CLKTimeTextProvider;
  v3 = [(CLKTextProvider *)&v8 JSONObjectRepresentation];
  v4 = [(CLKTimeTextProvider *)self date];
  v5 = [v4 JSONObjectRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"date"];

  v6 = [(NSTimeZone *)self->_timeZone JSONObjectRepresentation];
  [v3 setObject:v6 forKeyedSubscript:@"timeZone"];

  return v3;
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