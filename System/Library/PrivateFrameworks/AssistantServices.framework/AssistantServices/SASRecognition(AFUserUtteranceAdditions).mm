@interface SASRecognition(AFUserUtteranceAdditions)
- (AFUserUtterance)af_userUtteranceValueWithRefId:()AFUserUtteranceAdditions sessionId:;
- (id)af_bestTextInterpretationWithRefId:()AFUserUtteranceAdditions sessionId:;
@end

@implementation SASRecognition(AFUserUtteranceAdditions)

- (id)af_bestTextInterpretationWithRefId:()AFUserUtteranceAdditions sessionId:
{
  v1 = [self af_userUtteranceValueWithRefId:? sessionId:?];
  bestTextInterpretation = [v1 bestTextInterpretation];

  return bestTextInterpretation;
}

- (AFUserUtterance)af_userUtteranceValueWithRefId:()AFUserUtteranceAdditions sessionId:
{
  v6 = a4;
  v7 = a3;
  v8 = [AFUserUtterance alloc];
  af_speechPhrases = [self af_speechPhrases];
  sentenceConfidence = [self sentenceConfidence];
  af_speechUtterances = [self af_speechUtterances];
  v12 = [self af_correctionContextWithRefId:v7 sessionId:v6];

  v13 = [(AFUserUtterance *)v8 initWithPhrases:af_speechPhrases sentenceConfidence:sentenceConfidence utterances:af_speechUtterances correctionIdentifier:v12];

  return v13;
}

@end