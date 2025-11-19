@interface MapsIncidentsViewController
- (BOOL)_isValidURLForWebView:(id)a3;
- (CGSize)_calculatePreferredContentSize;
- (void)_updatePreferredContentSize;
- (void)openUrlForAdvisoryNotice:(id)a3;
- (void)setTransitIncidents:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MapsIncidentsViewController

- (void)openUrlForAdvisoryNotice:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100797CB8;
  v15 = sub_100797CC8;
  v16 = [[NSURL alloc] initWithString:v4];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100797CB8;
  v9[4] = sub_100797CC8;
  v10 = self;
  v5 = UIApp;
  v6 = v12[5];
  v17 = UIApplicationOpenURLOptionUniversalLinksOnly;
  v18 = &__kCFBooleanTrue;
  v7 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100797CD0;
  v8[3] = &unk_101629120;
  v8[4] = v9;
  v8[5] = &v11;
  [v5 _openURL:v6 originatingView:0 options:v7 completionHandler:v8];

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v11, 8);
}

- (BOOL)_isValidURLForWebView:(id)a3
{
  v3 = [a3 scheme];
  v4 = [v3 lowercaseString];

  if ([v4 isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [v4 isEqualToString:@"https"];
  }

  return v5;
}

- (CGSize)_calculatePreferredContentSize
{
  v3 = [(MapsIncidentsViewController *)self tableView];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = [(MapsIncidentsViewController *)self tableView];
  [v8 contentSize];
  v10 = v9;
  v11 = 282.0;

  v12 = [(MapsIncidentsViewController *)self tableView];
  [v12 setFrame:{v5, v7, 282.0, v10}];

  height = CGSizeZero.height;
  v14 = [(MapsIncidentsViewController *)self tableView];
  [v14 contentSize];
  v16 = v15;
  v18 = v17;

  if (v16 != CGSizeZero.width || v18 != height)
  {
    v20 = 10;
    while (1)
    {
      v21 = [(MapsIncidentsViewController *)self tableView];
      [v21 contentSize];
      v11 = v22;
      v10 = v23;

      v24 = [(MapsIncidentsViewController *)self tableView];
      [v24 setFrame:{v5, v7, v11, v10}];

      v25 = [(MapsIncidentsViewController *)self tableView];
      [v25 layoutIfNeeded];

      v26 = [(MapsIncidentsViewController *)self tableView];
      [v26 contentSize];
      v28 = v27;
      v30 = v29;

      if (v28 == v11 && v30 == v10)
      {
        break;
      }

      if (!--v20)
      {
        if (qword_10195D4B8 != -1)
        {
          dispatch_once(&qword_10195D4B8, &stru_1016295A0);
        }

        v31 = qword_10195D4B0;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Could not calculate the size of the incidents popover within the max number of iterations.", v34, 2u);
        }

        break;
      }
    }
  }

  v32 = v11;
  v33 = v10;
  result.height = v33;
  result.width = v32;
  return result;
}

- (void)_updatePreferredContentSize
{
  if ([(MapsIncidentsViewController *)self isViewLoaded])
  {
    if (sub_10000FA08(self) == 5)
    {
      [(MapsIncidentsViewController *)self _calculatePreferredContentSize];
      v4 = v3;
      v6 = v5;
      [(MapsIncidentsViewController *)self preferredContentSize];
      if (v4 != v8 || v6 != v7)
      {

        [(MapsIncidentsViewController *)self setPreferredContentSize:v4, v6];
      }
    }
  }
}

- (void)setTransitIncidents:(id)a3
{
  v4.receiver = self;
  v4.super_class = MapsIncidentsViewController;
  [(MapsIncidentsViewController *)&v4 setTransitIncidents:a3];
  [(MapsIncidentsViewController *)self _updatePreferredContentSize];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MapsIncidentsViewController;
  [(MapsIncidentsViewController *)&v4 viewWillAppear:a3];
  [(MapsIncidentsViewController *)self _updatePreferredContentSize];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = MapsIncidentsViewController;
  [(MapsIncidentsViewController *)&v11 viewDidLoad];
  v3 = [(MapsIncidentsViewController *)self view];
  [v3 setAccessibilityIdentifier:@"MapsIncidentsView"];

  v4 = +[UIColor clearColor];
  v5 = [(MapsIncidentsViewController *)self tableView];
  [v5 setBackgroundColor:v4];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v9 = [(MapsIncidentsViewController *)self tableView];
  [v9 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v10 = [(MapsIncidentsViewController *)self tableView];
  [v10 setPreservesSuperviewLayoutMargins:1];

  [(MapsIncidentsViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
}

@end