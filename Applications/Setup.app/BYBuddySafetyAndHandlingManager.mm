@interface BYBuddySafetyAndHandlingManager
- (BOOL)canShowShowSafetyAndHandlingCardUsing:(id)using;
- (BOOL)canShowShowSafetyAndHandlingFlowUsing:(id)using;
- (BOOL)hasSeenSafetyAndHandlingCard;
- (BYBuddySafetyAndHandlingManager)init;
- (BYBuddySafetyAndHandlingManager)initWithPreferences:(id)preferences;
- (void)persistStateForReboot;
- (void)registerUserWasPresentedWithSafetyAndHandlingCard;
- (void)resetState;
- (void)restoreStatePostReboot;
- (void)setHasSeenSafetyAndHandlingFlow:(BOOL)flow;
@end

@implementation BYBuddySafetyAndHandlingManager

- (BYBuddySafetyAndHandlingManager)initWithPreferences:(id)preferences
{
  v4 = (self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_languageCode);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_countryCode);
  *v5 = 0;
  v5[1] = 0;
  *(self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences) = preferences;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BuddySafetyAndHandlingManager();
  preferencesCopy = preferences;
  return [(BYBuddySafetyAndHandlingManager *)&v8 init];
}

- (void)setHasSeenSafetyAndHandlingFlow:(BOOL)flow
{
  v3 = *(self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  selfCopy = self;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v3 setObject:isa forKey:v6];
}

- (void)registerUserWasPresentedWithSafetyAndHandlingCard
{
  selfCopy = self;
  sub_10002A024();
}

- (BOOL)hasSeenSafetyAndHandlingCard
{
  v2 = *(self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  selfCopy = self;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 BOOLForKey:v4];

  return v2;
}

- (BOOL)canShowShowSafetyAndHandlingCardUsing:(id)using
{
  usingCopy = using;
  selfCopy = self;
  LOBYTE(self) = sub_10002A1D0();

  return self & 1;
}

- (BOOL)canShowShowSafetyAndHandlingFlowUsing:(id)using
{
  v4 = *(self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  usingCopy = using;
  selfCopy = self;
  v7 = String._bridgeToObjectiveC()();
  LOBYTE(v4) = [v4 BOOLForKey:v7];

  if (v4)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_10002AD44();
  }

  return v8 & 1;
}

- (BYBuddySafetyAndHandlingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)persistStateForReboot
{
  selfCopy = self;
  sub_10002A484();
}

- (void)restoreStatePostReboot
{
  selfCopy = self;
  sub_10002A64C();
}

- (void)resetState
{
  selfCopy = self;
  sub_10002AA14();
}

@end