@interface ENUIDestructiveButton
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setCellEnabled:(BOOL)a3;
@end

@implementation ENUIDestructiveButton

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v11.receiver = self;
  v11.super_class = ENUIDestructiveButton;
  v4 = a3;
  [(ENUIDestructiveButton *)&v11 refreshCellContentsWithSpecifier:v4];
  v5 = [v4 propertyForKey:{PSTitleKey, v11.receiver, v11.super_class}];

  v6 = [(ENUIDestructiveButton *)self titleLabel];
  [v6 setText:v5];

  v7 = +[UIColor systemRedColor];
  v8 = [(ENUIDestructiveButton *)self titleLabel];
  [v8 setTextColor:v7];

  v9 = +[UIColor systemRedColor];
  v10 = [(ENUIDestructiveButton *)self titleLabel];
  [v10 setHighlightedTextColor:v9];
}

- (void)setCellEnabled:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = ENUIDestructiveButton;
  [(ENUIDestructiveButton *)&v7 setCellEnabled:?];
  if (v3)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.3;
  }

  v6 = [(ENUIDestructiveButton *)self titleLabel];
  [v6 setAlpha:v5];
}

@end