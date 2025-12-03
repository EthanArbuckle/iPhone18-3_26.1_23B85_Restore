@interface SeparatorView
- (_TtC7Measure13SeparatorView)initWithFrame:(CGRect)frame;
@end

@implementation SeparatorView

- (_TtC7Measure13SeparatorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Measure13SeparatorView_targetAlpha) = 0x3FF0000000000000;
  v15.receiver = self;
  v15.super_class = ObjectType;
  height = [(SeparatorView *)&v15 initWithFrame:x, y, width, height];
  v10 = qword_1004A0558;
  v11 = height;
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