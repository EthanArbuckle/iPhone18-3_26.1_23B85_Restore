@interface NumberedTextTableViewCell
- (_TtC5Heart25NumberedTextTableViewCell)initWithCoder:(id)coder;
- (_TtC5Heart25NumberedTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation NumberedTextTableViewCell

- (_TtC5Heart25NumberedTextTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_29D939D68();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_29D92DB38(v4, v5);
}

- (_TtC5Heart25NumberedTextTableViewCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC5Heart25NumberedTextTableViewCell____lazy_storage___numberedTextView) = 0;
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

@end