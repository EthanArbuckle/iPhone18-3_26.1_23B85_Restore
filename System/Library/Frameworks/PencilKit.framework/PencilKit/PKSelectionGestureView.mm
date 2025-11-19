@interface PKSelectionGestureView
- (PKSelectionController)selectionController;
- (PKSelectionGestureView)initWithFrame:(CGRect)a3 selectionController:(id)a4;
- (void)didMoveToWindow;
@end

@implementation PKSelectionGestureView

- (void)didMoveToWindow
{
  v3 = [(PKSelectionGestureView *)self window];

  if (v3)
  {
    v8 = [(PKSelectionGestureView *)self selectionInteraction];
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
    [v8 _updateAllowedTouchTypesForSelectedInk:v7];
  }
}

- (PKSelectionGestureView)initWithFrame:(CGRect)a3 selectionController:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = PKSelectionGestureView;
  v10 = [(PKSelectionGestureView *)&v15 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_selectionController, v9);
    v12 = [[PKSelectionInteraction alloc] initWithSelectionController:v9];
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