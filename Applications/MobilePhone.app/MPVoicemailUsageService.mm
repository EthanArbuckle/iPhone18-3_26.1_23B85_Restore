@interface MPVoicemailUsageService
+ (MPVoicemailUsageService)shared;
- (MPVoicemailUsageService)init;
- (void)checkUsageAndPresentIfNeededWithHost:(id)a3;
@end

@implementation MPVoicemailUsageService

+ (MPVoicemailUsageService)shared
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static VoicemailUsageService.shared;

  return v3;
}

- (void)checkUsageAndPresentIfNeededWithHost:(id)a3
{
  v4 = a3;
  v5 = self;
  VoicemailUsageService.checkUsageAndPresentIfNeeded(host:)(v4);
}

- (MPVoicemailUsageService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end