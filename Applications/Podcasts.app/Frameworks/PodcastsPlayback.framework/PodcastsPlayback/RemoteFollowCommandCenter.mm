@interface RemoteFollowCommandCenter
- (_TtC16PodcastsPlayback25RemoteFollowCommandCenter)init;
- (void)remoteSetPlaybackQueueCommand:(id)command completion:(id)completion;
@end

@implementation RemoteFollowCommandCenter

- (void)remoteSetPlaybackQueueCommand:(id)command completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  commandCopy = command;
  selfCopy = self;
  sub_189C8(commandCopy, selfCopy, v6);
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