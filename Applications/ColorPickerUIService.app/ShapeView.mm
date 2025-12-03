@interface ShapeView
+ (Class)layerClass;
- (_TtC20ColorPickerUIService9ShapeView)initWithCoder:(id)coder;
- (_TtC20ColorPickerUIService9ShapeView)initWithFrame:(CGRect)frame;
@end

@implementation ShapeView

+ (Class)layerClass
{
  sub_10000598C(0, &qword_1000765E8, CAShapeLayer_ptr);

  return swift_getObjCClassFromMetadata();
}

- (_TtC20ColorPickerUIService9ShapeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShapeView();
  return [(ShapeView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20ColorPickerUIService9ShapeView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShapeView();
  coderCopy = coder;
  v5 = [(ShapeView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end