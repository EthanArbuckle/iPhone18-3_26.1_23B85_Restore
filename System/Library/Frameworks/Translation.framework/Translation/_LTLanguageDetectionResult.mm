@interface _LTLanguageDetectionResult
- (_LTLanguageDetectionResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTLanguageDetectionResult

- (_LTLanguageDetectionResult)initWithCoder:(id)a3
{
  v15[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _LTLanguageDetectionResult;
  v5 = [(_LTLanguageDetectionResult *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dominantLanguage"];
    [(_LTLanguageDetectionResult *)v5 setDominantLanguage:v6];

    v7 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v9 = [v7 setWithArray:v8];

    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"confidences"];
    [(_LTLanguageDetectionResult *)v5 setConfidences:v10];

    v5->_isConfident = [v4 decodeBoolForKey:@"isConfident"];
    v5->_isFinal = [v4 decodeBoolForKey:@"isFinal"];
    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(_LTLanguageDetectionResult *)self dominantLanguage];
  [v6 encodeObject:v4 forKey:@"dominantLanguage"];

  v5 = [(_LTLanguageDetectionResult *)self confidences];
  [v6 encodeObject:v5 forKey:@"confidences"];

  [v6 encodeBool:-[_LTLanguageDetectionResult isConfident](self forKey:{"isConfident"), @"isConfident"}];
  [v6 encodeBool:-[_LTLanguageDetectionResult isFinal](self forKey:{"isFinal"), @"isFinal"}];
}

@end