@interface SASSpeechFailure
- (id)ad_error;
@end

@implementation SASSpeechFailure

- (id)ad_error
{
  v2 = AFSiriSpeechErrorDomain;
  v3 = [(SASSpeechFailure *)self errorCode];

  return [NSError errorWithDomain:v2 code:v3 userInfo:0];
}

@end