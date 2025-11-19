@interface HPRFSessionTrackerAppSettingsContext
- (HPRFSessionTrackerAppSettingsContext)init;
- (HPRFSessionTrackerAppSettingsContext)initWithWheelchairUseCache:(id)a3;
- (void)fetchSubscriptionStatusWithCompletion:(id)a3;
@end

@implementation HPRFSessionTrackerAppSettingsContext

- (HPRFSessionTrackerAppSettingsContext)initWithWheelchairUseCache:(id)a3
{
  v3 = a3;
  v4 = sub_21B58(v3);

  return v4;
}

- (void)fetchSubscriptionStatusWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_20218(sub_21B50, v5);
}

- (HPRFSessionTrackerAppSettingsContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end