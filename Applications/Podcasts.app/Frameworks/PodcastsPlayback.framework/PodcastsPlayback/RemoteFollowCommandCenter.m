@interface RemoteFollowCommandCenter
- (_TtC16PodcastsPlayback25RemoteFollowCommandCenter)init;
- (void)remoteSetPlaybackQueueCommand:(id)a3 completion:(id)a4;
@end

@implementation RemoteFollowCommandCenter

- (void)remoteSetPlaybackQueueCommand:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_189C8(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC16PodcastsPlayback25RemoteFollowCommandCenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end