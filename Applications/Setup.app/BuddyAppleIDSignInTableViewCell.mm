@interface BuddyAppleIDSignInTableViewCell
- (BuddyAppleIDSignInTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation BuddyAppleIDSignInTableViewCell

- (BuddyAppleIDSignInTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  v31 = a2;
  styleCopy = style;
  location = 0;
  objc_storeStrong(&location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v28.receiver = v4;
  v28.super_class = BuddyAppleIDSignInTableViewCell;
  v5 = [(BuddyAppleIDSignInTableViewCell *)&v28 initWithStyle:styleCopy reuseIdentifier:location];
  selfCopy = v5;
  objc_storeStrong(&selfCopy, v5);
  if (v5)
  {
    v6 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v7 = *(selfCopy + 1);
    *(selfCopy + 1) = v6;

    [*(selfCopy + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [selfCopy contentView];
    [contentView addSubview:*(selfCopy + 1)];

    leadingAnchor = [*(selfCopy + 1) leadingAnchor];
    contentView2 = [selfCopy contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:14.0 constant:?];
    v33[0] = v24;
    trailingAnchor = [*(selfCopy + 1) trailingAnchor];
    contentView3 = [selfCopy contentView];
    trailingAnchor2 = [contentView3 trailingAnchor];
    v9 = [trailingAnchor constraintEqualToAnchor:-14.0 constant:?];
    v33[1] = v9;
    heightAnchor = [*(selfCopy + 1) heightAnchor];
    contentView4 = [selfCopy contentView];
    heightAnchor2 = [contentView4 heightAnchor];
    v13 = [heightAnchor constraintEqualToAnchor:heightAnchor2 constant:-30.0];
    v33[2] = v13;
    centerYAnchor = [*(selfCopy + 1) centerYAnchor];
    contentView5 = [selfCopy contentView];
    centerYAnchor2 = [contentView5 centerYAnchor];
    v17 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v33[3] = v17;
    v18 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v18];
  }

  v19 = selfCopy;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v19;
}

@end