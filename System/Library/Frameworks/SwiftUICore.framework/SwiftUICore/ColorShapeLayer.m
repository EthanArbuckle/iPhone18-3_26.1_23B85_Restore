@interface ColorShapeLayer
- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115ColorShapeLayer)init;
- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115ColorShapeLayer)initWithCoder:(id)a3;
@end

@implementation ColorShapeLayer

- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115ColorShapeLayer)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ColorShapeLayer *)&v3 init];
}

- (_TtC7SwiftUIP33_E19F490D25D5E0EC8A24903AF958E34115ColorShapeLayer)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ColorShapeLayer *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end