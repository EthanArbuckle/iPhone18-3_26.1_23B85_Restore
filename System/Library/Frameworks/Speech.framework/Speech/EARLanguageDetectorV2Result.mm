@interface EARLanguageDetectorV2Result
- (EARLanguageDetectorV2Result)initWithCoder:(id)a3;
- (EARLanguageDetectorV2Result)initWithLanguageDetectorV2Result:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EARLanguageDetectorV2Result

- (EARLanguageDetectorV2Result)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = EARLanguageDetectorV2Result;
  v5 = [(EARLanguageDetectorV2Result *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"_confidences"];
    confidences = v5->_confidences;
    v5->_confidences = v7;

    v5->_detectedLangauge = [v4 decodeIntegerForKey:@"_detectedLangauge"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dominantLocale"];
    dominantLocale = v5->_dominantLocale;
    v5->_dominantLocale = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  confidences = self->_confidences;
  v5 = a3;
  [v5 encodeObject:confidences forKey:@"_confidences"];
  [v5 encodeInteger:self->_detectedLangauge forKey:@"_detectedLangauge"];
  [v5 encodeObject:self->_dominantLocale forKey:@"_dominantLocale"];
}

- (EARLanguageDetectorV2Result)initWithLanguageDetectorV2Result:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = EARLanguageDetectorV2Result;
  v5 = [(EARLanguageDetectorV2Result *)&v13 init];
  if (v5)
  {
    v6 = [v4 confidences];
    v7 = [v6 copy];
    confidences = v5->_confidences;
    v5->_confidences = v7;

    v5->_detectedLangauge = [v4 detectedLanguage];
    v9 = [v4 dominantLocale];
    v10 = [v9 copy];
    dominantLocale = v5->_dominantLocale;
    v5->_dominantLocale = v10;
  }

  return v5;
}

@end