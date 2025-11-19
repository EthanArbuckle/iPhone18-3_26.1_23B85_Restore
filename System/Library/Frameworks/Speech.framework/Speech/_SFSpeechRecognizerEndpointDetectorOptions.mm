@interface _SFSpeechRecognizerEndpointDetectorOptions
- (BOOL)isEqual:(id)a3;
- (_SFSpeechRecognizerEndpointDetectorOptions)initWithCoder:(id)a3;
- (_SFSpeechRecognizerEndpointDetectorOptions)initWithDetectAfterTime:(double)a3;
@end

@implementation _SFSpeechRecognizerEndpointDetectorOptions

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else if ([(_SFSpeechRecognizerEndpointDetectorOptions *)v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_detectAfterTime == v4->_detectAfterTime;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_SFSpeechRecognizerEndpointDetectorOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _SFSpeechRecognizerEndpointDetectorOptions;
  v5 = [(_SFSpeechRecognizerEndpointDetectorOptions *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_detectAfterTime"];
    v5->_detectAfterTime = v6;
  }

  return v5;
}

- (_SFSpeechRecognizerEndpointDetectorOptions)initWithDetectAfterTime:(double)a3
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognizerEndpointDetectorOptions;
  result = [(_SFSpeechRecognizerEndpointDetectorOptions *)&v5 init];
  if (result)
  {
    result->_detectAfterTime = a3;
  }

  return result;
}

@end