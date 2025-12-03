@interface TVSettingsListItemCell
- (TVSettingsListItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)_subtitleForSpecifier:(id)specifier;
@end

@implementation TVSettingsListItemCell

- (TVSettingsListItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v14.receiver = self;
  v14.super_class = TVSettingsListItemCell;
  v9 = [(TVSettingsListItemCell *)&v14 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    detailTextLabel = [(TVSettingsListItemCell *)v9 detailTextLabel];
    v12 = [(TVSettingsListItemCell *)v10 _subtitleForSpecifier:specifierCopy];
    [detailTextLabel setText:v12];
  }

  return v10;
}

- (id)_subtitleForSpecifier:(id)specifier
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"The %@ method needs to be override by a subclass.", v3];

  return 0;
}

@end