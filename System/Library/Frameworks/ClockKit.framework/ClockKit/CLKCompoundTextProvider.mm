@interface CLKCompoundTextProvider
+ (id)compoundProviderWithLocalizedFormat:(id)format localizedTextProviders:(id)providers;
+ (id)compoundTextProviderCurrentlyFormattingOnThisThread;
- (BOOL)_validate;
- (BOOL)isEqual:(id)equal;
- (CLKCompoundTextProvider)initWithCoder:(id)coder;
- (CLKCompoundTextProvider)initWithFormat:(id)format arguments:(char *)arguments;
- (CLKCompoundTextProvider)initWithSegments:(id)segments textProviders:(id)providers;
- (id)JSONObjectRepresentation;
- (id)_arrayOfTextProviderJSONObjectRepresentations;
- (id)_attributedStringForSegment:(id)segment withStyle:(id)style;
- (id)_initWithJSONObjectRepresentation:(id)representation;
- (id)_replacementForTextProvider:(id)provider index:(unint64_t)index withStyle:(id)style;
- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style;
- (id)_sessionCacheKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)_updateFrequency;
- (int64_t)timeTravelUpdateFrequency;
- (unint64_t)hash;
- (void)_endSession;
- (void)_processFormat:(id)format arguments:(char *)arguments;
- (void)_startSessionWithDate:(id)date;
- (void)addTextProvider:(id)provider andGetPlaceholderString:(id *)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLKCompoundTextProvider

- (CLKCompoundTextProvider)initWithFormat:(id)format arguments:(char *)arguments
{
  formatCopy = format;
  v13.receiver = self;
  v13.super_class = CLKCompoundTextProvider;
  initPrivate = [(CLKTextProvider *)&v13 initPrivate];
  if (initPrivate)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    textProviders = initPrivate->_textProviders;
    initPrivate->_textProviders = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    segments = initPrivate->_segments;
    initPrivate->_segments = v10;

    [(CLKCompoundTextProvider *)initPrivate _processFormat:formatCopy arguments:arguments];
  }

  return initPrivate;
}

- (CLKCompoundTextProvider)initWithSegments:(id)segments textProviders:(id)providers
{
  segmentsCopy = segments;
  providersCopy = providers;
  v14.receiver = self;
  v14.super_class = CLKCompoundTextProvider;
  initPrivate = [(CLKTextProvider *)&v14 initPrivate];
  if (initPrivate)
  {
    v9 = [providersCopy mutableCopy];
    textProviders = initPrivate->_textProviders;
    initPrivate->_textProviders = v9;

    v11 = [segmentsCopy mutableCopy];
    segments = initPrivate->_segments;
    initPrivate->_segments = v11;
  }

  return initPrivate;
}

+ (id)compoundProviderWithLocalizedFormat:(id)format localizedTextProviders:(id)providers
{
  v43 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  providersCopy = providers;
  v8 = [MEMORY[0x277CCAC80] localizedScannerWithString:formatCopy];
  [v8 setCharactersToBeSkipped:0];
  v9 = objc_opt_new();
  v10 = objc_opt_new();
  if ([v8 isAtEnd])
  {
    v12 = &stru_284A20458;
    goto LABEL_33;
  }

  selfCopy = self;
  v34 = formatCopy;
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
      if ([providersCopy count] <= v13)
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

      v16 = providersCopy;
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
      if (v35 < 1 || [providersCopy count] < v22)
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
      v16 = providersCopy;
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
    formatCopy = v34;
    goto LABEL_40;
  }

  formatCopy = v34;
  self = selfCopy;
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
      v38 = formatCopy;
      v39 = 2112;
      v40 = v9;
      v41 = 2112;
      v42 = v10;
      _os_log_impl(&dword_23702D000, v30, OS_LOG_TYPE_DEFAULT, "Will create compound provider for '%@' with segments: %@ textProviders: %@", buf, 0x20u);
    }

    v26 = [[self alloc] initWithSegments:v9 textProviders:v10];
  }

  else
  {
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v38 = formatCopy;
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

- (void)addTextProvider:(id)provider andGetPlaceholderString:(id *)string
{
  textProviders = self->_textProviders;
  providerCopy = provider;
  v8 = [(NSMutableArray *)textProviders count];
  v9 = self->_textProviders;
  finalizedCopy = [providerCopy finalizedCopy];

  [(NSMutableArray *)v9 addObject:finalizedCopy];
  v11 = MEMORY[0x277CCACA8];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v13 = [v11 stringWithFormat:@"%@%@%@", @"Ω-♨︎-Д-⚽︎-猫", v12, @"止"];

  v14 = v13;
  *string = v13;
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

        timeTravelUpdateFrequency = [*(*(&v10 + 1) + 8 * i) timeTravelUpdateFrequency];
        if (v5 <= timeTravelUpdateFrequency)
        {
          v5 = timeTravelUpdateFrequency;
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

- (void)_startSessionWithDate:(id)date
{
  v15 = *MEMORY[0x277D85DE8];
  dateCopy = date;
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

        [*(*(&v10 + 1) + 8 * v9++) _startSessionWithDate:{dateCopy, v10}];
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

          _sessionCacheKey = [*(*(&v14 + 1) + 8 * v8) _sessionCacheKey];
          if (_sessionCacheKey)
          {
            v10 = self->_sessionCacheKey;
            if (v10)
            {
              v11 = [(NSString *)v10 stringByAppendingFormat:@"--%@", _sessionCacheKey];
            }

            else
            {
              v11 = _sessionCacheKey;
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

- (id)_sessionAttributedTextForIndex:(unint64_t)index withStyle:(id)style
{
  v34 = *MEMORY[0x277D85DE8];
  styleCopy = style;
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

          v12 = [*(*(&v27 + 1) + 8 * i) sessionAttributedTextForIndex:index withStyle:{styleCopy, v27}];

          if (v12)
          {

            v14 = [(NSMutableArray *)self->_textProviders count];
            v13 = objc_alloc_init(MEMORY[0x277CCAB48]);
            if (v14)
            {
              for (j = 0; j != v14; ++j)
              {
                v16 = [(NSMutableArray *)self->_segments objectAtIndex:j];
                v17 = [(CLKCompoundTextProvider *)self _attributedStringForSegment:v16 withStyle:styleCopy];
                [v13 appendAttributedString:v17];

                v18 = [(NSMutableArray *)self->_textProviders objectAtIndex:j];
                v19 = [(CLKCompoundTextProvider *)self _replacementForTextProvider:v18 index:index withStyle:styleCopy];
                [v13 appendAttributedString:v19];
              }
            }

            lastObject = [(NSMutableArray *)self->_segments lastObject];
            v21 = [(CLKCompoundTextProvider *)self _attributedStringForSegment:lastObject withStyle:styleCopy];
            [v13 appendAttributedString:v21];

            if ([styleCopy shouldEmbedTintColors])
            {
              tintColor = [(CLKTextProvider *)self tintColor];

              if (tintColor)
              {
                v31 = *MEMORY[0x277D740C0];
                tintColor2 = [(CLKTextProvider *)self tintColor];
                v32 = tintColor2;
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
    firstObject = [(NSMutableArray *)self->_segments firstObject];
    if (index)
    {
      v13 = 0;
    }

    else
    {
      v13 = [(CLKCompoundTextProvider *)self _attributedStringForSegment:firstObject withStyle:styleCopy];
    }
  }

LABEL_21:

  return v13;
}

- (id)_attributedStringForSegment:(id)segment withStyle:(id)style
{
  v16[1] = *MEMORY[0x277D85DE8];
  segmentCopy = segment;
  styleCopy = style;
  if ([styleCopy uppercase])
  {
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [segmentCopy uppercaseStringWithLocale:currentLocale];

    segmentCopy = v8;
  }

  v9 = objc_alloc(MEMORY[0x277CCA898]);
  v15 = *MEMORY[0x277D740A8];
  font = [styleCopy font];
  v16[0] = font;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v12 = [v9 initWithString:segmentCopy attributes:v11];

  v13 = [v12 _attributedStringWithOtherAttributesFromStyle:styleCopy];

  if (!v13)
  {
    v13 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:&stru_284A20458];
  }

  return v13;
}

- (id)_replacementForTextProvider:(id)provider index:(unint64_t)index withStyle:(id)style
{
  providerCopy = provider;
  styleCopy = style;
  if ((index & 0x8000000000000000) != 0)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      v9 = [providerCopy sessionAttributedTextForIndex:index withStyle:styleCopy];
      v10 = v9;
      v11 = index-- != 0;
    }

    while (v11 && !v9);
  }

  v12 = [v10 _attributedStringWithOtherAttributesFromStyle:styleCopy];
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

        _updateFrequency = [*(*(&v10 + 1) + 8 * i) _updateFrequency];
        if (v5 <= _updateFrequency)
        {
          v5 = _updateFrequency;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = CLKCompoundTextProvider;
  v4 = [(CLKTextProvider *)&v10 copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = CLKCompoundTextProvider;
  if ([(CLKTextProvider *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CLKEqualObjects(self->_textProviders, equalCopy[16]))
  {
    v5 = CLKEqualObjects(self->_segments, equalCopy[17]);
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

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CLKCompoundTextProvider;
  coderCopy = coder;
  [(CLKTextProvider *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_textProviders forKey:{@"_textProviders", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_segments forKey:@"_segments"];
}

- (CLKCompoundTextProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CLKCompoundTextProvider;
  v5 = [(CLKTextProvider *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_textProviders"];
    textProviders = v5->_textProviders;
    v5->_textProviders = v9;

    v11 = v5->_textProviders;
    v12 = objc_opt_class();
    CLKValidateArray(v11, v12);
    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"_segments"];
    segments = v5->_segments;
    v5->_segments = v16;

    v18 = v5->_segments;
    v19 = objc_opt_class();
    CLKValidateArray(v18, v19);
  }

  return v5;
}

- (id)_initWithJSONObjectRepresentation:(id)representation
{
  v33 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = CLKCompoundTextProvider;
  representationCopy = representation;
  v3 = [(CLKTextProvider *)&v30 _initWithJSONObjectRepresentation:?];
  if (v3)
  {
    v4 = [representationCopy objectForKeyedSubscript:?];
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

    v11 = [representationCopy objectForKeyedSubscript:@"format segments"];
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
  jSONObjectRepresentation = [(CLKTextProvider *)&v7 JSONObjectRepresentation];
  _arrayOfTextProviderJSONObjectRepresentations = [(CLKCompoundTextProvider *)self _arrayOfTextProviderJSONObjectRepresentations];
  [jSONObjectRepresentation setObject:_arrayOfTextProviderJSONObjectRepresentations forKeyedSubscript:@"textProviders"];

  v5 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_segments];
  [jSONObjectRepresentation setObject:v5 forKeyedSubscript:@"format segments"];

  return jSONObjectRepresentation;
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

        jSONObjectRepresentation = [*(*(&v11 + 1) + 8 * i) JSONObjectRepresentation];
        [v3 addObject:jSONObjectRepresentation];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_processFormat:(id)format arguments:(char *)arguments
{
  formatCopy = format;
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
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v9 = [v7 initWithFormat:formatCopy locale:currentLocale arguments:arguments];

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