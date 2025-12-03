@interface PlaybackController.MPCPlayer
- (_TtCC16PodcastsPlayback18PlaybackController9MPCPlayer)init;
- (void)engine:(id)engine didFailToPlayFirstItem:(id)item withError:(id)error;
- (void)engine:(id)engine didFailToPlayItem:(id)item withError:(id)error;
- (void)engine:(id)engine didUpdatePlaybackPositionWithEvent:(id)event;
- (void)engine:(id)engine didUpdateRelativeVolume:(float)volume;
@end

@implementation PlaybackController.MPCPlayer

- (_TtCC16PodcastsPlayback18PlaybackController9MPCPlayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)engine:(id)engine didFailToPlayItem:(id)item withError:(id)error
{
  engineCopy = engine;
  itemCopy = item;
  errorCopy = error;
  selfCopy = self;
  sub_3D13C(errorCopy);
}

- (void)engine:(id)engine didFailToPlayFirstItem:(id)item withError:(id)error
{
  engineCopy = engine;
  itemCopy = item;
  errorCopy = error;
  selfCopy = self;
  sub_3D310();
}

- (void)engine:(id)engine didUpdatePlaybackPositionWithEvent:(id)event
{
  engineCopy = engine;
  eventCopy = event;
  selfCopy = self;
  sub_3D4B8(eventCopy);
}

- (void)engine:(id)engine didUpdateRelativeVolume:(float)volume
{
  defaultCenter = [objc_opt_self() defaultCenter];
  v5 = defaultCenter;
  if (qword_7CC90 != -1)
  {
    swift_once();
    defaultCenter = v5;
  }

  [defaultCenter postNotificationName:qword_7EF60 object:0];
}

@end