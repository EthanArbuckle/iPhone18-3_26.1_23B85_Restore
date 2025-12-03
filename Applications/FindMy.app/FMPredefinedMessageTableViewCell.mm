@interface FMPredefinedMessageTableViewCell
- (BOOL)isSelected;
- (_TtC6FindMy32FMPredefinedMessageTableViewCell)initWithCoder:(id)coder;
- (_TtC6FindMy32FMPredefinedMessageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setSelected:(BOOL)selected;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation FMPredefinedMessageTableViewCell

- (_TtC6FindMy32FMPredefinedMessageTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1000F6E40(style, identifier, v6);
}

- (_TtC6FindMy32FMPredefinedMessageTableViewCell)initWithCoder:(id)coder
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

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_1000F71A4(selected);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  selfCopy = self;
  sub_1000F725C(selected, animated);
}

@end