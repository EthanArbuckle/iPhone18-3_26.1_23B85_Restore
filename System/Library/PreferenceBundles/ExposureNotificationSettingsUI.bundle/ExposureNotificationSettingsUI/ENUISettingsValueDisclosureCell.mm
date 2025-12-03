@interface ENUISettingsValueDisclosureCell
- (ENUISettingsValueDisclosureCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ENUISettingsValueDisclosureCell

- (ENUISettingsValueDisclosureCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v5.receiver = self;
  v5.super_class = ENUISettingsValueDisclosureCell;
  return [(ENUISettingsValueDisclosureCell *)&v5 initWithStyle:1 reuseIdentifier:identifier];
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4 = PSTitleKey;
  specifierCopy = specifier;
  v6 = [specifierCopy propertyForKey:v4];
  titleLabel = [(ENUISettingsValueDisclosureCell *)self titleLabel];
  [titleLabel setText:v6];

  v8 = [specifierCopy propertyForKey:PSValueKey];

  detailTextLabel = [(ENUISettingsValueDisclosureCell *)self detailTextLabel];
  [detailTextLabel setText:v8];

  [(ENUISettingsValueDisclosureCell *)self setAccessoryType:1];
}

@end