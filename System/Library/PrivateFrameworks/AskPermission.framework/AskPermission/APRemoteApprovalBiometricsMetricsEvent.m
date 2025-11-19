@interface APRemoteApprovalBiometricsMetricsEvent
- (APRemoteApprovalBiometricsMetricsEvent)init;
@end

@implementation APRemoteApprovalBiometricsMetricsEvent

- (APRemoteApprovalBiometricsMetricsEvent)init
{
  v5.receiver = self;
  v5.super_class = APRemoteApprovalBiometricsMetricsEvent;
  v2 = [(APRemoteApprovalBiometricsMetricsEvent *)&v5 initWithTopic:@"xp_amp_payments"];
  v3 = v2;
  if (v2)
  {
    [(APRemoteApprovalBiometricsMetricsEvent *)v2 setEventVersion:&unk_2852E2378];
    [(APRemoteApprovalBiometricsMetricsEvent *)v3 setProperty:@"biometricsAnalyze" forBodyKey:@"actionType"];
    [(APRemoteApprovalBiometricsMetricsEvent *)v3 setProperty:@"SignIn" forBodyKey:@"dialogType"];
  }

  return v3;
}

@end