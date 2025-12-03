@interface AETouchOutsideViewGestureRecognizerTarget
- (BOOL)isEqual:(id)equal;
- (SEL)action;
- (id)target;
- (unint64_t)hash;
- (void)setAction:(SEL)action;
@end

@implementation AETouchOutsideViewGestureRecognizerTarget

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    target = [(AETouchOutsideViewGestureRecognizerTarget *)self target];
    target2 = [equalCopy target];
    if (target == target2)
    {
      action = [(AETouchOutsideViewGestureRecognizerTarget *)self action];
      v7 = action == [equalCopy action];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  target = [(AETouchOutsideViewGestureRecognizerTarget *)self target];
  v3 = [target hash];

  return v3;
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->mTarget);

  return WeakRetained;
}

- (SEL)action
{
  if (self->mAction)
  {
    return self->mAction;
  }

  else
  {
    return 0;
  }
}

- (void)setAction:(SEL)action
{
  if (action)
  {
    actionCopy = action;
  }

  else
  {
    actionCopy = 0;
  }

  self->mAction = actionCopy;
}

@end