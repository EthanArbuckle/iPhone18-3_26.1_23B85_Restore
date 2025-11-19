@interface LPYouTubeVideoView
- (LPYouTubeVideoView)initWithHost:(id)a3 video:(id)a4 style:(id)a5 posterFrame:(id)a6 posterFrameStyle:(id)a7 configuration:(id)a8;
- (id)createVideoPlayerView;
- (void)setAllowsUserInteractionWithVideoPlayer:(BOOL)a3;
- (void)setMuted:(BOOL)a3;
- (void)setPlaying:(BOOL)a3;
- (void)youTubePlayer:(id)a3 didChangeToFullScreen:(BOOL)a4;
- (void)youTubePlayer:(id)a3 didChangeToState:(int64_t)a4;
- (void)youTubePlayer:(id)a3 didReceiveError:(id)a4;
@end

@implementation LPYouTubeVideoView

- (LPYouTubeVideoView)initWithHost:(id)a3 video:(id)a4 style:(id)a5 posterFrame:(id)a6 posterFrameStyle:(id)a7 configuration:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v25.receiver = self;
  v25.super_class = LPYouTubeVideoView;
  v20 = [(LPVisualMediaView *)&v25 initWithHost:v14 media:v15 style:v16 posterFrame:v17 posterFrameStyle:v18 configuration:v19];
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

- (void)setMuted:(BOOL)a3
{
  v3 = a3;
  [(LPYouTubePlayerView *)self->_platformYouTubeView setMuted:?];

  [(LPVisualMediaView *)self didChangeMutedState:v3];
}

- (void)setPlaying:(BOOL)a3
{
  v3 = a3;
  if ([(LPVisualMediaView *)self isPlaying]!= a3)
  {
    [(LPVisualMediaView *)self swapVideoPlaceholderForPlaybackIfNeeded];
    platformYouTubeView = self->_platformYouTubeView;
    if (v3)
    {
      [(LPYouTubePlayerView *)platformYouTubeView play];
    }

    else
    {
      [(LPYouTubePlayerView *)platformYouTubeView pause];
    }

    [(LPVisualMediaView *)self setWaitingForPlayback:v3];
  }
}

- (id)createVideoPlayerView
{
  v3 = [(LPVisualMediaView *)self media];
  v4 = [v3 youTubeURL];
  v5 = [LPPresentationSpecializations youTubeVideoComponentsForEmbedURL:v4];

  [v5 startTime];
  if (v6 != 0.0)
  {
    [v5 startTime];
    [(LPYouTubePlayerView *)self->_platformYouTubeView setStartTime:?];
  }

  [(LPYouTubePlayerView *)self->_platformYouTubeView setMuted:1];
  platformYouTubeView = self->_platformYouTubeView;
  v8 = [v5 videoID];
  [(LPYouTubePlayerView *)platformYouTubeView loadVideoWithID:v8];

  v9 = self->_platformYouTubeView;
  v10 = v9;

  return v9;
}

- (void)setAllowsUserInteractionWithVideoPlayer:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = LPYouTubeVideoView;
  [(LPVisualMediaView *)&v5 setAllowsUserInteractionWithVideoPlayer:?];
  [(LPYouTubePlayerView *)self->_platformYouTubeView setUserInteractionEnabled:v3];
}

- (void)youTubePlayer:(id)a3 didChangeToState:(int64_t)a4
{
  if (![(LPVisualMediaView *)self hasEverPlayed]&& a4 == 2)
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

  [(LPVisualMediaView *)self didChangePlayingState:a4 == 2];
  if (a4 == 2)
  {
    [(LPVisualMediaView *)self setWaitingForPlayback:0];
    if (self->_allowingInteractionUntilPlaybackResumes)
    {
      self->_allowingInteractionUntilPlaybackResumes = 0;
      [(LPYouTubeVideoView *)self setAllowsUserInteractionWithVideoPlayer:0];
    }
  }

  else if (a4 == 1)
  {
    [(LPVisualMediaView *)self resetToPlaceholderView];
  }
}

- (void)youTubePlayer:(id)a3 didReceiveError:(id)a4
{
  v5 = a4;
  if ([v5 code] == 7)
  {
    [(LPVisualMediaView *)self didEncounterPossiblyTransientPlaybackError];
  }

  else
  {
    [(LPVisualMediaView *)self didEncounterPlaybackError];
  }
}

- (void)youTubePlayer:(id)a3 didChangeToFullScreen:(BOOL)a4
{
  [(LPVisualMediaView *)self setFullScreen:a4];
  if (a4)
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