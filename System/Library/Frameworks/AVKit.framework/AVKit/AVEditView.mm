@interface AVEditView
- (AVEditViewDataSource)dataSource;
- (AVEditViewDelegate)delegate;
- (CGSize)intrinsicContentSize;
- (double)movieScrubberDuration:(id)a3;
- (double)movieScrubberThumbnailAspectRatio:(id)a3;
- (double)trimEndTime;
- (double)trimStartTime;
- (id)movieScrubber:(id)a3 evenlySpacedTimestamps:(int)a4 startingAt:(id)a5 endingAt:(id)a6;
- (void)layoutSubviews;
- (void)movieScrubber:(id)a3 editingEndValueDidChange:(double)a4;
- (void)movieScrubber:(id)a3 editingStartValueDidChange:(double)a4;
- (void)movieScrubber:(id)a3 requestThumbnailImageForTimestamp:(id)a4;
- (void)movieScrubber:(id)a3 valueDidChange:(double)a4;
- (void)movieScrubberDidFinishRequestingThumbnails:(id)a3;
- (void)movieScrubberWillBeginRequestingThumbnails:(id)a3;
- (void)reloadData;
- (void)setCurrentTime:(double)a3;
- (void)setDataSource:(id)a3;
- (void)setPrefersThumbVisible:(BOOL)a3;
- (void)setScrubbing:(BOOL)a3;
- (void)setThumbnailImage:(CGImage *)a3 forTimestamp:(id)a4;
- (void)setTrimming:(BOOL)a3;
- (void)userObservationGestureRecognizerFired:(id)a3;
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

- (void)movieScrubberDidFinishRequestingThumbnails:(id)a3
{
  v4 = [(AVEditView *)self delegate];
  [v4 editViewDidFinishRequestingThumbnails:self];
}

- (void)movieScrubberWillBeginRequestingThumbnails:(id)a3
{
  v4 = [(AVEditView *)self delegate];
  [v4 editViewWillBeginRequestingThumbnails:self];
}

- (void)movieScrubber:(id)a3 editingEndValueDidChange:(double)a4
{
  [(AVEditView *)self setTrimming:1];
  [(AVEditView *)self setScrubbing:1];
  v6 = [(AVEditView *)self delegate];
  [v6 editView:self trimEndTimeDidChange:a4];
}

- (void)movieScrubber:(id)a3 editingStartValueDidChange:(double)a4
{
  [(AVEditView *)self setTrimming:1];
  [(AVEditView *)self setScrubbing:1];
  v6 = [(AVEditView *)self delegate];
  [v6 editView:self trimStartTimeDidChange:a4];
}

- (void)movieScrubber:(id)a3 valueDidChange:(double)a4
{
  v6 = [(AVEditView *)self delegate];
  [v6 editView:self currentTimeDidChange:a4];
}

- (void)movieScrubber:(id)a3 requestThumbnailImageForTimestamp:(id)a4
{
  v5 = a4;
  v6 = [(AVEditView *)self dataSource];
  [v6 editView:self requestThumbnailImageForTimestamp:v5];
}

- (double)movieScrubberThumbnailAspectRatio:(id)a3
{
  v4 = [(AVEditView *)self dataSource];
  [v4 editViewThumbnailAspectRatio:self];
  v6 = v5;

  return v6;
}

- (id)movieScrubber:(id)a3 evenlySpacedTimestamps:(int)a4 startingAt:(id)a5 endingAt:(id)a6
{
  v8 = a5;
  v9 = a6;
  v10 = [MEMORY[0x1E695DF70] array];
  if (a4 >= 1)
  {
    [v8 doubleValue];
    v12 = v11;
    [v9 doubleValue];
    v14 = v13;
    v15 = a4 - 1;
    if (a4 != 1)
    {
      v16 = (v13 - v12) / a4;
      v17 = 0.0;
      do
      {
        v18 = [MEMORY[0x1E696AD98] numberWithDouble:v12 + v17 * v16];
        [v10 addObject:v18];

        v17 = v17 + 1.0;
        --v15;
      }

      while (v15);
    }

    v19 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
    [v10 addObject:v19];
  }

  return v10;
}

- (double)movieScrubberDuration:(id)a3
{
  v4 = [(AVEditView *)self dataSource];
  [v4 editViewDuration:self];
  v6 = v5;
  v7 = v5;

  result = 0.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return v6;
  }

  return result;
}

- (void)setCurrentTime:(double)a3
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a3;
  }

  v4 = [(AVEditView *)self movieScrubber];
  [v4 setValue:v3];
}

- (void)setTrimming:(BOOL)a3
{
  self->_trimming = a3;
  if (a3)
  {
    [(AVEditView *)self setPrefersThumbVisible:0];
  }
}

- (void)setPrefersThumbVisible:(BOOL)a3
{
  v3 = a3;
  self->_prefersThumbVisible = a3;
  v4 = [(AVEditView *)self movieScrubber];
  [v4 setThumbIsVisible:v3];
}

- (void)setScrubbing:(BOOL)a3
{
  if (self->_scrubbing != a3)
  {
    v3 = a3;
    self->_scrubbing = a3;
    v5 = [(AVEditView *)self delegate];
    v6 = v5;
    if (v3)
    {
      [v5 editViewDidBeginScrubbing:self];
    }

    else
    {
      [v5 editViewDidEndScrubbing:self];

      [(AVEditView *)self setTrimming:0];
    }
  }
}

- (void)setDataSource:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_dataSource, obj);
    [(AVEditView *)self reloadData];
    v5 = obj;
  }
}

- (void)setThumbnailImage:(CGImage *)a3 forTimestamp:(id)a4
{
  v6 = a4;
  v7 = [(AVEditView *)self movieScrubber];
  [v7 setThumbnailImage:a3 forTimestamp:v6];
}

- (void)userObservationGestureRecognizerFired:(id)a3
{
  v4 = a3;
  if ([v4 state] == 4 || objc_msgSend(v4, "state") == 3 || objc_msgSend(v4, "state") == 5)
  {
    [(AVEditView *)self setScrubbing:0];
  }
}

- (void)reloadData
{
  v3 = [(AVEditView *)self movieScrubber];

  if (v3)
  {
    v17 = [(AVEditView *)self movieScrubber];
    [(AVUserInteractionObserverGestureRecognizer *)v17 reloadData];
  }

  else
  {
    v4 = [(AVEditView *)self dataSource];
    [v4 editViewDuration:self];
    v6 = v5;

    if (v6 <= 0.0)
    {
      return;
    }

    v7 = objc_alloc(MEMORY[0x1E69DCCA0]);
    [(AVEditView *)self bounds];
    v11 = [v7 initWithFrame:{v8 + 15.0, v9 + 0.0, v10 + -30.0}];
    [(AVEditView *)self setMovieScrubber:v11];

    v12 = [(AVEditView *)self movieScrubber];
    [v12 setDataSource:self];

    v13 = [(AVEditView *)self movieScrubber];
    [v13 setDelegate:self];

    [(AVEditView *)self setPrefersThumbVisible:1];
    v14 = [(AVEditView *)self movieScrubber];
    [(AVEditView *)self addSubview:v14];

    v17 = [[AVUserInteractionObserverGestureRecognizer alloc] initWithTarget:self action:sel_userObservationGestureRecognizerFired_];
    v15 = [(AVEditView *)self movieScrubber];
    [v15 addGestureRecognizer:v17];

    v16 = [(AVEditView *)self movieScrubber];
    [v16 setEditable:1];
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = [(AVEditView *)self movieScrubber];

  if (v3)
  {
    v4 = [(AVEditView *)self movieScrubber];
    [v4 intrinsicContentSize];
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
  v11 = [(AVEditView *)self movieScrubber];
  [v11 setFrame:{v6, v8, v10, v4}];

  v12 = [(AVEditView *)self movieScrubber];
  [v12 setEdgeInset:15.0];
}

- (double)trimEndTime
{
  v2 = [(AVEditView *)self movieScrubber];
  [v2 trimEndValue];
  v4 = v3;

  return v4;
}

- (double)trimStartTime
{
  v2 = [(AVEditView *)self movieScrubber];
  [v2 trimStartValue];
  v4 = v3;

  return v4;
}

@end