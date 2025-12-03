@interface AudioAssetView
- (void)audioDidFinishPlaying:(id)playing;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation AudioAssetView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000AA758();
}

- (void)removeFromSuperview
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_1003E9628(0, 0, v5, &unk_100955F88, v9);

  v10 = type metadata accessor for AudioAssetView();
  v11.receiver = selfCopy;
  v11.super_class = v10;
  [(AudioAssetView *)&v11 removeFromSuperview];
}

- (void)audioDidFinishPlaying:(id)playing
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100422110();

  (*(v5 + 8))(v7, v4);
}

@end