@interface MapsRAPDebugController
- (MapsRAPDebugController)init;
- (void)_refreshServerVersionNumber;
- (void)openAnalyticsWithURL:(id)a3;
- (void)prepareContent;
- (void)prepareDefaultSimJanaURL;
- (void)simulateFixForProblemWithID:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)webBundleEncounteredError:(id)a3;
- (void)webBundleUpdatedWithWebBundlePath:(id)a3;
@end

@implementation MapsRAPDebugController

- (void)_refreshServerVersionNumber
{
  objc_initWeak(&location, self);
  v2 = +[RAPWebBundleDownloadManager sharedInstance];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100B83B18;
  v3[3] = &unk_10163B890;
  objc_copyWeak(&v4, &location);
  [v2 _downloadManifestWithForce:1 completion:v3];

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

- (void)webBundleEncounteredError:(id)a3
{
  v4 = [a3 localizedDescription];
  [(MapsRAPDebugController *)self displayMessage:v4 titled:@"RAP Web Bundle Download Error"];
}

- (void)webBundleUpdatedWithWebBundlePath:(id)a3
{
  v4 = a3;
  v5 = [NSString stringWithFormat:@"Web Bundle Updated with Path:%@", v4];
  [(MapsRAPDebugController *)self displayMessage:v5 titled:@"RAP Web Bundle Downloaded"];

  v6 = [v4 absoluteString];

  v7 = [(MapsRAPDebugController *)self deviceVersionNumberRow];
  [v7 setSubtitle:v6];

  [(MapsDebugValuesViewController *)self reloadData];
}

- (void)simulateFixForProblemWithID:(id)a3
{
  v4 = a3;
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 stringForKey:@"RAPDebugSimJanaURL"];

  v7 = [NSURL URLWithString:v6];
  v8 = [v7 URLByAppendingPathComponent:@"simulator/fix"];

  v9 = [[NSMutableURLRequest alloc] initWithURL:v8];
  [v9 setHTTPMethod:@"POST"];
  v10 = [NSString stringWithFormat:@"problem_id=%@", v4];
  v11 = [v10 dataUsingEncoding:4];
  [v9 setHTTPBody:v11];

  v12 = +[NSURLSession sharedSession];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100B83F68;
  v15[3] = &unk_10163BF08;
  v15[4] = self;
  v16 = v4;
  v13 = v4;
  v14 = [v12 dataTaskWithRequest:v9 completionHandler:v15];

  [v14 resume];
}

- (void)openAnalyticsWithURL:(id)a3
{
  v3 = a3;
  v5 = +[UIApplication sharedApplication];
  v4 = [NSURL URLWithString:v3];

  [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)prepareContent
{
  [(MapsRAPDebugController *)self prepareDefaultSimJanaURL];
  objc_initWeak(location, self);
  v3 = objc_alloc_init(RAPWebBundleConfigurationManager);
  v4 = [(RAPWebBundleConfigurationManager *)v3 configuration];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_100B84694;
  v29[3] = &unk_101658D78;
  objc_copyWeak(&v31, location);
  v5 = v4;
  v30 = v5;
  v6 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v29];
  v7 = [(MapsRAPDebugController *)self environmentsSectionController];
  [v7 appendEnvironmentSectionToDebugController:self];

  v8 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Submission Debug Settings" content:&stru_10163B6B0];
  v9 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Notification" content:&stru_10163B6D0];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100B84874;
  v27[3] = &unk_10165E0A8;
  objc_copyWeak(&v28, location);
  v10 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"RAP Config Default Value" content:v27];
  v11 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Submitted RAP Status" content:&stru_10163B7A0];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100B84994;
  v25[3] = &unk_10165E0A8;
  objc_copyWeak(&v26, location);
  v12 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v25];
  v13 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Server Controlled UI" content:&stru_10163B808];
  v14 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Client Overrides For Server Controller UI" content:&stru_10163B848];
  v15 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"SimJana" content:&stru_10163B868];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100B84AEC;
  v23[3] = &unk_10165E0A8;
  objc_copyWeak(&v24, location);
  v16 = [(MapsDebugValuesViewController *)self addSectionWithTitle:@"Submitted Raps" content:v23];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100B84BD4;
  v21[3] = &unk_10165E0A8;
  objc_copyWeak(&v22, location);
  v17 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v21];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100B84DBC;
  v19[3] = &unk_10165E0A8;
  objc_copyWeak(&v20, location);
  v18 = [(MapsDebugValuesViewController *)self addSectionWithTitle:0 content:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);

  objc_destroyWeak(&v31);
  objc_destroyWeak(location);
}

- (void)prepareDefaultSimJanaURL
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v2 = [v3 objectForKey:@"RAPDebugSimJanaURL"];

  if (!v2)
  {
    [v3 setObject:@"http://sim-jana-qa1.geo.apple.com/" forKey:@"RAPDebugSimJanaURL"];
    [v3 synchronize];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MapsRAPDebugController;
  [(MapsDebugValuesViewController *)&v4 viewWillAppear:a3];
  [(MapsRAPDebugController *)self _viewWillAppear];
  [(MapsRAPDebugController *)self _refreshServerVersionNumber];
}

- (MapsRAPDebugController)init
{
  v5.receiver = self;
  v5.super_class = MapsRAPDebugController;
  v2 = [(MapsDebugValuesViewController *)&v5 init];
  if (v2)
  {
    v3 = [[MapsUGCEnvironmentSectionController alloc] initWithSubmissionURL:42];
    [(MapsRAPDebugController *)v2 setEnvironmentsSectionController:v3];
  }

  return v2;
}

@end