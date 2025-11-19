@interface APRemoteApprovalPasswordEntryMetricsEvent
- (APRemoteApprovalPasswordEntryMetricsEvent)init;
@end

@implementation APRemoteApprovalPasswordEntryMetricsEvent

- (APRemoteApprovalPasswordEntryMetricsEvent)init
{
  v5.receiver = self;
  v5.super_class = APRemoteApprovalPasswordEntryMetricsEvent;
  v2 = [(APRemoteApprovalPasswordEntryMetricsEvent *)&v5 initWithTopic:@"xp_amp_payments"];
  v3 = v2;
  if (v2)
  {
    [(APRemoteApprovalPasswordEntryMetricsEvent *)v2 setEventVersion:&unk_2852E2390];
    [(APRemoteApprovalPasswordEntryMetricsEvent *)v3 setProperty:@"OkCancel" forBodyKey:@"dialogType"];
    [(APRemoteApprovalPasswordEntryMetricsEvent *)v3 setProperty:@"Sign in to Approve" forBodyKey:@"title"];
    [(APRemoteApprovalPasswordEntryMetricsEvent *)v3 setProperty:&unk_2852E23A8 forBodyKey:@"options"];
  }

  return v3;
}

@end