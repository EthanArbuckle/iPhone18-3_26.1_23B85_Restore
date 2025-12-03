@interface FBAPowerLogIndexViewController
+ (BOOL)canDisplayURL:(id)l;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)setPowerLogURL:(id)l;
- (void)viewDidLoad;
@end

@implementation FBAPowerLogIndexViewController

+ (BOOL)canDisplayURL:(id)l
{
  pathExtension = [l pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v5 = [lowercaseString isEqualToString:@"plsql"];

  return v5;
}

- (void)setPowerLogURL:(id)l
{
  [(FBAPowerLogIndexViewController *)self setLogURL:l];
  logURL = [(FBAPowerLogIndexViewController *)self logURL];
  lastPathComponent = [logURL lastPathComponent];
  navigationItem = [(FBAPowerLogIndexViewController *)self navigationItem];
  [navigationItem setTitle:lastPathComponent];

  v7 = [PLDatabaseReader alloc];
  logURL2 = [(FBAPowerLogIndexViewController *)self logURL];
  path = [logURL2 path];
  v10 = [v7 initWithDatabaseFile:path];
  [(FBAPowerLogIndexViewController *)self setDatabaseReader:v10];

  databaseReader = [(FBAPowerLogIndexViewController *)self databaseReader];
  tableNamesFromDatabase = [databaseReader tableNamesFromDatabase];
  v13 = tableNamesFromDatabase;
  if (tableNamesFromDatabase)
  {
    v14 = tableNamesFromDatabase;
  }

  else
  {
    v14 = &__NSArray0__struct;
  }

  [(FBAPowerLogIndexViewController *)self setTableNames:v14];

  tableView = [(FBAPowerLogIndexViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = FBAPowerLogIndexViewController;
  [(FBAPowerLogIndexViewController *)&v6 viewDidLoad];
  navigationItem = [(FBAPowerLogIndexViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [(FBAPowerLogIndexViewController *)self setClearsSelectionOnViewWillAppear:1];
  tableView = [(FBAPowerLogIndexViewController *)self tableView];
  [tableView setRowHeight:UITableViewAutomaticDimension];

  tableView2 = [(FBAPowerLogIndexViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:80.0];

  [(FBAPowerLogIndexViewController *)self setEnteringDetail:0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(FBAPowerLogIndexViewController *)self tableNames:view];
  if (v5)
  {
    tableNames = [(FBAPowerLogIndexViewController *)self tableNames];
    v7 = [tableNames count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"TextCell" forIndexPath:pathCopy];
  tableNames = [(FBAPowerLogIndexViewController *)self tableNames];
  v9 = [pathCopy row];

  v10 = [tableNames objectAtIndex:v9];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  textLabel = [v7 textLabel];
  [textLabel setText:v11];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [NSBundle mainBundle:view];
  v5 = [v4 localizedStringForKey:@"POWER_LOG_SECTION" value:&stru_1000E2210 table:0];

  return v5;
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  destinationViewController = [segue destinationViewController];
  tableView = [(FBAPowerLogIndexViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  tableNames = [(FBAPowerLogIndexViewController *)self tableNames];
  v8 = [tableNames objectAtIndex:{objc_msgSend(indexPathForSelectedRow, "row")}];

  v9 = [v8 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  navigationItem = [destinationViewController navigationItem];
  [navigationItem setTitle:v9];

  databaseReader = [(FBAPowerLogIndexViewController *)self databaseReader];
  v12 = [databaseReader stringValueOfTable:v8];
  [destinationViewController displayText:v12];

  [(FBAPowerLogIndexViewController *)self setEnteringDetail:1];
}

@end