@interface CPSReportProblemConcernsViewController
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)cancelTapped;
- (void)setProblemTypes:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
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
  v5 = [(CPSReportProblemConcernsViewController *)self navigationItem];
  [v5 setLeftBarButtonItem:v4];

  v6 = [(CPSReportProblemConcernsViewController *)self tableView];
  [v6 registerClass:objc_opt_class() forCellReuseIdentifier:@"basicStyle"];
}

- (void)setProblemTypes:(id)a3
{
  objc_storeStrong(&self->_problemTypes, a3);
  v4 = [(CPSReportProblemConcernsViewController *)self tableView];
  [v4 reloadData];
}

- (void)cancelTapped
{
  cancelAction = self->_cancelAction;
  if (cancelAction)
  {
    cancelAction[2]();
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  selectAction = self->_selectAction;
  if (selectAction)
  {
    v5 = -[NSArray objectAtIndexedSubscript:](self->_problemTypes, "objectAtIndexedSubscript:", [a4 row]);
    selectAction[2](selectAction, v5);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"basicStyle" forIndexPath:v6];
  [v7 setAccessoryType:1];
  problemTypes = self->_problemTypes;
  v9 = [v6 row];

  v10 = [(NSArray *)problemTypes objectAtIndexedSubscript:v9];
  v11 = [v10 localizedTitle];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  return v7;
}

@end