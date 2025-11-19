@interface FMPredefinedMessageTableViewCell
- (BOOL)isSelected;
- (_TtC6FindMy32FMPredefinedMessageTableViewCell)initWithCoder:(id)a3;
- (_TtC6FindMy32FMPredefinedMessageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setSelected:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation FMPredefinedMessageTableViewCell

- (_TtC6FindMy32FMPredefinedMessageTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1000F6E40(a3, a4, v6);
}

- (_TtC6FindMy32FMPredefinedMessageTableViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC6FindMy32FMPredefinedMessageTableViewCell__style;
  if (qword_1006AEAA0 != -1)
  {
    swift_once();
  }

  *(&self->super.super.super.super.super.isa + v4) = qword_1006B1B08;
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy32FMPredefinedMessageTableViewCell_message);
  *v5 = 0;
  v5[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMPredefinedMessageTableViewCell();
  return [(FMPlatteredTableViewCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_1000F71A4(a3);
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_1000F725C(a3, a4);
}

@end