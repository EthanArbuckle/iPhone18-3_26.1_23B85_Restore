@interface ClarityUIAppSelectionWelcomeController
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (ClarityUIAppSelectionWelcomeController)initWithCompletion:(id)a3;
- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_didTapAppSelectionNextButton:(id)a3;
- (void)_updateAppSelectionNextButton;
- (void)dataSource:(id)a3 didSelectBundleIdentifier:(id)a4;
- (void)viewDidLoad;
@end

@implementation ClarityUIAppSelectionWelcomeController

- (ClarityUIAppSelectionWelcomeController)initWithCompletion:(id)a3
{
  v4 = a3;
  v5 = settingsLocString(@"SELECT_APPS_TITLE", @"ClarityUISettings");
  v18.receiver = self;
  v18.super_class = ClarityUIAppSelectionWelcomeController;
  v6 = [(ClarityUIAppSelectionWelcomeController *)&v18 initWithTitle:v5 detailText:0 symbolName:0 adoptTableViewScrollView:1];

  if (v6)
  {
    v7 = objc_retainBlock(v4);
    completionHandler = v6->_completionHandler;
    v6->_completionHandler = v7;

    v9 = objc_opt_new();
    selectionController = v6->_selectionController;
    v6->_selectionController = v9;

    v11 = [(ClarityUIAppSelectionController *)v6->_selectionController dataSource];
    [v11 setDataSourceDelegate:v6];

    v12 = +[OBBoldTrayButton boldButton];
    v13 = settingsLocString(@"CONTINUE", @"ClarityUISettings");
    [v12 setTitle:v13 forState:0];

    [v12 addTarget:v6 action:"_didTapAppSelectionNextButton:" forControlEvents:0x2000];
    nextButton = v6->_nextButton;
    v6->_nextButton = v12;
    v15 = v12;

    [(ClarityUIAppSelectionWelcomeController *)v6 _updateAppSelectionNextButton];
    v16 = [(ClarityUIAppSelectionWelcomeController *)v6 buttonTray];
    [v16 addButton:v15];
  }

  return v6;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = ClarityUIAppSelectionWelcomeController;
  [(ClarityUIAppSelectionWelcomeController *)&v4 viewDidLoad];
  v3 = [(ClarityUIAppSelectionController *)self->_selectionController tableView];
  [(ClarityUIAppSelectionWelcomeController *)self setTableView:v3];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v9 = [v8 tableView:v7 editingStyleForRowAtIndexPath:v6];

  return v9;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v12 = [v11 tableView:v10 targetIndexPathForMoveFromRowAtIndexPath:v9 toProposedIndexPath:v8];

  return v12;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v9 = [v8 tableView:v7 shouldIndentWhileEditingRowAtIndexPath:v6];

  return v9;
}

- (id)tableView:(id)a3 titleForDeleteConfirmationButtonForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v9 = [v8 tableView:v7 titleForDeleteConfirmationButtonForRowAtIndexPath:v6];

  return v9;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v8 = [v7 tableView:v6 viewForHeaderInSection:a4];

  return v8;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  [v8 tableView:v7 estimatedHeightForRowAtIndexPath:v6];
  v10 = v9;

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  [v7 tableView:v6 heightForHeaderInSection:a4];
  v9 = v8;

  return v9;
}

- (double)tableView:(id)a3 estimatedHeightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  [v7 tableView:v6 estimatedHeightForHeaderInSection:a4];
  v9 = v8;

  return v9;
}

- (void)_updateAppSelectionNextButton
{
  v3 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v4 = [v3 applicationIdentifiers];
  v5 = [v4 count] != 0;
  v6 = [(ClarityUIAppSelectionWelcomeController *)self nextButton];
  [v6 setEnabled:v5];

  v11 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  v7 = [v11 applicationIdentifiers];
  v8 = [v7 count] != 0;
  v9 = [(ClarityUIAppSelectionWelcomeController *)self navigationItem];
  v10 = [v9 rightBarButtonItem];
  [v10 setEnabled:v8];
}

- (void)_didTapAppSelectionNextButton:(id)a3
{
  v4 = [(ClarityUIAppSelectionWelcomeController *)self dataSource];
  [v4 commitChangesToSelectedApplications];

  v5 = *(self->_completionHandler + 2);

  v5();
}

- (void)dataSource:(id)a3 didSelectBundleIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ClarityUIAppSelectionWelcomeController *)self selectionController];
  [v8 dataSource:v7 didSelectBundleIdentifier:v6];
}

@end