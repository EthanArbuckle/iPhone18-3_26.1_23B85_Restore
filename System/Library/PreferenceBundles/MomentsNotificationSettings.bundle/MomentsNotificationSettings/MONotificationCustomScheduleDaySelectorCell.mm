@interface MONotificationCustomScheduleDaySelectorCell
- (MONotificationCustomScheduleDaySelectorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)scheduleDaySelectorView:(id)a3 didChangeDays:(id)a4;
@end

@implementation MONotificationCustomScheduleDaySelectorCell

- (MONotificationCustomScheduleDaySelectorCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v27.receiver = self;
  v27.super_class = MONotificationCustomScheduleDaySelectorCell;
  v4 = [(MONotificationCustomScheduleDaySelectorCell *)&v27 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MONotificationCustomScheduleDaySelectorView);
    [(MONotificationCustomScheduleDaySelectorCell *)v4 setDaySelectorView:v5];

    v6 = [(MONotificationCustomScheduleDaySelectorCell *)v4 contentView];
    [v6 addSubview:v4->_daySelectorView];

    v7 = [(MONotificationCustomScheduleDaySelectorCell *)v4 daySelectorView];
    [v7 setDelegate:v4];

    v8 = [(MONotificationCustomScheduleDaySelectorCell *)v4 daySelectorView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView leadingAnchor];
    v10 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView superview];
    v11 = [v10 leadingAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];

    v13 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView trailingAnchor];
    v14 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView superview];
    v15 = [v14 trailingAnchor];
    v16 = [v13 constraintEqualToAnchor:v15];

    v17 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView topAnchor];
    v18 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView superview];
    v19 = [v18 topAnchor];
    v20 = [v17 constraintEqualToAnchor:v19];

    v21 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView bottomAnchor];
    v22 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView superview];
    v23 = [v22 bottomAnchor];
    v24 = [v21 constraintEqualToAnchor:v23];

    v28[0] = v12;
    v28[1] = v16;
    v28[2] = v20;
    v28[3] = v24;
    v25 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v25];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v5.receiver = self;
  v5.super_class = MONotificationCustomScheduleDaySelectorCell;
  [(MONotificationCustomScheduleDaySelectorCell *)&v5 refreshCellContentsWithSpecifier:a3];
  v4 = *&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__value];
  if ([v4 count])
  {
    [(MONotificationCustomScheduleDaySelectorView *)self->_daySelectorView setSelectedDays:v4];
  }
}

- (void)scheduleDaySelectorView:(id)a3 didChangeDays:(id)a4
{
  v5 = a4;
  v6 = [(MONotificationCustomScheduleDaySelectorCell *)self specifier];
  [v6 performSetterWithValue:v5];
}

@end