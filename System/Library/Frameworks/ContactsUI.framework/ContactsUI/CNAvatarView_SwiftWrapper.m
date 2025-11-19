@interface CNAvatarView_SwiftWrapper
- (NSArray)contacts;
- (UIColor)borderColor;
- (_TtC10ContactsUI25CNAvatarView_SwiftWrapper)initWithContacts:(id)a3 listener:(id)a4;
- (_TtC10ContactsUI25CNAvatarView_SwiftWrapper)initWithFrame:(CGRect)a3;
- (double)borderWidth;
- (unint64_t)backgroundStyle;
- (void)layoutSubviews;
- (void)setBackgroundStyle:(unint64_t)a3;
- (void)setBorderColor:(id)a3;
- (void)setBorderWidth:(double)a3;
- (void)setContacts:(id)a3;
@end

@implementation CNAvatarView_SwiftWrapper

- (void)layoutSubviews
{
  v2 = self;
  sub_199AD070C();
}

- (_TtC10ContactsUI25CNAvatarView_SwiftWrapper)initWithContacts:(id)a3 listener:(id)a4
{
  sub_199A7A02C(0, &qword_1ED615BF0);
  v4 = sub_199DFA0CC();
  swift_unknownObjectRetain();
  v5 = sub_199AD094C(v4);
  swift_unknownObjectRelease();
  return v5;
}

- (void)setBackgroundStyle:(unint64_t)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_backgroundStyle;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  if (v6 != a3)
  {
    v7 = self;
    sub_199A7C70C();
  }
}

- (NSArray)contacts
{
  v2 = self;

  sub_199DF780C();

  sub_199A7A02C(0, &qword_1ED615BF0);
  v3 = sub_199DFA0BC();

  return v3;
}

- (void)setContacts:(id)a3
{
  sub_199A7A02C(0, &qword_1ED615BF0);
  v4 = sub_199DFA0CC();
  v5 = self;
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

- (void)setBorderColor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_199ACFEF8(v4);
}

- (double)borderWidth
{
  v3 = OBJC_IVAR____TtC10ContactsUI25CNAvatarView_SwiftWrapper_borderWidth;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setBorderWidth:(double)a3
{
  v4 = self;
  sub_199AD039C(a3);
}

- (_TtC10ContactsUI25CNAvatarView_SwiftWrapper)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end