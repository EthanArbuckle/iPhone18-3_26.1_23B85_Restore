@interface BuddyMultilineButton
- (void)updateConstraints;
@end

@implementation BuddyMultilineButton

- (void)updateConstraints
{
  v32 = self;
  location[1] = a2;
  location[0] = objc_alloc_init(NSMutableArray);
  v2 = [(BuddyMultilineButton *)v32 labelTopConstraint];

  if (!v2)
  {
    v3 = [(BuddyMultilineButton *)v32 titleLabel];
    v4 = [v3 topAnchor];
    v5 = [(BuddyMultilineButton *)v32 topAnchor];
    [(BuddyMultilineButton *)v32 contentEdgeInsets];
    v27 = v6;
    v28 = v7;
    v29 = v8;
    v30 = v9;
    v10 = [v4 constraintEqualToAnchor:v5 constant:v6];
    [(BuddyMultilineButton *)v32 setLabelTopConstraint:v10];

    v11 = [(BuddyMultilineButton *)v32 labelTopConstraint];
    [location[0] addObject:v11];
  }

  v12 = [(BuddyMultilineButton *)v32 labelBottomConstraint];

  if (!v12)
  {
    v13 = [(BuddyMultilineButton *)v32 bottomAnchor];
    v14 = [(BuddyMultilineButton *)v32 titleLabel];
    v15 = [v14 bottomAnchor];
    [(BuddyMultilineButton *)v32 contentEdgeInsets];
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = v19;
    v20 = [v13 constraintEqualToAnchor:v15 constant:v18];
    [(BuddyMultilineButton *)v32 setLabelBottomConstraint:v20];

    v21 = [(BuddyMultilineButton *)v32 labelBottomConstraint];
    [location[0] addObject:v21];
  }

  [NSLayoutConstraint activateConstraints:location[0]];
  v22.receiver = v32;
  v22.super_class = BuddyMultilineButton;
  [(BuddyMultilineButton *)&v22 updateConstraints];
  objc_storeStrong(location, 0);
}

@end