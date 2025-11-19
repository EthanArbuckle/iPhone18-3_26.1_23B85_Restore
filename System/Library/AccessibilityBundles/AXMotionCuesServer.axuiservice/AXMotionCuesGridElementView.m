@interface AXMotionCuesGridElementView
+ (Class)layerClass;
- (_TtC18AXMotionCuesServer27AXMotionCuesGridElementView)initWithCoder:(id)a3;
- (_TtC18AXMotionCuesServer27AXMotionCuesGridElementView)initWithFrame:(CGRect)a3;
@end

@implementation AXMotionCuesGridElementView

+ (Class)layerClass
{
  sub_1A964(0, &qword_4C288, &off_44A68);

  return swift_getObjCClassFromMetadata();
}

- (_TtC18AXMotionCuesServer27AXMotionCuesGridElementView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(AXMotionCuesGridElementView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18AXMotionCuesServer27AXMotionCuesGridElementView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(AXMotionCuesGridElementView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end