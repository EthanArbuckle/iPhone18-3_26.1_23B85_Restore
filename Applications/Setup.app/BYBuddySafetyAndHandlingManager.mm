@interface BYBuddySafetyAndHandlingManager
- (BOOL)canShowShowSafetyAndHandlingCardUsing:(id)a3;
- (BOOL)canShowShowSafetyAndHandlingFlowUsing:(id)a3;
- (BOOL)hasSeenSafetyAndHandlingCard;
- (BYBuddySafetyAndHandlingManager)init;
- (BYBuddySafetyAndHandlingManager)initWithPreferences:(id)a3;
- (void)persistStateForReboot;
- (void)registerUserWasPresentedWithSafetyAndHandlingCard;
- (void)resetState;
- (void)restoreStatePostReboot;
- (void)setHasSeenSafetyAndHandlingFlow:(BOOL)a3;
@end

@implementation BYBuddySafetyAndHandlingManager

- (BYBuddySafetyAndHandlingManager)initWithPreferences:(id)a3
{
  v4 = (self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_languageCode);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_countryCode);
  *v5 = 0;
  v5[1] = 0;
  *(self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences) = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BuddySafetyAndHandlingManager();
  v6 = a3;
  return [(BYBuddySafetyAndHandlingManager *)&v8 init];
}

- (void)setHasSeenSafetyAndHandlingFlow:(BOOL)a3
{
  v3 = *(self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  v4 = self;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v3 setObject:isa forKey:v6];
}

- (void)registerUserWasPresentedWithSafetyAndHandlingCard
{
  v2 = self;
  sub_10002A024();
}

- (BOOL)hasSeenSafetyAndHandlingCard
{
  v2 = *(self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  v3 = self;
  v4 = String._bridgeToObjectiveC()();
  LOBYTE(v2) = [v2 BOOLForKey:v4];

  return v2;
}

- (BOOL)canShowShowSafetyAndHandlingCardUsing:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_10002A1D0();

  return self & 1;
}

- (BOOL)canShowShowSafetyAndHandlingFlowUsing:(id)a3
{
  v4 = *(self + OBJC_IVAR___BYBuddySafetyAndHandlingManager_preferences);
  v5 = a3;
  v6 = self;
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
  v2 = self;
  sub_10002A484();
}

- (void)restoreStatePostReboot
{
  v2 = self;
  sub_10002A64C();
}

- (void)resetState
{
  v2 = self;
  sub_10002AA14();
}

@end