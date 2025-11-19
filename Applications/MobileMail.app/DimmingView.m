@interface DimmingView
- (BOOL)transparent;
- (DimmingView)initWithFrame:(CGRect)a3;
- (DimmingViewDelegate)delegate;
- (void)setTransparent:(BOOL)a3;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation DimmingView

- (DimmingView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DimmingView;
  v3 = [(DimmingView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UIColor colorWithRed:0.0274509806 green:0.0431372561 blue:0.0666666701 alpha:0.5];
    [(DimmingView *)v3 setBackgroundColor:v4];
  }

  return v3;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5 = [(DimmingView *)self delegate:a3];
  [v5 dimmingViewWasTapped:self];
}

- (BOOL)transparent
{
  v2 = [(DimmingView *)self backgroundColor];
  v3 = +[UIColor clearColor];
  v4 = [v2 isEqual:v3];

  return v4;
}

- (void)setTransparent:(BOOL)a3
{
  if (a3)
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