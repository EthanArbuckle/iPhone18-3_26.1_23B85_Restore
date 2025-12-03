@interface SASSpeechRecognized(AFUserUtteranceAdditions)
- (AFUserUtterance)af_userUtteranceValue;
- (id)af_bestTextInterpretation;
@end

@implementation SASSpeechRecognized(AFUserUtteranceAdditions)

- (id)af_bestTextInterpretation
{
  af_userUtteranceValue = [self af_userUtteranceValue];
  bestTextInterpretation = [af_userUtteranceValue bestTextInterpretation];

  return bestTextInterpretation;
}

- (AFUserUtterance)af_userUtteranceValue
{
  recognition = [self recognition];
  v3 = [AFUserUtterance alloc];
  af_speechPhrases = [recognition af_speechPhrases];
  sentenceConfidence = [recognition sentenceConfidence];
  af_speechUtterances = [recognition af_speechUtterances];
  af_correctionContext = [self af_correctionContext];
  v8 = [(AFUserUtterance *)v3 initWithPhrases:af_speechPhrases sentenceConfidence:sentenceConfidence utterances:af_speechUtterances correctionIdentifier:af_correctionContext];

  return v8;
}

@end