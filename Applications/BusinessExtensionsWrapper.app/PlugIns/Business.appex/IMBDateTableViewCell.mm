@interface IMBDateTableViewCell
- (UIButton)showMoreButton;
- (UILabel)conflictsLabel;
- (UILabel)dateLabel;
- (_TtC8Business20IMBDateTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setConflictsLabel:(id)a3;
- (void)setDateLabel:(id)a3;
- (void)setShowMoreButton:(id)a3;
- (void)toggleMoreLess;
- (void)viewInCalendar;
@end

@implementation IMBDateTableViewCell

- (UILabel)dateLabel
{
  v2 = self;
  v3 = sub_10006B4BC();

  return v3;
}

- (void)setDateLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___dateLabel) = a3;
  v3 = a3;
}

- (UILabel)conflictsLabel
{
  v2 = self;
  v3 = sub_10006B62C();

  return v3;
}

- (void)setConflictsLabel:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___conflictsLabel) = a3;
  v3 = a3;
}

- (UIButton)showMoreButton
{
  v2 = self;
  v3 = sub_10006B7D0();

  return v3;
}

- (void)setShowMoreButton:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Business20IMBDateTableViewCell____lazy_storage___showMoreButton) = a3;
  v3 = a3;
}

- (_TtC8Business20IMBDateTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1000AC06C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_10006BC08(a3, a4, v6);
}

- (void)toggleMoreLess
{
  v2 = self;
  sub_10006D394();
}

- (void)viewInCalendar
{
  v2 = self;
  sub_10006D76C();
}

@end