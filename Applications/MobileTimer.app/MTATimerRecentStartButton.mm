@interface MTATimerRecentStartButton
- (MTATimerRecentStartButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MTATimerRecentStartButton

- (MTATimerRecentStartButton)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = MTATimerRecentStartButton;
  v3 = [(MTATimerRecentStartButton *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor mtui_startResumeButtonTintColor];
    [(MTATimerRecentStartButton *)v3 setBackgroundColor:v4];

    v5 = +[UIColor mtui_startResumeButtonTextColor];
    [(MTATimerRecentStartButton *)v3 setTitleColor:v5 forState:0];
  }

  return v3;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v6.receiver = self;
  v6.super_class = MTATimerRecentStartButton;
  [(MTATimerRecentStartButton *)&v6 setHighlighted:?];
  if (highlightedCopy)
  {
    +[UIColor mtui_disabledStartButtonTintColor];
  }

  else
  {
    +[UIColor mtui_startResumeButtonTintColor];
  }
  v5 = ;
  [(MTATimerRecentStartButton *)self setBackgroundColor:v5];
}

@end