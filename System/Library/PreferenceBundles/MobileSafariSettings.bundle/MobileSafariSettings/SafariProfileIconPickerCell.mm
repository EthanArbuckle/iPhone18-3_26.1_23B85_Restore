@interface SafariProfileIconPickerCell
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation SafariProfileIconPickerCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v32.receiver = self;
  v32.super_class = SafariProfileIconPickerCell;
  [(SafariProfileIconPickerCell *)&v32 refreshCellContentsWithSpecifier:specifierCopy];
  contentView = [(SafariProfileIconPickerCell *)self contentView];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  subviews = [contentView subviews];
  v7 = [subviews countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v28 + 1) + 8 * v10) removeFromSuperview];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  [(SafariProfileIconPickerCell *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  userInfo = [specifierCopy userInfo];
  [userInfo setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:userInfo];
  heightAnchor = [userInfo heightAnchor];
  v26 = [heightAnchor constraintEqualToConstant:58.0];
  v33[0] = v26;
  topAnchor = [contentView topAnchor];
  topAnchor2 = [userInfo topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-8.0];
  v33[1] = v23;
  leadingAnchor = [userInfo leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
  v33[2] = v12;
  trailingAnchor = [contentView trailingAnchor];
  trailingAnchor2 = [userInfo trailingAnchor];
  v15 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:20.0];
  v33[3] = v15;
  [contentView bottomAnchor];
  v16 = v22 = specifierCopy;
  bottomAnchor = [userInfo bottomAnchor];
  v18 = [v16 constraintGreaterThanOrEqualToAnchor:bottomAnchor constant:8.0];
  v33[4] = v18;
  v19 = [NSArray arrayWithObjects:v33 count:5];
  [NSLayoutConstraint activateConstraints:v19];
}

@end