@interface SSSAnimator
+ (id)animatorWithDragAnimating:(id)animating;
+ (id)animatorWithPropertyAnimator:(id)animator;
- (UIDragAnimating)dragAnimating;
- (UIViewPropertyAnimator)propertyAnimator;
- (void)addAnimations:(id)animations;
- (void)addCompletion:(id)completion;
@end

@implementation SSSAnimator

+ (id)animatorWithPropertyAnimator:(id)animator
{
  animatorCopy = animator;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setPropertyAnimator:animatorCopy];

  return v4;
}

+ (id)animatorWithDragAnimating:(id)animating
{
  animatingCopy = animating;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDragAnimating:animatingCopy];

  return v4;
}

- (void)addAnimations:(id)animations
{
  animationsCopy = animations;
  propertyAnimator = [(SSSAnimator *)self propertyAnimator];
  [propertyAnimator addAnimations:animationsCopy];

  dragAnimating = [(SSSAnimator *)self dragAnimating];
  [dragAnimating addAnimations:animationsCopy];
}

- (void)addCompletion:(id)completion
{
  completionCopy = completion;
  propertyAnimator = [(SSSAnimator *)self propertyAnimator];
  [propertyAnimator addCompletion:completionCopy];

  dragAnimating = [(SSSAnimator *)self dragAnimating];
  [dragAnimating addCompletion:completionCopy];
}

- (UIViewPropertyAnimator)propertyAnimator
{
  WeakRetained = objc_loadWeakRetained(&self->_propertyAnimator);

  return WeakRetained;
}

- (UIDragAnimating)dragAnimating
{
  WeakRetained = objc_loadWeakRetained(&self->_dragAnimating);

  return WeakRetained;
}

@end