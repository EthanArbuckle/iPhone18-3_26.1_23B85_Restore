@interface ViewSandboxCollectionViewCell
- (_TtC5Heart29ViewSandboxCollectionViewCell)initWithCoder:(id)coder;
- (_TtC5Heart29ViewSandboxCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation ViewSandboxCollectionViewCell

- (_TtC5Heart29ViewSandboxCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = self + OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ViewSandboxCollectionViewCell();
  height = [(ViewSandboxCollectionViewCell *)&v10 initWithFrame:x, y, width, height];
  sub_29D9325C0();

  return height;
}

- (_TtC5Heart29ViewSandboxCollectionViewCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView) = 0;
  result = sub_29D93AB28();
  __break(1u);
  return result;
}

@end