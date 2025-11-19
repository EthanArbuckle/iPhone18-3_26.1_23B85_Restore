@interface _LTTextLanguageDetectionResult
- (NSLocale)dominantUnsupportedLocale;
- (_LTTextLanguageDetectionResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTTextLanguageDetectionResult

- (_LTTextLanguageDetectionResult)initWithCoder:(id)a3
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26.receiver = self;
  v26.super_class = _LTTextLanguageDetectionResult;
  v5 = [(_LTTextLanguageDetectionResult *)&v26 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dominantLocale"];
    dominantLocale = v5->_dominantLocale;
    v5->_dominantLocale = v6;

    v8 = MEMORY[0x277CBEB98];
    v29[0] = objc_opt_class();
    v29[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"localeDetectionCount"];
    localeDetectionCount = v5->_localeDetectionCount;
    v5->_localeDetectionCount = v11;

    v13 = MEMORY[0x277CBEB98];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v15 = [v13 setWithArray:v14];

    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"unsupportedLanguageCount"];
    unsupportedLanguageCounts = v5->_unsupportedLanguageCounts;
    v5->_unsupportedLanguageCounts = v16;

    v18 = MEMORY[0x277CBEB98];
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v20 = [v18 setWithArray:v19];

    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"lowConfidenceLocales"];
    lowConfidenceLocales = v5->_lowConfidenceLocales;
    v5->_lowConfidenceLocales = v21;

    v23 = v5;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dominantLocale = self->_dominantLocale;
  v5 = a3;
  [v5 encodeObject:dominantLocale forKey:@"dominantLocale"];
  [v5 encodeObject:self->_localeDetectionCount forKey:@"localeDetectionCount"];
  [v5 encodeObject:self->_unsupportedLanguageCounts forKey:@"unsupportedLanguageCount"];
  [v5 encodeObject:self->_lowConfidenceLocales forKey:@"lowConfidenceLocales"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSCountedSet *)self->_localeDetectionCount count];
  v5 = [(NSCountedSet *)self->_unsupportedLanguageCounts count];
  v6 = [(NSLocale *)self->_dominantLocale localeIdentifier];
  v7 = [v3 stringWithFormat:@"Detection result locale count: %zd, unsupported count: %zd, dominant: %@, lowConfidenceLocales: %@", v4, v5, v6, self->_lowConfidenceLocales];

  return v7;
}

- (NSLocale)dominantUnsupportedLocale
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [(_LTTextLanguageDetectionResult *)self dominantLocale];

  if (v3)
  {
    v4 = 0;
    goto LABEL_18;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [(_LTTextLanguageDetectionResult *)self unsupportedLanguageCounts];
  v6 = [v5 allObjects];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
        objc_enumerationMutation(v6);
      }

      v13 = *(*(&v19 + 1) + 8 * i);
      v14 = [(_LTTextLanguageDetectionResult *)self unsupportedLanguageCounts];
      v15 = [v14 countForObject:v13];

      if (v15 > v10)
      {
        v16 = v13;

        v9 = v16;
        v10 = v15;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
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