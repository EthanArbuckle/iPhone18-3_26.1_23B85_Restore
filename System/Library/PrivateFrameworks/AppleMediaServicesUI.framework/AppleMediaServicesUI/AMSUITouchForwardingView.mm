@interface AMSUITouchForwardingView
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation AMSUITouchForwardingView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v28 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v26.receiver = self;
  v26.super_class = AMSUITouchForwardingView;
  v8 = [(AMSUITouchForwardingView *)&v26 hitTest:v7 withEvent:x, y];
  v9 = v8;
  if (v8 == self)
  {
    v11 = [(AMSUITouchForwardingView *)self passthroughViews];

    if (v11)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v12 = [(AMSUITouchForwardingView *)self passthroughViews];
      v13 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v23;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v23 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v22 + 1) + 8 * i);
            if (v17)
            {
              [(AMSUITouchForwardingView *)self convertPoint:*(*(&v22 + 1) + 8 * i) toView:x, y];
              v18 = [v17 hitTest:v7 withEvent:?];
              if (v18)
              {
                v19 = v18;

                goto LABEL_16;
              }
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    v10 = self;
  }

  else
  {
    v10 = v8;
  }

  v19 = v10;
LABEL_16:

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

@end