@interface AVMobileChromeControlsView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setActivePlaybackControlsView:(id)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation AVMobileChromeControlsView

- (void)setFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = AVMobileChromeControlsView;
  [(AVMobileChromeControlsView *)&v5 setFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (self)
  {
    activePlaybackControlsView = self->_activePlaybackControlsView;
    [(AVMobileChromeControlsView *)self bounds];
    [(UIView *)activePlaybackControlsView setFrame:?];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = AVMobileChromeControlsView;
  [(AVMobileChromeControlsView *)&v4 layoutSubviews];
  if (self)
  {
    activePlaybackControlsView = self->_activePlaybackControlsView;
    [(AVMobileChromeControlsView *)self bounds];
    [(UIView *)activePlaybackControlsView setFrame:?];
  }
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = AVMobileChromeControlsView;
  v5 = [(AVMobileChromeControlsView *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)setActivePlaybackControlsView:(id)a3
{
  v5 = a3;
  activePlaybackControlsView = self->_activePlaybackControlsView;
  v7 = v5;
  if (activePlaybackControlsView != v5)
  {
    if (activePlaybackControlsView)
    {
      [(UIView *)activePlaybackControlsView removeFromSuperview];
    }

    objc_storeStrong(&self->_activePlaybackControlsView, a3);
    if (self->_activePlaybackControlsView)
    {
      [(AVMobileChromeControlsView *)self addSubview:?];
    }
  }
}

@end