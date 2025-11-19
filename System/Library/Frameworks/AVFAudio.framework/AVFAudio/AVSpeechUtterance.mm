@interface AVSpeechUtterance
+ (void)initialize;
- (AVSpeechUtterance)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVSpeechUtterance

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(AVSpeechUtterance *)self voice];
  [v4 setVoice:v5];

  v6 = [(AVSpeechUtterance *)self speechString];
  [v4 setSpeechString:v6];

  v7 = [(AVSpeechUtterance *)self attributedSpeechString];
  [v4 setAttributedSpeechString:v7];

  [(AVSpeechUtterance *)self rate];
  [v4 setRate:?];
  [(AVSpeechUtterance *)self pitchMultiplier];
  [v4 setPitchMultiplier:?];
  [(AVSpeechUtterance *)self volume];
  [v4 setVolume:?];
  [(AVSpeechUtterance *)self preUtteranceDelay];
  [v4 setPreUtteranceDelay:?];
  [(AVSpeechUtterance *)self postUtteranceDelay];
  [v4 setPostUtteranceDelay:?];
  return v4;
}

- (AVSpeechUtterance)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = AVSpeechUtterance;
  v5 = [(AVSpeechUtterance *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voice"];
    [(AVSpeechUtterance *)v5 setVoice:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"speechString"];
    [(AVSpeechUtterance *)v5 setSpeechString:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"attributedSpeechString"];
    [(AVSpeechUtterance *)v5 setAttributedSpeechString:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rate"];
    [v9 floatValue];
    [(AVSpeechUtterance *)v5 setRate:?];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pitchMultiplier"];
    [v10 floatValue];
    [(AVSpeechUtterance *)v5 setPitchMultiplier:?];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"volume"];
    [v11 floatValue];
    [(AVSpeechUtterance *)v5 setVolume:?];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preUtteranceDelay"];
    [v12 doubleValue];
    [(AVSpeechUtterance *)v5 setPreUtteranceDelay:?];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postUtteranceDelay"];
    [v13 doubleValue];
    [(AVSpeechUtterance *)v5 setPostUtteranceDelay:?];

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = [(AVSpeechUtterance *)self voice];
  [v17 encodeObject:v4 forKey:@"voice"];

  v5 = [(AVSpeechUtterance *)self speechString];
  [v17 encodeObject:v5 forKey:@"speechString"];

  v6 = [(AVSpeechUtterance *)self attributedSpeechString];
  [v17 encodeObject:v6 forKey:@"speechString"];

  v7 = MEMORY[0x1E696AD98];
  [(AVSpeechUtterance *)self rate];
  v8 = [v7 numberWithFloat:?];
  [v17 encodeObject:v8 forKey:@"rate"];

  v9 = MEMORY[0x1E696AD98];
  [(AVSpeechUtterance *)self pitchMultiplier];
  v10 = [v9 numberWithFloat:?];
  [v17 encodeObject:v10 forKey:@"pitchMultiplier"];

  v11 = MEMORY[0x1E696AD98];
  [(AVSpeechUtterance *)self volume];
  v12 = [v11 numberWithFloat:?];
  [v17 encodeObject:v12 forKey:@"volume"];

  v13 = MEMORY[0x1E696AD98];
  [(AVSpeechUtterance *)self preUtteranceDelay];
  v14 = [v13 numberWithDouble:?];
  [v17 encodeObject:v14 forKey:@"preUtteranceDelay"];

  v15 = MEMORY[0x1E696AD98];
  [(AVSpeechUtterance *)self postUtteranceDelay];
  v16 = [v15 numberWithDouble:?];
  [v17 encodeObject:v16 forKey:@"postUtteranceDelay"];
}

+ (void)initialize
{
  if (_AVLoadSpeechSynthesisImplementation(void)::onceToken != -1)
  {
    dispatch_once(&_AVLoadSpeechSynthesisImplementation(void)::onceToken, &__block_literal_global_5035);
  }
}

@end