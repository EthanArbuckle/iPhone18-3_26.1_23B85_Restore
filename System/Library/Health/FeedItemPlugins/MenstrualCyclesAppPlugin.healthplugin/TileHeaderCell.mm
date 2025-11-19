@interface TileHeaderCell
- (BOOL)isHighlighted;
- (_TtC24MenstrualCyclesAppPlugin14TileHeaderCell)initWithCoder:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation TileHeaderCell

- (_TtC24MenstrualCyclesAppPlugin14TileHeaderCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin14TileHeaderCell____lazy_storage___tileHeaderView) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TileHeaderCell();
  return [(TileHeaderCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TileHeaderCell();
  v4 = v5.receiver;
  [(TileHeaderCell *)&v5 setHighlighted:v3];
  sub_29E0EBB34();
}

@end