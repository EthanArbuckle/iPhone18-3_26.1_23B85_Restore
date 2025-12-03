@interface VMPlayerItem
- (NSArray)trackVolumes;
- (VMPlaybackController)controller;
- (_TtC10VoiceMemos12VMPlayerItem)init;
- (double)currentTime;
- (void)seekToTime:(double)time completionHandler:(id)handler;
- (void)setLooping:(BOOL)looping;
- (void)setPlayableRangeEndTime:(double)time;
- (void)setSpeechIsolatorValue:(float)value;
- (void)setTrackVolumes:(id)volumes;
@end

@implementation VMPlayerItem

- (VMPlaybackController)controller
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)seekToTime:(double)time completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
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

  selfCopy = self;
  sub_100118898(v9, v8, time);
  sub_1000338B4(v9);
}

- (double)currentTime
{
  selfCopy = self;
  sub_100118AE4();
  v4 = v3;

  return v4;
}

- (void)setPlayableRangeEndTime:(double)time
{
  selfCopy = self;
  sub_100118BDC(time);
}

- (void)setLooping:(BOOL)looping
{
  selfCopy = self;
  sub_100118D80(looping);
}

- (NSArray)trackVolumes
{

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setTrackVolumes:(id)volumes
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_100118F1C(v4);
}

- (void)setSpeechIsolatorValue:(float)value
{
  *(self + OBJC_IVAR____TtC10VoiceMemos12VMPlayerItem_speechIsolatorValue) = value;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    selfCopy = self;
    sub_100118038(value);
  }
}

- (_TtC10VoiceMemos12VMPlayerItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end