@interface SurfaceSideMeasurementStack
- (CGSize)intrinsicContentSize;
- (_TtC7Measure16InteractiveLabel)mainUnit;
- (_TtC7Measure16InteractiveLabel)sideTitle;
- (_TtC7Measure19SecondaryLabelStack)secondaryLabelStack;
- (_TtC7Measure27SurfaceSideMeasurementStack)initWithFrame:(CGRect)a3;
- (void)setContentView:(id)a3;
@end

@implementation SurfaceSideMeasurementStack

- (_TtC7Measure16InteractiveLabel)sideTitle
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7Measure16InteractiveLabel)mainUnit
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setContentView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7Measure27SurfaceSideMeasurementStack_contentView);
  *(self + OBJC_IVAR____TtC7Measure27SurfaceSideMeasurementStack_contentView) = a3;
  v3 = a3;
}

- (_TtC7Measure19SecondaryLabelStack)secondaryLabelStack
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7Measure27SurfaceSideMeasurementStack)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7Measure27SurfaceSideMeasurementStack_contentView) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(SurfaceSideMeasurementStack *)&v11 initWithFrame:x, y, width, height];
  sub_1000D81E8();

  return v9;
}

- (CGSize)intrinsicContentSize
{
  v2 = 103.6;
  v3 = 143.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end