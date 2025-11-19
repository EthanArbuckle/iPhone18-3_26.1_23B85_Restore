@interface ARQLReplayObserver
- (_TtC11AssetViewer18ARQLReplayObserver)init;
- (void)replayConfigurationDidFinishReplaying:(id)a3;
@end

@implementation ARQLReplayObserver

- (void)replayConfigurationDidFinishReplaying:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC11AssetViewer18ARQLReplayObserver_callback);
  if (v3)
  {
    v4 = self;
    v5 = sub_24124AD38(v3);
    v3(v5);

    sub_2412186FC(v3);
  }
}

- (_TtC11AssetViewer18ARQLReplayObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end