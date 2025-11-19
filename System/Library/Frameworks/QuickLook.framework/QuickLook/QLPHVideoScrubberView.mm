@interface QLPHVideoScrubberView
- (BOOL)_isUserInteractingWithScrollView;
- (BOOL)_needsUpdate;
- (BOOL)_playerIsPlaying;
- (QLPHVideoScrubberFilmstripViewProvider)filmstripViewProvider;
- (QLPHVideoScrubberView)initWithFrame:(CGRect)a3;
- (QLPHVideoScrubberViewInteractionDelegate)interactionDelegate;
- (double)_lengthForDuration:(double)a3;
- (double)videoScrubberController:(id)a3 lengthForDuration:(double)a4;
- (id)_currentAVAsset;
- (id)_currentVideoComposition;
- (void)_handleInteractionBegan;
- (void)_handleInteractionEndedAndTogglePlayState:(BOOL)a3;
- (void)_handleTouchGesture:(id)a3;
- (void)_invalidateFilmStripView;
- (void)_invalidateVideoScrubberController;
- (void)_setVideoScrubberController:(id)a3;
- (void)_updateFilmStripViewIfNeeded;
- (void)_updateIfNeeded;
- (void)_updatePlayheadFrame;
- (void)_updateScrollViewContentOffset;
- (void)_updateVideoscrubberControllerIfNeeded;
- (void)_updateVisibleRectOfFilmStripView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDecelerating:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)setEstimatedDuration:(double)a3;
- (void)setInteractionDelegate:(id)a3;
- (void)setPlaceholderThumbnail:(id)a3;
- (void)setPlayer:(id)a3;
- (void)videoScrubberControllerDidUpdate:(id)a3;
@end

@implementation QLPHVideoScrubberView

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (avPlayerObservationContext == a6)
  {

    [(QLPHVideoScrubberView *)self _invalidateFilmStripView:a3];
  }

  else
  {
    v9 = v6;
    v10 = v7;
    v8.receiver = self;
    v8.super_class = QLPHVideoScrubberView;
    [(QLPHVideoScrubberView *)&v8 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
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

- (QLPHVideoScrubberView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v8 = [(QLPHVideoScrubberView *)self scrollView];
  [v8 setFrame:{x, y, v6, height}];

  v9 = width * 0.5;
  v10 = [(QLPHVideoScrubberView *)self _videoScrubberController];
  [v10 length];
  v12 = v11;

  v13 = [(QLPHVideoScrubberView *)self scrollView];
  [v13 setContentInset:{0.0, v9, 0.0, v9}];

  v14 = [(QLPHVideoScrubberView *)self _filmStripView];

  if (v14)
  {
    v15 = [(QLPHVideoScrubberView *)self _filmStripView];
    [v15 setFrame:{0.0, 0.0, v12, height}];
  }

  v16 = [(QLPHVideoScrubberView *)self scrollView];
  [v16 setContentSize:{v12, height}];

  [(QLPHVideoScrubberView *)self _updateScrollViewContentOffset];
  [(QLPHVideoScrubberView *)self _updatePlayheadFrame];
}

- (void)setInteractionDelegate:(id)a3
{
  obj = a3;
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

- (void)setPlayer:(id)a3
{
  v5 = a3;
  player = self->_player;
  if (player != v5)
  {
    v7 = v5;
    [(AVPlayer *)player removeObserver:self forKeyPath:@"status" context:avPlayerObservationContext];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem" context:avPlayerObservationContext];
    [(AVPlayer *)self->_player removeObserver:self forKeyPath:@"currentItem.videoComposition" context:avPlayerObservationContext];
    objc_storeStrong(&self->_player, a3);
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"status" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem" options:0 context:avPlayerObservationContext];
    [(AVPlayer *)self->_player addObserver:self forKeyPath:@"currentItem.videoComposition" options:0 context:avPlayerObservationContext];
    [(QLPHVideoScrubberView *)self _invalidateVideoScrubberController];
    player = [(QLPHVideoScrubberView *)self _invalidateFilmStripView];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](player, v5);
}

- (void)setEstimatedDuration:(double)a3
{
  if (self->_estimatedDuration != a3)
  {
    self->_estimatedDuration = a3;
    [(QLPHVideoScrubberView *)self _invalidateVideoScrubberController];

    [(QLPHVideoScrubberView *)self _invalidateFilmStripView];
  }
}

- (void)_setVideoScrubberController:(id)a3
{
  v5 = a3;
  videoScrubberController = self->__videoScrubberController;
  if (videoScrubberController != v5)
  {
    v7 = v5;
    [(PXVideoScrubberController *)videoScrubberController setDelegate:0];
    objc_storeStrong(&self->__videoScrubberController, a3);
    videoScrubberController = [(PXVideoScrubberController *)v7 setDelegate:self];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](videoScrubberController, v5);
}

- (void)setPlaceholderThumbnail:(id)a3
{
  v5 = a3;
  if (self->_placeholderThumbnail != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_placeholderThumbnail, a3);
    [(QLPHVideoScrubberView *)self _invalidateFilmStripView];
    v5 = v6;
  }
}

- (id)_currentAVAsset
{
  v2 = [(QLPHVideoScrubberView *)self player];
  v3 = [v2 currentItem];

  v4 = [v3 asset];

  return v4;
}

- (id)_currentVideoComposition
{
  v2 = [(QLPHVideoScrubberView *)self player];
  v3 = [v2 currentItem];

  v4 = [v3 videoComposition];

  return v4;
}

- (BOOL)_isUserInteractingWithScrollView
{
  v2 = [(QLPHVideoScrubberView *)self scrollView];
  if ([v2 isDragging] & 1) != 0 || (objc_msgSend(v2, "isTracking"))
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 isDecelerating];
  }

  return v3;
}

- (BOOL)_playerIsPlaying
{
  v2 = [(QLPHVideoScrubberView *)self player];
  [v2 rate];
  v4 = v3 > 0.0;

  return v4;
}

- (void)_handleTouchGesture:(id)a3
{
  v4 = [a3 state];
  if (v4 == 3)
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
    if (v4 != 1)
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

- (void)scrollViewDidScroll:(id)a3
{
  v12 = a3;
  if ([(QLPHVideoScrubberView *)self _isUserInteractingWithScrollView])
  {
    [v12 contentSize];
    v5 = v4;
    [v12 contentInset];
    v7 = v6;
    [v12 contentOffset];
    v9 = fmax(v7 + v8, 0.0);
    if (v5 < v9)
    {
      v9 = v5;
    }

    v10 = v9 / v5;
    v11 = [(QLPHVideoScrubberView *)self _videoScrubberController];
    [v11 setPlayheadProgress:v10];
  }

  [(QLPHVideoScrubberView *)self _updateVisibleRectOfFilmStripView];
  [(QLPHVideoScrubberView *)self _updatePlayheadFrame];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  if (self->_interactionDelegateRespondsTo.willBeginDragging)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self willBeginDraggingInScrollView:v5];
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v7 = a3;
  if (!a4)
  {
    [(QLPHVideoScrubberView *)self _handleInteractionEndedAndTogglePlayState:0];
  }

  if (self->_interactionDelegateRespondsTo.didEndDragging)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self didEndDraggingInScrollView:v7];
  }
}

- (void)scrollViewWillBeginDecelerating:(id)a3
{
  if (self->_interactionDelegateRespondsTo.willBeginDecelerating)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self willBeginDeceleratingInScrollView:v5];
  }
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5 = a3;
  [(QLPHVideoScrubberView *)self _handleInteractionEndedAndTogglePlayState:0];
  if (self->_interactionDelegateRespondsTo.didEndDecelerating)
  {
    WeakRetained = objc_loadWeakRetained(&self->_interactionDelegate);
    [WeakRetained videoScrubberView:self didEndDeceleratingInScrollView:v5];
  }
}

- (void)_handleInteractionBegan
{
  if (!self->_previousPlayState)
  {
    if ([(QLPHVideoScrubberView *)self _playerIsPlaying])
    {
      self->_previousPlayState = 1;
      v3 = [(QLPHVideoScrubberView *)self player];
      [v3 pause];
    }

    else
    {
      self->_previousPlayState = 2;
    }
  }
}

- (void)_handleInteractionEndedAndTogglePlayState:(BOOL)a3
{
  previousPlayState = self->_previousPlayState;
  if (previousPlayState)
  {
    v5 = previousPlayState == 2;
    if (a3)
    {
      v5 = previousPlayState != 2;
      if (previousPlayState != 1)
      {
LABEL_4:
        v6 = [(QLPHVideoScrubberView *)self player];
        [v6 play];
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

    v6 = [(QLPHVideoScrubberView *)self player];
    [v6 pause];
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
    v3 = [(QLPHVideoScrubberView *)self _filmStripView];

    if (!v3)
    {
      v4 = [(QLPHVideoScrubberView *)self filmstripViewProvider];
      v5 = [v4 createFilmstripViewForVideoScrubberView:self];
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
      v12 = [(QLPHVideoScrubberView *)self scrollView];
      [v12 addSubview:v11];
    }

    v13 = [(QLPHVideoScrubberView *)self _filmStripView];
    v14 = objc_opt_respondsToSelector();

    if (v14)
    {
      v15 = [(QLPHVideoScrubberView *)self _filmStripView];
      v16 = [(QLPHVideoScrubberView *)self _currentAVAsset];
      v17 = [(QLPHVideoScrubberView *)self _currentVideoComposition];
      [v15 setAsset:v16 videoComposition:v17];
    }

    v18 = [(QLPHVideoScrubberView *)self _filmStripView];
    v19 = [(QLPHVideoScrubberView *)self _currentAVAsset];
    [v18 setAsset:v19];

    v20 = [(QLPHVideoScrubberView *)self _filmStripView];
    v21 = [(QLPHVideoScrubberView *)self placeholderThumbnail];
    [v20 setPlaceholderImage:v21];

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
  v17 = [(QLPHVideoScrubberView *)self player];
  v3 = [(QLPHVideoScrubberView *)self _videoScrubberController];
  if (v17)
  {
    v4 = [v3 target];
    v5 = [v4 videoPlayer];
    if (v5 != v17)
    {

LABEL_8:
      [(QLPHVideoScrubberView *)self estimatedDuration];
      v11 = v10;
      gotLoadHelper_x8__OBJC_CLASS___PXSimpleVideoScrubberControllerTarget(v10);
      v13 = [objc_alloc(*(v12 + 3112)) initWithVideoPlayer:v17];
      gotLoadHelper_x8__OBJC_CLASS___PXVideoScrubberController(v14);
      v16 = [objc_alloc(*(v15 + 3144)) initWithTarget:v13 estimatedDuration:v11];
      [(QLPHVideoScrubberView *)self _setVideoScrubberController:v16];

      goto LABEL_9;
    }

    [v3 estimatedDuration];
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
  v3 = [(QLPHVideoScrubberView *)self scrollView];
  [v3 bounds];
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

  v13 = [(QLPHVideoScrubberView *)self _filmStripView];
  [v13 setVisibleRect:{v5, v11, v7, v9}];
}

- (void)_updateScrollViewContentOffset
{
  v9 = [(QLPHVideoScrubberView *)self scrollView];
  v3 = [(QLPHVideoScrubberView *)self _videoScrubberController];
  [v3 playheadProgress];
  v5 = v4;

  [v9 contentSize];
  v7 = v5 * v6;
  [v9 contentInset];
  [v9 setContentOffset:{v7 - v8, 0.0}];
}

- (void)_updatePlayheadFrame
{
  v3 = [(QLPHVideoScrubberView *)self scrollView];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v18 = [(QLPHVideoScrubberView *)self scrollView];
  [v18 contentSize];
  v9 = v8;
  [v18 contentInset];
  v11 = v10;
  [v18 contentOffset];
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
  v17 = [(QLPHVideoScrubberView *)self _playheadView];
  [v17 setFrame:{v16, 0.0, v7 * 0.5, v7 + 2.0}];
}

- (double)videoScrubberController:(id)a3 lengthForDuration:(double)a4
{
  [(QLPHVideoScrubberView *)self estimatedDuration:a3];

  [(QLPHVideoScrubberView *)self _lengthForDuration:?];
  return result;
}

- (double)_lengthForDuration:(double)a3
{
  if (a3 < 1.0)
  {
    a3 = 1.0;
  }

  if (a3 >= 2.0)
  {
    v4 = a3;
    v3 = log2f(v4);
  }

  else
  {
    v3 = a3 * 0.5;
  }

  return v3 * 150.0;
}

- (void)videoScrubberControllerDidUpdate:(id)a3
{
  v4 = [(QLPHVideoScrubberView *)self scrollView];
  if (([v4 isDragging] & 1) == 0 && (objc_msgSend(v4, "isTracking") & 1) == 0 && (objc_msgSend(v4, "isDecelerating") & 1) == 0)
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