@interface _LTSpeechRecognitionResult
- (_LTSpeechRecognitionResult)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTSpeechRecognitionResult

- (_LTSpeechRecognitionResult)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = _LTSpeechRecognitionResult;
  v5 = [(_LTSpeechRecognitionResult *)&v18 init];
  if (v5)
  {
    v5->_final = [v4 decodeBoolForKey:@"final"];
    v5->_stable = [v4 decodeBoolForKey:@"stable"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v5->_endOfUtterance = [v4 decodeBoolForKey:@"endOfUtterance"];
    v8 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"transcriptions"];
    transcriptions = v5->_transcriptions;
    v5->_transcriptions = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sausage"];
    bestRecognitionAlternatives = v5->_bestRecognitionAlternatives;
    v5->_bestRecognitionAlternatives = v13;

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  final = self->_final;
  v5 = a3;
  [v5 encodeBool:final forKey:@"final"];
  [v5 encodeBool:self->_stable forKey:@"stable"];
  [v5 encodeBool:self->_endOfUtterance forKey:@"endOfUtterance"];
  [v5 encodeObject:self->_locale forKey:@"locale"];
  [v5 encodeObject:self->_transcriptions forKey:@"transcriptions"];
  [v5 encodeObject:self->_bestRecognitionAlternatives forKey:@"sausage"];
}

@end