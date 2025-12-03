@interface JourneyDrivenOnboardingStep
- (_TtC22SubscribePageExtension27JourneyDrivenOnboardingStep)init;
- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
@end

@implementation JourneyDrivenOnboardingStep

- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = sub_100753094();
  v13 = v12;
  v14 = sub_100753094();
  v16 = v15;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_10045EFD0(engagementCopy, request, v11, v13, v14, v16);
  _Block_release(v10);
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = sub_100753094();
  v11 = v10;
  v12 = sub_100753094();
  v14 = v13;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_10045E3A4(engagementCopy, request, v9, v11, v12, v14);
}

- (_TtC22SubscribePageExtension27JourneyDrivenOnboardingStep)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end