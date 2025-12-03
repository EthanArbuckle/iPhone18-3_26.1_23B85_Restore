@interface CACInstructionalCell
- (CACInstructionalCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
@end

@implementation CACInstructionalCell

- (CACInstructionalCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v47.receiver = self;
  v47.super_class = CACInstructionalCell;
  specifierCopy = specifier;
  v8 = [(CACInstructionalCell *)&v47 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v9 = +[UIColor clearColor];
  [(CACInstructionalCell *)v8 setBackgroundColor:v9];

  v10 = +[UIBackgroundConfiguration clearConfiguration];
  [(CACInstructionalCell *)v8 setBackgroundConfiguration:v10];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [(CACInstructionalCell *)v8 setSeparatorInset:UIEdgeInsetsZero.top, left, bottom, right];
  [(CACInstructionalCell *)v8 setLayoutMargins:UIEdgeInsetsZero.top, left, bottom, right];
  v46 = [specifierCopy propertyForKey:@"Title"];
  v44 = [specifierCopy propertyForKey:@"Icon"];
  v45 = [specifierCopy propertyForKey:@"IconIgnoresInvertColors"];
  v43 = [specifierCopy propertyForKey:@"Description"];
  v42 = [specifierCopy propertyForKey:@"URLText"];
  v40 = [specifierCopy propertyForKey:@"ButtonCallback"];
  v41 = [specifierCopy propertyForKey:@"CloseCallback"];

  v39 = objc_opt_new();
  v14 = [v39 makeContentCellViewWithTitle:v46 image:v44 imageIgnoresInvertColors:objc_msgSend(v45 description:"BOOLValue") linkTitle:v43 linkCallback:v42 closeCallback:{v40, v41}];
  view = [v14 view];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(CACInstructionalCell *)v8 contentView];
  [contentView addSubview:view];

  v17 = +[UIColor clearColor];
  contentView2 = [(CACInstructionalCell *)v8 contentView];
  [contentView2 setBackgroundColor:v17];

  layer = [view layer];
  [layer setCornerRadius:16.0];

  [view setAccessibilityContainerType:4];
  v20 = settingsLocString(@"TIP_VOICEOVER_HINTS_LABEL", @"Accessibility");
  [view setAccessibilityLabel:v20];

  topAnchor = [view topAnchor];
  contentView3 = [(CACInstructionalCell *)v8 contentView];
  topAnchor2 = [contentView3 topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
  v48[0] = v35;
  leadingAnchor = [view leadingAnchor];
  contentView4 = [(CACInstructionalCell *)v8 contentView];
  leadingAnchor2 = [contentView4 leadingAnchor];
  v31 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:15.0];
  v48[1] = v31;
  trailingAnchor = [view trailingAnchor];
  contentView5 = [(CACInstructionalCell *)v8 contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-15.0];
  v48[2] = v23;
  bottomAnchor = [view bottomAnchor];
  contentView6 = [(CACInstructionalCell *)v8 contentView];
  bottomAnchor2 = [contentView6 bottomAnchor];
  v27 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
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
  subviews = [(CACInstructionalCell *)self subviews];
  v5 = [subviews countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(subviews);
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
      v6 = [subviews countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

@end