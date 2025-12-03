@interface MapsIncidentsViewController
- (BOOL)_isValidURLForWebView:(id)view;
- (CGSize)_calculatePreferredContentSize;
- (void)_updatePreferredContentSize;
- (void)openUrlForAdvisoryNotice:(id)notice;
- (void)setTransitIncidents:(id)incidents;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MapsIncidentsViewController

- (void)openUrlForAdvisoryNotice:(id)notice
{
  noticeCopy = notice;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100797CB8;
  v15 = sub_100797CC8;
  v16 = [[NSURL alloc] initWithString:noticeCopy];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3032000000;
  v9[3] = sub_100797CB8;
  v9[4] = sub_100797CC8;
  selfCopy = self;
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

- (BOOL)_isValidURLForWebView:(id)view
{
  scheme = [view scheme];
  lowercaseString = [scheme lowercaseString];

  if ([lowercaseString isEqualToString:@"http"])
  {
    v5 = 1;
  }

  else
  {
    v5 = [lowercaseString isEqualToString:@"https"];
  }

  return v5;
}

- (CGSize)_calculatePreferredContentSize
{
  tableView = [(MapsIncidentsViewController *)self tableView];
  [tableView frame];
  v5 = v4;
  v7 = v6;

  tableView2 = [(MapsIncidentsViewController *)self tableView];
  [tableView2 contentSize];
  v10 = v9;
  v11 = 282.0;

  tableView3 = [(MapsIncidentsViewController *)self tableView];
  [tableView3 setFrame:{v5, v7, 282.0, v10}];

  height = CGSizeZero.height;
  tableView4 = [(MapsIncidentsViewController *)self tableView];
  [tableView4 contentSize];
  v16 = v15;
  v18 = v17;

  if (v16 != CGSizeZero.width || v18 != height)
  {
    v20 = 10;
    while (1)
    {
      tableView5 = [(MapsIncidentsViewController *)self tableView];
      [tableView5 contentSize];
      v11 = v22;
      v10 = v23;

      tableView6 = [(MapsIncidentsViewController *)self tableView];
      [tableView6 setFrame:{v5, v7, v11, v10}];

      tableView7 = [(MapsIncidentsViewController *)self tableView];
      [tableView7 layoutIfNeeded];

      tableView8 = [(MapsIncidentsViewController *)self tableView];
      [tableView8 contentSize];
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

- (void)setTransitIncidents:(id)incidents
{
  v4.receiver = self;
  v4.super_class = MapsIncidentsViewController;
  [(MapsIncidentsViewController *)&v4 setTransitIncidents:incidents];
  [(MapsIncidentsViewController *)self _updatePreferredContentSize];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MapsIncidentsViewController;
  [(MapsIncidentsViewController *)&v4 viewWillAppear:appear];
  [(MapsIncidentsViewController *)self _updatePreferredContentSize];
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = MapsIncidentsViewController;
  [(MapsIncidentsViewController *)&v11 viewDidLoad];
  view = [(MapsIncidentsViewController *)self view];
  [view setAccessibilityIdentifier:@"MapsIncidentsView"];

  v4 = +[UIColor clearColor];
  tableView = [(MapsIncidentsViewController *)self tableView];
  [tableView setBackgroundColor:v4];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  tableView2 = [(MapsIncidentsViewController *)self tableView];
  [tableView2 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  tableView3 = [(MapsIncidentsViewController *)self tableView];
  [tableView3 setPreservesSuperviewLayoutMargins:1];

  [(MapsIncidentsViewController *)self setViewRespectsSystemMinimumLayoutMargins:0];
}

@end