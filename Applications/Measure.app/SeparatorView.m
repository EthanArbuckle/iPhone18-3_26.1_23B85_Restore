@interface SeparatorView
- (_TtC7Measure13SeparatorView)initWithFrame:(CGRect)a3;
@end

@implementation SeparatorView

- (_TtC7Measure13SeparatorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13SeparatorView_targetAlpha) = 0x3FF0000000000000;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v9 = [(SeparatorView *)&v15 initWithFrame:x, y, width, height];
  v10 = qword_1004A0558;
  v11 = v9;
  if (v10 != -1)
  {
    v14 = v11;
    swift_once();
    v11 = v14;
  }

  v12 = v11;
  [(SeparatorView *)v11 setBackgroundColor:qword_1004D50C8];

  return v12;
}

@end