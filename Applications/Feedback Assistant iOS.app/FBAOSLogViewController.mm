@interface FBAOSLogViewController
+ (BOOL)canDisplayURL:(id)l;
- (UIActivityIndicatorView)spinner;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)nextPage;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setLoading:(BOOL)loading;
- (void)setOSLogURL:(id)l;
- (void)shareArchive:(id)archive;
- (void)viewDidLoad;
@end

@implementation FBAOSLogViewController

+ (BOOL)canDisplayURL:(id)l
{
  pathExtension = [l pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v5 = [lowercaseString isEqualToString:@"logarchive"];

  return v5;
}

- (void)setOSLogURL:(id)l
{
  lCopy = l;
  [(FBAOSLogViewController *)self setLogURL:lCopy];
  logURL = [(FBAOSLogViewController *)self logURL];
  lastPathComponent = [logURL lastPathComponent];
  navigationItem = [(FBAOSLogViewController *)self navigationItem];
  [navigationItem setTitle:lastPathComponent];

  objc_initWeak(&location, self);
  v8 = [FBAOSLogViewerDataSource alloc];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100032D20;
  v12[3] = &unk_1000DF7B0;
  objc_copyWeak(&v13, &location);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100032D94;
  v10[3] = &unk_1000DF7D8;
  objc_copyWeak(&v11, &location);
  v9 = [(FBAOSLogViewerDataSource *)v8 initWithArchive:lCopy pageSize:200 pageCompletion:v12 error:v10];
  [(FBAOSLogViewController *)self setLogSource:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = FBAOSLogViewController;
  [(FBAOSLogViewController *)&v11 viewDidLoad];
  navigationItem = [(FBAOSLogViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v4 sizeToFit];
  [v4 setAutoresizingMask:45];
  [(FBAOSLogViewController *)self setSpinner:v4];
  v5 = [[UIBarButtonItem alloc] initWithCustomView:v4];
  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v7 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:9 target:self action:"shareArchive:"];
  v12[0] = v7;
  v12[1] = v6;
  v12[2] = v5;
  v8 = [NSArray arrayWithObjects:v12 count:3];
  [(FBAOSLogViewController *)self setToolbarItems:v8 animated:0];

  [(FBAOSLogViewController *)self setLoading:0];
  tableView = [(FBAOSLogViewController *)self tableView];
  [tableView setRowHeight:UITableViewAutomaticDimension];

  tableView2 = [(FBAOSLogViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:80.0];
}

- (void)shareArchive:(id)archive
{
  archiveCopy = archive;
  logURL = [(FBAOSLogViewController *)self logURL];

  if (logURL)
  {
    v6 = [UIActivityViewController alloc];
    logURL2 = [(FBAOSLogViewController *)self logURL];
    v15 = logURL2;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [v6 initWithActivityItems:v8 applicationActivities:0];

    popoverPresentationController = [v9 popoverPresentationController];
    [popoverPresentationController setBarButtonItem:archiveCopy];

    popoverPresentationController2 = [v9 popoverPresentationController];
    [popoverPresentationController2 setPermittedArrowDirections:2];

    v14[0] = UIActivityTypePostToFacebook;
    v14[1] = UIActivityTypePostToTwitter;
    v14[2] = UIActivityTypePostToWeibo;
    v14[3] = UIActivityTypePrint;
    v14[4] = UIActivityTypeCopyToPasteboard;
    v14[5] = UIActivityTypeAssignToContact;
    v14[6] = UIActivityTypeSaveToCameraRoll;
    v14[7] = UIActivityTypeAddToReadingList;
    v14[8] = UIActivityTypePostToFlickr;
    v14[9] = UIActivityTypePostToVimeo;
    v14[10] = UIActivityTypePostToTencentWeibo;
    v12 = [NSArray arrayWithObjects:v14 count:11];
    [v9 setExcludedActivityTypes:v12];

    navigationController = [(FBAOSLogViewController *)self navigationController];
    [navigationController presentViewController:v9 animated:1 completion:0];
  }
}

- (void)nextPage
{
  [(FBAOSLogViewController *)self setLoading:1];
  logSource = [(FBAOSLogViewController *)self logSource];
  [logSource nextPage];
}

- (void)setLoading:(BOOL)loading
{
  loadingCopy = loading;
  self->_loading = loading;
  spinner = [(FBAOSLogViewController *)self spinner];
  v5 = spinner;
  if (loadingCopy)
  {
    [spinner startAnimating];
  }

  else
  {
    [spinner stopAnimating];
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(FBAOSLogViewController *)self logSource:view];
  foundCorruptDate = [v5 foundCorruptDate];

  if (foundCorruptDate)
  {
    return 1;
  }

  logSource = [(FBAOSLogViewController *)self logSource];
  numberOfLogs = [logSource numberOfLogs];

  return numberOfLogs;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"FBAOSLogCell"];
  if (!v7)
  {
    v7 = [[FBAOSLogTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"FBAOSLogCell"];
  }

  logSource = [(FBAOSLogViewController *)self logSource];
  foundCorruptDate = [logSource foundCorruptDate];

  if (foundCorruptDate)
  {
    v10 = +[NSBundle mainBundle];
    logLabel2 = [(__CFString *)v10 localizedStringForKey:@"CORRUPT_FILE" value:&stru_1000E2210 table:0];
    logLabel = [(FBAOSLogTableViewCell *)v7 logLabel];
    [logLabel setText:logLabel2];
  }

  else
  {
    logSource2 = [(FBAOSLogViewController *)self logSource];
    v10 = [logSource2 logAtIndex:{objc_msgSend(pathCopy, "row")}];

    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = @"-";
    }

    logLabel2 = [(FBAOSLogTableViewCell *)v7 logLabel];
    [logLabel2 setText:v14];
  }

  return v7;
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  [scrollCopy contentOffset];
  v6 = v5;
  [scrollCopy bounds];
  v8 = v6 + v7;
  [scrollCopy contentSize];
  v10 = (v9 - v8);
  [scrollCopy bounds];
  v12 = v11;

  if (v10 <= (v12 * 20.0))
  {
    logSource = [(FBAOSLogViewController *)self logSource];
    foundCorruptDate = [logSource foundCorruptDate];

    if ((foundCorruptDate & 1) == 0 && ![(FBAOSLogViewController *)self isLoading])
    {
      logSource2 = [(FBAOSLogViewController *)self logSource];
      hasMoreLogs = [logSource2 hasMoreLogs];

      if (hasMoreLogs)
      {

        [(FBAOSLogViewController *)self nextPage];
      }
    }
  }
}

- (UIActivityIndicatorView)spinner
{
  WeakRetained = objc_loadWeakRetained(&self->_spinner);

  return WeakRetained;
}

@end