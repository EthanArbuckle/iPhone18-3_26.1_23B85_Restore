@interface ClarityUILayoutSetupController
- (ClarityUILayoutSetupController)initWithCompletion:(id)completion;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_setUpTableView;
- (void)viewDidLoad;
@end

@implementation ClarityUILayoutSetupController

- (ClarityUILayoutSetupController)initWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = settingsLocString(@"LIST_LAYOUT_TITLE", @"ClarityUISettings");
  v15.receiver = self;
  v15.super_class = ClarityUILayoutSetupController;
  v6 = [(ClarityUILayoutSetupController *)&v15 initWithTitle:v5 detailText:0 symbolName:0 adoptTableViewScrollView:1];

  if (v6)
  {
    v7 = objc_retainBlock(completionCopy);
    completionHandler = v6->_completionHandler;
    v6->_completionHandler = v7;

    v9 = +[OBBoldTrayButton boldButton];
    v10 = settingsLocString(@"CONTINUE", @"ClarityUISettings");
    [v9 setTitle:v10 forState:0];

    [v9 addTarget:v6 action:"_didTapLayoutSetupNextButton:" forControlEvents:0x2000];
    nextButton = v6->_nextButton;
    v6->_nextButton = v9;
    v12 = v9;

    buttonTray = [(ClarityUILayoutSetupController *)v6 buttonTray];
    [buttonTray addButton:v12];
  }

  return v6;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = ClarityUILayoutSetupController;
  [(ClarityUILayoutSetupController *)&v3 viewDidLoad];
  [(ClarityUILayoutSetupController *)self _setUpTableView];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [ClarityUILayoutSetupTableCell visualLayoutPickerSpecifier:view];
  v5 = [[ClarityUILayoutSetupTableCell alloc] initWithStyle:0 reuseIdentifier:@"ClarityUILayoutCell" specifier:v4];
  v6 = +[UIColor secondarySystemBackgroundColor];
  [(ClarityUILayoutSetupTableCell *)v5 setBackgroundColor:v6];

  return v5;
}

- (void)_setUpTableView
{
  v8 = [[UITableView alloc] initWithFrame:2 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [v8 registerClass:objc_opt_class() forCellReuseIdentifier:@"ClarityUILayoutCell"];
  [v8 setDelegate:self];
  [v8 setDataSource:self];
  [(ClarityUILayoutSetupController *)self setTableView:v8];
  v3 = +[UIColor systemBackgroundColor];
  tableView = [(ClarityUILayoutSetupController *)self tableView];
  [tableView setBackgroundColor:v3];

  v5 = +[UIColor systemBackgroundColor];
  view = [(ClarityUILayoutSetupController *)self view];
  [view setBackgroundColor:v5];

  tableView2 = [(ClarityUILayoutSetupController *)self tableView];
  [tableView2 setSeparatorStyle:0];
}

@end