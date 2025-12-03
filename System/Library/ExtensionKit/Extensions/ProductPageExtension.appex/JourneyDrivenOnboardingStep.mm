@interface JourneyDrivenOnboardingStep
- (_TtC20ProductPageExtension27JourneyDrivenOnboardingStep)init;
- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion;
- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type;
@end

@implementation JourneyDrivenOnboardingStep

- (void)engagement:(id)engagement didUpdateEngagementRequest:(id)request placement:(id)placement serviceType:(id)type completion:(id)completion
{
  v10 = _Block_copy(completion);
  v11 = sub_10076FF9C();
  v13 = v12;
  v14 = sub_10076FF9C();
  v16 = v15;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_1005DABC0(engagementCopy, request, v11, v13, v14, v16);
  _Block_release(v10);
}

- (void)engagement:(id)engagement didUpdateRequest:(id)request placement:(id)placement serviceType:(id)type
{
  v9 = sub_10076FF9C();
  v11 = v10;
  v12 = sub_10076FF9C();
  v14 = v13;
  engagementCopy = engagement;
  requestCopy = request;
  selfCopy = self;
  sub_1005D9F94(engagementCopy, request, v9, v11, v12, v14);
}

- (_TtC20ProductPageExtension27JourneyDrivenOnboardingStep)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end