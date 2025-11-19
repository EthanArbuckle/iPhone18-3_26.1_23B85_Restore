@interface EKRecurrenceGridChooserController
- (double)heightForRow:(int64_t)a3;
- (id)allCells;
- (id)cellLabels;
- (id)tableViewCell;
- (int64_t)gridViewType;
- (void)dividedGridViewControllerDidLayout:(id)a3;
- (void)prepareForDisplay;
- (void)refreshCells;
- (void)selectCell:(id)a3 atIndex:(int64_t)a4;
@end

@implementation EKRecurrenceGridChooserController

- (id)tableViewCell
{
  tableViewCell = self->_tableViewCell;
  if (!tableViewCell)
  {
    v4 = [EKUIDividedGridViewTableViewCell alloc];
    v5 = [(EKRecurrenceGridChooserController *)self gridViewType];
    v6 = [(EKRecurrenceGridChooserController *)self cellLabels];
    v7 = [(EKRecurrenceChooserController *)self backgroundColor];
    v8 = [(EKUIDividedGridViewTableViewCell *)v4 initWithStyle:0 reuseIdentifier:0 gridViewType:v5 buttonTitles:v6 cellBackgroundColor:v7];

    [(EKUIDividedGridViewTableViewCell *)v8 setDrawingEnabled:1];
    [(EKUIDividedGridViewTableViewCell *)v8 setSelectionStyle:0];
    v9 = [(EKUIDividedGridViewTableViewCell *)v8 gridViewController];
    [v9 setDelegate:self];

    [(EKUIDividedGridViewTableViewCell *)v8 setDrawsTopDivider:0];
    v10 = self->_tableViewCell;
    self->_tableViewCell = v8;

    tableViewCell = self->_tableViewCell;
  }

  return tableViewCell;
}

- (id)allCells
{
  v2 = [(EKRecurrenceGridChooserController *)self tableViewCell];
  v3 = [v2 gridViewController];
  v4 = [v3 allCells];

  return v4;
}

- (double)heightForRow:(int64_t)a3
{
  v3 = [(EKRecurrenceGridChooserController *)self tableViewCell];
  [v3 systemLayoutSizeFittingSize:{*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)}];
  v5 = v4;

  return v5;
}

- (void)dividedGridViewControllerDidLayout:(id)a3
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

- (void)selectCell:(id)a3 atIndex:(int64_t)a4
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2();

  NSRequestConcreteImplementation();
}

@end