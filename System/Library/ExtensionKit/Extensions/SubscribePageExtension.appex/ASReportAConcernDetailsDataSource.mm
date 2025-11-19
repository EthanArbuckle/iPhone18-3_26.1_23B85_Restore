@interface ASReportAConcernDetailsDataSource
- (ASReportAConcernDetailsDataSource)init;
- (ASReportAConcernDetailsDataSource)initWithTableView:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
@end

@implementation ASReportAConcernDetailsDataSource

- (ASReportAConcernDetailsDataSource)init
{
  v3 = objc_alloc_init(UITableView);
  v4 = [(ASReportAConcernDetailsDataSource *)self initWithTableView:v3];

  return v4;
}

- (ASReportAConcernDetailsDataSource)initWithTableView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASReportAConcernDetailsDataSource;
  v6 = [(ASReportAConcernDetailsDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, a3);
    [v5 registerClass:objc_opt_class() forCellReuseIdentifier:@"ASConcernDetailsCell"];
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = [a3 dequeueReusableCellWithIdentifier:{@"ASConcernDetailsCell", a4}];
  v6 = [(ASReportAConcernDetailsDataSource *)self placeholder];
  [v5 setPlaceholderText:v6];

  return v5;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(ASReportAConcernDetailsDataSource *)self selectedReason:a3];
  v5 = [v4 uppercaseString];

  return v5;
}

@end