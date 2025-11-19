@interface RadioStationCell
- (_TtC5Media16RadioStationCell)initWithCoder:(id)a3;
- (_TtC5Media16RadioStationCell)initWithFrame:(CGRect)a3;
@end

@implementation RadioStationCell

- (_TtC5Media16RadioStationCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC5Media16RadioStationCell_config;
  *v7 = 0;
  *(v7 + 4) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for RadioStationCell();
  return [(RadioStationCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC5Media16RadioStationCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC5Media16RadioStationCell_config;
  *v4 = 0;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RadioStationCell();
  v5 = a3;
  v6 = [(RadioStationCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end