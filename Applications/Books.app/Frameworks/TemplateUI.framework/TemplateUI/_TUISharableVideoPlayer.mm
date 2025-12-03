@interface _TUISharableVideoPlayer
- (TUIVideoViewPlayerHosting)activeHost;
- (_TUISharableVideoPlayer)initWithURL:(id)l videoId:(id)id;
- (id)description;
- (void)decrementHostCount;
@end

@implementation _TUISharableVideoPlayer

- (_TUISharableVideoPlayer)initWithURL:(id)l videoId:(id)id
{
  lCopy = l;
  idCopy = id;
  v13.receiver = self;
  v13.super_class = _TUISharableVideoPlayer;
  v8 = [(_TUISharableVideoPlayer *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_hostCount = 1;
    v10 = [[TUIVideoPlayer alloc] initWithUrl:lCopy videoId:idCopy];
    player = v9->_player;
    v9->_player = v10;

    v9->_triggerPlaybackEnabled = 1;
  }

  return v9;
}

- (void)decrementHostCount
{
  hostCount = self->_hostCount;
  v3 = hostCount < 1;
  v4 = hostCount - 1;
  if (!v3)
  {
    self->_hostCount = v4;
  }
}

- (id)description
{
  videoId = [(TUIVideoPlayer *)self->_player videoId];
  [(TUIVideoPlayer *)self->_player rate];
  v5 = [NSString stringWithFormat:@"<_TUISharableVideoPlayer: %p, videoId: %@, rate: %f, isPlaying: %i, triggerPlaybackEnabled: %i, isWithinVisibleBounds: %i>", self, videoId, v4, [(TUIVideoPlayer *)self->_player isPlaying], self->_triggerPlaybackEnabled, self->_isWithinVisibleBounds];

  return v5;
}

- (TUIVideoViewPlayerHosting)activeHost
{
  WeakRetained = objc_loadWeakRetained(&self->_activeHost);

  return WeakRetained;
}

@end