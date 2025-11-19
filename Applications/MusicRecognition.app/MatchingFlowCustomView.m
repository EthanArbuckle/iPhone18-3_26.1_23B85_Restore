@interface MatchingFlowCustomView
- (void)appleMusicButtonAction;
- (void)displayMatchedMediaItemAction;
@end

@implementation MatchingFlowCustomView

- (void)appleMusicButtonAction
{
  v3 = sub_100002D44(&qword_100142818);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_1000C8AF8(0, 0, v5, &unk_1000FB228, v9);
}

- (void)displayMatchedMediaItemAction
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_matchedMediaItem);
  if (v2)
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MusicRecognition22MatchingFlowCustomView_displayMatchedMediaItemHandler);
    v5 = self;
    v4 = v2;

    v3(v4);
  }
}

@end