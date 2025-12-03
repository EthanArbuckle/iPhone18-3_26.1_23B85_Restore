@interface MONotificationCustomScheduleDaySelectorCell
- (MONotificationCustomScheduleDaySelectorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)scheduleDaySelectorView:(id)view didChangeDays:(id)days;
@end

@implementation MONotificationCustomScheduleDaySelectorCell

- (MONotificationCustomScheduleDaySelectorCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v27.receiver = self;
  v27.super_class = MONotificationCustomScheduleDaySelectorCell;
  v4 = [(MONotificationCustomScheduleDaySelectorCell *)&v27 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MONotificationCustomScheduleDaySelectorView);
    [(MONotificationCustomScheduleDaySelectorCell *)v4 setDaySelectorView:v5];

    contentView = [(MONotificationCustomScheduleDaySelectorCell *)v4 contentView];
    [contentView addSubview:v4->_daySelectorView];

    daySelectorView = [(MONotificationCustomScheduleDaySelectorCell *)v4 daySelectorView];
    [daySelectorView setDelegate:v4];

    daySelectorView2 = [(MONotificationCustomScheduleDaySelectorCell *)v4 daySelectorView];
    [daySelectorView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    leadingAnchor = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView leadingAnchor];
    superview = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView superview];
    leadingAnchor2 = [superview leadingAnchor];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];

    trailingAnchor = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView trailingAnchor];
    superview2 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView superview];
    trailingAnchor2 = [superview2 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];

    topAnchor = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView topAnchor];
    superview3 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView superview];
    topAnchor2 = [superview3 topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];

    bottomAnchor = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView bottomAnchor];
    superview4 = [(MONotificationCustomScheduleDaySelectorView *)v4->_daySelectorView superview];
    bottomAnchor2 = [superview4 bottomAnchor];
    v24 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];

    v28[0] = v12;
    v28[1] = v16;
    v28[2] = v20;
    v28[3] = v24;
    v25 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v25];
  }

  return v4;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v5.receiver = self;
  v5.super_class = MONotificationCustomScheduleDaySelectorCell;
  [(MONotificationCustomScheduleDaySelectorCell *)&v5 refreshCellContentsWithSpecifier:specifier];
  v4 = *&self->PSTableCell_opaque[OBJC_IVAR___PSTableCell__value];
  if ([v4 count])
  {
    [(MONotificationCustomScheduleDaySelectorView *)self->_daySelectorView setSelectedDays:v4];
  }
}

- (void)scheduleDaySelectorView:(id)view didChangeDays:(id)days
{
  daysCopy = days;
  specifier = [(MONotificationCustomScheduleDaySelectorCell *)self specifier];
  [specifier performSetterWithValue:daysCopy];
}

@end