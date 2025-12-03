@interface HeadphoneAudioNotificationModel
+ (_TtC6Bridge31HeadphoneAudioNotificationModel)shared;
- (_TtC6Bridge31HeadphoneAudioNotificationModel)init;
- (void)setData:(id)data;
@end

@implementation HeadphoneAudioNotificationModel

+ (_TtC6Bridge31HeadphoneAudioNotificationModel)shared
{
  if (qword_1002BDB20 != -1)
  {
    swift_once();
  }

  v3 = static HeadphoneAudioNotificationModel.shared;

  return v3;
}

- (_TtC6Bridge31HeadphoneAudioNotificationModel)init
{
  swift_beginAccess();
  v5 = &_swiftEmptyArrayStorage;
  sub_1001379C4(&qword_1002BC2D0);
  Published.init(initialValue:)();
  swift_endAccess();
  v4.receiver = self;
  v4.super_class = type metadata accessor for HeadphoneAudioNotificationModel();
  return [(HeadphoneAudioNotificationModel *)&v4 init];
}

- (void)setData:(id)data
{
  sub_1001379C4(&qword_1002BC338);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  HeadphoneAudioNotificationModel.setData(_:)(v4);
}

@end