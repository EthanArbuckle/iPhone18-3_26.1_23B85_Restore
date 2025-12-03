@interface _SFSpeechRecognizerSpeechDetectorOptions
- (BOOL)isEqual:(id)equal;
- (_SFSpeechRecognizerSpeechDetectorOptions)initWithCoder:(id)coder;
- (_SFSpeechRecognizerSpeechDetectorOptions)initWithSensitivityLevel:(unint64_t)level;
@end

@implementation _SFSpeechRecognizerSpeechDetectorOptions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else if ([(_SFSpeechRecognizerSpeechDetectorOptions *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_sensitivityLevel == equalCopy->_sensitivityLevel;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_SFSpeechRecognizerSpeechDetectorOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _SFSpeechRecognizerSpeechDetectorOptions;
  v5 = [(_SFSpeechRecognizerSpeechDetectorOptions *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_sensitivityLevel"];
    v5->_sensitivityLevel = v6;
  }

  return v5;
}

- (_SFSpeechRecognizerSpeechDetectorOptions)initWithSensitivityLevel:(unint64_t)level
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognizerSpeechDetectorOptions;
  result = [(_SFSpeechRecognizerSpeechDetectorOptions *)&v5 init];
  if (result)
  {
    result->_sensitivityLevel = level;
  }

  return result;
}

@end