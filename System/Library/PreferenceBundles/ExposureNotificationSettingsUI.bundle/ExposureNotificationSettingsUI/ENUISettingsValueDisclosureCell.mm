@interface ENUISettingsValueDisclosureCell
- (ENUISettingsValueDisclosureCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ENUISettingsValueDisclosureCell

- (ENUISettingsValueDisclosureCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v5.receiver = self;
  v5.super_class = ENUISettingsValueDisclosureCell;
  return [(ENUISettingsValueDisclosureCell *)&v5 initWithStyle:1 reuseIdentifier:a4];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = PSTitleKey;
  v5 = a3;
  v6 = [v5 propertyForKey:v4];
  v7 = [(ENUISettingsValueDisclosureCell *)self titleLabel];
  [v7 setText:v6];

  v8 = [v5 propertyForKey:PSValueKey];

  v9 = [(ENUISettingsValueDisclosureCell *)self detailTextLabel];
  [v9 setText:v8];

  [(ENUISettingsValueDisclosureCell *)self setAccessoryType:1];
}

@end