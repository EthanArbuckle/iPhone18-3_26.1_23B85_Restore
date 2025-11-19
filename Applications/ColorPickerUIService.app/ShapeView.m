@interface ShapeView
+ (Class)layerClass;
- (_TtC20ColorPickerUIService9ShapeView)initWithCoder:(id)a3;
- (_TtC20ColorPickerUIService9ShapeView)initWithFrame:(CGRect)a3;
@end

@implementation ShapeView

+ (Class)layerClass
{
  sub_10000598C(0, &qword_1000765E8, CAShapeLayer_ptr);

  return swift_getObjCClassFromMetadata();
}

- (_TtC20ColorPickerUIService9ShapeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShapeView();
  return [(ShapeView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20ColorPickerUIService9ShapeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ColorPickerUIService9ShapeView_bezierPath) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShapeView();
  v4 = a3;
  v5 = [(ShapeView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end