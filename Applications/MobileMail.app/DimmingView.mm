@interface DimmingView
- (BOOL)transparent;
- (DimmingView)initWithFrame:(CGRect)frame;
- (DimmingViewDelegate)delegate;
- (void)setTransparent:(BOOL)transparent;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation DimmingView

- (DimmingView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DimmingView;
  v3 = [(DimmingView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIColor colorWithRed:0.0274509806 green:0.0431372561 blue:0.0666666701 alpha:0.5];
    [(DimmingView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5 = [(DimmingView *)self delegate:ended];
  [v5 dimmingViewWasTapped:self];
}

- (BOOL)transparent
{
  backgroundColor = [(DimmingView *)self backgroundColor];
  v3 = +[UIColor clearColor];
  v4 = [backgroundColor isEqual:v3];

  return v4;
}

- (void)setTransparent:(BOOL)transparent
{
  if (transparent)
  {
    +[UIColor clearColor];
  }

  else
  {
    [UIColor colorWithRed:0.0274509806 green:0.0431372561 blue:0.0666666701 alpha:0.5];
  }
  v4 = ;
  [(DimmingView *)self setBackgroundColor:v4];
}

- (DimmingViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end