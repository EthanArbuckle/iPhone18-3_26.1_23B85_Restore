@interface AccountPSDetailTableCell
- (void)layoutSubviews;
@end

@implementation AccountPSDetailTableCell

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = AccountPSDetailTableCell;
  [(AccountPSDetailTableCell *)&v23 layoutSubviews];
  v3 = [(AccountPSDetailTableCell *)self detailTextLabel];
  [v3 setTextAlignment:0];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(AccountPSDetailTableCell *)self textFieldOffset];
  v13 = v12;
  v14 = [(AccountPSDetailTableCell *)self textLabel];
  [v14 frame];
  v16 = v15;
  v17 = [(AccountPSDetailTableCell *)self _tableView];
  [v17 layoutMargins];
  v19 = v16 + v18 + 6.0;

  if (v19 > v13)
  {
    v13 = v19;
  }

  if ([(AccountPSDetailTableCell *)self effectiveUserInterfaceLayoutDirection])
  {
    v20 = [(AccountPSDetailTableCell *)self contentView];
    [v20 bounds];
    v22 = v21 - v13;

    v13 = v22 - v9;
  }

  else
  {
    v9 = v9 - (v13 - v5);
  }

  [v3 setFrame:{v13, v7, v9, v11}];
}

@end