@interface SASSpeechFailure
- (id)ad_error;
@end

@implementation SASSpeechFailure

- (id)ad_error
{
  v2 = AFSiriSpeechErrorDomain;
  errorCode = [(SASSpeechFailure *)self errorCode];

  return [NSError errorWithDomain:v2 code:errorCode userInfo:0];
}

@end