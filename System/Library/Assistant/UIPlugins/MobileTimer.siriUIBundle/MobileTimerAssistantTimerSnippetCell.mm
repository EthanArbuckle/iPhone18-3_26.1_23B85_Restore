@interface MobileTimerAssistantTimerSnippetCell
- (MobileTimerAssistantTimerSnippetCell)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)handleTimerStateChanged;
- (void)layoutSubviews;
- (void)markStale;
- (void)reloadTimerState;
- (void)setTimer:(id)timer;
- (void)updateDisplay;
@end

@implementation MobileTimerAssistantTimerSnippetCell

- (MobileTimerAssistantTimerSnippetCell)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = MobileTimerAssistantTimerSnippetCell;
  v3 = [(MobileTimerAssistantTimerSnippetCell *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    currentTimer = [(MTTimerManager *)self->_timerManager currentTimer];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_631C;
    v5[3] = &unk_106C8;
    v5[4] = self;
    v4 = [currentTimer addCompletionBlock:v5];
  }
}

- (void)setTimer:(id)timer
{
  timerCopy = timer;
  if (self->_timer != timerCopy)
  {
    v10 = timerCopy;
    objc_storeStrong(&self->_timer, timer);
    state = [(SATimerObject *)self->_timer state];
    v7 = [state isEqualToString:SATimerStateUndefinedValue];

    if (v7)
    {
      self->_deviceTimer = 0;
      timeView = self->_timeView;
      timerValue = [(SATimerObject *)self->_timer timerValue];
      -[TimerSnippetTimeView setRemainingTime:](timeView, "setRemainingTime:", [timerValue intValue]);
    }

    else
    {
      self->_deviceTimer = 1;
      [(MobileTimerAssistantTimerSnippetCell *)self reloadTimerState];
    }

    [(MobileTimerAssistantTimerSnippetCell *)self setNeedsLayout];
    timerCopy = v10;
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
    state = [(SATimerObject *)self->_timer state];
    v4 = [state isEqualToString:SATimerStateUndefinedValue];

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
  superview = [(MobileTimerAssistantTimerSnippetCell *)self superview];

  if (!superview)
  {
    [(CADisplayLink *)self->_displayLink invalidate];
    displayLink = self->_displayLink;
    self->_displayLink = 0;
  }
}

@end