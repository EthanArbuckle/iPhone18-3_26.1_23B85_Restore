@interface _LTSpeechRecognitionResult
- (_LTSpeechRecognitionResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSpeechRecognitionResult

- (_LTSpeechRecognitionResult)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = _LTSpeechRecognitionResult;
  v5 = [(_LTSpeechRecognitionResult *)&v18 init];
  if (v5)
  {
    v5->_final = [coderCopy decodeBoolForKey:@"final"];
    v5->_stable = [coderCopy decodeBoolForKey:@"stable"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v5->_endOfUtterance = [coderCopy decodeBoolForKey:@"endOfUtterance"];
    v8 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"transcriptions"];
    transcriptions = v5->_transcriptions;
    v5->_transcriptions = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sausage"];
    bestRecognitionAlternatives = v5->_bestRecognitionAlternatives;
    v5->_bestRecognitionAlternatives = v13;

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  final = self->_final;
  coderCopy = coder;
  [coderCopy encodeBool:final forKey:@"final"];
  [coderCopy encodeBool:self->_stable forKey:@"stable"];
  [coderCopy encodeBool:self->_endOfUtterance forKey:@"endOfUtterance"];
  [coderCopy encodeObject:self->_locale forKey:@"locale"];
  [coderCopy encodeObject:self->_transcriptions forKey:@"transcriptions"];
  [coderCopy encodeObject:self->_bestRecognitionAlternatives forKey:@"sausage"];
}

@end