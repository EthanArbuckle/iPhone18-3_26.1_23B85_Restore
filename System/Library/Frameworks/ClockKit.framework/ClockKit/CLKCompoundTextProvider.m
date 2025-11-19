@interface CLKCompoundTextProvider
+ (id)compoundProviderWithLocalizedFormat:(id)a3 localizedTextProviders:(id)a4;
+ (id)compoundTextProviderCurrentlyFormattingOnThisThread;
- (BOOL)_validate;
- (BOOL)isEqual:(id)a3;
- (CLKCompoundTextProvider)initWithCoder:(id)a3;
- (CLKCompoundTextProvider)initWithFormat:(id)a3 arguments:(char *)a4;
- (CLKCompoundTextProvider)initWithSegments:(id)a3 textProviders:(id)a4;
- (id)JSONObjectRepresentation;
- (id)_arrayOfTextProviderJSONObjectRepresentations;
- (id)_attributedStringForSegment:(id)a3 withStyle:(id)a4;
- (id)_initWithJSONObjectRepresentation:(id)a3;
- (id)_replacementForTextProvider:(id)a3 index:(unint64_t)a4 withStyle:(id)a5;
- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4;
- (id)_sessionCacheKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)_updateFrequency;
- (int64_t)timeTravelUpdateFrequency;
- (unint64_t)hash;
- (void)_endSession;
- (void)_processFormat:(id)a3 arguments:(char *)a4;
- (void)_startSessionWithDate:(id)a3;
- (void)addTextProvider:(id)a3 andGetPlaceholderString:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLKCompoundTextProvider

- (CLKCompoundTextProvider)initWithFormat:(id)a3 arguments:(char *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CLKCompoundTextProvider;
  v7 = [(CLKTextProvider *)&v13 initPrivate];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    textProviders = v7->_textProviders;
    v7->_textProviders = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    segments = v7->_segments;
    v7->_segments = v10;

    [(CLKCompoundTextProvider *)v7 _processFormat:v6 arguments:a4];
  }

  return v7;
}

- (CLKCompoundTextProvider)initWithSegments:(id)a3 textProviders:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CLKCompoundTextProvider;
  v8 = [(CLKTextProvider *)&v14 initPrivate];
  if (v8)
  {
    v9 = [v7 mutableCopy];
    textProviders = v8->_textProviders;
    v8->_textProviders = v9;

    v11 = [v6 mutableCopy];
    segments = v8->_segments;
    v8->_segments = v11;
  }

  return v8;
}

+ (id)compoundProviderWithLocalizedFormat:(id)a3 localizedTextProviders:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCAC80] localizedScannerWithString:v6];
  [v8 setCharactersToBeSkipped:0];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  if ([v8 isAtEnd])
  {
    v12 = &stru_284A20458;
    goto LABEL_33;
  }

  v33 = a1;
  v34 = v6;
  v13 = 0;
  v12 = &stru_284A20458;
  *&v11 = 138412546;
  v32 = v11;
  do
  {
    v36 = 0;
    [v8 scanUpToString:@"%" intoString:{&v36, v32}];
    v14 = v36;
    if (v14)
    {
      v15 = [(__CFString *)v12 stringByAppendingString:v14];

      v12 = v15;
    }

    if (![v8 scanString:@"%" intoString:0])
    {
LABEL_21:
      v19 = 0;
      goto LABEL_24;
    }

    if ([v8 scanString:@"@" intoString:0])
    {
      if ([v7 count] <= v13)
      {
        v21 = CLKLoggingObjectForDomain(4);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v38 = v34;
          _os_log_impl(&dword_23702D000, v21, OS_LOG_TYPE_DEFAULT, "Error: Format string '%@' has more %% conversions than data arguments", buf, 0xCu);
        }

        goto LABEL_23;
      }

      [v9 addObject:v12];

      v16 = v7;
      v17 = v13;
    }

    else
    {
      if ([v8 scanString:@"%" intoString:0])
      {
        v20 = [(__CFString *)v12 stringByAppendingString:@"%"];

        v19 = 0;
        v12 = v20;
        goto LABEL_24;
      }

      v35 = 0;
      if (![v8 scanInt:&v35])
      {
        v21 = CLKLoggingObjectForDomain(4);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v34;
          v23 = v21;
          v24 = "Error: Format string '%@' contains unsupported format";
          v25 = 12;
LABEL_29:
          _os_log_error_impl(&dword_23702D000, v23, OS_LOG_TYPE_ERROR, v24, buf, v25);
        }

LABEL_23:

        v19 = 1;
        goto LABEL_24;
      }

      if (![v8 scanString:@"$@" intoString:0])
      {
        goto LABEL_21;
      }

      v22 = v35;
      if (v35 < 1 || [v7 count] < v22)
      {
        v21 = CLKLoggingObjectForDomain(4);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = v32;
          v38 = v34;
          v39 = 1024;
          LODWORD(v40) = v35;
          v23 = v21;
          v24 = "Error: Format string '%@' contains position '%i' that exceeds data arguments";
          v25 = 18;
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      [v9 addObject:v12];

      v17 = v35 - 1;
      v16 = v7;
    }

    v18 = [v16 objectAtIndexedSubscript:v17];
    [v10 addObject:v18];

    v19 = 0;
    ++v13;
    v12 = &stru_284A20458;
LABEL_24:
  }

  while (([v8 isAtEnd] & 1) == 0 && !v19);
  if (v19)
  {
    v26 = 0;
    v6 = v34;
    goto LABEL_40;
  }

  v6 = v34;
  a1 = v33;
LABEL_33:
  [v9 addObject:v12];
  v27 = [v9 count];
  v28 = [v10 count] + 1;
  v29 = CLKLoggingObjectForDomain(4);
  v30 = v29;
  if (v27 == v28)
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v38 = v6;
      v39 = 2112;
      v40 = v9;
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_23702D000, v30, OS_LOG_TYPE_DEFAULT, "Will create compound provider for '%@' with segments: %@ textProviders: %@", buf, 0x20u);
    }

    v26 = [[a1 alloc] initWithSegments:v9 textProviders:v10];
  }

  else
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = v6;
      v39 = 2112;
      v40 = v9;
      v41 = 2112;
      v42 = v10;
      _os_log_error_impl(&dword_23702D000, v30, OS_LOG_TYPE_ERROR, "Failed to create compound provider for '%@' with segments: %@ textProviders: %@", buf, 0x20u);
    }

    v26 = 0;
  }

LABEL_40:

  return v26;
}

+ (id)compoundTextProviderCurrentlyFormattingOnThisThread
{
  if (_PthreadKey_onceToken != -1)
  {
    +[CLKCompoundTextProvider compoundTextProviderCurrentlyFormattingOnThisThread];
  }

  v3 = _PthreadKey_key;

  return pthread_getspecific(v3);
}

- (void)addTextProvider:(id)a3 andGetPlaceholderString:(id *)a4
{
  textProviders = self->_textProviders;
  v7 = a3;
  v8 = [(NSMutableArray *)textProviders count];
  v9 = self->_textProviders;
  v10 = [v7 finalizedCopy];

  [(NSMutableArray *)v9 addObject:v10];
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v13 = [v11 stringWithFormat:@"%@%@%@", @"Ω-♨︎-Д-⚽︎-猫", v12, @"止"];

  v14 = v13;
  *a4 = v13;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CLKCompoundTextProvider;
  v2 = [(CLKTextProvider *)&v4 description];

  return v2;
}

- (int64_t)timeTravelUpdateFrequency
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_textProviders;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) timeTravelUpdateFrequency];
        if (v5 <= v8)
        {
          v5 = v8;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_startSessionWithDate:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_textProviders;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _startSessionWithDate:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_sessionCacheKey
{
  v19 = *MEMORY[0x277D85DE8];
  sessionCacheKey = self->_sessionCacheKey;
  if (!sessionCacheKey)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = self->_textProviders;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v14 + 1) + 8 * v8) _sessionCacheKey];
          if (v9)
          {
            v10 = self->_sessionCacheKey;
            if (v10)
            {
              v11 = [(NSString *)v10 stringByAppendingFormat:@"--%@", v9];
            }

            else
            {
              v11 = v9;
            }

            v12 = self->_sessionCacheKey;
            self->_sessionCacheKey = v11;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    sessionCacheKey = self->_sessionCacheKey;
  }

  return sessionCacheKey;
}

- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(NSMutableArray *)self->_textProviders count])
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_textProviders;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v28;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v28 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v27 + 1) + 8 * i) sessionAttributedTextForIndex:a3 withStyle:{v6, v27}];

          if (v12)
          {

            v14 = [(NSMutableArray *)self->_textProviders count];
            v13 = objc_alloc_init(MEMORY[0x277CCAB48]);
            if (v14)
            {
              for (j = 0; j != v14; ++j)
              {
                v16 = [(NSMutableArray *)self->_segments objectAtIndex:j];
                v17 = [(CLKCompoundTextProvider *)self _attributedStringForSegment:v16 withStyle:v6];
                [v13 appendAttributedString:v17];

                v18 = [(NSMutableArray *)self->_textProviders objectAtIndex:j];
                v19 = [(CLKCompoundTextProvider *)self _replacementForTextProvider:v18 index:a3 withStyle:v6];
                [v13 appendAttributedString:v19];
              }
            }

            v20 = [(NSMutableArray *)self->_segments lastObject];
            v21 = [(CLKCompoundTextProvider *)self _attributedStringForSegment:v20 withStyle:v6];
            [v13 appendAttributedString:v21];

            if ([v6 shouldEmbedTintColors])
            {
              v22 = [(CLKTextProvider *)self tintColor];

              if (v22)
              {
                v31 = *MEMORY[0x277D740C0];
                v23 = [(CLKTextProvider *)self tintColor];
                v32 = v23;
                v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
                [v13 addAttributesPreservingOriginals:v24 range:{0, objc_msgSend(v13, "length")}];
              }
            }

            goto LABEL_21;
          }
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v27 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
  }

  else
  {
    v25 = [(NSMutableArray *)self->_segments firstObject];
    if (a3)
    {
      v13 = 0;
    }

    else
    {
      v13 = [(CLKCompoundTextProvider *)self _attributedStringForSegment:v25 withStyle:v6];
    }
  }

LABEL_21:

  return v13;
}

- (id)_attributedStringForSegment:(id)a3 withStyle:(id)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 uppercase])
  {
    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [v5 uppercaseStringWithLocale:v7];

    v5 = v8;
  }

  v9 = objc_alloc(MEMORY[0x277CCA898]);
  v15 = *MEMORY[0x277D740A8];
  v10 = [v6 font];
  v16[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithString:v5 attributes:v11];

  v13 = [v12 _attributedStringWithOtherAttributesFromStyle:v6];

  if (!v13)
  {
    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_284A20458];
  }

  return v13;
}

- (id)_replacementForTextProvider:(id)a3 index:(unint64_t)a4 withStyle:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ((a4 & 0x8000000000000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v9 = [v7 sessionAttributedTextForIndex:a4 withStyle:v8];
      v10 = v9;
      v11 = a4-- != 0;
    }

    while (v11 && !v9);
  }

  v12 = [v10 _attributedStringWithOtherAttributesFromStyle:v8];
  if (!v12)
  {
    v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_284A20458];
  }

  return v12;
}

- (void)_endSession
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_textProviders;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

        [*(*(&v9 + 1) + 8 * v7++) _endSession];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  sessionCacheKey = self->_sessionCacheKey;
  self->_sessionCacheKey = 0;
}

- (BOOL)_validate
{
  v16 = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = CLKCompoundTextProvider;
  if (![(CLKTextProvider *)&v14 _validate])
  {
    return 0;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_textProviders;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) validate])
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_13:

  return v8;
}

- (int64_t)_updateFrequency
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_textProviders;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) _updateFrequency];
        if (v5 <= v8)
        {
          v5 = v8;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = CLKCompoundTextProvider;
  v4 = [(CLKTextProvider *)&v10 copyWithZone:a3];
  if (v4 != self)
  {
    v5 = [(NSMutableArray *)self->_textProviders copy];
    textProviders = v4->_textProviders;
    v4->_textProviders = v5;

    v7 = [(NSMutableArray *)self->_segments copy];
    segments = v4->_segments;
    v4->_segments = v7;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CLKCompoundTextProvider;
  if ([(CLKTextProvider *)&v7 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_textProviders, v4[16]))
  {
    v5 = CLKEqualObjects(self->_segments, v4[17]);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v6.receiver = self;
  v6.super_class = CLKCompoundTextProvider;
  v3 = [(CLKTextProvider *)&v6 hash];
  v4 = &v3[[(NSMutableArray *)self->_textProviders hash]];
  return &v4[4 * [(NSMutableArray *)self->_segments hash]];
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CLKCompoundTextProvider;
  v4 = a3;
  [(CLKTextProvider *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_textProviders forKey:{@"_textProviders", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_segments forKey:@"_segments"];
}

- (CLKCompoundTextProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CLKCompoundTextProvider;
  v5 = [(CLKTextProvider *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_textProviders"];
    textProviders = v5->_textProviders;
    v5->_textProviders = v9;

    v11 = v5->_textProviders;
    v12 = objc_opt_class();
    CLKValidateArray(v11, v12);
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"_segments"];
    segments = v5->_segments;
    v5->_segments = v16;

    v18 = v5->_segments;
    v19 = objc_opt_class();
    CLKValidateArray(v18, v19);
  }

  return v5;
}

- (id)_initWithJSONObjectRepresentation:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = CLKCompoundTextProvider;
  v20 = a3;
  v3 = [(CLKTextProvider *)&v30 _initWithJSONObjectRepresentation:?];
  if (v3)
  {
    v4 = [v20 objectForKeyedSubscript:?];
    if (!v4 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"key in '%@' dictionary must be an array - invalid value: %@", @"textProviders", v4}];
    }

    v5 = objc_opt_new();
    v6 = *(v3 + 16);
    *(v3 + 16) = v5;

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v4;
    v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v7)
    {
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [CLKTextProvider providerWithJSONObjectRepresentation:*(*(&v26 + 1) + 8 * i)];
          [*(v3 + 16) addObject:v10];
        }

        v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v7);
    }

    v11 = [v20 objectForKeyedSubscript:@"format segments"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"key in '%@' dictionary must be an array - invalid value: %@", @"format segments", v11}];
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v31 count:16];
    if (v13)
    {
      v14 = *v23;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v22 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"key in '%@' dictionary must be an array of strings - invalid object: %@", @"format segments", v16}];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v22 objects:v31 count:16];
      }

      while (v13);
    }

    v17 = [MEMORY[0x277CBEB18] arrayWithArray:v12];
    v18 = *(v3 + 17);
    *(v3 + 17) = v17;
  }

  return v3;
}

- (id)JSONObjectRepresentation
{
  v7.receiver = self;
  v7.super_class = CLKCompoundTextProvider;
  v3 = [(CLKTextProvider *)&v7 JSONObjectRepresentation];
  v4 = [(CLKCompoundTextProvider *)self _arrayOfTextProviderJSONObjectRepresentations];
  [v3 setObject:v4 forKeyedSubscript:@"textProviders"];

  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_segments];
  [v3 setObject:v5 forKeyedSubscript:@"format segments"];

  return v3;
}

- (id)_arrayOfTextProviderJSONObjectRepresentations
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_textProviders;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) JSONObjectRepresentation];
        [v3 addObject:v9];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_processFormat:(id)a3 arguments:(char *)a4
{
  v21 = a3;
  if (_PthreadKey_onceToken != -1)
  {
    +[CLKCompoundTextProvider compoundTextProviderCurrentlyFormattingOnThisThread];
  }

  v6 = pthread_getspecific(_PthreadKey_key);
  if (_PthreadKey_onceToken != -1)
  {
    +[CLKCompoundTextProvider compoundTextProviderCurrentlyFormattingOnThisThread];
  }

  pthread_setspecific(_PthreadKey_key, self);
  v7 = objc_alloc(MEMORY[0x277CCACA8]);
  v8 = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v7 initWithFormat:v21 locale:v8 arguments:a4];

  if (_PthreadKey_onceToken != -1)
  {
    +[CLKCompoundTextProvider compoundTextProviderCurrentlyFormattingOnThisThread];
  }

  pthread_setspecific(_PthreadKey_key, v6);
  v10 = [(NSMutableArray *)self->_textProviders count];
  v11 = [(NSMutableArray *)self->_textProviders copy];
  [(NSMutableArray *)self->_textProviders removeAllObjects];
  v12 = v9;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  NextSegment = _GetNextSegment(v12, v10, &v22, &v23, &v24);
  v14 = v22;
  v15 = v14;
  v20 = v12;
  if (NextSegment)
  {
    do
    {
      [(NSMutableArray *)self->_segments addObject:v15];
      v16 = [v11 objectAtIndex:v23];
      [(NSMutableArray *)self->_textProviders addObject:v16];
      v17 = [v12 substringFromIndex:v24];

      v22 = v15;
      v18 = _GetNextSegment(v17, v10, &v22, &v23, &v24);
      v19 = v22;

      v15 = v19;
      v12 = v17;
    }

    while ((v18 & 1) != 0);
  }

  else
  {
    v17 = v12;
    v19 = v14;
  }

  [(NSMutableArray *)self->_segments addObject:v17];
}

@end