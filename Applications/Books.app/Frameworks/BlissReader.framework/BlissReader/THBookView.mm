@interface THBookView
- (THBookView)initWithFrame:(CGRect)frame expandedLayout:(BOOL)layout;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)insertSubviewAtBack:(id)back;
- (void)setBackgroundColor:(id)color;
@end

@implementation THBookView

- (THBookView)initWithFrame:(CGRect)frame expandedLayout:(BOOL)layout
{
  v6.receiver = self;
  v6.super_class = THBookView;
  result = [(THBookView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (result)
  {
    result->mExpandedLayout = layout;
  }

  return result;
}

- (void)setBackgroundColor:(id)color
{
  v6.receiver = self;
  v6.super_class = THBookView;
  [(THBookView *)&v6 setBackgroundColor:?];
  effectView = self->_effectView;
  if (color)
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

- (void)insertSubviewAtBack:(id)back
{
  if (self->_effectView)
  {
    [(THBookView *)self insertSubview:back above:?];
  }

  else
  {
    [(THBookView *)self insertSubview:back atIndex:?];
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
  window = [(THBookView *)self window];
  if (window)
  {
    v4 = +[TSKKeyboardMonitor sharedKeyboardMonitor];
    if (![v4 rootWindow])
    {
      [v4 setRootWindow:window];
    }
  }

  bookDelegate = [(THBookView *)self bookDelegate];

  [(THBookViewDelegate *)bookDelegate bookView:self didMoveToWindow:window];
}

@end