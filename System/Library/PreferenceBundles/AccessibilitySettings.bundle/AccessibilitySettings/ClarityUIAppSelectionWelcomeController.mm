@interface ClarityUIAppSelectionWelcomeController
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (ClarityUIAppSelectionWelcomeController)initWithCompletion:(id)completion;
- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_didTapAppSelectionNextButton:(id)button;
- (void)_updateAppSelectionNextButton;
- (void)dataSource:(id)source didSelectBundleIdentifier:(id)identifier;
- (void)viewDidLoad;
@end

@implementation ClarityUIAppSelectionWelcomeController

- (ClarityUIAppSelectionWelcomeController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = settingsLocString(@"SELECT_APPS_TITLE", @"ClarityUISettings");
  v18.receiver = self;
  v18.super_class = ClarityUIAppSelectionWelcomeController;
  v6 = [(ClarityUIAppSelectionWelcomeController *)&v18 initWithTitle:v5 detailText:0 symbolName:0 adoptTableViewScrollView:1];

  if (v6)
  {
    v7 = objc_retainBlock(completionCopy);
    completionHandler = v6->_completionHandler;
    v6->_completionHandler = v7;

    v9 = objc_opt_new();
    selectionController = v6->_selectionController;
    v6->_selectionController = v9;

    dataSource = [(ClarityUIAppSelectionController *)v6->_selectionController dataSource];
    [dataSource setDataSourceDelegate:v6];

    v12 = +[OBBoldTrayButton boldButton];
    v13 = settingsLocString(@"CONTINUE", @"ClarityUISettings");
    [v12 setTitle:v13 forState:0];

    [v12 addTarget:v6 action:"_didTapAppSelectionNextButton:" forControlEvents:0x2000];
    nextButton = v6->_nextButton;
    v6->_nextButton = v12;
    v15 = v12;

    [(ClarityUIAppSelectionWelcomeController *)v6 _updateAppSelectionNextButton];
    buttonTray = [(ClarityUIAppSelectionWelcomeController *)v6 buttonTray];
    [buttonTray addButton:v15];
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ClarityUIAppSelectionWelcomeController;
  [(ClarityUIAppSelectionWelcomeController *)&v4 viewDidLoad];
  tableView = [(ClarityUIAppSelectionController *)self->_selectionController tableView];
  [(ClarityUIAppSelectionWelcomeController *)self setTableView:tableView];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v9 = [dataSource tableView:viewCopy editingStyleForRowAtIndexPath:pathCopy];

  return v9;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  pathCopy = path;
  viewCopy = view;
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v12 = [dataSource tableView:viewCopy targetIndexPathForMoveFromRowAtIndexPath:pathCopy toProposedIndexPath:indexPathCopy];

  return v12;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v9 = [dataSource tableView:viewCopy shouldIndentWhileEditingRowAtIndexPath:pathCopy];

  return v9;
}

- (id)tableView:(id)view titleForDeleteConfirmationButtonForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v9 = [dataSource tableView:viewCopy titleForDeleteConfirmationButtonForRowAtIndexPath:pathCopy];

  return v9;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v8 = [dataSource tableView:viewCopy viewForHeaderInSection:section];

  return v8;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  [dataSource tableView:viewCopy estimatedHeightForRowAtIndexPath:pathCopy];
  v10 = v9;

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  [dataSource tableView:viewCopy heightForHeaderInSection:section];
  v9 = v8;

  return v9;
}

- (double)tableView:(id)view estimatedHeightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  [dataSource tableView:viewCopy estimatedHeightForHeaderInSection:section];
  v9 = v8;

  return v9;
}

- (void)_updateAppSelectionNextButton
{
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  applicationIdentifiers = [dataSource applicationIdentifiers];
  v5 = [applicationIdentifiers count] != 0;
  nextButton = [(ClarityUIAppSelectionWelcomeController *)self nextButton];
  [nextButton setEnabled:v5];

  dataSource2 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  applicationIdentifiers2 = [dataSource2 applicationIdentifiers];
  v8 = [applicationIdentifiers2 count] != 0;
  navigationItem = [(ClarityUIAppSelectionWelcomeController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  [rightBarButtonItem setEnabled:v8];
}

- (void)_didTapAppSelectionNextButton:(id)button
{
  dataSource = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  [dataSource commitChangesToSelectedApplications];

  v5 = *(self->_completionHandler + 2);

  v5();
}

- (void)dataSource:(id)source didSelectBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  sourceCopy = source;
  selectionController = [(ClarityUIAppSelectionWelcomeController *)self selectionController];
  [selectionController dataSource:sourceCopy didSelectBundleIdentifier:identifierCopy];
}

@end