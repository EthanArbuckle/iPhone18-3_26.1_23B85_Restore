@interface ExactitudesTickLayer
- (CGRect)bounds;
- (_TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer)init;
- (_TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer)initWithCoder:(id)a3;
- (_TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer)initWithLayer:(id)a3;
- (void)setBounds:(CGRect)a3;
@end

@implementation ExactitudesTickLayer

- (_TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_length) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_thickness) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(ExactitudesTickLayer *)&v5 init];
}

- (_TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer)initWithLayer:(id)a3
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_2175C();
  swift_unknownObjectRelease();
  *(&self->super.super.isa + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_length) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_thickness) = 0;
  sub_1AE9C(v9, v9[3]);
  v5 = sub_2184C();
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(ExactitudesTickLayer *)&v8 initWithLayer:v5];
  swift_unknownObjectRelease();
  sub_18E28(v9);
  return v6;
}

- (_TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer)initWithCoder:(id)a3
{
  *(&self->super.super.isa + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_length) = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC24NTKExactitudesFaceBundle20ExactitudesTickLayer_thickness) = 0;
  result = sub_217EC();
  __break(1u);
  return result;
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(ExactitudesTickLayer *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  ExactitudesTickLayer.bounds.setter(x, y, width, height);
}

@end