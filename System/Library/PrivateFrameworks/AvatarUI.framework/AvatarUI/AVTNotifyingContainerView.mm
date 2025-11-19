@interface AVTNotifyingContainerView
- (AVTNotifyingContainerViewDelegate)delegate;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation AVTNotifyingContainerView

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AVTNotifyingContainerView *)self frame];
  if (width == v9 && height == v8)
  {
    v13.receiver = self;
    v13.super_class = AVTNotifyingContainerView;
    [(AVTNotifyingContainerView *)&v13 setFrame:x, y, width, height];
  }

  else
  {
    v11 = [(AVTNotifyingContainerView *)self delegate];
    [v11 notifyingContainerViewWillChangeSize:{width, height}];

    v13.receiver = self;
    v13.super_class = AVTNotifyingContainerView;
    [(AVTNotifyingContainerView *)&v13 setFrame:x, y, width, height];
    v12 = [(AVTNotifyingContainerView *)self delegate];
    [v12 notifyingContainerViewDidChangeSize:{width, height}];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(AVTNotifyingContainerView *)self bounds];
  if (width == v9 && height == v8)
  {
    v13.receiver = self;
    v13.super_class = AVTNotifyingContainerView;
    [(AVTNotifyingContainerView *)&v13 setBounds:x, y, width, height];
  }

  else
  {
    v11 = [(AVTNotifyingContainerView *)self delegate];
    [v11 notifyingContainerViewWillChangeSize:{width, height}];

    v13.receiver = self;
    v13.super_class = AVTNotifyingContainerView;
    [(AVTNotifyingContainerView *)&v13 setBounds:x, y, width, height];
    v12 = [(AVTNotifyingContainerView *)self delegate];
    [v12 notifyingContainerViewDidChangeSize:{width, height}];
  }
}

- (AVTNotifyingContainerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end