@interface AVMobileChromeControlsView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)setActivePlaybackControlsView:(id)view;
- (void)setFrame:(CGRect)frame;
@end

@implementation AVMobileChromeControlsView

- (void)setFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = AVMobileChromeControlsView;
  [(AVMobileChromeControlsView *)&v5 setFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = AVMobileChromeControlsView;
  v5 = [(AVMobileChromeControlsView *)&v9 hitTest:event withEvent:test.x, test.y];
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

- (void)setActivePlaybackControlsView:(id)view
{
  viewCopy = view;
  activePlaybackControlsView = self->_activePlaybackControlsView;
  v7 = viewCopy;
  if (activePlaybackControlsView != viewCopy)
  {
    if (activePlaybackControlsView)
    {
      [(UIView *)activePlaybackControlsView removeFromSuperview];
    }

    objc_storeStrong(&self->_activePlaybackControlsView, view);
    if (self->_activePlaybackControlsView)
    {
      [(AVMobileChromeControlsView *)self addSubview:?];
    }
  }
}

@end