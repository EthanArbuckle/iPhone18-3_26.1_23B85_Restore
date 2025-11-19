@interface CACInstructionalCell
- (CACInstructionalCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
@end

@implementation CACInstructionalCell

- (CACInstructionalCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v47.receiver = self;
  v47.super_class = CACInstructionalCell;
  v7 = a5;
  v8 = [(CACInstructionalCell *)&v47 initWithStyle:a3 reuseIdentifier:a4 specifier:v7];
  v9 = +[UIColor clearColor];
  [(CACInstructionalCell *)v8 setBackgroundColor:v9];

  v10 = +[UIBackgroundConfiguration clearConfiguration];
  [(CACInstructionalCell *)v8 setBackgroundConfiguration:v10];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(CACInstructionalCell *)v8 setSeparatorInset:UIEdgeInsetsZero.top, left, bottom, right];
  [(CACInstructionalCell *)v8 setLayoutMargins:UIEdgeInsetsZero.top, left, bottom, right];
  v46 = [v7 propertyForKey:@"Title"];
  v44 = [v7 propertyForKey:@"Icon"];
  v45 = [v7 propertyForKey:@"IconIgnoresInvertColors"];
  v43 = [v7 propertyForKey:@"Description"];
  v42 = [v7 propertyForKey:@"URLText"];
  v40 = [v7 propertyForKey:@"ButtonCallback"];
  v41 = [v7 propertyForKey:@"CloseCallback"];

  v39 = objc_opt_new();
  v14 = [v39 makeContentCellViewWithTitle:v46 image:v44 imageIgnoresInvertColors:objc_msgSend(v45 description:"BOOLValue") linkTitle:v43 linkCallback:v42 closeCallback:{v40, v41}];
  v15 = [v14 view];

  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [(CACInstructionalCell *)v8 contentView];
  [v16 addSubview:v15];

  v17 = +[UIColor clearColor];
  v18 = [(CACInstructionalCell *)v8 contentView];
  [v18 setBackgroundColor:v17];

  v19 = [v15 layer];
  [v19 setCornerRadius:16.0];

  [v15 setAccessibilityContainerType:4];
  v20 = settingsLocString(@"TIP_VOICEOVER_HINTS_LABEL", @"Accessibility");
  [v15 setAccessibilityLabel:v20];

  v37 = [v15 topAnchor];
  v38 = [(CACInstructionalCell *)v8 contentView];
  v36 = [v38 topAnchor];
  v35 = [v37 constraintEqualToAnchor:v36 constant:0.0];
  v48[0] = v35;
  v33 = [v15 leadingAnchor];
  v34 = [(CACInstructionalCell *)v8 contentView];
  v32 = [v34 leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32 constant:15.0];
  v48[1] = v31;
  v30 = [v15 trailingAnchor];
  v21 = [(CACInstructionalCell *)v8 contentView];
  v22 = [v21 trailingAnchor];
  v23 = [v30 constraintEqualToAnchor:v22 constant:-15.0];
  v48[2] = v23;
  v24 = [v15 bottomAnchor];
  v25 = [(CACInstructionalCell *)v8 contentView];
  v26 = [v25 bottomAnchor];
  v27 = [v24 constraintEqualToAnchor:v26 constant:0.0];
  v48[3] = v27;
  v28 = [NSArray arrayWithObjects:v48 count:4];
  [NSLayoutConstraint activateConstraints:v28];

  return v8;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = CACInstructionalCell;
  [(CACInstructionalCell *)&v14 layoutSubviews];
  v3 = +[UIColor clearColor];
  [(CACInstructionalCell *)self setBackgroundColor:v3];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(CACInstructionalCell *)self subviews];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        NSClassFromString(@"_UITableViewCellSeparatorView");
        if (objc_opt_isKindOfClass())
        {
          [v9 setHidden:1];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

@end