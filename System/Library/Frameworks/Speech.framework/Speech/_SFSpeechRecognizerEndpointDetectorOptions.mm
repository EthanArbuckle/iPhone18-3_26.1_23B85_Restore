@interface _SFSpeechRecognizerEndpointDetectorOptions
- (BOOL)isEqual:(id)equal;
- (_SFSpeechRecognizerEndpointDetectorOptions)initWithCoder:(id)coder;
- (_SFSpeechRecognizerEndpointDetectorOptions)initWithDetectAfterTime:(double)time;
@end

@implementation _SFSpeechRecognizerEndpointDetectorOptions

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else if ([(_SFSpeechRecognizerEndpointDetectorOptions *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = self->_detectAfterTime == equalCopy->_detectAfterTime;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_SFSpeechRecognizerEndpointDetectorOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _SFSpeechRecognizerEndpointDetectorOptions;
  v5 = [(_SFSpeechRecognizerEndpointDetectorOptions *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_detectAfterTime"];
    v5->_detectAfterTime = v6;
  }

  return v5;
}

- (_SFSpeechRecognizerEndpointDetectorOptions)initWithDetectAfterTime:(double)time
{
  v5.receiver = self;
  v5.super_class = _SFSpeechRecognizerEndpointDetectorOptions;
  result = [(_SFSpeechRecognizerEndpointDetectorOptions *)&v5 init];
  if (result)
  {
    result->_detectAfterTime = time;
  }

  return result;
}

@end