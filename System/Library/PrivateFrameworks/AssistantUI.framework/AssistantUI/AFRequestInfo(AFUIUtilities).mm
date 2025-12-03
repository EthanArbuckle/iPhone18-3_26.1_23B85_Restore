@interface AFRequestInfo(AFUIUtilities)
- (BOOL)afui_isRemoteHeadsetActivation;
- (BOOL)afui_isRemoteVoiceActivation;
@end

@implementation AFRequestInfo(AFUIUtilities)

- (BOOL)afui_isRemoteHeadsetActivation
{
  speechRequestOptions = [self speechRequestOptions];
  activationEvent = [speechRequestOptions activationEvent];

  return (activationEvent & 0xFFFFFFFFFFFFFFFELL) == 14;
}

- (BOOL)afui_isRemoteVoiceActivation
{
  speechRequestOptions = [self speechRequestOptions];
  activationEvent = [speechRequestOptions activationEvent];

  return activationEvent == 8 || activationEvent == 15;
}

@end