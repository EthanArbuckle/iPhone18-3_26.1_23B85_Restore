@interface _SFSpeechRecognizerSpeechDetectorOptions
- (BOOL)isEqual:(id)a3;
- (_SFSpeechRecognizerSpeechDetectorOptions)initWithCoder:(id)a3;
- (_SFSpeechRecognizerSpeechDetectorOptions)initWithSensitivityLevel:(unint64_t)a3;
@end

@implementation _SFSpeechRecognizerSpeechDetectorOptions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else if ([(_SFSpeechRecognizerSpeechDetectorOptions *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_sensitivityLevel == v4->_sensitivityLevel;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_SFSpeechRecognizerSpeechDetectorOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _SFSpeechRecognizerSpeechDetectorOptions;
  v5 = [(_SFSpeechRecognizerSpeechDetectorOptions *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_sensitivityLevel"];
    v5->_sensitivityLevel = v6;
  }

  return v5;
}

- (_SFSpeechRecognizerSpeechDetectorOptions)initWithSensitivityLevel:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognizerSpeechDetectorOptions;
  result = [(_SFSpeechRecognizerSpeechDetectorOptions *)&v5 init];
  if (result)
  {
    result->_sensitivityLevel = a3;
  }

  return result;
}

@end