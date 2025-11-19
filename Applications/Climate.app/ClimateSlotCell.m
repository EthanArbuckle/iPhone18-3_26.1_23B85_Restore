@interface ClimateSlotCell
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate15ClimateSlotCell)initWithCoder:(id)a3;
- (_TtC7Climate15ClimateSlotCell)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
- (void)prepareForReuse;
@end

@implementation ClimateSlotCell

- (void)prepareForReuse
{
  v3 = OBJC_IVAR____TtC7Climate15ClimateSlotCell_climateSlot;
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Climate15ClimateSlotCell_climateSlot);
  v5 = self;
  [v4 removeFromSuperview];
  v6 = *(&self->super.super.super.super.super.super.isa + v3);
  *(&self->super.super.super.super.super.super.isa + v3) = 0;

  v7.receiver = v5;
  v7.super_class = type metadata accessor for ClimateSlotCell();
  [(ClimateSlotCell *)&v7 prepareForReuse];
}

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000132D8(v4);

  return v6;
}

- (_TtC7Climate15ClimateSlotCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Climate15ClimateSlotCell_isHeightCalculated) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Climate15ClimateSlotCell_climateSlot) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateSlotCell();
  return [(ClimateTransparentFocusableCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Climate15ClimateSlotCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Climate15ClimateSlotCell_isHeightCalculated) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Climate15ClimateSlotCell_climateSlot) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateSlotCell();
  v4 = a3;
  v5 = [(ClimateTransparentFocusableCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (NSArray)preferredFocusEnvironments
{
  sub_1000040E8(&unk_100114770);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1000D5DA0;
  v4 = self;
  *(v3 + 32) = [(ClimateSlotCell *)v4 contentView];

  sub_1000040E8(&unk_1001150F0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

@end