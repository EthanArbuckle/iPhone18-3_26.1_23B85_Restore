@interface HPRFSessionTrackerAppSettingsContext
- (HPRFSessionTrackerAppSettingsContext)init;
- (HPRFSessionTrackerAppSettingsContext)initWithWheelchairUseCache:(id)cache;
- (void)fetchSubscriptionStatusWithCompletion:(id)completion;
@end

@implementation HPRFSessionTrackerAppSettingsContext

- (HPRFSessionTrackerAppSettingsContext)initWithWheelchairUseCache:(id)cache
{
  cacheCopy = cache;
  v4 = sub_21B58(cacheCopy);

  return v4;
}

- (void)fetchSubscriptionStatusWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_20218(sub_21B50, v5);
}

- (HPRFSessionTrackerAppSettingsContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end