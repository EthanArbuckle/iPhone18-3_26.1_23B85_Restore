@interface FaceTimeSpamReportManager
- (void)reportSpamWithCall:(id)call;
@end

@implementation FaceTimeSpamReportManager

- (void)reportSpamWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  FaceTimeSpamReportManager.reportSpam(call:)(callCopy);
}

@end