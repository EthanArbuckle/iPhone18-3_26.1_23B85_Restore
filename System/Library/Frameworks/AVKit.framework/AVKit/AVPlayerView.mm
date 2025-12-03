@interface AVPlayerView
- (AVPlayerView)initWithFrame:(CGRect)frame contentView:(id)view;
- (void)_beginManagingContentViewIfNeeded;
- (void)_stopManagingContentView;
- (void)layoutSubviews;
- (void)setContentView:(id)view;
@end

@implementation AVPlayerView

- (void)_stopManagingContentView
{
  contentView = self->_contentView;
  if (contentView && [(UIView *)contentView isDescendantOfView:self])
  {
    v4 = self->_contentView;

    [(UIView *)v4 removeFromSuperview];
  }
}

- (void)_beginManagingContentViewIfNeeded
{
  contentView = [(AVPlayerView *)self contentView];
  if (contentView)
  {
    contentView8 = contentView;
    contentView2 = [(AVPlayerView *)self contentView];
    if ([contentView2 isDescendantOfView:self])
    {
    }

    else
    {
      needsInitialLayout = [(AVPlayerView *)self needsInitialLayout];

      if (needsInitialLayout)
      {
        return;
      }

      contentView3 = [(AVPlayerView *)self contentView];
      superview = [contentView3 superview];

      if (superview)
      {
        contentView4 = [(AVPlayerView *)self contentView];
        [contentView4 removeFromSuperview];
      }

      contentView5 = [(AVPlayerView *)self contentView];
      [contentView5 setTranslatesAutoresizingMaskIntoConstraints:1];

      contentView6 = [(AVPlayerView *)self contentView];
      [contentView6 setAutoresizingMask:18];

      contentView7 = [(AVPlayerView *)self contentView];
      [(AVPlayerView *)self bounds];
      [contentView7 setFrame:?];

      contentView8 = [(AVPlayerView *)self contentView];
      [AVPlayerView insertSubview:"insertSubview:atIndex:" atIndex:?];
    }
  }
}

- (void)layoutSubviews
{
  kdebug_trace();
  if ([(AVPlayerView *)self needsInitialLayout])
  {
    [(AVPlayerView *)self setNeedsInitialLayout:0];
    [(AVPlayerView *)self _beginManagingContentViewIfNeeded];
  }

  v3.receiver = self;
  v3.super_class = AVPlayerView;
  [(AVPresentationContainerView *)&v3 layoutSubviews];
  kdebug_trace();
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  if (self->_contentView != viewCopy)
  {
    [(AVPlayerView *)self _stopManagingContentView];
    objc_storeStrong(&self->_contentView, view);
  }

  [(AVPlayerView *)self _beginManagingContentViewIfNeeded];
}

- (AVPlayerView)initWithFrame:(CGRect)frame contentView:(id)view
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v14.receiver = self;
  v14.super_class = AVPlayerView;
  height = [(AVPlayerView *)&v14 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_contentView, view);
    [(AVPresentationContainerView *)v12 setPresentationContainerContentView:viewCopy];
    v12->_needsInitialLayout = 1;
  }

  return v12;
}

@end