@interface TimerSnippetTimeView
- (BOOL)updateDisplayWithTime:(double)time;
- (TimerSnippetTimeView)initWithFrame:(CGRect)frame;
- (void)markStaleWithTime:(double)time;
- (void)setFireTime:(double)time withTime:(double)withTime;
- (void)setRemainingTime:(double)time;
- (void)setupConstraints;
- (void)setupWithDuration:(double)duration;
@end

@implementation TimerSnippetTimeView

- (TimerSnippetTimeView)initWithFrame:(CGRect)frame
{
  v13.receiver = self;
  v13.super_class = TimerSnippetTimeView;
  v3 = [(TimerSnippetTimeView *)&v13 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    [(TimerSnippetTimeView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    timeLabel = v3->_timeLabel;
    v3->_timeLabel = v5;

    v7 = [UIFont systemFontOfSize:60.0 weight:UIFontWeightThin];
    mtui_fontByAddingTimeFontAttributes = [v7 mtui_fontByAddingTimeFontAttributes];
    [(UILabel *)v3->_timeLabel setFont:mtui_fontByAddingTimeFontAttributes];

    v9 = +[UIColor siriui_textColor];
    [(UILabel *)v3->_timeLabel setTextColor:v9];

    v10 = +[UIColor clearColor];
    [(UILabel *)v3->_timeLabel setBackgroundColor:v10];

    [(UILabel *)v3->_timeLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TimerSnippetTimeView *)v3 addSubview:v3->_timeLabel];
    [(TimerSnippetTimeView *)v3 setupConstraints];
    v11 = v3;
  }

  return v3;
}

- (void)setupConstraints
{
  v9 = objc_opt_new();
  centerXAnchor = [(UILabel *)self->_timeLabel centerXAnchor];
  centerXAnchor2 = [(TimerSnippetTimeView *)self centerXAnchor];
  v5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [v9 addObject:v5];

  centerYAnchor = [(UILabel *)self->_timeLabel centerYAnchor];
  centerYAnchor2 = [(TimerSnippetTimeView *)self centerYAnchor];
  v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v9 addObject:v8];

  [NSLayoutConstraint activateConstraints:v9];
}

- (void)setRemainingTime:(double)time
{
  self->_running = 0;
  self->_remainingTime = time;
  [(TimerSnippetTimeView *)self setupWithDuration:?];
}

- (void)setFireTime:(double)time withTime:(double)withTime
{
  self->_running = 1;
  v4 = round(time);
  self->_fireTime = v4;
  [(TimerSnippetTimeView *)self setupWithDuration:v4 - round(withTime)];
}

- (BOOL)updateDisplayWithTime:(double)time
{
  if (!self->_running)
  {
    return 1;
  }

  v4 = fmax(self->_fireTime - round(time), 0.0);
  v5 = FormatTime();
  [(UILabel *)self->_timeLabel setText:v5];

  if (v4 == 0.0)
  {
    self->_running = 0;
    self->_remainingTime = 0.0;
    return 1;
  }

  return 0;
}

- (void)markStaleWithTime:(double)time
{
  if (self->_running)
  {
    self->_running = 0;
    self->_remainingTime = fmax(self->_fireTime - round(time), 0.0);
  }
}

- (void)setupWithDuration:(double)duration
{
  v4 = FormatTime();
  [(UILabel *)self->_timeLabel setText:v4];

  [(TimerSnippetTimeView *)self setNeedsLayout];
}

@end