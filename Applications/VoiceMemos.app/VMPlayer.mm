@interface VMPlayer
- (BOOL)activateAudioSessionForPlaybackAndReturnError:(id *)error;
- (BOOL)playing;
- (BOOL)processingEnabled;
- (BOOL)silenceRemoverEnabled;
- (_TtC10VoiceMemos8VMPlayer)init;
- (_TtP10VoiceMemos16VMPlayerDelegate_)delegate;
- (float)targetRate;
- (id)audioEngineOutputNodeAccessQueue;
- (void)audioPlayerError:(id)error;
- (void)audioPlayerIsPlayingChanged:(BOOL)changed;
- (void)pause;
- (void)play;
- (void)prepareItem:(id)item withCompletionHandler:(id)handler;
- (void)setProcessingEnabled:(BOOL)enabled;
- (void)setSilenceRemoverEnabled:(BOOL)enabled;
- (void)setTargetRate:(float)rate;
@end

@implementation VMPlayer

- (_TtC10VoiceMemos8VMPlayer)init
{
  *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType) = 0;
  *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___standardPlayer) = 0;
  *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer____lazy_storage___spatialPlayer) = 0;
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_currentItem) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for VMPlayer();
  return [(VMPlayer *)&v4 init];
}

- (BOOL)playing
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  selfCopy = self;
  if (v2)
  {
    sub_100116F94();
    v4 = &off_100295598;
  }

  else
  {
    sub_100016B60();
    v4 = &off_10028D9E8;
  }

  swift_getObjectType();
  v5 = (v4[1])();

  swift_unknownObjectRelease();
  return v5 & 1;
}

- (_TtP10VoiceMemos16VMPlayerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (float)targetRate
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  selfCopy = self;
  if (v2)
  {
    sub_100116F94();
    v4 = &off_100295598;
  }

  else
  {
    sub_100016B60();
    v4 = &off_10028D9E8;
  }

  swift_getObjectType();
  v5 = (v4[9])();

  swift_unknownObjectRelease();
  return v5;
}

- (void)setTargetRate:(float)rate
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  selfCopy = self;
  if (v4)
  {
    sub_100116F94();
    v5 = &off_100295598;
  }

  else
  {
    sub_100016B60();
    v5 = &off_10028D9E8;
  }

  swift_getObjectType();
  (v5[10])(rate);
  swift_unknownObjectRelease();
}

- (void)play
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  selfCopy = self;
  if (v2)
  {
    sub_100116F94();
    v3 = &off_100295598;
  }

  else
  {
    sub_100016B60();
    v3 = &off_10028D9E8;
  }

  swift_getObjectType();
  (v3[18])();
  swift_unknownObjectRelease();
}

- (void)pause
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  selfCopy = self;
  if (v2)
  {
    sub_100116F94();
    v3 = &off_100295598;
  }

  else
  {
    sub_100016B60();
    v3 = &off_10028D9E8;
  }

  swift_getObjectType();
  (v3[19])();
  swift_unknownObjectRelease();
}

- (void)prepareItem:(id)item withCompletionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = item;
  v8[3] = self;
  v8[4] = sub_1000FE07C;
  v8[5] = v7;
  itemCopy = item;
  selfCopy = self;
  v11 = itemCopy;
  v12 = selfCopy;

  sub_100117A38(v11, sub_100119A08, v8);
}

- (BOOL)processingEnabled
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  selfCopy = self;
  if (v2)
  {
    sub_100116F94();
    v4 = &off_100295598;
  }

  else
  {
    sub_100016B60();
    v4 = &off_10028D9E8;
  }

  swift_getObjectType();
  v5 = (v4[5])();

  swift_unknownObjectRelease();
  return v5 & 1;
}

- (void)setProcessingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  selfCopy = self;
  if (v4)
  {
    sub_100116F94();
    v5 = &off_100295598;
  }

  else
  {
    sub_100016B60();
    v5 = &off_10028D9E8;
  }

  swift_getObjectType();
  (v5[6])(enabledCopy);
  swift_unknownObjectRelease();
}

- (BOOL)silenceRemoverEnabled
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  selfCopy = self;
  if (v2)
  {
    sub_100116F94();
    v4 = &off_100295598;
  }

  else
  {
    sub_100016B60();
    v4 = &off_10028D9E8;
  }

  swift_getObjectType();
  v5 = (v4[2])();

  swift_unknownObjectRelease();
  return v5 & 1;
}

- (void)setSilenceRemoverEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  selfCopy = self;
  if (v4)
  {
    sub_100116F94();
    v5 = &off_100295598;
  }

  else
  {
    sub_100016B60();
    v5 = &off_10028D9E8;
  }

  swift_getObjectType();
  (v5[3])(enabledCopy);
  swift_unknownObjectRelease();
}

- (id)audioEngineOutputNodeAccessQueue
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    audioEngineOutputNodeAccessQueue = [Strong audioEngineOutputNodeAccessQueue];
    swift_unknownObjectRelease();
  }

  else
  {
    audioEngineOutputNodeAccessQueue = 0;
  }

  return audioEngineOutputNodeAccessQueue;
}

- (BOOL)activateAudioSessionForPlaybackAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1001183C0();

  return 1;
}

- (void)audioPlayerError:(id)error
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    errorCopy = error;
    selfCopy = self;
    v8 = _convertErrorToNSError(_:)();
    [v6 vmPlayerError:v8];

    swift_unknownObjectRelease();
  }
}

- (void)audioPlayerIsPlayingChanged:(BOOL)changed
{
  changedCopy = changed;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong isPlayingDidChange:changedCopy];

    swift_unknownObjectRelease();
  }
}

@end