@interface LPYouTubeVideoView
- (LPYouTubeVideoView)initWithHost:(id)host video:(id)video style:(id)style posterFrame:(id)frame posterFrameStyle:(id)frameStyle configuration:(id)configuration;
- (id)createVideoPlayerView;
- (void)setAllowsUserInteractionWithVideoPlayer:(BOOL)player;
- (void)setMuted:(BOOL)muted;
- (void)setPlaying:(BOOL)playing;
- (void)youTubePlayer:(id)player didChangeToFullScreen:(BOOL)screen;
- (void)youTubePlayer:(id)player didChangeToState:(int64_t)state;
- (void)youTubePlayer:(id)player didReceiveError:(id)error;
@end

@implementation LPYouTubeVideoView

- (LPYouTubeVideoView)initWithHost:(id)host video:(id)video style:(id)style posterFrame:(id)frame posterFrameStyle:(id)frameStyle configuration:(id)configuration
{
  hostCopy = host;
  videoCopy = video;
  styleCopy = style;
  frameCopy = frame;
  frameStyleCopy = frameStyle;
  configurationCopy = configuration;
  v25.receiver = self;
  v25.super_class = LPYouTubeVideoView;
  v20 = [(LPVisualMediaView *)&v25 initWithHost:hostCopy media:videoCopy style:styleCopy posterFrame:frameCopy posterFrameStyle:frameStyleCopy configuration:configurationCopy];
  if (v20)
  {
    v21 = objc_alloc_init(LPYouTubePlayerView);
    platformYouTubeView = v20->_platformYouTubeView;
    v20->_platformYouTubeView = v21;

    [(LPYouTubePlayerView *)v20->_platformYouTubeView setDelegate:v20];
    [(LPYouTubePlayerView *)v20->_platformYouTubeView setShowsControls:0];
    v23 = v20;
  }

  return v20;
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  [(LPYouTubePlayerView *)self->_platformYouTubeView setMuted:?];

  [(LPVisualMediaView *)self didChangeMutedState:mutedCopy];
}

- (void)setPlaying:(BOOL)playing
{
  playingCopy = playing;
  if ([(LPVisualMediaView *)self isPlaying]!= playing)
  {
    [(LPVisualMediaView *)self swapVideoPlaceholderForPlaybackIfNeeded];
    platformYouTubeView = self->_platformYouTubeView;
    if (playingCopy)
    {
      [(LPYouTubePlayerView *)platformYouTubeView play];
    }

    else
    {
      [(LPYouTubePlayerView *)platformYouTubeView pause];
    }

    [(LPVisualMediaView *)self setWaitingForPlayback:playingCopy];
  }
}

- (id)createVideoPlayerView
{
  media = [(LPVisualMediaView *)self media];
  youTubeURL = [media youTubeURL];
  v5 = [LPPresentationSpecializations youTubeVideoComponentsForEmbedURL:youTubeURL];

  [v5 startTime];
  if (v6 != 0.0)
  {
    [v5 startTime];
    [(LPYouTubePlayerView *)self->_platformYouTubeView setStartTime:?];
  }

  [(LPYouTubePlayerView *)self->_platformYouTubeView setMuted:1];
  platformYouTubeView = self->_platformYouTubeView;
  videoID = [v5 videoID];
  [(LPYouTubePlayerView *)platformYouTubeView loadVideoWithID:videoID];

  v9 = self->_platformYouTubeView;
  v10 = v9;

  return v9;
}

- (void)setAllowsUserInteractionWithVideoPlayer:(BOOL)player
{
  playerCopy = player;
  v5.receiver = self;
  v5.super_class = LPYouTubeVideoView;
  [(LPVisualMediaView *)&v5 setAllowsUserInteractionWithVideoPlayer:?];
  [(LPYouTubePlayerView *)self->_platformYouTubeView setUserInteractionEnabled:playerCopy];
}

- (void)youTubePlayer:(id)player didChangeToState:(int64_t)state
{
  if (![(LPVisualMediaView *)self hasEverPlayed]&& state == 2)
  {
    [(LPYouTubeVideoView *)self setAllowsUserInteractionWithVideoPlayer:1];
    v6 = dispatch_time(0, 3000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__LPYouTubeVideoView_youTubePlayer_didChangeToState___block_invoke;
    block[3] = &unk_1E7A35450;
    block[4] = self;
    dispatch_after(v6, MEMORY[0x1E69E96A0], block);
    [(LPVisualMediaView *)self setHasEverPlayed:1];
  }

  [(LPVisualMediaView *)self didChangePlayingState:state == 2];
  if (state == 2)
  {
    [(LPVisualMediaView *)self setWaitingForPlayback:0];
    if (self->_allowingInteractionUntilPlaybackResumes)
    {
      self->_allowingInteractionUntilPlaybackResumes = 0;
      [(LPYouTubeVideoView *)self setAllowsUserInteractionWithVideoPlayer:0];
    }
  }

  else if (state == 1)
  {
    [(LPVisualMediaView *)self resetToPlaceholderView];
  }
}

- (void)youTubePlayer:(id)player didReceiveError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] == 7)
  {
    [(LPVisualMediaView *)self didEncounterPossiblyTransientPlaybackError];
  }

  else
  {
    [(LPVisualMediaView *)self didEncounterPlaybackError];
  }
}

- (void)youTubePlayer:(id)player didChangeToFullScreen:(BOOL)screen
{
  [(LPVisualMediaView *)self setFullScreen:screen];
  if (screen)
  {

    [(LPVisualMediaView *)self fullScreenVideoDidPresent];
  }

  else
  {
    [(LPVisualMediaView *)self fullScreenVideoWillDismiss];
    [(LPVisualMediaView *)self fullScreenVideoDidDismiss];
    self->_allowingInteractionUntilPlaybackResumes = 1;

    [(LPYouTubeVideoView *)self setAllowsUserInteractionWithVideoPlayer:1];
  }
}

@end