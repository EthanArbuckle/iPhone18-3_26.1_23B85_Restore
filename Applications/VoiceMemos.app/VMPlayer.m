@interface VMPlayer
- (BOOL)activateAudioSessionForPlaybackAndReturnError:(id *)a3;
- (BOOL)playing;
- (BOOL)processingEnabled;
- (BOOL)silenceRemoverEnabled;
- (_TtC10VoiceMemos8VMPlayer)init;
- (_TtP10VoiceMemos16VMPlayerDelegate_)delegate;
- (float)targetRate;
- (id)audioEngineOutputNodeAccessQueue;
- (void)audioPlayerError:(id)a3;
- (void)audioPlayerIsPlayingChanged:(BOOL)a3;
- (void)pause;
- (void)play;
- (void)prepareItem:(id)a3 withCompletionHandler:(id)a4;
- (void)setProcessingEnabled:(BOOL)a3;
- (void)setSilenceRemoverEnabled:(BOOL)a3;
- (void)setTargetRate:(float)a3;
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
  v3 = self;
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
  v3 = self;
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

- (void)setTargetRate:(float)a3
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  v6 = self;
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
  (v5[10])(a3);
  swift_unknownObjectRelease();
}

- (void)play
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  v4 = self;
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
  v4 = self;
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

- (void)prepareItem:(id)a3 withCompletionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = self;
  v8[4] = sub_1000FE07C;
  v8[5] = v7;
  v9 = a3;
  v10 = self;
  v11 = v9;
  v12 = v10;

  sub_100117A38(v11, sub_100119A08, v8);
}

- (BOOL)processingEnabled
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  v3 = self;
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

- (void)setProcessingEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  v6 = self;
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
  (v5[6])(v3);
  swift_unknownObjectRelease();
}

- (BOOL)silenceRemoverEnabled
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  v3 = self;
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

- (void)setSilenceRemoverEnabled:(BOOL)a3
{
  v3 = a3;
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos8VMPlayer_playerType);
  v6 = self;
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
  (v5[3])(v3);
  swift_unknownObjectRelease();
}

- (id)audioEngineOutputNodeAccessQueue
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong audioEngineOutputNodeAccessQueue];
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)activateAudioSessionForPlaybackAndReturnError:(id *)a3
{
  v3 = self;
  sub_1001183C0();

  return 1;
}

- (void)audioPlayerError:(id)a3
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a3;
    v9 = self;
    v8 = _convertErrorToNSError(_:)();
    [v6 vmPlayerError:v8];

    swift_unknownObjectRelease();
  }
}

- (void)audioPlayerIsPlayingChanged:(BOOL)a3
{
  v3 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong isPlayingDidChange:v3];

    swift_unknownObjectRelease();
  }
}

@end