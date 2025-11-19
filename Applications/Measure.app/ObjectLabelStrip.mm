@interface ObjectLabelStrip
- (CGSize)intrinsicContentSize;
- (_TtC7Measure16ObjectLabelStrip)initWithFrame:(CGRect)a3;
- (_TtC7Measure27SurfaceSideMeasurementStack)heightLabels;
- (_TtC7Measure27SurfaceSideMeasurementStack)lengthLabels;
- (_TtC7Measure27SurfaceSideMeasurementStack)widthLabels;
- (void)setContentView:(id)a3;
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

- (void)setContentView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC7Measure16ObjectLabelStrip_contentView);
  *(self + OBJC_IVAR____TtC7Measure16ObjectLabelStrip_contentView) = a3;
  v3 = a3;
}

- (_TtC7Measure16ObjectLabelStrip)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC7Measure16ObjectLabelStrip_contentView) = 0;
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(ObjectLabelStrip *)&v11 initWithFrame:x, y, width, height];
  sub_1000987B4();

  return v9;
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