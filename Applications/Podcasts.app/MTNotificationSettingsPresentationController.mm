@interface MTNotificationSettingsPresentationController
+ (_TtC8Podcasts44MTNotificationSettingsPresentationController)shared;
+ (void)setShared:(id)shared;
- (_TtC8Podcasts44MTNotificationSettingsPresentationController)init;
- (void)presentModalWithHighlightedPodcastUuid:(id)uuid;
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

+ (void)setShared:(id)shared
{
  v3 = qword_1005727E8;
  sharedCopy = shared;
  if (v3 != -1)
  {
    v6 = sharedCopy;
    swift_once();
    sharedCopy = v6;
  }

  v5 = qword_100593468;
  qword_100593468 = sharedCopy;
}

- (_TtC8Podcasts44MTNotificationSettingsPresentationController)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for MTNotificationSettingsPresentationController();
  return [(MTNotificationSettingsPresentationController *)&v4 init];
}

- (void)presentModalWithHighlightedPodcastUuid:(id)uuid
{
  if (uuid)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  MTNotificationSettingsPresentationController.presentModal(highlightedPodcastUuid:)(v8);
}

@end