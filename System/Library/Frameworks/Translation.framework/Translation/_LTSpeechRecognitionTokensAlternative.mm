@interface _LTSpeechRecognitionTokensAlternative
- (_LTSpeechRecognitionTokensAlternative)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTSpeechRecognitionTokensAlternative

- (void)encodeWithCoder:(id)a3
{
  text = self->_text;
  v5 = a3;
  [v5 encodeObject:text forKey:@"text"];
  [v5 encodeInteger:self->_confidence forKey:@"confidence"];
  [v5 encodeBool:self->_lowConfidence forKey:@"lowConfidence"];
  [v5 encodeBool:self->_hasSpaceAfter forKey:@"spaceAfter"];
}

- (_LTSpeechRecognitionTokensAlternative)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = _LTSpeechRecognitionTokensAlternative;
  v5 = [(_LTSpeechRecognitionTokensAlternative *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v5->_confidence = [v4 decodeIntegerForKey:@"confidence"];
    v5->_lowConfidence = [v4 decodeBoolForKey:@"lowConfidence"];
    v5->_hasSpaceAfter = [v4 decodeBoolForKey:@"spaceAfter"];
    v8 = v5;
  }

  return v5;
}

@end