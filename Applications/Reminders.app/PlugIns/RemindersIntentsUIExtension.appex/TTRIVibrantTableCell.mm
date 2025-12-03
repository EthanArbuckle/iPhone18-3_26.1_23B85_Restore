@interface TTRIVibrantTableCell
- (_TtC27RemindersIntentsUIExtension20TTRIVibrantTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation TTRIVibrantTableCell

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000124D4();
}

- (_TtC27RemindersIntentsUIExtension20TTRIVibrantTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(TTRIVibrantTableCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

@end