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
  v0 = [BiomeLibrary() Discoverability];
  swift_unknownObjectRelease();
  v1 = [v0 Signals];
  swift_unknownObjectRelease();
  v2 = [v1 source];

  v3 = objc_allocWithZone(BMDiscoverabilitySignals);
  v4 = sub_22864();
  v5 = sub_22864();
  v6 = [v3 initWithContentIdentifier:v4 context:v5 osBuild:0 userInfo:0];

  [v2 sendEvent:v6];
  sub_22264();
}

@end