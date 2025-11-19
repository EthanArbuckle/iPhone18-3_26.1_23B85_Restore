@interface MTNotificationSettingsPresentationController
+ (_TtC8Podcasts44MTNotificationSettingsPresentationController)shared;
+ (void)setShared:(id)a3;
- (_TtC8Podcasts44MTNotificationSettingsPresentationController)init;
- (void)presentModalWithHighlightedPodcastUuid:(id)a3;
@end

@implementation MTNotificationSettingsPresentationController

+ (_TtC8Podcasts44MTNotificationSettingsPresentationController)shared
{
  if (qword_1005727E8 != -1)
  {
    swift_once();
  }

  v3 = qword_100593468;

  return v3;
}

+ (void)setShared:(id)a3
{
  v3 = qword_1005727E8;
  v4 = a3;
  if (v3 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  v5 = qword_100593468;
  qword_100593468 = v4;
}

- (_TtC8Podcasts44MTNotificationSettingsPresentationController)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MTNotificationSettingsPresentationController();
  return [(MTNotificationSettingsPresentationController *)&v4 init];
}

- (void)presentModalWithHighlightedPodcastUuid:(id)a3
{
  if (a3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  MTNotificationSettingsPresentationController.presentModal(highlightedPodcastUuid:)(v8);
}

@end