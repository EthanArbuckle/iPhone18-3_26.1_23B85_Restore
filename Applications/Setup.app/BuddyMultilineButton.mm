@interface BuddyMultilineButton
- (void)updateConstraints;
@end

@implementation BuddyMultilineButton

- (void)updateConstraints
{
  selfCopy = self;
  location[1] = a2;
  location[0] = objc_alloc_init(NSMutableArray);
  labelTopConstraint = [(BuddyMultilineButton *)selfCopy labelTopConstraint];

  if (!labelTopConstraint)
  {
    titleLabel = [(BuddyMultilineButton *)selfCopy titleLabel];
    topAnchor = [titleLabel topAnchor];
    topAnchor2 = [(BuddyMultilineButton *)selfCopy topAnchor];
    [(BuddyMultilineButton *)selfCopy contentEdgeInsets];
    v27 = v6;
    v28 = v7;
    v29 = v8;
    v30 = v9;
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v6];
    [(BuddyMultilineButton *)selfCopy setLabelTopConstraint:v10];

    labelTopConstraint2 = [(BuddyMultilineButton *)selfCopy labelTopConstraint];
    [location[0] addObject:labelTopConstraint2];
  }

  labelBottomConstraint = [(BuddyMultilineButton *)selfCopy labelBottomConstraint];

  if (!labelBottomConstraint)
  {
    bottomAnchor = [(BuddyMultilineButton *)selfCopy bottomAnchor];
    titleLabel2 = [(BuddyMultilineButton *)selfCopy titleLabel];
    bottomAnchor2 = [titleLabel2 bottomAnchor];
    [(BuddyMultilineButton *)selfCopy contentEdgeInsets];
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v20 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v18];
    [(BuddyMultilineButton *)selfCopy setLabelBottomConstraint:v20];

    labelBottomConstraint2 = [(BuddyMultilineButton *)selfCopy labelBottomConstraint];
    [location[0] addObject:labelBottomConstraint2];
  }

  [NSLayoutConstraint activateConstraints:location[0]];
  v22.receiver = selfCopy;
  v22.super_class = BuddyMultilineButton;
  [(BuddyMultilineButton *)&v22 updateConstraints];
  objc_storeStrong(location, 0);
}

@end