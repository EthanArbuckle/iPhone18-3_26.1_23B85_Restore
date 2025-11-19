@interface THTransitionView
- (void)beginTransition;
- (void)dealloc;
- (void)transitionDidFinishShouldRemoveFromSuperview:(BOOL)a3;
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
  v3 = [(THTransitionView *)self window];

  [v3 setUserInteractionEnabled:0];
}

- (void)transitionDidFinishShouldRemoveFromSuperview:(BOOL)a3
{
  v3 = a3;
  [-[THTransitionView window](self "window")];
  if (v3)
  {
    [(THTransitionView *)self removeFromSuperview];
  }

  v5 = [(THTransitionView *)self delegate];

  [(THTransitionViewDelegate *)v5 transitionDidFinish:self];
}

@end