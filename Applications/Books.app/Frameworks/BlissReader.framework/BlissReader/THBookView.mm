@interface THBookView
- (THBookView)initWithFrame:(CGRect)a3 expandedLayout:(BOOL)a4;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)insertSubviewAtBack:(id)a3;
- (void)setBackgroundColor:(id)a3;
@end

@implementation THBookView

- (THBookView)initWithFrame:(CGRect)a3 expandedLayout:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = THBookView;
  result = [(THBookView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->mExpandedLayout = a4;
  }

  return result;
}

- (void)setBackgroundColor:(id)a3
{
  v6.receiver = self;
  v6.super_class = THBookView;
  [(THBookView *)&v6 setBackgroundColor:?];
  effectView = self->_effectView;
  if (a3)
  {
    if (effectView)
    {
      [(UIVisualEffectView *)effectView removeFromSuperview];

      self->_effectView = 0;
    }
  }

  else if (!effectView)
  {
    self->_effectView = [[UIVisualEffectView alloc] initWithEffect:{+[_UIBlurThroughEffect _blurThroughWithStyle:](_UIBlurThroughEffect, "_blurThroughWithStyle:", 1)}];
    [(THBookView *)self bounds];
    [(UIVisualEffectView *)self->_effectView setFrame:?];
    [(UIVisualEffectView *)self->_effectView setAutoresizingMask:18];
    [(THBookView *)self insertSubview:self->_effectView atIndex:0];
  }
}

- (void)insertSubviewAtBack:(id)a3
{
  if (self->_effectView)
  {
    [(THBookView *)self insertSubview:a3 above:?];
  }

  else
  {
    [(THBookView *)self insertSubview:a3 atIndex:?];
  }
}

- (void)dealloc
{
  [(THBookView *)self setBookDelegate:0];

  self->_effectView = 0;
  v3.receiver = self;
  v3.super_class = THBookView;
  [(THBookView *)&v3 dealloc];
}

- (void)didMoveToWindow
{
  v3 = [(THBookView *)self window];
  if (v3)
  {
    v4 = +[TSKKeyboardMonitor sharedKeyboardMonitor];
    if (![v4 rootWindow])
    {
      [v4 setRootWindow:v3];
    }
  }

  v5 = [(THBookView *)self bookDelegate];

  [(THBookViewDelegate *)v5 bookView:self didMoveToWindow:v3];
}

@end