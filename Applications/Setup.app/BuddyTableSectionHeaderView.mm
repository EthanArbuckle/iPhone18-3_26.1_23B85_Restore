@interface BuddyTableSectionHeaderView
- (BuddyTableSectionHeaderView)initWithPadding:(UIEdgeInsets)a3;
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)padding;
@end

@implementation BuddyTableSectionHeaderView

- (BuddyTableSectionHeaderView)initWithPadding:(UIEdgeInsets)a3
{
  *(&v25 + 1) = *&a3.left;
  *&v25 = a3.top;
  *&v26 = a3.bottom;
  *(&v26 + 1) = *&a3.right;
  v23 = a2;
  location = 0;
  v22.receiver = self;
  v22.super_class = BuddyTableSectionHeaderView;
  location = [(BuddyTableSectionHeaderView *)&v22 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    v3 = location + 16;
    v4 = v25;
    *(location + 2) = v26;
    *v3 = v4;
    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v6 = *(location + 1);
    *(location + 1) = v5;

    [*(location + 1) setTranslatesAutoresizingMaskIntoConstraints:0];
    [*(location + 1) setNumberOfLines:0];
    [location addSubview:*(location + 1)];
    v21 = [*(location + 1) leadingAnchor];
    v20 = [location leadingAnchor];
    v19 = [v21 constraintEqualToAnchor:*(&v25 + 1) constant:?];
    v27[0] = v19;
    v7 = [*(location + 1) trailingAnchor];
    v8 = [location trailingAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 constant:*(&v26 + 1)];
    v27[1] = v9;
    v10 = [*(location + 1) topAnchor];
    v11 = [location topAnchor];
    v12 = [v10 constraintEqualToAnchor:v11 constant:*&v25];
    v27[2] = v12;
    v13 = [*(location + 1) bottomAnchor];
    v14 = [location bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:-*&v26];
    v27[3] = v15;
    v16 = [NSArray arrayWithObjects:v27 count:4];
    [NSLayoutConstraint activateConstraints:v16];
  }

  v17 = location;
  objc_storeStrong(&location, 0);
  return v17;
}

- (CGSize)intrinsicContentSize
{
  [(BuddyTableSectionHeaderView *)self bounds];
  v2 = [(BuddyTableSectionHeaderView *)self sectionLabel];
  [(UILabel *)v2 intrinsicContentSize];
  [(BuddyTableSectionHeaderView *)self padding];
  [(BuddyTableSectionHeaderView *)self padding];
  sub_10018C244();
  v8 = v3;
  v9 = v4;

  v5 = v8;
  v6 = v9;
  result.height = v6;
  result.width = v5;
  return result;
}

- (UIEdgeInsets)padding
{
  left = self->_padding.left;
  top = self->_padding.top;
  right = self->_padding.right;
  bottom = self->_padding.bottom;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end