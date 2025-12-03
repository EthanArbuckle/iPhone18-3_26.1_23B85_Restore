@interface GAXOptionsScrollView
- (BOOL)_targetView:(id)view hasGrandparentViewOfType:(Class)type;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation GAXOptionsScrollView

- (BOOL)_targetView:(id)view hasGrandparentViewOfType:(Class)type
{
  viewCopy = view;
  v5 = viewCopy;
  if (viewCopy)
  {
    v6 = viewCopy;
    do
    {
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        break;
      }

      superview = [v6 superview];

      v6 = superview;
    }

    while (superview);
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v8.receiver = self;
  v8.super_class = GAXOptionsScrollView;
  v5 = [(GAXOptionsScrollView *)&v8 hitTest:event withEvent:test.x, test.y];
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