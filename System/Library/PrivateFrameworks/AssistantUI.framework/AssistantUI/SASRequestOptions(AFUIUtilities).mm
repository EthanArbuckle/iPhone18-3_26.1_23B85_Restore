@interface SASRequestOptions(AFUIUtilities)
- (uint64_t)afui_isTVFollowUpHearstActivation;
@end

@implementation SASRequestOptions(AFUIUtilities)

- (uint64_t)afui_isTVFollowUpHearstActivation
{
  if ([self requestSource] != 9)
  {
    return 0;
  }

  originalRequestOptions = [self originalRequestOptions];
  requestInfo = [originalRequestOptions requestInfo];
  afui_isRemoteHeadsetActivation = [requestInfo afui_isRemoteHeadsetActivation];

  return afui_isRemoteHeadsetActivation;
}

@end