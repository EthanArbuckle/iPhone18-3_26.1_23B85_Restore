@interface AccountPSDetailTableCell
- (void)layoutSubviews;
@end

@implementation AccountPSDetailTableCell

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = AccountPSDetailTableCell;
  [(AccountPSDetailTableCell *)&v23 layoutSubviews];
  detailTextLabel = [(AccountPSDetailTableCell *)self detailTextLabel];
  [detailTextLabel setTextAlignment:0];
  [detailTextLabel frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(AccountPSDetailTableCell *)self textFieldOffset];
  v13 = v12;
  textLabel = [(AccountPSDetailTableCell *)self textLabel];
  [textLabel frame];
  v16 = v15;
  _tableView = [(AccountPSDetailTableCell *)self _tableView];
  [_tableView layoutMargins];
  v19 = v16 + v18 + 6.0;

  if (v19 > v13)
  {
    v13 = v19;
  }

  if ([(AccountPSDetailTableCell *)self effectiveUserInterfaceLayoutDirection])
  {
    contentView = [(AccountPSDetailTableCell *)self contentView];
    [contentView bounds];
    v22 = v21 - v13;

    v13 = v22 - v9;
  }

  else
  {
    v9 = v9 - (v13 - v5);
  }

  [detailTextLabel setFrame:{v13, v7, v9, v11}];
}

@end