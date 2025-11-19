@interface PassThroughStackView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation PassThroughStackView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [(PassThroughStackView *)self subviews];
  v9 = [v8 reverseObjectEnumerator];

  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        if ([v14 isUserInteractionEnabled])
        {
          if (([v14 isHidden] & 1) == 0)
          {
            [v14 alpha];
            if (v15 >= 0.01)
            {
              [v14 convertPoint:self fromView:{x, y}];
              v17 = v16;
              v19 = v18;
              if ([v14 pointInside:v7 withEvent:?])
              {
                v20 = [v14 hitTest:v7 withEvent:{v17, v19}];
                if (v20)
                {
                  v21 = v20;
                  goto LABEL_15;
                }
              }
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_15:

  return v21;
}

@end