@interface SFSpeechAnalyzerLanguageDetectorOptions
- (SFSpeechAnalyzerLanguageDetectorOptions)init;
- (SFSpeechAnalyzerLanguageDetectorOptions)initWithResultReportingFrequency:(unint64_t)frequency;
@end

@implementation SFSpeechAnalyzerLanguageDetectorOptions

- (SFSpeechAnalyzerLanguageDetectorOptions)initWithResultReportingFrequency:(unint64_t)frequency
{
  v8.receiver = self;
  v8.super_class = SFSpeechAnalyzerLanguageDetectorOptions;
  v4 = [(SFSpeechAnalyzerLanguageDetectorOptions *)&v8 init];
  v5 = v4;
  if (v4)
  {
    languageConstraints = v4->_languageConstraints;
    v4->_languageConstraints = 0;

    v5->_alternativeCount = 5;
    v5->_resultReportingFrequency = frequency;
  }

  return v5;
}

- (SFSpeechAnalyzerLanguageDetectorOptions)init
{
  v6.receiver = self;
  v6.super_class = SFSpeechAnalyzerLanguageDetectorOptions;
  v2 = [(SFSpeechAnalyzerLanguageDetectorOptions *)&v6 init];
  v3 = v2;
  if (v2)
  {
    languageConstraints = v2->_languageConstraints;
    v2->_languageConstraints = 0;

    *&v3->_alternativeCount = xmmword_1AC7B46A0;
  }

  return v3;
}

@end