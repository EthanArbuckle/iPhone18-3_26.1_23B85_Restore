@interface MFMailboxFilterPickerCell
- (MFMailboxFilterPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)bindWithMailboxFilter:(id)filter;
- (void)setIcon:(id)icon;
- (void)setIconTintColor:(id)color;
- (void)setTitle:(id)title;
@end

@implementation MFMailboxFilterPickerCell

- (void)bindWithMailboxFilter:(id)filter
{
  filterCopy = filter;
  filterDescription = [filterCopy filterDescription];
  [(MFMailboxFilterPickerCell *)self setTitle:filterDescription];

  iconTintColor = [filterCopy iconTintColor];
  [(MFMailboxFilterPickerCell *)self setIconTintColor:iconTintColor];

  iconImageName = [filterCopy iconImageName];

  if (iconImageName)
  {
    iconImageName2 = [filterCopy iconImageName];
    icon = [UIImage mf_systemImageNamed:iconImageName2 forView:6];
  }

  else
  {
    icon = [filterCopy icon];
  }

  [(MFMailboxFilterPickerCell *)self setIcon:icon];
}

- (MFMailboxFilterPickerCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = MFMailboxFilterPickerCell;
  v7 = [(MFMailboxFilterPickerCell *)&v10 initWithStyle:style reuseIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    [(MFMailboxFilterPickerCell *)v7 setSelectionStyle:0];
  }

  return v8;
}

- (void)setTitle:(id)title
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4C98;
  v5[3] = &unk_10064FD38;
  titleCopy = title;
  v4 = titleCopy;
  [(MFMailboxFilterPickerCell *)self mf_updateContentConfigurationWithBlock:v5];
}

- (void)setIcon:(id)icon
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4D50;
  v5[3] = &unk_10064FD38;
  iconCopy = icon;
  v4 = iconCopy;
  [(MFMailboxFilterPickerCell *)self mf_updateContentConfigurationWithBlock:v5];
}

- (void)setIconTintColor:(id)color
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4E08;
  v5[3] = &unk_10064FD38;
  colorCopy = color;
  v4 = colorCopy;
  [(MFMailboxFilterPickerCell *)self mf_updateContentConfigurationWithBlock:v5];
}

@end