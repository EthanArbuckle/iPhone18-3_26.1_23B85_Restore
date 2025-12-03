@interface PKSelectionGestureView
- (PKSelectionController)selectionController;
- (PKSelectionGestureView)initWithFrame:(CGRect)frame selectionController:(id)controller;
- (void)didMoveToWindow;
@end

@implementation PKSelectionGestureView

- (void)didMoveToWindow
{
  window = [(PKSelectionGestureView *)self window];

  if (window)
  {
    selectionInteraction = [(PKSelectionGestureView *)self selectionInteraction];
    WeakRetained = objc_loadWeakRetained(&self->_selectionController);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = objc_loadWeakRetained(WeakRetained + 15);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 ink];
    [selectionInteraction _updateAllowedTouchTypesForSelectedInk:v7];
  }
}

- (PKSelectionGestureView)initWithFrame:(CGRect)frame selectionController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = PKSelectionGestureView;
  height = [(PKSelectionGestureView *)&v15 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_selectionController, controllerCopy);
    v12 = [[PKSelectionInteraction alloc] initWithSelectionController:controllerCopy];
    selectionInteraction = v11->_selectionInteraction;
    v11->_selectionInteraction = v12;

    [(PKSelectionGestureView *)v11 addInteraction:v11->_selectionInteraction];
  }

  return v11;
}

- (PKSelectionController)selectionController
{
  WeakRetained = objc_loadWeakRetained(&self->_selectionController);

  return WeakRetained;
}

@end