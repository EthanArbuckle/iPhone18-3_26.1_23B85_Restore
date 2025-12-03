@interface SurfaceSideMeasurementStack
- (CGSize)intrinsicContentSize;
- (_TtC7Measure16InteractiveLabel)mainUnit;
- (_TtC7Measure16InteractiveLabel)sideTitle;
- (_TtC7Measure19SecondaryLabelStack)secondaryLabelStack;
- (_TtC7Measure27SurfaceSideMeasurementStack)initWithFrame:(CGRect)frame;
- (void)setContentView:(id)view;
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

- (void)setContentView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC7Measure27SurfaceSideMeasurementStack_contentView);
  *(self + OBJC_IVAR____TtC7Measure27SurfaceSideMeasurementStack_contentView) = view;
  viewCopy = view;
}

- (_TtC7Measure19SecondaryLabelStack)secondaryLabelStack
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7Measure27SurfaceSideMeasurementStack)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7Measure27SurfaceSideMeasurementStack_contentView) = 0;
  swift_unknownObjectWeakInit();
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(SurfaceSideMeasurementStack *)&v11 initWithFrame:x, y, width, height];
  sub_1000D81E8();

  return height;
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