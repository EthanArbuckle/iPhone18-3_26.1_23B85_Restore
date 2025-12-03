@interface AKInkOverlayView_iOS
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)_viewsToHitTestForEvent:(id)event;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)commonInit;
@end

@implementation AKInkOverlayView_iOS

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = AKInkOverlayView_iOS;
  [(AKInkOverlayView *)&v3 commonInit];
  [(AKInkOverlayView_iOS *)self setUserInteractionEnabled:0];
}

- (id)_viewsToHitTestForEvent:(id)event
{
  v10[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  canvasView = [(AKInkOverlayView *)self canvasView];
  type = [eventCopy type];

  if (type == 9)
  {
    v10[0] = canvasView;
    _adornmentViewsToHitTest = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  else
  {
    _adornmentViewsToHitTest = [canvasView _adornmentViewsToHitTest];
  }

  v8 = _adornmentViewsToHitTest;

  return v8;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  v21 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  [(AKInkOverlayView_iOS *)self _viewsToHitTestForEvent:eventCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v19 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        if (v13)
        {
          [(AKInkOverlayView_iOS *)self convertPoint:*(*(&v16 + 1) + 8 * i) toView:x, y, v16];
          if ([v13 pointInside:eventCopy withEvent:?])
          {
            v14 = 1;
            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_12:

  return v14;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v27 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v25.receiver = self;
  v25.super_class = AKInkOverlayView_iOS;
  v8 = [(AKInkOverlayView_iOS *)&v25 hitTest:eventCopy withEvent:x, y];
  if (!v8)
  {
    [(AKInkOverlayView_iOS *)self _viewsToHitTestForEvent:eventCopy];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v24 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          if (v14)
          {
            [(AKInkOverlayView_iOS *)self convertPoint:*(*(&v21 + 1) + 8 * i) toView:x, y, v21];
            v16 = v15;
            v18 = v17;
            if ([v14 pointInside:eventCopy withEvent:?])
            {
              v19 = [v14 hitTest:eventCopy withEvent:{v16, v18}];
              if (v19)
              {
                v8 = v19;
                goto LABEL_14;
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = 0;
LABEL_14:
  }

  return v8;
}

@end