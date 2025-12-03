@interface BlockableScrollView
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BlockableScrollViewDelegate)blockableDelegate;
- (void)setFrame:(CGRect)frame;
@end

@implementation BlockableScrollView

- (BlockableScrollViewDelegate)blockableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_blockableDelegate);

  return WeakRetained;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(BlockableScrollView *)self frame];
  if (vabdd_f64(v8, width) >= 2.22044605e-16 || ([(BlockableScrollView *)self frame], vabdd_f64(v9, height) >= 2.22044605e-16))
  {
    [(BlockableScrollView *)self setIsResizing:1];
    v11.receiver = self;
    v11.super_class = BlockableScrollView;
    [(BlockableScrollView *)&v11 setFrame:x, y, width, height];
    [(BlockableScrollView *)self setIsResizing:0];
    blockableDelegate = [(BlockableScrollView *)self blockableDelegate];
    [blockableDelegate blockableScrollViewDidChangeFrameSize];
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

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  v10.receiver = self;
  v10.super_class = BlockableScrollView;
  if ([(BlockableScrollView *)&v10 respondsToSelector:sel_gestureRecognizerShouldBegin_])
  {
    v9.receiver = self;
    v9.super_class = BlockableScrollView;
    v5 = [(BlockableScrollView *)&v9 gestureRecognizerShouldBegin:beginCopy];
  }

  else
  {
    v5 = 1;
  }

  blockableDelegate = [(BlockableScrollView *)self blockableDelegate];

  if (blockableDelegate)
  {
    blockableDelegate2 = [(BlockableScrollView *)self blockableDelegate];
    v5 &= [blockableDelegate2 blockableScrollViewShouldAllowScrolling];
  }

  return v5;
}

@end