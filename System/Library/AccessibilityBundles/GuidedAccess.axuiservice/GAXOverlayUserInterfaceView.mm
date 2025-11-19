@interface GAXOverlayUserInterfaceView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (GAXOverlayUserInterfaceViewDelegate)delegate;
@end

@implementation GAXOverlayUserInterfaceView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(GAXOverlayUserInterfaceView *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 isModalContentBeingPresentedInOverlayUserInterfaceView:self])
  {
    v21.receiver = self;
    v21.super_class = GAXOverlayUserInterfaceView;
    v9 = [(GAXOverlayUserInterfaceView *)&v21 pointInside:v7 withEvent:x, y];
  }

  else
  {
    [(GAXOverlayUserInterfaceView *)self subviews];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = v20 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          [v15 convertPoint:self fromView:{x, y, v17}];
          if ([v15 pointInside:v7 withEvent:?])
          {
            v9 = 1;
            goto LABEL_14;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_14:
  }

  return v9;
}

- (GAXOverlayUserInterfaceViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end