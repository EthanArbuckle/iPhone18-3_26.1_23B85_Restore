@interface ViewSandboxCollectionViewCell
- (_TtC5Heart29ViewSandboxCollectionViewCell)initWithCoder:(id)a3;
- (_TtC5Heart29ViewSandboxCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation ViewSandboxCollectionViewCell

- (_TtC5Heart29ViewSandboxCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_item;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC5Heart29ViewSandboxCollectionViewCell_sandboxView) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ViewSandboxCollectionViewCell();
  v8 = [(ViewSandboxCollectionViewCell *)&v10 initWithFrame:x, y, width, height];
  sub_29D9325C0();

  return v8;
}

- (_TtC5Heart29ViewSandboxCollectionViewCell)initWithCoder:(id)a3
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