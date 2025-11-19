@interface CustomizeNotificationsCell
- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithCoder:(id)a3;
- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation CustomizeNotificationsCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_A85E8();
}

- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_C5484();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_A6CB8(a3, v7, v9, a5);
}

- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    sub_C5484();
    v6 = sub_C5444();
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for CustomizeNotificationsCell();
  v7 = [(CustomizeNotificationsCell *)&v9 initWithStyle:a3 reuseIdentifier:v6];

  return v7;
}

- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomizeNotificationsCell();
  v4 = a3;
  v5 = [(CustomizeNotificationsCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end