@interface RadioStationCell
- (_TtC5Media16RadioStationCell)initWithCoder:(id)coder;
- (_TtC5Media16RadioStationCell)initWithFrame:(CGRect)frame;
@end

@implementation RadioStationCell

- (_TtC5Media16RadioStationCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC5Media16RadioStationCell_config;
  *v7 = 0;
  *(v7 + 4) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for RadioStationCell();
  return [(RadioStationCell *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC5Media16RadioStationCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC5Media16RadioStationCell_config;
  *v4 = 0;
  *(v4 + 4) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RadioStationCell();
  coderCopy = coder;
  v6 = [(RadioStationCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end