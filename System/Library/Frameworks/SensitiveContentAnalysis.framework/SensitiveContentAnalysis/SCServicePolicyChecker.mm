@interface SCServicePolicyChecker
+ (id)isSensitiveContentWarningEnabledForBundleID:(id)d allServices:(id)services allApplications:(id)applications;
- (SCServicePolicyChecker)init;
@end

@implementation SCServicePolicyChecker

+ (id)isSensitiveContentWarningEnabledForBundleID:(id)d allServices:(id)services allApplications:(id)applications
{
  v5 = sub_1AEAF95BC();
  v7 = v6;
  sub_1AEA49EF8(0, &qword_1ED989AC0);
  v8 = sub_1AEAF951C();
  v9 = _s24SensitiveContentAnalysis20ServicePolicyCheckerV02isaB14WarningEnabled3for11allServices0K12ApplicationsSo8NSNumberCSgSS_SDySSAIGAKtFZ_0(v5, v7, v8);

  return v9;
}

- (SCServicePolicyChecker)init
{
  v3.receiver = self;
  v3.super_class = SCServicePolicyChecker;
  return [(SCServicePolicyChecker *)&v3 init];
}

@end