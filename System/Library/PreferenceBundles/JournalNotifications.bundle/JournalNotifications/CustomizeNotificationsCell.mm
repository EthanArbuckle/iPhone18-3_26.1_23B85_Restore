@interface CustomizeNotificationsCell
- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithCoder:(id)coder;
- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CustomizeNotificationsCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_A85E8();
}

- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_C5484();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_A6CB8(style, v7, v9, specifier);
}

- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
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
  v7 = [(CustomizeNotificationsCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC20JournalNotifications26CustomizeNotificationsCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomizeNotificationsCell();
  coderCopy = coder;
  v5 = [(CustomizeNotificationsCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end