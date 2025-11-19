@interface SSSAnimator
+ (id)animatorWithDragAnimating:(id)a3;
+ (id)animatorWithPropertyAnimator:(id)a3;
- (UIDragAnimating)dragAnimating;
- (UIViewPropertyAnimator)propertyAnimator;
- (void)addAnimations:(id)a3;
- (void)addCompletion:(id)a3;
@end

@implementation SSSAnimator

+ (id)animatorWithPropertyAnimator:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setPropertyAnimator:v3];

  return v4;
}

+ (id)animatorWithDragAnimating:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDragAnimating:v3];

  return v4;
}

- (void)addAnimations:(id)a3
{
  v4 = a3;
  v5 = [(SSSAnimator *)self propertyAnimator];
  [v5 addAnimations:v4];

  v6 = [(SSSAnimator *)self dragAnimating];
  [v6 addAnimations:v4];
}

- (void)addCompletion:(id)a3
{
  v4 = a3;
  v5 = [(SSSAnimator *)self propertyAnimator];
  [v5 addCompletion:v4];

  v6 = [(SSSAnimator *)self dragAnimating];
  [v6 addCompletion:v4];
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