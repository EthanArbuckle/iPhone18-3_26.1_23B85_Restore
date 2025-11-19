@interface AvailableAppTableCell
+ (id)lockupViewGroup;
- (void)refreshCellContentsWithSpecifier:(id)a3;
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

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = AvailableAppTableCell;
  [(AvailableAppTableCell *)&v29 refreshCellContentsWithSpecifier:v4];
  v5 = [(AvailableAppTableCell *)self contentView];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = [v5 subviews];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v25 + 1) + 8 * v10) removeFromSuperview];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v11 = [v4 userInfo];
  if (v11)
  {
    [(AvailableAppTableCell *)self setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = objc_alloc_init(UIStackView);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 setAxis:1];
    [v5 addSubview:v12];
    v13 = [v12 topAnchor];
    v14 = [v5 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14 constant:8.0];
    [v15 setActive:1];

    v16 = [v12 bottomAnchor];
    v17 = [v5 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:-8.0];
    [v18 setActive:1];

    v19 = [v12 leadingAnchor];
    v20 = [v5 leadingAnchor];
    v21 = [v19 constraintEqualToAnchor:v20 constant:16.0];
    [v21 setActive:1];

    v22 = [v12 trailingAnchor];
    v23 = [v5 trailingAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 constant:-16.0];
    [v24 setActive:1];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v12 addArrangedSubview:v11];
  }
}

@end