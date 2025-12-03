@interface HomeActionFooterCell
- (_TtC4Maps20HomeActionFooterCell)initWithCoder:(id)coder;
- (_TtC4Maps20HomeActionFooterCell)initWithFrame:(CGRect)frame;
@end

@implementation HomeActionFooterCell

- (_TtC4Maps20HomeActionFooterCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(HomeActionFooterCell *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC4Maps20HomeActionFooterCell)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps20HomeActionFooterCell_viewModel) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(HomeActionFooterCell *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end