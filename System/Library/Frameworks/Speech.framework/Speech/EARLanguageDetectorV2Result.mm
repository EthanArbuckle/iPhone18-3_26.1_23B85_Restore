@interface EARLanguageDetectorV2Result
- (EARLanguageDetectorV2Result)initWithCoder:(id)coder;
- (EARLanguageDetectorV2Result)initWithLanguageDetectorV2Result:(id)result;
- (void)encodeWithCoder:(id)coder;
@end

@implementation EARLanguageDetectorV2Result

- (EARLanguageDetectorV2Result)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = EARLanguageDetectorV2Result;
  v5 = [(EARLanguageDetectorV2Result *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"_confidences"];
    confidences = v5->_confidences;
    v5->_confidences = v7;

    v5->_detectedLangauge = [coderCopy decodeIntegerForKey:@"_detectedLangauge"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dominantLocale"];
    dominantLocale = v5->_dominantLocale;
    v5->_dominantLocale = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  confidences = self->_confidences;
  coderCopy = coder;
  [coderCopy encodeObject:confidences forKey:@"_confidences"];
  [coderCopy encodeInteger:self->_detectedLangauge forKey:@"_detectedLangauge"];
  [coderCopy encodeObject:self->_dominantLocale forKey:@"_dominantLocale"];
}

- (EARLanguageDetectorV2Result)initWithLanguageDetectorV2Result:(id)result
{
  resultCopy = result;
  v13.receiver = self;
  v13.super_class = EARLanguageDetectorV2Result;
  v5 = [(EARLanguageDetectorV2Result *)&v13 init];
  if (v5)
  {
    confidences = [resultCopy confidences];
    v7 = [confidences copy];
    confidences = v5->_confidences;
    v5->_confidences = v7;

    v5->_detectedLangauge = [resultCopy detectedLanguage];
    dominantLocale = [resultCopy dominantLocale];
    v10 = [dominantLocale copy];
    dominantLocale = v5->_dominantLocale;
    v5->_dominantLocale = v10;
  }

  return v5;
}

@end