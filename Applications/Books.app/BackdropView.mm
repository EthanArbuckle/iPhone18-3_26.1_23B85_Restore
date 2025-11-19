@interface BackdropView
+ (Class)layerClass;
- (_TtC5Books12BackdropView)initWithCoder:(id)a3;
- (_TtC5Books12BackdropView)initWithFrame:(CGRect)a3;
@end

@implementation BackdropView

+ (Class)layerClass
{
  sub_1006D90A4();

  return swift_getObjCClassFromMetadata();
}

- (_TtC5Books12BackdropView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for BackdropView();
  return [(BackdropView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5Books12BackdropView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BackdropView();
  v4 = a3;
  v5 = [(BackdropView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end