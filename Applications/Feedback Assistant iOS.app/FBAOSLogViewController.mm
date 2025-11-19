@interface FBAOSLogViewController
+ (BOOL)canDisplayURL:(id)a3;
- (UIActivityIndicatorView)spinner;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)nextPage;
- (void)scrollViewDidScroll:(id)a3;
- (void)setLoading:(BOOL)a3;
- (void)setOSLogURL:(id)a3;
- (void)shareArchive:(id)a3;
- (void)viewDidLoad;
@end

@implementation FBAOSLogViewController

+ (BOOL)canDisplayURL:(id)a3
{
  v3 = [a3 pathExtension];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"logarchive"];

  return v5;
}

- (void)setOSLogURL:(id)a3
{
  v4 = a3;
  [(FBAOSLogViewController *)self setLogURL:v4];
  v5 = [(FBAOSLogViewController *)self logURL];
  v6 = [v5 lastPathComponent];
  v7 = [(FBAOSLogViewController *)self navigationItem];
  [v7 setTitle:v6];

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
  v9 = [(FBAOSLogViewerDataSource *)v8 initWithArchive:v4 pageSize:200 pageCompletion:v12 error:v10];
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
  v3 = [(FBAOSLogViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

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
  v9 = [(FBAOSLogViewController *)self tableView];
  [v9 setRowHeight:UITableViewAutomaticDimension];

  v10 = [(FBAOSLogViewController *)self tableView];
  [v10 setEstimatedRowHeight:80.0];
}

- (void)shareArchive:(id)a3
{
  v4 = a3;
  v5 = [(FBAOSLogViewController *)self logURL];

  if (v5)
  {
    v6 = [UIActivityViewController alloc];
    v7 = [(FBAOSLogViewController *)self logURL];
    v15 = v7;
    v8 = [NSArray arrayWithObjects:&v15 count:1];
    v9 = [v6 initWithActivityItems:v8 applicationActivities:0];

    v10 = [v9 popoverPresentationController];
    [v10 setBarButtonItem:v4];

    v11 = [v9 popoverPresentationController];
    [v11 setPermittedArrowDirections:2];

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

    v13 = [(FBAOSLogViewController *)self navigationController];
    [v13 presentViewController:v9 animated:1 completion:0];
  }
}

- (void)nextPage
{
  [(FBAOSLogViewController *)self setLoading:1];
  v3 = [(FBAOSLogViewController *)self logSource];
  [v3 nextPage];
}

- (void)setLoading:(BOOL)a3
{
  v3 = a3;
  self->_loading = a3;
  v4 = [(FBAOSLogViewController *)self spinner];
  v5 = v4;
  if (v3)
  {
    [v4 startAnimating];
  }

  else
  {
    [v4 stopAnimating];
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(FBAOSLogViewController *)self logSource:a3];
  v6 = [v5 foundCorruptDate];

  if (v6)
  {
    return 1;
  }

  v8 = [(FBAOSLogViewController *)self logSource];
  v9 = [v8 numberOfLogs];

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"FBAOSLogCell"];
  if (!v7)
  {
    v7 = [[FBAOSLogTableViewCell alloc] initWithStyle:0 reuseIdentifier:@"FBAOSLogCell"];
  }

  v8 = [(FBAOSLogViewController *)self logSource];
  v9 = [v8 foundCorruptDate];

  if (v9)
  {
    v10 = +[NSBundle mainBundle];
    v11 = [(__CFString *)v10 localizedStringForKey:@"CORRUPT_FILE" value:&stru_1000E2210 table:0];
    v12 = [(FBAOSLogTableViewCell *)v7 logLabel];
    [v12 setText:v11];
  }

  else
  {
    v13 = [(FBAOSLogViewController *)self logSource];
    v10 = [v13 logAtIndex:{objc_msgSend(v6, "row")}];

    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = @"-";
    }

    v11 = [(FBAOSLogTableViewCell *)v7 logLabel];
    [v11 setText:v14];
  }

  return v7;
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  [v4 contentOffset];
  v6 = v5;
  [v4 bounds];
  v8 = v6 + v7;
  [v4 contentSize];
  v10 = (v9 - v8);
  [v4 bounds];
  v12 = v11;

  if (v10 <= (v12 * 20.0))
  {
    v13 = [(FBAOSLogViewController *)self logSource];
    v14 = [v13 foundCorruptDate];

    if ((v14 & 1) == 0 && ![(FBAOSLogViewController *)self isLoading])
    {
      v15 = [(FBAOSLogViewController *)self logSource];
      v16 = [v15 hasMoreLogs];

      if (v16)
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