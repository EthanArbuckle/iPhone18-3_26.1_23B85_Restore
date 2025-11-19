@interface TraceBookmarkRow
- (TraceBookmarkRow)initWithName:(id)a3 detail:(id)a4;
- (void)configureCell:(id)a3;
@end

@implementation TraceBookmarkRow

- (void)configureCell:(id)a3
{
  detail = self->_detail;
  v5 = a3;
  v6 = [v5 detailTextLabel];
  [v6 setText:detail];

  name = self->_name;
  v8 = [v5 textLabel];

  [v8 setText:name];
}

- (TraceBookmarkRow)initWithName:(id)a3 detail:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TraceBookmarkRow;
  v9 = [(TraceBookmarkRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_detail, a4);
  }

  return v10;
}

@end