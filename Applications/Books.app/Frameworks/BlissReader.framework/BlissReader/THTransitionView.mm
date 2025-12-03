@interface THTransitionView
- (void)beginTransition;
- (void)dealloc;
- (void)transitionDidFinishShouldRemoveFromSuperview:(BOOL)superview;
@end

@implementation THTransitionView

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THTransitionView;
  [(THTransitionView *)&v3 dealloc];
}

- (void)beginTransition
{
  [(THTransitionViewDelegate *)[(THTransitionView *)self delegate] transitionWillBegin:self];
  window = [(THTransitionView *)self window];

  [window setUserInteractionEnabled:0];
}

- (void)transitionDidFinishShouldRemoveFromSuperview:(BOOL)superview
{
  superviewCopy = superview;
  [-[THTransitionView window](self "window")];
  if (superviewCopy)
  {
    [(THTransitionView *)self removeFromSuperview];
  }

  delegate = [(THTransitionView *)self delegate];

  [(THTransitionViewDelegate *)delegate transitionDidFinish:self];
}

@end