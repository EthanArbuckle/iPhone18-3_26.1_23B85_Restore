@interface CNUINavigationListView
- (BOOL)location:(CGPoint)a3 isInAccessoryControlTouchArea:(id)a4;
- (CGPoint)gestureStartLocation;
- (CGPoint)gestureStartLocationInWindow;
- (CNUINavigationListView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (CNUINavigationListViewDataSource)navigationListViewDataSource;
- (CNUINavigationListViewDelegate)navigationListViewDelegate;
- (id)dequeueDetailNavigationListViewCell;
- (id)dequeueNavigationListViewCell;
- (id)disclosureNavigationListViewCellForRowAtIndexPath:(id)a3;
- (id)elementAtLocation:(CGPoint)a3;
- (void)clearAdditionalSelectionGestureRecognizer;
- (void)handlePanGestureRecognizerUpdate:(id)a3;
- (void)handlePressSelection;
- (void)handleSelectionGestureRecognizerUpdate:(id)a3;
- (void)notifyDelegateWithSelectionEventAtIndexPath:(id)a3;
- (void)notifyDelegateWithSelectionEventAtPoint:(CGPoint)a3 trackedElementIndexPath:(id)a4;
- (void)startTrackingElementAtIndexPath:(id)a3;
- (void)startTrackingSelectionFromGestureRecognizer:(id)a3;
- (void)stopTrackingElementAtIndexPath:(id)a3;
- (void)updateCellAccessoryControlState:(id)a3 withTrackedLocation:(CGPoint)a4;
- (void)willMoveToWindow:(id)a3;
@end

@implementation CNUINavigationListView

- (CGPoint)gestureStartLocationInWindow
{
  x = self->_gestureStartLocationInWindow.x;
  y = self->_gestureStartLocationInWindow.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)gestureStartLocation
{
  x = self->_gestureStartLocation.x;
  y = self->_gestureStartLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CNUINavigationListViewDelegate)navigationListViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationListViewDelegate);

  return WeakRetained;
}

- (CNUINavigationListViewDataSource)navigationListViewDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_navigationListViewDataSource);

  return WeakRetained;
}

- (void)clearAdditionalSelectionGestureRecognizer
{
  v3 = [(CNUINavigationListView *)self additionalSelectionGestureRecognizer];
  [v3 removeTarget:self action:0];

  [(CNUINavigationListView *)self setAdditionalSelectionGestureRecognizer:0];
}

- (void)startTrackingSelectionFromGestureRecognizer:(id)a3
{
  v5 = a3;
  [(CNUINavigationListView *)self clearAdditionalSelectionGestureRecognizer];
  [(CNUINavigationListView *)self setAdditionalSelectionGestureRecognizer:v5];
  v4 = [(CNUINavigationListView *)self additionalSelectionGestureRecognizer];
  [v4 addTarget:self action:sel_handleSelectionGestureRecognizerUpdate_];

  [(CNUINavigationListView *)self handleSelectionGestureRecognizerUpdate:v5];
}

- (void)notifyDelegateWithSelectionEventAtIndexPath:(id)a3
{
  v7 = a3;
  v4 = [(CNUINavigationListView *)self navigationListViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNUINavigationListView *)self navigationListViewDelegate];
    [v6 navigationListView:self didSelectRowAtIndexPath:v7];
  }
}

- (void)notifyDelegateWithSelectionEventAtPoint:(CGPoint)a3 trackedElementIndexPath:(id)a4
{
  y = a3.y;
  x = a3.x;
  v17 = a4;
  v7 = [(CNUINavigationListView *)self disclosureNavigationListViewCellForRowAtIndexPath:?];
  if (v7 && [(CNUINavigationListView *)self location:v7 isInAccessoryControlTouchArea:x, y])
  {
    v8 = [(CNUINavigationListView *)self navigationListViewDelegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    v10 = [(CNUINavigationListView *)self navigationListViewDelegate];
    [v10 navigationListView:self accessoryButtonTappedForRowWithIndexPath:v17];
  }

  else
  {
    v11 = [(CNUINavigationListView *)self navigationListViewDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(CNUINavigationListView *)self navigationListViewDelegate];
      v14 = [v13 navigationListView:self shouldSelectRowAtIndexPath:v17];

      if (!v14)
      {
        goto LABEL_10;
      }
    }

    v15 = [(CNUINavigationListView *)self navigationListViewDelegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }

    v10 = [(CNUINavigationListView *)self navigationListViewDelegate];
    [v10 navigationListView:self didSelectRowAtIndexPath:v17];
  }

LABEL_10:
}

- (void)updateCellAccessoryControlState:(id)a3 withTrackedLocation:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [(CNUINavigationListView *)self location:v7 isInAccessoryControlTouchArea:x, y];
  v9 = [v7 accessoryImageView];

  [v9 setHighlighted:v8];
}

- (BOOL)location:(CGPoint)a3 isInAccessoryControlTouchArea:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 accessoryImageView];
  v9 = [v8 isHidden];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    [v7 convertPoint:self fromView:{x, y}];
    v12 = v11;
    v14 = v13;
    v15 = [v7 accessoryImageView];
    [v15 frame];

    UIRectGetCenter();
    UIRectCenteredAboutPoint();
    v17.x = v12;
    v17.y = v14;
    v10 = CGRectContainsPoint(v18, v17);
  }

  return v10;
}

- (void)startTrackingElementAtIndexPath:(id)a3
{
  v14 = a3;
  v4 = [(CNUINavigationListView *)self trackedElementIndexPath];

  if (v4)
  {
    v5 = [(CNUINavigationListView *)self trackedElementIndexPath];
    [(CNUINavigationListView *)self stopTrackingElementAtIndexPath:v5];
  }

  [(CNUINavigationListView *)self setTrackedElementIndexPath:v14];
  v6 = [(CNUINavigationListView *)self navigationListViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || (-[CNUINavigationListView navigationListViewDelegate](self, "navigationListViewDelegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 navigationListView:self shouldHighlightRowAtIndexPath:v14], v8, v9))
  {
    v10 = [(CNUINavigationListView *)self disclosureNavigationListViewCellForRowAtIndexPath:v14];
    v11 = v10;
    if (v10)
    {
      [v10 setHighlighted:1 animated:0];
      if (!v4)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v13 = [(CNUINavigationListView *)self cellForRowAtIndexPath:v14];
      [v13 setHighlighted:1 animated:0];

      if (!v4)
      {
        goto LABEL_8;
      }
    }

    v12 = [(CNUINavigationListView *)self retargetBehavior];
    [v12 selectionChanged];

    goto LABEL_8;
  }

LABEL_9:
}

- (void)stopTrackingElementAtIndexPath:(id)a3
{
  v7 = a3;
  v4 = [(CNUINavigationListView *)self disclosureNavigationListViewCellForRowAtIndexPath:?];
  v5 = v4;
  if (v4)
  {
    [v4 setHighlighted:0 animated:0];
    v6 = [v5 accessoryImageView];
    [v6 setHighlighted:0];
  }

  else
  {
    v6 = [(CNUINavigationListView *)self cellForRowAtIndexPath:v7];
    [v6 setHighlighted:0 animated:0];
  }

  [(CNUINavigationListView *)self setTrackedElementIndexPath:0];
}

- (void)handlePanGestureRecognizerUpdate:(id)a3
{
  v6 = a3;
  v4 = [(CNUINavigationListView *)self selectionGestureRecognizer];
  v5 = ![v6 state] || objc_msgSend(v6, "state") == 4 || objc_msgSend(v6, "state") == 5 || objc_msgSend(v6, "state") == 3;
  [v4 setEnabled:v5];
}

- (void)handlePressSelection
{
  v3 = [(CNUINavigationListView *)self visibleCells];
  v4 = [v3 _cn_filter:&__block_literal_global_20452];
  v6 = [v4 firstObject];

  v5 = [(CNUINavigationListView *)self indexPathForCell:v6];
  [(CNUINavigationListView *)self notifyDelegateWithSelectionEventAtIndexPath:v5];
}

- (void)handleSelectionGestureRecognizerUpdate:(id)a3
{
  v29 = a3;
  [v29 locationInView:self];
  v5 = v4;
  v7 = v6;
  v8 = [(CNUINavigationListView *)self window];
  [v29 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(CNUINavigationListView *)self elementAtLocation:v5, v7];
  v14 = [v29 state] != 1 && objc_msgSend(v29, "state") != 2;
  v15 = [v29 state] == 3 || objc_msgSend(v29, "state") == 4;
  v16 = [v29 state];
  if ([v29 state] == 1)
  {
    [(CNUINavigationListView *)self setGestureStartLocation:v5, v7];
    [(CNUINavigationListView *)self setGestureStartLocationInWindow:v10, v12];
  }

  if (v13 == 0 || v14)
  {
    if (v13 == 0 || v15)
    {
      v17 = [(CNUINavigationListView *)self trackedElementIndexPath];
      [(CNUINavigationListView *)self stopTrackingElementAtIndexPath:v17];

      if (v15)
      {
        v18 = [(CNUINavigationListView *)self additionalSelectionGestureRecognizer];

        if (v18 == v29)
        {
          [(CNUINavigationListView *)self clearAdditionalSelectionGestureRecognizer];
        }

        if (v13 && v16 == 3)
        {
          [(CNUINavigationListView *)self notifyDelegateWithSelectionEventAtPoint:v13 trackedElementIndexPath:v5, v7];
        }

        else
        {
          v28 = [(CNUINavigationListView *)self pressGestureRecognizer];

          if (v28 == v29 && v16 == 3)
          {
            [(CNUINavigationListView *)self handlePressSelection];
          }
        }
      }
    }
  }

  else
  {
    [(CNUINavigationListView *)self gestureStartLocationInWindow];
    v20 = v19 - v12;
    [(CNUINavigationListView *)self gestureStartLocation];
    if (v20 == v21 - v7)
    {
      v24 = [(CNUINavigationListView *)self trackedElementIndexPath];
      v25 = [v13 isEqual:v24];

      if ((v25 & 1) == 0)
      {
        [(CNUINavigationListView *)self startTrackingElementAtIndexPath:v13];
      }

      v26 = [(CNUINavigationListView *)self trackedElementIndexPath];
      v27 = [(CNUINavigationListView *)self disclosureNavigationListViewCellForRowAtIndexPath:v26];

      if (v27)
      {
        [(CNUINavigationListView *)self updateCellAccessoryControlState:v27 withTrackedLocation:v5, v7];
      }
    }

    else
    {
      v22 = [(CNUINavigationListView *)self selectionGestureRecognizer];
      [v22 setEnabled:0];

      v23 = [(CNUINavigationListView *)self selectionGestureRecognizer];
      [v23 setEnabled:1];
    }
  }
}

- (void)willMoveToWindow:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNUINavigationListView;
  [(CNUINavigationListView *)&v7 willMoveToWindow:?];
  v5 = [(CNUINavigationListView *)self retargetBehavior];
  v6 = v5;
  if (a3)
  {
    [v5 activateWithCompletionBlock:0];
  }

  else
  {
    [v5 deactivate];
  }
}

- (id)elementAtLocation:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(CNUINavigationListView *)self bounds];
  v9.x = x;
  v9.y = y;
  if (CGRectContainsPoint(v10, v9))
  {
    v6 = [(CNUINavigationListView *)self indexPathForRowAtPoint:x, y];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)disclosureNavigationListViewCellForRowAtIndexPath:(id)a3
{
  v3 = [(CNUINavigationListView *)self cellForRowAtIndexPath:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    v4 = v3;
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 accessoryImageView];
  if ([v7 isHidden])
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;

  return v8;
}

- (id)dequeueDetailNavigationListViewCell
{
  v3 = +[CNUINavigationListViewDetailCell reuseIdentifier];
  v4 = [(CNUINavigationListView *)self dequeueReusableCellWithIdentifier:v3];

  return v4;
}

- (id)dequeueNavigationListViewCell
{
  v3 = +[CNUINavigationListViewCell reuseIdentifier];
  v4 = [(CNUINavigationListView *)self dequeueReusableCellWithIdentifier:v3];

  return v4;
}

- (CNUINavigationListView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  v22.receiver = self;
  v22.super_class = CNUINavigationListView;
  v4 = [(CNUINavigationListView *)&v22 initWithFrame:a4 style:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E69DCC48]) initWithTarget:v4 action:sel_handleSelectionGestureRecognizerUpdate_];
    selectionGestureRecognizer = v4->_selectionGestureRecognizer;
    v4->_selectionGestureRecognizer = v5;

    [(UILongPressGestureRecognizer *)v4->_selectionGestureRecognizer setMinimumPressDuration:0.0];
    v7 = objc_alloc_init(_CNUINavigationListViewPermissiveGestureRecognizerDelegate);
    selectionGestureRecognizerDelegate = v4->_selectionGestureRecognizerDelegate;
    v4->_selectionGestureRecognizerDelegate = v7;

    [(UILongPressGestureRecognizer *)v4->_selectionGestureRecognizer setDelegate:v4->_selectionGestureRecognizerDelegate];
    [(CNUINavigationListView *)v4 addGestureRecognizer:v4->_selectionGestureRecognizer];
    v9 = objc_opt_class();
    v10 = +[CNUINavigationListViewCell reuseIdentifier];
    [(CNUINavigationListView *)v4 registerClass:v9 forCellReuseIdentifier:v10];

    v11 = objc_opt_class();
    v12 = +[CNUINavigationListViewDetailCell reuseIdentifier];
    [(CNUINavigationListView *)v4 registerClass:v11 forCellReuseIdentifier:v12];

    v13 = [MEMORY[0x1E69DD6E8] defaultConfiguration];
    v14 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:v13 coordinateSpace:v4];
    retargetBehavior = v4->_retargetBehavior;
    v4->_retargetBehavior = v14;

    [(CNUINavigationListView *)v4 setAlwaysBounceVertical:0];
    v16 = [(CNUINavigationListView *)v4 panGestureRecognizer];
    [v16 addTarget:v4 action:sel_handlePanGestureRecognizerUpdate_];

    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_handleSelectionGestureRecognizerUpdate_];
    [(CNUINavigationListView *)v4 setPressGestureRecognizer:v17];

    v18 = [(CNUINavigationListView *)v4 pressGestureRecognizer];
    [v18 setAllowedTouchTypes:MEMORY[0x1E695E0F0]];

    v19 = [(CNUINavigationListView *)v4 pressGestureRecognizer];
    [v19 setAllowedPressTypes:&unk_1F0D4B8E0];

    v20 = [(CNUINavigationListView *)v4 pressGestureRecognizer];
    [(CNUINavigationListView *)v4 addGestureRecognizer:v20];
  }

  return v4;
}

@end