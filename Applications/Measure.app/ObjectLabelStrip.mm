@interface ObjectLabelStrip
- (CGSize)intrinsicContentSize;
- (_TtC7Measure16ObjectLabelStrip)initWithFrame:(CGRect)frame;
- (_TtC7Measure27SurfaceSideMeasurementStack)heightLabels;
- (_TtC7Measure27SurfaceSideMeasurementStack)lengthLabels;
- (_TtC7Measure27SurfaceSideMeasurementStack)widthLabels;
- (void)setContentView:(id)view;
@end

@implementation ObjectLabelStrip

- (_TtC7Measure27SurfaceSideMeasurementStack)lengthLabels
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7Measure27SurfaceSideMeasurementStack)widthLabels
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC7Measure27SurfaceSideMeasurementStack)heightLabels
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setContentView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC7Measure16ObjectLabelStrip_contentView);
  *(self + OBJC_IVAR____TtC7Measure16ObjectLabelStrip_contentView) = view;
  viewCopy = view;
}

- (_TtC7Measure16ObjectLabelStrip)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7Measure16ObjectLabelStrip_contentView) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  height = [(ObjectLabelStrip *)&v11 initWithFrame:x, y, width, height];
  sub_1000987B4();

  return height;
}

- (CGSize)intrinsicContentSize
{
  v2 = 375.0;
  v3 = 143.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end