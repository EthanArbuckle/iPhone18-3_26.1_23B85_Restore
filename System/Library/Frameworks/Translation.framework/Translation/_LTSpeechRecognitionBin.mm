@interface _LTSpeechRecognitionBin
- (_LTSpeechRecognitionBin)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSpeechRecognitionBin

- (void)encodeWithCoder:(id)coder
{
  alternatives = self->_alternatives;
  coderCopy = coder;
  [coderCopy encodeObject:alternatives forKey:@"alternatives"];
  [coderCopy encodeInteger:self->_bestAlternativeIndex forKey:@"bestIndex"];
}

- (_LTSpeechRecognitionBin)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = _LTSpeechRecognitionBin;
  v5 = [(_LTSpeechRecognitionBin *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"alternatives"];
    alternatives = v5->_alternatives;
    v5->_alternatives = v9;

    v5->_bestAlternativeIndex = [coderCopy decodeIntegerForKey:@"bestIndex"];
    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

@end