@interface AXMotionCuesGridElementView
+ (Class)layerClass;
- (_TtC18AXMotionCuesServer27AXMotionCuesGridElementView)initWithCoder:(id)coder;
- (_TtC18AXMotionCuesServer27AXMotionCuesGridElementView)initWithFrame:(CGRect)frame;
@end

@implementation AXMotionCuesGridElementView

+ (Class)layerClass
{
  sub_1A964(0, &qword_4C288, &off_44A68);

  return swift_getObjCClassFromMetadata();
}

- (_TtC18AXMotionCuesServer27AXMotionCuesGridElementView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(AXMotionCuesGridElementView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18AXMotionCuesServer27AXMotionCuesGridElementView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(AXMotionCuesGridElementView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end