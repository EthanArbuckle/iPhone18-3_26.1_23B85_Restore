@interface AVPlayerView
- (AVPlayerView)initWithFrame:(CGRect)a3 contentView:(id)a4;
- (void)_beginManagingContentViewIfNeeded;
- (void)_stopManagingContentView;
- (void)layoutSubviews;
- (void)setContentView:(id)a3;
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
  v3 = [(AVPlayerView *)self contentView];
  if (v3)
  {
    v12 = v3;
    v4 = [(AVPlayerView *)self contentView];
    if ([v4 isDescendantOfView:self])
    {
    }

    else
    {
      v5 = [(AVPlayerView *)self needsInitialLayout];

      if (v5)
      {
        return;
      }

      v6 = [(AVPlayerView *)self contentView];
      v7 = [v6 superview];

      if (v7)
      {
        v8 = [(AVPlayerView *)self contentView];
        [v8 removeFromSuperview];
      }

      v9 = [(AVPlayerView *)self contentView];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:1];

      v10 = [(AVPlayerView *)self contentView];
      [v10 setAutoresizingMask:18];

      v11 = [(AVPlayerView *)self contentView];
      [(AVPlayerView *)self bounds];
      [v11 setFrame:?];

      v12 = [(AVPlayerView *)self contentView];
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

- (void)setContentView:(id)a3
{
  v5 = a3;
  if (self->_contentView != v5)
  {
    [(AVPlayerView *)self _stopManagingContentView];
    objc_storeStrong(&self->_contentView, a3);
  }

  [(AVPlayerView *)self _beginManagingContentViewIfNeeded];
}

- (AVPlayerView)initWithFrame:(CGRect)a3 contentView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AVPlayerView;
  v11 = [(AVPlayerView *)&v14 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_contentView, a4);
    [(AVPresentationContainerView *)v12 setPresentationContainerContentView:v10];
    v12->_needsInitialLayout = 1;
  }

  return v12;
}

@end