@interface TTRIVibrantTableCell
- (_TtC27RemindersIntentsUIExtension20TTRIVibrantTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation TTRIVibrantTableCell

- (void)layoutSubviews
{
  v2 = self;
  sub_1000124D4();
}

- (_TtC27RemindersIntentsUIExtension20TTRIVibrantTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_10001FA84();
    v6 = sub_10001FA54();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRIVibrantTableCell();
  v7 = [(TTRIVibrantTableCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

@end