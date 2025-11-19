@interface HomeActionFooterCell
- (_TtC4Maps20HomeActionFooterCell)initWithCoder:(id)a3;
- (_TtC4Maps20HomeActionFooterCell)initWithFrame:(CGRect)a3;
@end

@implementation HomeActionFooterCell

- (_TtC4Maps20HomeActionFooterCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(HomeActionFooterCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC4Maps20HomeActionFooterCell)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(HomeActionFooterCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end