@interface FMOutlinedTableViewCell
- (_TtC6FindMy23FMOutlinedTableViewCell)initWithCoder:(id)coder;
- (_TtC6FindMy23FMOutlinedTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation FMOutlinedTableViewCell

- (_TtC6FindMy23FMOutlinedTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1003E3C90(style, identifier, v6);
}

- (_TtC6FindMy23FMOutlinedTableViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC6FindMy23FMOutlinedTableViewCell_outlineLayer;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(CAShapeLayer) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy23FMOutlinedTableViewCell_disableOutline) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1003E3EC0();
}

@end