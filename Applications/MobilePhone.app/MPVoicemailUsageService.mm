@interface MPVoicemailUsageService
+ (MPVoicemailUsageService)shared;
- (MPVoicemailUsageService)init;
- (void)checkUsageAndPresentIfNeededWithHost:(id)host;
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

- (void)checkUsageAndPresentIfNeededWithHost:(id)host
{
  hostCopy = host;
  selfCopy = self;
  VoicemailUsageService.checkUsageAndPresentIfNeeded(host:)(hostCopy);
}

- (MPVoicemailUsageService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end