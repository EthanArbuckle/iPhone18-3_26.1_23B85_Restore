@interface PlaybackController.MPCPlayer
- (_TtCC16PodcastsPlayback18PlaybackController9MPCPlayer)init;
- (void)engine:(id)a3 didFailToPlayFirstItem:(id)a4 withError:(id)a5;
- (void)engine:(id)a3 didFailToPlayItem:(id)a4 withError:(id)a5;
- (void)engine:(id)a3 didUpdatePlaybackPositionWithEvent:(id)a4;
- (void)engine:(id)a3 didUpdateRelativeVolume:(float)a4;
@end

@implementation PlaybackController.MPCPlayer

- (_TtCC16PodcastsPlayback18PlaybackController9MPCPlayer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)engine:(id)a3 didFailToPlayItem:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_3D13C(v11);
}

- (void)engine:(id)a3 didFailToPlayFirstItem:(id)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a4;
  v11 = a5;
  v10 = self;
  sub_3D310();
}

- (void)engine:(id)a3 didUpdatePlaybackPositionWithEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_3D4B8(v7);
}

- (void)engine:(id)a3 didUpdateRelativeVolume:(float)a4
{
  v4 = [objc_opt_self() defaultCenter];
  v5 = v4;
  if (qword_7CC90 != -1)
  {
    swift_once();
    v4 = v5;
  }

  [v4 postNotificationName:qword_7EF60 object:0];
}

@end