@interface SKObservableView
- (SKObservableViewDelegate)delegate;
- (void)setAlpha:(double)a3;
- (void)setHidden:(BOOL)a3;
@end

@implementation SKObservableView

- (void)setAlpha:(double)a3
{
  v10.receiver = self;
  v10.super_class = SKObservableView;
  [(SKObservableView *)&v10 setAlpha:?];
  v5 = [(SKObservableView *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(SKObservableView *)self delegate];
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      v9 = [(SKObservableView *)self delegate];
      [v9 didChangeAlpha:a3];
    }
  }
}

- (void)setHidden:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = SKObservableView;
  [(SKObservableView *)&v9 setHidden:a3];
  v4 = [(SKObservableView *)self delegate];
  if (v4)
  {
    v5 = v4;
    v6 = [(SKObservableView *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(SKObservableView *)self delegate];
      [v8 didChangeHidden];
    }
  }
}

- (SKObservableViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end