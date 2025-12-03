@interface QLPHVideoScrubberView
- (BOOL)_isUserInteractingWithScrollView;
- (BOOL)_needsUpdate;
- (BOOL)_playerIsPlaying;
- (QLPHVideoScrubberFilmstripViewProvider)filmstripViewProvider;
- (QLPHVideoScrubberView)initWithFrame:(CGRect)frame;
- (QLPHVideoScrubberViewInteractionDelegate)interactionDelegate;
- (double)_lengthForDuration:(double)duration;
- (double)videoScrubberController:(id)controller lengthForDuration:(double)duration;
- (id)_currentAVAsset;
- (id)_currentVideoComposition;
- (void)_handleInteractionBegan;
- (void)_handleInteractionEndedAndTogglePlayState:(BOOL)state;
- (void)_handleTouchGesture:(id)gesture;
- (void)_invalidateFilmStripView;
- (void)_invalidateVideoScrubberController;
- (void)_setVideoScrubberController:(id)controller;
- (void)_updateFilmStripViewIfNeeded;
- (void)_updateIfNeeded;
- (void)_updatePlayheadFrame;
- (void)_updateScrollViewContentOffset;
- (void)_updateVideoscrubberControllerIfNeeded;
- (void)_updateVisibleRectOfFilmStripView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDecelerating:(id)decelerating;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)setEstimatedDuration:(double)duration;
- (void)setInteractionDelegate:(id)delegate;
- (void)setPlaceholderThumbnail:(id)thumbnail;
- (void)setPlayer:(id)player;
- (void)videoScrubberControllerDidUpdate:(id)update;
@end

@implementation QLPHVideoScrubberView

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (avPlayerObservationContext == context)
  {

    [(QLPHVideoScrubberView *)self _invalidateFilmStripView:path];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = QLPHVideoScrubberView;
    [(QLPHVideoScrubberView *)&v8 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)dealloc
{
  [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"status" context:avPlayerObservationContext];
  [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem" context:avPlayerObservationContext];
  [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem.videoComposition" context:avPlayerObservationContext];
  v3.receiver = self;
  v3.super_class = QLPHVideoScrubberView;
  [(QLPHVideoScrubberView *)&v3 dealloc];
}

- (QLPHVideoScrubberView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v17.receiver = self;
  v17.super_class = QLPHVideoScrubberView;
  v7 = [(QLPHVideoScrubberView *)&v17 initWithFrame:?];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277D759D8]) initWithFrame:{x, y, width, height}];
    [v8 setAlwaysBounceHorizontal:1];
    [v8 setShowsHorizontalScrollIndicator:0];
    [v8 setDelegate:v7];
    [v8 _setSupportsPointerDragScrolling:1];
    [(QLPHVideoScrubberView *)v7 _setScrollView:v8];
    [(QLPHVideoScrubberView *)v7 addSubview:v8];
    v9 = [QLPUPlayheadView alloc];
    v10 = [(QLPUPlayheadView *)v9 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    [(QLPHVideoScrubberView *)v7 _setPlayheadView:v10];
    [(QLPHVideoScrubberView *)v7 addSubview:v10];
    v11 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v7 action:sel__handleTapGesture_];
    [(QLPHVideoScrubberView *)v7 addGestureRecognizer:v11];
    gotLoadHelper_x8__OBJC_CLASS___PUTouchingGestureRecognizer(v12);
    v14 = [objc_alloc(*(v13 + 152)) initWithTarget:v7 action:sel__handleTouchGesture_];
    [v14 setDelegate:v7];
    [(QLPHVideoScrubberView *)v7 addGestureRecognizer:v14];
    v15 = [objc_alloc(MEMORY[0x277D75708]) initWithTarget:v7 action:sel__handleLongPressGesture_];
    [v11 maximumSingleTapDuration];
    [v15 setMinimumPressDuration:?];
    [(QLPHVideoScrubberView *)v7 addGestureRecognizer:v15];
  }

  return v7;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = QLPHVideoScrubberView;
  [(QLPHVideoScrubberView *)&v17 layoutSubviews];
  [(QLPHVideoScrubberView *)self _updateIfNeeded];
  [(QLPHVideoScrubberView *)self bounds];
  width = v18.size.width;
  v18.origin.x = *MEMORY[0x277CBF348];
  v18.origin.y = *(MEMORY[0x277CBF348] + 8);
  v19 = CGRectInset(v18, 0.0, 1.0);
  x = v19.origin.x;
  y = v19.origin.y;
  v6 = v19.size.width;
  height = v19.size.height;
  scrollView = [(QLPHVideoScrubberView *)self scrollView];
  [scrollView setFrame:{x, y, v6, height}];

  v9 = width * 0.5;
  _videoScrubberController = [(QLPHVideoScrubberView *)self _videoScrubberController];
  [_videoScrubberController length];
  v12 = v11;

  scrollView2 = [(QLPHVideoScrubberView *)self scrollView];
  [scrollView2 setContentInset:{0.0, v9, 0.0, v9}];

  _filmStripView = [(QLPHVideoScrubberView *)self _filmStripView];

  if (_filmStripView)
  {
    _filmStripView2 = [(QLPHVideoScrubberView *)self _filmStripView];
    [_filmStripView2 setFrame:{0.0, 0.0, v12, height}];
  }

  scrollView3 = [(QLPHVideoScrubberView *)self scrollView];
  [scrollView3 setContentSize:{v12, height}];

  [(QLPHVideoScrubberView *)self _updateScrollViewContentOffset];
  [(QLPHVideoScrubberView *)self _updatePlayheadFrame];
}

- (void)setInteractionDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  if (WeakRetained != obj)
  {
    v5 = objc_storeWeak(&self->_interactionDelegate, obj);
    p_interactionDelegateRespondsTo = &self->_interactionDelegateRespondsTo;
    self->_interactionDelegateRespondsTo.didBeginTouching = objc_opt_respondsToSelector() & 1;

    v7 = objc_loadWeakRetained(&self->_interactionDelegate);
    self->_interactionDelegateRespondsTo.didEndTouching = objc_opt_respondsToSelector() & 1;

    v8 = objc_loadWeakRetained(&self->_interactionDelegate);
    self->_interactionDelegateRespondsTo.willBeginDragging = objc_opt_respondsToSelector() & 1;

    v9 = objc_loadWeakRetained(&self->_interactionDelegate);
    self->_interactionDelegateRespondsTo.didEndDragging = objc_opt_respondsToSelector() & 1;

    v10 = objc_loadWeakRetained(&self->_interactionDelegate);
    self->_interactionDelegateRespondsTo.willBeginDecelerating = objc_opt_respondsToSelector() & 1;

    v11 = objc_loadWeakRetained(&self->_interactionDelegate);
    p_interactionDelegateRespondsTo->didEndDecelerating = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  player = self->_player;
  if (player != playerCopy)
  {
    v7 = playerCopy;
    [(AVPlayer *)player removeObserver:self forKeyPath:@"status" context:avPlayerObservationContext];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem" context:avPlayerObservationContext];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem.videoComposition" context:avPlayerObservationContext];
    objc_storeStrong(&self->_player, player);
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"status" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem.videoComposition" options:0 context:avPlayerObservationContext];
    [(QLPHVideoScrubberView *)self _invalidateVideoScrubberController];
    player = [(QLPHVideoScrubberView *)self _invalidateFilmStripView];
    playerCopy = v7;
  }

  MEMORY[0x2821F96F8](player, playerCopy);
}

- (void)setEstimatedDuration:(double)duration
{
  if (self->_estimatedDuration != duration)
  {
    self->_estimatedDuration = duration;
    [(QLPHVideoScrubberView *)self _invalidateVideoScrubberController];

    [(QLPHVideoScrubberView *)self _invalidateFilmStripView];
  }
}

- (void)_setVideoScrubberController:(id)controller
{
  controllerCopy = controller;
  videoScrubberController = self->__videoScrubberController;
  if (videoScrubberController != controllerCopy)
  {
    v7 = controllerCopy;
    [(PXVideoScrubberController *)videoScrubberController setDelegate:0];
    objc_storeStrong(&self->__videoScrubberController, controller);
    videoScrubberController = [(PXVideoScrubberController *)v7 setDelegate:self];
    controllerCopy = v7;
  }

  MEMORY[0x2821F96F8](videoScrubberController, controllerCopy);
}

- (void)setPlaceholderThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  if (self->_placeholderThumbnail != thumbnailCopy)
  {
    v6 = thumbnailCopy;
    objc_storeStrong(&self->_placeholderThumbnail, thumbnail);
    [(QLPHVideoScrubberView *)self _invalidateFilmStripView];
    thumbnailCopy = v6;
  }
}

- (id)_currentAVAsset
{
  player = [(QLPHVideoScrubberView *)self player];
  currentItem = [player currentItem];

  asset = [currentItem asset];

  return asset;
}

- (id)_currentVideoComposition
{
  player = [(QLPHVideoScrubberView *)self player];
  currentItem = [player currentItem];

  videoComposition = [currentItem videoComposition];

  return videoComposition;
}

- (BOOL)_isUserInteractingWithScrollView
{
  scrollView = [(QLPHVideoScrubberView *)self scrollView];
  if ([scrollView isDragging] & 1) != 0 || (objc_msgSend(scrollView, "isTracking"))
  {
    isDecelerating = 1;
  }

  else
  {
    isDecelerating = [scrollView isDecelerating];
  }

  return isDecelerating;
}

- (BOOL)_playerIsPlaying
{
  player = [(QLPHVideoScrubberView *)self player];
  [player rate];
  v4 = v3 > 0.0;

  return v4;
}

- (void)_handleTouchGesture:(id)gesture
{
  state = [gesture state];
  if (state == 3)
  {
    if (!self->_interactionDelegateRespondsTo.didEndTouching)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained didEndTouchingVideoScrubberView:self];
  }

  else
  {
    if (state != 1)
    {
      return;
    }

    [(QLPHVideoScrubberView *)self _handleInteractionBegan];
    if (!self->_interactionDelegateRespondsTo.didBeginTouching)
    {
      return;
    }

    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained didBeginTouchingVideoScrubberView:self];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  if ([(QLPHVideoScrubberView *)self _isUserInteractingWithScrollView])
  {
    [scrollCopy contentSize];
    v5 = v4;
    [scrollCopy contentInset];
    v7 = v6;
    [scrollCopy contentOffset];
    v9 = fmax(v7 + v8, 0.0);
    if (v5 < v9)
    {
      v9 = v5;
    }

    v10 = v9 / v5;
    _videoScrubberController = [(QLPHVideoScrubberView *)self _videoScrubberController];
    [_videoScrubberController setPlayheadProgress:v10];
  }

  [(QLPHVideoScrubberView *)self _updateVisibleRectOfFilmStripView];
  [(QLPHVideoScrubberView *)self _updatePlayheadFrame];
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  if (self->_interactionDelegateRespondsTo.willBeginDragging)
  {
    draggingCopy = dragging;
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self willBeginDraggingInScrollView:draggingCopy];
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  draggingCopy = dragging;
  if (!decelerate)
  {
    [(QLPHVideoScrubberView *)self _handleInteractionEndedAndTogglePlayState:0];
  }

  if (self->_interactionDelegateRespondsTo.didEndDragging)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self didEndDraggingInScrollView:draggingCopy];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)decelerating
{
  if (self->_interactionDelegateRespondsTo.willBeginDecelerating)
  {
    deceleratingCopy = decelerating;
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self willBeginDeceleratingInScrollView:deceleratingCopy];
  }
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  deceleratingCopy = decelerating;
  [(QLPHVideoScrubberView *)self _handleInteractionEndedAndTogglePlayState:0];
  if (self->_interactionDelegateRespondsTo.didEndDecelerating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self didEndDeceleratingInScrollView:deceleratingCopy];
  }
}

- (void)_handleInteractionBegan
{
  if (!self->_previousPlayState)
  {
    if ([(QLPHVideoScrubberView *)self _playerIsPlaying])
    {
      self->_previousPlayState = 1;
      player = [(QLPHVideoScrubberView *)self player];
      [player pause];
    }

    else
    {
      self->_previousPlayState = 2;
    }
  }
}

- (void)_handleInteractionEndedAndTogglePlayState:(BOOL)state
{
  previousPlayState = self->_previousPlayState;
  if (previousPlayState)
  {
    v5 = previousPlayState == 2;
    if (state)
    {
      v5 = previousPlayState != 2;
      if (previousPlayState != 1)
      {
LABEL_4:
        player = [(QLPHVideoScrubberView *)self player];
        [player play];
        goto LABEL_8;
      }
    }

    else if (previousPlayState == 1)
    {
      goto LABEL_4;
    }

    if (!v5)
    {
LABEL_9:
      self->_previousPlayState = 0;
      return;
    }

    player = [(QLPHVideoScrubberView *)self player];
    [player pause];
LABEL_8:

    goto LABEL_9;
  }
}

- (void)_invalidateFilmStripView
{
  [(QLPHVideoScrubberView *)self _setNeedsUpdateFilmStripView:1];

  [(QLPHVideoScrubberView *)self setNeedsLayout];
}

- (void)_invalidateVideoScrubberController
{
  [(QLPHVideoScrubberView *)self _setNeedsUpdateVideoScrubberController:1];

  [(QLPHVideoScrubberView *)self setNeedsLayout];
}

- (void)_updateFilmStripViewIfNeeded
{
  if ([(QLPHVideoScrubberView *)self _needsUpdateFilmStripView])
  {
    [(QLPHVideoScrubberView *)self _setNeedsUpdateFilmStripView:0];
    _filmStripView = [(QLPHVideoScrubberView *)self _filmStripView];

    if (!_filmStripView)
    {
      filmstripViewProvider = [(QLPHVideoScrubberView *)self filmstripViewProvider];
      v5 = [filmstripViewProvider createFilmstripViewForVideoScrubberView:self];
      v7 = v5;
      if (v5)
      {
        v8 = v5;
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___PUFilmstripView(v6);
        v10 = objc_alloc(*(v9 + 40));
        v8 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      }

      v11 = v8;

      [(QLPHVideoScrubberView *)self _setFilmStripView:v11];
      scrollView = [(QLPHVideoScrubberView *)self scrollView];
      [scrollView addSubview:v11];
    }

    _filmStripView2 = [(QLPHVideoScrubberView *)self _filmStripView];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      _filmStripView3 = [(QLPHVideoScrubberView *)self _filmStripView];
      _currentAVAsset = [(QLPHVideoScrubberView *)self _currentAVAsset];
      _currentVideoComposition = [(QLPHVideoScrubberView *)self _currentVideoComposition];
      [_filmStripView3 setAsset:_currentAVAsset videoComposition:_currentVideoComposition];
    }

    _filmStripView4 = [(QLPHVideoScrubberView *)self _filmStripView];
    _currentAVAsset2 = [(QLPHVideoScrubberView *)self _currentAVAsset];
    [_filmStripView4 setAsset:_currentAVAsset2];

    _filmStripView5 = [(QLPHVideoScrubberView *)self _filmStripView];
    placeholderThumbnail = [(QLPHVideoScrubberView *)self placeholderThumbnail];
    [_filmStripView5 setPlaceholderImage:placeholderThumbnail];

    [(QLPHVideoScrubberView *)self _updateVisibleRectOfFilmStripView];
  }
}

- (void)_updateVideoscrubberControllerIfNeeded
{
  if (![(QLPHVideoScrubberView *)self _needsUpdateVideoScrubberController])
  {
    return;
  }

  [(QLPHVideoScrubberView *)self _setNeedsUpdateVideoScrubberController:0];
  player = [(QLPHVideoScrubberView *)self player];
  _videoScrubberController = [(QLPHVideoScrubberView *)self _videoScrubberController];
  if (player)
  {
    target = [_videoScrubberController target];
    videoPlayer = [target videoPlayer];
    if (videoPlayer != player)
    {

LABEL_8:
      [(QLPHVideoScrubberView *)self estimatedDuration];
      v11 = v10;
      gotLoadHelper_x8__OBJC_CLASS___PXSimpleVideoScrubberControllerTarget(v10);
      v13 = [objc_alloc(*(v12 + 3112)) initWithVideoPlayer:player];
      gotLoadHelper_x8__OBJC_CLASS___PXVideoScrubberController(v14);
      v16 = [objc_alloc(*(v15 + 3144)) initWithTarget:v13 estimatedDuration:v11];
      [(QLPHVideoScrubberView *)self _setVideoScrubberController:v16];

      goto LABEL_9;
    }

    [_videoScrubberController estimatedDuration];
    v7 = v6;
    [(QLPHVideoScrubberView *)self estimatedDuration];
    v9 = v8;

    if (v7 != v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    [(QLPHVideoScrubberView *)self _setVideoScrubberController:0];
  }

LABEL_9:
}

- (BOOL)_needsUpdate
{
  if ([(QLPHVideoScrubberView *)self _needsUpdateFilmStripView])
  {
    return 1;
  }

  return [(QLPHVideoScrubberView *)self _needsUpdateVideoScrubberController];
}

- (void)_updateIfNeeded
{
  if ([(QLPHVideoScrubberView *)self _needsUpdate])
  {
    [(QLPHVideoScrubberView *)self _updateVideoscrubberControllerIfNeeded];

    [(QLPHVideoScrubberView *)self _updateFilmStripViewIfNeeded];
  }
}

- (void)_updateVisibleRectOfFilmStripView
{
  scrollView = [(QLPHVideoScrubberView *)self scrollView];
  [scrollView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = *MEMORY[0x277CBF3A0];
  v11 = *(MEMORY[0x277CBF3A0] + 8);
  v12 = v7 + v5;
  if (v5 <= 0.0)
  {
    v5 = *MEMORY[0x277CBF3A0];
    v7 = v12;
  }

  _filmStripView = [(QLPHVideoScrubberView *)self _filmStripView];
  [_filmStripView setVisibleRect:{v5, v11, v7, v9}];
}

- (void)_updateScrollViewContentOffset
{
  scrollView = [(QLPHVideoScrubberView *)self scrollView];
  _videoScrubberController = [(QLPHVideoScrubberView *)self _videoScrubberController];
  [_videoScrubberController playheadProgress];
  v5 = v4;

  [scrollView contentSize];
  v7 = v5 * v6;
  [scrollView contentInset];
  [scrollView setContentOffset:{v7 - v8, 0.0}];
}

- (void)_updatePlayheadFrame
{
  scrollView = [(QLPHVideoScrubberView *)self scrollView];
  [scrollView frame];
  v5 = v4;
  v7 = v6;

  scrollView2 = [(QLPHVideoScrubberView *)self scrollView];
  [scrollView2 contentSize];
  v9 = v8;
  [scrollView2 contentInset];
  v11 = v10;
  [scrollView2 contentOffset];
  v13 = v11 + v12;
  v14 = v9 - v13;
  if (v13 <= v9)
  {
    v14 = 0.0;
  }

  if (v13 < 0.0)
  {
    v15 = 0.0 - v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v5 * 0.5 - v7 * 0.5 * 0.5 + v15;
  _playheadView = [(QLPHVideoScrubberView *)self _playheadView];
  [_playheadView setFrame:{v16, 0.0, v7 * 0.5, v7 + 2.0}];
}

- (double)videoScrubberController:(id)controller lengthForDuration:(double)duration
{
  [(QLPHVideoScrubberView *)self estimatedDuration:controller];

  [(QLPHVideoScrubberView *)self _lengthForDuration:?];
  return result;
}

- (double)_lengthForDuration:(double)duration
{
  if (duration < 1.0)
  {
    duration = 1.0;
  }

  if (duration >= 2.0)
  {
    durationCopy = duration;
    v3 = log2f(durationCopy);
  }

  else
  {
    v3 = duration * 0.5;
  }

  return v3 * 150.0;
}

- (void)videoScrubberControllerDidUpdate:(id)update
{
  scrollView = [(QLPHVideoScrubberView *)self scrollView];
  if (([scrollView isDragging] & 1) == 0 && (objc_msgSend(scrollView, "isTracking") & 1) == 0 && (objc_msgSend(scrollView, "isDecelerating") & 1) == 0)
  {
    [(QLPHVideoScrubberView *)self _updateScrollViewContentOffset];
  }
}

- (QLPHVideoScrubberViewInteractionDelegate)interactionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);

  return WeakRetained;
}

- (QLPHVideoScrubberFilmstripViewProvider)filmstripViewProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filmstripViewProvider);

  return WeakRetained;
}

@end