@interface QLReducedMotionTransitionDriver
- (void)animateTransition;
@end

@implementation QLReducedMotionTransitionDriver

- (void)animateTransition
{
  presenting = [(QLTransitionDriver *)self presenting];
  v4 = (presenting ^ 1);
  v5 = presenting;
  destinationView = [(QLTransitionDriver *)self destinationView];
  [destinationView setAlpha:v4];

  v7 = MEMORY[0x277D75D18];
  [(QLTransitionDriver *)self duration];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__QLReducedMotionTransitionDriver_animateTransition__block_invoke;
  v8[3] = &unk_278B57318;
  v8[4] = self;
  *&v8[5] = v5;
  [v7 animateWithDuration:v8 animations:0 completion:?];
}

void __52__QLReducedMotionTransitionDriver_animateTransition__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) destinationView];
  [v2 setAlpha:v1];
}

@end