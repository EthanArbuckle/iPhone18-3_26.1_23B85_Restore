@interface BuddyAppleIDTableCell
- (BuddyAppleIDTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier columnCount:(unint64_t)count;
- (id)addService:(id)service description:(id)description;
@end

@implementation BuddyAppleIDTableCell

- (BuddyAppleIDTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier columnCount:(unint64_t)count
{
  selfCopy = self;
  v40 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  countCopy = count;
  v6 = selfCopy;
  selfCopy = 0;
  v36.receiver = v6;
  v36.super_class = BuddyAppleIDTableCell;
  selfCopy = [(BuddyAppleIDTableCell *)&v36 initWithStyle:styleCopy reuseIdentifier:location];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [selfCopy setSelectionStyle:0];
    [selfCopy setColumnCount:countCopy];
    v7 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [selfCopy setStackView:v7];

    stackView = [selfCopy stackView];
    [stackView setAxis:1];

    stackView2 = [selfCopy stackView];
    [stackView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    stackView3 = [selfCopy stackView];
    [stackView3 setSpacing:20.0];

    contentView = [selfCopy contentView];
    stackView4 = [selfCopy stackView];
    [contentView addSubview:stackView4];

    contentView2 = [selfCopy contentView];
    topAnchor = [contentView2 topAnchor];
    stackView5 = [selfCopy stackView];
    topAnchor2 = [stackView5 topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:?];
    v42[0] = v31;
    contentView3 = [selfCopy contentView];
    trailingAnchor = [contentView3 trailingAnchor];
    stackView6 = [selfCopy stackView];
    trailingAnchor2 = [stackView6 trailingAnchor];
    v26 = [trailingAnchor constraintEqualToAnchor:?];
    v42[1] = v26;
    contentView4 = [selfCopy contentView];
    bottomAnchor = [contentView4 bottomAnchor];
    stackView7 = [selfCopy stackView];
    bottomAnchor2 = [stackView7 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v42[2] = v16;
    contentView5 = [selfCopy contentView];
    leadingAnchor = [contentView5 leadingAnchor];
    stackView8 = [selfCopy stackView];
    leadingAnchor2 = [stackView8 leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v42[3] = v21;
    v22 = [NSArray arrayWithObjects:v42 count:4];
    [NSLayoutConstraint activateConstraints:v22];
  }

  v23 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v23;
}

- (id)addService:(id)service description:(id)description
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, service);
  v20 = 0;
  objc_storeStrong(&v20, description);
  v5 = [BuddyAppleIDServiceView alloc];
  v19 = [(BuddyAppleIDServiceView *)v5 initWithImage:location[0] description:v20];
  [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([(BuddyAppleIDTableCell *)selfCopy columnCount]== 1)
  {
    stackView = [(BuddyAppleIDTableCell *)selfCopy stackView];
    [(UIStackView *)stackView addArrangedSubview:v19];
  }

  else
  {
    rowStackView = [(BuddyAppleIDTableCell *)selfCopy rowStackView];

    if (rowStackView)
    {
      rowStackView2 = [(BuddyAppleIDTableCell *)selfCopy rowStackView];
      [(UIStackView *)rowStackView2 addArrangedSubview:v19];

      [(BuddyAppleIDTableCell *)selfCopy setRowStackView:0];
    }

    else
    {
      v8 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      [(BuddyAppleIDTableCell *)selfCopy setRowStackView:v8];

      rowStackView3 = [(BuddyAppleIDTableCell *)selfCopy rowStackView];
      [(UIStackView *)rowStackView3 setAxis:0];

      rowStackView4 = [(BuddyAppleIDTableCell *)selfCopy rowStackView];
      [(UIStackView *)rowStackView4 setTranslatesAutoresizingMaskIntoConstraints:0];

      rowStackView5 = [(BuddyAppleIDTableCell *)selfCopy rowStackView];
      [(UIStackView *)rowStackView5 setDistribution:1];

      rowStackView6 = [(BuddyAppleIDTableCell *)selfCopy rowStackView];
      [(UIStackView *)rowStackView6 setSpacing:23.0];

      stackView2 = [(BuddyAppleIDTableCell *)selfCopy stackView];
      rowStackView7 = [(BuddyAppleIDTableCell *)selfCopy rowStackView];
      [(UIStackView *)stackView2 addArrangedSubview:rowStackView7];

      rowStackView8 = [(BuddyAppleIDTableCell *)selfCopy rowStackView];
      [(UIStackView *)rowStackView8 addArrangedSubview:v19];
    }
  }

  v17 = v19;
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
  return v17;
}

@end