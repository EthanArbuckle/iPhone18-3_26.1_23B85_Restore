@interface SafariProfileIconPickerCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation SafariProfileIconPickerCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = SafariProfileIconPickerCell;
  [(SafariProfileIconPickerCell *)&v32 refreshCellContentsWithSpecifier:v4];
  v5 = [(SafariProfileIconPickerCell *)self contentView];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [v5 subviews];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v28 + 1) + 8 * v10) removeFromSuperview];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  [(SafariProfileIconPickerCell *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = [v4 userInfo];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 addSubview:v11];
  v27 = [v11 heightAnchor];
  v26 = [v27 constraintEqualToConstant:58.0];
  v33[0] = v26;
  v25 = [v5 topAnchor];
  v24 = [v11 topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24 constant:-8.0];
  v33[1] = v23;
  v21 = [v11 leadingAnchor];
  v20 = [v5 leadingAnchor];
  v12 = [v21 constraintEqualToAnchor:v20 constant:20.0];
  v33[2] = v12;
  v13 = [v5 trailingAnchor];
  v14 = [v11 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14 constant:20.0];
  v33[3] = v15;
  [v5 bottomAnchor];
  v16 = v22 = v4;
  v17 = [v11 bottomAnchor];
  v18 = [v16 constraintGreaterThanOrEqualToAnchor:v17 constant:8.0];
  v33[4] = v18;
  v19 = [NSArray arrayWithObjects:v33 count:5];
  [NSLayoutConstraint activateConstraints:v19];
}

@end