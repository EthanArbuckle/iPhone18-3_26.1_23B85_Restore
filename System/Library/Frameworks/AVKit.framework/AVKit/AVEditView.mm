@interface AVEditView
- (AVEditViewDataSource)dataSource;
- (AVEditViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (double)movieScrubberDuration:(id)duration;
- (double)movieScrubberThumbnailAspectRatio:(id)ratio;
- (double)trimEndTime;
- (double)trimStartTime;
- (id)movieScrubber:(id)scrubber evenlySpacedTimestamps:(int)timestamps startingAt:(id)at endingAt:(id)endingAt;
- (void)layoutSubviews;
- (void)movieScrubber:(id)scrubber editingEndValueDidChange:(double)change;
- (void)movieScrubber:(id)scrubber editingStartValueDidChange:(double)change;
- (void)movieScrubber:(id)scrubber requestThumbnailImageForTimestamp:(id)timestamp;
- (void)movieScrubber:(id)scrubber valueDidChange:(double)change;
- (void)movieScrubberDidFinishRequestingThumbnails:(id)thumbnails;
- (void)movieScrubberWillBeginRequestingThumbnails:(id)thumbnails;
- (void)reloadData;
- (void)setCurrentTime:(double)time;
- (void)setDataSource:(id)source;
- (void)setPrefersThumbVisible:(BOOL)visible;
- (void)setScrubbing:(BOOL)scrubbing;
- (void)setThumbnailImage:(CGImage *)image forTimestamp:(id)timestamp;
- (void)setTrimming:(BOOL)trimming;
- (void)userObservationGestureRecognizerFired:(id)fired;
@end

@implementation AVEditView

- (AVEditViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVEditViewDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)movieScrubberDidFinishRequestingThumbnails:(id)thumbnails
{
  delegate = [(AVEditView *)self delegate];
  [delegate editViewDidFinishRequestingThumbnails:self];
}

- (void)movieScrubberWillBeginRequestingThumbnails:(id)thumbnails
{
  delegate = [(AVEditView *)self delegate];
  [delegate editViewWillBeginRequestingThumbnails:self];
}

- (void)movieScrubber:(id)scrubber editingEndValueDidChange:(double)change
{
  [(AVEditView *)self setTrimming:1];
  [(AVEditView *)self setScrubbing:1];
  delegate = [(AVEditView *)self delegate];
  [delegate editView:self trimEndTimeDidChange:change];
}

- (void)movieScrubber:(id)scrubber editingStartValueDidChange:(double)change
{
  [(AVEditView *)self setTrimming:1];
  [(AVEditView *)self setScrubbing:1];
  delegate = [(AVEditView *)self delegate];
  [delegate editView:self trimStartTimeDidChange:change];
}

- (void)movieScrubber:(id)scrubber valueDidChange:(double)change
{
  delegate = [(AVEditView *)self delegate];
  [delegate editView:self currentTimeDidChange:change];
}

- (void)movieScrubber:(id)scrubber requestThumbnailImageForTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  dataSource = [(AVEditView *)self dataSource];
  [dataSource editView:self requestThumbnailImageForTimestamp:timestampCopy];
}

- (double)movieScrubberThumbnailAspectRatio:(id)ratio
{
  dataSource = [(AVEditView *)self dataSource];
  [dataSource editViewThumbnailAspectRatio:self];
  v6 = v5;

  return v6;
}

- (id)movieScrubber:(id)scrubber evenlySpacedTimestamps:(int)timestamps startingAt:(id)at endingAt:(id)endingAt
{
  atCopy = at;
  endingAtCopy = endingAt;
  array = [MEMORY[0x1E695DF70] array];
  if (timestamps >= 1)
  {
    [atCopy doubleValue];
    v12 = v11;
    [endingAtCopy doubleValue];
    v14 = v13;
    v15 = timestamps - 1;
    if (timestamps != 1)
    {
      v16 = (v13 - v12) / timestamps;
      v17 = 0.0;
      do
      {
        v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12 + v17 * v16];
        [array addObject:v18];

        v17 = v17 + 1.0;
        --v15;
      }

      while (v15);
    }

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    [array addObject:v19];
  }

  return array;
}

- (double)movieScrubberDuration:(id)duration
{
  dataSource = [(AVEditView *)self dataSource];
  [dataSource editViewDuration:self];
  v6 = v5;
  v7 = v5;

  result = 0.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return v6;
  }

  return result;
}

- (void)setCurrentTime:(double)time
{
  if ((*&time & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    timeCopy = 0.0;
  }

  else
  {
    timeCopy = time;
  }

  movieScrubber = [(AVEditView *)self movieScrubber];
  [movieScrubber setValue:timeCopy];
}

- (void)setTrimming:(BOOL)trimming
{
  self->_trimming = trimming;
  if (trimming)
  {
    [(AVEditView *)self setPrefersThumbVisible:0];
  }
}

- (void)setPrefersThumbVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->_prefersThumbVisible = visible;
  movieScrubber = [(AVEditView *)self movieScrubber];
  [movieScrubber setThumbIsVisible:visibleCopy];
}

- (void)setScrubbing:(BOOL)scrubbing
{
  if (self->_scrubbing != scrubbing)
  {
    scrubbingCopy = scrubbing;
    self->_scrubbing = scrubbing;
    delegate = [(AVEditView *)self delegate];
    v6 = delegate;
    if (scrubbingCopy)
    {
      [delegate editViewDidBeginScrubbing:self];
    }

    else
    {
      [delegate editViewDidEndScrubbing:self];

      [(AVEditView *)self setTrimming:0];
    }
  }
}

- (void)setDataSource:(id)source
{
  obj = source;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(AVEditView *)self reloadData];
    v5 = obj;
  }
}

- (void)setThumbnailImage:(CGImage *)image forTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  movieScrubber = [(AVEditView *)self movieScrubber];
  [movieScrubber setThumbnailImage:image forTimestamp:timestampCopy];
}

- (void)userObservationGestureRecognizerFired:(id)fired
{
  firedCopy = fired;
  if ([firedCopy state] == 4 || objc_msgSend(firedCopy, "state") == 3 || objc_msgSend(firedCopy, "state") == 5)
  {
    [(AVEditView *)self setScrubbing:0];
  }
}

- (void)reloadData
{
  movieScrubber = [(AVEditView *)self movieScrubber];

  if (movieScrubber)
  {
    movieScrubber2 = [(AVEditView *)self movieScrubber];
    [(AVUserInteractionObserverGestureRecognizer *)movieScrubber2 reloadData];
  }

  else
  {
    dataSource = [(AVEditView *)self dataSource];
    [dataSource editViewDuration:self];
    v6 = v5;

    if (v6 <= 0.0)
    {
      return;
    }

    v7 = objc_alloc(MEMORY[0x1E69DCCA0]);
    [(AVEditView *)self bounds];
    v11 = [v7 initWithFrame:{v8 + 15.0, v9 + 0.0, v10 + -30.0}];
    [(AVEditView *)self setMovieScrubber:v11];

    movieScrubber3 = [(AVEditView *)self movieScrubber];
    [movieScrubber3 setDataSource:self];

    movieScrubber4 = [(AVEditView *)self movieScrubber];
    [movieScrubber4 setDelegate:self];

    [(AVEditView *)self setPrefersThumbVisible:1];
    movieScrubber5 = [(AVEditView *)self movieScrubber];
    [(AVEditView *)self addSubview:movieScrubber5];

    movieScrubber2 = [[AVUserInteractionObserverGestureRecognizer alloc] initWithTarget:self action:sel_userObservationGestureRecognizerFired_];
    movieScrubber6 = [(AVEditView *)self movieScrubber];
    [movieScrubber6 addGestureRecognizer:movieScrubber2];

    movieScrubber7 = [(AVEditView *)self movieScrubber];
    [movieScrubber7 setEditable:1];
  }
}

- (CGSize)intrinsicContentSize
{
  movieScrubber = [(AVEditView *)self movieScrubber];

  if (movieScrubber)
  {
    movieScrubber2 = [(AVEditView *)self movieScrubber];
    [movieScrubber2 intrinsicContentSize];
    v6 = v5;
    v8 = v7;

    v9 = v6;
    v10 = v8;
  }

  else
  {
    v9 = *MEMORY[0x1E69DE788];
    v10 = *MEMORY[0x1E69DE788];
  }

  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = AVEditView;
  [(AVEditView *)&v13 layoutSubviews];
  [(AVEditView *)self bounds];
  v4 = v3;
  v6 = v5 + 15.0;
  v8 = v7 + 0.0;
  v10 = v9 + -30.0;
  movieScrubber = [(AVEditView *)self movieScrubber];
  [movieScrubber setFrame:{v6, v8, v10, v4}];

  movieScrubber2 = [(AVEditView *)self movieScrubber];
  [movieScrubber2 setEdgeInset:15.0];
}

- (double)trimEndTime
{
  movieScrubber = [(AVEditView *)self movieScrubber];
  [movieScrubber trimEndValue];
  v4 = v3;

  return v4;
}

- (double)trimStartTime
{
  movieScrubber = [(AVEditView *)self movieScrubber];
  [movieScrubber trimStartValue];
  v4 = v3;

  return v4;
}

@end