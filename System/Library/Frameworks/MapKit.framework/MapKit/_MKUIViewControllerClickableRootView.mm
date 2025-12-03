@interface _MKUIViewControllerClickableRootView
- (void)setTarget:(id)target action:(SEL)action;
@end

@implementation _MKUIViewControllerClickableRootView

- (void)setTarget:(id)target action:(SEL)action
{
  targetCopy = target;
  v7 = targetCopy;
  gestureRecognizer = self->_gestureRecognizer;
  if (targetCopy && action)
  {
    v12 = targetCopy;
    if (!gestureRecognizer)
    {
      v9 = objc_alloc_init(MEMORY[0x1E69DD060]);
      v10 = self->_gestureRecognizer;
      self->_gestureRecognizer = v9;

      [(_MKUIViewControllerClickableRootView *)self addGestureRecognizer:self->_gestureRecognizer];
      v7 = v12;
      gestureRecognizer = self->_gestureRecognizer;
    }

    [(UITapGestureRecognizer *)gestureRecognizer addTarget:v7 action:action];
  }

  else
  {
    if (!gestureRecognizer)
    {
      goto LABEL_9;
    }

    v12 = targetCopy;
    [(_MKUIViewControllerClickableRootView *)self removeGestureRecognizer:?];
    v11 = self->_gestureRecognizer;
    self->_gestureRecognizer = 0;
  }

  v7 = v12;
LABEL_9:
}

@end