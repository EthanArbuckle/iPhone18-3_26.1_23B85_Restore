@interface GuidanceSearchResultsView
- (GuidanceSearchResultsView)initWithFrame:(CGRect)frame;
- (void)setLoading:(BOOL)loading;
- (void)updateTheme;
@end

@implementation GuidanceSearchResultsView

- (void)setLoading:(BOOL)loading
{
  if (self->_loading != loading)
  {
    loadingCopy = loading;
    self->_loading = loading;
    tableView = [(GuidanceSearchResultsView *)self tableView];
    [tableView setHidden:loadingCopy];

    activityIndicatorView = [(GuidanceSearchResultsView *)self activityIndicatorView];
    v8 = activityIndicatorView;
    if (loadingCopy)
    {
      [activityIndicatorView startAnimating];
    }

    else
    {
      [activityIndicatorView stopAnimating];
    }
  }
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = GuidanceSearchResultsView;
  [(MapsThemeView *)&v6 updateTheme];
  theme = [(GuidanceSearchResultsView *)self theme];
  activityIndicatorStyle = [theme activityIndicatorStyle];
  activityIndicatorView = [(GuidanceSearchResultsView *)self activityIndicatorView];
  [activityIndicatorView setActivityIndicatorViewStyle:activityIndicatorStyle];
}

- (GuidanceSearchResultsView)initWithFrame:(CGRect)frame
{
  v67.receiver = self;
  v67.super_class = GuidanceSearchResultsView;
  v3 = [(GuidanceSearchResultsView *)&v67 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(GuidanceSearchResultsView *)v3 setBackgroundColor:v4];

    [(GuidanceSearchResultsView *)v3 setAccessibilityIdentifier:@"GuidanceSearchResultsView"];
    v5 = [[MapsThemeTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    tableView = v3->_tableView;
    v3->_tableView = &v5->super;

    [(UITableView *)v3->_tableView setAccessibilityIdentifier:@"GuidanceSearchResultsTable"];
    tableView = [(GuidanceSearchResultsView *)v3 tableView];
    [tableView setTranslatesAutoresizingMaskIntoConstraints:0];

    backgroundColor = [(GuidanceSearchResultsView *)v3 backgroundColor];
    tableView2 = [(GuidanceSearchResultsView *)v3 tableView];
    [tableView2 setBackgroundColor:backgroundColor];

    tableView3 = [(GuidanceSearchResultsView *)v3 tableView];
    [tableView3 setShowsVerticalScrollIndicator:0];

    tableView4 = [(GuidanceSearchResultsView *)v3 tableView];
    [tableView4 setCellLayoutMarginsFollowReadableWidth:0];

    tableView5 = [(GuidanceSearchResultsView *)v3 tableView];
    [tableView5 setRowHeight:80.0];

    tableView6 = [(GuidanceSearchResultsView *)v3 tableView];
    [tableView6 setPreservesSuperviewLayoutMargins:1];

    tableView7 = [(GuidanceSearchResultsView *)v3 tableView];
    [(GuidanceSearchResultsView *)v3 addSubview:tableView7];

    v15 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityIndicatorView = v3->_activityIndicatorView;
    v3->_activityIndicatorView = v15;

    activityIndicatorView = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    [activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];

    activityIndicatorView2 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    [activityIndicatorView2 setHidesWhenStopped:1];

    activityIndicatorView3 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    [(GuidanceSearchResultsView *)v3 addSubview:activityIndicatorView3];

    v20 = objc_opt_new();
    [(GuidanceSearchResultsView *)v3 addLayoutGuide:v20];
    activityIndicatorView4 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    topAnchor = [activityIndicatorView4 topAnchor];
    topAnchor2 = [v20 topAnchor];
    v66 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];

    LODWORD(v24) = 1148846080;
    [v66 setPriority:v24];
    activityIndicatorView5 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    centerYAnchor = [activityIndicatorView5 centerYAnchor];
    centerYAnchor2 = [v20 centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];

    LODWORD(v29) = 1144750080;
    v46 = v28;
    [v28 setPriority:v29];
    tableView8 = [(GuidanceSearchResultsView *)v3 tableView];
    leadingAnchor = [tableView8 leadingAnchor];
    leadingAnchor2 = [(GuidanceSearchResultsView *)v3 leadingAnchor];
    v62 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v68[0] = v62;
    tableView9 = [(GuidanceSearchResultsView *)v3 tableView];
    topAnchor3 = [tableView9 topAnchor];
    topAnchor4 = [(GuidanceSearchResultsView *)v3 topAnchor];
    v58 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v68[1] = v58;
    tableView10 = [(GuidanceSearchResultsView *)v3 tableView];
    trailingAnchor = [tableView10 trailingAnchor];
    trailingAnchor2 = [(GuidanceSearchResultsView *)v3 trailingAnchor];
    v54 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v68[2] = v54;
    tableView11 = [(GuidanceSearchResultsView *)v3 tableView];
    bottomAnchor = [tableView11 bottomAnchor];
    bottomAnchor2 = [(GuidanceSearchResultsView *)v3 bottomAnchor];
    v50 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v68[3] = v50;
    leadingAnchor3 = [v20 leadingAnchor];
    leadingAnchor4 = [(GuidanceSearchResultsView *)v3 leadingAnchor];
    v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v68[4] = v45;
    trailingAnchor3 = [v20 trailingAnchor];
    trailingAnchor4 = [(GuidanceSearchResultsView *)v3 trailingAnchor];
    v42 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v68[5] = v42;
    topAnchor5 = [v20 topAnchor];
    topAnchor6 = [(GuidanceSearchResultsView *)v3 topAnchor];
    v30 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v68[6] = v30;
    v49 = v20;
    bottomAnchor3 = [v20 bottomAnchor];
    bottomAnchor4 = [(GuidanceSearchResultsView *)v3 bottomAnchor];
    v33 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v68[7] = v33;
    activityIndicatorView6 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    centerXAnchor = [activityIndicatorView6 centerXAnchor];
    centerXAnchor2 = [v20 centerXAnchor];
    v37 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v68[8] = v37;
    v68[9] = v66;
    v68[10] = v28;
    v38 = [NSArray arrayWithObjects:v68 count:11];
    [NSLayoutConstraint activateConstraints:v38];
  }

  return v3;
}

@end