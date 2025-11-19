@interface FaceTimeSpamReportManager
- (void)reportSpamWithCall:(id)a3;
@end

@implementation FaceTimeSpamReportManager

- (void)reportSpamWithCall:(id)a3
{
  v4 = a3;
  v5 = self;
  FaceTimeSpamReportManager.reportSpam(call:)(v4);
}

@end