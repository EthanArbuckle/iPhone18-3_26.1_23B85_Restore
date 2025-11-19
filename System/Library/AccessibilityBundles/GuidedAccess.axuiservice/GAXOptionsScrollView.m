@interface GAXOptionsScrollView
- (BOOL)_targetView:(id)a3 hasGrandparentViewOfType:(Class)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation GAXOptionsScrollView

- (BOOL)_targetView:(id)a3 hasGrandparentViewOfType:(Class)a4
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    do
    {
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      v8 = [v6 superview];

      v6 = v8;
    }

    while (v8);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v8.receiver = self;
  v8.super_class = GAXOptionsScrollView;
  v5 = [(GAXOptionsScrollView *)&v8 hitTest:a4 withEvent:a3.x, a3.y];
  if ([(GAXOptionsScrollView *)self _targetView:v5 hasGrandparentViewOfType:objc_opt_class()])
  {
    v6 = 0;
  }

  else
  {
    v6 = [(GAXOptionsScrollView *)self _targetView:v5 hasGrandparentViewOfType:NSClassFromString(@"TimeRestrictionFeatureView")]^ 1;
  }

  [(GAXOptionsScrollView *)self setScrollEnabled:v6];

  return v5;
}

@end