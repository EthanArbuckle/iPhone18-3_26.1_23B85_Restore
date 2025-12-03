@interface FMUnknownItemsListSectionFooter
- (_TtC6FindMy31FMUnknownItemsListSectionFooter)initWithCoder:(id)coder;
- (_TtC6FindMy31FMUnknownItemsListSectionFooter)initWithFrame:(CGRect)frame;
@end

@implementation FMUnknownItemsListSectionFooter

- (_TtC6FindMy31FMUnknownItemsListSectionFooter)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_label;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy31FMUnknownItemsListSectionFooter_style;
  if (qword_1006AECB0 != -1)
  {
    swift_once();
  }

  v6 = self + v5;
  v7 = unk_1006D4AB0;
  v8 = unk_1006D4AC0;
  *v6 = qword_1006D4AA8;
  *(v6 + 8) = v7;
  *(v6 + 24) = v8;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (_TtC6FindMy31FMUnknownItemsListSectionFooter)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end