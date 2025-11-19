@interface MobileTimerAssistantTimerSnippetCell
- (MobileTimerAssistantTimerSnippetCell)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)handleTimerStateChanged;
- (void)layoutSubviews;
- (void)markStale;
- (void)reloadTimerState;
- (void)setTimer:(id)a3;
- (void)updateDisplay;
@end

@implementation MobileTimerAssistantTimerSnippetCell

- (MobileTimerAssistantTimerSnippetCell)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = MobileTimerAssistantTimerSnippetCell;
  v3 = [(MobileTimerAssistantTimerSnippetCell *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MobileTimerAssistantTimerSnippetCell *)v3 setKeylineType:0];
    v5 = [TimerSnippetTimeView alloc];
    [(MobileTimerAssistantTimerSnippetCell *)v4 bounds];
    v6 = [(TimerSnippetTimeView *)v5 initWithFrame:?];
    timeView = v4->_timeView;
    v4->_timeView = v6;

    [(MobileTimerAssistantTimerSnippetCell *)v4 addSubview:v4->_timeView];
    v8 = objc_alloc_init(MTTimerManager);
    timerManager = v4->_timerManager;
    v4->_timerManager = v8;

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v4 selector:"handleTimerStateChanged" name:MTTimerManagerFiringTimerChanged object:v4->_timerManager];
    [v10 addObserver:v4 selector:"handleTimerStateChanged" name:MTTimerManagerTimersChanged object:v4->_timerManager];
    v11 = v4;
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MobileTimerAssistantTimerSnippetCell;
  [(MobileTimerAssistantTimerSnippetCell *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MobileTimerAssistantTimerSnippetCell;
  [(MobileTimerAssistantTimerSnippetCell *)&v4 layoutSubviews];
  timeView = self->_timeView;
  [(MobileTimerAssistantTimerSnippetCell *)self bounds];
  [(TimerSnippetTimeView *)timeView setFrame:?];
}

- (void)reloadTimerState
{
  if (!self->_stale)
  {
    v3 = [(MTTimerManager *)self->_timerManager currentTimer];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_631C;
    v5[3] = &unk_106C8;
    v5[4] = self;
    v4 = [v3 addCompletionBlock:v5];
  }
}

- (void)setTimer:(id)a3
{
  v5 = a3;
  if (self->_timer != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_timer, a3);
    v6 = [(SATimerObject *)self->_timer state];
    v7 = [v6 isEqualToString:SATimerStateUndefinedValue];

    if (v7)
    {
      self->_deviceTimer = 0;
      timeView = self->_timeView;
      v9 = [(SATimerObject *)self->_timer timerValue];
      -[TimerSnippetTimeView setRemainingTime:](timeView, "setRemainingTime:", [v9 intValue]);
    }

    else
    {
      self->_deviceTimer = 1;
      [(MobileTimerAssistantTimerSnippetCell *)self reloadTimerState];
    }

    [(MobileTimerAssistantTimerSnippetCell *)self setNeedsLayout];
    v5 = v10;
  }
}

- (void)updateDisplay
{
  if ([(TimerSnippetTimeView *)self->_timeView updateDisplayWithTime:CFAbsoluteTimeGetCurrent()])
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)markStale
{
  if (!self->_stale)
  {
    self->_stale = 1;
    v3 = [(SATimerObject *)self->_timer state];
    v4 = [v3 isEqualToString:SATimerStateUndefinedValue];

    if ((v4 & 1) == 0)
    {
      [(TimerSnippetTimeView *)self->_timeView markStaleWithTime:CFAbsoluteTimeGetCurrent()];
      [(CADisplayLink *)self->_displayLink invalidate];
      displayLink = self->_displayLink;
      self->_displayLink = 0;
    }
  }
}

- (void)handleTimerStateChanged
{
  if (!self->_stale)
  {
    timer = self->_timer;
    self->_timer = 0;

    [(MobileTimerAssistantTimerSnippetCell *)self reloadTimerState];

    [(MobileTimerAssistantTimerSnippetCell *)self setNeedsLayout];
  }
}

- (void)didMoveToSuperview
{
  v3 = [(MobileTimerAssistantTimerSnippetCell *)self superview];

  if (!v3)
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
  }
}

@end