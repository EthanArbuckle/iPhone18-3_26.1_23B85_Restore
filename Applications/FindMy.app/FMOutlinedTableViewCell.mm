@interface FMOutlinedTableViewCell
- (_TtC6FindMy23FMOutlinedTableViewCell)initWithCoder:(id)a3;
- (_TtC6FindMy23FMOutlinedTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation FMOutlinedTableViewCell

- (_TtC6FindMy23FMOutlinedTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1003E3C90(a3, a4, v6);
}

- (_TtC6FindMy23FMOutlinedTableViewCell)initWithCoder:(id)a3
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
  v2 = self;
  sub_1003E3EC0();
}

@end