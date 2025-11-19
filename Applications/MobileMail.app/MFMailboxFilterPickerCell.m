@interface MFMailboxFilterPickerCell
- (MFMailboxFilterPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)bindWithMailboxFilter:(id)a3;
- (void)setIcon:(id)a3;
- (void)setIconTintColor:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation MFMailboxFilterPickerCell

- (void)bindWithMailboxFilter:(id)a3
{
  v9 = a3;
  v4 = [v9 filterDescription];
  [(MFMailboxFilterPickerCell *)self setTitle:v4];

  v5 = [v9 iconTintColor];
  [(MFMailboxFilterPickerCell *)self setIconTintColor:v5];

  v6 = [v9 iconImageName];

  if (v6)
  {
    v7 = [v9 iconImageName];
    v8 = [UIImage mf_systemImageNamed:v7 forView:6];
  }

  else
  {
    v8 = [v9 icon];
  }

  [(MFMailboxFilterPickerCell *)self setIcon:v8];
}

- (MFMailboxFilterPickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = MFMailboxFilterPickerCell;
  v7 = [(MFMailboxFilterPickerCell *)&v10 initWithStyle:a3 reuseIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    [(MFMailboxFilterPickerCell *)v7 setSelectionStyle:0];
  }

  return v8;
}

- (void)setTitle:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4C98;
  v5[3] = &unk_10064FD38;
  v6 = a3;
  v4 = v6;
  [(MFMailboxFilterPickerCell *)self mf_updateContentConfigurationWithBlock:v5];
}

- (void)setIcon:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4D50;
  v5[3] = &unk_10064FD38;
  v6 = a3;
  v4 = v6;
  [(MFMailboxFilterPickerCell *)self mf_updateContentConfigurationWithBlock:v5];
}

- (void)setIconTintColor:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001D4E08;
  v5[3] = &unk_10064FD38;
  v6 = a3;
  v4 = v6;
  [(MFMailboxFilterPickerCell *)self mf_updateContentConfigurationWithBlock:v5];
}

@end