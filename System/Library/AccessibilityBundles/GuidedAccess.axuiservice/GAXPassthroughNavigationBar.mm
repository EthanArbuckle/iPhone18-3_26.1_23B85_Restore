@interface GAXPassthroughNavigationBar
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation GAXPassthroughNavigationBar

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  objc_opt_class();
  [(GAXPassthroughNavigationBar *)self subviews];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y, v18}];
        v14 = [v13 hitTest:v7 withEvent:?];
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v16 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(GAXPassthroughNavigationBar *)self subviews];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = v20 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y, v17}];
        v14 = [v13 _accessibilityHitTest:v7 withEvent:?];
        if (v14)
        {
          v15 = v14;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_11:

  return v15;
}

@end