@interface CNUINavigationListView
- (BOOL)location:(CGPoint)location isInAccessoryControlTouchArea:(id)area;
- (CGPoint)gestureStartLocation;
- (CGPoint)gestureStartLocationInWindow;
- (CNUINavigationListView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (CNUINavigationListViewDataSource)navigationListViewDataSource;
- (CNUINavigationListViewDelegate)navigationListViewDelegate;
- (id)dequeueDetailNavigationListViewCell;
- (id)dequeueNavigationListViewCell;
- (id)disclosureNavigationListViewCellForRowAtIndexPath:(id)path;
- (id)elementAtLocation:(CGPoint)location;
- (void)clearAdditionalSelectionGestureRecognizer;
- (void)handlePanGestureRecognizerUpdate:(id)update;
- (void)handlePressSelection;
- (void)handleSelectionGestureRecognizerUpdate:(id)update;
- (void)notifyDelegateWithSelectionEventAtIndexPath:(id)path;
- (void)notifyDelegateWithSelectionEventAtPoint:(CGPoint)point trackedElementIndexPath:(id)path;
- (void)startTrackingElementAtIndexPath:(id)path;
- (void)startTrackingSelectionFromGestureRecognizer:(id)recognizer;
- (void)stopTrackingElementAtIndexPath:(id)path;
- (void)updateCellAccessoryControlState:(id)state withTrackedLocation:(CGPoint)location;
- (void)willMoveToWindow:(id)window;
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
  additionalSelectionGestureRecognizer = [(CNUINavigationListView *)self additionalSelectionGestureRecognizer];
  [additionalSelectionGestureRecognizer removeTarget:self action:0];

  [(CNUINavigationListView *)self setAdditionalSelectionGestureRecognizer:0];
}

- (void)startTrackingSelectionFromGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  [(CNUINavigationListView *)self clearAdditionalSelectionGestureRecognizer];
  [(CNUINavigationListView *)self setAdditionalSelectionGestureRecognizer:recognizerCopy];
  additionalSelectionGestureRecognizer = [(CNUINavigationListView *)self additionalSelectionGestureRecognizer];
  [additionalSelectionGestureRecognizer addTarget:self action:sel_handleSelectionGestureRecognizerUpdate_];

  [(CNUINavigationListView *)self handleSelectionGestureRecognizerUpdate:recognizerCopy];
}

- (void)notifyDelegateWithSelectionEventAtIndexPath:(id)path
{
  pathCopy = path;
  navigationListViewDelegate = [(CNUINavigationListView *)self navigationListViewDelegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    navigationListViewDelegate2 = [(CNUINavigationListView *)self navigationListViewDelegate];
    [navigationListViewDelegate2 navigationListView:self didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)notifyDelegateWithSelectionEventAtPoint:(CGPoint)point trackedElementIndexPath:(id)path
{
  y = point.y;
  x = point.x;
  pathCopy = path;
  v7 = [(CNUINavigationListView *)self disclosureNavigationListViewCellForRowAtIndexPath:?];
  if (v7 && [(CNUINavigationListView *)self location:v7 isInAccessoryControlTouchArea:x, y])
  {
    navigationListViewDelegate = [(CNUINavigationListView *)self navigationListViewDelegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    navigationListViewDelegate2 = [(CNUINavigationListView *)self navigationListViewDelegate];
    [navigationListViewDelegate2 navigationListView:self accessoryButtonTappedForRowWithIndexPath:pathCopy];
  }

  else
  {
    navigationListViewDelegate3 = [(CNUINavigationListView *)self navigationListViewDelegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      navigationListViewDelegate4 = [(CNUINavigationListView *)self navigationListViewDelegate];
      v14 = [navigationListViewDelegate4 navigationListView:self shouldSelectRowAtIndexPath:pathCopy];

      if (!v14)
      {
        goto LABEL_10;
      }
    }

    navigationListViewDelegate5 = [(CNUINavigationListView *)self navigationListViewDelegate];
    v16 = objc_opt_respondsToSelector();

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }

    navigationListViewDelegate2 = [(CNUINavigationListView *)self navigationListViewDelegate];
    [navigationListViewDelegate2 navigationListView:self didSelectRowAtIndexPath:pathCopy];
  }

LABEL_10:
}

- (void)updateCellAccessoryControlState:(id)state withTrackedLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  stateCopy = state;
  v8 = [(CNUINavigationListView *)self location:stateCopy isInAccessoryControlTouchArea:x, y];
  accessoryImageView = [stateCopy accessoryImageView];

  [accessoryImageView setHighlighted:v8];
}

- (BOOL)location:(CGPoint)location isInAccessoryControlTouchArea:(id)area
{
  y = location.y;
  x = location.x;
  areaCopy = area;
  accessoryImageView = [areaCopy accessoryImageView];
  isHidden = [accessoryImageView isHidden];

  if (isHidden)
  {
    v10 = 0;
  }

  else
  {
    [areaCopy convertPoint:self fromView:{x, y}];
    v12 = v11;
    v14 = v13;
    accessoryImageView2 = [areaCopy accessoryImageView];
    [accessoryImageView2 frame];

    UIRectGetCenter();
    UIRectCenteredAboutPoint();
    v17.x = v12;
    v17.y = v14;
    v10 = CGRectContainsPoint(v18, v17);
  }

  return v10;
}

- (void)startTrackingElementAtIndexPath:(id)path
{
  pathCopy = path;
  trackedElementIndexPath = [(CNUINavigationListView *)self trackedElementIndexPath];

  if (trackedElementIndexPath)
  {
    trackedElementIndexPath2 = [(CNUINavigationListView *)self trackedElementIndexPath];
    [(CNUINavigationListView *)self stopTrackingElementAtIndexPath:trackedElementIndexPath2];
  }

  [(CNUINavigationListView *)self setTrackedElementIndexPath:pathCopy];
  navigationListViewDelegate = [(CNUINavigationListView *)self navigationListViewDelegate];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0 || (-[CNUINavigationListView navigationListViewDelegate](self, "navigationListViewDelegate"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 navigationListView:self shouldHighlightRowAtIndexPath:pathCopy], v8, v9))
  {
    v10 = [(CNUINavigationListView *)self disclosureNavigationListViewCellForRowAtIndexPath:pathCopy];
    v11 = v10;
    if (v10)
    {
      [v10 setHighlighted:1 animated:0];
      if (!trackedElementIndexPath)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v13 = [(CNUINavigationListView *)self cellForRowAtIndexPath:pathCopy];
      [v13 setHighlighted:1 animated:0];

      if (!trackedElementIndexPath)
      {
        goto LABEL_8;
      }
    }

    retargetBehavior = [(CNUINavigationListView *)self retargetBehavior];
    [retargetBehavior selectionChanged];

    goto LABEL_8;
  }

LABEL_9:
}

- (void)stopTrackingElementAtIndexPath:(id)path
{
  pathCopy = path;
  v4 = [(CNUINavigationListView *)self disclosureNavigationListViewCellForRowAtIndexPath:?];
  v5 = v4;
  if (v4)
  {
    [v4 setHighlighted:0 animated:0];
    accessoryImageView = [v5 accessoryImageView];
    [accessoryImageView setHighlighted:0];
  }

  else
  {
    accessoryImageView = [(CNUINavigationListView *)self cellForRowAtIndexPath:pathCopy];
    [accessoryImageView setHighlighted:0 animated:0];
  }

  [(CNUINavigationListView *)self setTrackedElementIndexPath:0];
}

- (void)handlePanGestureRecognizerUpdate:(id)update
{
  updateCopy = update;
  selectionGestureRecognizer = [(CNUINavigationListView *)self selectionGestureRecognizer];
  v5 = ![updateCopy state] || objc_msgSend(updateCopy, "state") == 4 || objc_msgSend(updateCopy, "state") == 5 || objc_msgSend(updateCopy, "state") == 3;
  [selectionGestureRecognizer setEnabled:v5];
}

- (void)handlePressSelection
{
  visibleCells = [(CNUINavigationListView *)self visibleCells];
  v4 = [visibleCells _cn_filter:&__block_literal_global_20452];
  firstObject = [v4 firstObject];

  v5 = [(CNUINavigationListView *)self indexPathForCell:firstObject];
  [(CNUINavigationListView *)self notifyDelegateWithSelectionEventAtIndexPath:v5];
}

- (void)handleSelectionGestureRecognizerUpdate:(id)update
{
  updateCopy = update;
  [updateCopy locationInView:self];
  v5 = v4;
  v7 = v6;
  window = [(CNUINavigationListView *)self window];
  [updateCopy locationInView:window];
  v10 = v9;
  v12 = v11;

  v13 = [(CNUINavigationListView *)self elementAtLocation:v5, v7];
  v14 = [updateCopy state] != 1 && objc_msgSend(updateCopy, "state") != 2;
  v15 = [updateCopy state] == 3 || objc_msgSend(updateCopy, "state") == 4;
  state = [updateCopy state];
  if ([updateCopy state] == 1)
  {
    [(CNUINavigationListView *)self setGestureStartLocation:v5, v7];
    [(CNUINavigationListView *)self setGestureStartLocationInWindow:v10, v12];
  }

  if (v13 == 0 || v14)
  {
    if (v13 == 0 || v15)
    {
      trackedElementIndexPath = [(CNUINavigationListView *)self trackedElementIndexPath];
      [(CNUINavigationListView *)self stopTrackingElementAtIndexPath:trackedElementIndexPath];

      if (v15)
      {
        additionalSelectionGestureRecognizer = [(CNUINavigationListView *)self additionalSelectionGestureRecognizer];

        if (additionalSelectionGestureRecognizer == updateCopy)
        {
          [(CNUINavigationListView *)self clearAdditionalSelectionGestureRecognizer];
        }

        if (v13 && state == 3)
        {
          [(CNUINavigationListView *)self notifyDelegateWithSelectionEventAtPoint:v13 trackedElementIndexPath:v5, v7];
        }

        else
        {
          pressGestureRecognizer = [(CNUINavigationListView *)self pressGestureRecognizer];

          if (pressGestureRecognizer == updateCopy && state == 3)
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
      trackedElementIndexPath2 = [(CNUINavigationListView *)self trackedElementIndexPath];
      v25 = [v13 isEqual:trackedElementIndexPath2];

      if ((v25 & 1) == 0)
      {
        [(CNUINavigationListView *)self startTrackingElementAtIndexPath:v13];
      }

      trackedElementIndexPath3 = [(CNUINavigationListView *)self trackedElementIndexPath];
      v27 = [(CNUINavigationListView *)self disclosureNavigationListViewCellForRowAtIndexPath:trackedElementIndexPath3];

      if (v27)
      {
        [(CNUINavigationListView *)self updateCellAccessoryControlState:v27 withTrackedLocation:v5, v7];
      }
    }

    else
    {
      selectionGestureRecognizer = [(CNUINavigationListView *)self selectionGestureRecognizer];
      [selectionGestureRecognizer setEnabled:0];

      selectionGestureRecognizer2 = [(CNUINavigationListView *)self selectionGestureRecognizer];
      [selectionGestureRecognizer2 setEnabled:1];
    }
  }
}

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = CNUINavigationListView;
  [(CNUINavigationListView *)&v7 willMoveToWindow:?];
  retargetBehavior = [(CNUINavigationListView *)self retargetBehavior];
  v6 = retargetBehavior;
  if (window)
  {
    [retargetBehavior activateWithCompletionBlock:0];
  }

  else
  {
    [retargetBehavior deactivate];
  }
}

- (id)elementAtLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
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

- (id)disclosureNavigationListViewCellForRowAtIndexPath:(id)path
{
  v3 = [(CNUINavigationListView *)self cellForRowAtIndexPath:path];
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

  accessoryImageView = [v6 accessoryImageView];
  if ([accessoryImageView isHidden])
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

- (CNUINavigationListView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v22.receiver = self;
  v22.super_class = CNUINavigationListView;
  v4 = [(CNUINavigationListView *)&v22 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

    defaultConfiguration = [MEMORY[0x1E69DD6E8] defaultConfiguration];
    v14 = [objc_alloc(MEMORY[0x1E69DCF40]) initWithConfiguration:defaultConfiguration coordinateSpace:v4];
    retargetBehavior = v4->_retargetBehavior;
    v4->_retargetBehavior = v14;

    [(CNUINavigationListView *)v4 setAlwaysBounceVertical:0];
    panGestureRecognizer = [(CNUINavigationListView *)v4 panGestureRecognizer];
    [panGestureRecognizer addTarget:v4 action:sel_handlePanGestureRecognizerUpdate_];

    v17 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_handleSelectionGestureRecognizerUpdate_];
    [(CNUINavigationListView *)v4 setPressGestureRecognizer:v17];

    pressGestureRecognizer = [(CNUINavigationListView *)v4 pressGestureRecognizer];
    [pressGestureRecognizer setAllowedTouchTypes:MEMORY[0x1E695E0F0]];

    pressGestureRecognizer2 = [(CNUINavigationListView *)v4 pressGestureRecognizer];
    [pressGestureRecognizer2 setAllowedPressTypes:&unk_1F0D4B8E0];

    pressGestureRecognizer3 = [(CNUINavigationListView *)v4 pressGestureRecognizer];
    [(CNUINavigationListView *)v4 addGestureRecognizer:pressGestureRecognizer3];
  }

  return v4;
}

@end