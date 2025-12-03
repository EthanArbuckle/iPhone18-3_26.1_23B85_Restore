@interface IMBDateTableViewCell
- (UIButton)showMoreButton;
- (UILabel)conflictsLabel;
- (UILabel)dateLabel;
- (_TtC8Business20IMBDateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setConflictsLabel:(id)label;
- (void)setDateLabel:(id)label;
- (void)setShowMoreButton:(id)button;
- (void)toggleMoreLess;
- (void)viewInCalendar;
@end

@implementation IMBDateTableViewCell

- (UILabel)dateLabel
{
  selfCopy = self;
  v3 = sub_10006B4BC();

  return v3;
}

- (void)setDateLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel) = label;
  labelCopy = label;
}

- (UILabel)conflictsLabel
{
  selfCopy = self;
  v3 = sub_10006B62C();

  return v3;
}

- (void)setConflictsLabel:(id)label
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel) = label;
  labelCopy = label;
}

- (UIButton)showMoreButton
{
  selfCopy = self;
  v3 = sub_10006B7D0();

  return v3;
}

- (void)setShowMoreButton:(id)button
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton) = button;
  buttonCopy = button;
}

- (_TtC8Business20IMBDateTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1000AC06C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10006BC08(style, identifier, v6);
}

- (void)toggleMoreLess
{
  selfCopy = self;
  sub_10006D394();
}

- (void)viewInCalendar
{
  selfCopy = self;
  sub_10006D76C();
}

@end