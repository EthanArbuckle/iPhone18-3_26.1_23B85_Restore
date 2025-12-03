@interface DeviceRestoreBackupCell
- (DeviceRestoreBackupCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation DeviceRestoreBackupCell

- (DeviceRestoreBackupCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  location[2] = a2;
  location[1] = style;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v44.receiver = v4;
  v44.super_class = DeviceRestoreBackupCell;
  selfCopy = [(DeviceRestoreBackupCell *)&v44 initWithStyle:3 reuseIdentifier:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v5 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v6 = *(selfCopy + 1);
    *(selfCopy + 1) = v5;

    [*(selfCopy + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(selfCopy + 1) setContentMode:1];
    contentView = [selfCopy contentView];
    [contentView addSubview:*(selfCopy + 1)];

    leadingAnchor = [*(selfCopy + 1) leadingAnchor];
    contentView2 = [selfCopy contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:2.0 constant:?];
    v48[0] = v34;
    contentView3 = [selfCopy contentView];
    centerYAnchor = [contentView3 centerYAnchor];
    centerYAnchor2 = [*(selfCopy + 1) centerYAnchor];
    v10 = [centerYAnchor constraintLessThanOrEqualToAnchor:centerYAnchor2];
    v48[1] = v10;
    widthAnchor = [*(selfCopy + 1) widthAnchor];
    v12 = [widthAnchor constraintEqualToConstant:39.0];
    v48[2] = v12;
    heightAnchor = [*(selfCopy + 1) heightAnchor];
    v14 = [heightAnchor constraintEqualToConstant:39.0];
    v48[3] = v14;
    v15 = [NSArray arrayWithObjects:v48 count:4];
    [NSLayoutConstraint activateConstraints:v15];

    v43 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [v43 setAxis:1];
    [v43 setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v17 = *(selfCopy + 2);
    *(selfCopy + 2) = v16;

    [*(selfCopy + 2) setNumberOfLines:0];
    [*(selfCopy + 2) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v43 addArrangedSubview:*(selfCopy + 2)];
    [v43 setCustomSpacing:*(selfCopy + 2) afterView:2.0];
    v18 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v19 = *(selfCopy + 3);
    *(selfCopy + 3) = v18;

    [*(selfCopy + 3) setNumberOfLines:0];
    [*(selfCopy + 3) setTranslatesAutoresizingMaskIntoConstraints:0];
    [v43 addArrangedSubview:*(selfCopy + 3)];
    contentView4 = [selfCopy contentView];
    [contentView4 addSubview:v43];

    contentView5 = [selfCopy contentView];
    heightAnchor2 = [contentView5 heightAnchor];
    heightAnchor3 = [v43 heightAnchor];
    v38 = [heightAnchor2 constraintEqualToAnchor:2.0 * 9.0 constant:?];
    v47[0] = v38;
    contentView6 = [selfCopy contentView];
    trailingAnchor = [contentView6 trailingAnchor];
    trailingAnchor2 = [v43 trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v47[1] = v23;
    leadingAnchor3 = [v43 leadingAnchor];
    trailingAnchor3 = [*(selfCopy + 1) trailingAnchor];
    v26 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor3 constant:2.0];
    v47[2] = v26;
    centerYAnchor3 = [v43 centerYAnchor];
    centerYAnchor4 = [selfCopy centerYAnchor];
    v29 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v47[3] = v29;
    v30 = [NSArray arrayWithObjects:v47 count:4];
    [NSLayoutConstraint activateConstraints:v30];

    objc_storeStrong(&v43, 0);
  }

  v31 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v31;
}

@end