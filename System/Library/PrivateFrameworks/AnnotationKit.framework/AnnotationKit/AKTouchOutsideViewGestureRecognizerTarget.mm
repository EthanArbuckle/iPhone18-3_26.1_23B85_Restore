@interface AKTouchOutsideViewGestureRecognizerTarget
- (BOOL)isEqual:(id)a3;
- (SEL)action;
- (id)target;
- (unint64_t)hash;
- (void)setAction:(SEL)a3;
@end

@implementation AKTouchOutsideViewGestureRecognizerTarget

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(AKTouchOutsideViewGestureRecognizerTarget *)self target];
    v6 = [v4 target];
    if (v5 == v6)
    {
      v8 = [(AKTouchOutsideViewGestureRecognizerTarget *)self action];
      v7 = v8 == [v4 action];
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
  v2 = [(AKTouchOutsideViewGestureRecognizerTarget *)self target];
  v3 = [v2 hash];

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

- (void)setAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->mAction = v3;
}

@end