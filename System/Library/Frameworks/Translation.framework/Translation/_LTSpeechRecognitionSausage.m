@interface _LTSpeechRecognitionSausage
- (_LTSpeechRecognitionSausage)initWithCoder:(id)a3;
@end

@implementation _LTSpeechRecognitionSausage

- (_LTSpeechRecognitionSausage)initWithCoder:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = _LTSpeechRecognitionSausage;
  v5 = [(_LTSpeechRecognitionSausage *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"bins"];
    bins = v5->_bins;
    v5->_bins = v9;

    v11 = v5;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

@end