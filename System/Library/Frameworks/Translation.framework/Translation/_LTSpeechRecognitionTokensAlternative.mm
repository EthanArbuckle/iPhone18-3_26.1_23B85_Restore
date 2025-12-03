@interface _LTSpeechRecognitionTokensAlternative
- (_LTSpeechRecognitionTokensAlternative)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSpeechRecognitionTokensAlternative

- (void)encodeWithCoder:(id)coder
{
  text = self->_text;
  coderCopy = coder;
  [coderCopy encodeObject:text forKey:@"text"];
  [coderCopy encodeInteger:self->_confidence forKey:@"confidence"];
  [coderCopy encodeBool:self->_lowConfidence forKey:@"lowConfidence"];
  [coderCopy encodeBool:self->_hasSpaceAfter forKey:@"spaceAfter"];
}

- (_LTSpeechRecognitionTokensAlternative)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _LTSpeechRecognitionTokensAlternative;
  v5 = [(_LTSpeechRecognitionTokensAlternative *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"text"];
    text = v5->_text;
    v5->_text = v6;

    v5->_confidence = [coderCopy decodeIntegerForKey:@"confidence"];
    v5->_lowConfidence = [coderCopy decodeBoolForKey:@"lowConfidence"];
    v5->_hasSpaceAfter = [coderCopy decodeBoolForKey:@"spaceAfter"];
    v8 = v5;
  }

  return v5;
}

@end