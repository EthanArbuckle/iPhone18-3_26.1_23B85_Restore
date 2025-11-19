@interface GuidanceSearchResultsView
- (GuidanceSearchResultsView)initWithFrame:(CGRect)a3;
- (void)setLoading:(BOOL)a3;
- (void)updateTheme;
@end

@implementation GuidanceSearchResultsView

- (void)setLoading:(BOOL)a3
{
  if (self->_loading != a3)
  {
    v4 = a3;
    self->_loading = a3;
    v6 = [(GuidanceSearchResultsView *)self tableView];
    [v6 setHidden:v4];

    v7 = [(GuidanceSearchResultsView *)self activityIndicatorView];
    v8 = v7;
    if (v4)
    {
      [v7 startAnimating];
    }

    else
    {
      [v7 stopAnimating];
    }
  }
}

- (void)updateTheme
{
  v6.receiver = self;
  v6.super_class = GuidanceSearchResultsView;
  [(MapsThemeView *)&v6 updateTheme];
  v3 = [(GuidanceSearchResultsView *)self theme];
  v4 = [v3 activityIndicatorStyle];
  v5 = [(GuidanceSearchResultsView *)self activityIndicatorView];
  [v5 setActivityIndicatorViewStyle:v4];
}

- (GuidanceSearchResultsView)initWithFrame:(CGRect)a3
{
  v67.receiver = self;
  v67.super_class = GuidanceSearchResultsView;
  v3 = [(GuidanceSearchResultsView *)&v67 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor clearColor];
    [(GuidanceSearchResultsView *)v3 setBackgroundColor:v4];

    [(GuidanceSearchResultsView *)v3 setAccessibilityIdentifier:@"GuidanceSearchResultsView"];
    v5 = [[MapsThemeTableView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    tableView = v3->_tableView;
    v3->_tableView = &v5->super;

    [(UITableView *)v3->_tableView setAccessibilityIdentifier:@"GuidanceSearchResultsTable"];
    v7 = [(GuidanceSearchResultsView *)v3 tableView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(GuidanceSearchResultsView *)v3 backgroundColor];
    v9 = [(GuidanceSearchResultsView *)v3 tableView];
    [v9 setBackgroundColor:v8];

    v10 = [(GuidanceSearchResultsView *)v3 tableView];
    [v10 setShowsVerticalScrollIndicator:0];

    v11 = [(GuidanceSearchResultsView *)v3 tableView];
    [v11 setCellLayoutMarginsFollowReadableWidth:0];

    v12 = [(GuidanceSearchResultsView *)v3 tableView];
    [v12 setRowHeight:80.0];

    v13 = [(GuidanceSearchResultsView *)v3 tableView];
    [v13 setPreservesSuperviewLayoutMargins:1];

    v14 = [(GuidanceSearchResultsView *)v3 tableView];
    [(GuidanceSearchResultsView *)v3 addSubview:v14];

    v15 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityIndicatorView = v3->_activityIndicatorView;
    v3->_activityIndicatorView = v15;

    v17 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];

    v18 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    [v18 setHidesWhenStopped:1];

    v19 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    [(GuidanceSearchResultsView *)v3 addSubview:v19];

    v20 = objc_opt_new();
    [(GuidanceSearchResultsView *)v3 addLayoutGuide:v20];
    v21 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    v22 = [v21 topAnchor];
    v23 = [v20 topAnchor];
    v66 = [v22 constraintGreaterThanOrEqualToAnchor:v23];

    LODWORD(v24) = 1148846080;
    [v66 setPriority:v24];
    v25 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    v26 = [v25 centerYAnchor];
    v27 = [v20 centerYAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    LODWORD(v29) = 1144750080;
    v46 = v28;
    [v28 setPriority:v29];
    v65 = [(GuidanceSearchResultsView *)v3 tableView];
    v64 = [v65 leadingAnchor];
    v63 = [(GuidanceSearchResultsView *)v3 leadingAnchor];
    v62 = [v64 constraintEqualToAnchor:v63];
    v68[0] = v62;
    v61 = [(GuidanceSearchResultsView *)v3 tableView];
    v60 = [v61 topAnchor];
    v59 = [(GuidanceSearchResultsView *)v3 topAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v68[1] = v58;
    v57 = [(GuidanceSearchResultsView *)v3 tableView];
    v56 = [v57 trailingAnchor];
    v55 = [(GuidanceSearchResultsView *)v3 trailingAnchor];
    v54 = [v56 constraintEqualToAnchor:v55];
    v68[2] = v54;
    v53 = [(GuidanceSearchResultsView *)v3 tableView];
    v52 = [v53 bottomAnchor];
    v51 = [(GuidanceSearchResultsView *)v3 bottomAnchor];
    v50 = [v52 constraintEqualToAnchor:v51];
    v68[3] = v50;
    v48 = [v20 leadingAnchor];
    v47 = [(GuidanceSearchResultsView *)v3 leadingAnchor];
    v45 = [v48 constraintEqualToAnchor:v47];
    v68[4] = v45;
    v44 = [v20 trailingAnchor];
    v43 = [(GuidanceSearchResultsView *)v3 trailingAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v68[5] = v42;
    v41 = [v20 topAnchor];
    v40 = [(GuidanceSearchResultsView *)v3 topAnchor];
    v30 = [v41 constraintEqualToAnchor:v40];
    v68[6] = v30;
    v49 = v20;
    v31 = [v20 bottomAnchor];
    v32 = [(GuidanceSearchResultsView *)v3 bottomAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];
    v68[7] = v33;
    v34 = [(GuidanceSearchResultsView *)v3 activityIndicatorView];
    v35 = [v34 centerXAnchor];
    v36 = [v20 centerXAnchor];
    v37 = [v35 constraintEqualToAnchor:v36];
    v68[8] = v37;
    v68[9] = v66;
    v68[10] = v28;
    v38 = [NSArray arrayWithObjects:v68 count:11];
    [NSLayoutConstraint activateConstraints:v38];
  }

  return v3;
}

@end