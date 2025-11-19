@interface QLSlideTransitionDriver
- (void)_animateTransition;
- (void)_animateTransitionUserSlideDismissal;
- (void)animateTransition;
@end

@implementation QLSlideTransitionDriver

- (void)animateTransition
{
  v3 = [(QLTransitionDriver *)self gestureTracker];
  v4 = v3;
  if (!v3 || ([v3 trackedTransform], CGAffineTransformIsIdentity(&v5)) || -[QLTransitionDriver presenting](self, "presenting"))
  {
    [(QLSlideTransitionDriver *)self _animateTransition];
  }

  else
  {
    [(QLSlideTransitionDriver *)self _animateTransitionUserSlideDismissal];
  }
}

- (void)_animateTransition
{
  memset(&v19, 0, sizeof(v19));
  if ([(QLTransitionDriver *)self presenting])
  {
    v3 = *(MEMORY[0x277CBF2C0] + 16);
    *&v19.a = *MEMORY[0x277CBF2C0];
    *&v19.c = v3;
    *&v19.tx = *(MEMORY[0x277CBF2C0] + 32);
  }

  else
  {
    v4 = [(QLTransitionDriver *)self destinationView];
    v5 = v4;
    if (v4)
    {
      [v4 transform];
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }
  }

  v18 = v19;
  if ([(QLTransitionDriver *)self presenting])
  {
    v6 = [(QLTransitionDriver *)self transitionContainer];
    [v6 frame];
    Height = CGRectGetHeight(v20);
    v16 = v19;
    CGAffineTransformTranslate(&v17, &v16, 0.0, Height);
    v19 = v17;
  }

  else
  {
    v6 = [(QLTransitionDriver *)self transitionContainer];
    [v6 frame];
    v8 = CGRectGetHeight(v21);
    v9 = [(QLTransitionDriver *)self destinationView];
    [v9 frame];
    v17 = v18;
    CGAffineTransformTranslate(&v18, &v17, 0.0, v8 - v10);
  }

  v15 = v19;
  v11 = [(QLTransitionDriver *)self destinationView];
  v17 = v15;
  [v11 setTransform:&v17];

  [(QLTransitionDriver *)self presenting];
  v12 = MEMORY[0x277D75D18];
  [(QLTransitionDriver *)self duration];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = v18;
  v13[2] = __45__QLSlideTransitionDriver__animateTransition__block_invoke;
  v13[3] = &unk_278B58FF0;
  v13[4] = self;
  [v12 animateWithDuration:0 delay:v13 usingSpringWithDamping:0 initialSpringVelocity:? options:? animations:? completion:?];
}

void __45__QLSlideTransitionDriver__animateTransition__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) destinationView];
  [v1 setTransform:&v2];
}

- (void)_animateTransitionUserSlideDismissal
{
  v3 = [(QLTransitionDriver *)self gestureTracker];
  [v3 trackedVelocity];
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 bounds];
  v12 = v11;
  v13 = v11 * 1.5;

  v14 = [MEMORY[0x277D759A0] mainScreen];
  [v14 bounds];
  v16 = v15;
  v17 = v15 * 1.5;

  if (v5 >= v13)
  {
    v18 = v13;
  }

  else
  {
    v18 = v5;
  }

  if (v18 >= -(v12 * 1.5))
  {
    v19 = v18;
  }

  else
  {
    v19 = -(v12 * 1.5);
  }

  if (v7 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v7;
  }

  memset(&v36.c, 0, 32);
  if (v20 >= -(v16 * 1.5))
  {
    v21 = v20;
  }

  else
  {
    v21 = -(v16 * 1.5);
  }

  *&v36.a = 0uLL;
  v22 = [(QLTransitionDriver *)self destinationView];
  v23 = v22;
  if (v22)
  {
    [v22 transform];
  }

  else
  {
    memset(&v36, 0, sizeof(v36));
  }

  v35 = v36;
  [(QLTransitionDriver *)self duration];
  v25 = v19 * v24;
  [(QLTransitionDriver *)self duration];
  v34 = v35;
  CGAffineTransformTranslate(&v35, &v34, v25, v21 * v26);
  v33 = v35;
  CGAffineTransformScale(&v34, &v33, 0.3, 0.3);
  v35 = v34;
  if (v9 != 0.0)
  {
    [(QLTransitionDriver *)self duration];
    v33 = v35;
    CGAffineTransformRotate(&v34, &v33, v9 * v27 + v9 * v27);
    v35 = v34;
  }

  v32 = v36;
  v28 = [(QLTransitionDriver *)self destinationView];
  v34 = v32;
  [v28 setTransform:&v34];

  v29 = MEMORY[0x277D75D18];
  [(QLTransitionDriver *)self duration];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v31 = v35;
  v30[2] = __63__QLSlideTransitionDriver__animateTransitionUserSlideDismissal__block_invoke;
  v30[3] = &unk_278B58FF0;
  v30[4] = self;
  [v29 animateWithDuration:0x20000 delay:v30 usingSpringWithDamping:0 initialSpringVelocity:? options:? animations:? completion:?];
}

void __63__QLSlideTransitionDriver__animateTransitionUserSlideDismissal__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) destinationView];
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) destinationView];
  [v3 setAlpha:0.0];
}

@end