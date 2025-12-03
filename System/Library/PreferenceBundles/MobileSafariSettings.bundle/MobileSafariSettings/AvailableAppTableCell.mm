@interface AvailableAppTableCell
+ (id)lockupViewGroup;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation AvailableAppTableCell

+ (id)lockupViewGroup
{
  if (lockupViewGroup_onceToken[0] != -1)
  {
    +[AvailableAppTableCell lockupViewGroup];
  }

  v3 = lockupViewGroup_group;

  return v3;
}

void __40__AvailableAppTableCell_lockupViewGroup__block_invoke(id a1)
{
  lockupViewGroup_group = [[ASCLockupViewGroup alloc] initWithName:@"ExtensionSettings"];

  _objc_release_x1();
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v29.receiver = self;
  v29.super_class = AvailableAppTableCell;
  [(AvailableAppTableCell *)&v29 refreshCellContentsWithSpecifier:specifierCopy];
  contentView = [(AvailableAppTableCell *)self contentView];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  subviews = [contentView subviews];
  v7 = [subviews countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v25 + 1) + 8 * v10) removeFromSuperview];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [subviews countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  userInfo = [specifierCopy userInfo];
  if (userInfo)
  {
    [(AvailableAppTableCell *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = objc_alloc_init(UIStackView);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setAxis:1];
    [contentView addSubview:v12];
    topAnchor = [v12 topAnchor];
    topAnchor2 = [contentView topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:8.0];
    [v15 setActive:1];

    bottomAnchor = [v12 bottomAnchor];
    bottomAnchor2 = [contentView bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-8.0];
    [v18 setActive:1];

    leadingAnchor = [v12 leadingAnchor];
    leadingAnchor2 = [contentView leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
    [v21 setActive:1];

    trailingAnchor = [v12 trailingAnchor];
    trailingAnchor2 = [contentView trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-16.0];
    [v24 setActive:1];

    [userInfo setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 addArrangedSubview:userInfo];
  }
}

@end