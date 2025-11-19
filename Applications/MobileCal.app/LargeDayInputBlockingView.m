@interface LargeDayInputBlockingView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)description;
@end

@implementation LargeDayInputBlockingView

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v17.receiver = self;
  v17.super_class = LargeDayInputBlockingView;
  v4 = [(LargeDayInputBlockingView *)&v17 description];
  [v3 appendFormat:@"%@", v4];

  v5 = [(LargeDayInputBlockingView *)self passthroughViews];
  v6 = [v5 count];
  [v3 appendFormat:@"\n\tPassthrough views:"];
  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v3 appendFormat:@"\n\t[%@]", *(*(&v13 + 1) + 8 * i)];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [v3 appendFormat:@"\n\tNone"];
  }

  return v3;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [(LargeDayInputBlockingView *)self passthroughViews:a4];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        [v12 bounds];
        [(LargeDayInputBlockingView *)self convertRect:v12 fromView:?];
        v20.x = x;
        v20.y = y;
        if (CGRectContainsPoint(v21, v20))
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

@end