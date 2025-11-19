@interface EKEventTextDetailItem
+ (id)textFromEventBlock;
+ (id)titleForCell;
+ (id)titleForExtendedViewController;
- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5;
- (id)_createEventDetailCell;
- (id)cellForSubitemAtIndex:(unint64_t)a3;
- (id)textForCopyAction;
- (id)textForExtendedViewController;
- (void)_updateCellIfNeeded;
- (void)requestShowCellDetail;
- (void)reset;
- (void)setCellPosition:(int)a3;
@end

@implementation EKEventTextDetailItem

- (void)reset
{
  cell = self->_cell;
  self->_cell = 0;
}

- (void)setCellPosition:(int)a3
{
  v4.receiver = self;
  v4.super_class = EKEventTextDetailItem;
  [(EKEventDetailItem *)&v4 setCellPosition:*&a3];
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

- (double)defaultCellHeightForSubitemAtIndex:(unint64_t)a3 forWidth:(double)a4 forceUpdate:(BOOL)a5
{
  if (self->_cell)
  {
    if (a5)
    {
      self->_cellNeedsUpdate = 1;
    }

    [(EKEventTextDetailItem *)self _updateCellIfNeeded];
  }

  else
  {
    v7 = [(EKEventTextDetailItem *)self cellForSubitemAtIndex:a3, a5];
  }

  if (!EKUIUnscaledCatalyst())
  {
    return *MEMORY[0x1E69DE3D0];
  }

  LODWORD(v8) = 1148846080;
  LODWORD(v9) = 1112014848;
  [(EKEventDetailCell *)self->_cell systemLayoutSizeFittingSize:a4 withHorizontalFittingPriority:*(MEMORY[0x1E69DE090] + 8) verticalFittingPriority:v8, v9];
  v11 = v10;
  +[EKEventDetailTextCell maxHeight];
  if (v11 < result)
  {
    return v11;
  }

  return result;
}

- (id)cellForSubitemAtIndex:(unint64_t)a3
{
  if (!self->_cell)
  {
    v4 = [(EKEventTextDetailItem *)self _createEventDetailCell];
    cell = self->_cell;
    self->_cell = v4;

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
  v5 = [objc_opt_class() titleForCell];
  v6 = [objc_opt_class() textFromEventBlock];
  v7 = [(EKEventDetailTextCell *)v3 initWithEvent:event title:v5 textFromEventBlock:v6];

  [(EKEventDetailTextCell *)v7 setDelegate:self];

  return v7;
}

- (void)requestShowCellDetail
{
  v3 = [EKEventDetailExtendedTextViewController alloc];
  v4 = [(EKEventTextDetailItem *)self textForExtendedViewController];
  v5 = [objc_opt_class() titleForExtendedViewController];
  event = self->super._event;
  v7 = [(EKEventTextDetailItem *)self textForCopyAction];
  v10 = [(EKEventDetailExtendedTextViewController *)v3 initWithText:v4 title:v5 event:event textForCopyAction:v7];

  v8 = [(EKEventDetailItem *)self viewControllerToPresentFrom];
  v9 = [v8 navigationDelegate];
  [v9 pushViewController:v10 animated:1];
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