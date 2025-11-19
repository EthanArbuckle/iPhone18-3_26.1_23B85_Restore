@interface VMPlayerItem
- (NSArray)trackVolumes;
- (VMPlaybackController)controller;
- (_TtC10VoiceMemos12VMPlayerItem)init;
- (double)currentTime;
- (void)seekToTime:(double)a3 completionHandler:(id)a4;
- (void)setLooping:(BOOL)a3;
- (void)setPlayableRangeEndTime:(double)a3;
- (void)setSpeechIsolatorValue:(float)a3;
- (void)setTrackVolumes:(id)a3;
@end

@implementation VMPlayerItem

- (VMPlaybackController)controller
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)seekToTime:(double)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = sub_100119398;
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v10 = self;
  sub_100118898(v9, v8, a3);
  sub_1000338B4(v9);
}

- (double)currentTime
{
  v2 = self;
  sub_100118AE4();
  v4 = v3;

  return v4;
}

- (void)setPlayableRangeEndTime:(double)a3
{
  v4 = self;
  sub_100118BDC(a3);
}

- (void)setLooping:(BOOL)a3
{
  v4 = self;
  sub_100118D80(a3);
}

- (NSArray)trackVolumes
{

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setTrackVolumes:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_100118F1C(v4);
}

- (void)setSpeechIsolatorValue:(float)a3
{
  *(self + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_speechIsolatorValue) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = self;
    sub_100118038(a3);
  }
}

- (_TtC10VoiceMemos12VMPlayerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end