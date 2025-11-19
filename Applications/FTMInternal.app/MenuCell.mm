@interface MenuCell
- (BOOL)isSelected;
- (_TtC11FTMInternal8MenuCell)initWithCoder:(id)a3;
- (_TtC11FTMInternal8MenuCell)initWithFrame:(CGRect)a3;
@end

@implementation MenuCell

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MenuCell();
  return [(MenuCell *)&v3 isSelected];
}

- (_TtC11FTMInternal8MenuCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal8MenuCell_menuCellSize) = 0x403C000000000000;
  v8 = OBJC_IVAR____TtC11FTMInternal8MenuCell_menuIconImageView;
  *(&self->super.super.super.super.super.isa + v8) = sub_10023DCEC();
  v11.receiver = self;
  v11.super_class = type metadata accessor for MenuCell();
  v9 = [(MenuCell *)&v11 initWithFrame:x, y, width, height];
  sub_10023E0A4();

  return v9;
}

- (_TtC11FTMInternal8MenuCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal8MenuCell_menuCellSize) = 0x403C000000000000;
  v3 = OBJC_IVAR____TtC11FTMInternal8MenuCell_menuIconImageView;
  *(&self->super.super.super.super.super.isa + v3) = sub_10023DCEC();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end