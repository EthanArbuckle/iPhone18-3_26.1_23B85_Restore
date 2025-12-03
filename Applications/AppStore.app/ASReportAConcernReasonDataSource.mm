@interface ASReportAConcernReasonDataSource
- (ASReportAConcernReasonDataSource)init;
- (ASReportAConcernReasonDataSource)initWithTableView:(id)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
@end

@implementation ASReportAConcernReasonDataSource

- (ASReportAConcernReasonDataSource)init
{
  v3 = objc_alloc_init(UITableView);
  v4 = [(ASReportAConcernReasonDataSource *)self initWithTableView:v3];

  return v4;
}

- (ASReportAConcernReasonDataSource)initWithTableView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = ASReportAConcernReasonDataSource;
  v6 = [(ASReportAConcernReasonDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tableView, view);
    [viewCopy registerClass:objc_opt_class() forCellReuseIdentifier:@"ASConcernReasonCell"];
  }

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(ASReportAConcernReasonDataSource *)self reasons:view];
  v5 = [v4 count];

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  reasons = [(ASReportAConcernReasonDataSource *)self reasons];
  v9 = [pathCopy row];

  v10 = [reasons objectAtIndexedSubscript:v9];

  v11 = [viewCopy dequeueReusableCellWithIdentifier:@"ASConcernReasonCell"];

  name = [v10 name];
  textLabel = [v11 textLabel];
  [textLabel setText:name];

  [v11 setAccessoryType:1];

  return v11;
}

@end