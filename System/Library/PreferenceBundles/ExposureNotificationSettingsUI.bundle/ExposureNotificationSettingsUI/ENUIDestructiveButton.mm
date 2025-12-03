@interface ENUIDestructiveButton
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setCellEnabled:(BOOL)enabled;
@end

@implementation ENUIDestructiveButton

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v11.receiver = self;
  v11.super_class = ENUIDestructiveButton;
  specifierCopy = specifier;
  [(ENUIDestructiveButton *)&v11 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{PSTitleKey, v11.receiver, v11.super_class}];

  titleLabel = [(ENUIDestructiveButton *)self titleLabel];
  [titleLabel setText:v5];

  v7 = +[UIColor systemRedColor];
  titleLabel2 = [(ENUIDestructiveButton *)self titleLabel];
  [titleLabel2 setTextColor:v7];

  v9 = +[UIColor systemRedColor];
  titleLabel3 = [(ENUIDestructiveButton *)self titleLabel];
  [titleLabel3 setHighlightedTextColor:v9];
}

- (void)setCellEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v7.receiver = self;
  v7.super_class = ENUIDestructiveButton;
  [(ENUIDestructiveButton *)&v7 setCellEnabled:?];
  if (enabledCopy)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.3;
  }

  titleLabel = [(ENUIDestructiveButton *)self titleLabel];
  [titleLabel setAlpha:v5];
}

@end