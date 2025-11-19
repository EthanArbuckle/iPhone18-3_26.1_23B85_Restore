@interface RCAnalyticsManager
- (_TtC10VoiceMemos18RCAnalyticsManager)init;
- (void)appWillTerminate;
- (void)sceneDidEnterBackground;
- (void)setupSessionManagerWithCompletionHandler:(id)a3;
- (void)updateSessionProperties;
- (void)userCapturedSecondLayer;
- (void)userEditedStudioVoiceSlider;
- (void)userEnabledSecondLayer;
- (void)userEnabledStudioVoice;
- (void)userPlayedVoiceMemo;
- (void)userViewedTranscription;
@end

@implementation RCAnalyticsManager

- (void)setupSessionManagerWithCompletionHandler:(id)a3
{
  v5 = sub_1000C773C(&unk_1002D1D90);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100243530;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100243D40;
  v13[5] = v12;
  v14 = self;
  sub_1001A8E50(0, 0, v8, &unk_100243540, v13);
}

- (void)sceneDidEnterBackground
{
  v2 = self;
  sub_1000EDEC8();
}

- (void)appWillTerminate
{
  v2 = self;
  sub_1000EE2C0();
}

- (void)updateSessionProperties
{
  v2 = self;
  sub_1000EE478();
}

- (_TtC10VoiceMemos18RCAnalyticsManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)userEnabledStudioVoice
{
  v2 = self;
  sub_1000EEA28();
}

- (void)userEditedStudioVoiceSlider
{
  v2 = self;
  sub_1000EEB40();
}

- (void)userCapturedSecondLayer
{
  v2 = self;
  sub_1000EECB8();
}

- (void)userEnabledSecondLayer
{
  v2 = self;
  sub_1000EECB8();
}

- (void)userViewedTranscription
{
  v2 = self;
  sub_1000EEE10();
}

- (void)userPlayedVoiceMemo
{
  v2 = self;
  sub_1000EEF28();
}

@end