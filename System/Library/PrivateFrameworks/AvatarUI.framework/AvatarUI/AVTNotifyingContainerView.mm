@interface AVTNotifyingContainerView
- (AVTNotifyingContainerViewDelegate)delegate;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame;
@end

@implementation AVTNotifyingContainerView

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(AVTNotifyingContainerView *)self frame];
  if (width == v9 && height == v8)
  {
    v13.receiver = self;
    v13.super_class = AVTNotifyingContainerView;
    [(AVTNotifyingContainerView *)&v13 setFrame:x, y, width, height];
  }

  else
  {
    delegate = [(AVTNotifyingContainerView *)self delegate];
    [delegate notifyingContainerViewWillChangeSize:{width, height}];

    v13.receiver = self;
    v13.super_class = AVTNotifyingContainerView;
    [(AVTNotifyingContainerView *)&v13 setFrame:x, y, width, height];
    delegate2 = [(AVTNotifyingContainerView *)self delegate];
    [delegate2 notifyingContainerViewDidChangeSize:{width, height}];
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(AVTNotifyingContainerView *)self bounds];
  if (width == v9 && height == v8)
  {
    v13.receiver = self;
    v13.super_class = AVTNotifyingContainerView;
    [(AVTNotifyingContainerView *)&v13 setBounds:x, y, width, height];
  }

  else
  {
    delegate = [(AVTNotifyingContainerView *)self delegate];
    [delegate notifyingContainerViewWillChangeSize:{width, height}];

    v13.receiver = self;
    v13.super_class = AVTNotifyingContainerView;
    [(AVTNotifyingContainerView *)&v13 setBounds:x, y, width, height];
    delegate2 = [(AVTNotifyingContainerView *)self delegate];
    [delegate2 notifyingContainerViewDidChangeSize:{width, height}];
  }
}

- (AVTNotifyingContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end