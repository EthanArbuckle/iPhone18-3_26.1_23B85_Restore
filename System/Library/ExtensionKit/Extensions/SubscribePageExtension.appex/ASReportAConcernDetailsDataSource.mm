@interface ASReportAConcernDetailsDataSource
- (ASReportAConcernDetailsDataSource)init;
- (ASReportAConcernDetailsDataSource)initWithTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
@end

@implementation ASReportAConcernDetailsDataSource

- (ASReportAConcernDetailsDataSource)init
{
  v3 = objc_alloc_init(UITableView);
  v4 = [(ASReportAConcernDetailsDataSource *)self initWithTableView:v3];

  return v4;
}

- (ASReportAConcernDetailsDataSource)initWithTableView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = ASReportAConcernDetailsDataSource;
  v6 = [(ASReportAConcernDetailsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, view);
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"ASConcernDetailsCell"];
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v5 = [view dequeueReusableCellWithIdentifier:{@"ASConcernDetailsCell", path}];
  placeholder = [(ASReportAConcernDetailsDataSource *)self placeholder];
  [v5 setPlaceholderText:placeholder];

  return v5;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(ASReportAConcernDetailsDataSource *)self selectedReason:view];
  uppercaseString = [v4 uppercaseString];

  return uppercaseString;
}

@end