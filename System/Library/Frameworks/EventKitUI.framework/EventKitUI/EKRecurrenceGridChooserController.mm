@interface EKRecurrenceGridChooserController
- (double)heightForRow:(int64_t)row;
- (id)allCells;
- (id)cellLabels;
- (id)tableViewCell;
- (int64_t)gridViewType;
- (void)dividedGridViewControllerDidLayout:(id)layout;
- (void)prepareForDisplay;
- (void)refreshCells;
- (void)selectCell:(id)cell atIndex:(int64_t)index;
@end

@implementation EKRecurrenceGridChooserController

- (id)tableViewCell
{
  tableViewCell = self->_tableViewCell;
  if (!tableViewCell)
  {
    v4 = [EKUIDividedGridViewTableViewCell alloc];
    gridViewType = [(EKRecurrenceGridChooserController *)self gridViewType];
    cellLabels = [(EKRecurrenceGridChooserController *)self cellLabels];
    backgroundColor = [(EKRecurrenceChooserController *)self backgroundColor];
    v8 = [(EKUIDividedGridViewTableViewCell *)v4 initWithStyle:0 reuseIdentifier:0 gridViewType:gridViewType buttonTitles:cellLabels cellBackgroundColor:backgroundColor];

    [(EKUIDividedGridViewTableViewCell *)v8 setDrawingEnabled:1];
    [(EKUIDividedGridViewTableViewCell *)v8 setSelectionStyle:0];
    gridViewController = [(EKUIDividedGridViewTableViewCell *)v8 gridViewController];
    [gridViewController setDelegate:self];

    [(EKUIDividedGridViewTableViewCell *)v8 setDrawsTopDivider:0];
    v10 = self->_tableViewCell;
    self->_tableViewCell = v8;

    tableViewCell = self->_tableViewCell;
  }

  return tableViewCell;
}

- (id)allCells
{
  tableViewCell = [(EKRecurrenceGridChooserController *)self tableViewCell];
  gridViewController = [tableViewCell gridViewController];
  allCells = [gridViewController allCells];

  return allCells;
}

- (double)heightForRow:(int64_t)row
{
  tableViewCell = [(EKRecurrenceGridChooserController *)self tableViewCell];
  [tableViewCell systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v5 = v4;

  return v5;
}

- (void)dividedGridViewControllerDidLayout:(id)layout
{
  [(EKRecurrenceGridChooserController *)self prepareForDisplay];

  [(EKRecurrenceGridChooserController *)self refreshCells];
}

- (id)cellLabels
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)gridViewType
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();
  NSRequestConcreteImplementation();
  return -1;
}

- (void)prepareForDisplay
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

- (void)refreshCells
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

- (void)selectCell:(id)cell atIndex:(int64_t)index
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

@end