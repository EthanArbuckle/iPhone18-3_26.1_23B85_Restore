@interface BuddyMultitaskingSelectionManager
- (BOOL)isFeatureApplicableToSetup;
- (BOOL)shouldShowFlow;
- (_TtC13BuddyMigrator33BuddyMultitaskingSelectionManager)init;
- (_TtC13BuddyMigrator33BuddyMultitaskingSelectionManager)initWithDeviceProvider:(id)provider preferences:(id)preferences;
- (_TtC13BuddyMigrator33BuddyMultitaskingSelectionManager)initWithDeviceProvider:(id)provider preferences:(id)preferences modeProvider:(id)modeProvider;
- (void)resetSettingsUsing:(id)using;
- (void)setCurrentMode:(int64_t)mode;
- (void)stashSettingUsing:(id)using;
- (void)updatePanePresented:(BOOL)presented;
@end

@implementation BuddyMultitaskingSelectionManager

- (void)setCurrentMode:(int64_t)mode
{
  v5 = OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_modeProvider;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_modeProvider);
  selfCopy = self;
  if ([v6 currentMultitaskingOption] != mode)
  {
    [*(&self->super.isa + v5) setCurrentMultitaskingOption:mode];
  }
}

- (_TtC13BuddyMigrator33BuddyMultitaskingSelectionManager)initWithDeviceProvider:(id)provider preferences:(id)preferences
{
  v7 = objc_allocWithZone(SBSBuddyMultitaskingFlow);
  swift_unknownObjectRetain();
  preferencesCopy = preferences;
  v9 = [v7 init];
  v10 = [(BuddyMultitaskingSelectionManager *)self initWithDeviceProvider:provider preferences:preferencesCopy modeProvider:v9];

  swift_unknownObjectRelease();
  return v10;
}

- (_TtC13BuddyMigrator33BuddyMultitaskingSelectionManager)initWithDeviceProvider:(id)provider preferences:(id)preferences modeProvider:(id)modeProvider
{
  *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_deviceProvider) = provider;
  *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_preferences) = preferences;
  *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_modeProvider) = modeProvider;
  swift_unknownObjectRetain_n();
  preferencesCopy = preferences;
  swift_unknownObjectRetain_n();
  v9 = preferencesCopy;
  currentMultitaskingOption = [modeProvider currentMultitaskingOption];
  *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_initialValue) = currentMultitaskingOption;
  v13.receiver = self;
  v13.super_class = type metadata accessor for BuddyMultitaskingSelectionManager();
  v11 = [(BuddyMultitaskingSelectionManager *)&v13 init];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v11;
}

- (BOOL)isFeatureApplicableToSetup
{
  selfCopy = self;
  v3 = sub_16038();

  return v3 & 1;
}

- (BOOL)shouldShowFlow
{
  selfCopy = self;
  v3 = sub_16234();

  return v3 & 1;
}

- (void)updatePanePresented:(BOOL)presented
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_preferences);
  selfCopy = self;
  isa = sub_193A0().super.super.isa;
  v6 = sub_19360();
  [v3 setObject:isa forKey:v6];
}

- (void)stashSettingUsing:(id)using
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_modeProvider);
  usingCopy = using;
  selfCopy = self;
  v6 = [objc_allocWithZone(NSNumber) initWithInteger:{objc_msgSend(v4, "currentMultitaskingOption")}];
  [usingCopy setIPadMultitaskingMode:v6];
}

- (void)resetSettingsUsing:(id)using
{
  usingCopy = using;
  selfCopy = self;
  [(BuddyMultitaskingSelectionManager *)usingCopy setIPadMultitaskingMode:0];
  v5 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_initialValue);
  v6 = OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_modeProvider;
  if ([*(&selfCopy->super.isa + OBJC_IVAR____TtC13BuddyMigrator33BuddyMultitaskingSelectionManager_modeProvider) currentMultitaskingOption] == v5)
  {
    v7 = usingCopy;
    usingCopy = selfCopy;
  }

  else
  {
    [*(&selfCopy->super.isa + v6) setCurrentMultitaskingOption:v5];
    v7 = selfCopy;
  }
}

- (_TtC13BuddyMigrator33BuddyMultitaskingSelectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end