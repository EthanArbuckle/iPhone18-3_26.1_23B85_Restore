@interface EKEventTextDetailItem
+ (id)textFromEventBlock;
+ (id)titleForCell;
+ (id)titleForExtendedViewController;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update;
- (id)_createEventDetailCell;
- (id)cellForSubitemAtIndex:(unint64_t)index;
- (id)textForCopyAction;
- (id)textForExtendedViewController;
- (void)_updateCellIfNeeded;
- (void)requestShowCellDetail;
- (void)reset;
- (void)setCellPosition:(int)position;
@end

@implementation EKEventTextDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (void)setCellPosition:(int)position
{
  v4.receiver = self;
  v4.super_class = EKEventTextDetailItem;
  [(EKEventDetailItem *)&v4 setCellPosition:*&position];
  self->_cellNeedsUpdate = 1;
}

- (void)_updateCellIfNeeded
{
  if (self->_cellNeedsUpdate)
  {
    [(EKEventDetailCell *)self->_cell update];
    cell = self->_cell;
    [(EKEventDetailCell *)cell frame];
    [(EKEventDetailCell *)cell layoutForWidth:[(EKEventDetailItem *)self cellPosition] position:v4];
    self->_cellNeedsUpdate = 0;
  }
}

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)index forWidth:(double)width forceUpdate:(BOOL)update
{
  if (self->_cell)
  {
    if (update)
    {
      self->_cellNeedsUpdate = 1;
    }

    [(EKEventTextDetailItem *)self _updateCellIfNeeded];
  }

  else
  {
    update = [(EKEventTextDetailItem *)self cellForSubitemAtIndex:index, update];
  }

  if (!EKUIUnscaledCatalyst())
  {
    return *MEMORY[0x1E69DE3D0];
  }

  LODWORD(v8) = 1148846080;
  LODWORD(v9) = 1112014848;
  [(EKEventDetailCell *)self->_cell systemLayoutSizeFittingSize:width withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:v8, v9];
  v11 = v10;
  +[EKEventDetailTextCell maxHeight];
  if (v11 < result)
  {
    return v11;
  }

  return result;
}

- (id)cellForSubitemAtIndex:(unint64_t)index
{
  if (!self->_cell)
  {
    _createEventDetailCell = [(EKEventTextDetailItem *)self _createEventDetailCell];
    cell = self->_cell;
    self->_cell = _createEventDetailCell;

    self->_cellNeedsUpdate = 1;
  }

  [(EKEventTextDetailItem *)self _updateCellIfNeeded];
  v6 = self->_cell;

  return v6;
}

- (id)_createEventDetailCell
{
  v3 = [EKEventDetailTextCell alloc];
  event = self->super._event;
  titleForCell = [objc_opt_class() titleForCell];
  textFromEventBlock = [objc_opt_class() textFromEventBlock];
  v7 = [(EKEventDetailTextCell *)v3 initWithEvent:event title:titleForCell textFromEventBlock:textFromEventBlock];

  [(EKEventDetailTextCell *)v7 setDelegate:self];

  return v7;
}

- (void)requestShowCellDetail
{
  v3 = [EKEventDetailExtendedTextViewController alloc];
  textForExtendedViewController = [(EKEventTextDetailItem *)self textForExtendedViewController];
  titleForExtendedViewController = [objc_opt_class() titleForExtendedViewController];
  event = self->super._event;
  textForCopyAction = [(EKEventTextDetailItem *)self textForCopyAction];
  v10 = [(EKEventDetailExtendedTextViewController *)v3 initWithText:textForExtendedViewController title:titleForExtendedViewController event:event textForCopyAction:textForCopyAction];

  viewControllerToPresentFrom = [(EKEventDetailItem *)self viewControllerToPresentFrom];
  navigationDelegate = [viewControllerToPresentFrom navigationDelegate];
  [navigationDelegate pushViewController:v10 animated:1];
}

+ (id)titleForExtendedViewController
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0;
}

+ (id)titleForCell
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0;
}

+ (id)textFromEventBlock
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0;
}

- (id)textForExtendedViewController
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0;
}

- (id)textForCopyAction
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  return 0;
}

@end