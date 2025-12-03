@interface CPSReportProblemConcernsViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)cancelTapped;
- (void)setProblemTypes:(id)types;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CPSReportProblemConcernsViewController

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CPSReportProblemConcernsViewController;
  [(CPSReportProblemConcernsViewController *)&v7 viewDidLoad];
  v3 = _CPSLocalizedString();
  [(CPSReportProblemConcernsViewController *)self setTitle:v3];

  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelTapped"];
  navigationItem = [(CPSReportProblemConcernsViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v4];

  tableView = [(CPSReportProblemConcernsViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"basicStyle"];
}

- (void)setProblemTypes:(id)types
{
  objc_storeStrong(&self->_problemTypes, types);
  tableView = [(CPSReportProblemConcernsViewController *)self tableView];
  [tableView reloadData];
}

- (void)cancelTapped
{
  cancelAction = self->_cancelAction;
  if (cancelAction)
  {
    cancelAction[2]();
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  selectAction = self->_selectAction;
  if (selectAction)
  {
    v5 = -[NSArray objectAtIndexedSubscript:](self->_problemTypes, "objectAtIndexedSubscript:", [path row]);
    selectAction[2](selectAction, v5);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"basicStyle" forIndexPath:pathCopy];
  [v7 setAccessoryType:1];
  problemTypes = self->_problemTypes;
  v9 = [pathCopy row];

  v10 = [(NSArray *)problemTypes objectAtIndexedSubscript:v9];
  localizedTitle = [v10 localizedTitle];
  textLabel = [v7 textLabel];
  [textLabel setText:localizedTitle];

  return v7;
}

@end