@interface FBAAttachmentTableViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dismiss:(id)dismiss;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation FBAAttachmentTableViewController

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = FBAAttachmentTableViewController;
  [(FBAAttachmentTableViewController *)&v19 viewDidLoad];
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"ADD_FILES" value:&stru_1000E2210 table:0];
  [(FBAAttachmentTableViewController *)self setTitle:v4];

  v5 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"dismiss:"];
  navigationItem = [(FBAAttachmentTableViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  tableView = [(FBAAttachmentTableViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"extensionCell"];

  devicesController = [(FBAAttachmentTableViewController *)self devicesController];

  if (devicesController)
  {
    [(FBAAttachmentTableViewController *)self setClearsSelectionOnViewWillAppear:1];
    *buf = 0;
    v14 = buf;
    v15 = 0x3032000000;
    v16 = sub_1000367F4;
    v17 = sub_100036804;
    selfCopy = self;
    devicesController2 = [(FBAAttachmentTableViewController *)selfCopy devicesController];
    currentDeviceBugSession = [devicesController2 currentDeviceBugSession];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10003680C;
    v12[3] = &unk_1000DF880;
    v12[4] = buf;
    [currentDeviceBugSession listDiagnosticExtensionsWithCompletion:v12];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = +[FBALog appHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "No attachment manager dismissing view", buf, 2u);
    }

    [(FBAAttachmentTableViewController *)self dismiss:self];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(FBAAttachmentTableViewController *)self extensions:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"extensionCell" forIndexPath:pathCopy];
  extensions = [(FBAAttachmentTableViewController *)self extensions];
  v9 = [pathCopy row];

  v10 = [extensions objectAtIndexedSubscript:v9];

  name = [v10 name];
  if (name)
  {
    name2 = [v10 name];
  }

  else
  {
    name2 = @"-";
  }

  textLabel = [v7 textLabel];
  [textLabel setText:name2];

  if (name)
  {
  }

  v14 = +[UIColor labelColor];
  textLabel2 = [v7 textLabel];
  [textLabel2 setTextColor:v14];

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  extensions = [(FBAAttachmentTableViewController *)self extensions];
  v7 = [pathCopy row];

  v10 = [extensions objectAtIndexedSubscript:v7];

  devicesController = [(FBAAttachmentTableViewController *)self devicesController];
  currentDeviceAttachmentManager = [devicesController currentDeviceAttachmentManager];
  [currentDeviceAttachmentManager gatherFilesWithDedExtension:v10 answers:&__NSDictionary0__struct];

  [(FBAAttachmentTableViewController *)self dismiss:self];
}

- (void)dismiss:(id)dismiss
{
  parentViewController = [(FBAAttachmentTableViewController *)self parentViewController];
  [parentViewController dismissViewControllerAnimated:1 completion:0];
}

@end