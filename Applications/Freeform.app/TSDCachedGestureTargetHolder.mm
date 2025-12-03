@interface TSDCachedGestureTargetHolder
- (CRLGestureTarget)weakCachedGestureTarget;
- (TSDCachedGestureTargetHolder)initWithTarget:(id)target;
@end

@implementation TSDCachedGestureTargetHolder

- (TSDCachedGestureTargetHolder)initWithTarget:(id)target
{
  targetCopy = target;
  v8.receiver = self;
  v8.super_class = TSDCachedGestureTargetHolder;
  v5 = [(TSDCachedGestureTargetHolder *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mWeakCachedGestureTarget, targetCopy);
  }

  return v6;
}

- (CRLGestureTarget)weakCachedGestureTarget
{
  WeakRetained = objc_loadWeakRetained(&self->mWeakCachedGestureTarget);

  return WeakRetained;
}

@end