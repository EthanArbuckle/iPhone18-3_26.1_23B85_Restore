@interface CNAvatarView_SwiftWrapper
- (NSArray)contacts;
- (UIColor)borderColor;
- (_TtC10ContactsUI25CNAvatarView_SwiftWrapper)initWithContacts:(id)contacts listener:(id)listener;
- (_TtC10ContactsUI25CNAvatarView_SwiftWrapper)initWithFrame:(CGRect)frame;
- (double)borderWidth;
- (unint64_t)backgroundStyle;
- (void)layoutSubviews;
- (void)setBackgroundStyle:(unint64_t)style;
- (void)setBorderColor:(id)color;
- (void)setBorderWidth:(double)width;
- (void)setContacts:(id)contacts;
@end

@implementation CNAvatarView_SwiftWrapper

- (void)layoutSubviews
{
  selfCopy = self;
  sub_199AD070C();
}

- (_TtC10ContactsUI25CNAvatarView_SwiftWrapper)initWithContacts:(id)contacts listener:(id)listener
{
  sub_199A7A02C(0, &qword_1ED615BF0);
  v4 = sub_199DFA0CC();
  swift_unknownObjectRetain();
  v5 = sub_199AD094C(v4);
  swift_unknownObjectRelease();
  return v5;
}

- (void)setBackgroundStyle:(unint64_t)style
{
  v5 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = style;
  if (v6 != style)
  {
    selfCopy = self;
    sub_199A7C70C();
  }
}

- (NSArray)contacts
{
  selfCopy = self;

  sub_199DF780C();

  sub_199A7A02C(0, &qword_1ED615BF0);
  v3 = sub_199DFA0BC();

  return v3;
}

- (void)setContacts:(id)contacts
{
  sub_199A7A02C(0, &qword_1ED615BF0);
  v4 = sub_199DFA0CC();
  selfCopy = self;
  sub_199ACEEFC(v4);
}

- (unint64_t)backgroundStyle
{
  v3 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (UIColor)borderColor
{
  v3 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderColor;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setBorderColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_199ACFEF8(colorCopy);
}

- (double)borderWidth
{
  v3 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setBorderWidth:(double)width
{
  selfCopy = self;
  sub_199AD039C(width);
}

- (_TtC10ContactsUI25CNAvatarView_SwiftWrapper)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end