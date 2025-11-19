@interface TimerSnippetTimeView
- (BOOL)updateDisplayWithTime:(double)a3;
- (TimerSnippetTimeView)initWithFrame:(CGRect)a3;
- (void)markStaleWithTime:(double)a3;
- (void)setFireTime:(double)a3 withTime:(double)a4;
- (void)setRemainingTime:(double)a3;
- (void)setupConstraints;
- (void)setupWithDuration:(double)a3;
@end

@implementation TimerSnippetTimeView

- (TimerSnippetTimeView)initWithFrame:(CGRect)a3
{
  v13.receiver = self;
  v13.super_class = TimerSnippetTimeView;
  v3 = [(TimerSnippetTimeView *)&v13 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    [(TimerSnippetTimeView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    timeLabel = v3->_timeLabel;
    v3->_timeLabel = v5;

    v7 = [UIFont systemFontOfSize:60.0 weight:UIFontWeightThin];
    v8 = [v7 mtui_fontByAddingTimeFontAttributes];
    [(UILabel *)v3->_timeLabel setFont:v8];

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
  v3 = [(UILabel *)self->_timeLabel centerXAnchor];
  v4 = [(TimerSnippetTimeView *)self centerXAnchor];
  v5 = [v3 constraintEqualToAnchor:v4];
  [v9 addObject:v5];

  v6 = [(UILabel *)self->_timeLabel centerYAnchor];
  v7 = [(TimerSnippetTimeView *)self centerYAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  [v9 addObject:v8];

  [NSLayoutConstraint activateConstraints:v9];
}

- (void)setRemainingTime:(double)a3
{
  self->_running = 0;
  self->_remainingTime = a3;
  [(TimerSnippetTimeView *)self setupWithDuration:?];
}

- (void)setFireTime:(double)a3 withTime:(double)a4
{
  self->_running = 1;
  v4 = round(a3);
  self->_fireTime = v4;
  [(TimerSnippetTimeView *)self setupWithDuration:v4 - round(a4)];
}

- (BOOL)updateDisplayWithTime:(double)a3
{
  if (!self->_running)
  {
    return 1;
  }

  v4 = fmax(self->_fireTime - round(a3), 0.0);
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

- (void)markStaleWithTime:(double)a3
{
  if (self->_running)
  {
    self->_running = 0;
    self->_remainingTime = fmax(self->_fireTime - round(a3), 0.0);
  }
}

- (void)setupWithDuration:(double)a3
{
  v4 = FormatTime();
  [(UILabel *)self->_timeLabel setText:v4];

  [(TimerSnippetTimeView *)self setNeedsLayout];
}

@end