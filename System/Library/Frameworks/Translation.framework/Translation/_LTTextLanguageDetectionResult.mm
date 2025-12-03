@interface _LTTextLanguageDetectionResult
- (NSLocale)dominantUnsupportedLocale;
- (_LTTextLanguageDetectionResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTTextLanguageDetectionResult

- (_LTTextLanguageDetectionResult)initWithCoder:(id)coder
{
  v29[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = _LTTextLanguageDetectionResult;
  v5 = [(_LTTextLanguageDetectionResult *)&v26 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dominantLocale"];
    dominantLocale = v5->_dominantLocale;
    v5->_dominantLocale = v6;

    v8 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"localeDetectionCount"];
    localeDetectionCount = v5->_localeDetectionCount;
    v5->_localeDetectionCount = v11;

    v13 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v15 = [v13 setWithArray:v14];

    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"unsupportedLanguageCount"];
    unsupportedLanguageCounts = v5->_unsupportedLanguageCounts;
    v5->_unsupportedLanguageCounts = v16;

    v18 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v20 = [v18 setWithArray:v19];

    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"lowConfidenceLocales"];
    lowConfidenceLocales = v5->_lowConfidenceLocales;
    v5->_lowConfidenceLocales = v21;

    v23 = v5;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dominantLocale = self->_dominantLocale;
  coderCopy = coder;
  [coderCopy encodeObject:dominantLocale forKey:@"dominantLocale"];
  [coderCopy encodeObject:self->_localeDetectionCount forKey:@"localeDetectionCount"];
  [coderCopy encodeObject:self->_unsupportedLanguageCounts forKey:@"unsupportedLanguageCount"];
  [coderCopy encodeObject:self->_lowConfidenceLocales forKey:@"lowConfidenceLocales"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSCountedSet *)self->_localeDetectionCount count];
  v5 = [(NSCountedSet *)self->_unsupportedLanguageCounts count];
  localeIdentifier = [(NSLocale *)self->_dominantLocale localeIdentifier];
  v7 = [v3 stringWithFormat:@"Detection result locale count: %zd, unsupported count: %zd, dominant: %@, lowConfidenceLocales: %@", v4, v5, localeIdentifier, self->_lowConfidenceLocales];

  return v7;
}

- (NSLocale)dominantUnsupportedLocale
{
  v24 = *MEMORY[0x277D85DE8];
  dominantLocale = [(_LTTextLanguageDetectionResult *)self dominantLocale];

  if (dominantLocale)
  {
    v4 = 0;
    goto LABEL_18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  unsupportedLanguageCounts = [(_LTTextLanguageDetectionResult *)self unsupportedLanguageCounts];
  allObjects = [unsupportedLanguageCounts allObjects];

  v7 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v7)
  {

    v9 = 0;
LABEL_16:
    v4 = 0;
    goto LABEL_17;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v20;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v20 != v11)
      {
        objc_enumerationMutation(allObjects);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      unsupportedLanguageCounts2 = [(_LTTextLanguageDetectionResult *)self unsupportedLanguageCounts];
      v15 = [unsupportedLanguageCounts2 countForObject:v13];

      if (v15 > v10)
      {
        v16 = v13;

        v9 = v16;
        v10 = v15;
      }
    }

    v8 = [allObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
  }

  while (v8);

  if (!v10 || ([v9 isEqualToString:@"__unknown__"] & 1) != 0)
  {
    goto LABEL_16;
  }

  v4 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v9];
LABEL_17:

LABEL_18:
  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

@end