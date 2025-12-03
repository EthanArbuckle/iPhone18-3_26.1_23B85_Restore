@interface SKObservableView
- (SKObservableViewDelegate)delegate;
- (void)setAlpha:(double)alpha;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SKObservableView

- (void)setAlpha:(double)alpha
{
  v10.receiver = self;
  v10.super_class = SKObservableView;
  [(SKObservableView *)&v10 setAlpha:?];
  delegate = [(SKObservableView *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegate2 = [(SKObservableView *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      delegate3 = [(SKObservableView *)self delegate];
      [delegate3 didChangeAlpha:alpha];
    }
  }
}

- (void)setHidden:(BOOL)hidden
{
  v9.receiver = self;
  v9.super_class = SKObservableView;
  [(SKObservableView *)&v9 setHidden:hidden];
  delegate = [(SKObservableView *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    delegate2 = [(SKObservableView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate3 = [(SKObservableView *)self delegate];
      [delegate3 didChangeHidden];
    }
  }
}

- (SKObservableViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end