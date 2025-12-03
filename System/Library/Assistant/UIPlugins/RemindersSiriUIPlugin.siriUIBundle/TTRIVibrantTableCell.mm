@interface TTRIVibrantTableCell
- (_TtC21RemindersSiriUIPlugin20TTRIVibrantTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation TTRIVibrantTableCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_7D04();
}

- (_TtC21RemindersSiriUIPlugin20TTRIVibrantTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    sub_2041C();
    v6 = sub_203EC();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRIVibrantTableCell();
  v7 = [(TTRIVibrantTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

@end