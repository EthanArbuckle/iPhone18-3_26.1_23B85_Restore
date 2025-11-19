@interface JourneyDrivenOnboardingStep
- (_TtC22SubscribePageExtension27JourneyDrivenOnboardingStep)init;
- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7;
- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6;
@end

@implementation JourneyDrivenOnboardingStep

- (void)engagement:(id)a3 didUpdateEngagementRequest:(id)a4 placement:(id)a5 serviceType:(id)a6 completion:(id)a7
{
  v10 = _Block_copy(a7);
  v11 = sub_100753094();
  v13 = v12;
  v14 = sub_100753094();
  v16 = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_10045EFD0(v17, a4, v11, v13, v14, v16);
  _Block_release(v10);
}

- (void)engagement:(id)a3 didUpdateRequest:(id)a4 placement:(id)a5 serviceType:(id)a6
{
  v9 = sub_100753094();
  v11 = v10;
  v12 = sub_100753094();
  v14 = v13;
  v15 = a3;
  v16 = a4;
  v17 = self;
  sub_10045E3A4(v15, a4, v9, v11, v12, v14);
}

- (_TtC22SubscribePageExtension27JourneyDrivenOnboardingStep)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end