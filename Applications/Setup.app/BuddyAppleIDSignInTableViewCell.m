@interface BuddyAppleIDSignInTableViewCell
- (BuddyAppleIDSignInTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation BuddyAppleIDSignInTableViewCell

- (BuddyAppleIDSignInTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32 = self;
  v31 = a2;
  v30 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v32;
  v32 = 0;
  v28.receiver = v4;
  v28.super_class = BuddyAppleIDSignInTableViewCell;
  v5 = [(BuddyAppleIDSignInTableViewCell *)&v28 initWithStyle:v30 reuseIdentifier:location];
  v32 = v5;
  objc_storeStrong(&v32, v5);
  if (v5)
  {
    v6 = [[UITextField alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v7 = *(v32 + 1);
    *(v32 + 1) = v6;

    [*(v32 + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = [v32 contentView];
    [v8 addSubview:*(v32 + 1)];

    v26 = [*(v32 + 1) leadingAnchor];
    v27 = [v32 contentView];
    v25 = [v27 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:14.0 constant:?];
    v33[0] = v24;
    v22 = [*(v32 + 1) trailingAnchor];
    v23 = [v32 contentView];
    v21 = [v23 trailingAnchor];
    v9 = [v22 constraintEqualToAnchor:-14.0 constant:?];
    v33[1] = v9;
    v10 = [*(v32 + 1) heightAnchor];
    v11 = [v32 contentView];
    v12 = [v11 heightAnchor];
    v13 = [v10 constraintEqualToAnchor:v12 constant:-30.0];
    v33[2] = v13;
    v14 = [*(v32 + 1) centerYAnchor];
    v15 = [v32 contentView];
    v16 = [v15 centerYAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v33[3] = v17;
    v18 = [NSArray arrayWithObjects:v33 count:4];
    [NSLayoutConstraint activateConstraints:v18];
  }

  v19 = v32;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v32, 0);
  return v19;
}

@end