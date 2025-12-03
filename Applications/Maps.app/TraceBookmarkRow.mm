@interface TraceBookmarkRow
- (TraceBookmarkRow)initWithName:(id)name detail:(id)detail;
- (void)configureCell:(id)cell;
@end

@implementation TraceBookmarkRow

- (void)configureCell:(id)cell
{
  detail = self->_detail;
  cellCopy = cell;
  detailTextLabel = [cellCopy detailTextLabel];
  [detailTextLabel setText:detail];

  name = self->_name;
  textLabel = [cellCopy textLabel];

  [textLabel setText:name];
}

- (TraceBookmarkRow)initWithName:(id)name detail:(id)detail
{
  nameCopy = name;
  detailCopy = detail;
  v12.receiver = self;
  v12.super_class = TraceBookmarkRow;
  v9 = [(TraceBookmarkRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_detail, detail);
  }

  return v10;
}

@end