@interface ClimateGrid
- (NSArray)preferredFocusEnvironments;
- (_TtC7Climate11ClimateGrid)initWithFrame:(CGRect)a3;
@end

@implementation ClimateGrid

- (_TtC7Climate11ClimateGrid)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate11ClimateGrid_grid) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate11ClimateGrid_source) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate11ClimateGrid_items) = _swiftEmptyArrayStorage;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateGrid();
  return [(ClimateTransparentFocusView *)&v8 initWithFrame:x, y, width, height];
}

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Climate11ClimateGrid_grid);
  if (v2)
  {
    sub_1000040E8(&unk_100114770);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1000D5DA0;
    *(v3 + 32) = v2;
  }

  v4 = v2;
  sub_1000040E8(&unk_1001150F0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

@end