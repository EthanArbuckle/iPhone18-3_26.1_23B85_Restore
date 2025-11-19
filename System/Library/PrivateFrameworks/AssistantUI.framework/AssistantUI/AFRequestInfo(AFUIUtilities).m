@interface AFRequestInfo(AFUIUtilities)
- (BOOL)afui_isRemoteHeadsetActivation;
- (BOOL)afui_isRemoteVoiceActivation;
@end

@implementation AFRequestInfo(AFUIUtilities)

- (BOOL)afui_isRemoteHeadsetActivation
{
  v1 = [a1 speechRequestOptions];
  v2 = [v1 activationEvent];

  return (v2 & 0xFFFFFFFFFFFFFFFELL) == 14;
}

- (BOOL)afui_isRemoteVoiceActivation
{
  v1 = [a1 speechRequestOptions];
  v2 = [v1 activationEvent];

  return v2 == 8 || v2 == 15;
}

@end