@interface HPRFSessionTrackerAppSettingsTipKitHelper
+ (void)sendWorkoutPlaylistSelectedTipEvent;
- (HPRFSessionTrackerAppSettingsTipKitHelper)init;
@end

@implementation HPRFSessionTrackerAppSettingsTipKitHelper

- (HPRFSessionTrackerAppSettingsTipKitHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TipKitHelper();
  return [(HPRFSessionTrackerAppSettingsTipKitHelper *)&v3 init];
}

+ (void)sendWorkoutPlaylistSelectedTipEvent
{
  discoverability = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  signals = [discoverability Signals];
  swift_unknownObjectRelease();
  source = [signals source];

  v3 = objc_allocWithZone(BMDiscoverabilitySignals);
  v4 = sub_22864();
  v5 = sub_22864();
  v6 = [v3 initWithContentIdentifier:v4 context:v5 osBuild:0 userInfo:0];

  [source sendEvent:v6];
  sub_22264();
}

@end