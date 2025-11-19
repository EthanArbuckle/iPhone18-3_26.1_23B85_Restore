@interface BuddyMultitaskingSelectionManager
- (BOOL)isFeatureApplicableToSetup;
- (BOOL)shouldShowFlow;
- (_TtC5Setup33BuddyMultitaskingSelectionManager)init;
- (_TtC5Setup33BuddyMultitaskingSelectionManager)initWithDeviceProvider:(id)a3 preferences:(id)a4;
- (_TtC5Setup33BuddyMultitaskingSelectionManager)initWithDeviceProvider:(id)a3 preferences:(id)a4 modeProvider:(id)a5;
- (void)resetSettingsUsing:(id)a3;
- (void)setCurrentMode:(int64_t)a3;
- (void)stashSettingUsing:(id)a3;
- (void)updatePanePresented:(BOOL)a3;
@end

@implementation BuddyMultitaskingSelectionManager

- (void)setCurrentMode:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_modeProvider;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_modeProvider);
  v7 = self;
  if ([v6 currentMultitaskingOption] != a3)
  {
    [*(&self->super.isa + v5) setCurrentMultitaskingOption:a3];
  }
}

- (_TtC5Setup33BuddyMultitaskingSelectionManager)initWithDeviceProvider:(id)a3 preferences:(id)a4
{
  v7 = objc_allocWithZone(SBSBuddyMultitaskingFlow);
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = [v7 init];
  v10 = [(BuddyMultitaskingSelectionManager *)self initWithDeviceProvider:a3 preferences:v8 modeProvider:v9];

  swift_unknownObjectRelease();
  return v10;
}

- (_TtC5Setup33BuddyMultitaskingSelectionManager)initWithDeviceProvider:(id)a3 preferences:(id)a4 modeProvider:(id)a5
{
  *(&self->super.isa + OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_deviceProvider) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_preferences) = a4;
  *(&self->super.isa + OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_modeProvider) = a5;
  swift_unknownObjectRetain_n();
  v8 = a4;
  swift_unknownObjectRetain_n();
  v9 = v8;
  v10 = [a5 currentMultitaskingOption];
  *(&self->super.isa + OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_initialValue) = v10;
  v13.receiver = self;
  v13.super_class = type metadata accessor for BuddyMultitaskingSelectionManager();
  v11 = [(BuddyMultitaskingSelectionManager *)&v13 init];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v11;
}

- (BOOL)isFeatureApplicableToSetup
{
  v2 = self;
  v3 = sub_1000188B8();

  return v3 & 1;
}

- (BOOL)shouldShowFlow
{
  v2 = self;
  v3 = sub_100018B0C();

  return v3 & 1;
}

- (void)updatePanePresented:(BOOL)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_preferences);
  v4 = self;
  isa = Bool._bridgeToObjectiveC()().super.super.isa;
  v6 = String._bridgeToObjectiveC()();
  [v3 setObject:isa forKey:v6];
}

- (void)stashSettingUsing:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_modeProvider);
  v5 = a3;
  v7 = self;
  v6 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v4, "currentMultitaskingOption")}];
  [v5 setIPadMultitaskingMode:v6];
}

- (void)resetSettingsUsing:(id)a3
{
  v8 = a3;
  v4 = self;
  [(BuddyMultitaskingSelectionManager *)v8 setIPadMultitaskingMode:0];
  v5 = *(&v4->super.isa + OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_initialValue);
  v6 = OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_modeProvider;
  if ([*(&v4->super.isa + OBJC_IVAR____TtC5Setup33BuddyMultitaskingSelectionManager_modeProvider) currentMultitaskingOption] == v5)
  {
    v7 = v8;
    v8 = v4;
  }

  else
  {
    [*(&v4->super.isa + v6) setCurrentMultitaskingOption:v5];
    v7 = v4;
  }
}

- (_TtC5Setup33BuddyMultitaskingSelectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end