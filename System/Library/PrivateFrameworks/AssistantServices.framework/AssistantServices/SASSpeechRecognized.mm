@interface SASSpeechRecognized
- (id)ad_endTime;
- (id)ad_leadingSilence;
- (id)ad_speechEndTime;
- (id)ad_trailingSilence;
- (id)description;
@end

@implementation SASSpeechRecognized

- (id)ad_endTime
{
  recognition = [(SASSpeechRecognized *)self recognition];
  phrases = [recognition phrases];
  lastObject = [phrases lastObject];
  interpretations = [lastObject interpretations];
  firstObject = [interpretations firstObject];
  tokens = [firstObject tokens];
  lastObject2 = [tokens lastObject];
  endTime = [lastObject2 endTime];

  return endTime;
}

- (id)ad_trailingSilence
{
  ad_endTime = [(SASSpeechRecognized *)self ad_endTime];
  [ad_endTime doubleValue];
  v5 = v4;
  ad_speechEndTime = [(SASSpeechRecognized *)self ad_speechEndTime];
  [ad_speechEndTime doubleValue];
  v8 = [NSNumber numberWithDouble:v5 - v7];

  return v8;
}

- (id)ad_speechEndTime
{
  recognition = [(SASSpeechRecognized *)self recognition];
  phrases = [recognition phrases];
  lastObject = [phrases lastObject];
  interpretations = [lastObject interpretations];
  firstObject = [interpretations firstObject];
  tokens = [firstObject tokens];
  lastObject2 = [tokens lastObject];
  silenceStartTime = [lastObject2 silenceStartTime];

  return silenceStartTime;
}

- (id)ad_leadingSilence
{
  recognition = [(SASSpeechRecognized *)self recognition];
  phrases = [recognition phrases];
  firstObject = [phrases firstObject];
  interpretations = [firstObject interpretations];
  firstObject2 = [interpretations firstObject];
  tokens = [firstObject2 tokens];
  firstObject3 = [tokens firstObject];
  startTime = [firstObject3 startTime];

  return startTime;
}

- (id)description
{
  v3 = [NSString alloc];
  v8.receiver = self;
  v8.super_class = SASSpeechRecognized;
  v4 = [(SASSpeechRecognized *)&v8 description];
  af_bestTextInterpretation = [(SASSpeechRecognized *)self af_bestTextInterpretation];
  v6 = [v3 initWithFormat:@"%@ Recognition Text: %@", v4, af_bestTextInterpretation];

  return v6;
}

@end