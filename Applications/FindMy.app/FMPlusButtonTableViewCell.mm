@interface FMPlusButtonTableViewCell
- (_TtC6FindMy25FMPlusButtonTableViewCell)initWithCoder:(id)coder;
- (_TtC6FindMy25FMPlusButtonTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation FMPlusButtonTableViewCell

- (_TtC6FindMy25FMPlusButtonTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return sub_100097610(v4, v5);
}

- (_TtC6FindMy25FMPlusButtonTableViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy25FMPlusButtonTableViewCell_addButton;
  if (qword_1006AEB28 != -1)
  {
    swift_once();
  }

  v7[0] = xmmword_1006D4130;
  v7[1] = *&qword_1006D4140;
  v7[2] = xmmword_1006D4150;
  v5 = objc_allocWithZone(type metadata accessor for FMAddButton());
  *(&self->super.super.super.super.isa + v4) = sub_10022D0C8(0, 0xE000000000000000, v7);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end