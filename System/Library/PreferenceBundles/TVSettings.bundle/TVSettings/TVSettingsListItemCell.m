@interface TVSettingsListItemCell
- (TVSettingsListItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)_subtitleForSpecifier:(id)a3;
@end

@implementation TVSettingsListItemCell

- (TVSettingsListItemCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v14.receiver = self;
  v14.super_class = TVSettingsListItemCell;
  v9 = [(TVSettingsListItemCell *)&v14 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [(TVSettingsListItemCell *)v9 detailTextLabel];
    v12 = [(TVSettingsListItemCell *)v10 _subtitleForSpecifier:v8];
    [v11 setText:v12];
  }

  return v10;
}

- (id)_subtitleForSpecifier:(id)a3
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"The %@ method needs to be override by a subclass.", v3];

  return 0;
}

@end