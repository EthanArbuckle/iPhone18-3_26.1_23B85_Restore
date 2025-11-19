@interface BlockableScrollView
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BlockableScrollViewDelegate)blockableDelegate;
- (void)setFrame:(CGRect)a3;
@end

@implementation BlockableScrollView

- (BlockableScrollViewDelegate)blockableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_blockableDelegate);

  return WeakRetained;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(BlockableScrollView *)self frame];
  if (vabdd_f64(v8, width) >= 2.22044605e-16 || ([(BlockableScrollView *)self frame], vabdd_f64(v9, height) >= 2.22044605e-16))
  {
    [(BlockableScrollView *)self setIsResizing:1];
    v11.receiver = self;
    v11.super_class = BlockableScrollView;
    [(BlockableScrollView *)&v11 setFrame:x, y, width, height];
    [(BlockableScrollView *)self setIsResizing:0];
    v10 = [(BlockableScrollView *)self blockableDelegate];
    [v10 blockableScrollViewDidChangeFrameSize];
  }

  else
  {
    [(BlockableScrollView *)self setIsResizing:1];
    v11.receiver = self;
    v11.super_class = BlockableScrollView;
    [(BlockableScrollView *)&v11 setFrame:x, y, width, height];
    [(BlockableScrollView *)self setIsResizing:0];
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BlockableScrollView;
  if ([(BlockableScrollView *)&v10 respondsToSelector:sel_gestureRecognizerShouldBegin_])
  {
    v9.receiver = self;
    v9.super_class = BlockableScrollView;
    v5 = [(BlockableScrollView *)&v9 gestureRecognizerShouldBegin:v4];
  }

  else
  {
    v5 = 1;
  }

  v6 = [(BlockableScrollView *)self blockableDelegate];

  if (v6)
  {
    v7 = [(BlockableScrollView *)self blockableDelegate];
    v5 &= [v7 blockableScrollViewShouldAllowScrolling];
  }

  return v5;
}

@end